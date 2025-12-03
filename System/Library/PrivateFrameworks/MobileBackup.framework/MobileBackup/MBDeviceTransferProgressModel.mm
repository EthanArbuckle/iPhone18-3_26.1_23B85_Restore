@interface MBDeviceTransferProgressModel
+ (double)_totalProgressForPhaseProgress:(double)progress phase:(unint64_t)phase;
- (MBDeviceTransferProgressModel)initWithEstimator:(id)estimator;
- (MBDeviceTransferProgressModelDelegate)delegate;
- (void)_updateTotalProgressWithTransferInfo:(_MBPeerTransferDriveTransferInfo *)info phaseProgress:(double)progress phase:(unint64_t)phase;
- (void)updateTotalProgressWithPhase:(unint64_t)phase transferInfo:(_MBPeerTransferDriveTransferInfo *)info;
- (void)updateTotalProgressWithPhaseProgress:(double)progress phase:(unint64_t)phase;
@end

@implementation MBDeviceTransferProgressModel

+ (double)_totalProgressForPhaseProgress:(double)progress phase:(unint64_t)phase
{
  v4 = 5;
  if (phase + 1 < 5)
  {
    v4 = phase + 1;
  }

  return dbl_1002BA230[phase] + progress * (dbl_1002BA230[v4] - dbl_1002BA230[phase]);
}

