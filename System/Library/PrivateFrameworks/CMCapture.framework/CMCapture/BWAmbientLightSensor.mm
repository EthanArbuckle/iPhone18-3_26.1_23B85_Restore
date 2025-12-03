@interface BWAmbientLightSensor
- (BWAmbientLightSensor)init;
- (float)rearLuxLevel;
- (int)luxLevel;
- (void)_updateRearLuxLevel:(os_unfair_lock_s *)level;
- (void)dealloc;
@end

@implementation BWAmbientLightSensor

void __28__BWAmbientLightSensor_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isEqualToString:@"RLuxOutput"])
  {
    v5 = [*(a1 + 32) referencedObject];

    [(BWAmbientLightSensor *)v5 _updateRearLuxLevel:a3];
  }
}

- (BWAmbientLightSensor)init
{
  v6.receiver = self;
  v6.super_class = BWAmbientLightSensor;
  v2 = [(BWAmbientLightSensor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.cameracapture.alsQueue", 0);
    v2->_alsQueue = v3;
    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__BWAmbientLightSensor_init__block_invoke;
      block[3] = &unk_1E798F870;
      block[4] = v2;
      dispatch_async(v3, block);
      *&v2->_luxLevel = 0x7F7FFFFF7FFFFFFFLL;
      v2->_numberOfAmbientLightUpdates = 0;
    }

    else
    {
      [(BWAmbientLightSensor *)v2 dealloc];
      return 0;
    }
  }

  return v2;
}

id __28__BWAmbientLightSensor_init__block_invoke(uint64_t a1)
{
  result = [FigWeakReference weakReferenceToObject:*(a1 + 32)];
  if (result)
  {
    v3 = result;
    result = IOHIDEventSystemClientCreateWithType();
    if (result)
    {
      v4 = result;
      v5 = v3;
      v9[0] = @"PrimaryUsagePage";
      v9[1] = @"PrimaryUsage";
      v10[0] = &unk_1F2246318;
      v10[1] = &unk_1F2246330;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
      IOHIDEventSystemClientSetMatching();
      IOHIDEventSystemClientRegisterEventCallback();
      v8[5] = MEMORY[0x1E69E9820];
      v8[6] = 3221225472;
      v8[7] = __28__BWAmbientLightSensor_init__block_invoke_10;
      v8[8] = &unk_1E7990178;
      v8[9] = v3;
      v8[10] = v4;
      IOHIDEventSystemClientSetCancelHandler();
      IOHIDEventSystemClientSetDispatchQueue();
      IOHIDEventSystemClientActivate();
      *(*(a1 + 32) + 8) = v4;
      *(*(a1 + 32) + 40) = 0;
      v12 = 0;
      v13 = &v12;
      v14 = 0x3052000000;
      v15 = __Block_byref_object_copy__35;
      v6 = getBrightnessSystemClientClass_softClass;
      v16 = __Block_byref_object_dispose__35;
      v17 = getBrightnessSystemClientClass_softClass;
      if (!getBrightnessSystemClientClass_softClass)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __getBrightnessSystemClientClass_block_invoke;
        v11[3] = &unk_1E798FC38;
        v11[4] = &v12;
        __getBrightnessSystemClientClass_block_invoke(v11);
        v6 = v13[5];
      }

      _Block_object_dispose(&v12, 8);
      *(*(a1 + 32) + 32) = [[v6 alloc] init];
      v7 = *(*(a1 + 32) + 32);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __28__BWAmbientLightSensor_init__block_invoke_2;
      v8[3] = &unk_1E799B778;
      v8[4] = v3;
      [v7 registerNotificationBlock:v8 forProperties:&unk_1F2249840];
      return [*(a1 + 32) forceUpdateRearLuxLevel];
    }
  }

  return result;
}

void __28__BWAmbientLightSensor_init__block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)dealloc
{
  if (self->_hidSystemClient)
  {
    IOHIDEventSystemClientCancel();
  }

  alsQueue = self->_alsQueue;
  if (alsQueue)
  {
    dispatch_release(alsQueue);
  }

  brightnessSystemClient = self->_brightnessSystemClient;
  if (brightnessSystemClient)
  {
    [(BrightnessSystemClient *)brightnessSystemClient registerNotificationBlock:0];
    [(BrightnessSystemClient *)self->_brightnessSystemClient unregisterNotificationForKey:@"RLuxOutput"];
  }

  v5.receiver = self;
  v5.super_class = BWAmbientLightSensor;
  [(BWAmbientLightSensor *)&v5 dealloc];
}

- (int)luxLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  alsQueue = self->_alsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__BWAmbientLightSensor_luxLevel__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(alsQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)rearLuxLevel
{
  if (!self->_brightnessSystemClient)
  {
    return 3.4028e38;
  }

  [(BWAmbientLightSensor *)self forceUpdateRearLuxLevel];
  os_unfair_lock_lock(&self->_lock);
  rearLuxLevel = self->_rearLuxLevel;
  os_unfair_lock_unlock(&self->_lock);
  return rearLuxLevel;
}

- (void)_updateRearLuxLevel:(os_unfair_lock_s *)level
{
  if (level)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      os_unfair_lock_lock(level + 10);
      [objc_msgSend(a2 objectForKeyedSubscript:{@"lux", "floatValue"}];
      level[7]._os_unfair_lock_opaque = v4;

      os_unfair_lock_unlock(level + 10);
    }
  }
}

@end