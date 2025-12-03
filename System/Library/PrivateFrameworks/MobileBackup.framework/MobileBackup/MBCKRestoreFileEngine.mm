@interface MBCKRestoreFileEngine
+ (void)_removeBundleIconNameKeyFrom:(id)from;
- (BOOL)_restoreLegacyZippedAppPlaceholderWithError:(id *)error;
- (BOOL)downloadWithError:(id *)error;
- (BOOL)restoreAssetWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
- (BOOL)setAttributesWithError:(id *)error;
- (BOOL)setExtendedAttributesWithError:(id *)error;
- (BOOL)setProtectionClassWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (MBCKRestoreFileEngine)initWithRestoreEngine:(id)engine file:(id)file destinationPath:(id)path shouldSetProtectionClass:(BOOL)class;
- (void)_handleStateTransition;
- (void)cleanUpAfterError:(id)error;
- (void)makeStateTransition;
- (void)setDestinationPath:(id)path;
@end

@implementation MBCKRestoreFileEngine

- (MBCKRestoreFileEngine)initWithRestoreEngine:(id)engine file:(id)file destinationPath:(id)path shouldSetProtectionClass:(BOOL)class
{
  classCopy = class;
  engineCopy = engine;
  fileCopy = file;
  pathCopy = path;
  if (!engineCopy)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 42, "engine");
  }

  v13 = pathCopy;
  ckOperationPolicy = [engineCopy ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 44, "policy");
  }

  ckOperationTracker = [engineCopy ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 46, "tracker");
  }

  cache = [engineCopy cache];
  if (!cache)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 48, "cache");
  }

  serviceManager = [engineCopy serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 50, "serviceManager");
  }

  v15 = serviceManager;
  device = [engineCopy device];
  if (!device)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 52, "device");
  }

  v17 = device;
  v41 = classCopy;
  restoreLogger = [engineCopy restoreLogger];
  obj = path;
  if (MBIsInternalInstall())
  {
    context = [engineCopy context];
    restoreMode = [context restoreMode];
    if ([restoreMode type] == 4)
    {
      [(MBCKRestoreFileEngine *)self setShouldValidateContents:0];
    }

    else
    {
      v39 = fileCopy;
      context2 = [engineCopy context];
      restoreMode2 = [context2 restoreMode];
      if ([restoreMode2 type] == 5)
      {
        v22 = 0;
      }

      else
      {
        v22 = [v39 protectionClass] == 3 || objc_msgSend(v39, "protectionClass") == 4;
      }

      [(MBCKRestoreFileEngine *)self setShouldValidateContents:v22];

      fileCopy = v39;
    }
  }

  else
  {
    [(MBCKRestoreFileEngine *)self setShouldValidateContents:0];
  }

  context3 = [engineCopy context];
  debugContext = [engineCopy debugContext];
  domainManager = [engineCopy domainManager];
  v48.receiver = self;
  v48.super_class = MBCKRestoreFileEngine;
  v26 = [(MBCKEngine *)&v48 initWithSettingsContext:context3 debugContext:debugContext domainManager:domainManager];

  if (v26)
  {
    v40 = v13;
    v27 = fileCopy;
    [(MBCKEngine *)v26 setServiceManager:v15];
    [(MBCKEngine *)v26 setCkOperationPolicy:ckOperationPolicy];
    [(MBCKEngine *)v26 setCkOperationTracker:ckOperationTracker];
    v26->_restoreType = [engineCopy restoreType];
    [(MBCKRestoreFileEngine *)v26 setShouldSetProtectionClass:v41];
    objc_storeStrong(&v26->_file, file);
    [(MBCKEngine *)v26 setCache:cache];
    [(MBCKEngine *)v26 setShouldAdvanceState:1];
    [(MBCKRestoreFileEngine *)v26 setRestoreState:1];
    [(MBCKRestoreFileEngine *)v26 setRestoreLogger:restoreLogger];
    [(MBCKEngine *)v26 setDevice:v17];
    objc_storeStrong(&v26->_destinationPath, obj);
    cache2 = [(MBCKEngine *)v26 cache];
    file = [(MBCKRestoreFileEngine *)v26 file];
    fileID = [file fileID];
    v47 = 0;
    v31 = [cache2 fetchRestoreFileStateForFileID:fileID error:&v47];
    v32 = v47;
    [(MBCKRestoreFileEngine *)v26 setRestoreState:v31];

    if (v32)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        file2 = [(MBCKRestoreFileEngine *)v26 file];
        fileID2 = [file2 fileID];
        *buf = 138412546;
        v50 = fileID2;
        v51 = 2112;
        v52 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error getting restore file state for file %@: %@", buf, 0x16u);

        file3 = [(MBCKRestoreFileEngine *)v26 file];
        fileID3 = [file3 fileID];
        _MBLog();
      }
    }

    fileCopy = v27;
    v13 = v40;
  }

  return v26;
}

