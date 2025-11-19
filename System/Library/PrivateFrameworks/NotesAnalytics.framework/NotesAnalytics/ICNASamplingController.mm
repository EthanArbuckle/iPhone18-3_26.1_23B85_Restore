@interface ICNASamplingController
+ (id)sharedController;
- (ICNASamplingController)init;
- (void)init;
@end

@implementation ICNASamplingController

+ (id)sharedController
{
  if (s_onceToken_1 != -1)
  {
    +[ICNASamplingController sharedController];
  }

  v3 = sharedController_s_instance;

  return v3;
}

uint64_t __42__ICNASamplingController_sharedController__block_invoke()
{
  sharedController_s_instance = objc_alloc_init(ICNASamplingController);

  return MEMORY[0x2821F96F8]();
}

- (ICNASamplingController)init
{
  v6.receiver = self;
  v6.super_class = ICNASamplingController;
  v2 = [(ICNASamplingController *)&v6 init];
  if (v2)
  {
    v3 = arc4random();
    v2->_shouldTrackSyncHealth = 1;
    v4 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(ICNASamplingController *)v3 init];
    }
  }

  return v2;
}

- (void)init
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v7 = 0x3FF0000000000000;
  v6 = 134218498;
  if (v3)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v8 = 2048;
  v9 = a1 % 0x64;
  v10 = 2112;
  v11 = v4;
  _os_log_debug_impl(&dword_25C6BF000, log, OS_LOG_TYPE_DEBUG, "Sync Health Tracking Sampling Ratio = %f, generated random number %lu, decision = %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end