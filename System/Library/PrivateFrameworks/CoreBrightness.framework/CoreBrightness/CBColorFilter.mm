@interface CBColorFilter
+ ($1AB5FA073B851C12C2339EC22442E995)calculateTristimulusForChromaticity:(id)a3 andLux:(double)a4;
+ (double)calculateCCTForChromaticity:(id)a3;
+ (double)calculateCCTForTristimulus:(id)a3;
- (BOOL)ALSServiceConformsToPolicy:(id)a3;
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)allValidALSEventsArrived;
- (BOOL)forceSampleUpdate;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (BOOL)hasExtFrontSensor;
- (BOOL)hasExtRearSensor;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (CBColorFilter)initWithIdentifier:(id)a3;
- (id)copyHumanReadablePolicyRepresentation:(unint64_t)a3;
- (id)filterEvent:(id)a3;
- (id)humanReadableModeRepresentation:(unint64_t)a3;
- (id)newColorSampleConditionWeighted;
- (id)newColorSampleLinearWeightedForSamples:(id)a3;
- (id)newColorSampleLinearWeightedForServices:(id)a3;
- (id)newColorSampleLogWeighted;
- (id)newColorSampleLogWeightedForSamples:(id)a3;
- (id)newColorSampleWinnerTakesAll;
- (void)dealloc;
- (void)reportSampleUpdate;
- (void)resetEvents;
- (void)setMode:(unint64_t)a3;
- (void)setSensorPolicy:(unint64_t)a3;
- (void)updateSample;
- (void)updateValidServices;
@end

@implementation CBColorFilter

- (void)updateSample
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = [(CBColorFilter *)self evaluatedFilterMode];
  switch(v5)
  {
    case 3:
      v6 = [(CBColorFilter *)self newColorSampleLinearWeightedForServices:self->_validServices];
      break;
    case 4:
      v6 = [(CBColorFilter *)self newColorSampleLogWeighted];
      break;
    case 2:
      v6 = [(CBColorFilter *)self newColorSampleWinnerTakesAll];
      break;
    case 6:
      v6 = [(CBColorFilter *)self newColorSampleConditionWeighted];
      break;
    default:
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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v8, v5);
        _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "ERROR: unsupported mode %lu", v8, 0xCu);
      }

      break;
  }

  if (v6)
  {
    *&v2 = MEMORY[0x1E69E5920](self->_sample).n128_u64[0];
    self->_sample = v6;
    [(CBColorSample *)self->_sample setMode:v5, v2];
  }

  [(CBColorFilter *)self reportSampleUpdate];
  *MEMORY[0x1E69E9840];
}

- (id)newColorSampleWinnerTakesAll
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = self;
  v25 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x20000000;
  v23 = 32;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x20000000;
  v18 = 32;
  v19 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x10000000;
  v10 = 56;
  v11 = &unk_1DEAF13C9;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (self->super._logHandle)
  {
    logHandle = v26->super._logHandle;
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
    __os_log_helper_16_2_1_8_64(v27, v26->_validServices);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "ALS services: %@", v27, 0xCu);
  }

  [(NSMutableArray *)v26->_validServices enumerateObjectsUsingBlock:?];
  v4 = [CBColorSample alloc];
  v3 = [(CBColorSample *)v4 initWithTristimulus:v8[4] illuminance:v8[5] andTempterature:v8[6], v21[3], v16[3]];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v20, 8);
  *MEMORY[0x1E69E9840];
  return v3;
}

double __45__CBColorFilter_newColorSampleWinnerTakesAll__block_invoke(void *a1, void *a2)
{
  if (([a2 validData] & 1) != 0 && objc_msgSend(a2, "event"))
  {
    v10 = *(*(a1[4] + 8) + 24);
    [a2 lux];
    v4 = v3;
    result = v10;
    if (v10 < v4)
    {
      [a2 lux];
      *(*(a1[4] + 8) + 24) = v5;
      [a2 CCT];
      *(*(a1[5] + 8) + 24) = v6;
      [a2 event];
      IOHIDEventGetDoubleValue();
      *(*(a1[6] + 8) + 32) = v7 / 3.14159265;
      [a2 event];
      IOHIDEventGetDoubleValue();
      *(*(a1[6] + 8) + 40) = v8 / 3.14159265;
      [a2 event];
      IOHIDEventGetDoubleValue();
      result = v9 / 3.14159265;
      *(*(a1[6] + 8) + 48) = result;
    }
  }

  return result;
}

