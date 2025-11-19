@interface CBCEModule
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBCEModule)initWithQueue:(id)a3 ceModelID:(unsigned int)a4;
- (id)copyInference:(id)a3;
- (id)copyPropertyForKey:(id)a3;
- (id)setModelInputWithAlsEvent:(id)a3 ceInput:(id)a4;
- (id)setModelInputWithXtalkArr:(id)a3 alsArr:(id)a4 alsRatioArr:(id)a5 X:(double)a6 Y:(double)a7 Z:(double)a8 CCT:(double)a9 u:(double)a10 v:(double)a11 lux:(double)a12 nits:(double)a13 iTime:(double)a14 gain:(double)a15 x:(double)a16 y:(double)a17 a:(double)a18 b:(double)a19 ceInput:(id)a20;
- (void)dealloc;
- (void)sendNotificationForKey:(id)a3 withValue:(id)a4;
@end

@implementation CBCEModule

- (CBCEModule)initWithQueue:(id)a3 ceModelID:(unsigned int)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21.receiver = self;
  v21.super_class = CBCEModule;
  v25 = [(CBModule *)&v21 initWithQueue:a3];
  if (v25)
  {
    v4 = os_log_create("com.apple.CoreBrightness.CBCEModule", "default");
    v25->super._logHandle = v4;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25->_alsEvents = v5;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25->_currentInputDict = v6;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25->_currentOutputDict = v7;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CBCE%d", v22];
    if (v25->super._logHandle)
    {
      logHandle = v25->super._logHandle;
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

      logHandle = inited;
    }

    v19 = logHandle;
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v26, v20);
      _os_log_impl(&dword_1DE8E5000, v19, v18, "Modelname: %@", v26, 0xCu);
    }

    v8 = NSClassFromString(v20);
    [(CBCEModule *)v25 setModelClass:v8];
    v17 = 0;
    v16 = objc_alloc_init(getMLModelConfigurationClass());
    [v16 setComputeUnits:0];
    v9 = [objc_alloc(-[CBCEModule modelClass](v25 "modelClass"))];
    v25->_model = v9;
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5928](v25->_model);
    v10 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"%@Input", v20]);
    [(CBCEModule *)v25 setModelInputClass:v10];
    v11 = objc_alloc([(CBCEModule *)v25 modelInputClass]);
    v25->_overriddenInput = v11;
    v12 = objc_alloc([(CBCEModule *)v25 modelInputClass]);
    v25->_currentInput = v12;
  }

  *MEMORY[0x1E69E9840];
  return v25;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](v5->super._logHandle);
    v5->super._logHandle = 0;
  }

  MEMORY[0x1E69E5920](v5->_alsEvents);
  MEMORY[0x1E69E5920](v5->_model);
  MEMORY[0x1E69E5920](v5->_currentInputDict);
  MEMORY[0x1E69E5920](v5->_currentOutputDict);
  MEMORY[0x1E69E5920](v5->_overriddenInput);
  *&v2 = MEMORY[0x1E69E5920](v5->_currentInput).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBCEModule;
  [(CBModule *)&v3 dealloc];
}

