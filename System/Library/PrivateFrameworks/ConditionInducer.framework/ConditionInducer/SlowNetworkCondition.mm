@interface SlowNetworkCondition
+ (id)descriptionWithProfileParamsForProfile:(id)profile;
- (BOOL)isDestructive;
- (BOOL)isInternalOnly;
- (BOOL)isNLCPrefPaneActive;
- (BOOL)setUp;
- (SlowNetworkCondition)initWithProfile:(id)profile;
- (id)identifierName;
- (id)userFriendlyName;
- (void)tearDown;
@end

@implementation SlowNetworkCondition

+ (id)descriptionWithProfileParamsForProfile:(id)profile
{
  profileCopy = profile;
  v4 = objc_alloc_init(SlowNetworkUtil);
  v5 = [(SlowNetworkUtil *)v4 readInProfile:profileCopy];

  [(SlowNetworkUtil *)v4 loadProfile:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = MEMORY[0x277CCACA8];
  profileName = [(SlowNetworkUtil *)v4 profileName];
  v9 = [v7 stringWithFormat:@"Name: %@", profileName];
  [v6 addObject:v9];

  downlinkBandwidth = [(SlowNetworkUtil *)v4 downlinkBandwidth];

  if (downlinkBandwidth)
  {
    v11 = MEMORY[0x277CCACA8];
    downlinkBandwidth2 = [(SlowNetworkUtil *)v4 downlinkBandwidth];
    [downlinkBandwidth2 doubleValue];
    v14 = [v11 stringWithFormat:@"Downlink Bandwidth: %g Mbps", v13];
    [v6 addObject:v14];
  }

  downlinkDelay = [(SlowNetworkUtil *)v4 downlinkDelay];

  if (downlinkDelay)
  {
    v16 = MEMORY[0x277CCACA8];
    downlinkDelay2 = [(SlowNetworkUtil *)v4 downlinkDelay];
    v18 = [v16 stringWithFormat:@"Downlink Latency: %lu ms", objc_msgSend(downlinkDelay2, "unsignedLongValue")];
    [v6 addObject:v18];
  }

  downlinkPacketLossRatio = [(SlowNetworkUtil *)v4 downlinkPacketLossRatio];

  if (downlinkPacketLossRatio)
  {
    v20 = MEMORY[0x277CCACA8];
    downlinkPacketLossRatio2 = [(SlowNetworkUtil *)v4 downlinkPacketLossRatio];
    [downlinkPacketLossRatio2 doubleValue];
    v23 = [v20 stringWithFormat:@"Downlink Packet Loss Ratio: %g%%", v22];
    [v6 addObject:v23];
  }

  uplinkBandwidth = [(SlowNetworkUtil *)v4 uplinkBandwidth];

  if (uplinkBandwidth)
  {
    v25 = MEMORY[0x277CCACA8];
    uplinkBandwidth2 = [(SlowNetworkUtil *)v4 uplinkBandwidth];
    [uplinkBandwidth2 doubleValue];
    v28 = [v25 stringWithFormat:@"Uplink Bandwidth: %g Mbps", v27];
    [v6 addObject:v28];
  }

  uplinkDelay = [(SlowNetworkUtil *)v4 uplinkDelay];

  if (uplinkDelay)
  {
    v30 = MEMORY[0x277CCACA8];
    downlinkDelay3 = [(SlowNetworkUtil *)v4 downlinkDelay];
    v32 = [v30 stringWithFormat:@"Uplink Latency: %lu ms", objc_msgSend(downlinkDelay3, "unsignedLongValue")];
    [v6 addObject:v32];
  }

  uplinkPacketLossRatio = [(SlowNetworkUtil *)v4 uplinkPacketLossRatio];

  if (uplinkPacketLossRatio)
  {
    v34 = MEMORY[0x277CCACA8];
    downlinkPacketLossRatio3 = [(SlowNetworkUtil *)v4 downlinkPacketLossRatio];
    [downlinkPacketLossRatio3 doubleValue];
    v37 = [v34 stringWithFormat:@"Uplink Packet Loss Ratio: %g%%", v36];
    [v6 addObject:v37];
  }

  excludeLoopback = [(SlowNetworkUtil *)v4 excludeLoopback];

  if (excludeLoopback)
  {
    v39 = MEMORY[0x277CCACA8];
    excludeLoopback2 = [(SlowNetworkUtil *)v4 excludeLoopback];
    v41 = [v39 stringWithFormat:@"Exclude Loopback: %lu", objc_msgSend(excludeLoopback2, "unsignedLongValue")];
    [v6 addObject:v41];
  }

  dnsDelayValue = [(SlowNetworkUtil *)v4 dnsDelayValue];

  if (dnsDelayValue)
  {
    v43 = MEMORY[0x277CCACA8];
    dnsDelayValue2 = [(SlowNetworkUtil *)v4 dnsDelayValue];
    v45 = [v43 stringWithFormat:@"DNS Delay: %lu ms", objc_msgSend(dnsDelayValue2, "unsignedLongValue")];
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

- (SlowNetworkCondition)initWithProfile:(id)profile
{
  v27 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  objc_storeStrong(&self->_profile, profile);
  v6 = objc_alloc_init(SlowNetworkUtil);
  util = self->_util;
  self->_util = v6;

  v8 = [(SlowNetworkUtil *)self->_util readInProfile:profileCopy];
  profileData = self->_profileData;
  self->_profileData = v8;

  [(SlowNetworkUtil *)self->_util loadProfile:self->_profileData];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    profileName = [(SlowNetworkUtil *)self->_util profileName];
    *buf = 136315394;
    v24 = "name";
    v25 = 2112;
    v26 = profileName;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Configured %s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    downlinkDelay = [(SlowNetworkUtil *)self->_util downlinkDelay];
    *buf = 136315394;
    v24 = "DownlinkDelay";
    v25 = 2112;
    v26 = downlinkDelay;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    downlinkPacketLossRatio = [(SlowNetworkUtil *)self->_util downlinkPacketLossRatio];
    *buf = 136315394;
    v24 = "DownlinkPacketLossRatio";
    v25 = 2112;
    v26 = downlinkPacketLossRatio;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    downlinkBandwidth = [(SlowNetworkUtil *)self->_util downlinkBandwidth];
    *buf = 136315394;
    v24 = "DownlinkBandwidth";
    v25 = 2112;
    v26 = downlinkBandwidth;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    uplinkDelay = [(SlowNetworkUtil *)self->_util uplinkDelay];
    *buf = 136315394;
    v24 = "UplinkDelay";
    v25 = 2112;
    v26 = uplinkDelay;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    uplinkPacketLossRatio = [(SlowNetworkUtil *)self->_util uplinkPacketLossRatio];
    *buf = 136315394;
    v24 = "UplinkPacketLossRatio";
    v25 = 2112;
    v26 = uplinkPacketLossRatio;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    uplinkBandwidth = [(SlowNetworkUtil *)self->_util uplinkBandwidth];
    *buf = 136315394;
    v24 = "UplinkBandwidth";
    v25 = 2112;
    v26 = uplinkBandwidth;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    dnsDelayValue = [(SlowNetworkUtil *)self->_util dnsDelayValue];
    *buf = 136315394;
    v24 = "DNSDelayValue";
    v25 = 2112;
    v26 = dnsDelayValue;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", buf, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    excludeLoopback = [(SlowNetworkUtil *)self->_util excludeLoopback];
    *buf = 136315394;
    v24 = "ExcludeLoopback";
    v25 = 2112;
    v26 = excludeLoopback;
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.network.prefPaneSimulate.plist"];

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

        bOOLValue = [v7 BOOLValue];

        goto LABEL_15;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        allKeys = [(__CFString *)v5 allKeys];
        v12 = 138412546;
        v13 = @"SimulatorIsRunning";
        v14 = 2112;
        v15 = allKeys;
        _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Unable to find value for key %@ in plist: %@", &v12, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = @"/var/mobile/Library/Preferences/com.apple.network.prefPaneSimulate.plist";
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Read plist from %@, but it was nil?", &v12, 0xCu);
    }

    bOOLValue = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = @"/var/mobile/Library/Preferences/com.apple.network.prefPaneSimulate.plist";
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Unable to access the pref pane plist at %@, so we'll take the safe assumption and assume that NLC is not running.", &v12, 0xCu);
  }

  bOOLValue = 0;
LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)setUp
{
  v31 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    profile = [(SlowNetworkCondition *)self profile];
    v27 = 138412546;
    selfCopy2 = self;
    v29 = 2112;
    v30 = profile;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting Setup: %@ Condition -- profile = %@", &v27, 0x16u);
  }

  isNLCPrefPaneActive = [(SlowNetworkCondition *)self isNLCPrefPaneActive];
  if (isNLCPrefPaneActive)
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
      util = [(SlowNetworkCondition *)self util];
      profileName = [util profileName];
      v27 = 136315394;
      selfCopy2 = "name";
      v29 = 2112;
      v30 = profileName;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Configuring %s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      util2 = [(SlowNetworkCondition *)self util];
      downlinkDelay = [util2 downlinkDelay];
      v27 = 136315394;
      selfCopy2 = "DownlinkDelay";
      v29 = 2112;
      v30 = downlinkDelay;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      util3 = [(SlowNetworkCondition *)self util];
      downlinkPacketLossRatio = [util3 downlinkPacketLossRatio];
      v27 = 136315394;
      selfCopy2 = "DownlinkPacketLossRatio";
      v29 = 2112;
      v30 = downlinkPacketLossRatio;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      util4 = [(SlowNetworkCondition *)self util];
      downlinkBandwidth = [util4 downlinkBandwidth];
      v27 = 136315394;
      selfCopy2 = "DownlinkBandwidth";
      v29 = 2112;
      v30 = downlinkBandwidth;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      util5 = [(SlowNetworkCondition *)self util];
      uplinkDelay = [util5 uplinkDelay];
      v27 = 136315394;
      selfCopy2 = "UplinkDelay";
      v29 = 2112;
      v30 = uplinkDelay;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      util6 = [(SlowNetworkCondition *)self util];
      uplinkPacketLossRatio = [util6 uplinkPacketLossRatio];
      v27 = 136315394;
      selfCopy2 = "UplinkPacketLossRatio";
      v29 = 2112;
      v30 = uplinkPacketLossRatio;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      util7 = [(SlowNetworkCondition *)self util];
      uplinkBandwidth = [util7 uplinkBandwidth];
      v27 = 136315394;
      selfCopy2 = "UplinkBandwidth";
      v29 = 2112;
      v30 = uplinkBandwidth;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      util8 = [(SlowNetworkCondition *)self util];
      dnsDelayValue = [util8 dnsDelayValue];
      v27 = 136315394;
      selfCopy2 = "DNSDelayValue";
      v29 = 2112;
      v30 = dnsDelayValue;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      util9 = [(SlowNetworkCondition *)self util];
      excludeLoopback = [util9 excludeLoopback];
      v27 = 136315394;
      selfCopy2 = "ExcludeLoopback";
      v29 = 2112;
      v30 = excludeLoopback;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s = %@", &v27, 0x16u);
    }

    util10 = [(SlowNetworkCondition *)self util];
    [util10 startNLC];

    [(SlowNetworkCondition *)self setRunning:1];
  }

  if (![(SlowNetworkCondition *)self running])
  {
    util11 = [(SlowNetworkCondition *)self util];
    [util11 stopNLC];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Stopped NLC", &v27, 2u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished Setup: %@ Condition", &v27, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];
  return !isNLCPrefPaneActive;
}

- (void)tearDown
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting Teardown: %@ Condition", &v5, 0xCu);
  }

  util = [(SlowNetworkCondition *)self util];
  [util stopNLC];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Stopped NLC", &v5, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished Teardown: %@ Condition", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end