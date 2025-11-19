@interface HDUnprotectedFeatureSettingsSyncEntity
+ (void)didReceiveValuesForDomainNames:(id)a3 profile:(id)a4;
@end

@implementation HDUnprotectedFeatureSettingsSyncEntity

+ (void)didReceiveValuesForDomainNames:(id)a3 profile:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB98];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultCenter];
  v11 = @"HDUnprotectedFeatureSettingsSyncEntityDidSyncNotificationDomainNamesKey";
  v12[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [v8 postNotificationName:@"HDUnprotectedFeatureSettingsSyncEntityDidSync" object:v6 userInfo:v9];
  v10 = *MEMORY[0x277D85DE8];
}

@end