@interface BLFairPlayDecryptFileOperation
- (BLBookInstallInfo)installInfo;
- (BLFairPlayDecryptFileOperation)initWithPath:(id)path dpInfo:(id)info installInfo:(id)installInfo;
- (BOOL)_decryptWithSession:(id)session error:(id *)error;
- (void)_initializeProgressWithFileHandle:(id)handle;
- (void)_updateProgressWithByteCount:(int64_t)count;
- (void)main;
@end

@implementation BLFairPlayDecryptFileOperation

- (BLFairPlayDecryptFileOperation)initWithPath:(id)path dpInfo:(id)info installInfo:(id)installInfo
{
  pathCopy = path;
  infoCopy = info;
  installInfoCopy = installInfo;
  v16.receiver = self;
  v16.super_class = BLFairPlayDecryptFileOperation;
  v11 = [(BLFairPlayDecryptFileOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dpInfo, info);
    v13 = [pathCopy copy];
    path = v12->_path;
    v12->_path = v13;

    objc_storeWeak(&v12->_installInfo, installInfoCopy);
  }

  return v12;
}

- (void)main
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100081E8C;
  v26 = sub_100081E9C;
  v27 = [[BLFairplayDecryptSession alloc] initWithDPInfo:self->_dpInfo];
  dpInfo = self->_dpInfo;
  self->_dpInfo = 0;

  v4 = objc_alloc_init(BLOperationProgress);
  progress = self->_progress;
  self->_progress = v4;

  if (v23[5])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100081EA4;
    v21[3] = &unk_10011D830;
    v21[4] = self;
    v21[5] = &v22;
    v6 = objc_retainBlock(v21);
    AssertionID = 0;
    v7 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [v23[5] identifier], 0, @"bookd FairPlay asset decryption", 0, 900.0, @"TimeoutActionRelease", &AssertionID);
    if (v7)
    {
      v8 = BLBookInstallLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v29) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[Install-Decrypt-Op]: Power assertion failed with error: %d", buf, 8u);
      }

      v9 = sub_1000A8F44(21, 0, 0);
      error = self->_error;
      self->_error = v9;

      self->_success = 0;
    }

    else
    {
      v14 = BLBookInstallLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v23[5] identifier];
        *buf = 138412290;
        v29 = identifier;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[Install-Decrypt-Op]: Took power assertion: %@", buf, 0xCu);
      }

      (v6[2])(v6);
      IOPMAssertionRelease(AssertionID);
      v16 = BLBookInstallLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        identifier2 = [v23[5] identifier];
        *buf = 138412290;
        v29 = identifier2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[Install-Decrypt-Op]: Released power assertion: %@", buf, 0xCu);
      }

      v18 = +[NSUserDefaults standardUserDefaults];
      if ([v18 BOOLForKey:@"BKSimulateCrashAtInstallDuringDecrypt"])
      {
        v19 = BLBookInstallLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Install-Op]: Simulating a crash during install decrypt", buf, 2u);
        }

        [v18 removeObjectForKey:@"BKSimulateCrashAtInstallDuringDecrypt"];
        [v18 synchronize];
        raise(11);
      }
    }
  }

  else
  {
    v11 = BLBookInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Install-Decrypt-Op]: Could not begin decrypt", buf, 2u);
    }

    v12 = sub_1000A8F44(15, 0, 0);
    v13 = self->_error;
    self->_error = v12;
  }

  _Block_object_dispose(&v22, 8);
}

- (BOOL)_decryptWithSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v6 = [NSFileHandle fileHandleForUpdatingAtPath:self->_path];
  if (v6)
  {
    [(BLFairPlayDecryptFileOperation *)self _initializeProgressWithFileHandle:v6];
    v7 = 0;
    v8 = 0;
    while (!v8 && !v7)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v6 readDataOfLength:0x8000];
      v11 = [v10 length];
      v8 = v11 == 0;
      if (v11)
      {
        v18 = 0;
        v12 = [sessionCopy decryptBytes:v10 error:&v18];
        v13 = v18;
        if (v12)
        {
          [v6 seekToFileOffset:{objc_msgSend(v6, "offsetInFile") - objc_msgSend(v10, "length")}];
          [v6 writeData:v12];
          -[BLFairPlayDecryptFileOperation _updateProgressWithByteCount:](self, "_updateProgressWithByteCount:", [v6 offsetInFile]);
          v7 = 0;
        }

        else
        {
          v14 = BLBookInstallLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v20 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[Install-Decrypt-Op]: Decrypt failed  %@", buf, 0xCu);
          }

          v7 = v13;
        }
      }

      else
      {
        v7 = 0;
      }

      objc_autoreleasePoolPop(v9);
    }

    [v6 synchronizeFile];
    [v6 closeFile];
  }

  else
  {
    v7 = sub_1000A8F44(7, 0, 0);
    v8 = 0;
  }

  if (error)
  {
    v15 = v7;
    *error = v7;
  }

  return v8;
}

- (void)_initializeProgressWithFileHandle:(id)handle
{
  memset(&v4.st_size, 0, 48);
  if (fstat([handle fileDescriptor], &v4) != -1)
  {
    [(BLOperationProgress *)self->_progress setUnits:1];
    [(BLOperationProgress *)self->_progress setMaxValue:v4.st_size];
    [(BLOperationProgress *)self->_progress resetSnapshots];
    self->_lastSnapshotTime = -1.79769313e308;
    [(BLFairPlayDecryptFileOperation *)self _updateProgressWithByteCount:0];
  }
}

- (void)_updateProgressWithByteCount:(int64_t)count
{
  progress = self->_progress;
  maxValue = [(BLOperationProgress *)progress maxValue];
  if (maxValue >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = maxValue;
  }

  [(BLOperationProgress *)progress setCurrentValue:countCopy];
  Current = CFAbsoluteTimeGetCurrent();
  v9 = *&qword_10013E0B0 + self->_lastSnapshotTime;
  if (v9 < Current)
  {
    [(BLOperationProgress *)self->_progress snapshot];
    installInfo = [(BLFairPlayDecryptFileOperation *)self installInfo];
    progressDelegate = [installInfo progressDelegate];
    [progressDelegate operation:self updatedProgress:self->_progress forInstall:installInfo];

    self->_lastSnapshotTime = Current;
  }
}

- (BLBookInstallInfo)installInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_installInfo);

  return WeakRetained;
}

@end