@interface BKDeviceManager
+ (id)availableDevicesWithFailure:(BOOL *)a3;
+ (void)initialize;
@end

@implementation BKDeviceManager

+ (void)initialize
{
  if (initializeOSLog_onceToken != -1)
  {
    +[BKDeviceDescriptor initialize];
  }
}

+ (id)availableDevicesWithFailure:(BOOL *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = a3;
    _os_log_impl(&dword_1C82AD000, v5, OS_LOG_TYPE_DEFAULT, "BKDeviceManager::availableDevicesWithFailure: %p\n", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v14 = 0;
  if ([BKDeviceTouchID deviceAvailableWithFailure:&v14])
  {
    v7 = [BKDeviceDescriptor deviceDescriptorForType:1];
    [v6 addObject:v7];
  }

  if (v14)
  {
    v8 = 0;
  }

  else
  {
    v8 = &v14;
  }

  if ([BKDevicePearl deviceAvailableWithFailure:v8])
  {
    v9 = [BKDeviceDescriptor deviceDescriptorForType:2];
    [v6 addObject:v9];
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v4;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v11 = *a3;
    }

    else
    {
      v11 = -1;
    }

    *buf = 138412546;
    v16 = v6;
    v17 = 1024;
    v18 = v11;
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKDeviceManager::availableDevicesWithFailure -> %@, failure:%d\n", buf, 0x12u);
  }

  [v6 count];
  kdebug_trace();
  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

@end