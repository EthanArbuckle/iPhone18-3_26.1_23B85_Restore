@interface MTPowerAssertion
- (MTPowerAssertion)initWithName:(id)a3 assertionTimeout:(double)a4;
- (void)dealloc;
- (void)releaseAssertion;
- (void)takeAssertion;
@end

@implementation MTPowerAssertion

- (MTPowerAssertion)initWithName:(id)a3 assertionTimeout:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MTPowerAssertion;
  v8 = [(MTPowerAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_assertionTimeout = a4;
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
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"IOReturn __IOPMAssertionCreateWithProperties(CFDictionaryRef, IOPMAssertionID *)"}];
  [v0 handleFailureInFunction:v1 file:@"MTPowerAssertion.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)releaseAssertion
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Releasing power assert for %{public}@. when assertion already released.", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end