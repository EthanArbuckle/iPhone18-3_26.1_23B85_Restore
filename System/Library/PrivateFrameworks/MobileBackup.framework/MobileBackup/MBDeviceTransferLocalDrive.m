@interface MBDeviceTransferLocalDrive
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)freeSpace:(unint64_t *)a3 error:(id *)a4;
- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (MBDeviceTransferLocalDrive)initWithPath:(id)a3;
- (id)_resolveRelativePath:(id)a3 error:(id *)a4;
- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (void)invalidate;
@end

@implementation MBDeviceTransferLocalDrive

- (MBDeviceTransferLocalDrive)initWithPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MBDeviceTransferLocalDrive;
  v6 = [(MBDeviceTransferLocalDrive *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
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

- (id)_resolveRelativePath:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (MBIsValidRelativePath())
  {
    v7 = [(NSString *)self->_path stringByAppendingPathComponent:v6];
    v8 = [v7 stringByStandardizingPath];

    v9 = [(NSString *)self->_path stringByAppendingString:@"/"];
    v10 = [v9 stringByStandardizingPath];

    if ([v8 hasPrefix:v10])
    {
      v11 = v8;
    }

    else if (a4)
    {
      [MBError errorWithCode:100 path:v6 format:@"Path outside drive root"];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (a4)
  {
    [MBError errorWithCode:100 path:v6 format:@"Drive path not relative"];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  __assert_rtn("[MBDeviceTransferLocalDrive createDirectoryAtPath:options:error:]", "MBDeviceTransferLocalDrive.m", 59, "0 && Unexpected call");
}

- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(MBDeviceTransferLocalDrive *)self _resolveRelativePath:v7 error:a5];
  if (!v8)
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 contentsOfDirectoryAtPath:v8 error:a5];

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
      v22 = v7;
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
          v19 = [v17 attributesOfItemAtPath:v18 error:a5];

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
      v7 = v22;
    }
  }

  else
  {
    v11 = 0;
  }

  if (a5)
  {
LABEL_19:
    if (*a5)
    {
      *a5 = [MBError errorForNSError:*a5 path:v7 format:@"Listing directory on drive failed"];
    }
  }

LABEL_21:

  return v11;
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [(MBDeviceTransferLocalDrive *)self _resolveRelativePath:v9 error:a6];
  if (v11)
  {
    v12 = [(MBDeviceTransferLocalDrive *)self _resolveRelativePath:v10 error:a6];
    if (v12)
    {
      v13 = +[NSFileManager defaultManager];
      [v13 removeItemAtPath:v12 error:0];

      v14 = +[NSFileManager defaultManager];
      v18 = 0;
      v15 = [v14 copyItemAtPath:v11 toPath:v12 error:&v18];
      v16 = v18;

      if (a6 && (v15 & 1) == 0)
      {
        *a6 = [MBError errorForNSError:v16 path:v9 format:@"Copying file on drive failed"];
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

- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  __assert_rtn("[MBDeviceTransferLocalDrive uploadFileAtPath:toPath:options:error:]", "MBDeviceTransferLocalDrive.m", 111, "0 && Unexpected call");
}

- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v7 = a3;
  v8 = a4;
  __assert_rtn("[MBDeviceTransferLocalDrive uploadFilesAtPaths:options:results:error:]", "MBDeviceTransferLocalDrive.m", 117, "0 && Unexpected call");
}

- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22 = v10;
  v23 = v11;
  v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v20 = 0;
  v21 = 0;
  v14 = [(MBDeviceTransferLocalDrive *)self downloadFilesAtPaths:v13 options:v12 results:&v21 error:&v20];
  v15 = v21;
  v16 = v20;

  if (!v14)
  {
    if (!v16)
    {
      __assert_rtn("[MBDeviceTransferLocalDrive downloadFileAtPath:toPath:options:error:]", "MBDeviceTransferLocalDrive.m", 126, "error");
    }

    v17 = [v15 objectForKeyedSubscript:v10];

    if (!v17)
    {
      __assert_rtn("[MBDeviceTransferLocalDrive downloadFileAtPath:toPath:options:error:]", "MBDeviceTransferLocalDrive.m", 128, "error");
    }

    if (a6)
    {
      v18 = v17;
      *a6 = v17;
    }

    v16 = v17;
  }

  return v14;
}

- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v9 = a3;
  [NSMutableDictionary dictionaryWithCapacity:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100066A04;
  v15[3] = &unk_1003BC7A0;
  v10 = v15[4] = self;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  [v11 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = [v10 count];
  if (v12)
  {
    if (a5)
    {
      v13 = v10;
      *a5 = v10;
    }

    if (a6)
    {
      *a6 = [MBError errorWithCode:2 format:@"Multiple errors"];
    }
  }

  return v12 == 0;
}

- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  __assert_rtn("[MBDeviceTransferLocalDrive moveItemAtPath:toPath:options:error:]", "MBDeviceTransferLocalDrive.m", 180, "0 && Unexpected call");
}

- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v7 = a3;
  v8 = a4;
  __assert_rtn("[MBDeviceTransferLocalDrive moveItemsAtPaths:options:results:error:]", "MBDeviceTransferLocalDrive.m", 186, "0 && Unexpected call");
}

- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  __assert_rtn("[MBDeviceTransferLocalDrive removeItemAtPath:options:error:]", "MBDeviceTransferLocalDrive.m", 192, "0 && Unexpected call");
}

- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v7 = a3;
  v8 = a4;
  __assert_rtn("[MBDeviceTransferLocalDrive removeItemsAtPaths:options:results:error:]", "MBDeviceTransferLocalDrive.m", 198, "0 && Unexpected call");
}

- (BOOL)freeSpace:(unint64_t *)a3 error:(id *)a4
{
  if (a3)
  {
    *a3 = MBFreeDiskSpace();
  }

  return 1;
}

@end