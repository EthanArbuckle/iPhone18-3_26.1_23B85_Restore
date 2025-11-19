@interface _CachedFileDescriptors
- (int)_cachedFDForDomain:(id)a3 withSnapshotPath:(id)a4 error:(id *)a5;
- (int)_cachedFDForPath:(id)a3 WithError:(id *)a4;
- (int)cachedFDForDomain:(id)a3 withSnapshotPath:(id)a4 error:(id *)a5;
@end

@implementation _CachedFileDescriptors

- (int)cachedFDForDomain:(id)a3 withSnapshotPath:(id)a4 error:(id *)a5
{
  if (a4)
  {

    return [_CachedFileDescriptors _cachedFDForDomain:"_cachedFDForDomain:withSnapshotPath:error:" withSnapshotPath:a3 error:?];
  }

  else
  {
    v7 = [a3 rootPath];
    v8 = [(_CachedFileDescriptors *)self _cachedFDForPath:v7 WithError:a5];

    return v8;
  }
}

- (int)_cachedFDForDomain:(id)a3 withSnapshotPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    __assert_rtn("[_CachedFileDescriptors _cachedFDForDomain:withSnapshotPath:error:]", "MBFileScanner.m", 1356, "snapshotPath");
  }

  v10 = v9;
  v11 = [v8 rootPath];
  v12 = [v8 volumeMountPoint];
  v13 = MBSnapshotPathFromLivePath(v11, v10, v12);

  if (!v13)
  {
    __assert_rtn("[_CachedFileDescriptors _cachedFDForDomain:withSnapshotPath:error:]", "MBFileScanner.m", 1359, "path");
  }

  v14 = self->_fileHandleForSnapshot;
  if (v14)
  {
    v15 = v14;
    if (([v13 isEqualToString:self->_fileHandlePathForSnapshot] & 1) == 0)
    {
      __assert_rtn("[_CachedFileDescriptors _cachedFDForDomain:withSnapshotPath:error:]", "MBFileScanner.m", 1363, "!fileHandle || [path isEqualToString:_fileHandlePathForSnapshot]");
    }

LABEL_8:
    v18 = [(NSFileHandle *)v15 fileDescriptor];
    if (v18 == -1)
    {
      __assert_rtn("[_CachedFileDescriptors _cachedFDForDomain:withSnapshotPath:error:]", "MBFileScanner.m", 1380, "fd != -1");
    }

    goto LABEL_9;
  }

  v16 = open([v13 fileSystemRepresentation], 0);
  if (v16 != -1)
  {
    v15 = [[NSFileHandle alloc] initWithFileDescriptor:v16 closeOnDealloc:1];
    fileHandleForSnapshot = self->_fileHandleForSnapshot;
    self->_fileHandleForSnapshot = v15;

    objc_storeStrong(&self->_fileHandlePathForSnapshot, v13);
    if (!v15)
    {
      __assert_rtn("[_CachedFileDescriptors _cachedFDForDomain:withSnapshotPath:error:]", "MBFileScanner.m", 1376, "fileHandle");
    }

    goto LABEL_8;
  }

  v20 = *__error();
  if (a5)
  {
    *a5 = [MBError posixErrorWithPath:v13 format:@"open failed"];
  }

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v23 = v13;
    v24 = 1024;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=scanning= open failed at %@: %{errno}d", buf, 0x12u);
    _MBLog();
  }

  v15 = 0;
  v18 = -1;
LABEL_9:

  return v18;
}

- (int)_cachedFDForPath:(id)a3 WithError:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    __assert_rtn("[_CachedFileDescriptors _cachedFDForPath:WithError:]", "MBFileScanner.m", 1385, "path");
  }

  v8 = v7;
  v9 = self->_fileHandle;
  if (v9)
  {
    v10 = v9;
    if (([v8 isEqualToString:self->_fileHandlePath] & 1) == 0)
    {
      __assert_rtn("[_CachedFileDescriptors _cachedFDForPath:WithError:]", "MBFileScanner.m", 1389, "!fileHandle || [path isEqualToString:_fileHandlePath]");
    }

LABEL_7:
    v13 = [(NSFileHandle *)v10 fileDescriptor];
    if (v13 == -1)
    {
      __assert_rtn("[_CachedFileDescriptors _cachedFDForPath:WithError:]", "MBFileScanner.m", 1406, "fd != -1");
    }

    goto LABEL_8;
  }

  v11 = open([v8 fileSystemRepresentation], 0);
  if (v11 != -1)
  {
    v10 = [[NSFileHandle alloc] initWithFileDescriptor:v11 closeOnDealloc:1];
    fileHandle = self->_fileHandle;
    self->_fileHandle = v10;

    objc_storeStrong(&self->_fileHandlePath, a3);
    if (!v10)
    {
      __assert_rtn("[_CachedFileDescriptors _cachedFDForPath:WithError:]", "MBFileScanner.m", 1402, "fileHandle");
    }

    goto LABEL_7;
  }

  v15 = *__error();
  if (a4)
  {
    *a4 = [MBError posixErrorWithPath:v8 format:@"open failed"];
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 1024;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=scanning= open failed at %@: %{errno}d", buf, 0x12u);
    _MBLog();
  }

  v10 = 0;
  v13 = -1;
LABEL_8:

  return v13;
}

@end