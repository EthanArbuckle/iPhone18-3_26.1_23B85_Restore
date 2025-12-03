@interface FPDSubtreeChangeDetector
- (BOOL)maintainDirstatWithError:(id *)error;
- (id)initAtPath:(id)path error:(id *)error;
- (id)verifyTreeIdentityWithError:(id *)error;
- (unint64_t)retrieveDirstatGenCountWithError:(id *)error;
- (unint64_t)retrieveFileIDWithError:(id *)error;
- (void)dealloc;
@end

@implementation FPDSubtreeChangeDetector

- (unint64_t)retrieveFileIDWithError:(id *)error
{
  memset(&v7, 0, sizeof(v7));
  if ((fstat(self->_fd, &v7) & 0x80000000) == 0)
  {
    return v7.st_ino;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPDSubtreeChangeDetector retrieveFileIDWithError:?];
  }

  return 0;
}

- (BOOL)maintainDirstatWithError:(id *)error
{
  v8 = 0;
  v5 = ffsctl(self->_fd, 0x80084A02uLL, &v8, 0);
  if (v5 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    }

    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FPDSubtreeChangeDetector maintainDirstatWithError:?];
    }
  }

  return v5 >= 0;
}

- (unint64_t)retrieveDirstatGenCountWithError:(id *)error
{
  v8 = 0u;
  v9 = 0u;
  v7 = 1;
  if ((ffsctl(self->_fd, 0xC0284A20uLL, &v7, 0) & 0x80000000) == 0)
  {
    return *(&v9 + 1);
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPDSubtreeChangeDetector retrieveDirstatGenCountWithError:?];
  }

  return 0;
}

- (id)initAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = FPDSubtreeChangeDetector;
  v8 = [(FPDSubtreeChangeDetector *)&v18 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v8->_path, path);
  [pathCopy fileSystemRepresentation];
  v10 = openat_s();
  v9->_fd = v10;
  if (v10 < 0)
  {
    v14 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPDSubtreeChangeDetector initAtPath:error:];
    }

    if (error)
    {
      v16 = v14;
      *error = v14;
    }

    goto LABEL_13;
  }

  v11 = [(FPDSubtreeChangeDetector *)v9 retrieveFileIDWithError:error];
  v9->_fileID = v11;
  if (!v11 || ![(FPDSubtreeChangeDetector *)v9 maintainDirstatWithError:error]|| (v12 = [(FPDSubtreeChangeDetector *)v9 retrieveDirstatGenCountWithError:error], (v9->_genCount = v12) == 0))
  {
    close(v9->_fd);
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v13 = v9;
LABEL_14:

  return v13;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }

  v4.receiver = self;
  v4.super_class = FPDSubtreeChangeDetector;
  [(FPDSubtreeChangeDetector *)&v4 dealloc];
}

- (id)verifyTreeIdentityWithError:(id *)error
{
  v5 = [(FPDSubtreeChangeDetector *)self retrieveFileIDWithError:?];
  if (v5)
  {
    v6 = v5;
    v5 = [(FPDSubtreeChangeDetector *)self retrieveDirstatGenCountWithError:error];
    if (v5)
    {
      if (v6 == self->_fileID && v5 == self->_genCount)
      {
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
      }

      else if (error)
      {
        v7 = FPSubtreeChangedError();
        v8 = v7;
        v5 = 0;
        *error = v7;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (void)retrieveFileIDWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v3, v4, "[ERROR] Unable to stat directory at '%@': %s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)maintainDirstatWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v3, v4, "[ERROR] Unable to maintain dirstats at '%@': %s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)retrieveDirstatGenCountWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v3, v4, "[ERROR] Unable to retrieve dirstats at '%@': %s", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)initAtPath:error:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v1, v2, "[ERROR] Unable to open directory at '%@': %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end