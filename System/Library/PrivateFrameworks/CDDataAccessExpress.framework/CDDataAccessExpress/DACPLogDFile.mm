@interface DACPLogDFile
- (BOOL)logData:(id)a3 outDidCreateNewFile:(BOOL *)a4 outNewFilePath:(id *)a5;
- (DACPLogDFile)initWithFolder:(id)a3 baseName:(id)a4;
- (id)_filePathsMatchingPattern:(id)a3;
- (id)_getLatestMatchingFilePath;
- (id)_startNewFile;
- (id)startNewFile;
- (void)_beginWatchingFile;
- (void)_closeFileWithFileEventDispatchSource:(id)a3;
- (void)_openFileOutDidCreateNewFile:(BOOL *)a3 outNewFilePath:(id *)a4;
- (void)checkForMaximumFileSize:(int64_t)a3 wantsCompressed:(BOOL)a4 outDidCreateNewFile:(BOOL *)a5 outNewFilePath:(id *)a6;
- (void)cullFilesMaxFileCount:(int64_t)a3;
@end

@implementation DACPLogDFile

- (DACPLogDFile)initWithFolder:(id)a3 baseName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DACPLogDFile;
  v9 = [(DACPLogDFile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folder, a3);
    objc_storeStrong(&v10->_baseName, a4);
    v11 = [MEMORY[0x277CCACA8] DACPLogMakeUUID];
    UUID = v10->_UUID;
    v10->_UUID = v11;

    v10->_fd = -1;
  }

  return v10;
}

- (id)_filePathsMatchingPattern:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = opendir([(NSString *)self->_folder fileSystemRepresentation]);
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", self->_baseName, v4];
    v9 = [v8 length];
    v10 = readdir(v7);
    if (v10)
    {
      v11 = v10;
      do
      {
        if (v9 == v11->d_namlen)
        {
          v12 = v8;
          v13 = [v12 UTF8String];
          v14 = v11->d_name[0];
          if (v11->d_name[0])
          {
            v15 = &v11->d_name[1];
            while (1)
            {
              v16 = *v13;
              if (v16 != 63 && (!*v13 || v14 != v16))
              {
                break;
              }

              ++v13;
              v18 = *v15++;
              v14 = v18;
              if (!v18)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if (!*v13)
            {

              v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%s", self->_folder, v11->d_name];
              [v5 addObject:v12];
            }
          }
        }

        v11 = readdir(v7);
      }

      while (v11);
    }

    closedir(v7);
  }

  [v5 sortUsingComparator:&__block_literal_global_2];

  return v5;
}

