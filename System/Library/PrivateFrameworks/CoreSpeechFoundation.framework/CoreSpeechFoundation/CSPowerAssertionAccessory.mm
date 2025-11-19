@interface CSPowerAssertionAccessory
- (CSPowerAssertionAccessory)initWithName:(id)a3 timeout:(double)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CSPowerAssertionAccessory

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = IOPMAssertionRelease(self->_assertionID);
  v4 = CSLogContextFacilityCoreSpeech;
  if (v3)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      name = self->_name;
      v8 = 136315394;
      v9 = "[CSPowerAssertionAccessory invalidate]";
      v10 = 2114;
      v11 = name;
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Fail to release power assertion %{public}@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_name;
    v8 = 136315394;
    v9 = "[CSPowerAssertionAccessory invalidate]";
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Successfully released power assertion %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (self->_assertionID)
  {
    [(CSPowerAssertionAccessory *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = CSPowerAssertionAccessory;
  [(CSPowerAssertionAccessory *)&v3 dealloc];
}

- (CSPowerAssertionAccessory)initWithName:(id)a3 timeout:(double)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (+[CSUtils deviceRequirePowerAssertionHeld])
  {
    v26.receiver = self;
    v26.super_class = CSPowerAssertionAccessory;
    v8 = [(CSPowerAssertionAccessory *)&v26 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_name, a3);
      v9->_assertionID = 0;
      p_assertionID = &v9->_assertionID;
      if (a4 == 0.0)
      {
        v11 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.corespeech.powerassertion", &v9->_assertionID);
        if (*p_assertionID)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 0;
        }

        if (!v12)
        {
          goto LABEL_16;
        }

        v13 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          name = v9->_name;
          *buf = 136315394;
          v28 = "[CSPowerAssertionAccessory initWithName:timeout:]";
          v29 = 2114;
          v30 = name;
          v15 = "%s Taking power assertion %{public}@";
          v16 = v13;
          v17 = 22;
LABEL_21:
          _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
        }
      }

      else
      {
        v19 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"com.apple.corespeech.powerassertion", 0, v7, 0, a4, @"TimeoutActionRelease", &v9->_assertionID);
        if (*p_assertionID)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (!v20)
        {
LABEL_16:
          v21 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v28 = "[CSPowerAssertionAccessory initWithName:timeout:]";
            _os_log_error_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_ERROR, "%s Could not take power assertion", buf, 0xCu);
          }

          v9 = 0;
          goto LABEL_22;
        }

        v22 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v9->_name;
          *buf = 136315650;
          v28 = "[CSPowerAssertionAccessory initWithName:timeout:]";
          v29 = 2114;
          v30 = v23;
          v31 = 2050;
          v32 = a4;
          v15 = "%s Taking power assertion %{public}@ for a max of %{public}lf seconds";
          v16 = v22;
          v17 = 32;
          goto LABEL_21;
        }
      }
    }

LABEL_22:
    self = v9;
    v18 = self;
    goto LABEL_23;
  }

  v18 = 0;
LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

@end