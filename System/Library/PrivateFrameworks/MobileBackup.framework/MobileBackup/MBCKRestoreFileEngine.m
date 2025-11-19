@interface MBCKRestoreFileEngine
+ (void)_removeBundleIconNameKeyFrom:(id)a3;
- (BOOL)_restoreLegacyZippedAppPlaceholderWithError:(id *)a3;
- (BOOL)downloadWithError:(id *)a3;
- (BOOL)restoreAssetWithError:(id *)a3;
- (BOOL)runWithError:(id *)a3;
- (BOOL)setAttributesWithError:(id *)a3;
- (BOOL)setExtendedAttributesWithError:(id *)a3;
- (BOOL)setProtectionClassWithError:(id *)a3;
- (BOOL)setUpWithError:(id *)a3;
- (MBCKRestoreFileEngine)initWithRestoreEngine:(id)a3 file:(id)a4 destinationPath:(id)a5 shouldSetProtectionClass:(BOOL)a6;
- (void)_handleStateTransition;
- (void)cleanUpAfterError:(id)a3;
- (void)makeStateTransition;
- (void)setDestinationPath:(id)a3;
@end

@implementation MBCKRestoreFileEngine

- (MBCKRestoreFileEngine)initWithRestoreEngine:(id)a3 file:(id)a4 destinationPath:(id)a5 shouldSetProtectionClass:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 42, "engine");
  }

  v13 = v12;
  v46 = [v10 ckOperationPolicy];
  if (!v46)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 44, "policy");
  }

  v45 = [v10 ckOperationTracker];
  if (!v45)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 46, "tracker");
  }

  v44 = [v10 cache];
  if (!v44)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 48, "cache");
  }

  v14 = [v10 serviceManager];
  if (!v14)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 50, "serviceManager");
  }

  v15 = v14;
  v16 = [v10 device];
  if (!v16)
  {
    __assert_rtn("[MBCKRestoreFileEngine initWithRestoreEngine:file:destinationPath:shouldSetProtectionClass:]", "MBCKRestoreFileEngine.m", 52, "device");
  }

  v17 = v16;
  v41 = v6;
  v43 = [v10 restoreLogger];
  obj = a5;
  if (MBIsInternalInstall())
  {
    v18 = [v10 context];
    v19 = [v18 restoreMode];
    if ([v19 type] == 4)
    {
      [(MBCKRestoreFileEngine *)self setShouldValidateContents:0];
    }

    else
    {
      v39 = v11;
      v20 = [v10 context];
      v21 = [v20 restoreMode];
      if ([v21 type] == 5)
      {
        v22 = 0;
      }

      else
      {
        v22 = [v39 protectionClass] == 3 || objc_msgSend(v39, "protectionClass") == 4;
      }

      [(MBCKRestoreFileEngine *)self setShouldValidateContents:v22];

      v11 = v39;
    }
  }

  else
  {
    [(MBCKRestoreFileEngine *)self setShouldValidateContents:0];
  }

  v23 = [v10 context];
  v24 = [v10 debugContext];
  v25 = [v10 domainManager];
  v48.receiver = self;
  v48.super_class = MBCKRestoreFileEngine;
  v26 = [(MBCKEngine *)&v48 initWithSettingsContext:v23 debugContext:v24 domainManager:v25];

  if (v26)
  {
    v40 = v13;
    v27 = v11;
    [(MBCKEngine *)v26 setServiceManager:v15];
    [(MBCKEngine *)v26 setCkOperationPolicy:v46];
    [(MBCKEngine *)v26 setCkOperationTracker:v45];
    v26->_restoreType = [v10 restoreType];
    [(MBCKRestoreFileEngine *)v26 setShouldSetProtectionClass:v41];
    objc_storeStrong(&v26->_file, a4);
    [(MBCKEngine *)v26 setCache:v44];
    [(MBCKEngine *)v26 setShouldAdvanceState:1];
    [(MBCKRestoreFileEngine *)v26 setRestoreState:1];
    [(MBCKRestoreFileEngine *)v26 setRestoreLogger:v43];
    [(MBCKEngine *)v26 setDevice:v17];
    objc_storeStrong(&v26->_destinationPath, obj);
    v28 = [(MBCKEngine *)v26 cache];
    v29 = [(MBCKRestoreFileEngine *)v26 file];
    v30 = [v29 fileID];
    v47 = 0;
    v31 = [v28 fetchRestoreFileStateForFileID:v30 error:&v47];
    v32 = v47;
    [(MBCKRestoreFileEngine *)v26 setRestoreState:v31];

    if (v32)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [(MBCKRestoreFileEngine *)v26 file];
        v35 = [v34 fileID];
        *buf = 138412546;
        v50 = v35;
        v51 = 2112;
        v52 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error getting restore file state for file %@: %@", buf, 0x16u);

        v36 = [(MBCKRestoreFileEngine *)v26 file];
        v38 = [v36 fileID];
        _MBLog();
      }
    }

    v11 = v27;
    v13 = v40;
  }

  return v26;
}