- (id)_getLatestMatchingFilePath
{
  v2 = [(DACPLogDFile *)self _filePathsMatchingPattern:@"_????_??_??_??_??_???????.log"];
  if ([v2 count])
  {
    v3 = [v2 lastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_openFileOutDidCreateNewFile:(BOOL *)a3 outNewFilePath:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = [(DACPLogDFile *)self _getLatestMatchingFilePath];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/.%@", self->_folder, self->_baseName];
    if (link([v8 fileSystemRepresentation], objc_msgSend(v9, "fileSystemRepresentation")))
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "The log file has been deleted before we had a chance to open it.", buf, 2u);
      }
    }

    else
    {
      self->_fd = open([v8 fileSystemRepresentation], 9);
      v11 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_INFO, "Opened existing log file for writing: %@", buf, 0xCu);
      }

      v12 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        fd = self->_fd;
        *buf = 67109120;
        LODWORD(v18) = fd;
        _os_log_impl(&dword_242505000, v12, OS_LOG_TYPE_INFO, "FD: %d", buf, 8u);
      }

      if ((self->_fd & 0x80000000) == 0)
      {
        objc_storeStrong(&self->_path, v8);
        [(DACPLogDFile *)self _beginWatchingFile];
      }
    }

    if (v9)
    {
      unlink([v9 fileSystemRepresentation]);
    }
  }

  if (self->_fd < 0 || ![(NSString *)self->_path length])
  {
    v14 = [(DACPLogDFile *)self _startNewFile];
    v15 = v14 != 0;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = 0;
  v15 = 0;
  if (a3)
  {
LABEL_19:
    *a3 = v15;
  }

LABEL_20:
  if (a4)
  {
    v14 = v14;
    *a4 = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_beginWatchingFile
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    fd = self->_fd;
    *buf = 138412546;
    v22 = path;
    v23 = 1024;
    v24 = fd;
    _os_log_impl(&dword_242505000, v3, OS_LOG_TYPE_INFO, "Watching file: %@, FD: %d", buf, 0x12u);
  }

  v6 = self->_fd;
  v7 = _fileOpsQueue();
  v8 = dispatch_source_create(MEMORY[0x277D85D48], v6, 1uLL, v7);

  objc_storeStrong(&self->_fileEventDispatchSource, v8);
  v9 = self->_path;
  v10 = self->_fd;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v22 = v8;
    _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_INFO, "Created new dispatch source %p", buf, 0xCu);
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__DACPLogDFile__beginWatchingFile__block_invoke;
  handler[3] = &unk_278D543F0;
  v18 = v9;
  v19 = self;
  v20 = v8;
  v12 = v8;
  v13 = v9;
  dispatch_source_set_event_handler(v12, handler);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__DACPLogDFile__beginWatchingFile__block_invoke_22;
  v15[3] = &__block_descriptor_36_e5_v8__0l;
  v16 = v10;
  dispatch_source_set_cancel_handler(v12, v15);
  dispatch_resume(v12);

  v14 = *MEMORY[0x277D85DE8];
}

void __34__DACPLogDFile__beginWatchingFile__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_242505000, v2, OS_LOG_TYPE_INFO, "Received file event for file %@", &v9, 0xCu);
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_INFO, "Log file has been deleted: %@", &v9, 0xCu);
    }

    if ([*(*(a1 + 40) + 32) isEqualToString:*(a1 + 32)])
    {
      [*(a1 + 40) _closeFileWithFileEventDispatchSource:*(a1 + 48)];
      *(*(a1 + 40) + 56) = 1;
    }

    else
    {
      dispatch_source_cancel(*(a1 + 48));
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __34__DACPLogDFile__beginWatchingFile__block_invoke_22(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_242505000, v2, OS_LOG_TYPE_INFO, "Closing FD %d", v6, 8u);
  }

  result = close(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_closeFileWithFileEventDispatchSource:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if ((self->_fd & 0x80000000) == 0)
  {
    v4 = a3;
    v5 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      path = self->_path;
      fd = self->_fd;
      v10 = 138412546;
      v11 = path;
      v12 = 1024;
      v13 = fd;
      _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_INFO, "Closing file at %@, FD %d", &v10, 0x12u);
    }

    dispatch_source_cancel(v4);
    self->_fd = -1;
    v8 = self->_path;
    self->_path = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_startNewFile
{
  v57[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v50 = 1;
  if ([v3 fileExistsAtPath:self->_folder isDirectory:&v50])
  {
    if ((v50 & 1) == 0)
    {
      v4 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        folder = self->_folder;
        buf.st_dev = 138412290;
        *&buf.st_mode = folder;
        _os_log_impl(&dword_242505000, v4, OS_LOG_TYPE_ERROR, "The file at path %@ is not a directory.", &buf, 0xCu);
      }

      goto LABEL_29;
    }
  }

  else
  {
    v56 = *MEMORY[0x277CCA180];
    v57[0] = &unk_2854C8E20;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = self->_folder;
    v49 = 0;
    v8 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:v4 error:&v49];
    v9 = v49;

    v10 = DALoggingwithCategory(0);
    v11 = v10;
    if ((v8 & 1) == 0)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v28 = self->_folder;
        buf.st_dev = 138412546;
        *&buf.st_mode = v28;
        WORD2(buf.st_ino) = 2112;
        *(&buf.st_ino + 6) = v9;
        _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_ERROR, "Cannot create directory %@. Error: %@", &buf, 0x16u);
      }

      goto LABEL_28;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = self->_folder;
      buf.st_dev = 138412290;
      *&buf.st_mode = v12;
      _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_INFO, "Created directory at path: %@", &buf, 0xCu);
    }
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/.%@", self->_folder, self->_baseName];
  if ([v3 fileExistsAtPath:v4])
  {
    goto LABEL_12;
  }

  v54 = *MEMORY[0x277CCA180];
  v55 = &unk_2854C8E38;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  if (([v3 createFileAtPath:v4 contents:0 attributes:v9] & 1) == 0)
  {
    v30 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = v4;
      _os_log_impl(&dword_242505000, v30, OS_LOG_TYPE_ERROR, "Cannot create temporary linked file at %@", &buf, 0xCu);
    }

