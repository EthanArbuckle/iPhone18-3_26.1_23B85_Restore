@interface W5WiFiStatus(Strings)
- (id)chainAckString;
- (id)desenseString;
- (id)dictionary;
- (id)powerString;
@end

@implementation W5WiFiStatus(Strings)

- (id)powerString
{
  power = [self power];
  if ([power length] == 24)
  {
    power2 = [self power];
    [power2 bytes];
    v4 = W5DescriptionForPower();
  }

  else
  {
    v4 = W5DescriptionForPower();
  }

  return v4;
}

- (id)desenseString
{
  desense = [self desense];
  v4 = [desense length];
  if (v4 == 16)
  {
    desense2 = [self desense];
    [desense2 bytes];
  }

  desenseLevel = [self desenseLevel];
  if ([desenseLevel length] == 8)
  {
    desenseLevel2 = [self desenseLevel];
    [desenseLevel2 bytes];
    v7 = W5DescriptionForDesense();
  }

  else
  {
    v7 = W5DescriptionForDesense();
  }

  if (v4 == 16)
  {
  }

  return v7;
}

- (id)chainAckString
{
  chainAck = [self chainAck];
  if ([chainAck length] == 24)
  {
    chainAck2 = [self chainAck];
    [chainAck2 bytes];
    v4 = W5DescriptionForChainAck();
  }

  else
  {
    v4 = W5DescriptionForChainAck();
  }

  return v4;
}

- (id)dictionary
{
  v2 = objc_opt_new();
  macAddress = [self macAddress];

  if (macAddress)
  {
    macAddress2 = [self macAddress];
    [v2 setValue:macAddress2 forKey:@"wifi_mac_address"];
  }

  ssid = [self ssid];

  if (ssid)
  {
    ssidString = [self ssidString];
    [v2 setValue:ssidString forKey:@"wifi_ssid"];
  }

  bssid = [self bssid];

  if (bssid)
  {
    bssid2 = [self bssid];
    [v2 setValue:bssid2 forKey:@"wifi_bssid"];
  }

  [self security];
  v9 = W5DescriptionForSecurity();
  [v2 setValue:v9 forKey:@"wifi_security"];

  channel = [self channel];

  if (channel)
  {
    v11 = MEMORY[0x277CCABB0];
    channel2 = [self channel];
    v13 = [v11 numberWithInteger:{objc_msgSend(channel2, "channel")}];
    [v2 setValue:v13 forKey:@"wifi_channel"];
  }

  countryCode = [self countryCode];

  if (countryCode)
  {
    countryCode2 = [self countryCode];
    [v2 setValue:countryCode2 forKey:@"wifi_country_code"];
  }

  chainAckString = [self chainAckString];
  if (chainAckString)
  {
    v17 = chainAckString;
    chainAckString2 = [self chainAckString];
    v19 = [chainAckString2 length];

    if (v19)
    {
      chainAckString3 = [self chainAckString];
      [v2 setValue:chainAckString3 forKey:@"wifi_chain_ack"];
    }
  }

  desenseString = [self desenseString];
  if (desenseString)
  {
    v22 = desenseString;
    desenseString2 = [self desenseString];
    v24 = [desenseString2 length];

    if (v24)
    {
      desenseString3 = [self desenseString];
      [v2 setValue:desenseString3 forKey:@"wifi_desense"];
    }
  }

  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "rssi")}];
  [v2 setValue:v26 forKey:@"wifi_rssi"];

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "noise")}];
  [v2 setValue:v27 forKey:@"wifi_noise"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "numberOfSpacialStreams")}];
  [v2 setValue:v28 forKey:@"wifi_number_of_spatial_streams"];

  [self eapolControlMode];
  v29 = W5DescriptionForEAPOLControlMode();
  [v2 setValue:v29 forKey:@"wifi_eapol_control_mode"];

  [self eapolSupplicantState];
  v30 = W5DescriptionForEAPOLSupplicantState();
  [v2 setValue:v30 forKey:@"wifi_eapol_supplicant_state"];

  [self opMode];
  v31 = W5DescriptionForOpMode();
  [v2 setValue:v31 forKey:@"wifi_op_mode"];

  [self phyMode];
  v32 = W5DescriptionForPHYMode();
  [v2 setValue:v32 forKey:@"wifi_phy_mode"];

  [self btcMode];
  v33 = W5DescriptionForBTCMode();
  [v2 setValue:v33 forKey:@"wifi_btc_mode"];

  v34 = MEMORY[0x277CCABB0];
  [self txRate];
  v35 = [v34 numberWithDouble:?];
  [v2 setValue:v35 forKey:@"wifi_tx_rate"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "mcsIndex")}];
  [v2 setValue:v36 forKey:@"wifi_mcs_index"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "guardInterval")}];
  [v2 setValue:v37 forKey:@"wifi_guard_interval"];

  v38 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v38;
}

@end