@interface MADScopedWatchdog
- (MADScopedWatchdog)init;
- (void)dealloc;
@end

@implementation MADScopedWatchdog

- (MADScopedWatchdog)init
{
  v9.receiver = self;
  v9.super_class = MADScopedWatchdog;
  v2 = [(MADScopedWatchdog *)&v9 init];
  if (v2)
  {
    v3 = +[VCPWatchdog sharedWatchdog];
    internalWatchdog = v2->_internalWatchdog;
    v2->_internalWatchdog = v3;

    if (qword_1002B83C0 != -1)
    {
      sub_1000FF220();
    }

    v5 = qword_1002B83C8;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FEFA8;
    block[3] = &unk_100285BC0;
    v8 = v2;
    dispatch_sync(v5, block);
  }

  return v2;
}

- (void)dealloc
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FF128;
  block[3] = &unk_100285BC0;
  block[4] = self;
  dispatch_sync(qword_1002B83C8, block);
  v3.receiver = self;
  v3.super_class = MADScopedWatchdog;
  [(MADScopedWatchdog *)&v3 dealloc];
}

@end