- (void)reportSampleUpdate
{
  v25 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    mode = self->_mode;
    [(CBColorSample *)self->_sample lux];
    v10 = v2;
    [(CBColorSample *)self->_sample CCT];
    v11 = v3;
    [(CBColorSample *)self->_sample XYZ];
    v12 = v4;
    [(CBColorSample *)self->_sample XYZ];
    v13 = v5;
    [(CBColorSample *)self->_sample XYZ];
    v15 = v6;
    [(CBColorSample *)self->_sample xy];
    v14 = v7;
    [(CBColorSample *)self->_sample xy];
    __os_log_helper_16_0_8_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v24, mode, v10, v11, v12, v13, v15, v14, v8);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "sample update (mode %lu): lux=%f CCT=%f X=%f Y=%f Z=%f (xy = %f | %f)", v24, 0x52u);
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v22)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:self->_sensorPolicy];
    v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:self->_mode];
    if (v21 && v20)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v21, @"policy", v20, @"mode", 0}];
      if (v19)
      {
        [v22 setObject:v19 forKey:@"cfg"];
      }

      MEMORY[0x1E69E5920](v19);
    }

    MEMORY[0x1E69E5920](v21);
    v18 = [(CBColorSample *)self->_sample copyDataInDictionary];
    if (v18)
    {
      [v22 setObject:v18 forKey:@"sample"];
    }

    [(NSMutableArray *)self->_validServices enumerateObjectsUsingBlock:MEMORY[0x1E69E5920](v18).n128_f64[0]];
    [(CBFilter *)self sendNotificationForKey:@"ColorSample" andValue:v22];
  }

  MEMORY[0x1E69E5920](v22);
  *MEMORY[0x1E69E9840];
}

double __35__CBColorFilter_reportSampleUpdate__block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 copyDataInDictionary];
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", objc_msgSend(a2, "registryID")];
    if (v4)
    {
      [*(a1 + 32) setObject:v5 forKey:v4];
    }

    MEMORY[0x1E69E5920](v4);
  }

  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

- (CBColorFilter)initWithIdentifier:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22.receiver = self;
  v22.super_class = CBColorFilter;
  v25 = [(CBColorFilter *)&v22 init];
  if (v25)
  {
    if (v23)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = [v15 initWithFormat:@"%s.%s.%s", "com.apple.CoreBrightness", "CBColorFilter", objc_msgSend(v23, "UTF8String")];
      v3 = os_log_create([v21 cStringUsingEncoding:1], "default");
      v25->super._logHandle = v3;
      MEMORY[0x1E69E5920](v21);
    }

    else
    {
      v4 = os_log_create("com.apple.CoreBrightness.CBColorFilter", "default");
      v25->super._logHandle = v4;
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25->_services = v5;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25->_validServices = v6;
    v25->_mode = 6;
    v25->_sensorPolicy = 255;
    context = objc_autoreleasePoolPush();
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

    v20 = logHandle;
    v19 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(CBColorFilter *)v25 humanReadableModeRepresentation:v25->_mode];
      __os_log_helper_16_2_2_8_64_8_64(v26, v11, [(CBColorFilter *)v25 copyHumanReadablePolicyRepresentation:v25->_sensorPolicy]);
      _os_log_debug_impl(&dword_1DE8E5000, v20, v19, "initialised color filter with mode: %@, policy: %@", v26, 0x16u);
    }

    objc_autoreleasePoolPop(context);
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

    v18 = v10;
    v17 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v8 = v18;
      v9 = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_error_impl(&dword_1DE8E5000, v8, v9, "failed to initialise self", v16, 2u);
    }
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

  MEMORY[0x1E69E5920](v5->_services);
  MEMORY[0x1E69E5920](v5->_validServices);
  *&v2 = MEMORY[0x1E69E5920](v5->_sample).n128_u64[0];
  if (v5->super._notificationBlock)
  {
    _Block_release(v5->super._notificationBlock);
  }

  v3.receiver = v5;
  v3.super_class = CBColorFilter;
  [(CBColorFilter *)&v3 dealloc];
}

- (void)setMode:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 == 1 || a3 == 5)
  {
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v10, a3);
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "invalid mode update (%lu)", v10, 0xCu);
    }
  }

  else if (self->_mode != a3)
  {
    if (self->super._logHandle)
    {
      v4 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v3 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v3 = init_default_corebrightness_log();
      }

      v4 = v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v9, [(CBColorFilter *)self humanReadableModeRepresentation:self->_mode], [(CBColorFilter *)self humanReadableModeRepresentation:a3]);
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Color filter mode changed; old mode: %@ new mode: %@", v9, 0x16u);
    }

    self->_mode = a3;
    [(CBColorFilter *)self updateSample];
  }

  *MEMORY[0x1E69E9840];
}

