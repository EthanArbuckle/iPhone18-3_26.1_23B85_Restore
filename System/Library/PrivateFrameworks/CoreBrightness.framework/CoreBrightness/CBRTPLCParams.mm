@interface CBRTPLCParams
- (BOOL)loadParametersFromParser:(id)parser;
- (CBRTPLCParams)initWithParser:(id)parser;
- (void)dealloc;
@end

@implementation CBRTPLCParams

- (BOOL)loadParametersFromParser:(id)parser
{
  selfCopy = self;
  v28 = a2;
  parserCopy = parser;
  if (parser)
  {
    v23 = 0;
    v22 = [parserCopy loadInt:@"supports-rtplc" toDestination:&v23];
    if ((v22 & 1) != 0 && v23)
    {
      if (selfCopy->_log)
      {
        v7 = selfCopy->_log;
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
      if (selfCopy->_log)
      {
        v11 = selfCopy->_log;
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
    if (selfCopy->_log)
    {
      v15 = selfCopy->_log;
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

- (CBRTPLCParams)initWithParser:(id)parser
{
  selfCopy = self;
  v9 = a2;
  parserCopy = parser;
  v7.receiver = self;
  v7.super_class = CBRTPLCParams;
  selfCopy = [(CBRTPLCParams *)&v7 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  if (!parserCopy)
  {
    return selfCopy;
  }

  v3 = os_log_create("com.apple.CoreBrightness.BacklightNode", "RTPLC");
  selfCopy->_log = v3;
  if ([(CBRTPLCParams *)selfCopy loadParametersFromParser:parserCopy])
  {
    v4 = [CBRTPLCRecoveryCurveParams alloc];
    v5 = [(CBRTPLCRecoveryCurveParams *)v4 initWithParser:parserCopy];
    selfCopy->_recoveryCurve = v5;
    if (selfCopy->_recoveryCurve)
    {
      return selfCopy;
    }
  }

  MEMORY[0x1E69E5920](selfCopy);
  selfCopy = 0;
  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = MEMORY[0x1E69E5920](self->_recoveryCurve).n128_u64[0];
  if (selfCopy->_log)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_log).n128_u64[0];
    selfCopy->_log = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBRTPLCParams;
  [(CBRTPLCParams *)&v3 dealloc];
}

@end