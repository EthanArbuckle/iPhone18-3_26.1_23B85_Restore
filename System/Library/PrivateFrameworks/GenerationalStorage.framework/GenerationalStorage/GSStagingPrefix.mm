@interface GSStagingPrefix
- (BOOL)_refreshWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isStagedPath:(id)a3;
- (GSStagingPrefix)init;
- (GSStagingPrefix)initWithDocumentID:(id)a3;
- (id)stagingPathforCreatingAdditionWithError:(id *)a3;
- (void)_invalidate:(BOOL)a3;
- (void)cleanupStagingPath:(id)a3;
- (void)dealloc;
- (void)finalize;
@end

@implementation GSStagingPrefix

- (GSStagingPrefix)init
{
  v3 = _NSMethodExceptionProem();
  [NSException raise:NSInvalidArgumentException format:@"%@: cannot use -init for initialization", v3];

  return 0;
}

- (GSStagingPrefix)initWithDocumentID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GSStagingPrefix;
  v5 = [(GSStagingPrefix *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 7) = -1;
    *(v5 + 8) = *(v4 + 8);
    *(v5 + 6) = *(v4 + 8);
  }

  return v6;
}

- (BOOL)_refreshWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_sandboxHandle < 0)
  {
    v6 = +[GSDaemonProxySync proxy];
    v7 = [[NSUUID alloc] initWithUUIDBytes:v4->_volumeUUID];
    deviceID = v4->_deviceID;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100001CD4;
    v15 = &unk_100040A98;
    v16 = v4;
    v9 = v6;
    v17 = v9;
    [v9 stagingPrefixForDevice:deviceID volumeUUID:v7 reply:&v12];
    v10 = [v9 result];
    if (a3)
    {
      *a3 = [v9 error];
    }

    v5 = [v10 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  objc_sync_exit(v4);

  return v5;
}

- (void)_invalidate:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v3)
  {
    path = v4->_path;
    if (path)
    {
      v6 = path;
      if (qword_10004C948 != -1)
      {
        sub_100025364();
      }

      v7 = qword_10004C940;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001F78;
      block[3] = &unk_100040B00;
      v13 = v6;
      v8 = v6;
      dispatch_async(v7, block);
    }
  }

  if ((v4->_sandboxHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    v4->_sandboxHandle = -1;
  }

  v9 = v4->_path;
  v4->_path = 0;

  pathComponents = v4->_pathComponents;
  v4->_pathComponents = 0;

  extension = v4->_extension;
  v4->_extension = 0;

  objc_sync_exit(v4);
}

- (void)finalize
{
  [(GSStagingPrefix *)self _invalidate:1];
  v3.receiver = self;
  v3.super_class = GSStagingPrefix;
  [(GSStagingPrefix *)&v3 finalize];
}

- (void)dealloc
{
  [(GSStagingPrefix *)self _invalidate:1];
  v3.receiver = self;
  v3.super_class = GSStagingPrefix;
  [(GSStagingPrefix *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)self->_path isEqualToString:v4->_path];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)stagingPathforCreatingAdditionWithError:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  if (self->_sandboxHandle < 0 && ![(GSStagingPrefix *)self _refreshWithError:a3])
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    path = self->_path;
    v13 = 0;
    v7 = [v5 gs_createTemporarySubdirectoryOfItem:path withTemplate:@"XXXXXXXX" error:&v13];
    v8 = v13;
    v9 = v8;
    if (v7)
    {
LABEL_4:
      v10 = v7;
      goto LABEL_12;
    }

    if ([v8 code] == 642)
    {
      if (a3)
      {
        v11 = v9;
        v7 = 0;
        *a3 = v9;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_4;
    }

    [(GSStagingPrefix *)self _invalidate:1];
    if ([(GSStagingPrefix *)self _refreshWithError:a3])
    {
      v7 = [v5 gs_createTemporarySubdirectoryOfItem:self->_path withTemplate:@"XXXXXXXX" error:a3];
      goto LABEL_4;
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (BOOL)isStagedPath:(id)a3
{
  v3 = sub_1000022A8(self->_path, self->_pathComponents, a3);
  v4 = v3 != 0;

  return v4;
}

- (void)cleanupStagingPath:(id)a3
{
  v3 = sub_1000022A8(self->_path, self->_pathComponents, a3);
  if (v3)
  {
    v5 = v3;
    v4 = v3;
    sub_10000965C([v5 fileSystemRepresentation], 0, 0);
    v3 = v5;
  }
}

@end