@interface MBApp
+ (BOOL)_unzipPlaceholderDomainZipFile:(id)file intoDirectory:(id)directory error:(id *)error;
+ (BOOL)unzipPlaceholderDomainZipFile:(id)file intoDirectory:(id)directory error:(id *)error;
+ (id)appWithPropertyList:(id)list;
+ (id)safeHarborWithPath:(id)path;
+ (void)_addContainer:(id)container toArray:(id)array visited:(id)visited;
- (BOOL)isAppUpdating;
- (BOOL)isPlaceholder;
- (BOOL)isSystemApp;
- (NSArray)containers;
- (NSArray)groups;
- (NSArray)plugins;
- (NSString)entitlementsRelativePath;
- (id)_placeholderDomainRootedInDirectory:(id)directory;
- (id)archivePlaceholderDomainWithPersonaIdentifier:(id)identifier intoDirectory:(id)directory error:(id *)error;
- (id)domain;
@end

@implementation MBApp

+ (BOOL)unzipPlaceholderDomainZipFile:(id)file intoDirectory:(id)directory error:(id *)error
{
  fileCopy = file;
  directoryCopy = directory;
  if (!error)
  {
    __assert_rtn("+[MBApp(Archiving) unzipPlaceholderDomainZipFile:intoDirectory:error:]", "MBApp+Archiving.m", 19, "outError");
  }

  v10 = directoryCopy;
  v11 = +[NSFileManager defaultManager];
  lastPathComponent = [v10 lastPathComponent];
  v13 = [lastPathComponent stringByAppendingPathExtension:@"unzipping"];

  stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];
  v15 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v13];

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v37 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Placeholder: temporary placeholder extraction directory: %@", buf, 0xCu);
    v30 = v15;
    _MBLog();
  }

  if ([v11 fileExistsAtPath:v15] && (objc_msgSend(v11, "removeItemAtPath:error:", v15, error) & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v26 = *error;
    *buf = 138412546;
    v37 = v15;
    v38 = 2112;
    v39 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Placeholder: Unable to remove existing temporary placeholder extraction directory: %@: %@", buf, 0x16u);
    v32 = *error;
    goto LABEL_20;
  }

  if (([v11 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:{error, v30}] & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v25 = *error;
    *buf = 138412546;
    v37 = v15;
    v38 = 2112;
    v39 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Placeholder: Unable to create temporary placeholder extraction directory: %@: %@", buf, 0x16u);
    v31 = *error;
LABEL_20:
    _MBLog();
    goto LABEL_21;
  }

  if (([self _unzipPlaceholderDomainZipFile:fileCopy intoDirectory:v15 error:error] & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = *error;
      *buf = 138412546;
      v37 = v15;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Placeholder: Unable to unzip placeholder: %@: %@", buf, 0x16u);
      v33 = *error;
      goto LABEL_20;
    }

LABEL_21:

    v23 = 0;
    goto LABEL_22;
  }

  if ([v11 fileExistsAtPath:v10] && (objc_msgSend(v11, "removeItemAtPath:error:", v10, error) & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v29 = *error;
    *buf = 138412546;
    v37 = v10;
    v38 = 2112;
    v39 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Placeholder: Unable to remove existing placeholder directory: %@: %@", buf, 0x16u);
    v34 = *error;
    goto LABEL_20;
  }

  fileSystemRepresentation = [v15 fileSystemRepresentation];
  fileSystemRepresentation2 = [v10 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v19);
  if (v20)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *__error();
      *buf = 138412802;
      v37 = v15;
      v38 = 2112;
      v39 = v10;
      v40 = 1024;
      v41 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Placeholder: unable to rename %@ -> %@: %{errno}d", buf, 0x1Cu);
      v35 = *__error();
      _MBLog();
    }

    [MBError posixErrorWithCode:*__error() path:v10 format:@"%@ -> %@", v15, v10];
    *error = v23 = 0;
  }

  else
  {
    v23 = 1;
  }

LABEL_22:

  return v23;
}

