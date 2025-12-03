@interface GSStagingPrefix
- (BOOL)_refreshWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isStagedPath:(id)path;
- (GSStagingPrefix)init;
- (GSStagingPrefix)initWithDocumentID:(id)d;
- (id)stagingPathforCreatingAdditionWithError:(id *)error;
- (void)_invalidate:(BOOL)_invalidate;
- (void)cleanupStagingPath:(id)path;
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

- (GSStagingPrefix)initWithDocumentID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = GSStagingPrefix;
  v5 = [(GSStagingPrefix *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 7) = -1;
    *(v5 + 8) = *(dCopy + 8);
    *(v5 + 6) = *(dCopy + 8);
  }

  return v6;
}

- (BOOL)_refreshWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_sandboxHandle < 0)
  {
    v6 = +[GSDaemonProxySync proxy];
    v7 = [[NSUUID alloc] initWithUUIDBytes:selfCopy->_volumeUUID];
    deviceID = selfCopy->_deviceID;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100001CD4;
    v15 = &unk_100040A98;
    v16 = selfCopy;
    v9 = v6;
    v17 = v9;
    [v9 stagingPrefixForDevice:deviceID volumeUUID:v7 reply:&v12];
    result = [v9 result];
    if (error)
    {
      *error = [v9 error];
    }

    bOOLValue = [result BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  objc_sync_exit(selfCopy);

  return bOOLValue;
}

- (void)_invalidate:(BOOL)_invalidate
{
  _invalidateCopy = _invalidate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_invalidateCopy)
  {
    path = selfCopy->_path;
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

  if ((selfCopy->_sandboxHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    selfCopy->_sandboxHandle = -1;
  }

  v9 = selfCopy->_path;
  selfCopy->_path = 0;

  pathComponents = selfCopy->_pathComponents;
  selfCopy->_pathComponents = 0;

  extension = selfCopy->_extension;
  selfCopy->_extension = 0;

  objc_sync_exit(selfCopy);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)self->_path isEqualToString:equalCopy->_path];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)stagingPathforCreatingAdditionWithError:(id *)error
{
  v5 = +[NSFileManager defaultManager];
  if (self->_sandboxHandle < 0 && ![(GSStagingPrefix *)self _refreshWithError:error])
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
      if (error)
      {
        v11 = v9;
        v7 = 0;
        *error = v9;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_4;
    }

    [(GSStagingPrefix *)self _invalidate:1];
    if ([(GSStagingPrefix *)self _refreshWithError:error])
    {
      v7 = [v5 gs_createTemporarySubdirectoryOfItem:self->_path withTemplate:@"XXXXXXXX" error:error];
      goto LABEL_4;
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (BOOL)isStagedPath:(id)path
{
  v3 = sub_1000022A8(self->_path, self->_pathComponents, path);
  v4 = v3 != 0;

  return v4;
}

- (void)cleanupStagingPath:(id)path
{
  v3 = sub_1000022A8(self->_path, self->_pathComponents, path);
  if (v3)
  {
    v5 = v3;
    v4 = v3;
    sub_10000965C([v5 fileSystemRepresentation], 0, 0);
    v3 = v5;
  }
}

@end