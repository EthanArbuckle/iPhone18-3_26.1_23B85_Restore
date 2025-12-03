@interface CBAdaptationClient
+ (BOOL)supportsAdaptation;
- (BOOL)animateFromWeakestAdaptationModeInArray:(int *)array withLength:(int)length toWeakestInArray:(int *)inArray withLength:(int)withLength withProgress:(float)progress andPeriod:(float)period;
- (BOOL)available;
- (BOOL)getEnabled;
- (BOOL)getStrengths:(float *)strengths nStrengths:(int)nStrengths;
- (BOOL)overrideStrengths:(float *)strengths forModes:(int *)modes nModes:(int)nModes;
- (BOOL)registerNotificationCallbackBlock:(id)block withQueue:(id)queue;
- (BOOL)registerNotificationForType:(unint64_t)type;
- (BOOL)setAdaptationMode:(int)mode withPeriod:(float)period;
- (BOOL)setEnabled:(BOOL)enabled;
- (BOOL)setWeakestAdaptationModeFromArray:(int *)array withLength:(int)length andPeriod:(float)period;
- (CBAdaptationClient)init;
- (CBAdaptationClient)initWithClientObj:(id)obj;
- (int)getAdaptationMode;
- (void)dealloc;
- (void)handleBrightnessSystemNotificationForKey:(id)key withValue:(id)value;
- (void)unregisterNotificationCallbackBlock;
- (void)unregisterNotificationForType:(unint64_t)type;
@end

@implementation CBAdaptationClient

+ (BOOL)supportsAdaptation
{
  v5 = 0;
  v4 = objc_alloc_init(BrightnessSystemClient);
  if (v4)
  {
    v3 = [(BrightnessSystemClient *)v4 copyPropertyForKey:@"SupportedColorFX"];
    if (v3)
    {
      v5 = [objc_msgSend(v3 objectForKey:{@"SupportsAmbientColorAdaptation", "BOOLValue"}];
      MEMORY[0x1E69E5920](v3);
    }

    MEMORY[0x1E69E5920](v4);
  }

  return v5 & 1;
}

- (CBAdaptationClient)initWithClientObj:(id)obj
{
  selfCopy = self;
  v19 = a2;
  objCopy = obj;
  if (!obj)
  {
    return 0;
  }

  v17.receiver = selfCopy;
  v17.super_class = CBAdaptationClient;
  selfCopy = [(CBAdaptationClient *)&v17 init];
  if (selfCopy)
  {
    selfCopy->bsc = objCopy;
    MEMORY[0x1E69E5928](selfCopy->bsc);
    selfCopy->_logHandle = os_log_create("com.apple.CoreBrightness.Client.Adaptation", "default");
    if (!selfCopy->_logHandle)
    {
      v6 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v16 = v6;
      v15 = 16;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        log = v16;
        type = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v14, 2u);
      }
    }

    v13 = [(BrightnessSystemClient *)selfCopy->bsc copyPropertyForKey:@"SupportedColorFX"];
    if (v13)
    {
      selfCopy->_supported = [objc_msgSend(v13 objectForKey:{@"SupportsAmbientColorAdaptation", "BOOLValue"}];
      MEMORY[0x1E69E5920](v13);
    }

    selfCopy->ownsClient = 0;
    v7[0] = 0;
    v7[1] = v7;
    v8 = 1375731712;
    v9 = 48;
    v10 = __Block_byref_object_copy__9;
    v11 = __Block_byref_object_dispose__9;
    v12 = selfCopy;
    [(BrightnessSystemClient *)selfCopy->bsc registerNotificationBlock:?];
    _Block_object_dispose(v7, 8);
  }

  return selfCopy;
}

