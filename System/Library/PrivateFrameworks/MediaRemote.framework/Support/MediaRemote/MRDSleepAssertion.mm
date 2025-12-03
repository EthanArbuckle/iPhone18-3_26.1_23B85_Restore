@interface MRDSleepAssertion
- (MRDSleepAssertion)initWithName:(id)name timeout:(double)timeout;
- (void)invalidate;
@end

@implementation MRDSleepAssertion

- (MRDSleepAssertion)initWithName:(id)name timeout:(double)timeout
{
  nameCopy = name;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    nameCopy2 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initialization sleep assertion %@", buf, 0xCu);
  }

  v18.receiver = self;
  v18.super_class = MRDSleepAssertion;
  v9 = [(MRDSleepAssertion *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v10->_assertionID = 0;
    v11 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"com.apple.mediaremote.powerassertion", 0, nameCopy, 0, timeout, @"TimeoutActionRelease", &v10->_assertionID);
    assertionID = v10->_assertionID;
    p_super = _MRLogForCategory();
    v14 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
    if (assertionID)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      if (v14)
      {
        name = v10->_name;
        *buf = 138412546;
        nameCopy2 = name;
        v21 = 2048;
        timeoutCopy = timeout;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Taking sleep assertion %@ for a max of %lf seconds", buf, 0x16u);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Could not take sleep assertion", buf, 2u);
      }

      p_super = &v10->super;
      v10 = 0;
    }
  }

  return v10;
}

- (void)invalidate
{
  v3 = IOPMAssertionRelease(self->_assertionID);
  v4 = _MRLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      name = self->_name;
      v9 = 138412290;
      v10 = name;
      v7 = "Could not release sleep assertion %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = self->_name;
    v9 = 138412290;
    v10 = v8;
    v7 = "Releasing sleep assertion %@";
    goto LABEL_6;
  }
}

@end