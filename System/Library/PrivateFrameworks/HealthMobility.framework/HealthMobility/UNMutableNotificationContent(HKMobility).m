@interface UNMutableNotificationContent(HKMobility)
+ (id)_hkmobility_contentWithCategory:()HKMobility shouldHidePregnancyContent:expirationDate:;
+ (id)_makeUserInfoForCategory:()HKMobility isShowingPregnancyContent:;
@end

@implementation UNMutableNotificationContent(HKMobility)

+ (id)_hkmobility_contentWithCategory:()HKMobility shouldHidePregnancyContent:expirationDate:
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(a1);
  v11 = v8;
  if (([v11 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.Low"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"MobilityAppPlugin.WalkingSteadinessRepeat.Low"))
  {
    v12 = @"WALKING_STEADINESS_NOTIFICATION_TITLE_LOW";
LABEL_4:
    v13 = HKMobilityLocalizedNotificationString(v12);
    goto LABEL_5;
  }

  if (([v11 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.VeryLow"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"MobilityAppPlugin.WalkingSteadinessRepeat.VeryLow"))
  {
    v12 = @"WALKING_STEADINESS_NOTIFICATION_TITLE_VERY_LOW";
    goto LABEL_4;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_FAULT))
  {
    +[UNMutableNotificationContent(HKMobility) _hkmobility_contentWithCategory:shouldHidePregnancyContent:expirationDate:];
  }

  v13 = 0;
LABEL_5:

  [v10 setTitle:v13];
  if (a4)
  {
    HKMobilityLocalizedNotificationBodyForCategory(v11);
  }

  else
  {
    HKMobilityLocalizedNotificationDuringPregnancyBodyForCategory(v11);
  }
  v14 = ;
  [v10 setBody:v14];

  [v10 setCategoryIdentifier:v11];
  [v10 setExpirationDate:v9];

  [v10 setThreadIdentifier:@"com.apple.health.Mobility"];
  v15 = [(objc_class *)a1 _makeUserInfoForCategory:v11 isShowingPregnancyContent:a4 ^ 1u];
  [v10 setUserInfo:v15];

  v16 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
  [v10 setSound:v16];

  return v10;
}

+ (id)_makeUserInfoForCategory:()HKMobility isShowingPregnancyContent:
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [v7 setObject:&unk_2863D6C68 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  v8 = v6;
  v9 = HKMobilityAllWalkingSteadinessNotificationCategories();
  v10 = [v9 containsObject:v8];

  if (v10 && ([MEMORY[0x277CBEBC0] URLWithString:@"x-apple-health://summary"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [v11 absoluteString];
    [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCE4E0]];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_ERROR))
    {
      [(UNMutableNotificationContent(HKMobility) *)v14 _makeUserInfoForCategory:a1 isShowingPregnancyContent:v8];
    }
  }

  [v7 setObject:v8 forKeyedSubscript:@"mobilityNotificationCatgoryKey"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  [v7 setObject:v15 forKeyedSubscript:@"kHKMobilityNotificationIsShowingPregnancyContentKey"];

  v16 = [v7 copy];

  return v16;
}

+ (void)_hkmobility_contentWithCategory:()HKMobility shouldHidePregnancyContent:expirationDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_251952000, v0, v1, "[UNNotificationRequest+HKMobility] Unable to localize notification title for category: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_makeUserInfoForCategory:()HKMobility isShowingPregnancyContent:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = a3;
  _os_log_error_impl(&dword_251952000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to determine URL for category: %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end