- (CBAdaptationClient)init
{
  selfCopy = self;
  v17 = a2;
  v16.receiver = self;
  v16.super_class = CBAdaptationClient;
  selfCopy = [(CBAdaptationClient *)&v16 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  selfCopy->bsc = objc_alloc_init(BrightnessSystemClient);
  if (selfCopy->bsc)
  {
    selfCopy->_logHandle = os_log_create("com.apple.CoreBrightness.Client.Adaptation", "default");
    if (!selfCopy->_logHandle)
    {
      v5 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v15 = v5;
      v14 = 16;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v13, 2u);
      }
    }

    v12 = [(BrightnessSystemClient *)selfCopy->bsc copyPropertyForKey:@"SupportedColorFX"];
    if (v12)
    {
      selfCopy->_supported = [objc_msgSend(v12 objectForKey:{@"SupportsAmbientColorAdaptation", "BOOLValue"}];
      MEMORY[0x1E69E5920](v12);
    }

    selfCopy->ownsClient = 1;
    v6[0] = 0;
    v6[1] = v6;
    v7 = 1375731712;
    v8 = 48;
    v9 = __Block_byref_object_copy__9;
    v10 = __Block_byref_object_dispose__9;
    v11 = selfCopy;
    [(BrightnessSystemClient *)selfCopy->bsc registerNotificationBlock:?];
    _Block_object_dispose(v6, 8);
    return selfCopy;
  }

  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  objc_sync_enter(self);
  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->bsc)
  {
    [(BrightnessSystemClient *)selfCopy->bsc registerNotificationBlock:0 forProperties:?];
    MEMORY[0x1E69E5920](selfCopy->bsc);
  }

  objc_sync_exit(self);
  v3.receiver = selfCopy;
  v3.super_class = CBAdaptationClient;
  [(CBAdaptationClient *)&v3 dealloc];
}

- (BOOL)setEnabled:(BOOL)enabled
{
  v5 = 0;
  if (!self->bsc)
  {
    return 0;
  }

  objc_sync_enter(self);
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:enabled];
  if (v4)
  {
    v5 = [(BrightnessSystemClient *)self->bsc setProperty:v4 forKey:@"ColorAdaptationEnabled"];
    MEMORY[0x1E69E5920](v4);
  }

  objc_sync_exit(self);
  return v5;
}

- (BOOL)getEnabled
{
  v7 = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    v5 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"ColorAdaptationEnabled"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        available = 0;
        if ([v5 BOOLValue])
        {
          available = [(CBAdaptationClient *)self available];
        }

        v7 = available;
      }

      MEMORY[0x1E69E5920](v5);
    }

    v6 = 0;
  }

  else
  {
    v9 = 0;
    v6 = 1;
  }

  objc_sync_exit(self);
  if (!v6)
  {
    return v7;
  }

  return v9;
}

- (BOOL)available
{
  bOOLValue = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    v4 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"ColorAdaptationAvailable"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v4 BOOLValue];
      }

      MEMORY[0x1E69E5920](v4);
    }

    v5 = 0;
  }

  else
  {
    v8 = 0;
    v5 = 1;
  }

  objc_sync_exit(self);
  if (!v5)
  {
    v8 = bOOLValue & 1;
  }

  return v8 & 1;
}

- (int)getAdaptationMode
{
  mode = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    if (self->_modeSet)
    {
      mode = self->_mode;
    }

    else
    {
      v4 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"ColorAdaptationMode"];
      if (v4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mode = [v4 intValue];
        }

        MEMORY[0x1E69E5920](v4);
        self->_mode = mode;
        self->_modeSet = 1;
      }
    }

    v5 = 0;
  }

  else
  {
    v8 = 0;
    v5 = 1;
  }

  objc_sync_exit(self);
  if (!v5)
  {
    return mode;
  }

  return v8;
}

