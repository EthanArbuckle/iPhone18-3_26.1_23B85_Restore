@interface IXTerminationAssertion
- (BOOL)acquireAssertion:(id *)a3;
- (void)assertionTargetProcessDidExit:(id)a3;
- (void)dealloc;
- (void)setTermAssertion:(id)a3;
@end

@implementation IXTerminationAssertion

- (void)setTermAssertion:(id)a3
{
  v5 = a3;
  termAssertion = self->_termAssertion;
  if (v5 && termAssertion == v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10009CD58();
    }
  }

  else
  {
    if (termAssertion)
    {
      [(RBSTerminationAssertion *)termAssertion invalidate];
    }

    objc_storeStrong(&self->_termAssertion, a3);
  }
}

- (BOOL)acquireAssertion:(id *)a3
{
  v5 = [(IXTerminationAssertion *)self termAssertion];
  v15 = 0;
  v6 = [v5 acquireWithError:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = [(IXTerminationAssertion *)self waitForAssertionSemaphore];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009CEFC(self, v7, v9);
    }

    v10 = [(IXTerminationAssertion *)self termAssertion];
    v12 = sub_1000405FC("[IXTerminationAssertion acquireAssertion:]", 94, @"IXErrorDomain", 0x13uLL, v7, 0, @"Failed to acquire termination assertion %@", v11, v10);

    if (a3)
    {
      v13 = v12;
      *a3 = v12;
    }

    v7 = v12;
  }

  return v6;
}

- (void)dealloc
{
  [(IXTerminationAssertion *)self setTermAssertion:0];
  v3.receiver = self;
  v3.super_class = IXTerminationAssertion;
  [(IXTerminationAssertion *)&v3 dealloc];
}

- (void)assertionTargetProcessDidExit:(id)a3
{
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10009CFB0();
  }

  v5 = [(IXTerminationAssertion *)self termAssertion];

  if (v5)
  {
    v6 = [(IXTerminationAssertion *)self waitForAssertionSemaphore];
    dispatch_semaphore_signal(v6);
  }

  else
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[IXTerminationAssertion assertionTargetProcessDidExit:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: We didn't have a termination assertion that we're tracking, so not acting on the callback from RBS", &v7, 0xCu);
    }
  }
}

@end