- (void)cleanUpAfterError:(id)error
{
  errorCopy = error;
  if (![MBError isRetryableRestoreError:errorCopy])
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      file = [(MBCKRestoreFileEngine *)self file];
      *buf = 138412546;
      v16 = file;
      v17 = 2112;
      v18 = errorCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Non retryable restore error for %@: %@. Setting state to non-retryable failure.", buf, 0x16u);

      file2 = [(MBCKRestoreFileEngine *)self file];
      v13 = errorCopy;
      _MBLog();
    }

    [(MBCKRestoreFileEngine *)self setRestoreState:12];
    cache = [(MBCKEngine *)self cache];
    restoreState = [(MBCKRestoreFileEngine *)self restoreState];
    file3 = [(MBCKRestoreFileEngine *)self file];
    v10 = [cache setRestoreState:restoreState forFile:file3];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to set state in cache transaction: %@", buf, 0xCu);
        file2 = v10;
        _MBLog();
      }
    }
  }

  v14.receiver = self;
  v14.super_class = MBCKRestoreFileEngine;
  [(MBCKEngine *)&v14 cleanUpAfterError:errorCopy, file2, v13];
}

- (void)setDestinationPath:(id)path
{
  pathCopy = path;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = pathCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "File will restore to overridden destination %@", buf, 0xCu);
    _MBLog();
  }

  destinationPath = self->_destinationPath;
  self->_destinationPath = pathCopy;
}

- (BOOL)runWithError:(id *)error
{
  [(MBCKRestoreFileEngine *)self makeStateTransition];
  hasError = [(MBCKEngine *)self hasError];
  if (hasError)
  {
    engineError = [(MBCKEngine *)self engineError];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      file = [(MBCKRestoreFileEngine *)self file];
      *buf = 138412546;
      v13 = engineError;
      v14 = 2112;
      v15 = file;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Restore failed: %@ (%@)", buf, 0x16u);

      file2 = [(MBCKRestoreFileEngine *)self file];
      _MBLog();
    }

    [(MBCKRestoreFileEngine *)self cleanUpAfterError:engineError];
    if (error)
    {
      v9 = engineError;
      *error = engineError;
    }
  }

  return hasError ^ 1;
}

