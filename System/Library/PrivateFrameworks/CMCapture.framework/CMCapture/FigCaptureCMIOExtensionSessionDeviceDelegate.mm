@interface FigCaptureCMIOExtensionSessionDeviceDelegate
- (void)device:(id)device propertiesChanged:(id)changed;
@end

@implementation FigCaptureCMIOExtensionSessionDeviceDelegate

uint64_t __73__FigCaptureCMIOExtensionSessionDeviceDelegate_device_propertiesChanged___block_invoke(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  result = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v17;
    v11 = *off_1E7989F78;
    v10 = *off_1E7989F70;
    v14 = *off_1E798B838;
    v13 = *off_1E798B848;
    v5 = *off_1E798B840;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{v7), "value"}];
        if (cmioefcd_devicePropertyChangedNotificationForCMIOExtensionProperty_onceToken == -1)
        {
          if (!v7)
          {
            goto LABEL_11;
          }
        }

        else
        {
          __73__FigCaptureCMIOExtensionSessionDeviceDelegate_device_propertiesChanged___block_invoke_cold_1();
          if (!v7)
          {
            goto LABEL_11;
          }
        }

        if ([cmioefcd_devicePropertyChangedNotificationForCMIOExtensionProperty_sCMIOExtensionPropertiesToDevicePropertyChangedNotifications objectForKeyedSubscript:v7])
        {
          [v8 setObject:v9 forKeyedSubscript:v11];
          [v8 setObject:*(a1 + 40) forKeyedSubscript:v10];
          CMNotificationCenterGetDefaultLocalCenter();
          goto LABEL_12;
        }

LABEL_11:
        [v8 setObject:v7 forKeyedSubscript:v14];
        [v8 setObject:v9 forKeyedSubscript:v13];
        [v8 setObject:*(a1 + 40) forKeyedSubscript:v5];
        CMNotificationCenterGetDefaultLocalCenter();
LABEL_12:
        CMNotificationCenterPostNotification();
        ++v6;
      }

      while (v3 != v6);
      result = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)device:(id)device propertiesChanged:(id)changed
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 28));
  if (*(DerivedStorage + 24) == 1)
  {
    os_unfair_lock_unlock((DerivedStorage + 28));
    v7 = 0;
  }

  else
  {
    v7 = *DerivedStorage;
    os_unfair_lock_unlock((DerivedStorage + 28));
    if (v7)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__FigCaptureCMIOExtensionSessionDeviceDelegate_device_propertiesChanged___block_invoke;
      block[3] = &unk_1E798FD58;
      block[4] = changed;
      block[5] = v7;
      block[6] = self;
      dispatch_async(global_queue, block);
    }
  }
}

@end