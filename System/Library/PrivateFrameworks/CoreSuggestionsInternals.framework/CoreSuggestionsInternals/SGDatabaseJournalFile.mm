@interface SGDatabaseJournalFile
- (SGDatabaseJournalFile)initWithPath:(id)a3;
- (id)description;
- (id)read;
- (void)clear;
- (void)dealloc;
- (void)destroy;
- (void)destroyAndUnlinkIfEmpty;
- (void)unlink;
- (void)write:(id)a3;
@end

@implementation SGDatabaseJournalFile

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGDatabaseJournalFile %@>", self->_path];

  return v2;
}

- (void)unlink
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_dead)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }

  if (unlink([(NSString *)self->_path UTF8String]))
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      *buf = 138412802;
      v13 = path;
      v14 = 1024;
      v15 = v7;
      v16 = 2080;
      v17 = v9;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "Could not remove %@: errno=%i: %s", buf, 0x1Cu);
    }
  }

  else
  {
    self->_dead = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  if (self->_dead)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  if (self->_len)
  {
    lseek(self->_fd, 0, 0);
    ftruncate(self->_fd, 0);
    self->_len = 0;
  }
}

- (id)read
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_dead)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  len = self->_len;
  if (len)
  {
    if (!self->_written)
    {
      fcntl(self->_fd, 48, 1);
      len = self->_len;
    }

    v4 = malloc_type_malloc(len, 0x6286E74DuLL);
    v5 = pread(self->_fd, v4, self->_len, 0);
    v6 = self->_len;
    if (v5 < v6)
    {
      v7 = sgLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        path = self->_path;
        v9 = *__error();
        v10 = __error();
        v11 = strerror(*v10);
        *buf = 138412802;
        *v32 = path;
        *&v32[8] = 1024;
        v33[0] = v9;
        LOWORD(v33[1]) = 2080;
        *(&v33[1] + 2) = v11;
        v12 = "Could not read from journal file %@: errno=%i: %s";
        v13 = v7;
        v14 = 28;
LABEL_33:
        _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (v6 <= 0xB)
    {
      v7 = sgLogHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v27 = self->_path;
      *buf = 138412290;
      *v32 = v27;
      v12 = "Journal file truncated: %@";
LABEL_32:
      v13 = v7;
      v14 = 12;
      goto LABEL_33;
    }

    v17 = *v4;
    if (*v4 == -1347426410)
    {
      v18 = v4[1];
      if (v6 - 12 != v18)
      {
        v7 = sgLogHandle();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v24 = self->_path;
        *buf = 138412290;
        *v32 = v24;
        v12 = "Journal file truncated: %@";
        goto LABEL_32;
      }

      v19 = adler32(0, v4 + 12, v18);
      if (v4[2] != v19)
      {
        v7 = sgLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v25 = self->_path;
          v26 = v4[2];
          *buf = 138412802;
          *v32 = v25;
          *&v32[8] = 1024;
          v33[0] = v19;
          LOWORD(v33[1]) = 1024;
          *(&v33[1] + 2) = v26;
          v12 = "Journal file checksum mismatch: %@: %u / %u";
          v13 = v7;
          v14 = 24;
          goto LABEL_33;
        }

LABEL_11:

LABEL_12:
        free(v4);
        len = 0;
        goto LABEL_13;
      }

      v20 = objc_alloc(MEMORY[0x277CBEA90]);
      v21 = v4[1];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __29__SGDatabaseJournalFile_read__block_invoke;
      v30[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
      v30[4] = v4;
      len = [v20 initWithBytesNoCopy:v4 + 3 length:v21 deallocator:v30];
    }

    else
    {
      if (*v4 != 1768714338 || *(v4 + 3) != 812938089)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v23 = self->_path;
          *buf = 67109634;
          *v32 = -1347426410;
          *&v32[4] = 1024;
          *&v32[6] = v17;
          LOWORD(v33[0]) = 2112;
          *(v33 + 2) = v23;
          _os_log_error_impl(&dword_231E60000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Journal file has invalid magic number: expected 0x%x, got 0x%x: %@", buf, 0x18u);
        }

        goto LABEL_12;
      }

      len = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v4 length:self->_len freeWhenDone:1];
    }
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];

  return len;
}

- (void)write:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_len)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:81 description:@"Can not overwrite journal file"];
  }

  if ([v5 length] >> 32)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"data.length <= UINT32_MAX"}];
  }

  if (self->_dead)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"SGDatabaseJournalFile.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"!_dead"}];
  }

  v6 = adler32(0, [v5 bytes], objc_msgSend(v5, "length"));
  v16[0] = -1347426410;
  v16[1] = [v5 length];
  v16[2] = v6;
  v23.iov_base = v16;
  v23.iov_len = 12;
  v24 = [v5 bytes];
  v25 = [v5 length];
  if (writev(self->_fd, &v23, 2) < 0)
  {
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 138412802;
      v18 = path;
      v19 = 1024;
      v20 = v10;
      v21 = 2080;
      v22 = v12;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Could not write to journal file %@: errno=%i: %s", buf, 0x1Cu);
    }
  }

  else
  {
    self->_len = [v5 length] + 12;
    self->_written = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(SGDatabaseJournalFile *)self destroy];
  v3.receiver = self;
  v3.super_class = SGDatabaseJournalFile;
  [(SGDatabaseJournalFile *)&v3 dealloc];
}

- (void)destroyAndUnlinkIfEmpty
{
  if (!self->_len)
  {
    [(SGDatabaseJournalFile *)self unlink];
  }

  [(SGDatabaseJournalFile *)self destroy];
}

- (void)destroy
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  self->_dead = 1;
}

- (SGDatabaseJournalFile)initWithPath:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SGDatabaseJournalFile;
  v6 = [(SGDatabaseJournalFile *)&v22 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v6->_path, a3);
  v8 = open_dprotected_np([v5 UTF8String], 514, 2, 0, 384);
  v7->_fd = v8;
  if (v8 < 0)
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      path = v7->_path;
      v19 = *__error();
      v20 = __error();
      v21 = strerror(*v20);
      v29.st_dev = 138412802;
      *&v29.st_mode = path;
      WORD2(v29.st_ino) = 1024;
      *(&v29.st_ino + 6) = v19;
      HIWORD(v29.st_uid) = 2080;
      *&v29.st_gid = v21;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "Could not open %@: errno=%i: %s", &v29, 0x1Cu);
    }

    goto LABEL_10;
  }

  memset(&v29, 0, sizeof(v29));
  if (!fstat(v8, &v29))
  {
    v7->_len = v29.st_size;
LABEL_12:
    v11 = v7;
    goto LABEL_13;
  }

  v9 = sgLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = v7->_path;
    v15 = *__error();
    v16 = __error();
    v17 = strerror(*v16);
    *buf = 138412802;
    v24 = v14;
    v25 = 1024;
    v26 = v15;
    v27 = 2080;
    v28 = v17;
    _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "Could not fstat %@: errno=%i: %s", buf, 0x1Cu);
  }

  close(v7->_fd);
LABEL_10:
  v11 = 0;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end