- (void)_handleStateTransition
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  restoreState = [(MBCKRestoreFileEngine *)self restoreState];
  if (restoreState <= 9)
  {
    if (restoreState <= 2)
    {
      if (restoreState == 1)
      {
        v7 = MBGetDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            file = [(MBCKRestoreFileEngine *)self file];
            *buf = 138412290;
            v37 = file;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restoring %@", buf, 0xCu);
          }

          file2 = [(MBCKRestoreFileEngine *)self file];
          _MBLog();
        }

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000FFDD8;
        v31[3] = &unk_1003BC400;
        v31[4] = self;
        [(MBCKEngine *)self performRetryablePhase:v31];
      }

      else if (restoreState == 2)
      {
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1000FFDE4;
        v30[3] = &unk_1003BC400;
        v30[4] = self;
        [(MBCKEngine *)self performRetryablePhase:v30];
      }
    }

    else
    {
      switch(restoreState)
      {
        case 3:
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000FFDF0;
          v29[3] = &unk_1003BEA40;
          v29[4] = self;
          v29[5] = &v32;
          [(MBCKEngine *)self performRetryablePhase:v29];
          break;
        case 6:
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_1000FFF54;
          v28[3] = &unk_1003BC400;
          v28[4] = self;
          [(MBCKEngine *)self performRetryablePhase:v28];
          break;
        case 9:
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1000FFF60;
          v27[3] = &unk_1003BC400;
          v27[4] = self;
          [(MBCKEngine *)self performRetryablePhase:v27];
          break;
      }
    }

    goto LABEL_39;
  }

  if (restoreState > 11)
  {
    if (restoreState == 12)
    {
      [(MBCKEngine *)self setIsFinished:1];
      restoreState2 = [(MBCKRestoreFileEngine *)self restoreState];
      file3 = [(MBCKRestoreFileEngine *)self file];
      domainName = [file3 domainName];
      file4 = [(MBCKRestoreFileEngine *)self file];
      fileID = [file4 fileID];
      v15 = [MBError errorWithCode:202 format:@"File is in non-retryable failed state:%lu, domain:%@, fileID:%@", restoreState2, domainName, fileID];
      [(MBCKEngine *)self setEngineError:v15];

      goto LABEL_39;
    }

    if (restoreState != 13)
    {
      if (restoreState != 14)
      {
        goto LABEL_39;
      }

      v4 = MBGetDefaultLog();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      v4 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        destinationPath = [(MBCKRestoreFileEngine *)self destinationPath];
        *buf = 138412290;
        v37 = destinationPath;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "File handled by restore plan %@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        destinationPath2 = [(MBCKRestoreFileEngine *)self destinationPath];
        *buf = 138412290;
        v37 = destinationPath2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "File skipped %@", buf, 0xCu);
      }

LABEL_37:

      file2 = [(MBCKRestoreFileEngine *)self destinationPath];
      _MBLog();

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  if (restoreState != 10)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        destinationPath3 = [(MBCKRestoreFileEngine *)self destinationPath];
        *buf = 138412290;
        v37 = destinationPath3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "File restored to %@", buf, 0xCu);
      }

      goto LABEL_37;
    }

LABEL_38:

    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
    goto LABEL_39;
  }

  if (![(MBCKRestoreFileEngine *)self shouldSetProtectionClass])
  {
    [(MBCKEngine *)self setIsFinished:1];
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000FFF6C;
  v26[3] = &unk_1003BC400;
  v26[4] = self;
  [(MBCKEngine *)self performRetryablePhase:v26];
LABEL_39:
  if ([(MBCKEngine *)self isFinished])
  {
    progressModel = [(MBCKEngine *)self progressModel];
    [progressModel ended];
  }

  else
  {
    if (v33[3])
    {
      v18 = 13;
    }

    else
    {
      v18 = [(MBCKRestoreFileEngine *)self restoreState]+ 1;
    }

    [(MBCKRestoreFileEngine *)self setRestoreState:v18];
  }

  if ([(MBCKRestoreFileEngine *)self restoreState]!= 3)
  {
    restoreLogger = [(MBCKRestoreFileEngine *)self restoreLogger];
    [restoreLogger flush];

    cache = [(MBCKEngine *)self cache];
    restoreState3 = [(MBCKRestoreFileEngine *)self restoreState];
    file5 = [(MBCKRestoreFileEngine *)self file];
    v23 = [cache setRestoreState:restoreState3 forFile:file5];

    if (v23)
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to set state in cache transaction: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }

  _Block_object_dispose(&v32, 8);
}

- (void)makeStateTransition
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKRestoreFileEngine *)self _handleStateTransition];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = MBCKRestoreFileEngine;
  [(MBCKEngine *)&v4 makeStateTransition];
}

