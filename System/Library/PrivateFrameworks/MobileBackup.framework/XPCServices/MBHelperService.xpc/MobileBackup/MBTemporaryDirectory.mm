@interface MBTemporaryDirectory
+ (id)sharedTemporaryDirectoryForTest:(id)a3 error:(id *)a4;
+ (id)sharedTemporaryDirectoryIdentifiedBy:(id)a3 error:(id *)a4;
+ (id)temporaryDirectoryOnSameVolumeAsPath:(id)a3 identifiedBy:(id)a4 error:(id *)a5;
+ (id)userTemporaryDirectoryForPersona:(id)a3 identifiedBy:(id)a4 error:(id *)a5;
+ (id)userTemporaryDirectoryForTest:(id)a3 error:(id *)a4;
- (BOOL)_purgeContentsAt:(int)a3 rPath:(id)a4 error:(id *)a5;
- (BOOL)disposeWithError:(id *)a3;
- (BOOL)purgeContentsWithError:(id *)a3;
- (id)_initWithExistingFsRepPath:(char *)a3 identifier:(id)a4;
- (id)description;
- (void)dealloc;
- (void)disposeWithoutDeleting;
@end

@implementation MBTemporaryDirectory

+ (id)sharedTemporaryDirectoryForTest:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![v5 length])
  {
    sub_100014578();
  }

  if (qword_10002A190 != -1)
  {
    sub_100014564();
  }

  v6 = sub_100006F8C(qword_10002A188, v5, a4);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:v5];
  }

  return v6;
}

+ (id)userTemporaryDirectoryForTest:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![v5 length])
  {
    sub_100014610();
  }

  if (qword_10002A1A0 != -1)
  {
    sub_1000145FC();
  }

  v6 = sub_100006F8C(qword_10002A198, v5, a4);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:v5];
  }

  return v6;
}

+ (id)sharedTemporaryDirectoryIdentifiedBy:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![v5 length])
  {
    sub_100014650();
  }

  if (qword_10002A1B0 != -1)
  {
    sub_10001463C();
  }

  v6 = sub_100006F8C(qword_10002A1A8, v5, a4);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:v5];
  }

  return v6;
}

+ (id)userTemporaryDirectoryForPersona:(id)a3 identifiedBy:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_1000146A8();
  }

  v9 = v8;
  if (![v8 length])
  {
    sub_10001467C();
  }

  v10 = [v7 volumeMountPoint];
  v11 = [v10 stringByAppendingPathComponent:@"tmp"];
  v12 = [v11 stringByAppendingPathComponent:@"com.apple.backup"];
  v13 = [v12 fileSystemRepresentation];

  sub_100007370(v13);
  v14 = sub_100006F8C(v13, v9, a5);
  if (v14)
  {
    v14 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v14 identifier:v9];
  }

  return v14;
}

+ (id)temporaryDirectoryOnSameVolumeAsPath:(id)a3 identifiedBy:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_100014758();
  }

  v9 = v8;
  if (![v8 length])
  {
    sub_10001472C();
  }

  if (!a5)
  {
    sub_100014700();
  }

  v10 = [MBFileSystemManager volumeMountPointForFile:v7 error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringByAppendingPathComponent:@"tmp"];
    v13 = [v12 stringByAppendingPathComponent:@"com.apple.backup"];
    v14 = [v13 fileSystemRepresentation];

    sub_100007370(v14);
    v15 = sub_100006F8C(v14, v9, a5);
    if (v15)
    {
      v15 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v15 identifier:v9];
    }
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *a5;
      *buf = 138412546;
      v27 = v7;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= could not find mount point for %@: %@", buf, 0x16u);
      v25 = *a5;
      _MBLog(@"E ", "=tmpdir= could not find mount point for %@: %@", v18, v19, v20, v21, v22, v23, v7);
    }

    v15 = 0;
  }

  return v15;
}

