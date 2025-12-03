@interface KGGraphLockFile
- (BOOL)lock;
- (KGGraphLockFile)initWithDatabaseURL:(id)l;
- (void)unlock;
@end

@implementation KGGraphLockFile

- (void)unlock
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_locked)
  {
    fd = self->_fd;
    if ((fd & 0x80000000) == 0)
    {
      if (flock(fd, 8))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v4 = __error();
          v5 = strerror(*v4);
          v6 = *__error();
          v8 = 136315394;
          v9 = v5;
          v10 = 1024;
          v11 = v6;
          _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed unflocking: %s %d", &v8, 0x12u);
        }
      }

      else
      {
        close(self->_fd);
        self->_fd = -1;
        self->_locked = 0;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)lock
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_locked)
  {
    __assert_rtn("[KGGraphLockFile lock]", "KGGraphLockFile.m", 28, "_locked == NO");
  }

  v3 = open([(NSURL *)self->_fileURL fileSystemRepresentation], 514, 384);
  if (v3 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      v7 = *__error();
      *buf = 136315394;
      v14 = v6;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed opening lock file: %s %d", buf, 0x12u);
    }
  }

  else
  {
    v4 = v3;
    if (flock(v3, 6))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = __error();
        v11 = strerror(*v10);
        v12 = *__error();
        *buf = 136315394;
        v14 = v11;
        v15 = 1024;
        v16 = v12;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "flock failed: %s %d", buf, 0x12u);
      }

      close(v4);
    }

    else
    {
      self->_locked = 1;
      self->_fd = v4;
    }
  }

  result = self->_locked;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (KGGraphLockFile)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = KGGraphLockFile;
  v5 = [(KGGraphLockFile *)&v9 init];
  if (v5)
  {
    v6 = [lCopy URLByAppendingPathExtension:@"lock"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;

    v5->_fd = -1;
    v5->_locked = 0;
  }

  return v5;
}

@end