+ (BOOL)_unzipPlaceholderDomainZipFile:(id)file intoDirectory:(id)directory error:(id *)error
{
  fileCopy = file;
  directoryCopy = directory;
  if (!error)
  {
    __assert_rtn("+[MBApp(Archiving) _unzipPlaceholderDomainZipFile:intoDirectory:error:]", "MBApp+Archiving.m", 65, "outError");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = open([fileCopy fileSystemRepresentation], 0);
  if (v10 < 0)
  {
    [MBError posixErrorWithCode:*__error() path:fileCopy format:@"Unable to open zip file"];
    *error = v24 = 0;
    goto LABEL_21;
  }

  v42 = v10;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_1001AEFD4;
  v58 = sub_1001AEFE4;
  v59 = 0;
  v40 = dispatch_semaphore_create(0);
  v11 = [SZExtractor alloc];
  v65 = SZExtractorOptionsDenyInvalidSymlinks;
  v66 = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  v13 = [v11 initWithPath:directoryCopy options:v12];

  if (!v13)
  {
    v31 = [MBError errorWithDomain:@"MBErrorDomain" code:0 path:directoryCopy format:@"Unable to init SZExtractor"];
    v32 = v55[5];
    v55[5] = v31;

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = v55[5];
      LODWORD(v62) = 138412290;
      *(&v62 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Placeholder: %@", &v62, 0xCu);
      v38 = v55[5];
      _MBLog();
    }

LABEL_31:

    v36 = +[NSNull null];
    objc_exception_throw(v36);
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1001AEFEC;
  v51[3] = &unk_1003C0C30;
  v53 = &v54;
  v14 = v40;
  v52 = v14;
  [v13 prepareForExtraction:v51];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (v55[5])
  {
    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v35 = v55[5];
      LODWORD(v62) = 138412290;
      *(&v62 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Placeholder: Unable to prepare SZExtractor: %@", &v62, 0xCu);
      v39 = v55[5];
      _MBLog();
    }

    goto LABEL_31;
  }

  v15 = [[NSMutableData alloc] initWithCapacity:0x4000];
  [v15 setLength:0x4000];
  v16 = v15;
  mutableBytes = [v15 mutableBytes];
  do
  {
    v18 = objc_autoreleasePoolPush();
    *&v62 = 0;
    *(&v62 + 1) = &v62;
    v63 = 0x2020000000;
    v64 = 0;
    v19 = read(v42, mutableBytes, 0x4000uLL);
    if (v19)
    {
      if (v19 == -1)
      {
        v26 = [MBError errorWithDomain:@"MBErrorDomain" code:0 path:fileCopy format:@"Unable to read bytes from zip file"];
        v27 = v55[5];
        v55[5] = v26;

        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = v55[5];
          *buf = 138412290;
          v61 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Placeholder: %@", buf, 0xCu);
          v37 = v55[5];
          _MBLog();
        }

LABEL_26:
        v30 = +[NSNull null];
        objc_exception_throw(v30);
      }

      [v15 setLength:v19];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1001AF050;
      v47[3] = &unk_1003C0C58;
      v49 = &v54;
      v50 = &v62;
      v20 = v14;
      v48 = v20;
      [v13 supplyBytes:v15 withCompletionBlock:v47];
      dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
      [v15 setLength:0x4000];
      if (v55[5])
      {
        goto LABEL_26;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    _Block_object_dispose(&v62, 8);
    objc_autoreleasePoolPop(v18);
  }

  while ((v21 & 1) != 0);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1001AF15C;
  v43[3] = &unk_1003C0C80;
  v44 = fileCopy;
  v46 = &v54;
  v22 = v14;
  v45 = v22;
  [v13 finishStreamWithCompletionBlock:v43];
  dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);

  close(v42);
  if (v40)
  {
  }

  if (v15)
  {
  }

  v23 = v55[5];
  if (v23)
  {
    *error = v23;
    v24 = v55[5] == 0;
  }

  else
  {
    v24 = 1;
  }

  _Block_object_dispose(&v54, 8);

LABEL_21:
  objc_sync_exit(selfCopy);

  return v24;
}

- (id)_placeholderDomainRootedInDirectory:(id)directory
{
  directoryCopy = directory;
  bundleID = [(MBApp *)self bundleID];
  v6 = [bundleID stringByAppendingPathExtension:@"ipa"];

  bundleID2 = [(MBApp *)self bundleID];
  volumeMountPoint = [(MBContainer *)self volumeMountPoint];
  v9 = [MBDomain appPlaceholderDomainWithIdentifier:bundleID2 volumeMountPoint:volumeMountPoint rootPath:directoryCopy];

  v10 = [NSSet setWithObject:v6];
  [v9 setRelativePathsToBackupAndRestore:v10];

  [v9 setShouldDigest:0];

  return v9;
}

- (id)archivePlaceholderDomainWithPersonaIdentifier:(id)identifier intoDirectory:(id)directory error:(id *)error
{
  identifierCopy = identifier;
  directoryCopy = directory;
  if (!error)
  {
    __assert_rtn("[MBApp(Archiving) archivePlaceholderDomainWithPersonaIdentifier:intoDirectory:error:]", "MBApp+Archiving.m", 171, "outError");
  }

  v10 = directoryCopy;
  bundleID = [(MBApp *)self bundleID];
  if (!bundleID)
  {
    __assert_rtn("[MBApp(Archiving) archivePlaceholderDomainWithPersonaIdentifier:intoDirectory:error:]", "MBApp+Archiving.m", 174, "bundleID");
  }

  v12 = bundleID;
  bundleDir = [(MBApp *)self bundleDir];
  if (!bundleDir)
  {
    __assert_rtn("[MBApp(Archiving) archivePlaceholderDomainWithPersonaIdentifier:intoDirectory:error:]", "MBApp+Archiving.m", 176, "bundleDir");
  }

  v14 = bundleDir;
  stringByStandardizingPath = [bundleDir stringByStandardizingPath];
  if (!mkdir([v10 fileSystemRepresentation], 0x1C0u) || *__error() == 17)
  {
    errorCopy = error;
    memset(&v58, 0, sizeof(v58));
    if (stat([stringByStandardizingPath fileSystemRepresentation], &v58))
    {
      tv_sec = 0;
    }

    else
    {
      tv_sec = v58.st_mtimespec.tv_sec;
    }

    v17 = [v10 stringByAppendingPathComponent:v12];
    v18 = [v17 stringByAppendingPathExtension:@"ipa"];
    v19 = stat([v18 fileSystemRepresentation], &v58);
    v20 = v58.st_mtimespec.tv_sec;
    if (v19)
    {
      v20 = 0;
    }

    if (!tv_sec || v20 == tv_sec)
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.tv_sec) = 138412290;
        *(&buf.tv_sec + 4) = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Placeholder: %@ does not need updating", &buf, 0xCu);
        _MBLog();
      }

      v28 = [(MBApp *)self _placeholderDomainRootedInDirectory:v10];
      goto LABEL_44;
    }

    v45 = stringByStandardizingPath;
    v21 = +[NSFileManager defaultManager];
    v22 = [v17 stringByAppendingPathExtension:@"zip"];
    v48 = v21;
    v46 = identifierCopy;
    v44 = v17;
    if ([v21 fileExistsAtPath:v22])
    {
      v50 = 0;
      v23 = [v21 removeItemAtPath:v22 error:&v50];
      v24 = v50;
      v25 = MBGetDefaultLog();
      v26 = v25;
      if ((v23 & 1) == 0)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.tv_sec) = 138412290;
          *(&buf.tv_sec + 4) = v24;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Placeholder: Failed to remove existing legacy zip placeholder: %@", &buf, 0xCu);
          _MBLog();
        }

        v38 = v24;
        v28 = 0;
        *errorCopy = v24;
        v32 = v24;
        v17 = v44;
        goto LABEL_42;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.tv_sec) = 138412290;
        *(&buf.tv_sec + 4) = v22;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Placeholder: Removed legacy zip placeholder %@", &buf, 0xCu);
        v42 = v22;
        _MBLog();
      }
    }

    else
    {
      v24 = 0;
    }

    if (![v48 fileExistsAtPath:{v18, v42}])
    {
LABEL_28:
      v43 = [NSURL fileURLWithPath:v18 isDirectory:0];
      v33 = MICreateSerializedPlaceholderForInstalledApplication();
      v32 = v24;

      if (v33)
      {
        buf.tv_sec = tv_sec;
        buf.tv_usec = 0;
        v56 = tv_sec;
        v57 = 0;
        utimes([v18 fileSystemRepresentation], &buf);
        v34 = MBGetDefaultLog();
        v17 = v44;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *v51 = 138412546;
          v52 = v12;
          v53 = 2112;
          v54 = v18;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Placeholder: Successfully archived %@ -> %@", v51, 0x16u);
          _MBLog();
        }

        v28 = [(MBApp *)self _placeholderDomainRootedInDirectory:v10];
      }

      else
      {
        v35 = MBGetDefaultLog();
        v17 = v44;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.tv_sec) = 138543362;
          *(&buf.tv_sec + 4) = v12;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Placeholder: Unable to create placeholder for %{public}@", &buf, 0xCu);
          _MBLog();
        }

        v36 = v32;
        v28 = 0;
        *errorCopy = v32;
      }

      v37 = v48;
      goto LABEL_43;
    }

    v49 = v24;
    v31 = [v48 removeItemAtPath:v18 error:&v49];
    v32 = v49;

    if (v31)
    {
      v24 = v32;
      goto LABEL_28;
    }

    v39 = MBGetDefaultLog();
    v17 = v44;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.tv_sec) = 138412290;
      *(&buf.tv_sec + 4) = v32;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Placeholder: failed to remove existing stale placeholder: %@", &buf, 0xCu);
      _MBLog();
    }

    v40 = v32;
    v28 = 0;
    *errorCopy = v32;
