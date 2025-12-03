@interface BRPosixOperationsWrapper
+ (int)checkMachLookupForService:(id)service;
+ (int)open:(id)open flags:(int)flags;
+ (int64_t)consumeSandboxExtension:(id)extension error:(id *)error;
+ (unint64_t)getFileIDOfURL:(id)l withError:(id *)error;
@end

@implementation BRPosixOperationsWrapper

+ (int)open:(id)open flags:(int)flags
{
  fileSystemRepresentation = [open fileSystemRepresentation];

  return open(fileSystemRepresentation, flags);
}

+ (unint64_t)getFileIDOfURL:(id)l withError:(id *)error
{
  v5 = open([l fileSystemRepresentation], 2129924);
  if (v5 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] br_errorWithPOSIXCode:*__error()];
    }

    return *__error();
  }

  else
  {
    v9 = 0;
    v8 = xmmword_1AE33DFD8;
    memset(v7, 0, 12);
    if (fgetattrlist(v5, &v8, v7, 0xCuLL, 0x20u) >= 0)
    {
      return *(v7 + 4);
    }

    else
    {
      return 0;
    }
  }
}

+ (int64_t)consumeSandboxExtension:(id)extension error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v6 = extensionCopy;
  if (extensionCopy)
  {
    [extensionCopy bytes];
    v7 = sandbox_extension_consume();
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    br_errorFromErrno = [MEMORY[0x1E696ABC0] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v9 = brc_bread_crumbs("+[BRPosixOperationsWrapper consumeSandboxExtension:error:]", 74);
      v10 = brc_default_log(0, 0);
      if (os_log_type_enabled(v10, 0x90u))
      {
        v19 = "(passed to caller)";
        v20 = 136315906;
        v21 = "+[BRPosixOperationsWrapper consumeSandboxExtension:error:]";
        v22 = 2080;
        if (!error)
        {
          v19 = "(ignored by caller)";
        }

        v23 = v19;
        v24 = 2112;
        v25 = br_errorFromErrno;
        v26 = 2112;
        v27 = v9;
        _os_log_error_impl(&dword_1AE2A9000, v10, 0x90u, "[ERROR] %s: %s error: %@%@", &v20, 0x2Au);
      }
    }
  }

  else
  {
    v11 = brc_bread_crumbs("+[BRPosixOperationsWrapper consumeSandboxExtension:error:]", 68);
    v12 = brc_default_log(0, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BRPosixOperationsWrapper consumeSandboxExtension:v11 error:v12];
    }

    br_errorFromErrno = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRInternalErrorDomain" code:15 description:@"unreachable: Trying to consume nil sandbox extension"];
    if (br_errorFromErrno)
    {
      v13 = brc_bread_crumbs("+[BRPosixOperationsWrapper consumeSandboxExtension:error:]", 68);
      v14 = brc_default_log(0, 0);
      if (os_log_type_enabled(v14, 0x90u))
      {
        v18 = "(passed to caller)";
        v20 = 136315906;
        v21 = "+[BRPosixOperationsWrapper consumeSandboxExtension:error:]";
        v22 = 2080;
        if (!error)
        {
          v18 = "(ignored by caller)";
        }

        v23 = v18;
        v24 = 2112;
        v25 = br_errorFromErrno;
        v26 = 2112;
        v27 = v13;
        _os_log_error_impl(&dword_1AE2A9000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", &v20, 0x2Au);
      }
    }

    v7 = -1;
  }

  if (error)
  {
    v15 = br_errorFromErrno;
    *error = br_errorFromErrno;
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (int)checkMachLookupForService:(id)service
{
  serviceCopy = service;
  getpid();
  v4 = *MEMORY[0x1E69E9BD0];
  [serviceCopy UTF8String];

  return sandbox_check();
}

+ (void)consumeSandboxExtension:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Trying to consume nil sandbox extension%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end