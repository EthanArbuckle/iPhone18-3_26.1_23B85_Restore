@interface HFAccessorySettingDefaultAdapterCollection
- (NSSet)allAdapters;
@end

@implementation HFAccessorySettingDefaultAdapterCollection

- (NSSet)allAdapters
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HFAccessorySettingDefaultAdapterCollection *)self managedConfigurationAdapter];
  [v3 na_safeAddObject:v4];

  v5 = [(HFAccessorySettingDefaultAdapterCollection *)self mobileTimerAdapter];
  [v3 na_safeAddObject:v5];

  v6 = [(HFAccessorySettingDefaultAdapterCollection *)self siriLanguageAdapter];
  [v3 na_safeAddObject:v6];

  return v3;
}

@end