LABEL_42:
    v37 = v48;
LABEL_43:

    identifierCopy = v46;
    stringByStandardizingPath = v45;
LABEL_44:

    goto LABEL_45;
  }

  v29 = *__error();
  v30 = MBGetDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v58.st_dev = 138543618;
    *&v58.st_mode = v10;
    WORD2(v58.st_ino) = 1024;
    *(&v58.st_ino + 6) = v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Placeholder: mkdir failed at %{public}@: %{errno}d", &v58, 0x12u);
    _MBLog();
  }

  [MBError errorWithErrno:v29 path:v10 format:@"Placeholder: mkdir failed"];
  *error = v28 = 0;
LABEL_45:

  return v28;
}

+ (id)appWithPropertyList:(id)list
{
  listCopy = list;
  v4 = [(MBContainer *)[MBApp alloc] initWithPropertyList:listCopy volumeMountPoint:0];

  return v4;
}

+ (id)safeHarborWithPath:(id)path
{
  v3 = [path stringByAppendingPathComponent:kMBSafeHarborInfoDirName];
  v4 = [v3 stringByAppendingPathComponent:kMBSafeHarborInfoPlistFilename];

  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];
  if (v5)
  {
    v6 = [MBApp appWithPropertyList:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)entitlementsRelativePath
{
  bundleDir = [(MBApp *)self bundleDir];
  v3 = sub_100261B78(bundleDir);

  return v3;
}

- (NSArray)groups
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"GroupContainers", 0];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MBAppGroup alloc];
        volumeMountPoint = [(MBContainer *)self volumeMountPoint];
        v12 = [(MBContainer *)v10 initWithPropertyList:v9 volumeMountPoint:volumeMountPoint];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)plugins
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"Plugins", 0];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MBAppPlugin alloc];
        volumeMountPoint = [(MBContainer *)self volumeMountPoint];
        v12 = [(MBContainer *)v10 initWithPropertyList:v9 volumeMountPoint:volumeMountPoint];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (void)_addContainer:(id)container toArray:(id)array visited:(id)visited
{
  containerCopy = container;
  arrayCopy = array;
  visitedCopy = visited;
  identifier = [containerCopy identifier];
  if (([visitedCopy containsObject:identifier] & 1) == 0)
  {
    [arrayCopy addObject:containerCopy];
    [visitedCopy addObject:identifier];
  }
}

