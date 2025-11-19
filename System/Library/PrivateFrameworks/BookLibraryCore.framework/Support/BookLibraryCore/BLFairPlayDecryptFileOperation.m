@interface BLFairPlayDecryptFileOperation
- (BLBookInstallInfo)installInfo;
- (BLFairPlayDecryptFileOperation)initWithPath:(id)a3 dpInfo:(id)a4 installInfo:(id)a5;
- (BOOL)_decryptWithSession:(id)a3 error:(id *)a4;
- (void)_initializeProgressWithFileHandle:(id)a3;
- (void)_updateProgressWithByteCount:(int64_t)a3;
- (void)main;
@end

@implementation BLFairPlayDecryptFileOperation

- (BLFairPlayDecryptFileOperation)initWithPath:(id)a3 dpInfo:(id)a4 installInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = BLFairPlayDecryptFileOperation;
  v11 = [(BLFairPlayDecryptFileOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dpInfo, a4);
    v13 = [v8 copy];
    path = v12->_path;
    v12->_path = v13;

    objc_storeWeak(&v12->_installInfo, v10);
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
        v15 = [v23[5] identifier];
        *buf = 138412290;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[Install-Decrypt-Op]: Took power assertion: %@", buf, 0xCu);
      }

      (v6[2])(v6);
      IOPMAssertionRelease(AssertionID);
      v16 = BLBookInstallLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v23[5] identifier];
        *buf = 138412290;
        v29 = v17;
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

- (BOOL)_decryptWithSession:(id)a3 error:(id *)a4
{
  v5 = a3;
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
        v12 = [v5 decryptBytes:v10 error:&v18];
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

  if (a4)
  {
    v15 = v7;
    *a4 = v7;
  }

  return v8;
}

- (void)_initializeProgressWithFileHandle:(id)a3
{
  memset(&v4.st_size, 0, 48);
  if (fstat([a3 fileDescriptor], &v4) != -1)
  {
    [(BLOperationProgress *)self->_progress setUnits:1];
    [(BLOperationProgress *)self->_progress setMaxValue:v4.st_size];
    [(BLOperationProgress *)self->_progress resetSnapshots];
    self->_lastSnapshotTime = -1.79769313e308;
    [(BLFairPlayDecryptFileOperation *)self _updateProgressWithByteCount:0];
  }
}

- (void)_updateProgressWithByteCount:(int64_t)a3
{
  progress = self->_progress;
  v6 = [(BLOperationProgress *)progress maxValue];
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  [(BLOperationProgress *)progress setCurrentValue:v7];
  Current = CFAbsoluteTimeGetCurrent();
  v9 = *&qword_10013E0B0 + self->_lastSnapshotTime;
  if (v9 < Current)
  {
    [(BLOperationProgress *)self->_progress snapshot];
    v11 = [(BLFairPlayDecryptFileOperation *)self installInfo];
    v10 = [v11 progressDelegate];
    [v10 operation:self updatedProgress:self->_progress forInstall:v11];

    self->_lastSnapshotTime = Current;
  }
}

- (BLBookInstallInfo)installInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_installInfo);

  return WeakRetained;
}

@end