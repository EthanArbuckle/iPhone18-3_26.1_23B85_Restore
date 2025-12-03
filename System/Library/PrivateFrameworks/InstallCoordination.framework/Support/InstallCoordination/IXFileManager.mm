@interface IXFileManager
+ (id)defaultManager;
- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error;
- (BOOL)_removeACLAtPath:(const char *)path isDir:(BOOL)dir error:(id *)error;
- (BOOL)_traverseDirectory:(id)directory ignoringFTSErrors:(BOOL)errors error:(id *)error withBlock:(id)block;
- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth;
- (BOOL)createSymbolicLinkAtURL:(id)l withDestinationURL:(id)rL error:(id *)error;
- (BOOL)dataProtectionClassOfItemAtURL:(id)l class:(int *)class error:(id *)error;
- (BOOL)itemDoesNotExistAtURL:(id)l;
- (BOOL)releaseSandboxExtensionToken:(int64_t)token error:(id *)error;
- (BOOL)setPermissions:(unsigned __int16)permissions onAllChildrenOfPath:(id)path error:(id *)error;
- (BOOL)setPermissionsOfItemAtURL:(id)l toMode:(unsigned __int16)mode error:(id *)error;
- (BOOL)standardizeOwnershipAtURL:(id)l toUID:(unsigned int)d toGID:(unsigned int)iD error:(id *)error;
- (id)_realPathForURL:(id)l allowNonExistentPathComponents:(BOOL)components;
- (id)_realPathWhatExistsInPath:(id)path;
- (id)createTemporaryExtractionDirectoryWithError:(id *)error;
- (id)debugDescriptionOfItemAtURL:(id)l;
- (id)destinationOfSymbolicLinkAtURL:(id)l error:(id *)error;
- (id)issueSandboxExtensionForURL:(id)l withExtensionClass:(const char *)class error:(id *)error;
- (id)realPathForURL:(id)l ifChildOfURL:(id)rL;
- (int64_t)consumeSandboxExtension:(id)extension error:(id *)error;
- (unint64_t)_diskUsageForDirectoryURL:(id)l;
- (unint64_t)diskUsageForURL:(id)l;
@end

@implementation IXFileManager

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000406DC;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121DC8 != -1)
  {
    dispatch_once(&qword_100121DC8, block);
  }

  v2 = qword_100121DC0;

  return v2;
}

- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  if (!missing)
  {
    memset(&v34, 0, sizeof(v34));
    if (lstat([lCopy fileSystemRepresentation], &v34))
    {
      v12 = *__error();
      v13 = v12 == 2;
      if (v12 == 2)
      {
        v14 = 0;
        if (error)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v27 = *__error();
        v28 = __error();
        strerror(*v28);
        v14 = sub_1000405FC("[IXFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 83, NSPOSIXErrorDomain, v27, 0, 0, @"stat of %@ failed: %s", v29, lCopy);
        if (error)
        {
LABEL_20:
          if (!v13)
          {
            v30 = v14;
            v13 = 0;
            *error = v14;
          }
        }
      }

LABEL_22:
      v22 = v14;
      goto LABEL_23;
    }
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [rLCopy fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v17);
  if (v18)
  {
    if (*__error() == 18)
    {
      v33 = 0;
      v19 = [(IXFileManager *)self _copyItemAtURL:lCopy toURL:rLCopy failIfSrcMissing:1 error:&v33];
      v20 = v33;
      v14 = v20;
      if (v19)
      {
        v32 = v20;
        v21 = [(IXFileManager *)self removeItemAtURL:lCopy error:&v32];
        v22 = v32;

        if ((v21 & 1) == 0)
        {
          v23 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10009EF34(lCopy, v22, v23);
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v24 = *__error();
      v25 = __error();
      strerror(*v25);
      v14 = sub_1000405FC("[IXFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 98, NSPOSIXErrorDomain, v24, 0, 0, @"rename of %@ to %@ failed: %s", v26, lCopy);
    }

    v13 = 0;
    if (error)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v22 = 0;
LABEL_15:
  v13 = 1;
LABEL_23:

  return v13;
}

- (id)createTemporaryExtractionDirectoryWithError:(id *)error
{
  v5 = +[IXGlobalConfiguration sharedInstance];
  v15 = 0;
  v6 = [v5 extractedInstallableStagingDirectory:&v15];
  v7 = v15;

  if (v6)
  {
    v14 = v7;
    v8 = [(IXFileManager *)self createDirectoryAtURL:v6 withIntermediateDirectories:0 mode:493 error:&v14];
    v9 = v14;

    if (v8)
    {
      v13 = v9;
      v10 = [(IXFileManager *)self createTemporaryDirectoryInDirectoryURL:v6 error:&v13];
      v7 = v13;

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 0;
      v7 = v9;
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v10)
  {
    v11 = v7;
    *error = v7;
  }

LABEL_10:

  return v10;
}

- (BOOL)_traverseDirectory:(id)directory ignoringFTSErrors:(BOOL)errors error:(id *)error withBlock:(id)block
{
  blockCopy = block;
  fileSystemRepresentation = [directory fileSystemRepresentation];
  v34[0] = fileSystemRepresentation;
  v34[1] = 0;
  v11 = fts_open(v34, 84, 0);
  if (!v11)
  {
    v22 = *__error();
    v23 = __error();
    strerror(*v23);
    sub_1000405FC("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 184, NSPOSIXErrorDomain, v22, 0, 0, @"fts_open failed for %s with error %s", v24, fileSystemRepresentation);
    v15 = LABEL_22:;
    goto LABEL_23;
  }

  v12 = v11;
  v13 = fts_read(v11);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    do
    {
      v16 = v15;
      v17 = v14;
      while (1)
      {
        fts_info = v17->fts_info;
        v19 = fts_info > 0xA;
        v20 = (1 << fts_info) & 0x490;
        if (v19 || v20 == 0)
        {
          break;
        }

        if (!errors)
        {
          fts_errno = v14->fts_errno;
          v26 = fts_errno;
          strerror(fts_errno);
          v15 = sub_1000405FC("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 196, NSPOSIXErrorDomain, v26, 0, 0, @"Error for path %s: %s", v27, fileSystemRepresentation);

          LOBYTE(v28) = 0;
          goto LABEL_19;
        }

        v17 = fts_read(v12);
        if (!v17)
        {
          LOBYTE(v28) = 1;
          goto LABEL_19;
        }
      }

      v28 = blockCopy[2](blockCopy);
      v15 = v15;

      if (!v28)
      {
        break;
      }

      v14 = fts_read(v12);
    }

    while (v14);
LABEL_19:
    if (fts_close(v12))
    {
      if (v15)
      {
LABEL_23:
        LOBYTE(v28) = 0;
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (fts_close(v12))
    {
LABEL_21:
      v29 = *__error();
      v30 = __error();
      strerror(*v30);
      sub_1000405FC("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 213, NSPOSIXErrorDomain, v29, 0, 0, @"fts_close failed for %s with error %s", v31, fileSystemRepresentation);
      goto LABEL_22;
    }

    LOBYTE(v28) = 0;
    v15 = 0;
  }

LABEL_24:
  if (error && (v28 & 1) == 0)
  {
    v32 = v15;
    *error = v15;
  }

  return v28;
}

- (BOOL)_removeACLAtPath:(const char *)path isDir:(BOOL)dir error:(id *)error
{
  dirCopy = dir;
  v8 = acl_init(0);
  if (v8)
  {
    v9 = v8;
    if (dirCopy)
    {
      v10 = opendir(path);
      if (v10)
      {
        v11 = v10;
        v12 = dirfd(v10);
        if (v12 < 0)
        {
          v49 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_10009F234();
          }

          v50 = *__error();
          v51 = __error();
          strerror(*v51);
          v18 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", 248, NSPOSIXErrorDomain, v50, 0, 0, @"dirfd of %s failed: %s", v52, path);
          v19 = 248;
        }

        else
        {
          if (!acl_set_fd(v12, v9))
          {
            v27 = 0;
            v28 = 1;
            goto LABEL_32;
          }

          v13 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10009F174();
          }

          v14 = *__error();
          v15 = __error();
          strerror(*v15);
          v18 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", 253, NSPOSIXErrorDomain, v14, 0, 0, @"Failed to set ACL on dir %s: %s", v16, path);
          v19 = 253;
        }

        v27 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", v19, @"IXErrorDomain", 1uLL, v18, 0, @"Failed to remove ACL", v17, v55);

        v28 = 0;
LABEL_32:
        closedir(v11);
        goto LABEL_33;
      }

      v38 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10009F2F4();
      }

      v39 = *__error();
      v40 = __error();
      strerror(*v40);
      v43 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", 242, NSPOSIXErrorDomain, v39, 0, 0, @"opendir of %s failed: %s", v41, path);
      v44 = 242;
    }

    else
    {
      v29 = open(path, 2097154);
      if ((v29 & 0x80000000) == 0)
      {
        v30 = v29;
        v31 = acl_set_fd(v29, v9);
        v28 = v31 == 0;
        if (v31)
        {
          v32 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10009EFF4();
          }

          v33 = *__error();
          v34 = __error();
          strerror(*v34);
          v36 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", 264, NSPOSIXErrorDomain, v33, 0, 0, @"Failed to set ACL on %s: %s", v35, path);
          v27 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", 264, @"IXErrorDomain", 1uLL, v36, 0, @"Failed to remove ACL", v37, v57);
        }

        else
        {
          v27 = 0;
        }

        close(v30);
LABEL_33:
        acl_free(v9);
        if (!error)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      v45 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_10009F0B4();
      }

      v46 = *__error();
      v47 = __error();
      strerror(*v47);
      v43 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", 259, NSPOSIXErrorDomain, v46, 0, 0, @"open of %s failed: %s", v48, path);
      v44 = 259;
    }

    v27 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", v44, @"IXErrorDomain", 1uLL, v43, 0, @"Failed to remove ACL", v42, v58);

    v28 = 0;
    goto LABEL_33;
  }

  v20 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10009F3B4(NSPOSIXErrorDomain);
  }

  v21 = *__error();
  v22 = __error();
  v23 = strerror(*v22);
  v25 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", 235, NSPOSIXErrorDomain, v21, 0, 0, @"acl_init() failed: %s", v24, v23);
  v27 = sub_1000405FC("[IXFileManager _removeACLAtPath:isDir:error:]", 235, @"IXErrorDomain", 1uLL, v25, 0, @"Failed to remove ACL", v26, v56);

  v28 = 0;
  if (error)
  {
LABEL_34:
    if (!v28)
    {
      v53 = v27;
      *error = v27;
    }
  }

LABEL_36:

  return v28;
}

- (BOOL)setPermissions:(unsigned __int16)permissions onAllChildrenOfPath:(id)path error:(id *)error
{
  v11 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004142C;
  v9[3] = &unk_1001025B8;
  permissionsCopy = permissions;
  v6 = [(IXFileManager *)self _traverseDirectory:path ignoringFTSErrors:0 error:&v11 withBlock:v9];
  v7 = v11;
  if (error && !v6)
  {
    v7 = v7;
    *error = v7;
  }

  return v6;
}

- (BOOL)standardizeOwnershipAtURL:(id)l toUID:(unsigned int)d toGID:(unsigned int)iD error:(id *)error
{
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000415C0;
  v10[3] = &unk_1001025D8;
  dCopy = d;
  iDCopy = iD;
  v7 = [(IXFileManager *)self _traverseDirectory:l ignoringFTSErrors:0 error:&v13 withBlock:v10];
  v8 = v13;
  if (error && !v7)
  {
    v8 = v8;
    *error = v8;
  }

  return v7;
}

- (BOOL)createSymbolicLinkAtURL:(id)l withDestinationURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v9 = symlink([rLCopy fileSystemRepresentation], objc_msgSend(lCopy, "fileSystemRepresentation"));
  if (v9)
  {
    v10 = *__error();
    fileSystemRepresentation = [rLCopy fileSystemRepresentation];
    [lCopy fileSystemRepresentation];
    v12 = __error();
    strerror(*v12);
    v14 = sub_1000405FC("[IXFileManager createSymbolicLinkAtURL:withDestinationURL:error:]", 433, NSPOSIXErrorDomain, v10, 0, 0, @"Could not create symlink containing %s at %s: %s", v13, fileSystemRepresentation);
    if (error)
    {
      v14 = v14;
      *error = v14;
    }
  }

  else
  {
    v14 = 0;
  }

  return v9 == 0;
}

- (id)destinationOfSymbolicLinkAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = readlink([lCopy fileSystemRepresentation], v15, 0x400uLL);
  if (v6 < 0)
  {
    v10 = *__error();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v12 = __error();
    strerror(*v12);
    v9 = sub_1000405FC("[IXFileManager destinationOfSymbolicLinkAtURL:error:]", 453, NSPOSIXErrorDomain, v10, 0, 0, @"Could not readlink %s : %s", v13, fileSystemRepresentation);
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15[v6] = 0;
    v7 = [NSString stringWithFileSystemRepresentation:v15 length:v6];
    v8 = [NSURL fileURLWithPath:v7];

    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

- (BOOL)itemDoesNotExistAtURL:(id)l
{
  lCopy = l;
  memset(&v9, 0, sizeof(v9));
  if (!lstat([lCopy fileSystemRepresentation], &v9))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (*__error() != 2)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __error();
      v7 = strerror(*v6);
      *buf = 136315650;
      v11 = "[IXFileManager itemDoesNotExistAtURL:]";
      v12 = 2112;
      v13 = lCopy;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to determine if %@ exists: %s", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

- (id)debugDescriptionOfItemAtURL:(id)l
{
  memset(&v10, 0, sizeof(v10));
  if (lstat([l fileSystemRepresentation], &v10))
  {
    v3 = __error();
    v6 = strerror(*v3);
    [NSString stringWithFormat:@"<lstat error: %s>", v6, v7, v8, v9, *&v10.st_dev, v10.st_ino];
  }

  else
  {
    [NSString stringWithFormat:@"<uid:%u gid:%u mode:0%ho flags:0x%x>", v10.st_uid, v10.st_gid, v10.st_mode, v10.st_flags, *&v10.st_dev, v10.st_ino];
  }
  v4 = ;

  return v4;
}

- (BOOL)dataProtectionClassOfItemAtURL:(id)l class:(int *)class error:(id *)error
{
  lCopy = l;
  v8 = open([lCopy fileSystemRepresentation], 256);
  v9 = v8;
  if (v8 < 0)
  {
    v13 = *__error();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v15 = __error();
    strerror(*v15);
    sub_1000405FC("[IXFileManager dataProtectionClassOfItemAtURL:class:error:]", 513, NSPOSIXErrorDomain, v13, 0, 0, @"Failed to open %s : %s", v16, fileSystemRepresentation);
  }

  else
  {
    v10 = fcntl(v8, 63);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      *class = v10;
      v12 = 1;
LABEL_9:
      close(v9);
      v23 = v12;
      goto LABEL_10;
    }

    v17 = *__error();
    fileSystemRepresentation2 = [lCopy fileSystemRepresentation];
    v19 = __error();
    strerror(*v19);
    sub_1000405FC("[IXFileManager dataProtectionClassOfItemAtURL:class:error:]", 519, NSPOSIXErrorDomain, v17, 0, 0, @"Failed to getclass of file %s: %s", v20, fileSystemRepresentation2);
  }
  v21 = ;
  v11 = v21;
  if (error)
  {
    v22 = v21;
    *error = v11;
  }

  v12 = 0;
  v23 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v23;
}

- (BOOL)setPermissionsOfItemAtURL:(id)l toMode:(unsigned __int16)mode error:(id *)error
{
  fileSystemRepresentation = [l fileSystemRepresentation];
  v8 = lchmod(fileSystemRepresentation, mode);
  if (v8)
  {
    v9 = *__error();
    v10 = __error();
    strerror(*v10);
    v12 = sub_1000405FC("[IXFileManager setPermissionsOfItemAtURL:toMode:error:]", 582, NSPOSIXErrorDomain, v9, 0, 0, @"Failed to lchmod %s to mode 0%o : %s", v11, fileSystemRepresentation);
    if (error)
    {
      v12 = v12;
      *error = v12;
    }
  }

  return v8 == 0;
}

- (id)_realPathWhatExistsInPath:(id)path
{
  pathComponents = [path pathComponents];
  v5 = [pathComponents count];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v7 = [pathComponents subarrayWithRange:{0, v6 + 1}];
      v8 = [NSURL fileURLWithPathComponents:v7];
      v9 = 0;
      if ([(IXFileManager *)self itemExistsAtURL:v8])
      {
        v10 = [(IXFileManager *)self _realPathForURL:v8 allowNonExistentPathComponents:0];
        if (v10)
        {
          v11 = [pathComponents subarrayWithRange:{v6 + 1, objc_msgSend(pathComponents, "count") - (v6 + 1)}];
          v12 = [NSString pathWithComponents:v11];
          v13 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            path = [v10 path];
            *buf = 136315650;
            v17 = "[IXFileManager _realPathWhatExistsInPath:]";
            v18 = 2112;
            v19 = path;
            v20 = 2112;
            v21 = v12;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Realpathed %@ ; appending non-existing components %@", buf, 0x20u);
          }

          v9 = [v10 URLByAppendingPathComponent:v12 isDirectory:0];
        }

        else
        {
          v9 = 0;
        }
      }

      if (v9)
      {
        break;
      }

      --v6;
    }

    while (v6);
  }

  return v9;
}

- (id)_realPathForURL:(id)l allowNonExistentPathComponents:(BOOL)components
{
  componentsCopy = components;
  bzero(v24, 0x400uLL);
  path = [l path];
  if (realpath_DARWIN_EXTSN([path fileSystemRepresentation], v24))
  {
    v8 = [NSURL fileURLWithFileSystemRepresentation:v24 isDirectory:0 relativeToURL:0];
LABEL_11:
    v14 = v8;
    goto LABEL_12;
  }

  if (*__error() == 2 && componentsCopy)
  {
    v8 = [(IXFileManager *)self _realPathWhatExistsInPath:path];
    goto LABEL_11;
  }

  v10 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    fileSystemRepresentation = [path fileSystemRepresentation];
    v12 = __error();
    v13 = strerror(*v12);
    v16 = 136315906;
    v17 = "[IXFileManager _realPathForURL:allowNonExistentPathComponents:]";
    v18 = 2080;
    v19 = fileSystemRepresentation;
    v20 = 2080;
    v21 = v13;
    v22 = 2080;
    v23 = v24;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to realpath %s : %s at %s", &v16, 0x2Au);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth
{
  symlinkCopy = symlink;
  v8 = symlinkCopy;
  if (symlinkCopy)
  {
    endingDepthCopy = endingDepth;
    [symlinkCopy pathComponents];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      depthCopy2 = depth;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([v15 isEqualToString:@".."])
          {
            --depthCopy2;
          }

          else if (([v15 isEqualToString:&stru_100105BA0] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @".") & 1) == 0)
          {
            depthCopy2 += [v15 isEqualToString:@"/"] ^ 1;
          }

          if (depthCopy2 < depth)
          {

            goto LABEL_18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      depthCopy2 = depth;
    }

    if (endingDepthCopy)
    {
      *endingDepthCopy = depthCopy2;
    }

    v16 = 1;
  }

  else
  {
    v9 = 0;
LABEL_18:
    v16 = 0;
  }

  return v16;
}

- (id)realPathForURL:(id)l ifChildOfURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  bzero(v102, 0x400uLL);
  if (!lCopy || !rLCopy)
  {
    v23 = sub_1000031B0(off_100121958);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 136315650;
    v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v90 = 2112;
    v91 = rLCopy;
    v92 = 2112;
    v93 = lCopy;
    v28 = "%s: The base path %@ and/or suspicious path %@ were nil";
    v29 = v23;
    v30 = 32;
    goto LABEL_14;
  }

  path = [rLCopy path];
  v9 = [path hasPrefix:@"/private/"];

  if (v9)
  {
    path2 = [rLCopy path];
    v11 = [path2 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v12 = [NSURL fileURLWithPath:v11];

    rLCopy = v12;
  }

  path3 = [lCopy path];
  v14 = [path3 hasPrefix:@"/private/"];

  if (v14)
  {
    path4 = [lCopy path];
    v16 = [path4 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v17 = [NSURL fileURLWithPath:v16];

    lCopy = v17;
  }

  path5 = [lCopy path];
  path6 = [rLCopy path];
  v20 = [path5 hasPrefix:path6];

  if ((v20 & 1) == 0)
  {
    v23 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      path7 = [lCopy path];
      path8 = [rLCopy path];
      *buf = 136315650;
      v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v90 = 2112;
      v91 = path7;
      v92 = 2112;
      v93 = path8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: supiscious path %@ does not contain base path %@ as a prefix", buf, 0x20u);

LABEL_22:
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  pathComponents = [lCopy pathComponents];
  v22 = [pathComponents containsObject:@".."];

  if (v22)
  {
    v23 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      path7 = [lCopy path];
      *buf = 136315394;
      v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v90 = 2112;
      v91 = path7;
      v25 = "%s: The suspicious path %@ contains '..' paths, which are invalid";
LABEL_11:
      v26 = v23;
      v27 = 22;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_22;
    }

LABEL_23:

    stringByDeletingLastPathComponent = 0;
    path9 = 0;
LABEL_24:
    v35 = 0;
LABEL_25:
    v36 = 0;
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  v32 = readlink([lCopy fileSystemRepresentation], v102, 0x400uLL);
  if (v32 < 0)
  {
    if (*__error() == 22 || *__error() == 2)
    {
      path9 = [lCopy path];
      stringByDeletingLastPathComponent = 0;
      goto LABEL_35;
    }

    v23 = sub_1000031B0(off_100121958);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v50 = __error();
    v51 = strerror(*v50);
    *buf = 136315394;
    v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v90 = 2080;
    v91 = v51;
    v28 = "%s: Readlink failed: %s";
    v29 = v23;
    v30 = 22;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
    goto LABEL_23;
  }

  if (v102[0] == 47)
  {
    v23 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      path7 = [lCopy path];
      *buf = 136315650;
      v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v90 = 2112;
      v91 = path7;
      v92 = 2080;
      v93 = v102;
      v25 = "%s: Rejecting %@ -> %s, as absolute symlinks are not allowed";
      v26 = v23;
      v27 = 32;
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v87 = 0;
  path10 = [rLCopy path];
  v41 = [(IXFileManager *)self _validateSymlink:path10 withStartingDepth:0 andEndingDepth:&v87];

  if ((v41 & 1) == 0)
  {
    v23 = sub_1000031B0(off_100121958);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    path7 = [rLCopy path];
    *buf = 136315394;
    v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v90 = 2112;
    v91 = path7;
    v25 = "%s: Failed to retrieve depth of %@";
    goto LABEL_11;
  }

  path11 = [lCopy path];
  path12 = [rLCopy path];
  v44 = [path11 substringFromIndex:{objc_msgSend(path12, "length")}];

  stringByDeletingLastPathComponent = [v44 stringByDeletingLastPathComponent];

  v45 = [NSString stringWithFileSystemRepresentation:v102 length:v32];
  path9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v45];

  if (![(IXFileManager *)self _validateSymlink:path9 withStartingDepth:v87 andEndingDepth:0])
  {
    v48 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      path13 = [lCopy path];
      path14 = [rLCopy path];
      *buf = 136315906;
      v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v90 = 2112;
      v91 = path13;
      v92 = 2112;
      v93 = path9;
      v94 = 2112;
      v95 = path14;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ -> %@, as it is points outside or to the base %@", buf, 0x2Au);

      goto LABEL_50;
    }

LABEL_51:

    goto LABEL_24;
  }

LABEL_35:
  v46 = [(IXFileManager *)self _realPathForURL:rLCopy allowNonExistentPathComponents:0];
  if (!v46)
  {
    v48 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      path13 = [rLCopy path];
      *buf = 136315394;
      v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v90 = 2112;
      v91 = path13;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: Failed to retrieve realpath for base path %@ ", buf, 0x16u);
LABEL_50:

      goto LABEL_51;
    }

    goto LABEL_51;
  }

  v35 = v46;
  v47 = [(IXFileManager *)self _realPathForURL:lCopy allowNonExistentPathComponents:1];
  if (!v47)
  {
    v52 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      path15 = [lCopy path];
      *buf = 136315394;
      v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v90 = 2112;
      v91 = path15;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%s: Failed to retrieve realpath for suspicious path %@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v36 = v47;
  if (v32 < 0)
  {
    pathComponents2 = [v47 pathComponents];
    pathComponents3 = [v35 pathComponents];
    v56 = [pathComponents3 count];
    v86 = pathComponents2;
    v57 = [pathComponents2 count];
    if (v57 < 2 || v56 <= 1)
    {
      v63 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        [lCopy path];
        v68 = loga = v63;
        path16 = [rLCopy path];
        path17 = [v36 path];
        path18 = [v35 path];
        *buf = 136316162;
        v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
        v90 = 2112;
        v91 = v68;
        v92 = 2112;
        v93 = path16;
        v94 = 2112;
        v95 = path17;
        v96 = 2112;
        v97 = path18;
        _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ because real component counts don't make sense (reals %@ ; %@)", buf, 0x34u);

        v63 = loga;
      }
    }

    else
    {
      v58 = v57;
      v59 = 1;
      v60 = [pathComponents3 objectAtIndexedSubscript:1];
      if ([v60 isEqualToString:@"private"])
      {
        v59 = 2;
      }

      [v86 objectAtIndexedSubscript:1];
      v61 = v80 = v56;
      if ([v61 isEqualToString:@"private"])
      {
        v62 = 2;
      }

      else
      {
        v62 = 1;
      }

      if (&v80[-v59] <= &v58[-v62])
      {
        if (v80 <= v59)
        {
LABEL_67:

          goto LABEL_38;
        }

        while (1)
        {
          v72 = [pathComponents3 objectAtIndexedSubscript:v59];
          v73 = [v86 objectAtIndexedSubscript:v62];
          logb = [v72 isEqualToString:v73];

          if ((logb & 1) == 0)
          {
            break;
          }

          ++v59;
          ++v62;
          if (v80 == v59)
          {
            goto LABEL_67;
          }
        }

        v63 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          logc = [lCopy path];
          path19 = [rLCopy path];
          path20 = [v36 path];
          path21 = [v35 path];
          v74 = [pathComponents3 objectAtIndexedSubscript:v59];
          v75 = [v86 objectAtIndexedSubscript:v62];
          *buf = 136316674;
          v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
          v90 = 2112;
          v91 = logc;
          v92 = 2112;
          v93 = path19;
          v94 = 2112;
          v95 = path20;
          v96 = 2112;
          v97 = path21;
          v98 = 2112;
          v99 = v74;
          v100 = 2112;
          v101 = v75;
          v76 = v75;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ (reals %@ ; %@) because components diverge at %@ != %@", buf, 0x48u);
        }
      }

      else
      {
        v63 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          log = [lCopy path];
          path22 = [rLCopy path];
          path23 = [v36 path];
          path24 = [v35 path];
          *buf = 136316162;
          v89 = "[IXFileManager realPathForURL:ifChildOfURL:]";
          v90 = 2112;
          v91 = log;
          v92 = 2112;
          v93 = path22;
          v94 = 2112;
          v95 = path23;
          v96 = 2112;
          v97 = path24;
          v67 = path24;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ because base component count is greater than child component count (reals %@ ; %@)", buf, 0x34u);
        }
      }
    }

    goto LABEL_26;
  }

LABEL_38:
  v36 = v36;
  v37 = v36;
LABEL_27:
  v38 = v37;

  return v38;
}