- (id)copyPropertyForKey:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v15, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "copyPropertyForKey called with key: %@", v15, 0xCu);
  }

  v10 = 0;
  if ([a3 isEqualToString:@"CEOutput"])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_currentOutputDict copyItems:1];
    if (self->super._logHandle)
    {
      v7 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v6 = init_default_corebrightness_log();
      }

      v7 = v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v14, v10);
      _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "copyPropertyForKey returning value: %@", v14, 0xCu);
    }
  }

  else if (([a3 isEqualToString:@"CEInput"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"CEOverride") & 1) != 0 && self->_overriding)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_currentInputDict copyItems:1];
    if (self->super._logHandle)
    {
      v5 = self->super._logHandle;
    }

    else
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v5 = v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v13, self->_currentInputDict);
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "copyPropertyForKey returning value: %@", v13, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v67, a3, a4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "setProperty called with property: %@ and key: %@", v67, 0x16u);
  }

  if ([a4 isEqualToString:@"CEOverride"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_overriding = 1;
      context = objc_autoreleasePoolPush();
      if (self->super._logHandle)
      {
        v33 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v32 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v32 = init_default_corebrightness_log();
        }

        v33 = v32;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v66, a3);
        _os_log_debug_impl(&dword_1DE8E5000, v33, OS_LOG_TYPE_DEBUG, "Property: %@", v66, 0xCu);
      }

      v56 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
      for (i = 0; i < 5; ++i)
      {
        [v56 addObject:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"crossTalk", "objectAtIndexedSubscript:", i)}];
      }

      if (self->super._logHandle)
      {
        v31 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v30 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v30 = init_default_corebrightness_log();
        }

        v31 = v30;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v65, v56);
        _os_log_debug_impl(&dword_1DE8E5000, v31, OS_LOG_TYPE_DEBUG, "xtalk: %@", v65, 0xCu);
      }

      v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
      for (j = 0; j < 5; ++j)
      {
        [v54 addObject:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"ALSRaw", "objectAtIndexedSubscript:", j)}];
      }

      if (self->super._logHandle)
      {
        v29 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v28 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v28 = init_default_corebrightness_log();
        }

        v29 = v28;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v64, v54);
        _os_log_debug_impl(&dword_1DE8E5000, v29, OS_LOG_TYPE_DEBUG, "alsraw: %@", v64, 0xCu);
      }

      v52 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
      for (k = 0; k < 5; ++k)
      {
        [v52 addObject:{objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"ALSRatio", "objectAtIndexedSubscript:", k)}];
      }

      if (self->super._logHandle)
      {
        v27 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v26 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v26 = init_default_corebrightness_log();
        }

        v27 = v26;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v63, v52);
        _os_log_debug_impl(&dword_1DE8E5000, v27, OS_LOG_TYPE_DEBUG, "alsRatio: %@", v63, 0xCu);
      }

      [objc_msgSend(a3 objectForKeyedSubscript:{@"X", "doubleValue"}];
      v50 = v4;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"Y", "doubleValue"}];
      v49 = v5;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"Z", "doubleValue"}];
      v48 = v6;
      if (self->super._logHandle)
      {
        v25 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v24 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v24 = init_default_corebrightness_log();
        }

        v25 = v24;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v62, v50, v49, v48);
        _os_log_debug_impl(&dword_1DE8E5000, v25, OS_LOG_TYPE_DEBUG, "XYZ: %f,%f,%f", v62, 0x20u);
      }

      [objc_msgSend(a3 objectForKeyedSubscript:{@"CCT", "doubleValue"}];
      v47 = v7;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"uPrime", "doubleValue"}];
      v46 = v8;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"vPrime", "doubleValue"}];
      v45 = v9;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"lux", "doubleValue"}];
      v44 = v10;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"nits", "doubleValue"}];
      v43 = v11;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"iTime", "doubleValue"}];
      v42 = v12;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"gain", "doubleValue"}];
      v41 = v13;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"x", "doubleValue"}];
      v40 = v14;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"y", "doubleValue"}];
      v39 = v15;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"a", "doubleValue"}];
      v38 = v16;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"b", "doubleValue"}];
      v37 = v17;
      if (self->super._logHandle)
      {
        v23 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v22 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v22 = init_default_corebrightness_log();
        }

        v23 = v22;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_11_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v61, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37);
        _os_log_debug_impl(&dword_1DE8E5000, v23, OS_LOG_TYPE_DEBUG, "CCT: %f, uPrime:%f, vPrime:%f, lux:%f, nits:%f, iTime:%f, gain: %f, x:%f, y:%f, a:%f, b:%f", v61, 0x70u);
      }

      self->_overriddenInput = [(CBCEModule *)self setModelInputWithXtalkArr:v56 alsArr:v54 alsRatioArr:v52 X:self->_overriddenInput Y:*&v50 Z:*&v49 CCT:*&v48 u:*&v47 v:*&v46 lux:*&v45 nits:*&v44 iTime:*&v43 gain:v42 x:v41 y:v40 a:v39 b:v38 ceInput:v37];
      objc_autoreleasePoolPop(context);
    }
  }

  else if ([a4 isEqualToString:@"CEOverrideEnabled"])
  {
    self->_overriding = [a3 BOOLValue];
    if (self->super._logHandle)
    {
      v21 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v20 = init_default_corebrightness_log();
      }

      v21 = v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v60, self->_overriding);
      _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_INFO, "Setting CEOverride to %d", v60, 8u);
    }

    if (self->_overriding)
    {
      overriddenInput = self->_overriddenInput;
    }

    else
    {
      overriddenInput = 0;
    }

    self->_overriddenInput = overriddenInput;
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