LABEL_28:
LABEL_29:
    v27 = 0;
    goto LABEL_30;
  }

LABEL_12:
  v13 = open([v4 fileSystemRepresentation], 9);
  self->_fd = v13;
  if (v13 < 0)
  {
    v29 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = v4;
      _os_log_impl(&dword_242505000, v29, OS_LOG_TYPE_ERROR, "Cannot create temporary linked file at %@", &buf, 0xCu);
    }

    goto LABEL_29;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = self->_folder;
  baseName = self->_baseName;
  if (_fileDateFormatter_onceToken != -1)
  {
    [DACPLogDFile _startNewFile];
  }

  v17 = MEMORY[0x277CBEAA8];
  v18 = _fileDateFormatter_formatter;
  v19 = [v17 date];
  v20 = [v18 stringFromDate:v19];
  v21 = [v14 stringWithFormat:@"%@/%@_%@.log", v15, baseName, v20];
  path = self->_path;
  self->_path = v21;

  LODWORD(v19) = link([v4 fileSystemRepresentation], [(NSString *)self->_path fileSystemRepresentation]);
  v23 = DALoggingwithCategory(0);
  v24 = v23;
  if (v19)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = self->_path;
      buf.st_dev = 138412290;
      *&buf.st_mode = v25;
      _os_log_impl(&dword_242505000, v24, OS_LOG_TYPE_ERROR, "Cannot link file to path %@", &buf, 0xCu);
    }

    v26 = self->_path;
    self->_path = 0;

    close(self->_fd);
    v27 = 0;
    self->_fd = -1;
    goto LABEL_30;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v33 = self->_path;
    buf.st_dev = 138412290;
    *&buf.st_mode = v33;
    _os_log_impl(&dword_242505000, v24, OS_LOG_TYPE_INFO, "Created new log file %@.", &buf, 0xCu);
  }

  v34 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    fd = self->_fd;
    buf.st_dev = 67109120;
    *&buf.st_mode = fd;
    _os_log_impl(&dword_242505000, v34, OS_LOG_TYPE_INFO, "FD: %d", &buf, 8u);
  }

  [(DACPLogDFile *)self _beginWatchingFile];
  unlink([v4 fileSystemRepresentation]);
  v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@-latest.log", self->_folder, self->_baseName];
  memset(&buf, 0, sizeof(buf));
  if (lstat([v36 fileSystemRepresentation], &buf))
  {
LABEL_40:
    v37 = [(NSString *)self->_path lastPathComponent];
    v38 = symlink([v37 fileSystemRepresentation], objc_msgSend(v36, "fileSystemRepresentation"));

    v39 = DALoggingwithCategory(0);
    v40 = v39;
    if (v38)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v41 = self->_path;
        *v51 = 138412290;
        *v52 = v41;
        v42 = "Could not create symlink to latest log file: %@";
LABEL_50:
        v47 = v40;
        v48 = 12;
        goto LABEL_51;
      }
    }

    else
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v43 = self->_path;
        *v51 = 138412546;
        *v52 = v36;
        *&v52[8] = 2112;
        *&v52[10] = v43;
        _os_log_impl(&dword_242505000, v40, OS_LOG_TYPE_INFO, "Created symlink link: %@. Destination: %@", v51, 0x16u);
      }

      if (!fchmodat(0, [v36 fileSystemRepresentation], 0x1FFu, 32))
      {
        goto LABEL_53;
      }

      v40 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v44 = *__error();
        v45 = __error();
        v46 = strerror(*v45);
        *v51 = 67109634;
        *v52 = v44;
        *&v52[4] = 2080;
        *&v52[6] = v46;
        *&v52[14] = 2112;
        *&v52[16] = v36;
        v42 = "Could not chmod symlink to latest log file. Error code: %d - message: %s. Symlink: %@";
        v47 = v40;
        v48 = 28;
