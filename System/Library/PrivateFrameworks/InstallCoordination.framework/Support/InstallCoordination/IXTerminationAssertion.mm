@interface IXTerminationAssertion
- (BOOL)acquireAssertion:(id *)assertion;
- (void)assertionTargetProcessDidExit:(id)exit;
- (void)dealloc;
- (void)setTermAssertion:(id)assertion;
@end

@implementation IXTerminationAssertion

- (void)setTermAssertion:(id)assertion
{
  assertionCopy = assertion;
  termAssertion = self->_termAssertion;
  if (assertionCopy && termAssertion == assertionCopy)
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

    objc_storeStrong(&self->_termAssertion, assertion);
  }
}

- (BOOL)acquireAssertion:(id *)assertion
{
  termAssertion = [(IXTerminationAssertion *)self termAssertion];
  v15 = 0;
  v6 = [termAssertion acquireWithError:&v15];
  v7 = v15;

  if (v6)
  {
    waitForAssertionSemaphore = [(IXTerminationAssertion *)self waitForAssertionSemaphore];
    dispatch_semaphore_wait(waitForAssertionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009CEFC(self, v7, v9);
    }

    termAssertion2 = [(IXTerminationAssertion *)self termAssertion];
    v12 = sub_1000405FC("[IXTerminationAssertion acquireAssertion:]", 94, @"IXErrorDomain", 0x13uLL, v7, 0, @"Failed to acquire termination assertion %@", v11, termAssertion2);

    if (assertion)
    {
      v13 = v12;
      *assertion = v12;
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

- (void)assertionTargetProcessDidExit:(id)exit
{
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10009CFB0();
  }

  termAssertion = [(IXTerminationAssertion *)self termAssertion];

  if (termAssertion)
  {
    waitForAssertionSemaphore = [(IXTerminationAssertion *)self waitForAssertionSemaphore];
    dispatch_semaphore_signal(waitForAssertionSemaphore);
  }

  else
  {
    waitForAssertionSemaphore = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(waitForAssertionSemaphore, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[IXTerminationAssertion assertionTargetProcessDidExit:]";
      _os_log_impl(&_mh_execute_header, waitForAssertionSemaphore, OS_LOG_TYPE_DEFAULT, "%s: We didn't have a termination assertion that we're tracking, so not acting on the callback from RBS", &v7, 0xCu);
    }
  }
}

@end