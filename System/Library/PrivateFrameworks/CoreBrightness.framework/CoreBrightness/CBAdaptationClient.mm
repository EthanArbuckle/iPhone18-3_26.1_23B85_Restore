@interface CBAdaptationClient
+ (BOOL)supportsAdaptation;
- (BOOL)animateFromWeakestAdaptationModeInArray:(int *)a3 withLength:(int)a4 toWeakestInArray:(int *)a5 withLength:(int)a6 withProgress:(float)a7 andPeriod:(float)a8;
- (BOOL)available;
- (BOOL)getEnabled;
- (BOOL)getStrengths:(float *)a3 nStrengths:(int)a4;
- (BOOL)overrideStrengths:(float *)a3 forModes:(int *)a4 nModes:(int)a5;
- (BOOL)registerNotificationCallbackBlock:(id)a3 withQueue:(id)a4;
- (BOOL)registerNotificationForType:(unint64_t)a3;
- (BOOL)setAdaptationMode:(int)a3 withPeriod:(float)a4;
- (BOOL)setEnabled:(BOOL)a3;
- (BOOL)setWeakestAdaptationModeFromArray:(int *)a3 withLength:(int)a4 andPeriod:(float)a5;
- (CBAdaptationClient)init;
- (CBAdaptationClient)initWithClientObj:(id)a3;
- (int)getAdaptationMode;
- (void)dealloc;
- (void)handleBrightnessSystemNotificationForKey:(id)a3 withValue:(id)a4;
- (void)unregisterNotificationCallbackBlock;
- (void)unregisterNotificationForType:(unint64_t)a3;
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

- (CBAdaptationClient)initWithClientObj:(id)a3
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  if (!a3)
  {
    return 0;
  }

  v17.receiver = v20;
  v17.super_class = CBAdaptationClient;
  v20 = [(CBAdaptationClient *)&v17 init];
  if (v20)
  {
    v20->bsc = v18;
    MEMORY[0x1E69E5928](v20->bsc);
    v20->_logHandle = os_log_create("com.apple.CoreBrightness.Client.Adaptation", "default");
    if (!v20->_logHandle)
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

    v13 = [(BrightnessSystemClient *)v20->bsc copyPropertyForKey:@"SupportedColorFX"];
    if (v13)
    {
      v20->_supported = [objc_msgSend(v13 objectForKey:{@"SupportsAmbientColorAdaptation", "BOOLValue"}];
      MEMORY[0x1E69E5920](v13);
    }

    v20->ownsClient = 0;
    v7[0] = 0;
    v7[1] = v7;
    v8 = 1375731712;
    v9 = 48;
    v10 = __Block_byref_object_copy__9;
    v11 = __Block_byref_object_dispose__9;
    v12 = v20;
    [(BrightnessSystemClient *)v20->bsc registerNotificationBlock:?];
    _Block_object_dispose(v7, 8);
  }

  return v20;
}

