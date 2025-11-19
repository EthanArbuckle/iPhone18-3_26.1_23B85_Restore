@interface MBPowerAssertion
- (MBPowerAssertion)initWithName:(id)a3 timeout:(double)a4;
- (void)_drop;
- (void)dealloc;
- (void)drop;
- (void)hold;
@end

@implementation MBPowerAssertion

- (MBPowerAssertion)initWithName:(id)a3 timeout:(double)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = MBPowerAssertion;
  v8 = [(MBPowerAssertion *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_timeout = a4;
    v10 = objc_opt_class();
    Name = class_getName(v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(Name, v12);
    queue = v9->_queue;
    v9->_queue = v13;

    v9->_assertionID = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(MBPowerAssertion *)self _drop];
  v3.receiver = self;
  v3.super_class = MBPowerAssertion;
  [(MBPowerAssertion *)&v3 dealloc];
}

- (void)hold
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002678C0;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_drop
{
  assertionID = self->_assertionID;
  if (assertionID)
  {
    v4 = IOPMAssertionRelease(assertionID);
    v5 = MBGetDefaultLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        name = self->_name;
        v8 = self->_assertionID;
        *buf = 138413058;
        v16 = @"NoIdleSleepAssertion";
        v17 = 2112;
        v18 = name;
        v19 = 1024;
        v20 = v8;
        v21 = 1024;
        v22 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to drop %@, n:%@, id:%i - IOPMAssertionRelease() returned %#x", buf, 0x22u);
        v13 = self->_assertionID;
        v11 = self->_name;
        _MBLog();
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = self->_name;
        v10 = self->_assertionID;
        *buf = 138412802;
        v16 = @"NoIdleSleepAssertion";
        v17 = 2112;
        v18 = v9;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Dropped %@, n:%@, id:%i", buf, 0x1Cu);
        v12 = self->_name;
        v14 = self->_assertionID;
        _MBLog();
      }

      self->_assertionID = 0;
    }
  }
}

- (void)drop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100267DAC;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end