- (id)humanReadableModeRepresentation:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      return @"unspecified";
    case 2uLL:
      return @"winner takes all";
    case 3uLL:
      return @"weighted average";
    case 4uLL:
      return @"weighted average log";
    case 6uLL:
      return @"weigthed conditioned";
  }

  return @"invalid";
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  v11 = [[CBALSService alloc] initWithHIDALSServiceClient:a3];
  if (v11)
  {
    [(NSMutableArray *)v15->_services addObject:v11];
    [(CBColorFilter *)v15 updateValidServices];
    MEMORY[0x1E69E5920](v11);
    v12 = 1;
  }

  else
  {
    if (v15->super._logHandle)
    {
      logHandle = v15->super._logHandle;
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

    v10 = logHandle;
    v9 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create wrapper for the service", v8, 2u);
    }
  }

  return v12 & 1;
}

uint64_t __42__CBColorFilter_acknowledgeHIDEvent_from___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToHIDService:*(a1 + 32)];
  if (result)
  {
    result = [a2 setEvent:*(a1 + 40)];
    *a4 = 1;
  }

  return result;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  [(NSMutableArray *)self->_services enumerateObjectsUsingBlock:?];
  [(CBColorFilter *)self updateSample];
  return 0;
}

uint64_t __37__CBColorFilter_handleHIDEvent_from___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToHIDService:*(a1 + 32)];
  if (result)
  {
    result = [a2 setEvent:*(a1 + 40)];
    *a4 = 1;
  }

  return result;
}

- (id)filterEvent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    memset(__b, 0, sizeof(__b));
    obj = v17->_services;
    v11 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
    if (!v11)
    {
      goto LABEL_17;
    }

    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v14 = 0;
      v14 = *(__b[1] + 8 * v8);
      if ([v14 conformsToHIDService:{objc_msgSend(v15, "service")}])
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v9)
        {
          goto LABEL_17;
        }
      }
    }

    [v14 setEvent:{objc_msgSend(v15, "event")}];
    if (([(NSMutableArray *)v17->_validServices containsObject:v14]& 1) != 0)
    {
      [(CBColorFilter *)v17 updateSample];
      v4 = v15;
      sample = v17->_sample;
      if (sample)
      {
        [(CBColorSample *)sample colorSample];
      }

      else
      {
        memset(v12, 0, sizeof(v12));
      }

      [v4 setColorSample:v12];
      v18 = v15;
    }

    else
    {
LABEL_17:
      v18 = 0;
    }
  }

  else
  {
    v18 = v15;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 1375731712;
  v10 = 48;
  v11 = __Block_byref_object_copy__21;
  v12 = __Block_byref_object_dispose__21;
  v13 = 0;
  [(NSMutableArray *)self->_services enumerateObjectsUsingBlock:?];
  if (v8[5])
  {
    MEMORY[0x1E69E5928](v8[5]);
    [(NSMutableArray *)v16->_validServices removeObject:v8[5]];
    [(NSMutableArray *)v16->_services removeObject:v8[5]];
    if (([v8[5] builtIn] & 1) == 0)
    {
      v6 = [(CBColorFilter *)v16 hasExtRearSensor];
      v5 = [(CBColorFilter *)v16 hasExtFrontSensor];
      v4 = 1;
      if (!v6)
      {
        v4 = v5;
        [CBAnalyticsExtDisplayManager stopReporting:2];
      }

      if ((v5 & 1) == 0)
      {
        [CBAnalyticsExtDisplayManager stopReporting:1];
      }

      if ((v4 & 1) == 0)
      {
        [CBAnalyticsExtDisplayManager stopReporting:3];
      }
    }

    MEMORY[0x1E69E5920](v8[5]);
  }

  _Block_object_dispose(&v7, 8);
  return 1;
}