- (BOOL)setWeakestAdaptationModeFromArray:(int *)array withLength:(int)length andPeriod:(float)period
{
  v14 = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    if (array)
    {
      if (length > 0)
      {
        v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:length];
        if (v13)
        {
          for (i = 0; i < length; ++i)
          {
            v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:array[i]];
            if (v11)
            {
              [v13 setObject:v11 atIndexedSubscript:i];
              MEMORY[0x1E69E5920](v11);
            }
          }

          v8 = objc_alloc(MEMORY[0x1E696AD98]);
          *&v5 = period;
          v7 = [v8 initWithFloat:v5];
          if (v7)
          {
            v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v13, @"ColorAdaptationModesTargetSub", v7, @"ColorAdaptationStrengthPeriod", 0}];
            if (v10)
            {
              v14 = [(BrightnessSystemClient *)self->bsc setProperty:v10 forKey:@"WeakestColorAdaptationMode"];
              self->_modeSet = 0;
              MEMORY[0x1E69E5920](v10);
            }

            MEMORY[0x1E69E5920](v7);
          }

          MEMORY[0x1E69E5920](v13);
        }
      }
    }
  }

  objc_sync_exit(self);
  return v14;
}

- (BOOL)animateFromWeakestAdaptationModeInArray:(int *)array withLength:(int)length toWeakestInArray:(int *)inArray withLength:(int)withLength withProgress:(float)progress andPeriod:(float)period
{
  selfCopy = self;
  v47 = a2;
  arrayCopy = array;
  lengthCopy = length;
  inArrayCopy = inArray;
  withLengthCopy = withLength;
  progressCopy = progress;
  periodCopy = period;
  v40 = 0;
  selfCopy2 = self;
  objc_sync_enter(self);
  if (selfCopy->bsc && inArrayCopy && withLengthCopy > 0 && (!lengthCopy || arrayCopy))
  {
    v29 = objc_alloc(MEMORY[0x1E695DF70]);
    v28 = [v29 initWithCapacity:withLengthCopy];
    v39 = v28;
    if (v28)
    {
      for (i = 0; i < withLengthCopy; ++i)
      {
        v27 = objc_alloc(MEMORY[0x1E696AD98]);
        v26 = [v27 initWithInt:inArrayCopy[i]];
        v37 = v26;
        if (v26)
        {
          [v39 setObject:v37 atIndexedSubscript:i];
          MEMORY[0x1E69E5920](v37);
        }
      }

      v25 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v8 = periodCopy;
      v24 = [v25 initWithFloat:v8];
      v36 = v24;
      if (v24)
      {
        v23 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v9 = progressCopy;
        v22 = [v23 initWithFloat:v9];
        v35 = v22;
        if (v22)
        {
          v34 = 0;
          if (lengthCopy > 0)
          {
            if (arrayCopy)
            {
              v21 = objc_alloc(MEMORY[0x1E695DF70]);
              v20 = [v21 initWithCapacity:lengthCopy];
              v34 = v20;
              if (v20)
              {
                for (j = 0; j < lengthCopy; ++j)
                {
                  v19 = objc_alloc(MEMORY[0x1E696AD98]);
                  v18 = [v19 initWithInt:arrayCopy[j]];
                  v32 = v18;
                  if (v18)
                  {
                    [v34 setObject:v32 atIndexedSubscript:j];
                    MEMORY[0x1E69E5920](v32);
                  }
                }
              }
            }
          }

          v31 = 0;
          if (v34)
          {
            v17 = objc_alloc(MEMORY[0x1E695DF20]);
            v15 = &v11;
            v16 = [v17 initWithObjectsAndKeys:{v34, @"ColorAdaptationModesInitialSub", v35, @"ProgressRatio", v39, @"ColorAdaptationModesTargetSub", v36, @"ColorAdaptationStrengthPeriod", 0}];
            v31 = v16;
          }

          else
          {
            v14 = objc_alloc(MEMORY[0x1E695DF20]);
            v13 = [v14 initWithObjectsAndKeys:{v35, @"ProgressRatio", v39, @"ColorAdaptationModesTargetSub", v36, @"ColorAdaptationStrengthPeriod", 0}];
            v31 = v13;
          }

          if (v31)
          {
            v12 = [(BrightnessSystemClient *)selfCopy->bsc setProperty:v31 forKey:@"WeakestColorAdaptationModeAnimated"];
            v40 = v12;
            selfCopy->_modeSet = 0;
            MEMORY[0x1E69E5920](v31);
          }

          if (v34)
          {
            MEMORY[0x1E69E5920](v34);
          }

          MEMORY[0x1E69E5920](v35);
        }

        MEMORY[0x1E69E5920](v36);
      }

      MEMORY[0x1E69E5920](v39);
    }
  }

  objc_sync_exit(selfCopy2);
  return v40;
}