- (BOOL)setUpWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    file = [(MBCKRestoreFileEngine *)self file];
    *buf = 138412290;
    v40 = file;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Setting up for restore of file %@", buf, 0xCu);

    file2 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
  }

  v36.receiver = self;
  v36.super_class = MBCKRestoreFileEngine;
  if ([(MBCKEngine *)&v36 setUpWithError:error])
  {
    cache = [(MBCKEngine *)self cache];
    restoreType = [(MBCKRestoreFileEngine *)self restoreType];
    file3 = [(MBCKRestoreFileEngine *)self file];
    v10 = [cache setRestoreType:restoreType forFile:file3];

    file4 = [(MBCKRestoreFileEngine *)self file];
    absolutePath = [file4 absolutePath];

    if (absolutePath)
    {
      file12 = +[NSFileManager defaultManager];
      destinationPath = [(MBCKRestoreFileEngine *)self destinationPath];
      stringByDeletingLastPathComponent = [destinationPath stringByDeletingLastPathComponent];

      if ([file12 fileExistsAtPath:stringByDeletingLastPathComponent])
      {
        v16 = 1;
LABEL_23:

        goto LABEL_24;
      }

      file5 = [(MBCKRestoreFileEngine *)self file];
      userID = [file5 userID];
      if (userID == MBMobileUID())
      {
        file6 = [(MBCKRestoreFileEngine *)self file];
        groupID = [file6 groupID];
        v23 = MBMobileUID();

        if (groupID == v23)
        {
LABEL_19:
          v37[0] = NSFileOwnerAccountID;
          file7 = [(MBCKRestoreFileEngine *)self file];
          v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [file7 userID]);
          v38[0] = v27;
          v37[1] = NSFileGroupOwnerAccountID;
          file8 = [(MBCKRestoreFileEngine *)self file];
          v29 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [file8 groupID]);
          v38[1] = v29;
          v30 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

          v31 = [file12 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v30 error:error];
          v16 = v31;
          if (error && (v31 & 1) == 0)
          {
            destinationPath2 = [(MBCKRestoreFileEngine *)self destinationPath];
            *error = [MBError errorWithCode:100 path:stringByDeletingLastPathComponent format:@"Error creating parent path for file %@", destinationPath2];
          }

          goto LABEL_23;
        }
      }

      else
      {
      }

      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        file9 = [(MBCKRestoreFileEngine *)self file];
        *buf = 138412290;
        v40 = file9;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Creating parent directory (possibly skipped tld) for %@", buf, 0xCu);

        file2 = [(MBCKRestoreFileEngine *)self file];
        _MBLog();
      }

      goto LABEL_19;
    }

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      file10 = [(MBCKRestoreFileEngine *)self file];
      *buf = 138412290;
      v40 = file10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Can't restore a file without an absolute path: %@", buf, 0xCu);

      file11 = [(MBCKRestoreFileEngine *)self file];
      _MBLog();
    }

    if (error)
    {
      file12 = [(MBCKRestoreFileEngine *)self file];
      [MBError errorWithCode:205 format:@"File does not have an absolute path: %@", file12];
      *error = v16 = 0;
LABEL_24:

      return v16;
    }
  }

  return 0;
}

- (BOOL)downloadWithError:(id *)error
{
  file = [(MBCKRestoreFileEngine *)self file];
  downloaded = [file downloaded];

  if (downloaded)
  {
    return 1;
  }

  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreFileEngine downloadWithError:]", "MBCKRestoreFileEngine.m", 300, "tracker");
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    file2 = [(MBCKRestoreFileEngine *)self file];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = file2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Downloading file %@", &buf, 0xCu);

    file3 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = sub_10010073C;
  v23 = sub_10010074C;
  v24 = 0;
  v11 = dispatch_semaphore_create(0);
  file4 = [(MBCKRestoreFileEngine *)self file];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100100754;
  v17[3] = &unk_1003BC160;
  p_buf = &buf;
  v13 = v11;
  v18 = v13;
  [file4 downloadContentsWithOperationTracker:ckOperationTracker completion:v17];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = *(*(&buf + 1) + 40);
  v7 = v14 == 0;
  if (error && v14)
  {
    *error = v14;
  }

  _Block_object_dispose(&buf, 8);
  return v7;
}