- (void)sendNotificationForKey:(id)a3 withValue:(id)a4
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

- (id)setModelInputWithAlsEvent:(id)a3 ceInput:(id)a4
{
  v43 = self;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  context = objc_autoreleasePoolPush();
  memset(__b, 0, sizeof(__b));
  if (v41)
  {
    [v41 vendorData];
  }

  else
  {
    memset(__b, 0, sizeof(__b));
  }

  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  for (i = 0; i < 5; ++i)
  {
    [v38 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *&__b[4 * i + 83])}];
  }

  v36 = __b[4];
  v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:__b[4]];
  for (j = 0; j < v36; ++j)
  {
    *&v4 = fmaxf(1.0, *&__b[4 * j + 28]);
    [v35 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v4)}];
  }

  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  for (k = 0; k < 5; ++k)
  {
    [objc_msgSend(v38 objectAtIndexedSubscript:{k), "doubleValue"}];
    v12 = v5;
    [objc_msgSend(v35 objectAtIndexedSubscript:{k), "doubleValue"}];
    v31 = v12 / v6;
    [v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v12 / v6)}];
  }

  if (v41)
  {
    [v41 colorSample];
  }

  else
  {
    memset(&v29[15], 0, 0x3CuLL);
  }

  v11 = v29[15];
  if (v41)
  {
    [v41 colorSample];
  }

  else
  {
    memset(v29, 0, 0x3CuLL);
  }

  v30 = (v11 / v29[1]);
  if (v41)
  {
    [v41 colorSample];
  }

  else
  {
    memset(&v27[15], 0, 0x3CuLL);
  }

  v10 = v27[16];
  if (v41)
  {
    [v41 colorSample];
  }

  else
  {
    memset(v27, 0, 0x3CuLL);
  }

  v28 = (v10 / v27[1]);
  if (v41)
  {
    [v41 colorSample];
  }

  else
  {
    memset(&v25[8] + 4, 0, 0x3CuLL);
  }

  v9 = *(&v25[9] + 1);
  if (v41)
  {
    [v41 colorSample];
  }

  else
  {
    memset(&v25[1], 0, 0x3CuLL);
  }

  v26 = (v9 / *(&v25[1] + 1));
  v25[0] = 0;
  if (v41)
  {
    [v41 colorSample];
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  v25[0] = *&v24[3];
  v23 = CFXChromaticity2CCT(v25);
  v22 = 4.0 * v30 / (v30 + 15.0 * v28 + 3.0 * v26);
  v21 = 9.0 * v28 / (v30 + 15.0 * v28 + 3.0 * v26);
  v20 = *&__b[20];
  v19 = *&__b[6];
  v18 = *v25;
  v17 = *(v25 + 1);
  v15 = 0;
  v16 = 0.0;
  if (v41)
  {
    [v41 colorSample];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  CFXTristimulus2Lab(v14, &v15);
  *&v7 = v16;
  LODWORD(v7) = *&__b[8];
  v40 = [(CBCEModule *)v43 setModelInputWithXtalkArr:v38 alsArr:v35 alsRatioArr:v33 X:v40 Y:v30 Z:v28 CCT:v26 u:v23 v:v22 lux:v21 nits:v20 iTime:v19 gain:v7 / 1000.0 x:(*&__b[16] >> 16) y:*&v18 a:*&v17 b:*(&v15 + 1) ceInput:v16];
  objc_autoreleasePoolPop(context);
  return v40;
}

- (id)setModelInputWithXtalkArr:(id)a3 alsArr:(id)a4 alsRatioArr:(id)a5 X:(double)a6 Y:(double)a7 Z:(double)a8 CCT:(double)a9 u:(double)a10 v:(double)a11 lux:(double)a12 nits:(double)a13 iTime:(double)a14 gain:(double)a15 x:(double)a16 y:(double)a17 a:(double)a18 b:(double)a19 ceInput:(id)a20
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = self;
  v60 = a2;
  v59 = a3;
  v58 = a4;
  v57 = a5;
  v56 = a6;
  v55 = a7;
  v54 = a8;
  v53 = a9;
  v52 = a10;
  v51 = a11;
  v50 = a12;
  v49 = a13;
  v48 = a14;
  v47 = a15;
  v46 = a16;
  v45 = a17;
  v44 = a18;
  v43 = a19;
  v42 = a20;
  context = objc_autoreleasePoolPush();
  v41 = &unk_1F59C95A0;
  v40 = 0;
  v20 = objc_alloc(getMLMultiArrayClass());
  v39 = [v20 initWithShape:v41 dataType:65568 error:&v40];
  if (v40)
  {
    if (v61->super._logHandle)
    {
      logHandle = v61->super._logHandle;
    }

    else
    {
      v31 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v31;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v63, v40);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Error generating the input for CE: %@", v63, 0xCu);
    }
  }

  v37 = 0;
  for (i = 0; i < 5; ++i)
  {
    ++v37;
    [v39 setObject:objc_msgSend(v59 atIndexedSubscript:{"objectAtIndexedSubscript:", i)}];
    currentInputDict = v61->_currentInputDict;
    v29 = [v59 objectAtIndexedSubscript:i];
    -[NSMutableDictionary setValue:forKey:](currentInputDict, "setValue:forKey:", v29, [MEMORY[0x1E696AEC0] stringWithFormat:@"xtalk%d", i]);
  }

  for (j = 0; j < 5; ++j)
  {
    ++v37;
    [v39 setObject:objc_msgSend(v58 atIndexedSubscript:{"objectAtIndexedSubscript:", j)}];
    v28 = v61->_currentInputDict;
    v27 = [v58 objectAtIndexedSubscript:j];
    -[NSMutableDictionary setValue:forKey:](v28, "setValue:forKey:", v27, [MEMORY[0x1E696AEC0] stringWithFormat:@"als%d", j]);
  }

  for (k = 0; k < 5; ++k)
  {
    ++v37;
    [v39 setObject:objc_msgSend(v57 atIndexedSubscript:{"objectAtIndexedSubscript:", k)}];
    v26 = v61->_currentInputDict;
    v25 = [v57 objectAtIndexedSubscript:k];
    -[NSMutableDictionary setValue:forKey:](v26, "setValue:forKey:", v25, [MEMORY[0x1E696AEC0] stringWithFormat:@"alsRatio%d", k]);
  }

  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v56)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v55)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v54)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v53)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v52)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v51)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v50)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v49)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v48)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v47)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v46)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v45)}];
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v44)}];
  v38 = v37 + 14;
  [v39 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", v43)}];
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v56], @"X");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v55], @"Y");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v54], @"Z");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v53], @"CCT");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v52], @"uPrime");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v51], @"vPrime");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v50], @"lux");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v49], @"nits");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v48], @"iTime");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v47], @"gain");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v46], @"x");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v45], @"y");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v44], @"a");
  -[NSMutableDictionary setValue:forKey:](v61->_currentInputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v43], @"b");
  if (v61->super._logHandle)
  {
    v24 = v61->super._logHandle;
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

    v24 = inited;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v62, v39);
    _os_log_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_DEFAULT, "mlmArrIn: %@", v62, 0xCu);
  }

  if (v38 != 29)
  {
    __assert_rtn("[CBCEModule setModelInputWithXtalkArr:alsArr:alsRatioArr:X:Y:Z:CCT:u:v:lux:nits:iTime:gain:x:y:a:b:ceInput:]", "CBCEModule.m", 304, "j == FEATURE_CNT");
  }

  v42 = [v42 initWithInput:v39];
  v21 = v39;
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v42;
}