- (id)_initWithExistingFsRepPath:(char *)a3 identifier:(id)a4
{
  v7 = a4;
  if (!a3)
  {
    sub_1000147B0();
  }

  v8 = v7;
  if (!v7)
  {
    sub_100014784();
  }

  v13.receiver = self;
  v13.super_class = MBTemporaryDirectory;
  v9 = [(MBTemporaryDirectory *)&v13 init];
  if (v9)
  {
    v10 = [NSString mb_stringWithFileSystemRepresentation:a3];
    path = v9->_path;
    v9->_path = v10;

    v9->_fsRepPath = a3;
    objc_storeStrong(&v9->_identifier, a4);
  }

  return v9;
}

- (BOOL)purgeContentsWithError:(id *)a3
{
  v5 = [(MBTemporaryDirectory *)self path];
  v6 = [v5 stringByDeletingLastPathComponent];

  v7 = sub_10000764C([v6 fileSystemRepresentation]);
  v8 = +[NSFileManager defaultManager];
  v9 = [(MBTemporaryDirectory *)self path];
  v34 = 0;
  v10 = [v8 moveItemAtPath:v9 toPath:v7 error:&v34];
  v11 = v34;

  if (v10)
  {
    v12 = [(MBTemporaryDirectory *)self path];
    v33 = v11;
    v13 = [v8 createDirectoryAtPath:v12 withIntermediateDirectories:0 attributes:0 error:&v33];
    v14 = v33;

    if (v13)
    {
      v15 = [(MBTemporaryDirectory *)self _purgeContentsAt:4294967294 rPath:v7 error:a3];
    }

    else
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = self;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to create new contents directory: %@", buf, 0x16u);
        _MBLog(@"E ", "=tmpdir= %@ failed to create new contents directory: %@", v25, v26, v27, v28, v29, v30, self);
      }

      if (a3)
      {
        v31 = v14;
        v15 = 0;
        *a3 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    v11 = v14;
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v36 = self;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to move contents aside to purge: %@", buf, 0x16u);
      _MBLog(@"E ", "=tmpdir= %@ failed to move contents aside to purge: %@", v17, v18, v19, v20, v21, v22, self);
    }

    if (a3)
    {
      v23 = v11;
      v15 = 0;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)_purgeContentsAt:(int)a3 rPath:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([&stru_1000254E0 isEqualToString:v8])
  {

    v8 = @".";
  }

  v9 = +[NSMutableArray array];
  v10 = removefile_state_alloc();
  removefile_state_set(v10, 4u, v9);
  removefile_state_set(v10, 3u, sub_100007B4C);
  v11 = removefileat(a3, [(__CFString *)v8 fileSystemRepresentation], v10, 0x301u);
  removefile_state_free(v10);
  if (v11)
  {
    v12 = [MBError errorWithErrors:v9];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = self;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=tmpdir= failed to delete %@: %@", buf, 0x16u);
      _MBLog(@"E ", "=tmpdir= failed to delete %@: %@", v14, v15, v16, v17, v18, v19, self);
    }

    if (a5)
    {
      v20 = v12;
      *a5 = v12;
    }
  }

  return v11 == 0;
}

- (void)disposeWithoutDeleting
{
  obj = self;
  objc_sync_enter(obj);
  obj->_disposed = 1;
  objc_sync_exit(obj);
}

- (BOOL)disposeWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v4->_disposed = 1;
  v5 = [(MBTemporaryDirectory *)v4 path];
  LOBYTE(a3) = [(MBTemporaryDirectory *)v4 _purgeContentsAt:4294967294 rPath:v5 error:a3];

  objc_sync_exit(v4);
  return a3;
}

- (void)dealloc
{
  if (!self->_disposed)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "=tmpdir= %@ was not disposed before dealloc", buf, 0xCu);
      _MBLog(@"E ", "=tmpdir= %@ was not disposed before dealloc", v4, v5, v6, v7, v8, v9, self);
    }
  }

  free(self->_fsRepPath);
  self->_fsRepPath = 0;
  v10.receiver = self;
  v10.super_class = MBTemporaryDirectory;
  [(MBTemporaryDirectory *)&v10 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  identifier = self->_identifier;
  return [NSString stringWithFormat:@"<%s: %@, path: %s>", Name, identifier, self->_fsRepPath];
}

@end