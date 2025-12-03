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
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [IXTerminationAssertion setTermAssertion:];
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
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(IXTerminationAssertion *)self acquireAssertion:v7, v9];
    }

    termAssertion2 = [(IXTerminationAssertion *)self termAssertion];
    v12 = _CreateError("[IXTerminationAssertion acquireAssertion:]", 94, @"IXErrorDomain", 0x13uLL, v7, 0, @"Failed to acquire termination assertion %@", v11, termAssertion2);

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
  v10 = *MEMORY[0x1E69E9840];
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [IXTerminationAssertion assertionTargetProcessDidExit:];
  }

  termAssertion = [(IXTerminationAssertion *)self termAssertion];

  if (termAssertion)
  {
    waitForAssertionSemaphore = [(IXTerminationAssertion *)self waitForAssertionSemaphore];
    dispatch_semaphore_signal(waitForAssertionSemaphore);
  }

  else
  {
    waitForAssertionSemaphore = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(waitForAssertionSemaphore, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[IXTerminationAssertion assertionTargetProcessDidExit:]";
      _os_log_impl(&dword_1DA47A000, waitForAssertionSemaphore, OS_LOG_TYPE_DEFAULT, "%s: We didn't have a termination assertion that we're tracking, so not acting on the callback from RBS", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setTermAssertion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_FAULT, "%s: Attempting to set the same termination assertion for %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_terminationAssertionForBundleIDs:description:terminationResistance:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  v5 = 0;
  _os_log_error_impl(&dword_1DA47A000, v1, OS_LOG_TYPE_ERROR, "%s: Failed to create termination assertion for predicate %@ : %@", v3, 0x20u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initForBundleIDs:(os_log_t)log description:terminationResistance:error:.cold.1(os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = "[IXTerminationAssertion initForBundleIDs:description:terminationResistance:error:]";
  v4 = 2080;
  v5 = "[IXTerminationAssertion initForBundleIDs:description:terminationResistance:error:]";
  v6 = 2112;
  v7 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: %s failed in init : %@", &v2, 0x20u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)acquireAssertion:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 termAssertion];
  v8[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v9 = v6;
  v10 = a2;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Failed to acquire termination assertion %@ : %@", v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)assertionTargetProcessDidExit:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_DEBUG, "%s: RBS termination assertion observer called for %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end