- (BOOL)setAdaptationMode:(int)mode withPeriod:(float)period
{
  selfCopy = self;
  v10 = a2;
  modeCopy = mode;
  objc_sync_enter(self);
  *&v4 = period;
  v7 = [(CBAdaptationClient *)selfCopy setWeakestAdaptationModeFromArray:&modeCopy withLength:1 andPeriod:v4];
  if (v7)
  {
    selfCopy->_mode = modeCopy;
    selfCopy->_modeSet = 1;
  }

  objc_sync_exit(self);
  return v7;
}

- (BOOL)overrideStrengths:(float *)strengths forModes:(int *)modes nModes:(int)nModes
{
  v13 = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    if (strengths)
    {
      if (modes)
      {
        if (nModes > 0 && nModes <= 6)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:nModes];
          if (v12)
          {
            for (i = 0; i < nModes; ++i)
            {
              v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:modes[i]];
              if (v10)
              {
                v7 = objc_alloc(MEMORY[0x1E696AD98]);
                *&v5 = strengths[i];
                v9 = [v7 initWithFloat:v5];
                if (v9)
                {
                  [v12 setObject:v9 forKey:v10];
                  MEMORY[0x1E69E5920](v9);
                }

                MEMORY[0x1E69E5920](v10);
              }
            }

            v13 = [(BrightnessSystemClient *)self->bsc setProperty:v12 forKey:@"ColorAdaptationModeMapping"];
            MEMORY[0x1E69E5920](v12);
          }
        }
      }
    }
  }

  objc_sync_exit(self);
  return v13;
}

- (BOOL)getStrengths:(float *)strengths nStrengths:(int)nStrengths
{
  v14 = 0;
  objc_sync_enter(self);
  if (self->bsc && strengths && nStrengths)
  {
    __memset_chk();
    v12 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"ColorAdaptationModeMapping"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = nStrengths <= 6 ? nStrengths : 6;
        v11 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:i];
          if (v9)
          {
            v8 = [v12 objectForKey:v9];
            [v8 floatValue];
            strengths[i] = v4;
            ++v11;
          }
        }

        if (v11 == v6)
        {
          v14 = 1;
        }
      }
    }

    if (v12)
    {
      MEMORY[0x1E69E5920](v12);
    }

    v13 = 0;
  }

  else
  {
    v18 = 0;
    v13 = 1;
  }

  objc_sync_exit(self);
  if (!v13)
  {
    v18 = v14;
  }

  return v18 & 1;
}

- (void)handleBrightnessSystemNotificationForKey:(id)key withValue:(id)value
{
  v38 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v34 = a2;
  keyCopy = key;
  valueCopy = value;
  v31 = 0;
  v30 = 0;
  if ([key isEqualToString:@"ColorAdaptationAvailable"])
  {
    v31 = 1;
    v30 = valueCopy;
  }

  else if ([keyCopy isEqualToString:@"ColorAdaptationEnabled"])
  {
    v31 = 2;
    v30 = valueCopy;
  }

  else if ([keyCopy isEqualToString:@"SupportedColorFX"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [valueCopy objectForKey:@"SupportsAmbientColorAdaptation"];
      v31 = 3;
    }
  }

  else if ([keyCopy isEqualToString:@"ColorAdaptationIntegratedSupport "])
  {
    v31 = 4;
    v30 = valueCopy;
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
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

    v29 = logHandle;
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v37, keyCopy);
      _os_log_error_impl(&dword_1DE8E5000, v29, v28, "error: unknown notification type (%@)", v37, 0xCu);
    }
  }

  if (selfCopy->_logHandle)
  {
    v11 = selfCopy->_logHandle;
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

  v27 = v11;
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_5_8_64_8_0_8_64_8_0_8_0(v36, keyCopy, v31, v30, selfCopy->_notificationBlock, selfCopy->_notificationQueue);
    _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "key=%@ (type=%tu) value=%@  block=%p queue=%p", v36, 0x34u);
  }

  obj = selfCopy;
  objc_sync_enter(selfCopy);
  if (selfCopy->_notificationBlock && selfCopy->_notificationQueue)
  {
    v25 = _Block_copy(selfCopy->_notificationBlock);
    notificationQueue = selfCopy->_notificationQueue;
    block = MEMORY[0x1E69E9820];
    v18 = -1073741824;
    v19 = 0;
    v20 = __73__CBAdaptationClient_handleBrightnessSystemNotificationForKey_withValue___block_invoke;
    v21 = &unk_1E867BE18;
    v23 = v25;
    v24 = v31;
    v22 = v30;
    dispatch_async(notificationQueue, &block);
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v8 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    oslog = v8;
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_1DE8E5000, v5, v6, "no callback or queue available - ignoring notification", v14, 2u);
    }
  }

  objc_sync_exit(obj);
  *MEMORY[0x1E69E9840];
}