uint64_t __40__CBColorFilter_removeHIDServiceClient___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 service];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)setSensorPolicy:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_sensorPolicy != a3)
  {
    sensorPolicy = self->_sensorPolicy;
    self->_sensorPolicy = a3;
    [(CBColorFilter *)self updateValidServices];
    context = objc_autoreleasePoolPush();
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
      __os_log_helper_16_2_3_8_64_8_64_8_66(v9, [(CBColorFilter *)self copyHumanReadablePolicyRepresentation:sensorPolicy], [(CBColorFilter *)self copyHumanReadablePolicyRepresentation:a3], self->_validServices);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Color filter sensor policy changed; old policy: %@ new policy: %@ valid services: %{public}@", v9, 0x20u);
    }

    objc_autoreleasePoolPop(context);
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyHumanReadablePolicyRepresentation:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F599E370];
  if (!a3)
  {
    [v4 appendString:{@"none, "}];
  }

  if (a3)
  {
    [v4 appendString:{@"front, "}];
  }

  if ((a3 & 2) != 0)
  {
    [v4 appendString:{@"back, "}];
  }

  if ((a3 & 4) != 0)
  {
    [v4 appendString:{@"external, "}];
  }

  if ((a3 & 8) != 0)
  {
    [v4 appendString:{@"internal, "}];
  }

  return v4;
}

- (id)newColorSampleLinearWeightedForServices:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v40 = self;
  v39 = a2;
  v38 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x20000000;
  v36 = 32;
  v37 = 0;
  v32 = 0.0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x20000000;
  v30 = 32;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x10000000;
  v23 = 48;
  v24 = &unk_1DEAF13C9;
  v25 = 0;
  v26 = 0;
  if (self->super._logHandle)
  {
    logHandle = v40->super._logHandle;
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

  oslog = logHandle;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v42, v38);
    _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "ALS services: %@", v42, 0xCu);
  }

  memset(__b, 0, sizeof(__b));
  obj = v38;
  v13 = [v38 countByEnumeratingWithState:__b objects:v41 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v17 = 0;
      v17 = *(__b[1] + 8 * v10);
      if ([v17 validData])
      {
        [v17 lux];
        v28[3] = v28[3] + v3;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  if (v28[3] != 0.0)
  {
    [v38 enumerateObjectsUsingBlock:?];
    [CBColorFilter calculateCCTForChromaticity:v21[4], v21[5]];
    v32 = v4;
  }

  v7 = [CBColorSample alloc];
  v6 = [(CBColorSample *)v7 initWithChromaticity:v21[4] illuminance:v21[5] andTempterature:v34[3], v32];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  *MEMORY[0x1E69E9840];
  return v6;
}

void __57__CBColorFilter_newColorSampleLinearWeightedForServices___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a2 validData])
  {
    [a2 lux];
    *&v2 = v2 / *(*(a1[5] + 8) + 24);
    v13 = *&v2;
    [a2 x];
    *(*(a1[6] + 8) + 32) = *(*(a1[6] + 8) + 32) + v3 * v13;
    [a2 y];
    *(*(a1[6] + 8) + 40) = *(*(a1[6] + 8) + 40) + v4 * v13;
    [a2 lux];
    *(*(a1[7] + 8) + 24) = *(*(a1[7] + 8) + 24) + v5 * v13;
    if (*(a1[4] + 8))
    {
      v11 = *(a1[4] + 8);
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

      v11 = inited;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v8 = [a2 service];
      [a2 x];
      v9 = v6;
      [a2 y];
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v15, v8, v9, v7, COERCE__INT64(v13));
      _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "service %p xy= %f | %f ratio=%f", v15, 0x2Au);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)newColorSampleLinearWeightedForSamples:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = self;
  v35 = a2;
  v34 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x20000000;
  v32 = 32;
  v33 = 0;
  v28 = 0.0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x20000000;
  v26 = 32;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x10000000;
  v19 = 48;
  v20 = &unk_1DEAF13C9;
  v21 = 0;
  v22 = 0;
  memset(__b, 0, sizeof(__b));
  obj = v34;
  v13 = [v34 countByEnumeratingWithState:__b objects:v37 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v15 = 0;
      v15 = *(__b[1] + 8 * v10);
      [v15 lux];
      v24[3] = v24[3] + v3;
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  if (v24[3] != 0.0)
  {
    [v34 enumerateObjectsUsingBlock:?];
    [CBColorFilter calculateCCTForChromaticity:v17[4], v17[5]];
    v28 = v4;
  }

  v7 = [CBColorSample alloc];
  v6 = [(CBColorSample *)v7 initWithChromaticity:v17[4] illuminance:v17[5] andTempterature:v30[3], v28];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  *MEMORY[0x1E69E9840];
  return v6;
}