- (NSArray)containers
{
  v3 = objc_opt_new();
  v4 = +[NSMutableArray array];
  [v4 addObject:self];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  groups = [(MBApp *)self groups];
  v6 = [groups countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(groups);
        }

        [objc_opt_class() _addContainer:*(*(&v30 + 1) + 8 * i) toArray:v4 visited:v3];
      }

      v7 = [groups countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(MBApp *)self plugins];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = *v27;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * j);
        [objc_opt_class() _addContainer:v13 toArray:v4 visited:v3];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        groups2 = [v13 groups];
        v15 = [groups2 countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v23;
          do
          {
            for (k = 0; k != v16; k = k + 1)
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(groups2);
              }

              [objc_opt_class() _addContainer:*(*(&v22 + 1) + 8 * k) toArray:v4 visited:v3];
            }

            v16 = [groups2 countByEnumeratingWithState:&v22 objects:v34 count:16];
          }

          while (v16);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v11);
  }

  return v4;
}

- (BOOL)isAppUpdating
{
  v2 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"IsUpdating"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPlaceholder
{
  v2 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"IsPlaceholder"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSystemApp
{
  v2 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"ApplicationType"];
  if ([v2 isEqualToString:@"System"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"Internal"];
  }

  return v3;
}

- (id)domain
{
  bundleID = [(MBApp *)self bundleID];
  volumeMountPoint = [(MBContainer *)self volumeMountPoint];
  containerDir = [(MBContainer *)self containerDir];
  v6 = [MBDomain appDomainWithIdentifier:bundleID volumeMountPoint:volumeMountPoint rootPath:containerDir];

  v7 = sub_10026242C();
  [v6 setRelativePathsToBackupAndRestore:v7];

  v8 = sub_100262480();
  [v6 setRelativePathsNotToBackup:v8];

  v9 = sub_1002624D4();
  [v6 setRelativePathsNotToRestore:v9];

  [v6 setShouldDigest:0];

  return v6;
}

@end