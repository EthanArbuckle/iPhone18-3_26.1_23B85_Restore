@interface HFUserNotificationServiceTopicItem
- (HFUserNotificationServiceTopicItem)initWithHome:(id)home topic:(id)topic;
- (id)_notificationModeToString:(unint64_t)string;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFUserNotificationServiceTopicItem

- (HFUserNotificationServiceTopicItem)initWithHome:(id)home topic:(id)topic
{
  homeCopy = home;
  topicCopy = topic;
  v12.receiver = self;
  v12.super_class = HFUserNotificationServiceTopicItem;
  v9 = [(HFUserNotificationServiceTopicItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_topic, topic);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v83[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEB98];
  v83[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
  v8 = [v6 setWithArray:v7];
  [v5 setObject:v8 forKeyedSubscript:@"dependentHomeKitClasses"];

  topic = [(HFUserNotificationServiceTopicItem *)self topic];
  topicName = [topic topicName];
  [v5 setObject:topicName forKeyedSubscript:@"title"];

  v11 = 0x277CCA000uLL;
  v12 = MEMORY[0x277CCACA8];
  topic2 = [(HFUserNotificationServiceTopicItem *)self topic];
  topicName2 = [topic2 topicName];
  v15 = [v12 stringWithFormat:@"Home.Settings.%@", topicName2];
  v16 = [v15 stringByReplacingOccurrencesOfString:@" " withString:&stru_2824B1A78];
  [v5 setObject:v16 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  topic3 = [(HFUserNotificationServiceTopicItem *)self topic];
  iconDescriptor = [topic3 iconDescriptor];
  [v5 setObject:iconDescriptor forKeyedSubscript:@"icon"];

  home = [(HFUserNotificationServiceTopicItem *)self home];
  if (![home hf_shouldShowAnnounceFeatureForThisHome])
  {
    goto LABEL_6;
  }

  topic4 = [(HFUserNotificationServiceTopicItem *)self topic];
  accessoryCategoryTypes = [topic4 accessoryCategoryTypes];
  if (([accessoryCategoryTypes containsObject:*MEMORY[0x277CCE8B0]] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  topic5 = [(HFUserNotificationServiceTopicItem *)self topic];
  [topic5 topicName];
  v24 = v23 = a2;
  v25 = _HFLocalizedStringWithDefaultValue(@"HFUserNotificationServiceTopicName_Announce", @"HFUserNotificationServiceTopicName_Announce", 1);
  v77 = [v24 isEqualToString:v25];

  v11 = 0x277CCA000;
  a2 = v23;

  if (v77)
  {
    home2 = [(HFUserNotificationServiceTopicItem *)self home];
    currentUser = [home2 currentUser];
    announceUserSettings = [currentUser announceUserSettings];

    v29 = -[HFUserNotificationServiceTopicItem _notificationModeToString:](self, "_notificationModeToString:", [announceUserSettings deviceNotificationMode]);
    [v5 setObject:v29 forKeyedSubscript:@"description"];

    [v5 setObject:@"Home.HomeSettings.Intercom" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
    goto LABEL_33;
  }

LABEL_7:
  topic6 = [(HFUserNotificationServiceTopicItem *)self topic];
  topicName3 = [topic6 topicName];
  v32 = _HFLocalizedStringWithDefaultValue(@"HFUserNotificationServiceTopicName_SafetyAndSecurity", @"HFUserNotificationServiceTopicName_SafetyAndSecurity", 1);
  v33 = [topicName3 isEqualToString:v32];

  if (v33)
  {
    v34 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v34 homeManager];

    home3 = [(HFUserNotificationServiceTopicItem *)self home];
    if ([home3 hf_hasAtleastOneSafetyAndSecuritySupportedAccessory])
    {
      hasOptedToHH2 = 0;
    }

    else
    {
      hasOptedToHH2 = [homeManager hasOptedToHH2];
    }

    v46 = HFLogForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      home4 = [(HFUserNotificationServiceTopicItem *)self home];
      *buf = 67109376;
      *v79 = [home4 hf_hasAtleastOneSafetyAndSecuritySupportedAccessory];
      *&v79[4] = 1024;
      *&v79[6] = [homeManager hasOptedToHH2];
      _os_log_impl(&dword_20D9BF000, v46, OS_LOG_TYPE_DEFAULT, "Safety Accessory: %{BOOL}d HH2: %{BOOL}d", buf, 0xEu);
    }

    home5 = [(HFUserNotificationServiceTopicItem *)self home];
    if ([home5 hf_hasEnabledResident] && (objc_msgSend(homeManager, "hasOptedToHH2") & 1) != 0)
    {
      v49 = 0;
    }

    else
    {
      home6 = [(HFUserNotificationServiceTopicItem *)self home];
      v49 = [home6 isEventLogEnabled] ^ 1;
    }

    v51 = HFLogForCategory(3uLL);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      home7 = [(HFUserNotificationServiceTopicItem *)self home];
      hf_hasEnabledResident = [home7 hf_hasEnabledResident];
      hasOptedToHH22 = [homeManager hasOptedToHH2];
      home8 = [(HFUserNotificationServiceTopicItem *)self home];
      isEventLogEnabled = [home8 isEventLogEnabled];
      *buf = 67109632;
      *v79 = hf_hasEnabledResident;
      *&v79[4] = 1024;
      *&v79[6] = hasOptedToHH22;
      LOWORD(v80) = 1024;
      *(&v80 + 2) = isEventLogEnabled;
      _os_log_impl(&dword_20D9BF000, v51, OS_LOG_TYPE_DEFAULT, "Enabled Resident: %{BOOL}d HH2: %{BOOL}d EventLogEnabled: %{BOOL}d", buf, 0x14u);
    }

    v57 = [MEMORY[0x277CCABB0] numberWithInt:hasOptedToHH2 & v49];
    [v5 setObject:v57 forKeyedSubscript:@"isDisabled"];

    [v5 setObject:@"Home.HomeSettings.SafetyAndSecurity" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
    goto LABEL_33;
  }

  topic7 = [(HFUserNotificationServiceTopicItem *)self topic];
  topicName4 = [topic7 topicName];
  v40 = _HFLocalizedStringWithDefaultValue(@"HFUserNotificationServiceTopicName_Energy", @"HFUserNotificationServiceTopicName_Energy", 1);
  v41 = [topicName4 isEqualToString:v40];

  if (!v41)
  {
    topic8 = [(HFUserNotificationServiceTopicItem *)self topic];
    topicName5 = [topic8 topicName];
    v60 = _HFLocalizedStringWithDefaultValue(@"HFUserNotificationServiceTopicName_ActivityHistory", @"HFUserNotificationServiceTopicName_ActivityHistory", 1);
    v61 = [topicName5 isEqualToString:v60];

    home9 = [(HFUserNotificationServiceTopicItem *)self home];
    v63 = home9;
    if (!v61)
    {
      topic9 = [(HFUserNotificationServiceTopicItem *)self topic];
      v68 = [v63 hf_allObjectsAffectedByServiceTopic:topic9];
      v69 = [v68 count];

      v70 = [*(v11 + 3240) localizedStringWithFormat:@"%lu", v69];
LABEL_32:
      v71 = v70;
      [v5 setObject:v70 forKeyedSubscript:@"description"];

      goto LABEL_33;
    }

    if ([home9 eventLogDuration] == 30)
    {
      home10 = [(HFUserNotificationServiceTopicItem *)self home];
      isEventLogEnabled2 = [home10 isEventLogEnabled];

      if (isEventLogEnabled2)
      {
        v66 = @"HFActivitySettingsEnableMenuMonth";
LABEL_31:
        v70 = _HFLocalizedStringWithDefaultValue(v66, v66, 1);
        goto LABEL_32;
      }
    }

    else
    {
    }

    v66 = @"HFActivitySettingsEnableMenuOff";
    goto LABEL_31;
  }

  v42 = HFLogForCategory(0x34uLL);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = NSStringFromSelector(a2);
    topic10 = [(HFUserNotificationServiceTopicItem *)self topic];
    topicName6 = [topic10 topicName];
    *buf = 138412802;
    *v79 = self;
    *&v79[8] = 2112;
    v80 = v43;
    v81 = 2112;
    v82 = topicName6;
    _os_log_impl(&dword_20D9BF000, v42, OS_LOG_TYPE_DEFAULT, "%@:%@ Don't need device count for topic %@", buf, 0x20u);
  }

  [v5 setObject:@"Home.HomeSettings.Energy" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
LABEL_33:
  [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
  v72 = MEMORY[0x277D2C900];
  v73 = [HFItemUpdateOutcome outcomeWithResults:v5];
  v74 = [v72 futureWithResult:v73];

  v75 = *MEMORY[0x277D85DE8];

  return v74;
}

- (id)_notificationModeToString:(unint64_t)string
{
  if (string > 3)
  {
    v4 = &stru_2824B1A78;
  }

  else
  {
    v4 = _HFLocalizedStringWithDefaultValue(off_277E028F0[string], off_277E028F0[string], 1);
  }

  return v4;
}

@end