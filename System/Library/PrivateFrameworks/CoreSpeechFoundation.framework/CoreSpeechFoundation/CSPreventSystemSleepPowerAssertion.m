@interface CSPreventSystemSleepPowerAssertion
- (CSPreventSystemSleepPowerAssertion)initWithTimeOut:(double)a3;
- (void)_acquireAssertionForType:(__CFString *)a3 withTimeout:(double)a4 assertionId:(unsigned int *)a5 details:(__CFString *)a6;
- (void)_releaseAssertionForAssertionId:(unsigned int *)a3 details:(__CFString *)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CSPreventSystemSleepPowerAssertion

- (void)_releaseAssertionForAssertionId:(unsigned int *)a3 details:(__CFString *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v6 = IOPMAssertionRelease(*a3);
    v7 = CSLogContextFacilityCoreSpeech;
    if (v6)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315395;
        v10 = "[CSPreventSystemSleepPowerAssertion _releaseAssertionForAssertionId:details:]";
        v11 = 2113;
        v12 = a4;
        _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Failed to released power assertion for %{private}@", &v9, 0x16u);
      }
    }

    else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315395;
      v10 = "[CSPreventSystemSleepPowerAssertion _releaseAssertionForAssertionId:details:]";
      v11 = 2113;
      v12 = a4;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Successfully released power assertion for %{private}@", &v9, 0x16u);
    }

    *a3 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_acquireAssertionForType:(__CFString *)a3 withTimeout:(double)a4 assertionId:(unsigned int *)a5 details:(__CFString *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  if (a4 == 0.0)
  {
    v10 = IOPMAssertionCreateWithName(a3, 0xFFu, @"com.apple.corespeech.powerassertion", a5);
  }

  else
  {
    v10 = IOPMAssertionCreateWithDescription(a3, @"com.apple.corespeech.powerassertion", a6, 0, 0, a4, @"TimeoutActionRelease", a5);
  }

  if (*a5)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v13 = IOPMAssertionSetProperty(*a5, @"AllowsDeviceRestart", *MEMORY[0x1E695E4D0]);
    v14 = CSLogContextFacilityCoreSpeech;
    if (v13)
    {
      v15 = v13;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315395;
        v22 = "[CSPreventSystemSleepPowerAssertion _acquireAssertionForType:withTimeout:assertionId:details:]";
        v23 = 1025;
        LODWORD(v24) = v15;
        _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s IOPMAssertionSetProperty failed : %{private}d", &v21, 0x12u);
        v14 = CSLogContextFacilityCoreSpeech;
      }
    }

    v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (a4 == 0.0)
    {
      if (!v16)
      {
        goto LABEL_20;
      }

      v21 = 136315395;
      v22 = "[CSPreventSystemSleepPowerAssertion _acquireAssertionForType:withTimeout:assertionId:details:]";
      v23 = 2113;
      v24 = a6;
      v17 = "%s Taking power assertion %{private}@";
      v18 = v14;
      v19 = 22;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_20;
      }

      v21 = 136315651;
      v22 = "[CSPreventSystemSleepPowerAssertion _acquireAssertionForType:withTimeout:assertionId:details:]";
      v23 = 2113;
      v24 = a6;
      v25 = 2049;
      v26 = a4;
      v17 = "%s Taking power assertion %{private}@ for a max of %{private}f seconds";
      v18 = v14;
      v19 = 32;
    }

    _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
    goto LABEL_20;
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315138;
    v22 = "[CSPreventSystemSleepPowerAssertion _acquireAssertionForType:withTimeout:assertionId:details:]";
    _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Could not take power assertion", &v21, 0xCu);
  }

  [(CSPreventSystemSleepPowerAssertion *)self _releaseAssertionForAssertionId:a5 details:a6];
LABEL_20:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  p_preventUserIdleSystemSleepAssertionId = &self->_preventUserIdleSystemSleepAssertionId;
  if (self->_preventUserIdleSystemSleepAssertionId)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSPreventSystemSleepPowerAssertion invalidate]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s UserIdleSystemSleepAssertion", &v6, 0xCu);
    }

    [(CSPreventSystemSleepPowerAssertion *)self _releaseAssertionForAssertionId:p_preventUserIdleSystemSleepAssertionId details:@"PreventUserIdleSystemSleep"];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(CSPreventSystemSleepPowerAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSPreventSystemSleepPowerAssertion;
  [(CSPreventSystemSleepPowerAssertion *)&v3 dealloc];
}

- (CSPreventSystemSleepPowerAssertion)initWithTimeOut:(double)a3
{
  v7.receiver = self;
  v7.super_class = CSPreventSystemSleepPowerAssertion;
  v4 = [(CSPreventSystemSleepPowerAssertion *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeoutInterval = a3;
    v4->_preventUserIdleSystemSleepAssertionId = 0;
    [(CSPreventSystemSleepPowerAssertion *)v4 _acquireAssertionForType:@"PreventUserIdleSystemSleep" withTimeout:&v4->_preventUserIdleSystemSleepAssertionId assertionId:@"PreventUserIdleSystemSleep" details:a3];
  }

  return v5;
}

@end