@interface MXRadiosPreferences
+ (id)sharedInstance;
- (BOOL)isAirplaneModeEnabled;
- (MXRadiosPreferences)init;
- (void)dealloc;
@end

@implementation MXRadiosPreferences

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[MXRadiosPreferences sharedInstance];
  }

  return sharedInstance_sSharedInstance_9;
}

MXRadiosPreferences *__37__MXRadiosPreferences_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXRadiosPreferences);
  sharedInstance_sSharedInstance_9 = result;
  return result;
}

- (MXRadiosPreferences)init
{
  v5.receiver = self;
  v5.super_class = MXRadiosPreferences;
  v2 = [(MXRadiosPreferences *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->mSerialQueue = dispatch_queue_create("com.apple.mediaexperience.RadiosPreferences", v3);
    v2->mRadiosPreferences = [objc_alloc(MEMORY[0x1E698B6B0]) initWithQueue:v2->mSerialQueue];
  }

  return v2;
}

- (void)dealloc
{
  self->mRadiosPreferences = 0;
  mSerialQueue = self->mSerialQueue;
  if (mSerialQueue)
  {
    dispatch_release(mSerialQueue);
    self->mSerialQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = MXRadiosPreferences;
  [(MXRadiosPreferences *)&v4 dealloc];
}

- (BOOL)isAirplaneModeEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mSerialQueue = self->mSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MXRadiosPreferences_isAirplaneModeEnabled__block_invoke;
  v5[3] = &unk_1E7AEB210;
  v5[4] = self;
  v5[5] = &v6;
  MXDispatchSync("[MXRadiosPreferences isAirplaneModeEnabled]", "MX_RadiosPreferences.m", 68, 0, 0, mSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__MXRadiosPreferences_isAirplaneModeEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) airplaneMode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end