void __56__CBColorFilter_newColorSampleLinearWeightedForSamples___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  [a2 lux];
  *&v2 = v2 / *(*(a1[5] + 8) + 24);
  v12 = *&v2;
  [a2 xy];
  *(*(a1[6] + 8) + 32) = *(*(a1[6] + 8) + 32) + v3 * v12;
  [a2 xy];
  *(*(a1[6] + 8) + 40) = *(*(a1[6] + 8) + 40) + v4 * v12;
  [a2 lux];
  *(*(a1[7] + 8) + 24) = *(*(a1[7] + 8) + 24) + v5 * v12;
  if (*(a1[4] + 8))
  {
    v10 = *(a1[4] + 8);
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

    v10 = inited;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [a2 xy];
    v8 = v6;
    [a2 xy];
    __os_log_helper_16_0_3_8_0_8_0_8_0(v14, v8, v7, COERCE__INT64(v12));
    _os_log_debug_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEBUG, "xy= %f | %f ratio=%f", v14, 0x20u);
  }

  *MEMORY[0x1E69E9840];
}

- (id)newColorSampleLogWeightedForSamples:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = self;
  v36 = a2;
  v35 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x20000000;
  v33 = 32;
  v34 = 0;
  v29 = 0.0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x20000000;
  v27 = 32;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x10000000;
  v20 = 48;
  v21 = &unk_1DEAF13C9;
  v22 = 0;
  v23 = 0;
  memset(__b, 0, sizeof(__b));
  obj = v35;
  v14 = [v35 countByEnumeratingWithState:__b objects:v38 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v16 = 0;
      v16 = *(__b[1] + 8 * v11);
      [v16 lux];
      v4 = log10(v3 + 1.0);
      v25[3] = v25[3] + v4;
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  if (v25[3] != 0.0)
  {
    [v35 enumerateObjectsUsingBlock:?];
    [CBColorFilter calculateCCTForChromaticity:v18[4], v18[5]];
    v29 = v5;
  }

  v8 = [CBColorSample alloc];
  v7 = [(CBColorSample *)v8 initWithChromaticity:v18[4] illuminance:v18[5] andTempterature:v31[3], v29];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  *MEMORY[0x1E69E9840];
  return v7;
}

void __53__CBColorFilter_newColorSampleLogWeightedForSamples___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  [a2 lux];
  v3 = log10(v2 + 1.0) / *(*(a1[5] + 8) + 24);
  v13 = v3;
  [a2 xy];
  *(*(a1[6] + 8) + 32) = *(*(a1[6] + 8) + 32) + v4 * v13;
  [a2 xy];
  *(*(a1[6] + 8) + 40) = *(*(a1[6] + 8) + 40) + v5 * v13;
  [a2 lux];
  *(*(a1[7] + 8) + 24) = *(*(a1[7] + 8) + 24) + v6 * v13;
  if (*(a1[4] + 8))
  {
    v11 = *(a1[4] + 8);
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

    v11 = inited;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [a2 xy];
    v9 = v7;
    [a2 xy];
    __os_log_helper_16_0_3_8_0_8_0_8_0(v15, v9, v8, COERCE__INT64(v13));
    _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "xy= %f | %f ratio=%f", v15, 0x20u);
  }

  *MEMORY[0x1E69E9840];
}

- (id)newColorSampleLogWeighted
{
  v42 = *MEMORY[0x1E69E9840];
  v39 = self;
  v38 = a2;
  v33 = 0;
  v34 = &v33;
  v35 = 0x20000000;
  v36 = 32;
  v37 = 0;
  v32 = 0.0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x20000000;
  v30 = 32;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x10000000;
  v23 = 48;
  v24 = &unk_1DEAF13C9;
  v25 = 0;
  v26 = 0;
  if (self->super._logHandle)
  {
    logHandle = v39->super._logHandle;
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

  oslog = logHandle;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v41, v39->_validServices);
    _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "ALS services: %@", v41, 0xCu);
  }

  memset(__b, 0, sizeof(__b));
  obj = v39->_validServices;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v40 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v17 = 0;
      v17 = *(__b[1] + 8 * v10);
      if ([v17 validData])
      {
        [v17 lux];
        v3 = log10(v2 + 1.0);
        v28[3] = v28[3] + v3;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v40 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  if (v28[3] != 0.0)
  {
    [(NSMutableArray *)v39->_validServices enumerateObjectsUsingBlock:?];
    [CBColorFilter calculateCCTForChromaticity:v21[4], v21[5]];
    v32 = v4;
  }

  v7 = [CBColorSample alloc];
  v6 = [(CBColorSample *)v7 initWithChromaticity:v21[4] illuminance:v21[5] andTempterature:v34[3], v32];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  *MEMORY[0x1E69E9840];
  return v6;
}

