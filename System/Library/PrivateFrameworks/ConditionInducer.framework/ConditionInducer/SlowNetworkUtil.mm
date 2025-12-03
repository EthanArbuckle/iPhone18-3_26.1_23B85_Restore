@interface SlowNetworkUtil
+ (id)loadNetworkProfilesData;
+ (void)loadNetworkProfilesData;
- (SlowNetworkUtil)init;
- (id)readInProfile:(id)profile;
- (void)extractProfileSetting:(id)setting;
- (void)loadProfile:(id)profile;
- (void)startNLC;
- (void)stopNLC;
@end

@implementation SlowNetworkUtil

- (SlowNetworkUtil)init
{
  v5.receiver = self;
  v5.super_class = SlowNetworkUtil;
  v2 = [(SlowNetworkUtil *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SlowNetworkUtil *)v2 setProfileData:0];
    *&v3->nlcCommand.version = 0u;
    *&v3->nlcCommand.nlc_conditions[1].downlink_config.qsize_unit = 0u;
    *&v3->nlcCommand.nlc_conditions[1].downlink_config.bw_unit = 0u;
    *&v3->nlcCommand.nlc_conditions[1].uplink_config.protocol = 0u;
    *&v3->nlcCommand.nlc_conditions[1].uplink_config.plr = 0u;
    *&v3->nlcCommand.nlc_conditions[1].net_config.ifname[8] = 0u;
    *&v3->nlcCommand.nlc_conditions[1].net_config.family = 0u;
    *&v3->nlcCommand.nlc_conditions[0].downlink_config.protocol = 0u;
    *&v3->nlcCommand.nlc_conditions[0].downlink_config.plr = 0u;
    *&v3->nlcCommand.nlc_conditions[0].uplink_config.dst_port = 0u;
    *&v3->nlcCommand.nlc_conditions[0].uplink_config.latency = 0u;
    *&v3->nlcCommand.nlc_conditions[0].net_config.ifname[12] = 0u;
    *&v3->nlcCommand.nlc_conditions[0].net_config.exclude_loopback = 0u;
    v3->nlcCommand.version = 21;
    v3->sessionCookie = 0;
  }

  return v3;
}

+ (id)loadNetworkProfilesData
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"NetworkProfiles" ofType:@"plist"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[SlowNetworkUtil loadNetworkProfilesData];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[SlowNetworkUtil loadNetworkProfilesData];
    }

    v5 = 0;
  }

  return v5;
}

