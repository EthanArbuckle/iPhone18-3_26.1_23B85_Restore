@interface HDUnprotectedFeatureSettingsSyncEntity
+ (void)didReceiveValuesForDomainNames:(id)names profile:(id)profile;
@end

@implementation HDUnprotectedFeatureSettingsSyncEntity

+ (void)didReceiveValuesForDomainNames:(id)names profile:(id)profile
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB98];
  profileCopy = profile;
  namesCopy = names;
  defaultCenter = [v5 defaultCenter];
  v11 = @"HDUnprotectedFeatureSettingsSyncEntityDidSyncNotificationDomainNamesKey";
  v12[0] = namesCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [defaultCenter postNotificationName:@"HDUnprotectedFeatureSettingsSyncEntityDidSync" object:profileCopy userInfo:v9];
  v10 = *MEMORY[0x277D85DE8];
}

@end