void __42__CBColorFilter_newColorSampleLogWeighted__block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a2 validData])
  {
    [a2 lux];
    v3 = log10(v2 + 1.0) / *(*(a1[5] + 8) + 24);
    v14 = v3;
    [a2 x];
    *(*(a1[6] + 8) + 32) = *(*(a1[6] + 8) + 32) + v4 * v14;
    [a2 y];
    *(*(a1[6] + 8) + 40) = *(*(a1[6] + 8) + 40) + v5 * v14;
    [a2 lux];
    *(*(a1[7] + 8) + 24) = *(*(a1[7] + 8) + 24) + v6 * v14;
    if (*(a1[4] + 8))
    {
      v12 = *(a1[4] + 8);
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

      v12 = inited;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v9 = [a2 service];
      [a2 x];
      v10 = v7;
      [a2 y];
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v16, v9, v10, v8, COERCE__INT64(v14));
      _os_log_debug_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEBUG, "service %p xy= %f | %f ratio=%f", v16, 0x2Au);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)newColorSampleConditionWeighted
{
  v104 = *MEMORY[0x1E69E9840];
  v97 = self;
  v96 = a2;
  v95 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 1375731712;
  v91 = 48;
  v92 = __Block_byref_object_copy__21;
  v93 = __Block_byref_object_dispose__21;
  v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v81 = 0;
  v82 = &v81;
  v83 = 1375731712;
  v84 = 48;
  v85 = __Block_byref_object_copy__21;
  v86 = __Block_byref_object_dispose__21;
  v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v80 = 0;
  v79 = 0;
  validServices = v97->_validServices;
  v72 = MEMORY[0x1E69E9820];
  v73 = -1073741824;
  v74 = 0;
  v75 = __48__CBColorFilter_newColorSampleConditionWeighted__block_invoke;
  v76 = &unk_1E867D2E8;
  v77 = &v81;
  v78 = &v88;
  [(NSMutableArray *)validServices enumerateObjectsUsingBlock:?];
  if (v97->super._logHandle)
  {
    logHandle = v97->super._logHandle;
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

  oslog = logHandle;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v103, v89[5]);
    _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "rear sensors: %@", v103, 0xCu);
  }

  if (v97->super._logHandle)
  {
    v49 = v97->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v48 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v48 = init_default_corebrightness_log();
    }

    v49 = v48;
  }

  v69 = v49;
  v68 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v102, v82[5]);
    _os_log_debug_impl(&dword_1DE8E5000, v69, v68, "front sensors: %@", v102, 0xCu);
  }

  if ([v89[5] count])
  {
    v80 = [(CBColorFilter *)v97 newColorSampleLinearWeightedForServices:v89[5]];
    if ([(CBColorFilter *)v97 hasExtRearSensor])
    {
      [v80 setType:2];
      [CBAnalyticsExtDisplayManager handleColorSample:v80];
    }

    if (v97->super._logHandle)
    {
      v47 = v97->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v46 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v46 = init_default_corebrightness_log();
      }

      v47 = v46;
    }

    v67 = v47;
    v66 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [v80 lux];
      v45 = v3;
      [v80 xy];
      v64 = v4;
      v65 = v5;
      v44 = v4;
      [v80 xy];
      v62 = v6;
      v63 = v7;
      v43 = v7;
      [v80 CCT];
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v101, v45, v44, v43, v8);
      _os_log_debug_impl(&dword_1DE8E5000, v67, v66, "rear consolidated sample: lux=%f x=%f y=%f CCT=%f", v101, 0x2Au);
    }
  }

  if ([v82[5] count])
  {
    v79 = [(CBColorFilter *)v97 newColorSampleLinearWeightedForServices:v82[5]];
    if ([(CBColorFilter *)v97 hasExtFrontSensor])
    {
      [v79 setType:1];
      [CBAnalyticsExtDisplayManager handleColorSample:v79];
    }

    if (v97->super._logHandle)
    {
      v42 = v97->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v41 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v41 = init_default_corebrightness_log();
      }

      v42 = v41;
    }

    v61 = v42;
    v60 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [v79 lux];
      v40 = v9;
      [v79 xy];
      v58 = v10;
      v59 = v11;
      v39 = v10;
      [v79 xy];
      v56 = v12;
      v57 = v13;
      v38 = v13;
      [v79 CCT];
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v100, v40, v39, v38, v14);
      _os_log_debug_impl(&dword_1DE8E5000, v61, v60, "front consolidated sample: lux=%f x=%f y=%f CCT=%f", v100, 0x2Au);
    }
  }

  if (v80 && v79)
  {
    [v79 lux];
    if (v15 > 15.0)
    {
      [v80 lux];
      if (v16 > 15.0)
      {
        v55 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v80, v79, 0}];
        if (v55)
        {
          [v80 lux];
          v37 = v17;
          [v79 lux];
          if (v37 <= v18)
          {
            v95 = [(CBColorFilter *)v97 newColorSampleLogWeightedForSamples:v55, v37];
          }

          else
          {
            v95 = [(CBColorFilter *)v97 newColorSampleLinearWeightedForSamples:v55, v37];
          }
        }

        else
        {
          if (v97->super._logHandle)
          {
            v36 = v97->super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v35 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v35 = init_default_corebrightness_log();
            }

            v36 = v35;
          }

          v54 = v36;
          v53 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v33 = v54;
            v34 = v53;
            __os_log_helper_16_0_0(v52);
            _os_log_error_impl(&dword_1DE8E5000, v33, v34, "error: couldn't allocate samples array", v52, 2u);
          }
        }

        MEMORY[0x1E69E5920](v55);
        goto LABEL_71;
      }