- (BOOL)restoreAssetWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    file = [(MBCKRestoreFileEngine *)self file];
    *buf = 138412290;
    v18 = file;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Restoring asset for file %@", buf, 0xCu);

    file2 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
  }

  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreFileEngine restoreAssetWithError:]", "MBCKRestoreFileEngine.m", 326, "tracker");
  }

  v8 = ckOperationTracker;
  file3 = [(MBCKRestoreFileEngine *)self file];
  destinationPath = [(MBCKRestoreFileEngine *)self destinationPath];
  restoreLogger = [(MBCKRestoreFileEngine *)self restoreLogger];
  cache = [(MBCKEngine *)self cache];
  device = [(MBCKEngine *)self device];
  v14 = [file3 restoreAssetWithOperationTracker:v8 destination:destinationPath logger:restoreLogger cache:cache device:device error:error];

  return v14;
}

- (BOOL)setExtendedAttributesWithError:(id *)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    file = [(MBCKRestoreFileEngine *)self file];
    *buf = 138412290;
    v13 = file;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Setting extended attributes for file %@", buf, 0xCu);

    file2 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
  }

  file3 = [(MBCKRestoreFileEngine *)self file];
  destinationPath = [(MBCKRestoreFileEngine *)self destinationPath];
  v9 = [file3 restoreExtendedAttributesToDestination:destinationPath withError:error];

  return v9;
}

- (BOOL)setAttributesWithError:(id *)error
{
  file = [(MBCKRestoreFileEngine *)self file];
  destinationPath = [(MBCKRestoreFileEngine *)self destinationPath];
  LOBYTE(error) = [MBRestorableOperation restore:file attributesToDestination:destinationPath error:error];

  return error;
}

+ (void)_removeBundleIconNameKeyFrom:(id)from
{
  fromCopy = from;
  +[NSFileManager defaultManager];
  v36 = v43 = 0;
  v37 = fromCopy;
  v4 = [v36 contentsOfDirectoryAtPath:fromCopy error:&v43];
  v5 = v43;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = *v40;
  while (2)
  {
    v9 = 0;
    v10 = v5;
    do
    {
      if (*v40 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = [NSString stringWithFormat:@"%@/%@", fromCopy, *(*(&v39 + 1) + 8 * v9)];
      v38 = v10;
      v12 = [v36 contentsOfDirectoryAtPath:v11 error:&v38];
      v5 = v38;

      v13 = [v12 containsObject:@"Info.plist"];
      if (v13)
      {
        v14 = [v11 stringByAppendingPathComponent:@"Info.plist"];

        if (!v14)
        {
          goto LABEL_41;
        }

        v15 = [NSMutableDictionary dictionaryWithContentsOfFile:v14];
        v16 = v15;
        if (!v15)
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v45 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to read %@ and determine if Info.plist modification is necessary", buf, 0xCu);
            _MBLog();
          }

          goto LABEL_49;
        }

        v17 = [v15 objectForKeyedSubscript:@"CFBundleIcons"];
        if (v17)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v17 = 0;
          }
        }

        v18 = [v17 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
        if (v18)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v18 = 0;
          }
        }

        v19 = [v18 objectForKeyedSubscript:@"CFBundleIconFiles"];
        if (v19)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v19 = 0;
          }
        }

        v20 = [v16 objectForKeyedSubscript:@"CFBundleIcons~ipad"];
        if (v20)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v20 = 0;
          }
        }

        v33 = v20;
        v21 = [v20 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
        if (v21)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v21 = 0;
          }
        }

        v22 = [v21 objectForKeyedSubscript:@"CFBundleIconFiles"];
        v34 = v19;
        if (v22)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v22 = 0;
          }
        }

        allKeys = [v18 allKeys];
        v24 = [allKeys containsObject:@"CFBundleIconName"];
        if (v24)
        {
          v25 = [v34 count];

          if (!v25)
          {
            v24 = 0;
LABEL_36:
            allKeys2 = [v21 allKeys];
            if ([allKeys2 containsObject:@"CFBundleIconName"])
            {
              v29 = [v22 count];

              if (v29)
              {
                v30 = MBGetDefaultLog();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Info.plist modification is necessary because 'CFBundleIconName' key exists while 'CFBundleIconFiles' items also exist under 'CFBundleIcons~ipad'", buf, 2u);
                  _MBLog();
                }

                v31 = [v16 objectForKeyedSubscript:@"CFBundleIcons~ipad"];
                v32 = [v31 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
                [v32 removeObjectForKey:@"CFBundleIconName"];

                goto LABEL_47;
              }
            }

            else
            {
            }

            if (!v24)
            {
LABEL_48:

LABEL_49:
              goto LABEL_50;
            }

LABEL_47:
            [v16 writeToFile:v14 atomically:1];
            goto LABEL_48;
          }

          v26 = MBGetDefaultLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Info.plist modification is necessary because 'CFBundleIconName' key exists while 'CFBundleIconFiles' items also exist under 'CFBundleIcons'", buf, 2u);
            _MBLog();
          }

          allKeys = [v16 objectForKeyedSubscript:@"CFBundleIcons"];
          v27 = [allKeys objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
          [v27 removeObjectForKey:@"CFBundleIconName"];
        }

        goto LABEL_36;
      }

      v9 = v9 + 1;
      v10 = v5;
    }

    while (v7 != v9);
    v7 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_9:

LABEL_41:
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to locate App Placeholder Info.plist", buf, 2u);
    _MBLog();
  }

LABEL_50:
}

- (BOOL)_restoreLegacyZippedAppPlaceholderWithError:(id *)error
{
  destinationPath = [(MBCKRestoreFileEngine *)self destinationPath];
  stringByDeletingLastPathComponent = [destinationPath stringByDeletingLastPathComponent];
  v34 = 0;
  v7 = [MBApp unzipPlaceholderDomainZipFile:destinationPath intoDirectory:stringByDeletingLastPathComponent error:&v34];
  v8 = v34;

  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      file = [(MBCKRestoreFileEngine *)self file];
      relativePath = [file relativePath];
      *buf = 138412290;
      v36 = relativePath;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Placeholder: unzipped %@", buf, 0xCu);

      file2 = [(MBCKRestoreFileEngine *)self file];
      relativePath2 = [file2 relativePath];
      _MBLog();
    }

    v14 = objc_opt_class();
    stringByDeletingLastPathComponent2 = [destinationPath stringByDeletingLastPathComponent];
    [v14 _removeBundleIconNameKeyFrom:stringByDeletingLastPathComponent2];

    stringByDeletingLastPathComponent3 = [destinationPath stringByDeletingLastPathComponent];
    v17 = MBMobileUID();
    v18 = MBMobileUID();
    v19 = stringByDeletingLastPathComponent3;
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Restoring ownership at %@", buf, 0xCu);
      _MBLog();
    }

    v21 = lchown([v19 fileSystemRepresentation], v17, v18);
    v22 = v8;
    if (v21)
    {
      v22 = [MBError posixErrorWithCode:102 path:v19 format:@"lchown error"];
      v23 = v22;
    }

    v24 = v22;
    if (v21)
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = destinationPath;
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Placeholder: Unable to restore as mobile:mobile: %@ %@", buf, 0x16u);
        _MBLog();
      }

      if (error)
      {
        v8 = v24;
        goto LABEL_16;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v8 = v24;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    file3 = [(MBCKRestoreFileEngine *)self file];
    relativePath3 = [file3 relativePath];
    *buf = 138412546;
    v36 = relativePath3;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Placeholder: Unable to unzip %@ %@", buf, 0x16u);

    file4 = [(MBCKRestoreFileEngine *)self file];
    relativePath4 = [file4 relativePath];
    _MBLog();
  }

  if (!error)
  {
    v30 = 0;
    goto LABEL_21;
  }

