@interface DDRUIPresenter
- (DDRUIPresenter)init;
- (void)setProgress:(double)a3;
- (void)setProgressBarVisible:(BOOL)a3;
- (void)show;
@end

@implementation DDRUIPresenter

- (DDRUIPresenter)init
{
  v3.receiver = self;
  v3.super_class = DDRUIPresenter;
  result = [(DDRUIPresenter *)&v3 init];
  if (result)
  {
    result->_progress = 0.0;
  }

  return result;
}

- (void)setProgressBarVisible:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting progress bar visible: %d", buf, 8u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001070;
  v6[3] = &unk_10000C2D8;
  v6[4] = self;
  v7 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)show
{
  v3 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Show progress UI", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000011DC;
  block[3] = &unk_10000C300;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setProgress:(double)a3
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001320;
  v5[3] = &unk_10000C328;
  v6[1] = *&a3;
  v5[4] = self;
  objc_copyWeak(v6, &location);
  dispatch_async(&_dispatch_main_q, v5);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

@end