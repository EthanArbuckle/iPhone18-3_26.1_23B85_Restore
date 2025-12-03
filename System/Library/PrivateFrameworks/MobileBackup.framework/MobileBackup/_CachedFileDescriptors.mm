@interface _CachedFileDescriptors
- (int)_cachedFDForDomain:(id)domain withSnapshotPath:(id)path error:(id *)error;
- (int)_cachedFDForPath:(id)path WithError:(id *)error;
- (int)cachedFDForDomain:(id)domain withSnapshotPath:(id)path error:(id *)error;
@end

@implementation _CachedFileDescriptors

- (int)cachedFDForDomain:(id)domain withSnapshotPath:(id)path error:(id *)error
{
  if (path)
  {

    return [_CachedFileDescriptors _cachedFDForDomain:"_cachedFDForDomain:withSnapshotPath:error:" withSnapshotPath:domain error:?];
  }

  else
  {
    rootPath = [domain rootPath];
    v8 = [(_CachedFileDescriptors *)self _cachedFDForPath:rootPath WithError:error];

    return v8;
  }
}

- (int)_cachedFDForDomain:(id)domain withSnapshotPath:(id)path error:(id *)error
{
  domainCopy = domain;
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[_CachedFileDescriptors _cachedFDForDomain:withSnapshotPath:error:]", "MBFileScanner.m", 1356, "snapshotPath");
  }

  v10 = pathCopy;
  rootPath = [domainCopy rootPath];
  volumeMountPoint = [domainCopy volumeMountPoint];
  v13 = MBSnapshotPathFromLivePath(rootPath, v10, volumeMountPoint);

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
    fileDescriptor = [(NSFileHandle *)v15 fileDescriptor];
    if (fileDescriptor == -1)
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
  if (error)
  {
    *error = [MBError posixErrorWithPath:v13 format:@"open failed"];
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
  fileDescriptor = -1;
LABEL_9:

  return fileDescriptor;
}

- (int)_cachedFDForPath:(id)path WithError:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[_CachedFileDescriptors _cachedFDForPath:WithError:]", "MBFileScanner.m", 1385, "path");
  }

  v8 = pathCopy;
  v9 = self->_fileHandle;
  if (v9)
  {
    v10 = v9;
    if (([v8 isEqualToString:self->_fileHandlePath] & 1) == 0)
    {
      __assert_rtn("[_CachedFileDescriptors _cachedFDForPath:WithError:]", "MBFileScanner.m", 1389, "!fileHandle || [path isEqualToString:_fileHandlePath]");
    }

LABEL_7:
    fileDescriptor = [(NSFileHandle *)v10 fileDescriptor];
    if (fileDescriptor == -1)
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

    objc_storeStrong(&self->_fileHandlePath, path);
    if (!v10)
    {
      __assert_rtn("[_CachedFileDescriptors _cachedFDForPath:WithError:]", "MBFileScanner.m", 1402, "fileHandle");
    }

    goto LABEL_7;
  }

  v15 = *__error();
  if (error)
  {
    *error = [MBError posixErrorWithPath:v8 format:@"open failed"];
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
  fileDescriptor = -1;
LABEL_8:

  return fileDescriptor;
}

@end