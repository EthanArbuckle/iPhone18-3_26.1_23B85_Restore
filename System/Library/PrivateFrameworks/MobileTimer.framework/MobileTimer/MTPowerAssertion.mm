@interface MTPowerAssertion
- (MTPowerAssertion)initWithName:(id)name assertionTimeout:(double)timeout;
- (void)dealloc;
- (void)releaseAssertion;
- (void)takeAssertion;
@end

@implementation MTPowerAssertion

- (MTPowerAssertion)initWithName:(id)name assertionTimeout:(double)timeout
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MTPowerAssertion;
  v8 = [(MTPowerAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_assertionTimeout = timeout;
    v9->_assertionID = 0;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_assertionID)
  {
    [(MTPowerAssertion *)self releaseAssertion];
  }

  v3.receiver = self;
  v3.super_class = MTPowerAssertion;
  [(MTPowerAssertion *)&v3 dealloc];
}

- (void)takeAssertion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"IOReturn __IOPMAssertionCreateWithProperties(CFDictionaryRef, IOPMAssertionID *)"}];
  [currentHandler handleFailureInFunction:v1 file:@"MTPowerAssertion.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)releaseAssertion
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(self + 16);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Releasing power assert for %{public}@. when assertion already released.", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end