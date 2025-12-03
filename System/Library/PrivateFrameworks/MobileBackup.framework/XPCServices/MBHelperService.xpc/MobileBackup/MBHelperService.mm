@interface MBHelperService
- (void)localizedStringForCountdownFrom:(id)from toDate:(id)date reply:(id)reply;
- (void)localizedStringForEstimatedTimeRemaining:(double)remaining reply:(id)reply;
- (void)localizedStringFromByteCount:(int64_t)count countStyle:(int64_t)style reply:(id)reply;
- (void)runEncodingTask:(id)task reply:(id)reply;
@end

@implementation MBHelperService

- (void)runEncodingTask:(id)task reply:(id)reply
{
  taskCopy = task;
  replyCopy = reply;
  if (!taskCopy)
  {
    sub_100015454();
  }

  v7 = replyCopy;
  if (![taskCopy compressionMethod])
  {
    sub_100015428();
  }

  v8 = +[MBHelperServiceDelegate sharedInstance];
  [v8 activate];
  if (qword_10002A2C8 != -1)
  {
    sub_1000153E8();
  }

  if (([qword_10002A2C0 getFileSystemRepresentation:v53 maxLength:1025] & 1) == 0)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "getFileSystemRepresentation failed", buf, 2u);
      v32 = "getFileSystemRepresentation failed";
LABEL_15:
      _MBLog(@"E ", v32, v26, v27, v28, v29, v30, v31, v34);
    }

LABEL_16:

    v24 = [MBError errorWithCode:1 format:@"Failed to create tmp file"];
    (v7)[2](v7, v24);
    [v8 idle];
    goto LABEL_17;
  }

  v9 = mkstemp(v53);
  if (v9 == -1)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v33 = *__error();
      *buf = 67109120;
      LODWORD(v42) = v33;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "mkstemp failed: %{errno}d", buf, 8u);
      v34 = *__error();
      v32 = "mkstemp failed: %{errno}d";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = [NSString stringWithUTF8String:v53];
  if (!v11)
  {
    sub_1000153FC();
  }

  v12 = v11;
  [taskCopy setDestinationPath:v11];
  [taskCopy setValidate:1];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sourcePath = [taskCopy sourcePath];
    *buf = 138413570;
    v42 = taskCopy;
    v43 = 2112;
    v44 = sourcePath;
    v45 = 2112;
    v46 = v12;
    v47 = 2048;
    encodingMethod = [taskCopy encodingMethod];
    v49 = 2048;
    compressionMethod = [taskCopy compressionMethod];
    v51 = 1024;
    protectionClass = [taskCopy protectionClass];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Starting task:%@, sourcePath:%@, destinationPath:%@, encodingMethod:%ld, compressionMethod:%ld, pc:%d", buf, 0x3Au);

    sourcePath2 = [taskCopy sourcePath];
    [taskCopy encodingMethod];
    [taskCopy compressionMethod];
    [taskCopy protectionClass];
    _MBLog(@"I ", "Starting task:%@, sourcePath:%@, destinationPath:%@, encodingMethod:%ld, compressionMethod:%ld, pc:%d", v16, v17, v18, v19, v20, v21, taskCopy);
  }

  v22 = dispatch_group_create();
  [taskCopy setGroup:v22];
  [taskCopy start];
  v23 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013C08;
  block[3] = &unk_100024CA0;
  v36 = v12;
  v40 = v10;
  v39 = v7;
  v37 = taskCopy;
  v38 = v8;
  v24 = v12;
  dispatch_group_notify(v22, v23, block);

LABEL_17:
}