LABEL_51:
        _os_log_impl(&dword_242505000, v47, OS_LOG_TYPE_ERROR, v42, v51, v48);
        goto LABEL_52;
      }
    }

    goto LABEL_52;
  }

  if ((~buf.st_mode & 0xA000) == 0)
  {
    unlink([v36 fileSystemRepresentation]);
    goto LABEL_40;
  }

  v40 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *v51 = 138412290;
    *v52 = v36;
    v42 = "The name of the symlink file clashes with an existing file: %@";
    goto LABEL_50;
  }

LABEL_52:

LABEL_53:
  if (self->_fileWasDeleted)
  {
    self->_fileWasDeleted = 0;
  }

  v27 = self->_path;

LABEL_30:
  v31 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)logData:(id)a3 outDidCreateNewFile:(BOOL *)a4 outNewFilePath:(id *)a5
{
  v8 = a3;
  v15 = 0;
  fd = self->_fd;
  if (fd < 0)
  {
    v14 = 0;
    [(DACPLogDFile *)self _openFileOutDidCreateNewFile:&v15 outNewFilePath:&v14];
    v10 = v14;
    fd = self->_fd;
    if (fd < 0)
    {
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  write(fd, [v8 bytes], objc_msgSend(v8, "length"));
  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    v11 = v10;
    *a5 = v10;
  }

  v12 = 1;
LABEL_9:

  return v12;
}

- (id)startNewFile
{
  [(DACPLogDFile *)self _closeFileWithFileEventDispatchSource:self->_fileEventDispatchSource];
  fileEventDispatchSource = self->_fileEventDispatchSource;
  self->_fileEventDispatchSource = 0;

  return [(DACPLogDFile *)self _startNewFile];
}

- (void)checkForMaximumFileSize:(int64_t)a3 wantsCompressed:(BOOL)a4 outDidCreateNewFile:(BOOL *)a5 outNewFilePath:(id *)a6
{
  v8 = a4;
  v57 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((self->_fd & 0x80000000) == 0)
  {
    v11 = 0;
LABEL_3:
    v12 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      path = self->_path;
      *buf = 138412290;
      v52 = path;
      _os_log_impl(&dword_242505000, v12, OS_LOG_TYPE_INFO, "Checking size of log file at path %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = self->_path;
    v48 = 0;
    v16 = [v14 attributesOfItemAtPath:v15 error:&v48];
    v17 = v48;
    if (v17)
    {
      v18 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = self->_path;
        *buf = 138412546;
        v52 = v19;
        v53 = 2112;
        v54 = v17;
        _os_log_impl(&dword_242505000, v18, OS_LOG_TYPE_ERROR, "Cannot get attributes of file at path %@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
      if ((a3 & 0x8000000000000000) == 0 && [v16 fileSize] > a3)
      {
        v45 = a5;
        v22 = a6;
        v23 = self->_path;
        [(DACPLogDFile *)self _closeFileWithFileEventDispatchSource:self->_fileEventDispatchSource];
        fileEventDispatchSource = self->_fileEventDispatchSource;
        self->_fileEventDispatchSource = 0;

        v25 = [(DACPLogDFile *)self _startNewFile];

        v46 = v25;
        v26 = v25 == 0;
        v27 = v23;
        a6 = v22;
        a5 = v45;
        v28 = !v26;
        v50 = v28;
        if (v8)
        {
          getpid();
          proc_disable_cpumon();
          v29 = DALoggingwithCategory(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v52 = v27;
            _os_log_impl(&dword_242505000, v29, OS_LOG_TYPE_INFO, "Compressing file at %@", buf, 0xCu);
          }

          v44 = [(NSString *)v27 stringByAppendingPathExtension:@"gz"];
          folder = self->_folder;
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@".%@", self->_baseName];
          v32 = [(NSString *)folder stringByAppendingPathComponent:v31];

          v33 = fopen([(NSString *)v27 fileSystemRepresentation], "r");
          if (v33)
          {
            v34 = v33;
            v35 = fopen([v32 fileSystemRepresentation], "w");
            if (v35)
            {
              v36 = v35;
              v37 = CPFileCompressionZDeflate();
              if (v37)
              {
                v38 = v37;
                log = DALoggingwithCategory(0);
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  LODWORD(v52) = v38;
                  v39 = log;
                  _os_log_impl(&dword_242505000, log, OS_LOG_TYPE_ERROR, "Could not compress file. Status: %d", buf, 8u);
                }

                else
                {
                  v39 = log;
                }
              }

              else
              {
                v47 = 0;
                [v14 moveItemAtPath:v32 toPath:v44 error:&v47];
                v39 = v47;
                if (v39)
                {
                  v43 = DALoggingwithCategory(0);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412802;
                    v52 = v32;
                    v53 = 2112;
                    v54 = v44;
                    v55 = 2112;
                    v56 = v39;
                    _os_log_impl(&dword_242505000, v43, OS_LOG_TYPE_ERROR, "Could not move compressed file from %@ to %@. Error: %@", buf, 0x20u);
                  }
                }

                else
                {
                  [v14 removeItemAtPath:v27 error:0];
                }
              }

              fclose(v36);
            }

            fclose(v34);
          }

          getpid();
          proc_set_cpumon_defaults();
        }

        v11 = v46;
      }

      if (a5)
      {
        *a5 = v50;
      }

      if (a6)
      {
        v40 = v11;
        *a6 = v11;
      }
    }

    goto LABEL_44;
  }

  v49 = 0;
  [(DACPLogDFile *)self _openFileOutDidCreateNewFile:&v50 outNewFilePath:&v49];
  v20 = v49;
  v11 = v20;
  if (!v50)
  {
    if (self->_fd < 0)
    {
      goto LABEL_44;
    }

    goto LABEL_3;
  }

  if (a5)
  {
    *a5 = 1;
  }

  if (a6)
  {
    v21 = v20;
    *a6 = v11;
  }

LABEL_44:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)cullFilesMaxFileCount:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [(DACPLogDFile *)self _filePathsMatchingPattern:@"_????_??_??_??_??_???????.log"];
  [v5 addObjectsFromArray:v6];

  v7 = [(DACPLogDFile *)self _filePathsMatchingPattern:@"_????_??_??_??_??_???????.log.gz"];
  [v5 addObjectsFromArray:v7];

  [v5 sortUsingComparator:&__block_literal_global_44];
  if ((a3 & 0x8000000000000000) == 0 && [v5 count] > a3)
  {
    v8 = [v5 subarrayWithRange:{0, objc_msgSend(v5, "count") + ~a3}];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (([v15 isEqualToString:{self->_path, v17}] & 1) == 0)
          {
            [v9 removeItemAtPath:v15 error:0];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end