- (unint64_t)_diskUsageForDirectoryURL:(id)l
{
  lCopy = l;
  v4 = [NSMutableSet setWithCapacity:0];
  v5 = [NSMutableArray arrayWithCapacity:1];
  v56 = 0;
  v58 = 0;
  v55 = 0xA200000900000005;
  v57 = 0x500000002;
  v6 = malloc_type_malloc(0x8000uLL, 0x223271D7uLL);
  v47 = lCopy;
  path = [lCopy path];
  v46 = path;
  if (path)
  {
    [v5 addObject:path];
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
      v61 = 2112;
      v62 = v47;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get path to url %@", buf, 0x16u);
    }
  }

  if ([v5 count])
  {
    v53 = 0;
    v52 = v4;
    v50 = v5;
    v48 = v6;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v5 objectAtIndex:0];
      [v5 removeObjectAtIndex:0];
      v54 = v10;
      v51 = open([v10 fileSystemRepresentation], 1048832);
      if (v51 < 0)
      {
        v39 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = __error();
          v41 = strerror(*v40);
          *buf = 136315650;
          v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
          v61 = 2112;
          v62 = v54;
          v63 = 2080;
          v64 = v41;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s: Failed to open directory %@ : %s", buf, 0x20u);
        }
      }

      else
      {
        v49 = v9;
        v11 = 0;
LABEL_10:
        v6 = v48;
        while (1)
        {
          v12 = getattrlistbulk(v51, &v55, v48, 0x8000uLL, 0);
          if (v12 == -1)
          {
            break;
          }

          v13 = v12;
          if (!v12)
          {
            goto LABEL_60;
          }

          if (v12 >= 1)
          {
            while (1)
            {
              v15 = *v6;
              v14 = v6[1];
              v16 = v6[4];
              if ((v14 & 0x20000000) != 0)
              {
                if (v6[6])
                {
                  v29 = sub_1000031B0(off_100121958);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = __error();
                    v31 = strerror(*v30);
                    *buf = 136315906;
                    v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v61 = 2080;
                    v62 = v31;
                    v63 = 2048;
                    v64 = v11;
                    v65 = 2112;
                    v66 = v54;
                    v32 = v29;
                    v33 = "%s: Got error %s while processing entry %llu in %@";
                    v34 = 42;
                    goto LABEL_42;
                  }

LABEL_51:

                  goto LABEL_52;
                }

                v17 = v6 + 7;
                if ((v14 & 1) == 0)
                {
LABEL_16:
                  v18 = 0;
                  v19 = 0xFFFFFFFFLL;
                  if ((v14 & 8) != 0)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_30;
                }
              }

              else
              {
                v17 = v6 + 6;
                if ((v14 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              v35 = v17[1];
              v18 = v17 + *v17;
              v17 += 2;
              v19 = (v35 - 1);
              if ((v14 & 8) != 0)
              {
LABEL_17:
                v20 = *v17++;
                v21 = v20 == 2;
                if ((v14 & 0x2000000) != 0)
                {
                  goto LABEL_18;
                }

                goto LABEL_31;
              }

LABEL_30:
              v21 = 0;
              if ((v14 & 0x2000000) != 0)
              {
LABEL_18:
                v23 = *v17;
                v17 += 2;
                v22 = v23;
                if (v21)
                {
                  goto LABEL_32;
                }

                goto LABEL_19;
              }

LABEL_31:
              v22 = 0;
              if (v21)
              {
LABEL_32:
                if ((v6[3] & 2) != 0 && !*v17)
                {
                  v29 = sub_1000031B0(off_100121958);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v61 = 2112;
                    v62 = v54;
                    v63 = 2080;
                    v64 = v18;
                    _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s: skipping empty directory at %@/%s", buf, 0x20u);
                  }

                  goto LABEL_51;
                }

                if (!v18)
                {
                  v29 = sub_1000031B0(off_100121958);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v61 = 2048;
                    v62 = v11;
                    v63 = 2112;
                    v64 = v54;
                    v32 = v29;
                    v33 = "%s: Failed to get name for directory item %llu in %@; not counting its children";
                    v34 = 32;
LABEL_42:
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, v34);
                  }

                  goto LABEL_51;
                }

                v26 = objc_autoreleasePoolPush();
                v36 = [NSString stringWithFileSystemRepresentation:v18 length:v19];
                v27 = [v54 stringByAppendingPathComponent:v36];

                if (v27)
                {
                  v37 = v50;
                  goto LABEL_44;
                }

                v28 = sub_1000031B0(off_100121958);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                  v61 = 2080;
                  v62 = v18;
                  v63 = 2112;
                  v64 = v54;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: Failed to create path to child directory by appending %s to %@", buf, 0x20u);
                }

LABEL_47:

LABEL_48:
                objc_autoreleasePoolPop(v26);
                goto LABEL_52;
              }

LABEL_19:
              if (v16)
              {
                v38 = *v17++;
                v24 = v38 == 1;
                if ((v16 & 4) != 0)
                {
LABEL_21:
                  v25 = *v17;
                  if (!v24)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_39;
                }
              }

              else
              {
                v24 = 0;
                if ((v16 & 4) != 0)
                {
                  goto LABEL_21;
                }
              }

              v25 = 0;
              if (!v24)
              {
LABEL_22:
                v26 = objc_autoreleasePoolPush();
                v27 = [NSNumber numberWithUnsignedLongLong:v22];
                if ([v52 containsObject:v27])
                {
                  v28 = sub_1000031B0(off_100121958);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v61 = 2112;
                    v62 = v54;
                    v63 = 2080;
                    v64 = v18;
                    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s: Skipping hardlinked file at %@/%s", buf, 0x20u);
                  }

                  goto LABEL_47;
                }

                v53 += v25;
                v37 = v52;
LABEL_44:
                [v37 addObject:v27];
                goto LABEL_48;
              }

LABEL_39:
              v53 += v25;
LABEL_52:
              v6 = (v6 + v15);
              ++v11;
              if (!--v13)
              {
                goto LABEL_10;
              }
            }
          }
        }

        v42 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = __error();
          v44 = strerror(*v43);
          *buf = 136315906;
          v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
          v61 = 2048;
          v62 = v11;
          v63 = 2112;
          v64 = v54;
          v65 = 2080;
          v66 = v44;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s: getattrlistbulk on entry %llu in %@ returned error %s", buf, 0x2Au);
        }

