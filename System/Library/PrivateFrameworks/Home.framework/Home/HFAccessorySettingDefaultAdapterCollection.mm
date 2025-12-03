@interface HFAccessorySettingDefaultAdapterCollection
- (NSSet)allAdapters;
@end

@implementation HFAccessorySettingDefaultAdapterCollection

- (NSSet)allAdapters
{
  v3 = [MEMORY[0x277CBEB58] set];
  managedConfigurationAdapter = [(HFAccessorySettingDefaultAdapterCollection *)self managedConfigurationAdapter];
  [v3 na_safeAddObject:managedConfigurationAdapter];

  mobileTimerAdapter = [(HFAccessorySettingDefaultAdapterCollection *)self mobileTimerAdapter];
  [v3 na_safeAddObject:mobileTimerAdapter];

  siriLanguageAdapter = [(HFAccessorySettingDefaultAdapterCollection *)self siriLanguageAdapter];
  [v3 na_safeAddObject:siriLanguageAdapter];

  return v3;
}

@end