@interface MRDLockScreenAssertion
- (MRDLockScreenAssertion)init;
- (void)createAssertion;
- (void)dealloc;
- (void)delayCreateAssertion;
- (void)setAssertion:(id)a3;
@end

@implementation MRDLockScreenAssertion

- (MRDLockScreenAssertion)init
{
  v5.receiver = self;
  v5.super_class = MRDLockScreenAssertion;
  v2 = [(MRDLockScreenAssertion *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MRDLockScreenAssertion *)v2 createAssertion];
  }

  return v3;
}

- (void)setAssertion:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Activating lockScreenAssertion", buf, 2u);
    }

    v7 = [[MROSTransaction alloc] initWithName:@"com.apple.mediaremoted.LockScreen"];
    transaction = self->_transaction;
    self->_transaction = v7;

    v9 = self->_transaction;
    MRRegisterTransaction();
  }

  else
  {
    if (v6)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Deactivating lockScreenAssertion", v12, 2u);
    }

    v10 = self->_transaction;
    self->_transaction = 0;
  }

  assertion = self->_assertion;
  self->_assertion = v4;
}

- (void)createAssertion
{
  objc_initWeak(&location, self);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = qword_100529408;
  v21 = qword_100529408;
  if (!qword_100529408)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000FABF0;
    v16 = &unk_1004B8728;
    v17 = &v18;
    sub_1000FABF0(&v13);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = qword_100529418;
  v21 = qword_100529418;
  if (!qword_100529418)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000FADBC;
    v16 = &unk_1004B8728;
    v17 = &v18;
    v6 = sub_1000FAC48();
    v7 = dlsym(v6, "SBSLockScreenContentAssertionSlotPlatter");
    *(v17[1] + 24) = v7;
    qword_100529418 = *(v17[1] + 24);
    v5 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (v5)
  {
    v8 = *v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FA964;
    v10[3] = &unk_1004B7D50;
    objc_copyWeak(&v11, &location);
    v9 = [v3 acquireContentProviderAssertionForType:1 slot:v8 identifier:@"SBDashBoardNowPlayingAssertionIdentifier" errorHandler:v10];
    [(MRDLockScreenAssertion *)self setAssertion:v9];

    if (!self->_assertion)
    {
      [(MRDLockScreenAssertion *)self delayCreateAssertion];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

- (void)delayCreateAssertion
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 1000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FAB00;
  v3[3] = &unk_1004B8280;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(MRDLockScreenAssertion *)self setAssertion:0];
  v3.receiver = self;
  v3.super_class = MRDLockScreenAssertion;
  [(MRDLockScreenAssertion *)&v3 dealloc];
}

@end