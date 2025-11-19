@interface ULSettingsRegistry
+ (id)shared;
- (BOOL)checkSetting:(id)a3;
- (BOOL)registerSetting:(id)a3;
- (ULSettingsRegistry)init;
@end

@implementation ULSettingsRegistry

- (ULSettingsRegistry)init
{
  v5.receiver = self;
  v5.super_class = ULSettingsRegistry;
  v2 = [(ULSettingsRegistry *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [(ULSettingsRegistry *)v2 setSettingNames:v3];
  }

  return v2;
}

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ULSettingsRegistry_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_ul_once_token_1 != -1)
  {
    dispatch_once(&shared_ul_once_token_1, block);
  }

  v2 = shared_ul_once_object_1;

  return v2;
}

void __28__ULSettingsRegistry_shared__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = shared_ul_once_object_1;
  shared_ul_once_object_1 = v1;
}

- (BOOL)registerSetting:(id)a3
{
  v4 = a3;
  v5 = [(ULSettingsRegistry *)self settingNames];
  [v5 addObject:v4];

  return 1;
}

- (BOOL)checkSetting:(id)a3
{
  v4 = a3;
  v5 = [(ULSettingsRegistry *)self settingNames];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end