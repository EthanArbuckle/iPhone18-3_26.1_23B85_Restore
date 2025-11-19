@interface MBDeviceTransferProgressModel
+ (double)_totalProgressForPhaseProgress:(double)a3 phase:(unint64_t)a4;
- (MBDeviceTransferProgressModel)initWithEstimator:(id)a3;
- (MBDeviceTransferProgressModelDelegate)delegate;
- (void)_updateTotalProgressWithTransferInfo:(_MBPeerTransferDriveTransferInfo *)a3 phaseProgress:(double)a4 phase:(unint64_t)a5;
- (void)updateTotalProgressWithPhase:(unint64_t)a3 transferInfo:(_MBPeerTransferDriveTransferInfo *)a4;
- (void)updateTotalProgressWithPhaseProgress:(double)a3 phase:(unint64_t)a4;
@end

@implementation MBDeviceTransferProgressModel

+ (double)_totalProgressForPhaseProgress:(double)a3 phase:(unint64_t)a4
{
  v4 = 5;
  if (a4 + 1 < 5)
  {
    v4 = a4 + 1;
  }

  return dbl_1002BA230[a4] + a3 * (dbl_1002BA230[v4] - dbl_1002BA230[a4]);
}

- (MBDeviceTransferProgressModel)initWithEstimator:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MBDeviceTransferProgressModel;
  v6 = [(MBDeviceTransferProgressModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_estimator, a3);
    v8 = objc_opt_new();
    progressInfo = v7->_progressInfo;
    v7->_progressInfo = v8;

    v7->_progressLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)updateTotalProgressWithPhaseProgress:(double)a3 phase:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v9[0] = v8;
  v9[1] = v8;
  [(MBDeviceTransferProgressModel *)self _updateTotalProgressWithTransferInfo:v9 phaseProgress:a4 phase:a3];
  objc_autoreleasePoolPop(v7);
}

- (void)updateTotalProgressWithPhase:(unint64_t)a3 transferInfo:(_MBPeerTransferDriveTransferInfo *)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = *&a4->var2;
  v9 = fmin(a4->var1 / a4->var3, 1.0);
  v10[0] = *&a4->var0;
  v10[1] = v8;
  [(MBDeviceTransferProgressModel *)self _updateTotalProgressWithTransferInfo:v10 phaseProgress:a3 phase:v9];
  objc_autoreleasePoolPop(v7);
}