- (id)readInProfile:(id)profile
{
  profileCopy = profile;
  v4 = +[SlowNetworkUtil loadNetworkProfilesData];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:profileCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SlowNetworkUtil readInProfile:];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SlowNetworkUtil readInProfile:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)loadProfile:(id)profile
{
  v30 = *MEMORY[0x277D85DE8];
  *&self->nlcCommand.version = 0u;
  *&self->nlcCommand.nlc_conditions[1].downlink_config.qsize_unit = 0u;
  *&self->nlcCommand.nlc_conditions[1].downlink_config.bw_unit = 0u;
  *&self->nlcCommand.nlc_conditions[1].uplink_config.protocol = 0u;
  *&self->nlcCommand.nlc_conditions[1].uplink_config.plr = 0u;
  *&self->nlcCommand.nlc_conditions[1].net_config.ifname[8] = 0u;
  *&self->nlcCommand.nlc_conditions[1].net_config.family = 0u;
  *&self->nlcCommand.nlc_conditions[0].downlink_config.protocol = 0u;
  *&self->nlcCommand.nlc_conditions[0].downlink_config.plr = 0u;
  *&self->nlcCommand.nlc_conditions[0].uplink_config.dst_port = 0u;
  *&self->nlcCommand.nlc_conditions[0].uplink_config.latency = 0u;
  *&self->nlcCommand.nlc_conditions[0].net_config.ifname[12] = 0u;
  *&self->nlcCommand.nlc_conditions[0].net_config.exclude_loopback = 0u;
  self->nlcCommand.version = 21;
  [(SlowNetworkUtil *)self extractProfileSetting:profile];
  v29 = 0uLL;
  v27 = 0uLL;
  v28 = 0;
  downlinkDelay = self->downlinkDelay;
  if (downlinkDelay)
  {
    unsignedLongValue = [(NSNumber *)downlinkDelay unsignedLongValue];
  }

  else
  {
    unsignedLongValue = 0;
  }

  downlinkPacketLossRatio = self->downlinkPacketLossRatio;
  if (downlinkPacketLossRatio)
  {
    [(NSNumber *)downlinkPacketLossRatio floatValue];
    v8 = v7 / 100.0;
  }

  else
  {
    v8 = 0.0;
  }

  downlinkBandwidth = self->downlinkBandwidth;
  if (downlinkBandwidth)
  {
    [(NSNumber *)downlinkBandwidth floatValue];
    v11 = v10 >= 1.0;
    if (v10 < 1.0)
    {
      v10 = v10 * 1000.0;
    }

    v12 = v10;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (v8 == 0.0 && !unsignedLongValue)
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v8 = 0.0;
    goto LABEL_17;
  }

LABEL_16:
  v27 = 0uLL;
  v13 = 9;
  v28 = 0;
LABEL_17:
  uplinkDelay = self->uplinkDelay;
  if (uplinkDelay)
  {
    unsignedLongValue2 = [(NSNumber *)uplinkDelay unsignedLongValue];
  }

  else
  {
    unsignedLongValue2 = 0;
  }

  uplinkPacketLossRatio = self->uplinkPacketLossRatio;
  if (uplinkPacketLossRatio)
  {
    [(NSNumber *)uplinkPacketLossRatio floatValue];
    v18 = v17 / 100.0;
  }

  else
  {
    v18 = 0.0;
  }

  uplinkBandwidth = self->uplinkBandwidth;
  if (uplinkBandwidth)
  {
    [(NSNumber *)uplinkBandwidth floatValue];
  }

  v20 = v18 == 0.0 && unsignedLongValue2 == 0;
  if (v20)
  {
    v18 = 0.0;
  }

  else
  {
    v13 |= 5u;
  }

  if (v20)
  {
    unsignedLongValue2 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v26 = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Setting default params", v26, 2u);
  }

  if (v13)
  {
    *&v21 = 0;
    *&self->nlcCommand.nlc_conditions[1].net_config.family = 0x100000000;
    *self->nlcCommand.nlc_conditions[1].net_config.ifname = v29;
    *&self->nlcCommand.nlc_conditions[1].uplink_config.bandwidth = 0;
    self->nlcCommand.nlc_conditions[1].flags = v13;
    self->nlcCommand.nlc_conditions[1].uplink_config.plr = v18;
    self->nlcCommand.nlc_conditions[1].uplink_config.latency = unsignedLongValue2;
    *&self->nlcCommand.nlc_conditions[1].uplink_config.qsize = v21;
    self->nlcCommand.nlc_conditions[1].uplink_config.src_port = 0;
    self->nlcCommand.nlc_conditions[1].downlink_config.bandwidth = v12;
    self->nlcCommand.nlc_conditions[1].downlink_config.bw_unit = v11;
    self->nlcCommand.nlc_conditions[1].downlink_config.plr = v8;
    self->nlcCommand.nlc_conditions[1].downlink_config.latency = unsignedLongValue;
    *&self->nlcCommand.nlc_conditions[1].downlink_config.qsize = v27;
    self->nlcCommand.nlc_conditions[1].downlink_config.src_port = v28;
  }

  if ([(NSNumber *)self->dnsDelayValue intValue]>= 1)
  {
    unsignedLongValue3 = [(NSNumber *)self->dnsDelayValue unsignedLongValue];
    unsignedLongValue4 = [(NSNumber *)self->excludeLoopback unsignedLongValue];
    if (unsignedLongValue3)
    {
      v27 = 0uLL;
      v28 = 0;
      v29 = 0uLL;
      LODWORD(v24) = 0;
      HIDWORD(v24) = unsignedLongValue4;
      self->nlcCommand.nlc_conditions[0].flags = 6;
      *&self->nlcCommand.nlc_conditions[0].net_config.family = v24;
      *self->nlcCommand.nlc_conditions[0].net_config.ifname = v29;
      *&self->nlcCommand.nlc_conditions[0].uplink_config.bw_unit = 0;
      self->nlcCommand.nlc_conditions[0].uplink_config.bandwidth = 0;
      self->nlcCommand.nlc_conditions[0].uplink_config.latency = unsignedLongValue3;
      *&self->nlcCommand.nlc_conditions[0].uplink_config.qsize = 0;
      *&self->nlcCommand.nlc_conditions[0].uplink_config.protocol = 0x3500000011;
      *&self->nlcCommand.nlc_conditions[0].downlink_config.bandwidth = 0;
      *&self->nlcCommand.nlc_conditions[0].downlink_config.plr = 0;
      self->nlcCommand.nlc_conditions[0].uplink_config.src_port = 0;
      self->nlcCommand.nlc_conditions[0].downlink_config.src_port = v28;
      *&self->nlcCommand.nlc_conditions[0].downlink_config.qsize = v27;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v26 = 0;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Done setting", v26, 2u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)extractProfileSetting:(id)setting
{
  settingCopy = setting;
  if (settingCopy)
  {
    v37 = settingCopy;
    v5 = [settingCopy objectForKey:@"UplinkBandwidthUnit"];

    v6 = [v37 objectForKey:@"DownlinkBandwidthUnit"];

    v7 = [v37 valueForKey:@"ExcludeLoopback"];
    excludeLoopback = self->excludeLoopback;
    self->excludeLoopback = v7;

    v9 = [v37 valueForKey:@"DNSDelayValue"];
    dnsDelayValue = self->dnsDelayValue;
    self->dnsDelayValue = v9;

    v11 = [v37 valueForKey:@"DownlinkDelay"];
    downlinkDelay = self->downlinkDelay;
    self->downlinkDelay = v11;

    v13 = [v37 valueForKey:@"DownlinkPacketLossRatio"];
    downlinkPacketLossRatio = self->downlinkPacketLossRatio;
    self->downlinkPacketLossRatio = v13;

    v15 = [v37 valueForKey:@"DownlinkBandwidth"];
    downlinkBandwidth = self->downlinkBandwidth;
    self->downlinkBandwidth = v15;

    v17 = [v37 valueForKey:@"UplinkDelay"];
    uplinkDelay = self->uplinkDelay;
    self->uplinkDelay = v17;

    v19 = [v37 valueForKey:@"UplinkPacketLossRatio"];
    uplinkPacketLossRatio = self->uplinkPacketLossRatio;
    self->uplinkPacketLossRatio = v19;

    v21 = [v37 valueForKey:@"UplinkBandwidth"];
    uplinkBandwidth = self->uplinkBandwidth;
    self->uplinkBandwidth = v21;

    v23 = [v37 objectForKey:@"name"];
    profileName = self->profileName;
    self->profileName = v23;

    if (v5)
    {
      v25 = [v37 valueForKey:@"UplinkBandwidthUnit"];
      intValue = [v25 intValue];

      if (!intValue)
      {
        v27 = MEMORY[0x277CCABB0];
        [(NSNumber *)self->uplinkBandwidth doubleValue];
        v29 = [v27 numberWithDouble:v28 / 1000.0];
        v30 = self->uplinkBandwidth;
        self->uplinkBandwidth = v29;
      }
    }

    settingCopy = v37;
    if (v6)
    {
      v31 = [v37 valueForKey:@"DownlinkBandwidthUnit"];
      intValue2 = [v31 intValue];

      settingCopy = v37;
      if (!intValue2)
      {
        v33 = MEMORY[0x277CCABB0];
        [(NSNumber *)self->downlinkBandwidth doubleValue];
        v35 = [v33 numberWithDouble:v34 / 1000.0];
        v36 = self->downlinkBandwidth;
        self->downlinkBandwidth = v35;

        settingCopy = v37;
      }
    }
  }
}

- (void)startNLC
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopNLC
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)loadNetworkProfilesData
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)readInProfile:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end