LABEL_16:
  v29 = v8;
  v30 = 0;
  *error = v8;
LABEL_21:

  return v30;
}

- (BOOL)setProtectionClassWithError:(id *)error
{
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreFileEngine setProtectionClassWithError:]", "MBCKRestoreFileEngine.m", 440, "serviceAccount");
  }

  v6 = serviceAccount;
  debugContext = [(MBEngine *)self debugContext];
  v8 = [debugContext isFlagSet:@"RestoreShouldSkipDecryption"];

  if (!v8)
  {
    file = [(MBCKRestoreFileEngine *)self file];
    domain = [file domain];

    if ([domain isLegacyPerAppPlaceholderDomain])
    {
      file2 = [(MBCKRestoreFileEngine *)self file];
      relativePath = [file2 relativePath];

      containerID = [domain containerID];
      v16 = [containerID stringByAppendingPathExtension:@"ipa"];
      v17 = [relativePath isEqualToString:v16];

      if (v17)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          file3 = [(MBCKRestoreFileEngine *)self file];
          absolutePath = [file3 absolutePath];
          *buf = 138412290;
          v36[0] = absolutePath;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Placeholder: left in place at %@", buf, 0xCu);

          file4 = [(MBCKRestoreFileEngine *)self file];
          absolutePath2 = [file4 absolutePath];
          _MBLog();
        }

LABEL_18:
        v10 = 1;
        goto LABEL_19;
      }

      v22 = [containerID stringByAppendingPathExtension:@"zip"];
      v23 = [relativePath isEqualToString:v22];

      if (v23)
      {
        v10 = [(MBCKRestoreFileEngine *)self _restoreLegacyZippedAppPlaceholderWithError:error];
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }
    }

    if ([(MBCKRestoreFileEngine *)self shouldSetProtectionClass])
    {
      file5 = [(MBCKRestoreFileEngine *)self file];
      protectionClass = [file5 protectionClass];

      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        file6 = [(MBCKRestoreFileEngine *)self file];
        *buf = 67109378;
        LODWORD(v36[0]) = protectionClass;
        WORD2(v36[0]) = 2112;
        *(v36 + 6) = file6;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Setting protection class %d for file at %@", buf, 0x12u);

        [(MBCKRestoreFileEngine *)self file];
        v34 = v32 = protectionClass;
        _MBLog();
      }

      v28 = self->_restoreType == 1;
      relativePath = [(MBCKRestoreFileEngine *)self file:v32];
      containerID = [(MBCKRestoreFileEngine *)self destinationPath];
      restoreLogger = [(MBCKRestoreFileEngine *)self restoreLogger];
      v10 = [MBRestorableOperation restore:relativePath protectionClassToDestination:containerID unspecifiedDirectoryProtectionClass:(4 * v28) logger:restoreLogger error:error];

      goto LABEL_19;
    }

    relativePath = MBGetDefaultLog();
    if (!os_log_type_enabled(relativePath, OS_LOG_TYPE_DEBUG))
    {
      v10 = 1;
      goto LABEL_20;
    }

    file7 = [(MBCKRestoreFileEngine *)self file];
    *buf = 138412290;
    v36[0] = file7;
    _os_log_impl(&_mh_execute_header, relativePath, OS_LOG_TYPE_DEBUG, "Skipped setting protection class for file %@", buf, 0xCu);

    containerID = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
    goto LABEL_18;
  }

  debugContext2 = [(MBEngine *)self debugContext];
  [debugContext2 setFlag:@"RestoreWillSkipDecryption"];

  v10 = 1;
LABEL_21:

  return v10;
}

@end