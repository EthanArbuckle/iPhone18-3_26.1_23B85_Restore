@interface CPLPowerAssertion
+ (BOOL)hasEnoughPower;
+ (id)powerAssertionStatus;
+ (void)_doProtected:(id)a3;
+ (void)_releaseAssertion;
+ (void)_retainAssertion;
+ (void)disableSleep;
+ (void)enableSleep;
+ (void)setHasEnoughPower:(BOOL)a3;
@end

@implementation CPLPowerAssertion

+ (void)enableSleep
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__CPLPowerAssertion_enableSleep__block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = a2;
  v2[5] = a1;
  [a1 _doProtected:v2];
}

+ (void)_releaseAssertion
{
  if ((_invalidPowerAssertion & 1) != 0 || _powerAssertionId)
  {
    v2 = CFAbsoluteTimeGetCurrent() - *&_powerAssertionStartTime;
    if (v2 >= 10.0)
    {
      _lastPowerAssertionRelease = CFAbsoluteTimeGetCurrent();
      *&_lastPowerAssertionDuration = *&_lastPowerAssertionRelease - *&_powerAssertionStartTime;
      _powerAssertionStartTime = 0;
      if (_invalidPowerAssertion == 1)
      {
        _invalidPowerAssertion = 0;
      }

      else
      {
        if (!_powerAssertionId)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v5 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Power assertion should be present", buf, 2u);
            }
          }

          v6 = [MEMORY[0x1E696AAA8] currentHandler];
          v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void releasePowerAssertion(void)"];
          v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPowerAssertion.m"];
          [v6 handleFailureInFunction:v7 file:v8 lineNumber:58 description:@"Power assertion should be present"];

          abort();
        }

        IOPMAssertionRelease(_powerAssertionId);
        _powerAssertionId = 0;
      }
    }

    else
    {
      v3 = _powerAssertionAge;
      v4 = dispatch_walltime(0, (fmin(10.0 - v2, 10.0) * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__CPLPowerAssertion__releaseAssertion__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v3;
      dispatch_after(v4, _powerAssertionQueue, block);
    }
  }
}

uint64_t __32__CPLPowerAssertion_enableSleep__block_invoke(uint64_t result)
{
  v1 = result;
  v14 = *MEMORY[0x1E69E9840];
  if (!_powerAssertionCount)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(*(v1 + 32));
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "%@ has been called too many times", buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPowerAssertion.m"];
    v11 = NSStringFromSelector(*(v1 + 32));
    [v7 handleFailureInMethod:v8 object:v9 file:v10 lineNumber:132 description:{@"%@ has been called too many times", v11}];

    abort();
  }

  if (--_powerAssertionCount || _hasPower != 1)
  {
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v2 = *(result + 40);
    v3 = *MEMORY[0x1E69E9840];

    return [v2 _releaseAssertion];
  }

  return result;
}

+ (void)disableSleep
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__CPLPowerAssertion_disableSleep__block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  [a1 _doProtected:v2];
}

uint64_t __33__CPLPowerAssertion_disableSleep__block_invoke(uint64_t result)
{
  v1 = _powerAssertionCount++;
  if (!v1 && _hasPower == 1)
  {
    return [*(result + 32) _retainAssertion];
  }

  return result;
}

+ (void)_retainAssertion
{
  v8 = *MEMORY[0x1E69E9840];
  if ((_invalidPowerAssertion & 1) == 0 && !_powerAssertionId)
  {
    v2 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"cloudphotod", 0, @"Photos syncing iCloud Photos", 0, 3600.0, @"TimeoutActionTurnOff", &_powerAssertionId);
    if (v2)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v3 = v2;
        v4 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v6 = 134217984;
          v7 = v3;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Failed to create a power assertion: %ld", &v6, 0xCu);
        }
      }

      _invalidPowerAssertion = 1;
      _powerAssertionId = 0;
    }

    else
    {
      _invalidPowerAssertion = 0;
    }

    _powerAssertionStartTime = CFAbsoluteTimeGetCurrent();
  }

  ++_powerAssertionAge;
  v5 = *MEMORY[0x1E69E9840];
}