LABEL_60:
        close(v51);
        v4 = v52;
        v5 = v50;
        v9 = v49;
      }

      objc_autoreleasePoolPop(v9);
      if (![v5 count])
      {
        goto LABEL_64;
      }
    }
  }

  v53 = 0;
LABEL_64:
  free(v6);

  return v53;
}

- (unint64_t)diskUsageForURL:(id)l
{
  lCopy = l;
  memset(&v11, 0, sizeof(v11));
  if (lstat([lCopy fileSystemRepresentation], &v11))
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      fileSystemRepresentation = [lCopy fileSystemRepresentation];
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136315650;
      v13 = "[IXFileManager diskUsageForURL:]";
      v14 = 2080;
      v15 = fileSystemRepresentation;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to stat %s : %s", buf, 0x20u);
    }

    v9 = 0;
  }

  else if ((v11.st_mode & 0xF000) == 0x4000)
  {
    v9 = [(IXFileManager *)self _diskUsageForDirectoryURL:lCopy];
  }

  else
  {
    v9 = v11.st_blocks << 9;
  }

  return v9;
}

- (id)issueSandboxExtensionForURL:(id)l withExtensionClass:(const char *)class error:(id *)error
{
  lCopy = l;
  [lCopy fileSystemRepresentation];
  v7 = sandbox_extension_issue_file();
  if (v7)
  {
    v8 = [[NSString alloc] initWithBytesNoCopy:v7 length:strlen(v7) encoding:4 freeWhenDone:1];
    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *__error();
    path = [lCopy path];
    strerror(v10);
    v9 = sub_1000405FC("[IXFileManager issueSandboxExtensionForURL:withExtensionClass:error:]", 1071, NSPOSIXErrorDomain, v10, 0, 0, @"sandbox_extension_issue_file for path %@ failed: %s", v12, path);

    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v13 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

- (int64_t)consumeSandboxExtension:(id)extension error:(id *)error
{
  uTF8String = [extension UTF8String];
  v6 = sandbox_extension_consume();
  if (v6 < 0)
  {
    v9 = *__error();
    v10 = v9;
    strerror(v9);
    v8 = sub_1000405FC("[IXFileManager consumeSandboxExtension:error:]", 1094, NSPOSIXErrorDomain, v10, 0, 0, @"sandbox_extension_consume for %s failed: %s.", v11, uTF8String);
    if (error)
    {
      v8 = v8;
      *error = v8;
    }

    v7 = -1;
  }

  else
  {
    v7 = v6;
    v8 = 0;
  }

  return v7;
}

- (BOOL)releaseSandboxExtensionToken:(int64_t)token error:(id *)error
{
  v6 = sandbox_extension_release();
  if (v6)
  {
    v7 = *__error();
    v8 = v7;
    strerror(v7);
    v10 = sub_1000405FC("[IXFileManager releaseSandboxExtensionToken:error:]", 1115, NSPOSIXErrorDomain, v8, 0, 0, @"sandbox_extension_release for %lld failed: %s.", v9, token);
    if (error)
    {
      v10 = v10;
      *error = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v6 == 0;
}

@end