@interface MBProtectionClassUtils
+ (BOOL)canOpenWhenLocked:(unsigned __int8)a3;
+ (BOOL)isContentUnavailableDueToCxExpiration:(id)a3 error:(id *)a4;
+ (BOOL)isProtected:(unsigned __int8)a3;
+ (int)_openRawEncryptedWithPathFSR:(const char *)a3 error:(id *)a4;
+ (int)sqliteOpenFlagForProtectionClass:(unsigned __int8)a3;
+ (unsigned)getWithFD:(int)a3 error:(id *)a4;
+ (unsigned)getWithPath:(id)a3 error:(id *)a4;
+ (unsigned)getWithPathFSR:(const char *)a3 error:(id *)a4;
@end

@implementation MBProtectionClassUtils

+ (BOOL)isProtected:(unsigned __int8)a3
{
  v3 = a3;
  if (a3 < 8u && ((0x9Fu >> a3) & 1) != 0)
  {
    v4 = 0x8Eu >> a3;
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "=pc= +isProtected: Invalid protection class: %d", buf, 8u);
      _MBLog();
    }

    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

+ (BOOL)canOpenWhenLocked:(unsigned __int8)a3
{
  v3 = a3;
  if (a3 < 8u && ((0x9Fu >> a3) & 1) != 0)
  {
    v4 = 0xF9u >> a3;
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "=pc= +canOpenWhenLocked: Invalid protection class: %d", buf, 8u);
      _MBLog();
    }

    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

+ (unsigned)getWithPath:(id)a3 error:(id *)a4
{
  v5 = [a3 fileSystemRepresentation];

  return [MBProtectionClassUtils getWithPathFSR:v5 error:a4];
}

+ (BOOL)isContentUnavailableDueToCxExpiration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 fileSystemRepresentation];
  if ([a1 getWithPathFSR:v7 error:a4] != 7)
  {
    goto LABEL_7;
  }

  v8 = open(v7, 256);
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
  if (a4)
  {
    *a4 = [MBError errorWithErrno:1 code:240 path:v6 format:@"File content unavailable with protection class %d", 7];
  }

LABEL_8:

  return v10;
}

+ (unsigned)getWithPathFSR:(const char *)a3 error:(id *)a4
{
  v5 = [a1 _openRawEncryptedWithPathFSR:a3 error:?];
  if ((v5 & 0x80000000) != 0)
  {
    return -1;
  }

  v6 = v5;
  v7 = [MBProtectionClassUtils getWithFD:v5 error:a4];
  close(v6);
  return v7;
}

+ (int)_openRawEncryptedWithPathFSR:(const char *)a3 error:(id *)a4
{
  result = open_dprotected_np(a3, 256, 0, 1, 0);
  if (result < 0)
  {
    v7 = *__error();
    if (a4)
    {
      v8 = [NSString mb_stringWithFileSystemRepresentation:a3];
      *a4 = [MBError posixErrorWithPath:v8 format:@"open_dprotected_np error"];
    }

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 136315394;
      *&buf.st_mode = a3;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=pc= open_dprotected_np failed at %s: %{errno}d", &buf, 0x12u);
      v13 = a3;
      v14 = v7;
      _MBLog();
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
      v10 = lstat(a3, &buf);
      if (v10 | buf.st_flags & 0x20)
      {
        return -1;
      }
    }

    v11 = [NSString mb_stringWithFileSystemRepresentation:a3, v13, v14];
    MBDiagnoseFile(v11, v7, "open_dprotected_np");
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      buf.st_dev = 138412546;
      *&buf.st_mode = v11;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "=pc= open_dprotected_np failed at %@: %{errno}d", &buf, 0x12u);
      _MBLog();
    }

    return -1;
  }

  return result;
}

+ (unsigned)getWithFD:(int)a3 error:(id *)a4
{
  v5 = fcntl(a3, 63);
  if (v5 < 0)
  {
    if (a4)
    {
      *a4 = [MBError posixErrorWithFormat:@"fcntl error getting protection class"];
    }

    LOBYTE(v5) = -1;
  }

  return v5;
}

+ (int)sqliteOpenFlagForProtectionClass:(unsigned __int8)a3
{
  v3 = a3;
  if (a3 - 1) < 7 && ((0x4Fu >> (a3 - 1)))
  {
    return dword_1002BA270[(a3 - 1)];
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=pc= No SQLite open flag known for protection class: %d", buf, 8u);
    _MBLog();
  }

  return 0x400000;
}

@end