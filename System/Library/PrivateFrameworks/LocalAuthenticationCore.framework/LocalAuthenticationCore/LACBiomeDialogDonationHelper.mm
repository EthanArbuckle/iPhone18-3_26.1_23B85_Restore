@interface LACBiomeDialogDonationHelper
+ (id)sharedInstance;
- (LACBiomeDialogDonationHelper)init;
- (void)donateEvent:(id)event;
@end

@implementation LACBiomeDialogDonationHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_20 != -1)
  {
    +[LACBiomeDialogDonationHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_18;

  return v3;
}

uint64_t __46__LACBiomeDialogDonationHelper_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_18;
  sharedInstance_sharedInstance_18 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (LACBiomeDialogDonationHelper)init
{
  v3.receiver = self;
  v3.super_class = LACBiomeDialogDonationHelper;
  return [(LACBiomeDialogDonationHelper *)&v3 init];
}

- (void)donateEvent:(id)event
{
  eventCopy = event;
  if (+[LACAnalyticsUtils shareAnalyticsEnabled])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__LACBiomeDialogDonationHelper_donateEvent___block_invoke;
    v6[3] = &unk_1E7A956E0;
    v6[4] = self;
    v7 = eventCopy;
    [v7 determineTimeSinceLastSystemUpdateWithCompletion:v6];
  }

  else
  {
    v5 = LACLogAnalytics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Skipping biome donation because D&U flag is disabled", buf, 2u);
    }
  }
}

@end