- (void)cleanUpAfterError:(id)a3
{
  v4 = a3;
  if (![MBError isRetryableRestoreError:v4])
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(MBCKRestoreFileEngine *)self file];
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Non retryable restore error for %@: %@. Setting state to non-retryable failure.", buf, 0x16u);

      v12 = [(MBCKRestoreFileEngine *)self file];
      v13 = v4;
      _MBLog();
    }

    [(MBCKRestoreFileEngine *)self setRestoreState:12];
    v7 = [(MBCKEngine *)self cache];
    v8 = [(MBCKRestoreFileEngine *)self restoreState];
    v9 = [(MBCKRestoreFileEngine *)self file];
    v10 = [v7 setRestoreState:v8 forFile:v9];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to set state in cache transaction: %@", buf, 0xCu);
        v12 = v10;
        _MBLog();
      }
    }
  }

  v14.receiver = self;
  v14.super_class = MBCKRestoreFileEngine;
  [(MBCKEngine *)&v14 cleanUpAfterError:v4, v12, v13];
}

- (void)setDestinationPath:(id)a3
{
  v4 = a3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "File will restore to overridden destination %@", buf, 0xCu);
    _MBLog();
  }

  destinationPath = self->_destinationPath;
  self->_destinationPath = v4;
}

- (BOOL)runWithError:(id *)a3
{
  [(MBCKRestoreFileEngine *)self makeStateTransition];
  v5 = [(MBCKEngine *)self hasError];
  if (v5)
  {
    v6 = [(MBCKEngine *)self engineError];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MBCKRestoreFileEngine *)self file];
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Restore failed: %@ (%@)", buf, 0x16u);

      v11 = [(MBCKRestoreFileEngine *)self file];
      _MBLog();
    }

    [(MBCKRestoreFileEngine *)self cleanUpAfterError:v6];
    if (a3)
    {
      v9 = v6;
      *a3 = v6;
    }
  }

  return v5 ^ 1;
}

- (void)_handleStateTransition
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v3 = [(MBCKRestoreFileEngine *)self restoreState];
  if (v3 <= 9)
  {
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v7 = MBGetDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = [(MBCKRestoreFileEngine *)self file];
            *buf = 138412290;
            v37 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restoring %@", buf, 0xCu);
          }

          v25 = [(MBCKRestoreFileEngine *)self file];
          _MBLog();
        }

        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000FFDD8;
        v31[3] = &unk_1003BC400;
        v31[4] = self;
        [(MBCKEngine *)self performRetryablePhase:v31];
      }

      else if (v3 == 2)
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
      switch(v3)
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

  if (v3 > 11)
  {
    if (v3 == 12)
    {
      [(MBCKEngine *)self setIsFinished:1];
      v10 = [(MBCKRestoreFileEngine *)self restoreState];
      v11 = [(MBCKRestoreFileEngine *)self file];
      v12 = [v11 domainName];
      v13 = [(MBCKRestoreFileEngine *)self file];
      v14 = [v13 fileID];
      v15 = [MBError errorWithCode:202 format:@"File is in non-retryable failed state:%lu, domain:%@, fileID:%@", v10, v12, v14];
      [(MBCKEngine *)self setEngineError:v15];

      goto LABEL_39;
    }

    if (v3 != 13)
    {
      if (v3 != 14)
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
        v5 = [(MBCKRestoreFileEngine *)self destinationPath];
        *buf = 138412290;
        v37 = v5;
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
        v16 = [(MBCKRestoreFileEngine *)self destinationPath];
        *buf = 138412290;
        v37 = v16;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "File skipped %@", buf, 0xCu);
      }

