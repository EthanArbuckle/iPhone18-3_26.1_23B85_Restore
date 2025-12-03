@interface NSBundle(MNExtras)
+ (id)_navigationBundle;
+ (uint64_t)_navigation_implementsSiriMethod;
+ (uint64_t)_navigation_isRunningInSiri;
- (id)_navigation_localizedStringForKey:()MNExtras value:table:;
@end

@implementation NSBundle(MNExtras)

+ (uint64_t)_navigation_isRunningInSiri
{
  if (_navigation_isRunningInSiri_onceToken != -1)
  {
    dispatch_once(&_navigation_isRunningInSiri_onceToken, &__block_literal_global_7174);
  }

  return _navigation_isRunningInSiri_isSiri;
}

+ (id)_navigationBundle
{
  if (_navigationBundle_onceToken != -1)
  {
    dispatch_once(&_navigationBundle_onceToken, &__block_literal_global_9);
  }

  v1 = _navigationBundle_bundle;

  return v1;
}

- (id)_navigation_localizedStringForKey:()MNExtras value:table:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x1E696AAE8] _navigation_isRunningInSiri] && objc_msgSend(MEMORY[0x1E696AAE8], "_navigation_implementsSiriMethod"))
  {
    v11 = [self siriUILocalizedStringForKey:v8 value:v9 table:v10];
  }

  else
  {
    v11 = [self localizedStringForKey:v8 value:v9 table:v10];
  }

  v12 = v11;

  return v12;
}

+ (uint64_t)_navigation_implementsSiriMethod
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__NSBundle_MNExtras___navigation_implementsSiriMethod__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_navigation_implementsSiriMethod_onceToken != -1)
  {
    dispatch_once(&_navigation_implementsSiriMethod_onceToken, block);
  }

  return _navigation_implementsSiriMethod_implementsSiriMethod;
}

@end