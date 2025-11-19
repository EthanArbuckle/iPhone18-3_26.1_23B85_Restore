@interface NTKWidgetTritiumComplicationProvider
+ (NTKWidgetTritiumComplicationProvider)shared;
- (id)_init;
@end

@implementation NTKWidgetTritiumComplicationProvider

+ (NTKWidgetTritiumComplicationProvider)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NTKWidgetTritiumComplicationProvider_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_shared;

  return v2;
}

void __46__NTKWidgetTritiumComplicationProvider_shared__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = shared_shared;
  shared_shared = v1;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = NTKWidgetTritiumComplicationProvider;
  v2 = [(NTKWidgetTritiumComplicationProvider *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBBAE8] currentDevice];
    v4 = [NTKCompanionWidgetComplicationManager instanceForDevice:v3];
    companionManager = v2->_companionManager;
    v2->_companionManager = v4;
  }

  return v2;
}

@end