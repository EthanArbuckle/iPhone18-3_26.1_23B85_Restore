@interface CARSessionChangedNotificationConverter
+ (id)sharedInstance;
- (CARSessionChangedNotificationConverter)init;
- (void)dealloc;
@end

@implementation CARSessionChangedNotificationConverter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CARSessionChangedNotificationConverter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __56__CARSessionChangedNotificationConverter_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CARSessionChangedNotificationConverter)init
{
  v5.receiver = self;
  v5.super_class = CARSessionChangedNotificationConverter;
  v2 = [(CARSessionChangedNotificationConverter *)&v5 init];
  if (v2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    if (CMNotificationCenterAddListener())
    {
      v3 = CarGeneralLogging();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [CARSessionChangedNotificationConverter init];
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  v3.receiver = self;
  v3.super_class = CARSessionChangedNotificationConverter;
  [(CARSessionChangedNotificationConverter *)&v3 dealloc];
}

@end