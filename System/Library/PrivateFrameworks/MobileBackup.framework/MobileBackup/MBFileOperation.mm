@interface MBFileOperation
+ (BOOL)clone:(int)clone sourceRpath:(id)rpath destinationBasePath:(id)path destinationBaseFD:(int)d destinationRpath:(id)destinationRpath error:(id *)error;
+ (BOOL)closeFD:(int)d path:(id)path error:(id *)error;
+ (BOOL)createDirectories:(int)directories destinationBasePath:(id)path destinationRpath:(id)rpath permissions:(unsigned __int16)permissions error:(id *)error;
+ (BOOL)crossVolumeCopyFrom:(const char *)from toDestination:(const char *)destination shouldDeleteSource:(BOOL)source error:(id *)error;
+ (BOOL)crossVolumeMoveFrom:(id)from intoDir:(id)dir toFileNamed:(id)named error:(id *)error;
+ (BOOL)exists:(BOOL *)exists atBasePath:(id)path baseFD:(int)d rpath:(id)rpath error:(id *)error;
+ (BOOL)hardlink:(int)hardlink sourceRpath:(id)rpath destinationBasePath:(id)path destinationBaseFD:(int)d destinationRpath:(id)destinationRpath error:(id *)error;
+ (BOOL)openFD:(int *)d baseFD:(int)fD rpath:(id)rpath flags:(int)flags error:(id *)error;
+ (BOOL)openFD:(int *)d path:(id)path flags:(int)flags error:(id *)error;
+ (BOOL)unlink:(int)unlink targetBasePath:(id)path targetRpath:(id)rpath error:(id *)error;
+ (id)createPathInDirectory:(id)directory fileName:(id)name;
+ (id)symbolicLinkTargetWithPath:(id)path error:(id *)error;
+ (id)symbolicLinkTargetWithPathFSR:(const char *)r error:(id *)error;
@end

@implementation MBFileOperation

+ (BOOL)openFD:(int *)d baseFD:(int)fD rpath:(id)rpath flags:(int)flags error:(id *)error
{
  rpathCopy = rpath;
  if (!d)
  {
    __assert_rtn("+[MBFileOperation openFD:baseFD:rpath:flags:error:]", "MBFileOperation.m", 22, "fd");
  }

  if (fD == -1)
  {
    __assert_rtn("+[MBFileOperation openFD:baseFD:rpath:flags:error:]", "MBFileOperation.m", 23, "baseFD != -1");
  }

  v12 = rpathCopy;
  if (!rpathCopy)
  {
    __assert_rtn("+[MBFileOperation openFD:baseFD:rpath:flags:error:]", "MBFileOperation.m", 24, "rpath");
  }

  if (!flags)
  {
    __assert_rtn("+[MBFileOperation openFD:baseFD:rpath:flags:error:]", "MBFileOperation.m", 25, "flags");
  }

  v13 = openat(fD, [rpathCopy fileSystemRepresentation], flags);
  v14 = v13;
  if (v13 < 0)
  {
    v15 = __error();
    if (error)
    {
      *error = [MBError errorWithErrno:"errorWithErrno:path:format:" path:*v15 format:?];
    }
  }

  else
  {
    *d = v13;
  }

  return v14 >= 0;
}

+ (BOOL)openFD:(int *)d path:(id)path flags:(int)flags error:(id *)error
{
  pathCopy = path;
  if (!d)
  {
    __assert_rtn("+[MBFileOperation openFD:path:flags:error:]", "MBFileOperation.m", 39, "fd");
  }

  v10 = pathCopy;
  if (!pathCopy)
  {
    __assert_rtn("+[MBFileOperation openFD:path:flags:error:]", "MBFileOperation.m", 40, "path");
  }

  if (!flags)
  {
    __assert_rtn("+[MBFileOperation openFD:path:flags:error:]", "MBFileOperation.m", 41, "flags");
  }

  v11 = open([pathCopy fileSystemRepresentation], flags);
  v12 = v11;
  if (v11 < 0)
  {
    v13 = __error();
    if (error)
    {
      *error = [MBError errorWithErrno:"errorWithErrno:path:format:" path:*v13 format:?];
    }
  }

  else
  {
    *d = v11;
  }

  return v12 >= 0;
}

+ (BOOL)closeFD:(int)d path:(id)path error:(id *)error
{
  pathCopy = path;
  if (d == -1)
  {
    __assert_rtn("+[MBFileOperation closeFD:path:error:]", "MBFileOperation.m", 55, "fd != -1");
  }

  v8 = pathCopy;
  v9 = close(d);
  if (v9)
  {
    v10 = __error();
    if (error)
    {
      *error = [MBError errorWithErrno:"errorWithErrno:path:format:" path:*v10 format:?];
    }
  }

  return v9 == 0;
}

