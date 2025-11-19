@interface SlowNetworkCondition
+ (id)descriptionWithProfileParamsForProfile:(id)a3;
- (BOOL)isDestructive;
- (BOOL)isInternalOnly;
- (BOOL)isNLCPrefPaneActive;
- (BOOL)setUp;
- (SlowNetworkCondition)initWithProfile:(id)a3;
- (id)identifierName;
- (id)userFriendlyName;
- (void)tearDown;
@end

@implementation SlowNetworkCondition

+ (id)descriptionWithProfileParamsForProfile:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SlowNetworkUtil);
  v5 = [(SlowNetworkUtil *)v4 readInProfile:v3];

  [(SlowNetworkUtil *)v4 loadProfile:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = MEMORY[0x277CCACA8];
  v8 = [(SlowNetworkUtil *)v4 profileName];
  v9 = [v7 stringWithFormat:@"Name: %@", v8];
  [v6 addObject:v9];

  v10 = [(SlowNetworkUtil *)v4 downlinkBandwidth];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [(SlowNetworkUtil *)v4 downlinkBandwidth];
    [v12 doubleValue];
    v14 = [v11 stringWithFormat:@"Downlink Bandwidth: %g Mbps", v13];
    [v6 addObject:v14];
  }

  v15 = [(SlowNetworkUtil *)v4 downlinkDelay];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [(SlowNetworkUtil *)v4 downlinkDelay];
    v18 = [v16 stringWithFormat:@"Downlink Latency: %lu ms", objc_msgSend(v17, "unsignedLongValue")];
    [v6 addObject:v18];
  }

  v19 = [(SlowNetworkUtil *)v4 downlinkPacketLossRatio];

  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [(SlowNetworkUtil *)v4 downlinkPacketLossRatio];
    [v21 doubleValue];
    v23 = [v20 stringWithFormat:@"Downlink Packet Loss Ratio: %g%%", v22];
    [v6 addObject:v23];
  }

  v24 = [(SlowNetworkUtil *)v4 uplinkBandwidth];

  if (v24)
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [(SlowNetworkUtil *)v4 uplinkBandwidth];
    [v26 doubleValue];
    v28 = [v25 stringWithFormat:@"Uplink Bandwidth: %g Mbps", v27];
    [v6 addObject:v28];
  }

  v29 = [(SlowNetworkUtil *)v4 uplinkDelay];

  if (v29)
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = [(SlowNetworkUtil *)v4 downlinkDelay];
    v32 = [v30 stringWithFormat:@"Uplink Latency: %lu ms", objc_msgSend(v31, "unsignedLongValue")];
    [v6 addObject:v32];
  }

  v33 = [(SlowNetworkUtil *)v4 uplinkPacketLossRatio];

  if (v33)
  {
    v34 = MEMORY[0x277CCACA8];
    v35 = [(SlowNetworkUtil *)v4 downlinkPacketLossRatio];
    [v35 doubleValue];
    v37 = [v34 stringWithFormat:@"Uplink Packet Loss Ratio: %g%%", v36];
    [v6 addObject:v37];
  }

  v38 = [(SlowNetworkUtil *)v4 excludeLoopback];

  if (v38)
  {
    v39 = MEMORY[0x277CCACA8];
    v40 = [(SlowNetworkUtil *)v4 excludeLoopback];
    v41 = [v39 stringWithFormat:@"Exclude Loopback: %lu", objc_msgSend(v40, "unsignedLongValue")];
    [v6 addObject:v41];
  }

  v42 = [(SlowNetworkUtil *)v4 dnsDelayValue];

  if (v42)
  {
    v43 = MEMORY[0x277CCACA8];
    v44 = [(SlowNetworkUtil *)v4 dnsDelayValue];
    v45 = [v43 stringWithFormat:@"DNS Delay: %lu ms", objc_msgSend(v44, "unsignedLongValue")];
    [v6 addObject:v45];
  }

  v46 = [v6 componentsJoinedByString:@"\n"];

  return v46;
}

- (id)identifierName
{
  v8 = 0;
  v2 = @"SlowNetworkCondition";
  v3 = [COConditionSession prepareInfoDictForBuiltInCondition:@"SlowNetworkCondition" error:&v8];
  v4 = [v3 objectForKey:@"ConditionIdentifierName"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v2 = v4;
  }

  return v2;
}

- (id)userFriendlyName
{
  v6 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"SlowNetworkCondition" error:&v6];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"ConditionUserFriendlyName"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDestructive
{
  v5 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"SlowNetworkCondition" error:&v5];
  v3 = v2;
  if (v2)
  {
    [v2 valueForKey:@"ConditionIsDestructive"];
  }

  return 1;
}

- (BOOL)isInternalOnly
{
  v5 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"SlowNetworkCondition" error:&v5];
  v3 = v2;
  if (v2)
  {
    [v2 valueForKey:@"ConditionIsInternalOnly"];
  }

  return 1;
}

