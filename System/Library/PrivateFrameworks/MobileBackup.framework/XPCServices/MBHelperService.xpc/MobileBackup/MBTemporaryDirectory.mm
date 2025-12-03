@interface MBTemporaryDirectory
+ (id)sharedTemporaryDirectoryForTest:(id)test error:(id *)error;
+ (id)sharedTemporaryDirectoryIdentifiedBy:(id)by error:(id *)error;
+ (id)temporaryDirectoryOnSameVolumeAsPath:(id)path identifiedBy:(id)by error:(id *)error;
+ (id)userTemporaryDirectoryForPersona:(id)persona identifiedBy:(id)by error:(id *)error;
+ (id)userTemporaryDirectoryForTest:(id)test error:(id *)error;
- (BOOL)_purgeContentsAt:(int)at rPath:(id)path error:(id *)error;
- (BOOL)disposeWithError:(id *)error;
- (BOOL)purgeContentsWithError:(id *)error;
- (id)_initWithExistingFsRepPath:(char *)path identifier:(id)identifier;
- (id)description;
- (void)dealloc;
- (void)disposeWithoutDeleting;
@end

@implementation MBTemporaryDirectory

+ (id)sharedTemporaryDirectoryForTest:(id)test error:(id *)error
{
  testCopy = test;
  if (![testCopy length])
  {
    sub_100014578();
  }

  if (qword_10002A190 != -1)
  {
    sub_100014564();
  }

  v6 = sub_100006F8C(qword_10002A188, testCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:testCopy];
  }

  return v6;
}

+ (id)userTemporaryDirectoryForTest:(id)test error:(id *)error
{
  testCopy = test;
  if (![testCopy length])
  {
    sub_100014610();
  }

  if (qword_10002A1A0 != -1)
  {
    sub_1000145FC();
  }

  v6 = sub_100006F8C(qword_10002A198, testCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:testCopy];
  }

  return v6;
}

+ (id)sharedTemporaryDirectoryIdentifiedBy:(id)by error:(id *)error
{
  byCopy = by;
  if (![byCopy length])
  {
    sub_100014650();
  }

  if (qword_10002A1B0 != -1)
  {
    sub_10001463C();
  }

  v6 = sub_100006F8C(qword_10002A1A8, byCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:byCopy];
  }

  return v6;
}

+ (id)userTemporaryDirectoryForPersona:(id)persona identifiedBy:(id)by error:(id *)error
{
  personaCopy = persona;
  byCopy = by;
  if (!personaCopy)
  {
    sub_1000146A8();
  }

  v9 = byCopy;
  if (![byCopy length])
  {
    sub_10001467C();
  }

  volumeMountPoint = [personaCopy volumeMountPoint];
  v11 = [volumeMountPoint stringByAppendingPathComponent:@"tmp"];
  v12 = [v11 stringByAppendingPathComponent:@"com.apple.backup"];
  fileSystemRepresentation = [v12 fileSystemRepresentation];

  sub_100007370(fileSystemRepresentation);
  v14 = sub_100006F8C(fileSystemRepresentation, v9, error);
  if (v14)
  {
    v14 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v14 identifier:v9];
  }

  return v14;
}

+ (id)temporaryDirectoryOnSameVolumeAsPath:(id)path identifiedBy:(id)by error:(id *)error
{
  pathCopy = path;
  byCopy = by;
  if (!pathCopy)
  {
    sub_100014758();
  }

  v9 = byCopy;
  if (![byCopy length])
  {
    sub_10001472C();
  }

  if (!error)
  {
    sub_100014700();
  }

  v10 = [MBFileSystemManager volumeMountPointForFile:pathCopy error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringByAppendingPathComponent:@"tmp"];
    v13 = [v12 stringByAppendingPathComponent:@"com.apple.backup"];
    fileSystemRepresentation = [v13 fileSystemRepresentation];

    sub_100007370(fileSystemRepresentation);
    v15 = sub_100006F8C(fileSystemRepresentation, v9, error);
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
      v17 = *error;
      *buf = 138412546;
      v27 = pathCopy;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= could not find mount point for %@: %@", buf, 0x16u);
      v25 = *error;
      _MBLog(@"E ", "=tmpdir= could not find mount point for %@: %@", v18, v19, v20, v21, v22, v23, pathCopy);
    }

    v15 = 0;
  }

  return v15;
}