void __73__CBAdaptationClient_handleBrightnessSystemNotificationForKey_withValue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
}

- (BOOL)registerNotificationCallbackBlock:(id)block withQueue:(id)queue
{
  selfCopy = self;
  v15 = a2;
  blockCopy = block;
  queueCopy = queue;
  if (block && queueCopy)
  {
    [(CBAdaptationClient *)selfCopy unregisterNotificationCallbackBlock];
    obj = selfCopy;
    objc_sync_enter(selfCopy);
    selfCopy->_notificationQueue = queueCopy;
    dispatch_retain(queueCopy);
    selfCopy->_notificationBlock = _Block_copy(blockCopy);
    objc_sync_exit(obj);
    return 1;
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
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

    v12 = logHandle;
    v11 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "error: invalid parameter(s)", v10, 2u);
    }

    return 0;
  }
}

- (void)unregisterNotificationCallbackBlock
{
  objc_sync_enter(self);
  if (self->_notificationQueue)
  {
    dispatch_release(self->_notificationQueue);
    self->_notificationQueue = 0;
  }

  if (self->_notificationBlock)
  {
    _Block_release(self->_notificationBlock);
    self->_notificationBlock = 0;
  }

  objc_sync_exit(self);
}

- (BOOL)registerNotificationForType:(unint64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  switch(type)
  {
    case 1uLL:
      v6 = @"ColorAdaptationAvailable";
      break;
    case 2uLL:
      v6 = @"ColorAdaptationEnabled";
      break;
    case 3uLL:
      v6 = @"SupportedColorFX";
      break;
    case 4uLL:
      v6 = @"ColorAdaptationIntegratedSupport ";
      break;
    default:
      if (self->_logHandle)
      {
        logHandle = self->_logHandle;
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
        __os_log_helper_16_0_1_8_0(v10, type);
        _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "error: unknown notification type (%tu)", v10, 0xCu);
      }

      break;
  }

  if (v6)
  {
    [(BrightnessSystemClient *)self->bsc registerNotificationForKey:v6];
    MEMORY[0x1E69E5920](v6);
    v7 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (void)unregisterNotificationForType:(unint64_t)type
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  switch(type)
  {
    case 1uLL:
      v5 = @"ColorAdaptationAvailable";
      break;
    case 2uLL:
      v5 = @"ColorAdaptationEnabled";
      break;
    case 3uLL:
      v5 = @"SupportedColorFX";
      break;
    case 4uLL:
      v5 = @"ColorAdaptationIntegratedSupport ";
      break;
    default:
      if (self->_logHandle)
      {
        logHandle = self->_logHandle;
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
        __os_log_helper_16_0_1_8_0(v8, type);
        _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "error: unknown notification type (%tu)", v8, 0xCu);
      }

      break;
  }

  if (v5)
  {
    [(BrightnessSystemClient *)self->bsc unregisterNotificationForKey:v5];
    MEMORY[0x1E69E5920](v5);
  }

  *MEMORY[0x1E69E9840];
}

@end