- (void)localizedStringForEstimatedTimeRemaining:(double)remaining reply:(id)reply
{
  replyCopy = reply;
  v7 = +[MBHelperServiceDelegate sharedInstance];
  [v7 activate];
  durationFormatter = self->_durationFormatter;
  if (!durationFormatter)
  {
    v9 = objc_alloc_init(NSDateComponentsFormatter);
    v10 = self->_durationFormatter;
    self->_durationFormatter = v9;

    [(NSDateComponentsFormatter *)self->_durationFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)self->_durationFormatter setAllowedUnits:112];
    [(NSDateComponentsFormatter *)self->_durationFormatter setMaximumUnitCount:1];
    [(NSDateComponentsFormatter *)self->_durationFormatter setIncludesApproximationPhrase:1];
    [(NSDateComponentsFormatter *)self->_durationFormatter setIncludesTimeRemainingPhrase:1];
    [(NSDateComponentsFormatter *)self->_durationFormatter setFormattingContext:2];
    durationFormatter = self->_durationFormatter;
  }

  remainingCopy = 60.0;
  if (remaining >= 60.0)
  {
    remainingCopy = remaining;
  }

  v12 = [(NSDateComponentsFormatter *)durationFormatter stringFromTimeInterval:remainingCopy];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [NSNumber numberWithDouble:remaining];
    *buf = 138543618;
    v23 = v12;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MBHelperService generated ETA string %{public}@ from %{public}@", buf, 0x16u);

    v21 = [NSNumber numberWithDouble:remaining];
    _MBLog(@"Db", "MBHelperService generated ETA string %{public}@ from %{public}@", v15, v16, v17, v18, v19, v20, v12);
  }

  replyCopy[2](replyCopy, v12, 0);
  [v7 idle];
}

- (void)localizedStringForCountdownFrom:(id)from toDate:(id)date reply:(id)reply
{
  fromCopy = from;
  dateCopy = date;
  replyCopy = reply;
  v11 = +[MBHelperServiceDelegate sharedInstance];
  [v11 activate];
  countdownFormatter = self->_countdownFormatter;
  if (!countdownFormatter)
  {
    v13 = objc_alloc_init(NSDateComponentsFormatter);
    v14 = self->_countdownFormatter;
    self->_countdownFormatter = v13;

    [(NSDateComponentsFormatter *)self->_countdownFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)self->_countdownFormatter setAllowedUnits:16];
    [(NSDateComponentsFormatter *)self->_countdownFormatter setMaximumUnitCount:1];
    [(NSDateComponentsFormatter *)self->_countdownFormatter setFormattingContext:5];
    countdownFormatter = self->_countdownFormatter;
  }

  v15 = [(NSDateComponentsFormatter *)countdownFormatter stringFromDate:fromCopy toDate:dateCopy];
  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v24 = v15;
    v25 = 2114;
    v26 = fromCopy;
    v27 = 2114;
    v28 = dateCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MBHelperService generated countdown string %{public}@ from %{public}@ to %{public}@", buf, 0x20u);
    _MBLog(@"Db", "MBHelperService generated countdown string %{public}@ from %{public}@ to %{public}@", v17, v18, v19, v20, v21, v22, v15);
  }

  replyCopy[2](replyCopy, v15, 0);
  [v11 idle];
}

- (void)localizedStringFromByteCount:(int64_t)count countStyle:(int64_t)style reply:(id)reply
{
  replyCopy = reply;
  v8 = +[MBHelperServiceDelegate sharedInstance];
  [v8 activate];
  v9 = [NSByteCountFormatter stringFromByteCount:count countStyle:style];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [NSNumber numberWithLongLong:count];
    v12 = [NSNumber numberWithInteger:style];
    *buf = 138543874;
    v22 = v9;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MBHelperService generated byte count string %{public}@ from %{public}@ %{public}@", buf, 0x20u);

    v13 = [NSNumber numberWithLongLong:count];
    v20 = [NSNumber numberWithInteger:style];
    _MBLog(@"Db", "MBHelperService generated byte count string %{public}@ from %{public}@ %{public}@", v14, v15, v16, v17, v18, v19, v9);
  }

  replyCopy[2](replyCopy, v9, 0);
  [v8 idle];
}

@end