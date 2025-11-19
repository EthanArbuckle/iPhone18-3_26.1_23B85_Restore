@interface HUAudioHalController
- (BOOL)processUpdateDescription:(id)a3;
- (HUAudioHalController)init;
- (void)clearAudioHalDevice;
- (void)hearingAidConnectionDidChange:(BOOL)a3;
- (void)hearingAidReachabilityDidChange;
- (void)registerForPropertyUpdate;
@end

@implementation HUAudioHalController

- (void)hearingAidReachabilityDidChange
{
  v3 = nameOfHearingDeviceReachableForAudioHandoff();
  [(HUAudioHalController *)self updateHalWithReachableHearingAidsName:v3];
}

- (HUAudioHalController)init
{
  v7.receiver = self;
  v7.super_class = HUAudioHalController;
  v2 = [(HUAudioHalController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__HUAudioHalController_init__block_invoke;
    block[3] = &unk_1E85C9F60;
    v6 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v3;
}

uint64_t __28__HUAudioHalController_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addAudioHalListener];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), HearingDevicesDidChangeNotification, @"com.apple.accessibility.hearing.audio.transfer.availability", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = *(a1 + 32);

  return [v3 registerForPropertyUpdate];
}

- (void)clearAudioHalDevice
{
  v3 = AXLogHearingHalPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "AXAudioHalController clearAudioHalDevice", v4, 2u);
  }

  [(HUAudioHalController *)self updateHalWithReachableHearingAidsName:0];
}

- (void)registerForPropertyUpdate
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__HUAudioHalController_registerForPropertyUpdate__block_invoke;
  aBlock[3] = &unk_1E85CB7D8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = +[AXHearingAidDeviceController sharedController];
  [v3 registerForPropertyUpdates:v2];

  v4 = +[HUNearbyHearingAidController sharedInstance];
  [v4 registerForPropertyUpdates:v2];
}

void __49__HUAudioHalController_registerForPropertyUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __49__HUAudioHalController_registerForPropertyUpdate__block_invoke_2;
    v4[3] = &unk_1E85CA558;
    v4[4] = *(a1 + 32);
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void __49__HUAudioHalController_registerForPropertyUpdate__block_invoke_2(uint64_t a1, void *a2, void *a3, char *a4)
{
  v10 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [*(a1 + 32) processUpdateDescription:v10];
  }

  else
  {
    v9 = 1;
  }

  *a4 = v9;
}

- (BOOL)processUpdateDescription:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 objectForKey:&unk_1F5623FB0], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 firstObject];
    if ([v7 intValue] == 2)
    {
      [(HUAudioHalController *)self hearingAidConnectionDidChange:1];
    }

    else
    {
      v9 = [v6 lastObject];
      -[HUAudioHalController hearingAidConnectionDidChange:](self, "hearingAidConnectionDidChange:", [v9 intValue] == 2);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)hearingAidConnectionDidChange:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v4 = AXLogHearingHalPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "AXAudioHalController hearingAidConnectionDidChange connected: %d", v6, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end