LABEL_37:

      v25 = [(MBCKRestoreFileEngine *)self destinationPath];
      _MBLog();

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  if (v3 != 10)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(MBCKRestoreFileEngine *)self destinationPath];
        *buf = 138412290;
        v37 = v6;
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
    v17 = [(MBCKEngine *)self progressModel];
    [v17 ended];
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
    v19 = [(MBCKRestoreFileEngine *)self restoreLogger];
    [v19 flush];

    v20 = [(MBCKEngine *)self cache];
    v21 = [(MBCKRestoreFileEngine *)self restoreState];
    v22 = [(MBCKRestoreFileEngine *)self file];
    v23 = [v20 setRestoreState:v21 forFile:v22];

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

- (BOOL)setUpWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MBCKRestoreFileEngine *)self file];
    *buf = 138412290;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Setting up for restore of file %@", buf, 0xCu);

    v34 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
  }

  v36.receiver = self;
  v36.super_class = MBCKRestoreFileEngine;
  if ([(MBCKEngine *)&v36 setUpWithError:a3])
  {
    v7 = [(MBCKEngine *)self cache];
    v8 = [(MBCKRestoreFileEngine *)self restoreType];
    v9 = [(MBCKRestoreFileEngine *)self file];
    v10 = [v7 setRestoreType:v8 forFile:v9];

    v11 = [(MBCKRestoreFileEngine *)self file];
    v12 = [v11 absolutePath];

    if (v12)
    {
      v13 = +[NSFileManager defaultManager];
      v14 = [(MBCKRestoreFileEngine *)self destinationPath];
      v15 = [v14 stringByDeletingLastPathComponent];

      if ([v13 fileExistsAtPath:v15])
      {
        v16 = 1;
LABEL_23:

        goto LABEL_24;
      }

      v19 = [(MBCKRestoreFileEngine *)self file];
      v20 = [v19 userID];
      if (v20 == MBMobileUID())
      {
        v21 = [(MBCKRestoreFileEngine *)self file];
        v22 = [v21 groupID];
        v23 = MBMobileUID();

        if (v22 == v23)
        {
LABEL_19:
          v37[0] = NSFileOwnerAccountID;
          v26 = [(MBCKRestoreFileEngine *)self file];
          v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v26 userID]);
          v38[0] = v27;
          v37[1] = NSFileGroupOwnerAccountID;
          v28 = [(MBCKRestoreFileEngine *)self file];
          v29 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v28 groupID]);
          v38[1] = v29;
          v30 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

          v31 = [v13 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:v30 error:a3];
          v16 = v31;
          if (a3 && (v31 & 1) == 0)
          {
            v32 = [(MBCKRestoreFileEngine *)self destinationPath];
            *a3 = [MBError errorWithCode:100 path:v15 format:@"Error creating parent path for file %@", v32];
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
        v25 = [(MBCKRestoreFileEngine *)self file];
        *buf = 138412290;
        v40 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Creating parent directory (possibly skipped tld) for %@", buf, 0xCu);

        v34 = [(MBCKRestoreFileEngine *)self file];
        _MBLog();
      }

      goto LABEL_19;
    }

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MBCKRestoreFileEngine *)self file];
      *buf = 138412290;
      v40 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Can't restore a file without an absolute path: %@", buf, 0xCu);

      v35 = [(MBCKRestoreFileEngine *)self file];
      _MBLog();
    }

    if (a3)
    {
      v13 = [(MBCKRestoreFileEngine *)self file];
      [MBError errorWithCode:205 format:@"File does not have an absolute path: %@", v13];
      *a3 = v16 = 0;
LABEL_24:

      return v16;
    }
  }

  return 0;
}