+ (id)powerAssertionStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1013;
  v9 = __Block_byref_object_dispose__1014;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CPLPowerAssertion_powerAssertionStatus__block_invoke;
  v4[3] = &unk_1E861BAD8;
  v4[5] = a2;
  v4[6] = a1;
  v4[4] = &v5;
  [a1 _doProtected:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __41__CPLPowerAssertion_powerAssertionStatus__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *&_powerAssertionStartTime;
  if (*&_powerAssertionStartTime <= 0.0)
  {
    if (*&_lastPowerAssertionRelease <= 0.0)
    {
      return result;
    }

    v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*&_lastPowerAssertionRelease];
    v6 = MEMORY[0x1E696AEC0];
    v7 = _lastPowerAssertionDuration;
    v8 = [CPLDateFormatter stringFromDateAgo:v20 now:0];
    v9 = [v6 stringWithFormat:@"Last power assertion held for %0.1fs %@", v7, v8];
    v10 = *(v1[4] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v3 = _invalidPowerAssertion;
    if ((_invalidPowerAssertion & 1) == 0 && !_powerAssertionId)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Power assertion should be present", buf, 2u);
        }
      }

      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = v1[5];
      v17 = v1[6];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPowerAssertion.m"];
      [v16 handleFailureInMethod:v18 object:v17 file:v19 lineNumber:168 description:@"Power assertion should be present"];

      abort();
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = CFAbsoluteTimeGetCurrent() - *&_powerAssertionStartTime;
    if (v3)
    {
      [v4 stringWithFormat:@"Power assertion held for %0.1fs - failed to get valid power assertion", *&v5];
    }

    else
    {
      [v4 stringWithFormat:@"Power assertion held for %0.1fs", *&v5];
    }
    v12 = ;
    v13 = *(v1[4] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (void)setHasEnoughPower:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CPLPowerAssertion_setHasEnoughPower___block_invoke;
  v3[3] = &__block_descriptor_41_e5_v8__0l;
  v4 = a3;
  v3[4] = a1;
  [a1 _doProtected:v3];
}

uint64_t __39__CPLPowerAssertion_setHasEnoughPower___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 != _hasPower)
  {
    _hasPower = *(result + 40);
    if (_powerAssertionCount)
    {
      v2 = *(result + 32);
      if (v1)
      {
        return [v2 _retainAssertion];
      }

      else
      {
        return [v2 _releaseAssertion];
      }
    }
  }

  return result;
}

+ (BOOL)hasEnoughPower
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__CPLPowerAssertion_hasEnoughPower__block_invoke;
  v4[3] = &unk_1E861B528;
  v4[4] = &v5;
  [a1 _doProtected:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __38__CPLPowerAssertion__releaseAssertion__block_invoke(uint64_t a1)
{
  if (_powerAssertionAge == *(a1 + 32) && ((_invalidPowerAssertion & 1) != 0 || _powerAssertionId))
  {
    _lastPowerAssertionRelease = CFAbsoluteTimeGetCurrent();
    *&_lastPowerAssertionDuration = *&_lastPowerAssertionRelease - *&_powerAssertionStartTime;
    _powerAssertionStartTime = 0;
    if (_invalidPowerAssertion == 1)
    {
      _invalidPowerAssertion = 0;
    }

    else
    {
      if (!_powerAssertionId)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v1 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
          {
            *v5 = 0;
            _os_log_impl(&dword_1DC05A000, v1, OS_LOG_TYPE_ERROR, "Power assertion should be present", v5, 2u);
          }
        }

        v2 = [MEMORY[0x1E696AAA8] currentHandler];
        v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void releasePowerAssertion(void)"];
        v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLPowerAssertion.m"];
        [v2 handleFailureInFunction:v3 file:v4 lineNumber:58 description:@"Power assertion should be present"];

        abort();
      }

      IOPMAssertionRelease(_powerAssertionId);
      _powerAssertionId = 0;
    }
  }
}

+ (void)_doProtected:(id)a3
{
  v3 = _doProtected__onceToken;
  v4 = a3;
  v6 = v4;
  if (v3 == -1)
  {
    v5 = v4;
  }

  else
  {
    dispatch_once(&_doProtected__onceToken, &__block_literal_global_1053);
    v5 = v6;
  }

  dispatch_sync(_powerAssertionQueue, v5);
}

void __34__CPLPowerAssertion__doProtected___block_invoke()
{
  v2 = CPLCopyDefaultSerialQueueAttributes();
  v0 = dispatch_queue_create("com.apple.cpl.powerassert", v2);
  v1 = _powerAssertionQueue;
  _powerAssertionQueue = v0;
}

@end