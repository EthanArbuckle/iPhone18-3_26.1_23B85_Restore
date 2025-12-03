@interface CUTPowerAssertion
- (CUTPowerAssertion)initWithIdentifier:(id)identifier timeout:(double)timeout;
- (void)dealloc;
@end

@implementation CUTPowerAssertion

- (CUTPowerAssertion)initWithIdentifier:(id)identifier timeout:(double)timeout
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = CUTPowerAssertion;
  v7 = [(CUTPowerAssertion *)&v27 init];
  if (v7)
  {
    v8 = objc_alloc_init(_CUTPowerAssertion);
    internal = v7->_internal;
    v7->_internal = v8;

    v10 = v7->_internal;
    if (timeout == 0.0)
    {
      v11 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, identifierCopy, v10 + 2);
    }

    else
    {
      v11 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", identifierCopy, identifierCopy, 0, 0, timeout, @"TimeoutActionTurnOff", v10 + 2);
    }

    v12 = v11;
    if (v11)
    {
      *(v7->_internal + 2) = 0;
      v13 = +[CUTLog power];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1B23310A8(identifierCopy, v12, v13);
      }

      v7 = 0;
    }

    else
    {
      v14 = [(__CFString *)identifierCopy copy];
      v15 = v7->_internal;
      v16 = v15[2];
      v15[2] = v14;

      v17 = objc_autoreleasePoolPush();
      callStackReturnAddresses = [MEMORY[0x1E696AF00] callStackReturnAddresses];
      v19 = v7->_internal;
      v20 = v19[3];
      v19[3] = callStackReturnAddresses;

      v21 = +[CUTLog power];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = identifierCopy;
        _os_log_impl(&dword_1B2321000, v21, OS_LOG_TYPE_DEFAULT, "Created power assertion {identifier: %{public}@}", buf, 0xCu);
      }

      v22 = +[CUTLog power];
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

      if (v23)
      {
        v24 = +[CUTLog power];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          sub_1B2331130();
        }
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[CUTLog power];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(self->_internal + 2);
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_1B2321000, v3, OS_LOG_TYPE_DEFAULT, "Releasing power assertion {identifier: %{public}@}", buf, 0xCu);
  }

  v5 = +[CUTLog power];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = +[CUTLog power];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1B2331130();
    }
  }

  v8 = *(self->_internal + 2);
  if (v8)
  {
    v9 = IOPMAssertionRelease(v8);
    if (v9)
    {
      v10 = v9;
      v11 = +[CUTLog power];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1B23311B8(&self->_internal, v10, v11);
      }
    }
  }

  v13.receiver = self;
  v13.super_class = CUTPowerAssertion;
  [(CUTPowerAssertion *)&v13 dealloc];
  v12 = *MEMORY[0x1E69E9840];
}

@end