- (BOOL)downloadWithError:(id *)a3
{
  v5 = [(MBCKRestoreFileEngine *)self file];
  v6 = [v5 downloaded];

  if (v6)
  {
    return 1;
  }

  v8 = [(MBCKEngine *)self ckOperationTracker];
  if (!v8)
  {
    __assert_rtn("[MBCKRestoreFileEngine downloadWithError:]", "MBCKRestoreFileEngine.m", 300, "tracker");
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(MBCKRestoreFileEngine *)self file];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Downloading file %@", &buf, 0xCu);

    v16 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = sub_10010073C;
  v23 = sub_10010074C;
  v24 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = [(MBCKRestoreFileEngine *)self file];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100100754;
  v17[3] = &unk_1003BC160;
  p_buf = &buf;
  v13 = v11;
  v18 = v13;
  [v12 downloadContentsWithOperationTracker:v8 completion:v17];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = *(*(&buf + 1) + 40);
  v7 = v14 == 0;
  if (a3 && v14)
  {
    *a3 = v14;
  }

  _Block_object_dispose(&buf, 8);
  return v7;
}

- (BOOL)restoreAssetWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MBCKRestoreFileEngine *)self file];
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Restoring asset for file %@", buf, 0xCu);

    v16 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
  }

  v7 = [(MBCKEngine *)self ckOperationTracker];
  if (!v7)
  {
    __assert_rtn("[MBCKRestoreFileEngine restoreAssetWithError:]", "MBCKRestoreFileEngine.m", 326, "tracker");
  }

  v8 = v7;
  v9 = [(MBCKRestoreFileEngine *)self file];
  v10 = [(MBCKRestoreFileEngine *)self destinationPath];
  v11 = [(MBCKRestoreFileEngine *)self restoreLogger];
  v12 = [(MBCKEngine *)self cache];
  v13 = [(MBCKEngine *)self device];
  v14 = [v9 restoreAssetWithOperationTracker:v8 destination:v10 logger:v11 cache:v12 device:v13 error:a3];

  return v14;
}

- (BOOL)setExtendedAttributesWithError:(id *)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MBCKRestoreFileEngine *)self file];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Setting extended attributes for file %@", buf, 0xCu);

    v11 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
  }

  v7 = [(MBCKRestoreFileEngine *)self file];
  v8 = [(MBCKRestoreFileEngine *)self destinationPath];
  v9 = [v7 restoreExtendedAttributesToDestination:v8 withError:a3];

  return v9;
}

- (BOOL)setAttributesWithError:(id *)a3
{
  v5 = [(MBCKRestoreFileEngine *)self file];
  v6 = [(MBCKRestoreFileEngine *)self destinationPath];
  LOBYTE(a3) = [MBRestorableOperation restore:v5 attributesToDestination:v6 error:a3];

  return a3;
}