- (void)_updateTotalProgressWithTransferInfo:(_MBPeerTransferDriveTransferInfo *)a3 phaseProgress:(double)a4 phase:(unint64_t)a5
{
  [MBDeviceTransferProgressModel _totalProgressForPhaseProgress:a5 phase:?];
  v10 = v9;
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  v14 = [(MBDeviceTransferProgressModel *)self progressInfo];
  os_unfair_lock_lock(&self->_progressLock);
  v15 = [(MBDeviceTransferProgressModel *)self lastUpdateProgressInfo];
  [v14 progress];
  v17 = v10 - v16 >= 0.005 || a4 >= 1.0;
  if (a5 == 4)
  {
    v20 = [v14 restoreStartDate];

    if (!v20)
    {
      v21 = [(MBDeviceTransferProgressModel *)self restoreStartDate];
      [v14 setRestoreStartDate:v21];
    }

    if (!self->_restoreStarted)
    {
      self->_restoreStarted = 1;
      v22 = [(MBDeviceTransferProgressModel *)self estimator];
      [v22 resetStartTime];
    }

    goto LABEL_12;
  }

  if (a5 != 3)
  {
LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  v18 = [(MBDeviceTransferProgressModel *)self fileTransferStartDate];
  v19 = [v14 fileTransferStartDate];

  if (!v19)
  {
    [v14 setFileTransferStartDate:v18];
  }

LABEL_13:
  if (var0 >= 1)
  {
    if (!self->_fileTransferStarted)
    {
      self->_fileTransferStarted = 1;
      v23 = [(MBDeviceTransferProgressModel *)self estimator];
      [v23 reset];
    }

    [v14 setFilesTransferred:var0];
    if (v17)
    {
      v17 = 1;
    }

    else if (v15)
    {
      v24 = [v15 filesTransferred];
      if (v24 <= var0)
      {
        v25 = var0;
      }

      else
      {
        v25 = v24;
      }

      v17 = (v25 - [v15 filesTransferred]) > 0x63;
    }

    else
    {
      v17 = 0;
    }

    if (var2 <= var0)
    {
      v26 = var0;
    }

    else
    {
      v26 = var2;
    }

    [v14 setTotalFileCount:v26];
  }

  if (var1 >= 1)
  {
    [v14 setBytesTransferred:var1];
    if (v17)
    {
      if (var3 <= var1)
      {
        v27 = var1;
      }

      else
      {
        v27 = var3;
      }

      [v14 setTotalByteCount:v27];
      goto LABEL_44;
    }

    if (v15)
    {
      v28 = [v15 bytesTransferred];
      if (v28 <= var1)
      {
        v29 = var1;
      }

      else
      {
        v29 = v28;
      }

      v30 = v29 - [v15 bytesTransferred];
      if (var3 <= var1)
      {
        v31 = var1;
      }

      else
      {
        v31 = var3;
      }

      [v14 setTotalByteCount:v31];
      if (v30 > 0x5F5E0FF)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (var3 <= var1)
      {
        v34 = var1;
      }

      else
      {
        v34 = var3;
      }

      [v14 setTotalByteCount:v34];
    }

LABEL_58:
    os_unfair_lock_unlock(&self->_progressLock);
    goto LABEL_70;
  }

  if (!v17)
  {
    goto LABEL_58;
  }

LABEL_44:
  v32 = @"unspecified";
  if (a5 <= 2)
  {
    v33 = @"preflight";
    if (a5 != 2)
    {
      v33 = @"unspecified";
    }

    if (a5 == 1)
    {
      v32 = @"init";
    }

    else
    {
      v32 = v33;
    }
  }

  else
  {
    switch(a5)
    {
      case 3uLL:
        v32 = @"backup";
        break;
      case 4uLL:
        v32 = @"restore";
        break;
      case 5uLL:
        __assert_rtn("MBDeviceTransferProgressPhaseDescription", "MBDeviceTransferProgressModel.h", 33, "0");
    }
  }

  [v14 setPhaseDescription:v32];
  [v14 setPhase:a5];
  [v14 progress];
  [v14 setProgress:{fmax(v10, v35)}];
  if ([objc_opt_class() shouldUpdateTimeEstimateForProgressPhase:a5])
  {
    v36 = [(MBDeviceTransferProgressModel *)self estimator];
    v37 = fmax(v10 + -0.1, 0.0);
    *&v37 = v37;
    v38 = [v36 shouldUpdateWithProgress:v37];

    if (v38)
    {
      v39 = [(MBDeviceTransferProgressModel *)self estimator];
      [v14 setMinutesRemaining:{objc_msgSend(v39, "minutesRemaining")}];
    }
  }

  v40 = [v14 copy];

  [(MBDeviceTransferProgressModel *)self setLastUpdateProgressInfo:v40];
  os_unfair_lock_unlock(&self->_progressLock);
  v41 = -1.0;
  if (var1 >= 1)
  {
    if (v18)
    {
      v42 = +[NSDate date];
      [v42 timeIntervalSinceDate:v18];
      v44 = v43;

      if (v44 > 0.0)
      {
        v41 = var1 / v44 / 1000000.0;
      }
    }
  }

  v45 = MBGetDefaultLog();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    [v40 progress];
    v47 = v46;
    v48 = [v40 minutesRemaining];
    v49 = [v40 filesTransferred];
    v50 = [v40 bytesTransferred];
    v51 = [v40 phaseDescription];
    *buf = 134219266;
    v56 = v47;
    v57 = 2048;
    v58 = v48;
    v59 = 2048;
    v60 = v49;
    v61 = 2048;
    v62 = v50;
    v63 = 2048;
    v64 = v41;
    v65 = 2112;
    v66 = v51;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "p:%.2f, m:%ld, f:%llu, b:%llu, r:%.3fMB/s, p:%@", buf, 0x3Eu);

    [v40 progress];
    [v40 minutesRemaining];
    [v40 filesTransferred];
    [v40 bytesTransferred];
    v53 = [v40 phaseDescription];
    _MBLog();
  }

  v52 = [(MBDeviceTransferProgressModel *)self delegate];
  [v52 updatedTotalProgress:v40];

  v15 = v40;
LABEL_70:
}

- (MBDeviceTransferProgressModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end