LABEL_62:
      v95 = MEMORY[0x1E69E5928](v79);
      goto LABEL_71;
    }

    [v80 lux];
    if (v19 <= 10.0)
    {
      goto LABEL_62;
    }

LABEL_58:
    v95 = MEMORY[0x1E69E5928](v80);
    goto LABEL_71;
  }

  if (v80)
  {
    goto LABEL_58;
  }

  if (v79)
  {
    goto LABEL_62;
  }

  if (v97->super._logHandle)
  {
    v32 = v97->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v31 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v31 = init_default_corebrightness_log();
    }

    v32 = v31;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_4_8_66_8_66_8_66_8_66(v99, v89[5], v80, v82[5], v79);
    _os_log_error_impl(&dword_1DE8E5000, v32, OS_LOG_TYPE_ERROR, "ERROR: no samples (rear: %{public}@ -> %{public}@ | front: %{public}@ -> %{public}@)", v99, 0x2Au);
  }

LABEL_71:
  if ([(CBColorFilter *)v97 hasExtFrontSensor]|| [(CBColorFilter *)v97 hasExtRearSensor])
  {
    [v95 setType:3];
    [CBAnalyticsExtDisplayManager handleColorSample:v95];
  }

  MEMORY[0x1E69E5920](v80);
  MEMORY[0x1E69E5920](v79);
  MEMORY[0x1E69E5920](v89[5]);
  MEMORY[0x1E69E5920](v82[5]);
  if (v97->super._logHandle)
  {
    v30 = v97->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v29 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v29 = init_default_corebrightness_log();
    }

    v30 = v29;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [v95 lux];
    v28 = v20;
    [v95 xy];
    v27 = v21;
    [v95 xy];
    v26 = v22;
    [v95 CCT];
    __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v98, v28, v27, v26, v23);
    _os_log_debug_impl(&dword_1DE8E5000, v30, OS_LOG_TYPE_DEBUG, "result sample: lux=%f x=%f y=%f CCT=%f", v98, 0x2Au);
  }

  v25 = v95;
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v88, 8);
  *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t __48__CBColorFilter_newColorSampleConditionWeighted__block_invoke(uint64_t a1, void *a2)
{
  v7 = 1;
  if ([a2 location] != 257)
  {
    v7 = [a2 placement] == 1;
  }

  v5 = 1;
  if ([a2 location] != 258)
  {
    v5 = [a2 placement] == 2;
  }

  v4 = 1;
  if (!v7)
  {
    v3 = 0;
    if ([a2 builtIn])
    {
      v3 = !v5;
    }

    v4 = v3;
  }

  result = [a2 validData];
  if (result)
  {
    if (v4)
    {
      return [*(*(*(a1 + 32) + 8) + 40) addObject:a2];
    }

    else if (v5)
    {
      return [*(*(*(a1 + 40) + 8) + 40) addObject:a2];
    }
  }

  return result;
}