- (MBDeviceTransferProgressModel)initWithEstimator:(id)estimator
{
  estimatorCopy = estimator;
  v11.receiver = self;
  v11.super_class = MBDeviceTransferProgressModel;
  v6 = [(MBDeviceTransferProgressModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_estimator, estimator);
    v8 = objc_opt_new();
    progressInfo = v7->_progressInfo;
    v7->_progressInfo = v8;

    v7->_progressLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)updateTotalProgressWithPhaseProgress:(double)progress phase:(unint64_t)phase
{
  v7 = objc_autoreleasePoolPush();
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v9[0] = v8;
  v9[1] = v8;
  [(MBDeviceTransferProgressModel *)self _updateTotalProgressWithTransferInfo:v9 phaseProgress:phase phase:progress];
  objc_autoreleasePoolPop(v7);
}

- (void)updateTotalProgressWithPhase:(unint64_t)phase transferInfo:(_MBPeerTransferDriveTransferInfo *)info
{
  v7 = objc_autoreleasePoolPush();
  v8 = *&info->var2;
  v9 = fmin(info->var1 / info->var3, 1.0);
  v10[0] = *&info->var0;
  v10[1] = v8;
  [(MBDeviceTransferProgressModel *)self _updateTotalProgressWithTransferInfo:v10 phaseProgress:phase phase:v9];
  objc_autoreleasePoolPop(v7);
}

- (void)_updateTotalProgressWithTransferInfo:(_MBPeerTransferDriveTransferInfo *)info phaseProgress:(double)progress phase:(unint64_t)phase
{
  [MBDeviceTransferProgressModel _totalProgressForPhaseProgress:phase phase:?];
  v10 = v9;
  var0 = info->var0;
  var1 = info->var1;
  var2 = info->var2;
  var3 = info->var3;
  progressInfo = [(MBDeviceTransferProgressModel *)self progressInfo];
  os_unfair_lock_lock(&self->_progressLock);
  lastUpdateProgressInfo = [(MBDeviceTransferProgressModel *)self lastUpdateProgressInfo];
  [progressInfo progress];
  v17 = v10 - v16 >= 0.005 || progress >= 1.0;
  if (phase == 4)
  {
    restoreStartDate = [progressInfo restoreStartDate];

    if (!restoreStartDate)
    {
      restoreStartDate2 = [(MBDeviceTransferProgressModel *)self restoreStartDate];
      [progressInfo setRestoreStartDate:restoreStartDate2];
    }

    if (!self->_restoreStarted)
    {
      self->_restoreStarted = 1;
      estimator = [(MBDeviceTransferProgressModel *)self estimator];
      [estimator resetStartTime];
    }

    goto LABEL_12;
  }

  if (phase != 3)
  {
LABEL_12:
    fileTransferStartDate = 0;
    goto LABEL_13;
  }

  fileTransferStartDate = [(MBDeviceTransferProgressModel *)self fileTransferStartDate];
  fileTransferStartDate2 = [progressInfo fileTransferStartDate];

  if (!fileTransferStartDate2)
  {
    [progressInfo setFileTransferStartDate:fileTransferStartDate];
  }

LABEL_13:
  if (var0 >= 1)
  {
    if (!self->_fileTransferStarted)
    {
      self->_fileTransferStarted = 1;
      estimator2 = [(MBDeviceTransferProgressModel *)self estimator];
      [estimator2 reset];
    }

    [progressInfo setFilesTransferred:var0];
    if (v17)
    {
      v17 = 1;
    }

    else if (lastUpdateProgressInfo)
    {
      filesTransferred = [lastUpdateProgressInfo filesTransferred];
      if (filesTransferred <= var0)
      {
        v25 = var0;
      }

      else
      {
        v25 = filesTransferred;
      }

      v17 = (v25 - [lastUpdateProgressInfo filesTransferred]) > 0x63;
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

    [progressInfo setTotalFileCount:v26];
  }

  if (var1 >= 1)
  {
    [progressInfo setBytesTransferred:var1];
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

      [progressInfo setTotalByteCount:v27];
      goto LABEL_44;
    }

    if (lastUpdateProgressInfo)
    {
      bytesTransferred = [lastUpdateProgressInfo bytesTransferred];
      if (bytesTransferred <= var1)
      {
        v29 = var1;
      }

      else
      {
        v29 = bytesTransferred;
      }

      v30 = v29 - [lastUpdateProgressInfo bytesTransferred];
      if (var3 <= var1)
      {
        v31 = var1;
      }

      else
      {
        v31 = var3;
      }

      [progressInfo setTotalByteCount:v31];
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

      [progressInfo setTotalByteCount:v34];
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
  if (phase <= 2)
  {
    v33 = @"preflight";
    if (phase != 2)
    {
      v33 = @"unspecified";
    }

    if (phase == 1)
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
    switch(phase)
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

  [progressInfo setPhaseDescription:v32];
  [progressInfo setPhase:phase];
  [progressInfo progress];
  [progressInfo setProgress:{fmax(v10, v35)}];
  if ([objc_opt_class() shouldUpdateTimeEstimateForProgressPhase:phase])
  {
    estimator3 = [(MBDeviceTransferProgressModel *)self estimator];
    v37 = fmax(v10 + -0.1, 0.0);
    *&v37 = v37;
    v38 = [estimator3 shouldUpdateWithProgress:v37];

    if (v38)
    {
      estimator4 = [(MBDeviceTransferProgressModel *)self estimator];
      [progressInfo setMinutesRemaining:{objc_msgSend(estimator4, "minutesRemaining")}];
    }
  }

  v40 = [progressInfo copy];

  [(MBDeviceTransferProgressModel *)self setLastUpdateProgressInfo:v40];
  os_unfair_lock_unlock(&self->_progressLock);
  v41 = -1.0;
  if (var1 >= 1)
  {
    if (fileTransferStartDate)
    {
      v42 = +[NSDate date];
      [v42 timeIntervalSinceDate:fileTransferStartDate];
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
    minutesRemaining = [v40 minutesRemaining];
    filesTransferred2 = [v40 filesTransferred];
    bytesTransferred2 = [v40 bytesTransferred];
    phaseDescription = [v40 phaseDescription];
    *buf = 134219266;
    v56 = v47;
    v57 = 2048;
    v58 = minutesRemaining;
    v59 = 2048;
    v60 = filesTransferred2;
    v61 = 2048;
    v62 = bytesTransferred2;
    v63 = 2048;
    v64 = v41;
    v65 = 2112;
    v66 = phaseDescription;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "p:%.2f, m:%ld, f:%llu, b:%llu, r:%.3fMB/s, p:%@", buf, 0x3Eu);

    [v40 progress];
    [v40 minutesRemaining];
    [v40 filesTransferred];
    [v40 bytesTransferred];
    phaseDescription2 = [v40 phaseDescription];
    _MBLog();
  }

  delegate = [(MBDeviceTransferProgressModel *)self delegate];
  [delegate updatedTotalProgress:v40];

  lastUpdateProgressInfo = v40;
LABEL_70:
}

- (MBDeviceTransferProgressModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end