- (CBAdaptationClient)init
{
  v18 = self;
  v17 = a2;
  v16.receiver = self;
  v16.super_class = CBAdaptationClient;
  v18 = [(CBAdaptationClient *)&v16 init];
  if (!v18)
  {
    return v18;
  }

  v18->bsc = objc_alloc_init(BrightnessSystemClient);
  if (v18->bsc)
  {
    v18->_logHandle = os_log_create("com.apple.CoreBrightness.Client.Adaptation", "default");
    if (!v18->_logHandle)
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

    v12 = [(BrightnessSystemClient *)v18->bsc copyPropertyForKey:@"SupportedColorFX"];
    if (v12)
    {
      v18->_supported = [objc_msgSend(v12 objectForKey:{@"SupportsAmbientColorAdaptation", "BOOLValue"}];
      MEMORY[0x1E69E5920](v12);
    }

    v18->ownsClient = 1;
    v6[0] = 0;
    v6[1] = v6;
    v7 = 1375731712;
    v8 = 48;
    v9 = __Block_byref_object_copy__9;
    v10 = __Block_byref_object_dispose__9;
    v11 = v18;
    [(BrightnessSystemClient *)v18->bsc registerNotificationBlock:?];
    _Block_object_dispose(v6, 8);
    return v18;
  }

  return 0;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  objc_sync_enter(self);
  if (v5->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
    v5->_logHandle = 0;
  }

  if (v5->bsc)
  {
    [(BrightnessSystemClient *)v5->bsc registerNotificationBlock:0 forProperties:?];
    MEMORY[0x1E69E5920](v5->bsc);
  }

  objc_sync_exit(self);
  v3.receiver = v5;
  v3.super_class = CBAdaptationClient;
  [(CBAdaptationClient *)&v3 dealloc];
}

- (BOOL)setEnabled:(BOOL)a3
{
  v5 = 0;
  if (!self->bsc)
  {
    return 0;
  }

  objc_sync_enter(self);
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3];
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
        v3 = 0;
        if ([v5 BOOLValue])
        {
          v3 = [(CBAdaptationClient *)self available];
        }

        v7 = v3;
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
  v6 = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    v4 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"ColorAdaptationAvailable"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 BOOLValue];
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
    v8 = v6 & 1;
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

