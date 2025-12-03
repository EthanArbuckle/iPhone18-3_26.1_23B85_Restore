@interface NSFileManager(TempFilesAdditions)
- (id)brc_createTemporaryFileInDirectory:()TempFilesAdditions withTemplate:error:;
- (id)brc_createTemporarySubdirectoryOfItem:()TempFilesAdditions withTemplate:error:;
@end

@implementation NSFileManager(TempFilesAdditions)

- (id)brc_createTemporarySubdirectoryOfItem:()TempFilesAdditions withTemplate:error:
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v33[0] = 0;
  v9 = open([v7 fileSystemRepresentation], 33028);
  if (v9 < 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = __pthread_fchdir();
    if ((v10 & 0x80000000) == 0)
    {
      if ([v8 getFileSystemRepresentation:v33 maxLength:1024])
      {
        if (mkdtemp(v33))
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v33];
          v12 = [v7 stringByAppendingPathComponent:v11];

          if (v12)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        *__error() = 63;
      }
    }
  }

  br_errorFromErrno = [MEMORY[0x1E696ABC0] br_errorFromErrno];
  if (br_errorFromErrno)
  {
    v14 = brc_bread_crumbs("[NSFileManager(TempFilesAdditions) brc_createTemporarySubdirectoryOfItem:withTemplate:error:]", 53);
    v15 = brc_default_log(0, 0);
    if (os_log_type_enabled(v15, 0x90u))
    {
      v23 = "(passed to caller)";
      v25 = 136315906;
      v26 = "[NSFileManager(TempFilesAdditions) brc_createTemporarySubdirectoryOfItem:withTemplate:error:]";
      v27 = 2080;
      if (!a5)
      {
        v23 = "(ignored by caller)";
      }

      v28 = v23;
      v29 = 2112;
      v30 = br_errorFromErrno;
      v31 = 2112;
      v32 = v14;
      _os_log_error_impl(&dword_1AE2A9000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", &v25, 0x2Au);
    }
  }

  if (a5)
  {
    v16 = br_errorFromErrno;
    *a5 = br_errorFromErrno;
  }

  v12 = 0;
LABEL_15:
  if (v9 >= 1)
  {
    close(v9);
  }

  if ((v10 & 0x80000000) == 0 && (__pthread_fchdir() & 0x80000000) != 0)
  {
    br_errorFromErrno2 = [MEMORY[0x1E696ABC0] br_errorFromErrno];
    if (br_errorFromErrno2)
    {
      v18 = brc_bread_crumbs("[NSFileManager(TempFilesAdditions) brc_createTemporarySubdirectoryOfItem:withTemplate:error:]", 58);
      v19 = brc_default_log(0, 0);
      if (os_log_type_enabled(v19, 0x90u))
      {
        v24 = "(passed to caller)";
        v25 = 136315906;
        v26 = "[NSFileManager(TempFilesAdditions) brc_createTemporarySubdirectoryOfItem:withTemplate:error:]";
        v27 = 2080;
        if (!a5)
        {
          v24 = "(ignored by caller)";
        }

        v28 = v24;
        v29 = 2112;
        v30 = br_errorFromErrno2;
        v31 = 2112;
        v32 = v18;
        _os_log_error_impl(&dword_1AE2A9000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", &v25, 0x2Au);
      }
    }

    if (a5)
    {
      v20 = br_errorFromErrno2;
      *a5 = br_errorFromErrno2;
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)brc_createTemporaryFileInDirectory:()TempFilesAdditions withTemplate:error:
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  selfCopy = self;
  v11 = v9;
  v12 = open([v8 fileSystemRepresentation], 33028);
  if (v12 < 0)
  {
    v15 = 0;
    v14 = -1;
    goto LABEL_12;
  }

  v13 = v12;
  if ((__pthread_fchdir() & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_10;
  }

  if (([v11 getFileSystemRepresentation:&v26 maxLength:1024] & 1) == 0)
  {
    v15 = 0;
    *__error() = 63;
LABEL_10:
    v14 = -1;
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = mkstemp(&v26);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = [selfCopy stringWithFileSystemRepresentation:&v26 length:strlen(&v26)];
    v16 = v15;
    close(v14);
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    close(v13);
    goto LABEL_12;
  }

  v15 = 0;
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:

  v17 = v15;
  if (v14 < 0)
  {
    br_errorFromErrno = [MEMORY[0x1E696ABC0] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v20 = brc_bread_crumbs("[NSFileManager(TempFilesAdditions) brc_createTemporaryFileInDirectory:withTemplate:error:]", 105);
      v21 = brc_default_log(0, 0);
      if (os_log_type_enabled(v21, 0x90u))
      {
        v25 = "(passed to caller)";
        v26 = 136315906;
        v27 = "[NSFileManager(TempFilesAdditions) brc_createTemporaryFileInDirectory:withTemplate:error:]";
        v28 = 2080;
        if (!a5)
        {
          v25 = "(ignored by caller)";
        }

        v29 = v25;
        v30 = 2112;
        v31 = br_errorFromErrno;
        v32 = 2112;
        v33 = v20;
        _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", &v26, 0x2Au);
      }
    }

    if (a5)
    {
      v22 = br_errorFromErrno;
      *a5 = br_errorFromErrno;
    }

    v18 = 0;
  }

  else
  {
    v18 = [v8 stringByAppendingPathComponent:v17];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

@end