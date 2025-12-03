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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_registerAndSubmitAllBGSystemTasks
{
  v3 = sub_10014463C(&stru_100252898);
  sub_1001446E0(@"com.apple.siri.bg_system_task.post-install-speech-profile-migration", v3);
  sub_100144764(@"com.apple.siri.bg_system_task.post-install-speech-profile-migration", &stru_1002528D8);

  v4 = sub_10014463C(&stru_100252920);
  sub_1001446E0(@"com.apple.siri.bg_system_task.daily-speech-profile-maintenance", v4);
  sub_100144764(@"com.apple.siri.bg_system_task.daily-speech-profile-maintenance", &stru_100252940);

  v5 = sub_10014463C(&stru_100252960);
  sub_1001446E0(@"com.apple.siri.bg_system_task.post-install-asset-subscription", v5);
  sub_100144764(@"com.apple.siri.bg_system_task.post-install-asset-subscription", &stru_100252980);

  v6 = sub_10014463C(&stru_1002529A0);
  sub_1001446E0(@"com.apple.siri.bg_system_task.daily-asset-subscription-cleanup", v6);
  sub_100144764(@"com.apple.siri.bg_system_task.daily-asset-subscription-cleanup", &stru_1002529C0);

  if ([(CESRBackgroundSystemTask *)self _isANECapableDevice])
  {
    v7 = sub_10014463C(&stru_1002529E0);
    sub_1001446E0(@"com.apple.siri.bg_system_task.post-install-speech-ane-compilation", v7);
    sub_100144764(@"com.apple.siri.bg_system_task.post-install-speech-ane-compilation", &stru_100252A00);

    v8 = sub_10014463C(&stru_100252A40);
    sub_1001446E0(@"com.apple.siri.bg_system_task.daily-speech-ane-compilation", v8);
    sub_100144764(@"com.apple.siri.bg_system_task.daily-speech-ane-compilation", &stru_100252A60);
  }

  if (AFIsInternalInstall())
  {
    v9 = sub_10014463C(&stru_100252AA0);
    sub_1001446E0(@"com.apple.siri.bg_system_task.replay-record-pruning", v9);
    sub_100144764(@"com.apple.siri.bg_system_task.replay-record-pruning", &stru_100252AC0);
  }
}

- (void)registerAndSubmitBGSystemTasks
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100145830;
  block[3] = &unk_100253C20;
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