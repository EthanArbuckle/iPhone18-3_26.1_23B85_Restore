@interface MBHelperService
- (void)localizedStringForCountdownFrom:(id)a3 toDate:(id)a4 reply:(id)a5;
- (void)localizedStringForEstimatedTimeRemaining:(double)a3 reply:(id)a4;
- (void)localizedStringFromByteCount:(int64_t)a3 countStyle:(int64_t)a4 reply:(id)a5;
- (void)runEncodingTask:(id)a3 reply:(id)a4;
@end

@implementation MBHelperService

- (void)runEncodingTask:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    sub_100015454();
  }

  v7 = v6;
  if (![v5 compressionMethod])
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
  [v5 setDestinationPath:v11];
  [v5 setValidate:1];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v5 sourcePath];
    *buf = 138413570;
    v42 = v5;
    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v12;
    v47 = 2048;
    v48 = [v5 encodingMethod];
    v49 = 2048;
    v50 = [v5 compressionMethod];
    v51 = 1024;
    v52 = [v5 protectionClass];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Starting task:%@, sourcePath:%@, destinationPath:%@, encodingMethod:%ld, compressionMethod:%ld, pc:%d", buf, 0x3Au);

    v15 = [v5 sourcePath];
    [v5 encodingMethod];
    [v5 compressionMethod];
    [v5 protectionClass];
    _MBLog(@"I ", "Starting task:%@, sourcePath:%@, destinationPath:%@, encodingMethod:%ld, compressionMethod:%ld, pc:%d", v16, v17, v18, v19, v20, v21, v5);
  }

  v22 = dispatch_group_create();
  [v5 setGroup:v22];
  [v5 start];
  v23 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013C08;
  block[3] = &unk_100024CA0;
  v36 = v12;
  v40 = v10;
  v39 = v7;
  v37 = v5;
  v38 = v8;
  v24 = v12;
  dispatch_group_notify(v22, v23, block);

LABEL_17:
}

- (void)localizedStringForEstimatedTimeRemaining:(double)a3 reply:(id)a4
{
  v6 = a4;
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

  v11 = 60.0;
  if (a3 >= 60.0)
  {
    v11 = a3;
  }

  v12 = [(NSDateComponentsFormatter *)durationFormatter stringFromTimeInterval:v11];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [NSNumber numberWithDouble:a3];
    *buf = 138543618;
    v23 = v12;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MBHelperService generated ETA string %{public}@ from %{public}@", buf, 0x16u);

    v21 = [NSNumber numberWithDouble:a3];
    _MBLog(@"Db", "MBHelperService generated ETA string %{public}@ from %{public}@", v15, v16, v17, v18, v19, v20, v12);
  }

  v6[2](v6, v12, 0);
  [v7 idle];
}

- (void)localizedStringForCountdownFrom:(id)a3 toDate:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v15 = [(NSDateComponentsFormatter *)countdownFormatter stringFromDate:v8 toDate:v9];
  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v24 = v15;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "MBHelperService generated countdown string %{public}@ from %{public}@ to %{public}@", buf, 0x20u);
    _MBLog(@"Db", "MBHelperService generated countdown string %{public}@ from %{public}@ to %{public}@", v17, v18, v19, v20, v21, v22, v15);
  }

  v10[2](v10, v15, 0);
  [v11 idle];
}

- (void)localizedStringFromByteCount:(int64_t)a3 countStyle:(int64_t)a4 reply:(id)a5
{
  v7 = a5;
  v8 = +[MBHelperServiceDelegate sharedInstance];
  [v8 activate];
  v9 = [NSByteCountFormatter stringFromByteCount:a3 countStyle:a4];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [NSNumber numberWithLongLong:a3];
    v12 = [NSNumber numberWithInteger:a4];
    *buf = 138543874;
    v22 = v9;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MBHelperService generated byte count string %{public}@ from %{public}@ %{public}@", buf, 0x20u);

    v13 = [NSNumber numberWithLongLong:a3];
    v20 = [NSNumber numberWithInteger:a4];
    _MBLog(@"Db", "MBHelperService generated byte count string %{public}@ from %{public}@ %{public}@", v14, v15, v16, v17, v18, v19, v9);
  }

  v7[2](v7, v9, 0);
  [v8 idle];
}

@end