@interface BLTRemoteGlobalSettingsChangeset
+ (id)remoteGlobalSettingsChangesetWithProvider:(id)provider;
- (BLTPBSetRemoteGlobalSettingsRequest)blt_protobuf;
- (BLTRemoteGlobalSettingsChangeset)initWithProvider:(id)provider;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsSend;
- (BOOL)sendSuccess;
- (NSString)remoteInfoDirectoryLocation;
- (NSString)remoteInfoFileLocation;
- (id)description;
- (id)descriptionForBBSystemSetting:(int64_t)setting;
- (id)globalScheduledDeliverySettingDescription;
- (void)needsSend;
@end

@implementation BLTRemoteGlobalSettingsChangeset

- (BLTRemoteGlobalSettingsChangeset)initWithProvider:(id)provider
{
  v14 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = BLTRemoteGlobalSettingsChangeset;
  v5 = [(BLTRemoteGlobalSettingsChangeset *)&v9 init];
  if (v5)
  {
    -[BLTRemoteGlobalSettingsChangeset setGlobalScheduledDeliverySetting:](v5, "setGlobalScheduledDeliverySetting:", [providerCopy globalScheduledDeliverySetting]);
    -[BLTRemoteGlobalSettingsChangeset setGlobalSummarizationSetting:](v5, "setGlobalSummarizationSetting:", [providerCopy globalSummarizationSetting]);
    v6 = blt_global_settings_sync_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = providerCopy;
      _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_DEFAULT, "%@ initWithProvider: %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)remoteGlobalSettingsChangesetWithProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithProvider:providerCopy];

  return v5;
}

- (NSString)remoteInfoDirectoryLocation
{
  v2 = BLTPairingPath();
  v3 = [v2 stringByAppendingPathComponent:@"BulletinDistributor"];

  return v3;
}

- (NSString)remoteInfoFileLocation
{
  remoteInfoDirectoryLocation = [(BLTRemoteGlobalSettingsChangeset *)self remoteInfoDirectoryLocation];
  v3 = [remoteInfoDirectoryLocation stringByAppendingPathComponent:@"bb_global_remote_settings.plist"];

  return v3;
}

- (BOOL)needsSend
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]|| [(BLTRemoteGlobalSettingsChangeset *)self globalSummarizationSetting])
  {
    v3 = MEMORY[0x277CBEAC0];
    remoteInfoFileLocation = [(BLTRemoteGlobalSettingsChangeset *)self remoteInfoFileLocation];
    v5 = [v3 dictionaryWithContentsOfFile:remoteInfoFileLocation];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:@"globalScheduledDeliverySetting"];
      intValue = [v6 intValue];
      if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]== intValue)
      {
        v8 = [v5 objectForKeyedSubscript:@"globalSummarizationSetting"];
        intValue2 = [v8 intValue];
        globalSummarizationSetting = [(BLTRemoteGlobalSettingsChangeset *)self globalSummarizationSetting];

        if (globalSummarizationSetting == intValue2)
        {
          v11 = blt_global_settings_sync_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138412546;
            selfCopy3 = self;
            v20 = 2112;
            v21 = v5;
            _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "%@ needsSend: remoteSettings: %@ SHOULD NOT SEND", &v18, 0x16u);
          }

          v12 = 0;
          goto LABEL_16;
        }
      }

      else
      {
      }

      v11 = blt_global_settings_sync_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        selfCopy3 = self;
        v20 = 2112;
        v21 = v5;
        v13 = "%@ needsSend: remoteSettings: %@ SHOULD SEND";
        v14 = v11;
        v15 = 22;
        goto LABEL_14;
      }
    }

    else
    {
      v11 = blt_global_settings_sync_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        selfCopy3 = self;
        v13 = "%@ needsSend: !remoteSettings";
        v14 = v11;
        v15 = 12;
LABEL_14:
        _os_log_impl(&dword_241FB3000, v14, OS_LOG_TYPE_DEFAULT, v13, &v18, v15);
      }
    }

    v12 = 1;
LABEL_16:

    goto LABEL_17;
  }

  v5 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(BLTRemoteGlobalSettingsChangeset *)self needsSend];
  }

  v12 = 0;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)sendSuccess
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = @"globalScheduledDeliverySetting";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLTRemoteGlobalSettingsChangeset globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")}];
  v17[1] = @"globalSummarizationSetting";
  v18[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLTRemoteGlobalSettingsChangeset globalSummarizationSetting](self, "globalSummarizationSetting")}];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  remoteInfoFileLocation = [(BLTRemoteGlobalSettingsChangeset *)self remoteInfoFileLocation];
  v7 = [v5 writeToFile:remoteInfoFileLocation atomically:1];

  v8 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = v5;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ sendSuccess: infoFile: %@ saveSuccess: %{BOOL}u", &v11, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BLTPBSetRemoteGlobalSettingsRequest)blt_protobuf
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSince1970];
  [v3 setSettingDate:?];

  [v3 setGlobalScheduledDeliverySetting:{-[BLTRemoteGlobalSettingsChangeset globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")}];
  [v3 setGlobalSummarizationSetting:{-[BLTRemoteGlobalSettingsChangeset globalSummarizationSetting](self, "globalSummarizationSetting")}];
  v5 = blt_global_settings_sync_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ blt_protobuf: %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [equalCopy globalScheduledDeliverySetting], v5 == -[BLTRemoteGlobalSettingsChangeset globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")))
  {
    globalSummarizationSetting = [equalCopy globalSummarizationSetting];
    v7 = globalSummarizationSetting == [(BLTRemoteGlobalSettingsChangeset *)self globalSummarizationSetting];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  globalScheduledDeliverySettingDescription = [(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySettingDescription];
  v7 = [(BLTRemoteGlobalSettingsChangeset *)self descriptionForBBSystemSetting:[(BLTRemoteGlobalSettingsChangeset *)self globalSummarizationSetting]];
  v8 = [v3 stringWithFormat:@"<%@: %p %@, %@>", v5, self, globalScheduledDeliverySettingDescription, v7];

  return v8;
}

- (id)globalScheduledDeliverySettingDescription
{
  if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]== -1)
  {
    v3 = @"BBScheduledDeliverySettingUninitialized";
  }

  else if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting])
  {
    if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]== 1)
    {
      v3 = @"BBScheduledDeliverySettingDisabled";
    }

    else if ([(BLTRemoteGlobalSettingsChangeset *)self globalScheduledDeliverySetting]== 2)
    {
      v3 = @"BBScheduledDeliverySettingEnabled";
    }

    else
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<BBScheduledDeliverySetting: <unknown> %ld>", -[BLTRemoteGlobalSettingsChangeset globalScheduledDeliverySetting](self, "globalScheduledDeliverySetting")];
    }
  }

  else
  {
    v3 = @"BBScheduledDeliverySettingDefault";
  }

  return v3;
}

- (id)descriptionForBBSystemSetting:(int64_t)setting
{
  if ((setting + 1) >= 4)
  {
    setting = [MEMORY[0x277CCACA8] stringWithFormat:@"<BBSystemSetting: <unknown> %ld>", setting];
  }

  else
  {
    setting = off_278D31948[setting + 1];
  }

  return setting;
}

- (void)needsSend
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "%@ needsSend: UNEXPECTED: globalScheduledDeliverySetting == BBScheduledDeliverySettingDefault && globalSummarizationSetting == BBSystemSettingDefault - not sending and this should never happen", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end