+ (BOOL)exists:(BOOL *)exists atBasePath:(id)path baseFD:(int)d rpath:(id)rpath error:(id *)error
{
  pathCopy = path;
  rpathCopy = rpath;
  if (!exists)
  {
    __assert_rtn("+[MBFileOperation exists:atBasePath:baseFD:rpath:error:]", "MBFileOperation.m", 67, "existsOut");
  }

  if (!pathCopy)
  {
    __assert_rtn("+[MBFileOperation exists:atBasePath:baseFD:rpath:error:]", "MBFileOperation.m", 68, "basePath");
  }

  if (d == -1)
  {
    __assert_rtn("+[MBFileOperation exists:atBasePath:baseFD:rpath:error:]", "MBFileOperation.m", 69, "baseFD != -1");
  }

  v13 = rpathCopy;
  if (!rpathCopy)
  {
    __assert_rtn("+[MBFileOperation exists:atBasePath:baseFD:rpath:error:]", "MBFileOperation.m", 70, "rpath");
  }

  if (faccessat(d, [rpathCopy fileSystemRepresentation], 0, 32))
  {
    v14 = *__error();
    if (v14 == 2)
    {
      *exists = 0;
      LOBYTE(error) = 1;
    }

    else if (error)
    {
      v15 = [pathCopy stringByAppendingPathComponent:v13];
      *error = [MBError errorWithErrno:v14 path:v15 format:@"faccessat() failure %d", v14];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
    *exists = 1;
  }

  return error;
}

+ (BOOL)hardlink:(int)hardlink sourceRpath:(id)rpath destinationBasePath:(id)path destinationBaseFD:(int)d destinationRpath:(id)destinationRpath error:(id *)error
{
  rpathCopy = rpath;
  pathCopy = path;
  destinationRpathCopy = destinationRpath;
  if (hardlink == -1)
  {
    __assert_rtn("+[MBFileOperation hardlink:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 113, "sourceBaseFD != -1");
  }

  if (!rpathCopy)
  {
    __assert_rtn("+[MBFileOperation hardlink:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 114, "sourceRpath");
  }

  if (!pathCopy)
  {
    __assert_rtn("+[MBFileOperation hardlink:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 115, "destinationBasePath");
  }

  if (d == -1)
  {
    __assert_rtn("+[MBFileOperation hardlink:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 116, "destinationBaseFD != -1");
  }

  v16 = destinationRpathCopy;
  if (!destinationRpathCopy)
  {
    __assert_rtn("+[MBFileOperation hardlink:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 117, "destinationRpath");
  }

  v17 = linkat(hardlink, [rpathCopy fileSystemRepresentation], d, objc_msgSend(destinationRpathCopy, "fileSystemRepresentation"), 0);
  v18 = v17;
  if (error && v17)
  {
    v19 = *__error();
    v20 = [pathCopy stringByAppendingPathComponent:v16];
    *error = [MBError errorWithErrno:v19 path:v20 format:@"linkat() failure %d", v19];
  }

  return v18 == 0;
}

+ (BOOL)clone:(int)clone sourceRpath:(id)rpath destinationBasePath:(id)path destinationBaseFD:(int)d destinationRpath:(id)destinationRpath error:(id *)error
{
  rpathCopy = rpath;
  pathCopy = path;
  destinationRpathCopy = destinationRpath;
  if (clone == -1)
  {
    __assert_rtn("+[MBFileOperation clone:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 133, "sourceBaseFD != -1");
  }

  if (!rpathCopy)
  {
    __assert_rtn("+[MBFileOperation clone:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 134, "sourceRpath");
  }

  if (!pathCopy)
  {
    __assert_rtn("+[MBFileOperation clone:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 135, "destinationBasePath");
  }

  if (d == -1)
  {
    __assert_rtn("+[MBFileOperation clone:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 136, "destinationBaseFD != -1");
  }

  v16 = destinationRpathCopy;
  if (!destinationRpathCopy)
  {
    __assert_rtn("+[MBFileOperation clone:sourceRpath:destinationBasePath:destinationBaseFD:destinationRpath:error:]", "MBFileOperation.m", 137, "destinationRpath");
  }

  v17 = clonefileat(clone, [rpathCopy fileSystemRepresentation], d, objc_msgSend(destinationRpathCopy, "fileSystemRepresentation"), 0);
  v18 = v17;
  if (error && v17)
  {
    v19 = *__error();
    v20 = [pathCopy stringByAppendingPathComponent:v16];
    *error = [MBError errorWithErrno:v19 path:v20 format:@"clonefileat() failure %d", v19];
  }

  return v18 == 0;
}

+ (BOOL)createDirectories:(int)directories destinationBasePath:(id)path destinationRpath:(id)rpath permissions:(unsigned __int16)permissions error:(id *)error
{
  permissionsCopy = permissions;
  pathCopy = path;
  rpathCopy = rpath;
  if (directories == 1)
  {
    __assert_rtn("+[MBFileOperation createDirectories:destinationBasePath:destinationRpath:permissions:error:]", "MBFileOperation.m", 153, "destinationBaseFD != 1");
  }

  if (!pathCopy)
  {
    __assert_rtn("+[MBFileOperation createDirectories:destinationBasePath:destinationRpath:permissions:error:]", "MBFileOperation.m", 154, "destinationBasePath");
  }

  v13 = rpathCopy;
  if (!rpathCopy)
  {
    __assert_rtn("+[MBFileOperation createDirectories:destinationBasePath:destinationRpath:permissions:error:]", "MBFileOperation.m", 155, "destinationRpath");
  }

  if (!permissionsCopy)
  {
    __assert_rtn("+[MBFileOperation createDirectories:destinationBasePath:destinationRpath:permissions:error:]", "MBFileOperation.m", 156, "permissions");
  }

  v14 = mkpathat_np(directories, [rpathCopy fileSystemRepresentation], permissionsCopy);
  v15 = v14;
  if (v14 && v14 != 17 && error)
  {
    v16 = [pathCopy stringByAppendingPathComponent:v13];
    *error = [MBError errorWithErrno:v15 path:v16 format:@"mkpathat_np() failure %d", v15];
  }

  if (v15)
  {
    v17 = v15 == 17;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;

  return v18;
}

+ (BOOL)unlink:(int)unlink targetBasePath:(id)path targetRpath:(id)rpath error:(id *)error
{
  pathCopy = path;
  rpathCopy = rpath;
  if (unlink == 1)
  {
    __assert_rtn("+[MBFileOperation unlink:targetBasePath:targetRpath:error:]", "MBFileOperation.m", 172, "targetBaseFD != 1");
  }

  v11 = rpathCopy;
  if (!rpathCopy)
  {
    __assert_rtn("+[MBFileOperation unlink:targetBasePath:targetRpath:error:]", "MBFileOperation.m", 173, "targetRpath");
  }

  v12 = unlinkat(unlink, [rpathCopy fileSystemRepresentation], 0);
  v13 = v12;
  if (error && v12)
  {
    v14 = *__error();
    v15 = [pathCopy stringByAppendingPathComponent:v11];
    *error = [MBError errorWithErrno:v14 path:v15 format:@"unlinkat() failure %d", v14];
  }

  return v13 == 0;
}

+ (id)createPathInDirectory:(id)directory fileName:(id)name
{
  directoryCopy = directory;
  nameCopy = name;
  if (!directoryCopy)
  {
    __assert_rtn("+[MBFileOperation createPathInDirectory:fileName:]", "MBFileOperation.m", 189, "parentDir");
  }

  v7 = nameCopy;
  if (qword_100421AA0 != -1)
  {
    dispatch_once(&qword_100421AA0, &stru_1003C1D10);
  }

  fileSystemRepresentation = [directoryCopy fileSystemRepresentation];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10020FF20;
  v26 = sub_10020FF30;
  v27 = 0;
  v9 = qword_100421A98;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020FF38;
  block[3] = &unk_1003C1D38;
  v21 = fileSystemRepresentation;
  v10 = directoryCopy;
  v18 = v10;
  v11 = v7;
  v19 = v11;
  v20 = &v22;
  dispatch_sync(v9, block);
  v12 = v23[5];
  if (!v12)
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[MBFileOperation createPathInDirectory:fileName:]");
    [v15 handleFailureInFunction:v16 file:@"MBFileOperation.m" lineNumber:218 description:{@"Unable to create temporary path in: %@", v10}];

    v12 = v23[5];
  }

  v13 = v12;

  _Block_object_dispose(&v22, 8);

  return v13;
}

+ (BOOL)crossVolumeCopyFrom:(const char *)from toDestination:(const char *)destination shouldDeleteSource:(BOOL)source error:(id *)error
{
  if (!from)
  {
    __assert_rtn("+[MBFileOperation crossVolumeCopyFrom:toDestination:shouldDeleteSource:error:]", "MBFileOperation.m", 239, "src");
  }

  if (!destination)
  {
    __assert_rtn("+[MBFileOperation crossVolumeCopyFrom:toDestination:shouldDeleteSource:error:]", "MBFileOperation.m", 240, "dst");
  }

  if (!error)
  {
    __assert_rtn("+[MBFileOperation crossVolumeCopyFrom:toDestination:shouldDeleteSource:error:]", "MBFileOperation.m", 241, "error");
  }

  if (source)
  {
    v9 = 1179662;
  }

  else
  {
    v9 = 131086;
  }

  v10 = copyfile_state_alloc();
  v11 = copyfile(from, destination, v10, v9);
  v12 = *__error();
  copyfile_state_free(v10);
  if (v11)
  {
    v13 = v12 == 17;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (!v13)
  {
    v15 = [NSString mb_stringWithFileSystemRepresentation:from];
    *error = [MBError posixErrorWithPath:v15 format:@"copyfile failed"];

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      fromCopy = from;
      v20 = 2080;
      destinationCopy = destination;
      v22 = 1024;
      v23 = v11;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "copyfile(%s, %s) failed (%d): %{errno}d", buf, 0x22u);
      _MBLog();
    }
  }

  return v14;
}

+ (BOOL)crossVolumeMoveFrom:(id)from intoDir:(id)dir toFileNamed:(id)named error:(id *)error
{
  fromCopy = from;
  dirCopy = dir;
  namedCopy = named;
  if (!fromCopy)
  {
    __assert_rtn("+[MBFileOperation crossVolumeMoveFrom:intoDir:toFileNamed:error:]", "MBFileOperation.m", 262, "srcFilePath");
  }

  if (!dirCopy)
  {
    __assert_rtn("+[MBFileOperation crossVolumeMoveFrom:intoDir:toFileNamed:error:]", "MBFileOperation.m", 263, "parentDir");
  }

  v13 = namedCopy;
  if (!namedCopy)
  {
    __assert_rtn("+[MBFileOperation crossVolumeMoveFrom:intoDir:toFileNamed:error:]", "MBFileOperation.m", 264, "fileName");
  }

  if (!error)
  {
    __assert_rtn("+[MBFileOperation crossVolumeMoveFrom:intoDir:toFileNamed:error:]", "MBFileOperation.m", 265, "error");
  }

  v14 = [dirCopy stringByAppendingPathComponent:@"cross_volume_copy"];
  v15 = [self createPathInDirectory:v14 fileName:0];

  fileSystemRepresentation = [fromCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [v15 fileSystemRepresentation];
  if ([self crossVolumeCopyFrom:fileSystemRepresentation toDestination:fileSystemRepresentation2 shouldDeleteSource:1 error:error])
  {
    v18 = [self createPathInDirectory:dirCopy fileName:v13];
    fileSystemRepresentation3 = [v18 fileSystemRepresentation];
    v20 = renamex_np(fileSystemRepresentation2, fileSystemRepresentation3, 4u);
    v21 = v20 == 0;
    if (v20)
    {
      v27 = *__error();
      v22 = [NSString stringWithUTF8String:fileSystemRepresentation];
      *error = [MBError errorWithErrno:v27 path:v22 format:@"renamex_np() from %s to %s failed", fileSystemRepresentation, fileSystemRepresentation3];
    }
  }

  else
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *error;
      *buf = 136315650;
      v29 = fileSystemRepresentation;
      v30 = 2080;
      v31 = fileSystemRepresentation2;
      v32 = 2112;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "could not copy across volumes from %s to %s: %@", buf, 0x20u);
      v26 = *error;
      _MBLog();
    }

    v21 = 0;
  }

  return v21;
}

+ (id)symbolicLinkTargetWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  fileSystemRepresentation = [path fileSystemRepresentation];

  return [self symbolicLinkTargetWithPathFSR:fileSystemRepresentation error:error];
}

+ (id)symbolicLinkTargetWithPathFSR:(const char *)r error:(id *)error
{
  v7 = readlink(r, v17, 0x400uLL);
  if (v7 < 0)
  {
    if (*__error() == 2 || *__error() == 22)
    {
      if (!error)
      {
        goto LABEL_14;
      }

      v12 = [self description];
      v13 = 4;
    }

    else
    {
      if (!error)
      {
        goto LABEL_14;
      }

      v12 = [self description];
      v13 = 101;
    }

    *error = [MBError posixErrorWithCode:v13 path:v12 format:@"readlink error"];

    goto LABEL_14;
  }

  v8 = v7;
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 stringWithFileSystemRepresentation:v17 length:v8];

  if (v10)
  {
    goto LABEL_15;
  }

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    rCopy = r;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to convert filesystem representation %s", buf, 0xCu);
    _MBLog();
  }

  if (error)
  {
    [MBError errorWithCode:7 format:@"Failed to convert filesystem representation"];
    *error = v10 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v10 = 0;
LABEL_15:

  return v10;
}

@end