- (id)copyInference:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = self;
  v28 = a2;
  v27 = a3;
  v26 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v27;
    -[NSMutableDictionary setObject:forKey:](v29->_alsEvents, "setObject:forKey:", v27, [v27 serviceRegistryID]);
    context = objc_autoreleasePoolPush();
    v24 = 0;
    if (v29->_overriding)
    {
      v29->_currentInput = v29->_overriddenInput;
    }

    else
    {
      v29->_currentInput = [(CBCEModule *)v29 setModelInputWithAlsEvent:v25 ceInput:v29->_currentInput];
    }

    v23 = [v29->_model predictionFromFeatures:v29->_currentInput error:&v24];
    if (v24)
    {
      if (v29->super._logHandle)
      {
        logHandle = v29->super._logHandle;
      }

      else
      {
        v16 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        logHandle = v16;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v32, v24);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "prediction_error: %@", v32, 0xCu);
      }
    }

    if (v29->super._logHandle)
    {
      v15 = v29->super._logHandle;
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

      v15 = inited;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v31, v29->_currentInputDict);
      _os_log_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEFAULT, "[V2.1] Input features: %@", v31, 0xCu);
    }

    [objc_msgSend(objc_msgSend(objc_msgSend(v23 featureValueForName:{@"strength_output", "multiArrayValue"), "objectAtIndexedSubscript:"), "floatValue"}];
    v22 = v3;
    [objc_msgSend(objc_msgSend(objc_msgSend(v23 featureValueForName:{@"uncertainty", "multiArrayValue"), "objectAtIndexedSubscript:", 0), "floatValue"}];
    v21 = v4;
    v5 = v22 * 100.0;
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:llroundf(v5) / 100.0];
    v6 = 1.0 - v21;
    *&v6 = 1.0 - v21;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v20, @"CEStrength", v19, @"CEConfidence", 0}];
    [v20 floatValue];
    [v25 setStrength:?];
    [v19 floatValue];
    [v25 setConfidence:?];
    if (v29->super._logHandle)
    {
      v13 = v29->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v12 = init_default_corebrightness_log();
      }

      v13 = v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromClass([(CBCEModule *)v29 modelClass]);
      [v25 strength];
      *&v11 = v7;
      [v25 confidence];
      __os_log_helper_16_2_3_8_64_8_0_8_0(v30, v10, v11, COERCE__INT64(v8));
      _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEFAULT, "[%@]strength: %.2f, confidence: %f", v30, 0x20u);
    }

    if (v29->_overriding)
    {
      [(CBCEModule *)v29 sendNotificationForKey:@"CEOverride" withValue:v29->_currentInputDict];
    }

    [(CBCEModule *)v29 sendNotificationForKey:@"CEInput" withValue:v29->_currentInputDict];
    [(CBCEModule *)v29 sendNotificationForKey:@"CEOutput" withValue:v26];
    objc_autoreleasePoolPop(context);
  }

  [(NSMutableDictionary *)v29->_currentOutputDict setDictionary:v26];
  *MEMORY[0x1E69E9840];
  return v26;
}

@end