+ (void)_removeBundleIconNameKeyFrom:(id)a3
{
  v3 = a3;
  +[NSFileManager defaultManager];
  v36 = v43 = 0;
  v37 = v3;
  v4 = [v36 contentsOfDirectoryAtPath:v3 error:&v43];
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

      v11 = [NSString stringWithFormat:@"%@/%@", v3, *(*(&v39 + 1) + 8 * v9)];
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

        v23 = [v18 allKeys];
        v24 = [v23 containsObject:@"CFBundleIconName"];
        if (v24)
        {
          v25 = [v34 count];

          if (!v25)
          {
            v24 = 0;
LABEL_36:
            v28 = [v21 allKeys];
            if ([v28 containsObject:@"CFBundleIconName"])
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

          v23 = [v16 objectForKeyedSubscript:@"CFBundleIcons"];
          v27 = [v23 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
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

- (BOOL)_restoreLegacyZippedAppPlaceholderWithError:(id *)a3
{
  v5 = [(MBCKRestoreFileEngine *)self destinationPath];
  v6 = [v5 stringByDeletingLastPathComponent];
  v34 = 0;
  v7 = [MBApp unzipPlaceholderDomainZipFile:v5 intoDirectory:v6 error:&v34];
  v8 = v34;

  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = [(MBCKRestoreFileEngine *)self file];
      v12 = [v11 relativePath];
      *buf = 138412290;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Placeholder: unzipped %@", buf, 0xCu);

      v13 = [(MBCKRestoreFileEngine *)self file];
      v32 = [v13 relativePath];
      _MBLog();
    }

    v14 = objc_opt_class();
    v15 = [v5 stringByDeletingLastPathComponent];
    [v14 _removeBundleIconNameKeyFrom:v15];

    v16 = [v5 stringByDeletingLastPathComponent];
    v17 = MBMobileUID();
    v18 = MBMobileUID();
    v19 = v16;
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
        v36 = v5;
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Placeholder: Unable to restore as mobile:mobile: %@ %@", buf, 0x16u);
        _MBLog();
      }

      if (a3)
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
    v26 = [(MBCKRestoreFileEngine *)self file];
    v27 = [v26 relativePath];
    *buf = 138412546;
    v36 = v27;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Placeholder: Unable to unzip %@ %@", buf, 0x16u);

    v28 = [(MBCKRestoreFileEngine *)self file];
    v33 = [v28 relativePath];
    _MBLog();
  }

  if (!a3)
  {
    v30 = 0;
    goto LABEL_21;
  }

LABEL_16:
  v29 = v8;
  v30 = 0;
  *a3 = v8;
LABEL_21:

  return v30;
}

- (BOOL)setProtectionClassWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self serviceAccount];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreFileEngine setProtectionClassWithError:]", "MBCKRestoreFileEngine.m", 440, "serviceAccount");
  }

  v6 = v5;
  v7 = [(MBEngine *)self debugContext];
  v8 = [v7 isFlagSet:@"RestoreShouldSkipDecryption"];

  if (!v8)
  {
    v11 = [(MBCKRestoreFileEngine *)self file];
    v12 = [v11 domain];

    if ([v12 isLegacyPerAppPlaceholderDomain])
    {
      v13 = [(MBCKRestoreFileEngine *)self file];
      v14 = [v13 relativePath];

      v15 = [v12 containerID];
      v16 = [v15 stringByAppendingPathExtension:@"ipa"];
      v17 = [v14 isEqualToString:v16];

      if (v17)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [(MBCKRestoreFileEngine *)self file];
          v20 = [v19 absolutePath];
          *buf = 138412290;
          v36[0] = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Placeholder: left in place at %@", buf, 0xCu);

          v21 = [(MBCKRestoreFileEngine *)self file];
          v33 = [v21 absolutePath];
          _MBLog();
        }

LABEL_18:
        v10 = 1;
        goto LABEL_19;
      }

      v22 = [v15 stringByAppendingPathExtension:@"zip"];
      v23 = [v14 isEqualToString:v22];

      if (v23)
      {
        v10 = [(MBCKRestoreFileEngine *)self _restoreLegacyZippedAppPlaceholderWithError:a3];
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }
    }

    if ([(MBCKRestoreFileEngine *)self shouldSetProtectionClass])
    {
      v24 = [(MBCKRestoreFileEngine *)self file];
      v25 = [v24 protectionClass];

      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [(MBCKRestoreFileEngine *)self file];
        *buf = 67109378;
        LODWORD(v36[0]) = v25;
        WORD2(v36[0]) = 2112;
        *(v36 + 6) = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Setting protection class %d for file at %@", buf, 0x12u);

        [(MBCKRestoreFileEngine *)self file];
        v34 = v32 = v25;
        _MBLog();
      }

      v28 = self->_restoreType == 1;
      v14 = [(MBCKRestoreFileEngine *)self file:v32];
      v15 = [(MBCKRestoreFileEngine *)self destinationPath];
      v29 = [(MBCKRestoreFileEngine *)self restoreLogger];
      v10 = [MBRestorableOperation restore:v14 protectionClassToDestination:v15 unspecifiedDirectoryProtectionClass:(4 * v28) logger:v29 error:a3];

      goto LABEL_19;
    }

    v14 = MBGetDefaultLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v10 = 1;
      goto LABEL_20;
    }

    v30 = [(MBCKRestoreFileEngine *)self file];
    *buf = 138412290;
    v36[0] = v30;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Skipped setting protection class for file %@", buf, 0xCu);

    v15 = [(MBCKRestoreFileEngine *)self file];
    _MBLog();
    goto LABEL_18;
  }

  v9 = [(MBEngine *)self debugContext];
  [v9 setFlag:@"RestoreWillSkipDecryption"];

  v10 = 1;
LABEL_21:

  return v10;
}

@end