- (BOOL)setWeakestAdaptationModeFromArray:(int *)a3 withLength:(int)a4 andPeriod:(float)a5
{
  v14 = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    if (a3)
    {
      if (a4 > 0)
      {
        v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
        if (v13)
        {
          for (i = 0; i < a4; ++i)
          {
            v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3[i]];
            if (v11)
            {
              [v13 setObject:v11 atIndexedSubscript:i];
              MEMORY[0x1E69E5920](v11);
            }
          }

          v8 = objc_alloc(MEMORY[0x1E696AD98]);
          *&v5 = a5;
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

- (BOOL)animateFromWeakestAdaptationModeInArray:(int *)a3 withLength:(int)a4 toWeakestInArray:(int *)a5 withLength:(int)a6 withProgress:(float)a7 andPeriod:(float)a8
{
  v48 = self;
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v43 = a6;
  v42 = a7;
  v41 = a8;
  v40 = 0;
  v30 = self;
  objc_sync_enter(self);
  if (v48->bsc && v44 && v43 > 0 && (!v45 || v46))
  {
    v29 = objc_alloc(MEMORY[0x1E695DF70]);
    v28 = [v29 initWithCapacity:v43];
    v39 = v28;
    if (v28)
    {
      for (i = 0; i < v43; ++i)
      {
        v27 = objc_alloc(MEMORY[0x1E696AD98]);
        v26 = [v27 initWithInt:v44[i]];
        v37 = v26;
        if (v26)
        {
          [v39 setObject:v37 atIndexedSubscript:i];
          MEMORY[0x1E69E5920](v37);
        }
      }

      v25 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v8 = v41;
      v24 = [v25 initWithFloat:v8];
      v36 = v24;
      if (v24)
      {
        v23 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v9 = v42;
        v22 = [v23 initWithFloat:v9];
        v35 = v22;
        if (v22)
        {
          v34 = 0;
          if (v45 > 0)
          {
            if (v46)
            {
              v21 = objc_alloc(MEMORY[0x1E695DF70]);
              v20 = [v21 initWithCapacity:v45];
              v34 = v20;
              if (v20)
              {
                for (j = 0; j < v45; ++j)
                {
                  v19 = objc_alloc(MEMORY[0x1E696AD98]);
                  v18 = [v19 initWithInt:v46[j]];
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
            v12 = [(BrightnessSystemClient *)v48->bsc setProperty:v31 forKey:@"WeakestColorAdaptationModeAnimated"];
            v40 = v12;
            v48->_modeSet = 0;
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

  objc_sync_exit(v30);
  return v40;
}

- (BOOL)setAdaptationMode:(int)a3 withPeriod:(float)a4
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  objc_sync_enter(self);
  *&v4 = a4;
  v7 = [(CBAdaptationClient *)v11 setWeakestAdaptationModeFromArray:&v9 withLength:1 andPeriod:v4];
  if (v7)
  {
    v11->_mode = v9;
    v11->_modeSet = 1;
  }

  objc_sync_exit(self);
  return v7;
}

- (BOOL)overrideStrengths:(float *)a3 forModes:(int *)a4 nModes:(int)a5
{
  v13 = 0;
  objc_sync_enter(self);
  if (self->bsc)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5 > 0 && a5 <= 6)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a5];
          if (v12)
          {
            for (i = 0; i < a5; ++i)
            {
              v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a4[i]];
              if (v10)
              {
                v7 = objc_alloc(MEMORY[0x1E696AD98]);
                *&v5 = a3[i];
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

- (BOOL)getStrengths:(float *)a3 nStrengths:(int)a4
{
  v14 = 0;
  objc_sync_enter(self);
  if (self->bsc && a3 && a4)
  {
    __memset_chk();
    v12 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"ColorAdaptationModeMapping"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = a4 <= 6 ? a4 : 6;
        v11 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:i];
          if (v9)
          {
            v8 = [v12 objectForKey:v9];
            [v8 floatValue];
            a3[i] = v4;
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

- (void)handleBrightnessSystemNotificationForKey:(id)a3 withValue:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = self;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = 0;
  v30 = 0;
  if ([a3 isEqualToString:@"ColorAdaptationAvailable"])
  {
    v31 = 1;
    v30 = v32;
  }

  else if ([v33 isEqualToString:@"ColorAdaptationEnabled"])
  {
    v31 = 2;
    v30 = v32;
  }

  else if ([v33 isEqualToString:@"SupportedColorFX"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v32 objectForKey:@"SupportsAmbientColorAdaptation"];
      v31 = 3;
    }
  }

  else if ([v33 isEqualToString:@"ColorAdaptationIntegratedSupport "])
  {
    v31 = 4;
    v30 = v32;
  }

  else
  {
    if (v35->_logHandle)
    {
      logHandle = v35->_logHandle;
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
      __os_log_helper_16_2_1_8_64(v37, v33);
      _os_log_error_impl(&dword_1DE8E5000, v29, v28, "error: unknown notification type (%@)", v37, 0xCu);
    }
  }

  if (v35->_logHandle)
  {
    v11 = v35->_logHandle;
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
    __os_log_helper_16_2_5_8_64_8_0_8_64_8_0_8_0(v36, v33, v31, v30, v35->_notificationBlock, v35->_notificationQueue);
    _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "key=%@ (type=%tu) value=%@  block=%p queue=%p", v36, 0x34u);
  }

  obj = v35;
  objc_sync_enter(v35);
  if (v35->_notificationBlock && v35->_notificationQueue)
  {
    v25 = _Block_copy(v35->_notificationBlock);
    notificationQueue = v35->_notificationQueue;
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
    if (v35->_logHandle)
    {
      v8 = v35->_logHandle;
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

- (BOOL)registerNotificationCallbackBlock:(id)a3 withQueue:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  if (a3 && v13)
  {
    [(CBAdaptationClient *)v16 unregisterNotificationCallbackBlock];
    obj = v16;
    objc_sync_enter(v16);
    v16->_notificationQueue = v13;
    dispatch_retain(v13);
    v16->_notificationBlock = _Block_copy(v14);
    objc_sync_exit(obj);
    return 1;
  }

  else
  {
    if (v16->_logHandle)
    {
      logHandle = v16->_logHandle;
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

- (BOOL)registerNotificationForType:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  switch(a3)
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
        __os_log_helper_16_0_1_8_0(v10, a3);
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

- (void)unregisterNotificationForType:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  switch(a3)
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
        __os_log_helper_16_0_1_8_0(v8, a3);
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