- (SlowNetworkCondition)initWithProfile:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_profile, a3);
  v6 = objc_alloc_init(SlowNetworkUtil);
  util = self->_util;
  self->_util = v6;

  v8 = [(SlowNetworkUtil *)self->_util readInProfile:v5];
  profileData = self->_profileData;
  self->_profileData = v8;

  [(SlowNetworkUtil *)self->_util loadProfile:self->_profileData];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = [(SlowNetworkUtil *)self->_util profileName];
    *buf = 136315394;
    v24 = "name";
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Configured %s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = [(SlowNetworkUtil *)self->_util downlinkDelay];
    *buf = 136315394;
    v24 = "DownlinkDelay";
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = [(SlowNetworkUtil *)self->_util downlinkPacketLossRatio];
    *buf = 136315394;
    v24 = "DownlinkPacketLossRatio";
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = [(SlowNetworkUtil *)self->_util downlinkBandwidth];
    *buf = 136315394;
    v24 = "DownlinkBandwidth";
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = [(SlowNetworkUtil *)self->_util uplinkDelay];
    *buf = 136315394;
    v24 = "UplinkDelay";
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = [(SlowNetworkUtil *)self->_util uplinkPacketLossRatio];
    *buf = 136315394;
    v24 = "UplinkPacketLossRatio";
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = [(SlowNetworkUtil *)self->_util uplinkBandwidth];
    *buf = 136315394;
    v24 = "UplinkBandwidth";
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = [(SlowNetworkUtil *)self->_util dnsDelayValue];
    *buf = 136315394;
    v24 = "DNSDelayValue";
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = [(SlowNetworkUtil *)self->_util excludeLoopback];
    *buf = 136315394;
    v24 = "ExcludeLoopback";
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Set profile", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = SlowNetworkCondition;
  v19 = [(COCondition *)&v22 init];
  if (v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "SlowNetworkCondition Init passed", buf, 2u);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)isNLCPrefPaneActive
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.network.prefPaneSimulate.plist"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.network.prefPaneSimulate.plist"];
    v5 = v4;
    if (v4)
    {
      v6 = [(__CFString *)v4 valueForKey:@"SimulatorIsRunning"];
      if (v6)
      {
        v7 = v6;
        [(__CFString *)v5 removeObjectForKey:@"Profiles"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v5;
          _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "NLC prefpane plist: %@", &v12, 0xCu);
        }

        v8 = [v7 BOOLValue];

        goto LABEL_15;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = [(__CFString *)v5 allKeys];
        v12 = 138412546;
        v13 = @"SimulatorIsRunning";
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Unable to find value for key %@ in plist: %@", &v12, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = @"/var/mobile/Library/Preferences/com.apple.network.prefPaneSimulate.plist";
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Read plist from %@, but it was nil?", &v12, 0xCu);
    }

    v8 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = @"/var/mobile/Library/Preferences/com.apple.network.prefPaneSimulate.plist";
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Unable to access the pref pane plist at %@, so we'll take the safe assumption and assume that NLC is not running.", &v12, 0xCu);
  }

  v8 = 0;
LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)setUp
{
  v31 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = [(SlowNetworkCondition *)self profile];
    v27 = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting Setup: %@ Condition -- profile = %@", &v27, 0x16u);
  }

  v4 = [(SlowNetworkCondition *)self isNLCPrefPaneActive];
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SlowNetworkCondition setUp];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = [(SlowNetworkCondition *)self util];
      v6 = [v5 profileName];
      v27 = 136315394;
      v28 = "name";
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Configuring %s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = [(SlowNetworkCondition *)self util];
      v8 = [v7 downlinkDelay];
      v27 = 136315394;
      v28 = "DownlinkDelay";
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = [(SlowNetworkCondition *)self util];
      v10 = [v9 downlinkPacketLossRatio];
      v27 = 136315394;
      v28 = "DownlinkPacketLossRatio";
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = [(SlowNetworkCondition *)self util];
      v12 = [v11 downlinkBandwidth];
      v27 = 136315394;
      v28 = "DownlinkBandwidth";
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = [(SlowNetworkCondition *)self util];
      v14 = [v13 uplinkDelay];
      v27 = 136315394;
      v28 = "UplinkDelay";
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = [(SlowNetworkCondition *)self util];
      v16 = [v15 uplinkPacketLossRatio];
      v27 = 136315394;
      v28 = "UplinkPacketLossRatio";
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = [(SlowNetworkCondition *)self util];
      v18 = [v17 uplinkBandwidth];
      v27 = 136315394;
      v28 = "UplinkBandwidth";
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = [(SlowNetworkCondition *)self util];
      v20 = [v19 dnsDelayValue];
      v27 = 136315394;
      v28 = "DNSDelayValue";
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = [(SlowNetworkCondition *)self util];
      v22 = [v21 excludeLoopback];
      v27 = 136315394;
      v28 = "ExcludeLoopback";
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    v23 = [(SlowNetworkCondition *)self util];
    [v23 startNLC];

    [(SlowNetworkCondition *)self setRunning:1];
  }

  if (![(SlowNetworkCondition *)self running])
  {
    v24 = [(SlowNetworkCondition *)self util];
    [v24 stopNLC];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Stopped NLC", &v27, 2u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = 138412290;
    v28 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished Setup: %@ Condition", &v27, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];
  return !v4;
}

- (void)tearDown
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting Teardown: %@ Condition", &v5, 0xCu);
  }

  v3 = [(SlowNetworkCondition *)self util];
  [v3 stopNLC];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Stopped NLC", &v5, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished Teardown: %@ Condition", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end