- (BOOL)ALSServiceConformsToPolicy:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 1;
  if ([a3 builtIn])
  {
    v10 = (self->_sensorPolicy & 8) != 0;
  }

  if (([a3 builtIn] & 1) == 0 && (self->_sensorPolicy & 4) == 0)
  {
    v10 = 0;
  }

  v9 = 1;
  if ([a3 location] != 257)
  {
    v9 = [a3 placement] == 1;
  }

  v8 = 1;
  if ([a3 location] != 258)
  {
    v8 = [a3 placement] == 2;
  }

  v7 = 1;
  if (!v9)
  {
    v6 = 0;
    if ([a3 builtIn])
    {
      v6 = !v8;
    }

    v7 = v6;
  }

  if ((v7 & 1) != 0 && (self->_sensorPolicy & 1) == 0)
  {
    v10 = 0;
  }

  if (v8 && (self->_sensorPolicy & 2) == 0)
  {
    v10 = 0;
  }

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
    __os_log_helper_16_0_5_8_0_4_0_8_0_8_0_4_0(v13, [a3 registryID], objc_msgSend(a3, "builtIn"), objc_msgSend(a3, "location"), self->_sensorPolicy, v10);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "ID=0x%lX internal=%d location=0x%lX | policy=0x%lX | OK=%d", v13, 0x2Cu);
  }

  *MEMORY[0x1E69E9840];
  return v10;
}

- (void)updateValidServices
{
  [(NSMutableArray *)self->_validServices removeAllObjects];
  [(NSMutableArray *)self->_services enumerateObjectsUsingBlock:?];
  [(CBColorFilter *)self updateSample];
}

uint64_t __36__CBColorFilter_updateValidServices__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) ALSServiceConformsToPolicy:a2];
  if (result)
  {
    return [*(*(a1 + 32) + 40) addObject:a2];
  }

  return result;
}

- (BOOL)allValidALSEventsArrived
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = self;
  v12 = a2;
  v11 = 1;
  memset(__b, 0, sizeof(__b));
  obj = v13->_validServices;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = 0;
      v10 = *(__b[1] + 8 * v5);
      if (([v10 validData] & 1) == 0)
      {
        break;
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v11 = 0;
  }

LABEL_9:
  *MEMORY[0x1E69E9840];
  return v11 & 1;
}

- (void)resetEvents
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = self;
  v10 = a2;
  memset(__b, 0, sizeof(__b));
  obj = v11->_services;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = 0;
      v9 = *(__b[1] + 8 * v4);
      [v9 setEvent:0];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

+ (double)calculateCCTForChromaticity:(id)a3
{
  __x = (a3.var0 - 0.332) / (a3.var1 - 0.1858);
  v4 = pow(__x, 3.0);
  return 3525.0 * pow(__x, 2.0) + -449.0 * v4 + -6823.3 * __x + 5520.33;
}

+ (double)calculateCCTForTristimulus:(id)a3
{
  v6 = -1.0;
  v5 = a3.var0 + a3.var1 + a3.var2;
  if (v5 != 0.0)
  {
    [CBColorFilter calculateCCTForChromaticity:a3.var0 / v5, a3.var1 / v5];
    return v3;
  }

  return v6;
}

+ ($1AB5FA073B851C12C2339EC22442E995)calculateTristimulusForChromaticity:(id)a3 andLux:(double)a4
{
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (a3.var1 > 0.0 && a4 > 0.0)
  {
    v7 = a3.var0 / a3.var1 * a4;
    v8 = a4;
    v9 = (1.0 - a3.var0 - a3.var1) / a3.var1 * a4;
  }

  v4 = v7;
  v5 = v8;
  v6 = v9;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (BOOL)forceSampleUpdate
{
  v10 = self;
  v9 = a2;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0;
  [(NSMutableArray *)self->_validServices enumerateObjectsUsingBlock:?];
  if (v5[3])
  {
    [(CBColorFilter *)v10 updateSample];
  }

  v3 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v3 & 1;
}

uint64_t __34__CBColorFilter_forceSampleUpdate__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 updateEventData];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)hasExtRearSensor
{
  v10 = self;
  v9 = a2;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0;
  [(NSMutableArray *)self->_validServices enumerateObjectsUsingBlock:?];
  v3 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v3 & 1;
}

uint64_t __33__CBColorFilter_hasExtRearSensor__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 location];
  if (result == 258)
  {
    result = [a2 builtIn];
    if ((result & 1) == 0)
    {
      result = [a2 validData];
      if (result)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return result;
}

- (BOOL)hasExtFrontSensor
{
  v10 = self;
  v9 = a2;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0;
  [(NSMutableArray *)self->_validServices enumerateObjectsUsingBlock:?];
  v3 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v3 & 1;
}

uint64_t __34__CBColorFilter_hasExtFrontSensor__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 location];
  if (result == 257)
  {
    result = [a2 builtIn];
    if ((result & 1) == 0)
    {
      result = [a2 validData];
      if (result)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return result;
}

@end