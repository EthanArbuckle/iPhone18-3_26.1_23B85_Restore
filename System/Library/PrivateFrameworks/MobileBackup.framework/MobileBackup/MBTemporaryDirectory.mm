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
    __assert_rtn("+[MBTemporaryDirectory sharedTemporaryDirectoryForTest:error:]", "MBTemporaryDirectory.m", 123, "testName.length");
  }

  if (qword_100421B48 != -1)
  {
    dispatch_once(&qword_100421B48, &stru_1003C2528);
  }

  v6 = sub_1002526A4(qword_100421B40, v5, a4);
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
    __assert_rtn("+[MBTemporaryDirectory userTemporaryDirectoryForTest:error:]", "MBTemporaryDirectory.m", 134, "testName.length");
  }

  if (qword_100421B58 != -1)
  {
    dispatch_once(&qword_100421B58, &stru_1003C2548);
  }

  v6 = sub_1002526A4(qword_100421B50, v5, a4);
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
    __assert_rtn("+[MBTemporaryDirectory sharedTemporaryDirectoryIdentifiedBy:error:]", "MBTemporaryDirectory.m", 145, "identifier.length");
  }

  if (qword_100421B68 != -1)
  {
    dispatch_once(&qword_100421B68, &stru_1003C2568);
  }

  v6 = sub_1002526A4(qword_100421B60, v5, a4);
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
    __assert_rtn("+[MBTemporaryDirectory userTemporaryDirectoryForPersona:identifiedBy:error:]", "MBTemporaryDirectory.m", 156, "persona");
  }

  v9 = v8;
  if (![v8 length])
  {
    __assert_rtn("+[MBTemporaryDirectory userTemporaryDirectoryForPersona:identifiedBy:error:]", "MBTemporaryDirectory.m", 157, "identifier.length");
  }

  v10 = [v7 volumeMountPoint];
  v11 = [v10 stringByAppendingPathComponent:@"tmp"];
  v12 = [v11 stringByAppendingPathComponent:@"com.apple.backup"];
  v13 = [v12 fileSystemRepresentation];

  sub_100252B50(v13);
  v14 = sub_1002526A4(v13, v9, a5);
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
    __assert_rtn("+[MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:identifiedBy:error:]", "MBTemporaryDirectory.m", 171, "path");
  }

  v9 = v8;
  if (![v8 length])
  {
    __assert_rtn("+[MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:identifiedBy:error:]", "MBTemporaryDirectory.m", 172, "identifier.length");
  }

  if (!a5)
  {
    __assert_rtn("+[MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:identifiedBy:error:]", "MBTemporaryDirectory.m", 173, "error");
  }

  v10 = [MBFileSystemManager volumeMountPointForFile:v7 error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringByAppendingPathComponent:@"tmp"];
    v13 = [v12 stringByAppendingPathComponent:@"com.apple.backup"];
    v14 = [v13 fileSystemRepresentation];

    sub_100252B50(v14);
    v15 = sub_1002526A4(v14, v9, a5);
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
      v21 = v7;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= could not find mount point for %@: %@", buf, 0x16u);
      v19 = *a5;
      _MBLog();
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
    __assert_rtn("[MBTemporaryDirectory _initWithExistingFsRepPath:identifier:]", "MBTemporaryDirectory.m", 193, "fsRepPath");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBTemporaryDirectory _initWithExistingFsRepPath:identifier:]", "MBTemporaryDirectory.m", 194, "identifier");
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

  v7 = sub_100252FE0([v6 fileSystemRepresentation]);
  v8 = +[NSFileManager defaultManager];
  v9 = [(MBTemporaryDirectory *)self path];
  v22 = 0;
  v10 = [v8 moveItemAtPath:v9 toPath:v7 error:&v22];
  v11 = v22;

  if (v10)
  {
    v12 = [(MBTemporaryDirectory *)self path];
    v21 = v11;
    v13 = [v8 createDirectoryAtPath:v12 withIntermediateDirectories:0 attributes:0 error:&v21];
    v14 = v21;

    if (v13)
    {
      v15 = [(MBTemporaryDirectory *)self _purgeContentsAt:4294967294 rPath:v7 error:a3];
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = self;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to create new contents directory: %@", buf, 0x16u);
        _MBLog();
      }

      if (a3)
      {
        v19 = v14;
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
      v24 = self;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to move contents aside to purge: %@", buf, 0x16u);
      _MBLog();
    }

    if (a3)
    {
      v17 = v11;
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
  if ([&stru_1003C3430 isEqualToString:v8])
  {

    v8 = @".";
  }

  v9 = +[NSMutableArray array];
  v10 = removefile_state_alloc();
  removefile_state_set(v10, 4u, v9);
  removefile_state_set(v10, 3u, sub_100253578);
  v11 = removefileat(a3, [(__CFString *)v8 fileSystemRepresentation], v10, 0x301u);
  removefile_state_free(v10);
  if (v11)
  {
    v12 = [MBError errorWithErrors:v9];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=tmpdir= failed to delete %@: %@", buf, 0x16u);
      _MBLog();
    }

    if (a5)
    {
      v14 = v12;
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
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_disposed)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:v5 file:@"MBTemporaryDirectory.m" lineNumber:277 description:{@"TempDir: cannot be disposed multiple times %@", v5}];
  }

  v5->_disposed = 1;
  v6 = [(MBTemporaryDirectory *)v5 path];
  v7 = [(MBTemporaryDirectory *)v5 _purgeContentsAt:4294967294 rPath:v6 error:a3];

  objc_sync_exit(v5);
  return v7;
}

- (void)dealloc
{
  if (!self->_disposed)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "=tmpdir= %@ was not disposed before dealloc", buf, 0xCu);
      _MBLog();
    }
  }

  free(self->_fsRepPath);
  self->_fsRepPath = 0;
  v4.receiver = self;
  v4.super_class = MBTemporaryDirectory;
  [(MBTemporaryDirectory *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  identifier = self->_identifier;
  return [NSString stringWithFormat:@"<%s: %@, path: %s>", Name, identifier, self->_fsRepPath];
}

@end