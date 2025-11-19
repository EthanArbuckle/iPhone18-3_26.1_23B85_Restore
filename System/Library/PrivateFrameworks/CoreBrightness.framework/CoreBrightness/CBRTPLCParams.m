@interface CBRTPLCParams
- (BOOL)loadParametersFromParser:(id)a3;
- (CBRTPLCParams)initWithParser:(id)a3;
- (void)dealloc;
@end

@implementation CBRTPLCParams

- (BOOL)loadParametersFromParser:(id)a3
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  if (a3)
  {
    v23 = 0;
    v22 = [v27 loadInt:@"supports-rtplc" toDestination:&v23];
    if ((v22 & 1) != 0 && v23)
    {
      if (v29->_log)
      {
        v7 = v29->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v7 = inited;
      }

      v18 = v7;
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v18;
        v5 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_1DE8E5000, v4, v5, "RTPLC is supported", v16, 2u);
      }

      return 1;
    }

    else
    {
      if (v29->_log)
      {
        v11 = v29->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      v21 = v11;
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v21;
        v9 = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_impl(&dword_1DE8E5000, v8, v9, "RTPLC is not supported", v19, 2u);
      }

      return 0;
    }
  }

  else
  {
    if (v29->_log)
    {
      v15 = v29->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v14 = init_default_corebrightness_log();
      }

      v15 = v14;
    }

    v26 = v15;
    v25 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Parser is null", v24, 2u);
    }

    return 0;
  }
}

- (CBRTPLCParams)initWithParser:(id)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = CBRTPLCParams;
  v10 = [(CBRTPLCParams *)&v7 init];
  if (!v10)
  {
    return v10;
  }

  if (!v8)
  {
    return v10;
  }

  v3 = os_log_create("com.apple.CoreBrightness.BacklightNode", "RTPLC");
  v10->_log = v3;
  if ([(CBRTPLCParams *)v10 loadParametersFromParser:v8])
  {
    v4 = [CBRTPLCRecoveryCurveParams alloc];
    v5 = [(CBRTPLCRecoveryCurveParams *)v4 initWithParser:v8];
    v10->_recoveryCurve = v5;
    if (v10->_recoveryCurve)
    {
      return v10;
    }
  }

  MEMORY[0x1E69E5920](v10);
  v10 = 0;
  return 0;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = MEMORY[0x1E69E5920](self->_recoveryCurve).n128_u64[0];
  if (v5->_log)
  {
    v2 = MEMORY[0x1E69E5920](v5->_log).n128_u64[0];
    v5->_log = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBRTPLCParams;
  [(CBRTPLCParams *)&v3 dealloc];
}

@end