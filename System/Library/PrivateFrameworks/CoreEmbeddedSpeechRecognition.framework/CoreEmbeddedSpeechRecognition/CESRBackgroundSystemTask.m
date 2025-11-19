@interface CESRBackgroundSystemTask
- (BOOL)_isPeriodicPreheatEnabled;
- (CESRBackgroundSystemTask)init;
- (void)_registerAndSubmitAllBGSystemTasks;
- (void)registerAndSubmitBGSystemTasks;
@end

@implementation CESRBackgroundSystemTask

- (BOOL)_isPeriodicPreheatEnabled
{
  if (!AFDeviceSupportsSiriMUX() || !AFIsUODCapableHorsemanDevice())
  {
    return 0;
  }

  v2 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_registerAndSubmitAllBGSystemTasks
{
  v3 = _buildLaunchHandlerWithFunction(&__block_literal_global_741);
  _registerBGST(@"com.apple.siri.bg_system_task.post-install-speech-profile-migration", v3);
  _submitBGSTRequest(@"com.apple.siri.bg_system_task.post-install-speech-profile-migration", &__block_literal_global_327);

  v4 = _buildLaunchHandlerWithFunction(&__block_literal_global_336);
  _registerBGST(@"com.apple.siri.bg_system_task.daily-speech-profile-maintenance", v4);
  _submitBGSTRequest(@"com.apple.siri.bg_system_task.daily-speech-profile-maintenance", &__block_literal_global_338);

  v5 = _buildLaunchHandlerWithFunction(&__block_literal_global_341);
  _registerBGST(@"com.apple.siri.bg_system_task.post-install-asset-subscription", v5);
  _submitBGSTRequest(@"com.apple.siri.bg_system_task.post-install-asset-subscription", &__block_literal_global_343);

  v6 = _buildLaunchHandlerWithFunction(&__block_literal_global_346);
  _registerBGST(@"com.apple.siri.bg_system_task.daily-asset-subscription-cleanup", v6);
  _submitBGSTRequest(@"com.apple.siri.bg_system_task.daily-asset-subscription-cleanup", &__block_literal_global_348);

  if ([(CESRBackgroundSystemTask *)self _isANECapableDevice])
  {
    v7 = _buildLaunchHandlerWithFunction(&__block_literal_global_350);
    _registerBGST(@"com.apple.siri.bg_system_task.post-install-speech-ane-compilation", v7);
    _submitBGSTRequest(@"com.apple.siri.bg_system_task.post-install-speech-ane-compilation", &__block_literal_global_352);

    v8 = _buildLaunchHandlerWithFunction(&__block_literal_global_359);
    _registerBGST(@"com.apple.siri.bg_system_task.daily-speech-ane-compilation", v8);
    _submitBGSTRequest(@"com.apple.siri.bg_system_task.daily-speech-ane-compilation", &__block_literal_global_361);
  }

  if (AFIsInternalInstall())
  {
    v9 = _buildLaunchHandlerWithFunction(&__block_literal_global_365);
    _registerBGST(@"com.apple.siri.bg_system_task.replay-record-pruning", v9);
    _submitBGSTRequest(@"com.apple.siri.bg_system_task.replay-record-pruning", &__block_literal_global_367);
  }
}

- (void)registerAndSubmitBGSystemTasks
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CESRBackgroundSystemTask_registerAndSubmitBGSystemTasks__block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CESRBackgroundSystemTask)init
{
  v11.receiver = self;
  v11.super_class = CESRBackgroundSystemTask;
  v2 = [(CESRBackgroundSystemTask *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 cStringUsingEncoding:4];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create(v5, v7);
    queue = v2->_queue;
    v2->_queue = v8;
  }

  return v2;
}

@end