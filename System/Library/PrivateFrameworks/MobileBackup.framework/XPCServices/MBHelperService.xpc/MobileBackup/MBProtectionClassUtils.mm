@interface MBProtectionClassUtils
+ (BOOL)isContentUnavailableDueToCxExpiration:(id)expiration error:(id *)error;
+ (int)_openRawEncryptedWithPathFSR:(const char *)r error:(id *)error;
+ (unsigned)getWithFD:(int)d error:(id *)error;
+ (unsigned)getWithPath:(id)path error:(id *)error;
+ (unsigned)getWithPathFSR:(const char *)r error:(id *)error;
@end

@implementation MBProtectionClassUtils

+ (unsigned)getWithPath:(id)path error:(id *)error
{
  fileSystemRepresentation = [path fileSystemRepresentation];

  return [MBProtectionClassUtils getWithPathFSR:fileSystemRepresentation error:error];
}

+ (BOOL)isContentUnavailableDueToCxExpiration:(id)expiration error:(id *)error
{
  expirationCopy = expiration;
  fileSystemRepresentation = [expirationCopy fileSystemRepresentation];
  if ([self getWithPathFSR:fileSystemRepresentation error:error] != 7)
  {
    goto LABEL_7;
  }

  v8 = open(fileSystemRepresentation, 256);
  v9 = __error();
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (*v9 != 1)
  {
    goto LABEL_7;
  }

  v10 = 1;
  if (error)
  {
    *error = [MBError errorWithErrno:1 code:240 path:expirationCopy format:@"File content unavailable with protection class %d", 7];
  }

LABEL_8:

  return v10;
}

+ (unsigned)getWithPathFSR:(const char *)r error:(id *)error
{
  v5 = [self _openRawEncryptedWithPathFSR:r error:?];
  if ((v5 & 0x80000000) != 0)
  {
    return -1;
  }

  v6 = v5;
  v7 = [MBProtectionClassUtils getWithFD:v5 error:error];
  close(v6);
  return v7;
}

+ (int)_openRawEncryptedWithPathFSR:(const char *)r error:(id *)error
{
  result = open_dprotected_np(r, 256, 0, 1, 0);
  if (result < 0)
  {
    v7 = *__error();
    if (error)
    {
      v8 = [NSString mb_stringWithFileSystemRepresentation:r];
      *error = [MBError posixErrorWithPath:v8 format:@"open_dprotected_np error"];
    }

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = r;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=pc= open_dprotected_np failed at %s: %{errno}d", &buf, 0x12u);
      _MBLog(@"E ", "=pc= open_dprotected_np failed at %s: %{errno}d", v10, v11, v12, v13, v14, v15, r);
    }

    if (v7 == 22)
    {
      if (!MBIsInternalInstall())
      {
        return -1;
      }
    }

    else
    {
      if (v7 != 1)
      {
        return -1;
      }

      memset(&buf, 0, sizeof(buf));
      v16 = lstat(r, &buf);
      if (v16 | buf.st_flags & 0x20)
      {
        return -1;
      }
    }

    v17 = [NSString mb_stringWithFileSystemRepresentation:r];
    MBDiagnoseFile(v17, v7, "open_dprotected_np");
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      buf.st_dev = 138412546;
      *&buf.st_mode = v17;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "=pc= open_dprotected_np failed at %@: %{errno}d", &buf, 0x12u);
      _MBLog(@"F ", "=pc= open_dprotected_np failed at %@: %{errno}d", v19, v20, v21, v22, v23, v24, v17);
    }

    return -1;
  }

  return result;
}

+ (unsigned)getWithFD:(int)d error:(id *)error
{
  v5 = fcntl(d, 63);
  if (v5 < 0)
  {
    if (error)
    {
      *error = [MBError posixErrorWithFormat:@"fcntl error getting protection class"];
    }

    LOBYTE(v5) = -1;
  }

  return v5;
}

@end