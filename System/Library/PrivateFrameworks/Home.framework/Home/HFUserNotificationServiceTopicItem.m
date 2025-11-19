@interface HFUserNotificationServiceTopicItem
- (HFUserNotificationServiceTopicItem)initWithHome:(id)a3 topic:(id)a4;
- (id)_notificationModeToString:(unint64_t)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFUserNotificationServiceTopicItem

- (HFUserNotificationServiceTopicItem)initWithHome:(id)a3 topic:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFUserNotificationServiceTopicItem;
  v9 = [(HFUserNotificationServiceTopicItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_topic, a4);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v83[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEB98];
  v83[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
  v8 = [v6 setWithArray:v7];
  [v5 setObject:v8 forKeyedSubscript:@"dependentHomeKitClasses"];

  v9 = [(HFUserNotificationServiceTopicItem *)self topic];
  v10 = [v9 topicName];
  [v5 setObject:v10 forKeyedSubscript:@"title"];

  v11 = 0x277CCA000uLL;
  v12 = MEMORY[0x277CCACA8];
  v13 = [(HFUserNotificationServiceTopicItem *)self topic];
  v14 = [v13 topicName];
  v15 = [v12 stringWithFormat:@"Home.Settings.%@", v14];
  v16 = [v15 stringByReplacingOccurrencesOfString:@" " withString:&stru_2824B1A78];
  [v5 setObject:v16 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  v17 = [(HFUserNotificationServiceTopicItem *)self topic];
  v18 = [v17 iconDescriptor];
  [v5 setObject:v18 forKeyedSubscript:@"icon"];

  v19 = [(HFUserNotificationServiceTopicItem *)self home];
  if (![v19 hf_shouldShowAnnounceFeatureForThisHome])
  {
    goto LABEL_6;
  }

  v20 = [(HFUserNotificationServiceTopicItem *)self topic];
  v21 = [v20 accessoryCategoryTypes];
  if (([v21 containsObject:*MEMORY[0x277CCE8B0]] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v22 = [(HFUserNotificationServiceTopicItem *)self topic];
  [v22 topicName];
  v24 = v23 = a2;
  v25 = _HFLocalizedStringWithDefaultValue(@"HFUserNotificationServiceTopicName_Announce", @"HFUserNotificationServiceTopicName_Announce", 1);
  v77 = [v24 isEqualToString:v25];

  v11 = 0x277CCA000;
  a2 = v23;

  if (v77)
  {
    v26 = [(HFUserNotificationServiceTopicItem *)self home];
    v27 = [v26 currentUser];
    v28 = [v27 announceUserSettings];

    v29 = -[HFUserNotificationServiceTopicItem _notificationModeToString:](self, "_notificationModeToString:", [v28 deviceNotificationMode]);
    [v5 setObject:v29 forKeyedSubscript:@"description"];

    [v5 setObject:@"Home.HomeSettings.Intercom" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
    goto LABEL_33;
  }

LABEL_7:
  v30 = [(HFUserNotificationServiceTopicItem *)self topic];
  v31 = [v30 topicName];
  v32 = _HFLocalizedStringWithDefaultValue(@"HFUserNotificationServiceTopicName_SafetyAndSecurity", @"HFUserNotificationServiceTopicName_SafetyAndSecurity", 1);
  v33 = [v31 isEqualToString:v32];

  if (v33)
  {
    v34 = +[HFHomeKitDispatcher sharedDispatcher];
    v35 = [v34 homeManager];

    v36 = [(HFUserNotificationServiceTopicItem *)self home];
    if ([v36 hf_hasAtleastOneSafetyAndSecuritySupportedAccessory])
    {
      v37 = 0;
    }

    else
    {
      v37 = [v35 hasOptedToHH2];
    }

    v46 = HFLogForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [(HFUserNotificationServiceTopicItem *)self home];
      *buf = 67109376;
      *v79 = [v47 hf_hasAtleastOneSafetyAndSecuritySupportedAccessory];
      *&v79[4] = 1024;
      *&v79[6] = [v35 hasOptedToHH2];
      _os_log_impl(&dword_20D9BF000, v46, OS_LOG_TYPE_DEFAULT, "Safety Accessory: %{BOOL}d HH2: %{BOOL}d", buf, 0xEu);
    }

    v48 = [(HFUserNotificationServiceTopicItem *)self home];
    if ([v48 hf_hasEnabledResident] && (objc_msgSend(v35, "hasOptedToHH2") & 1) != 0)
    {
      v49 = 0;
    }

    else
    {
      v50 = [(HFUserNotificationServiceTopicItem *)self home];
      v49 = [v50 isEventLogEnabled] ^ 1;
    }

    v51 = HFLogForCategory(3uLL);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [(HFUserNotificationServiceTopicItem *)self home];
      v53 = [v52 hf_hasEnabledResident];
      v54 = [v35 hasOptedToHH2];
      v55 = [(HFUserNotificationServiceTopicItem *)self home];
      v56 = [v55 isEventLogEnabled];
      *buf = 67109632;
      *v79 = v53;
      *&v79[4] = 1024;
      *&v79[6] = v54;
      LOWORD(v80) = 1024;
      *(&v80 + 2) = v56;
      _os_log_impl(&dword_20D9BF000, v51, OS_LOG_TYPE_DEFAULT, "Enabled Resident: %{BOOL}d HH2: %{BOOL}d EventLogEnabled: %{BOOL}d", buf, 0x14u);
    }

    v57 = [MEMORY[0x277CCABB0] numberWithInt:v37 & v49];
    [v5 setObject:v57 forKeyedSubscript:@"isDisabled"];

    [v5 setObject:@"Home.HomeSettings.SafetyAndSecurity" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
    goto LABEL_33;
  }

  v38 = [(HFUserNotificationServiceTopicItem *)self topic];
  v39 = [v38 topicName];
  v40 = _HFLocalizedStringWithDefaultValue(@"HFUserNotificationServiceTopicName_Energy", @"HFUserNotificationServiceTopicName_Energy", 1);
  v41 = [v39 isEqualToString:v40];

  if (!v41)
  {
    v58 = [(HFUserNotificationServiceTopicItem *)self topic];
    v59 = [v58 topicName];
    v60 = _HFLocalizedStringWithDefaultValue(@"HFUserNotificationServiceTopicName_ActivityHistory", @"HFUserNotificationServiceTopicName_ActivityHistory", 1);
    v61 = [v59 isEqualToString:v60];

    v62 = [(HFUserNotificationServiceTopicItem *)self home];
    v63 = v62;
    if (!v61)
    {
      v67 = [(HFUserNotificationServiceTopicItem *)self topic];
      v68 = [v63 hf_allObjectsAffectedByServiceTopic:v67];
      v69 = [v68 count];

      v70 = [*(v11 + 3240) localizedStringWithFormat:@"%lu", v69];
LABEL_32:
      v71 = v70;
      [v5 setObject:v70 forKeyedSubscript:@"description"];

      goto LABEL_33;
    }

    if ([v62 eventLogDuration] == 30)
    {
      v64 = [(HFUserNotificationServiceTopicItem *)self home];
      v65 = [v64 isEventLogEnabled];

      if (v65)
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
    v44 = [(HFUserNotificationServiceTopicItem *)self topic];
    v45 = [v44 topicName];
    *buf = 138412802;
    *v79 = self;
    *&v79[8] = 2112;
    v80 = v43;
    v81 = 2112;
    v82 = v45;
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

- (id)_notificationModeToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    v4 = &stru_2824B1A78;
  }

  else
  {
    v4 = _HFLocalizedStringWithDefaultValue(off_277E028F0[a3], off_277E028F0[a3], 1);
  }

  return v4;
}

@end