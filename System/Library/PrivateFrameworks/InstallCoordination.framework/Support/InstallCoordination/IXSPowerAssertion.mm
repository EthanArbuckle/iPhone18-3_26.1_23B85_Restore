@interface IXSPowerAssertion
- (IXSPowerAssertion)initWithAssertionName:(id)name details:(id)details;
- (id)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IXSPowerAssertion

- (IXSPowerAssertion)initWithAssertionName:(id)name details:(id)details
{
  nameCopy = name;
  detailsCopy = details;
  v17.receiver = self;
  v17.super_class = IXSPowerAssertion;
  v8 = [(IXSPowerAssertion *)&v17 init];
  if (v8)
  {
    v9 = [(__CFString *)nameCopy copy];
    assertionName = v8->_assertionName;
    v8->_assertionName = v9;

    AssertionID = 0;
    v11 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", nameCopy, detailsCopy, 0, 0, 0.0, 0, &AssertionID);
    v12 = sub_1000031B0(off_100121958);
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000979CC(nameCopy, v11, v13);
      }

      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "[IXSPowerAssertion initWithAssertionName:details:]";
        v20 = 2112;
        v21 = nameCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Acquired power assertion %@", buf, 0x16u);
      }

      v14 = AssertionID;
    }

    v8->_assertion = v14;
  }

  return v8;
}

- (void)invalidate
{
  assertion = self->_assertion;
  if (assertion)
  {
    v4 = IOPMAssertionRelease(assertion);
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[IXSPowerAssertion invalidate]";
        v11 = 1024;
        LODWORD(v12) = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: IOPMAssertionRelease returned %d", &v9, 0x12u);
      }
    }

    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      assertionName = self->_assertionName;
      v9 = 136315394;
      v10 = "[IXSPowerAssertion invalidate]";
      v11 = 2112;
      v12 = assertionName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Released power assertion %@", &v9, 0x16u);
    }

    self->_assertion = 0;
  }
}

- (void)dealloc
{
  [(IXSPowerAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = IXSPowerAssertion;
  [(IXSPowerAssertion *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  assertionName = self->_assertionName;
  v7 = 89;
  if (!self->_assertion)
  {
    v7 = 78;
  }

  v8 = [NSString stringWithFormat:@"<%@<%p> %@ valid:%c>", v4, self, self->_assertionName, v7];

  return v8;
}

@end