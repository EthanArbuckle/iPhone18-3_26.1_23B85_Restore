@interface MDMPowerAssertion
+ (id)_currentAssertions;
+ (id)_dateFormatter;
+ (id)assertionDescriptions;
- (MDMPowerAssertion)initWithReason:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation MDMPowerAssertion

- (MDMPowerAssertion)initWithReason:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MDMPowerAssertion;
  v5 = [(DMCPowerAssertion *)&v17 initWithReason:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    if (+[DMCMultiUserModeUtilities isSharediPad])
    {
      v8 = [MEMORY[0x1E69DF090] taskWithName:@"MDMBlockingTask" reason:v4];
      blockingTask = v5->_blockingTask;
      v5->_blockingTask = v8;

      [(UMUserSwitchBlockingTask *)v5->_blockingTask begin];
    }

    else
    {
      v10 = DMCLogObjects()[2];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v4;
        _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_DEFAULT, "Starting MDM power assertion with reason: %{public}@", buf, 0xCu);
      }
    }
  }

  v11 = _assertionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MDMPowerAssertion_initWithReason___block_invoke;
  block[3] = &unk_1E7ADC760;
  v12 = v5;
  v16 = v12;
  dispatch_sync(v11, block);

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __36__MDMPowerAssertion_initWithReason___block_invoke(uint64_t a1)
{
  v2 = +[MDMPowerAssertion _currentAssertions];
  [v2 addPointer:*(a1 + 32)];
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (+[DMCMultiUserModeUtilities isSharediPad])
  {
    [(UMUserSwitchBlockingTask *)self->_blockingTask end];
  }

  else
  {
    v3 = DMCLogObjects()[2];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(DMCProcessAssertion *)self reason];
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "Ending MDM power assertion with reason: %{public}@", buf, 0xCu);
    }
  }

  v6 = _assertionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MDMPowerAssertion_dealloc__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v6, block);

  v8.receiver = self;
  v8.super_class = MDMPowerAssertion;
  [(DMCPowerAssertion *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

void __28__MDMPowerAssertion_dealloc__block_invoke(uint64_t a1)
{
  v7 = +[MDMPowerAssertion _currentAssertions];
  v2 = [v7 count];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = [v7 pointerAtIndex:v4];
      v6 = v5;
      if (v5 == *(a1 + 32))
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }

    [v7 removePointerAtIndex:v4];
  }

LABEL_7:
}

+ (id)assertionDescriptions
{
  v3 = objc_opt_new();
  v4 = _assertionQueue();
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __42__MDMPowerAssertion_assertionDescriptions__block_invoke;
  v11 = &unk_1E7ADCF00;
  v12 = v3;
  v13 = a1;
  v5 = v3;
  dispatch_sync(v4, &v8);

  v6 = [v5 copy];

  return v6;
}

void __42__MDMPowerAssertion_assertionDescriptions__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 40) _currentAssertions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (v7)
        {
          v8 = *(a1 + 32);
          v9 = [v7 description];
          [v8 addObject:v9];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [v3 _dateFormatter];
  v5 = [(MDMPowerAssertion *)self creationDate];
  v6 = [v4 stringFromDate:v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(DMCProcessAssertion *)self reason];
  v9 = [v7 stringWithFormat:@"<%@: %p {\n\tReason  : %@\n\tCreated : %@\n}>", v3, self, v8, v6];

  return v9;
}

+ (id)_currentAssertions
{
  if (_currentAssertions_onceToken != -1)
  {
    +[MDMPowerAssertion _currentAssertions];
  }

  v3 = _currentAssertions_currentAssertions;

  return v3;
}

uint64_t __39__MDMPowerAssertion__currentAssertions__block_invoke()
{
  _currentAssertions_currentAssertions = [MEMORY[0x1E696AE08] weakObjectsPointerArray];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_dateFormatter
{
  if (_dateFormatter_onceToken != -1)
  {
    +[MDMPowerAssertion _dateFormatter];
  }

  v3 = _dateFormatter_dateFormatter;

  return v3;
}

uint64_t __35__MDMPowerAssertion__dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _dateFormatter_dateFormatter;
  _dateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [_dateFormatter_dateFormatter setLocale:v2];

  v3 = _dateFormatter_dateFormatter;

  return [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
}

@end