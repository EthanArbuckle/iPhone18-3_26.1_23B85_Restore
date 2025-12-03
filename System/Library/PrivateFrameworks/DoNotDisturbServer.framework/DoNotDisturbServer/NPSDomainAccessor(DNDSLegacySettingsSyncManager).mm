@interface NPSDomainAccessor(DNDSLegacySettingsSyncManager)
- (id)dnds_bypassSettings;
- (id)dnds_scheduleSettingsWithLastUpdated:()DNDSLegacySettingsSyncManager;
- (void)dnds_setBypassSettings:()DNDSLegacySettingsSyncManager;
- (void)dnds_setScheduleSettings:()DNDSLegacySettingsSyncManager;
@end

@implementation NPSDomainAccessor(DNDSLegacySettingsSyncManager)

- (id)dnds_bypassSettings
{
  v5 = 0;
  v1 = [self integerForKey:@"dndPrivilegedSenderTypes" keyExistsAndHasValidFormat:&v5];
  if (v5 == 1)
  {
    v2 = [DNDSBypassSettingsRecord recordForLegacyPrivilegedSenderType:v1 legacyAddressBookID:0xFFFFFFFFLL];
    v3 = [MEMORY[0x277D058D8] settingsForRecord:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dnds_setBypassSettings:()DNDSLegacySettingsSyncManager
{
  makeRecord = [a3 makeRecord];
  legacyPrivilegedSenderType = [makeRecord legacyPrivilegedSenderType];
  if (legacyPrivilegedSenderType == 2)
  {
    v5 = 4;
  }

  else
  {
    v5 = legacyPrivilegedSenderType;
  }

  [self setInteger:v5 forKey:@"dndPrivilegedSenderTypes"];
}

- (id)dnds_scheduleSettingsWithLastUpdated:()DNDSLegacySettingsSyncManager
{
  v4 = a3;
  v5 = [self objectForKey:@"dndEffectiveOverrides"];
  if (v5)
  {
    v17 = 0;
    v6 = [MEMORY[0x277CCAAC8] dnds_secureLegacyUnarchiverForReadingFromData:v5 error:&v17];
    v7 = v17;
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v6 decodeObjectOfClasses:v10 forKey:*MEMORY[0x277CCA308]];

    firstObject = [v11 firstObject];
    if (firstObject)
    {
      v13 = [DNDSScheduleSettingsRecord recordForLegacyBehaviorOverride:firstObject lastUpdated:v4];
      v14 = [DNDSScheduleSettings settingsForRecord:v13];
    }

    else
    {
      v15 = DNDSLogLegacySettingsSync;
      if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_ERROR))
      {
        [(NPSDomainAccessor(DNDSLegacySettingsSyncManager) *)v7 dnds_scheduleSettingsWithLastUpdated:v15];
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)dnds_setScheduleSettings:()DNDSLegacySettingsSyncManager
{
  v13[1] = *MEMORY[0x277D85DE8];
  makeRecord = [a3 makeRecord];
  legacyBehaviorOverride = [makeRecord legacyBehaviorOverride];
  if (legacyBehaviorOverride)
  {
    dnds_secureLegacyArchiver = [MEMORY[0x277CCAAB0] dnds_secureLegacyArchiver];
    v13[0] = legacyBehaviorOverride;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [dnds_secureLegacyArchiver encodeObject:v7 forKey:*MEMORY[0x277CCA308]];

    encodedData = [dnds_secureLegacyArchiver encodedData];
    if (encodedData)
    {
      [self setObject:encodedData forKey:@"dndEffectiveOverrides"];
    }

    else
    {
      v10 = DNDSLogLegacySettingsSync;
      if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_ERROR))
      {
        [NPSDomainAccessor(DNDSLegacySettingsSyncManager) dnds_setScheduleSettings:v10];
      }
    }
  }

  else
  {
    v9 = DNDSLogLegacySettingsSync;
    if (os_log_type_enabled(DNDSLogLegacySettingsSync, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring schedule settings with no override", v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dnds_scheduleSettingsWithLastUpdated:()DNDSLegacySettingsSyncManager .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Error decoding behavior overrides: error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end