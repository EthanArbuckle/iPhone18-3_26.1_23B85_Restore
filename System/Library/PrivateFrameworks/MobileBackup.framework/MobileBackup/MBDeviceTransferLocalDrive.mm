@interface MBDeviceTransferLocalDrive
- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)createDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)downloadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)freeSpace:(unint64_t *)space error:(id *)error;
- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)removeItemAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)uploadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (MBDeviceTransferLocalDrive)initWithPath:(id)path;
- (id)_resolveRelativePath:(id)path error:(id *)error;
- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (void)invalidate;
@end

@implementation MBDeviceTransferLocalDrive

- (MBDeviceTransferLocalDrive)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = MBDeviceTransferLocalDrive;
  v6 = [(MBDeviceTransferLocalDrive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
  }

  return v7;
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalidated, 1u) & 1) == 0)
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v4 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidated %@", buf, 0xCu);
      objc_opt_class();
      _MBLog();
    }
  }
}

- (id)_resolveRelativePath:(id)path error:(id *)error
{
  pathCopy = path;
  if (MBIsValidRelativePath())
  {
    v7 = [(NSString *)self->_path stringByAppendingPathComponent:pathCopy];
    stringByStandardizingPath = [v7 stringByStandardizingPath];

    v9 = [(NSString *)self->_path stringByAppendingString:@"/"];
    stringByStandardizingPath2 = [v9 stringByStandardizingPath];

    if ([stringByStandardizingPath hasPrefix:stringByStandardizingPath2])
    {
      v11 = stringByStandardizingPath;
    }

    else if (error)
    {
      [MBError errorWithCode:100 path:pathCopy format:@"Path outside drive root"];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (error)
  {
    [MBError errorWithCode:100 path:pathCopy format:@"Drive path not relative"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)createDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  __assert_rtn("[MBDeviceTransferLocalDrive createDirectoryAtPath:options:error:]", "MBDeviceTransferLocalDrive.m", 59, "0 && Unexpected call");
}

- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  v8 = [(MBDeviceTransferLocalDrive *)self _resolveRelativePath:pathCopy error:error];
  if (!v8)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 contentsOfDirectoryAtPath:v8 error:error];

  if (v10)
  {
    v11 = [NSMutableDictionary dictionaryWithCapacity:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v21 = v10;
      v22 = pathCopy;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = +[NSFileManager defaultManager];
          v18 = [v8 stringByAppendingPathComponent:v16];
          v19 = [v17 attributesOfItemAtPath:v18 error:error];

          if (!v19)
          {

            v11 = 0;
            goto LABEL_15;
          }

          [v11 setObject:v19 forKeyedSubscript:v16];
        }

        v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_15:
      v10 = v21;
      pathCopy = v22;
    }
  }

  else
  {
    v11 = 0;
  }

  if (error)
  {
LABEL_19:
    if (*error)
    {
      *error = [MBError errorForNSError:*error path:pathCopy format:@"Listing directory on drive failed"];
    }
  }

LABEL_21:

  return v11;
}

- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  v11 = [(MBDeviceTransferLocalDrive *)self _resolveRelativePath:pathCopy error:error];
  if (v11)
  {
    v12 = [(MBDeviceTransferLocalDrive *)self _resolveRelativePath:toPathCopy error:error];
    if (v12)
    {
      v13 = +[NSFileManager defaultManager];
      [v13 removeItemAtPath:v12 error:0];

      v14 = +[NSFileManager defaultManager];
      v18 = 0;
      v15 = [v14 copyItemAtPath:v11 toPath:v12 error:&v18];
      v16 = v18;

      if (error && (v15 & 1) == 0)
      {
        *error = [MBError errorForNSError:v16 path:pathCopy format:@"Copying file on drive failed"];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)uploadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  __assert_rtn("[MBDeviceTransferLocalDrive uploadFileAtPath:toPath:options:error:]", "MBDeviceTransferLocalDrive.m", 111, "0 && Unexpected call");
}

- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  __assert_rtn("[MBDeviceTransferLocalDrive uploadFilesAtPaths:options:results:error:]", "MBDeviceTransferLocalDrive.m", 117, "0 && Unexpected call");
}

- (BOOL)downloadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  v22 = pathCopy;
  v23 = toPathCopy;
  v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v20 = 0;
  v21 = 0;
  v14 = [(MBDeviceTransferLocalDrive *)self downloadFilesAtPaths:v13 options:optionsCopy results:&v21 error:&v20];
  v15 = v21;
  v16 = v20;

  if (!v14)
  {
    if (!v16)
    {
      __assert_rtn("[MBDeviceTransferLocalDrive downloadFileAtPath:toPath:options:error:]", "MBDeviceTransferLocalDrive.m", 126, "error");
    }

    v17 = [v15 objectForKeyedSubscript:pathCopy];

    if (!v17)
    {
      __assert_rtn("[MBDeviceTransferLocalDrive downloadFileAtPath:toPath:options:error:]", "MBDeviceTransferLocalDrive.m", 128, "error");
    }

    if (error)
    {
      v18 = v17;
      *error = v17;
    }

    v16 = v17;
  }

  return v14;
}

- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  [NSMutableDictionary dictionaryWithCapacity:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100066A04;
  v15[3] = &unk_1003BC7A0;
  v10 = v15[4] = self;
  v16 = v10;
  v11 = pathsCopy;
  v17 = v11;
  [v11 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = [v10 count];
  if (v12)
  {
    if (results)
    {
      v13 = v10;
      *results = v10;
    }

    if (error)
    {
      *error = [MBError errorWithCode:2 format:@"Multiple errors"];
    }
  }

  return v12 == 0;
}

- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  __assert_rtn("[MBDeviceTransferLocalDrive moveItemAtPath:toPath:options:error:]", "MBDeviceTransferLocalDrive.m", 180, "0 && Unexpected call");
}

- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  __assert_rtn("[MBDeviceTransferLocalDrive moveItemsAtPaths:options:results:error:]", "MBDeviceTransferLocalDrive.m", 186, "0 && Unexpected call");
}

- (BOOL)removeItemAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  __assert_rtn("[MBDeviceTransferLocalDrive removeItemAtPath:options:error:]", "MBDeviceTransferLocalDrive.m", 192, "0 && Unexpected call");
}

- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  __assert_rtn("[MBDeviceTransferLocalDrive removeItemsAtPaths:options:results:error:]", "MBDeviceTransferLocalDrive.m", 198, "0 && Unexpected call");
}

- (BOOL)freeSpace:(unint64_t *)space error:(id *)error
{
  if (space)
  {
    *space = MBFreeDiskSpace();
  }

  return 1;
}

@end