- (id)_initWithExistingFsRepPath:(char *)path identifier:(id)identifier
{
  identifierCopy = identifier;
  if (!path)
  {
    sub_1000147B0();
  }

  v8 = identifierCopy;
  if (!identifierCopy)
  {
    sub_100014784();
  }

  v13.receiver = self;
  v13.super_class = MBTemporaryDirectory;
  v9 = [(MBTemporaryDirectory *)&v13 init];
  if (v9)
  {
    v10 = [NSString mb_stringWithFileSystemRepresentation:path];
    path = v9->_path;
    v9->_path = v10;

    v9->_fsRepPath = path;
    objc_storeStrong(&v9->_identifier, identifier);
  }

  return v9;
}

- (BOOL)purgeContentsWithError:(id *)error
{
  path = [(MBTemporaryDirectory *)self path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  v7 = sub_10000764C([stringByDeletingLastPathComponent fileSystemRepresentation]);
  v8 = +[NSFileManager defaultManager];
  path2 = [(MBTemporaryDirectory *)self path];
  v34 = 0;
  v10 = [v8 moveItemAtPath:path2 toPath:v7 error:&v34];
  v11 = v34;

  if (v10)
  {
    path3 = [(MBTemporaryDirectory *)self path];
    v33 = v11;
    v13 = [v8 createDirectoryAtPath:path3 withIntermediateDirectories:0 attributes:0 error:&v33];
    v14 = v33;

    if (v13)
    {
      v15 = [(MBTemporaryDirectory *)self _purgeContentsAt:4294967294 rPath:v7 error:error];
    }

    else
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to create new contents directory: %@", buf, 0x16u);
        _MBLog(@"E ", "=tmpdir= %@ failed to create new contents directory: %@", v25, v26, v27, v28, v29, v30, self);
      }

      if (error)
      {
        v31 = v14;
        v15 = 0;
        *error = v14;
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
      selfCopy2 = self;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to move contents aside to purge: %@", buf, 0x16u);
      _MBLog(@"E ", "=tmpdir= %@ failed to move contents aside to purge: %@", v17, v18, v19, v20, v21, v22, self);
    }

    if (error)
    {
      v23 = v11;
      v15 = 0;
      *error = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)_purgeContentsAt:(int)at rPath:(id)path error:(id *)error
{
  pathCopy = path;
  if ([&stru_1000254E0 isEqualToString:pathCopy])
  {

    pathCopy = @".";
  }

  v9 = +[NSMutableArray array];
  v10 = removefile_state_alloc();
  removefile_state_set(v10, 4u, v9);
  removefile_state_set(v10, 3u, sub_100007B4C);
  v11 = removefileat(at, [(__CFString *)pathCopy fileSystemRepresentation], v10, 0x301u);
  removefile_state_free(v10);
  if (v11)
  {
    v12 = [MBError errorWithErrors:v9];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=tmpdir= failed to delete %@: %@", buf, 0x16u);
      _MBLog(@"E ", "=tmpdir= failed to delete %@: %@", v14, v15, v16, v17, v18, v19, self);
    }

    if (error)
    {
      v20 = v12;
      *error = v12;
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

- (BOOL)disposeWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_disposed = 1;
  path = [(MBTemporaryDirectory *)selfCopy path];
  LOBYTE(error) = [(MBTemporaryDirectory *)selfCopy _purgeContentsAt:4294967294 rPath:path error:error];

  objc_sync_exit(selfCopy);
  return error;
}

- (void)dealloc
{
  if (!self->_disposed)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
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