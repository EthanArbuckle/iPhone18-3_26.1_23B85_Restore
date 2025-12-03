@interface CTDataStatus(Strings)
- (__CFString)dataBearerTechnologyString;
- (__CFString)indicatorOverrideString;
- (__CFString)indicatorString;
- (__CFString)radioCoverageString;
- (__CFString)radioFrequencyString;
- (__CFString)radioTechnologyString;
- (id)dictionary;
@end

@implementation CTDataStatus(Strings)

- (__CFString)radioTechnologyString
{
  radioTechnology = [self radioTechnology];

  return wirelessAccessTechnologyToString(radioTechnology);
}

- (__CFString)dataBearerTechnologyString
{
  dataBearerTechnology = [self dataBearerTechnology];

  return dataBearerTechnologyToString(dataBearerTechnology);
}

- (__CFString)indicatorString
{
  indicator = [self indicator];

  return indicatorToString(indicator);
}

- (__CFString)indicatorOverrideString
{
  indicatorOverride = [self indicatorOverride];

  return indicatorToString(indicatorOverride);
}

- (__CFString)radioFrequencyString
{
  if (objc_opt_respondsToSelector())
  {
    if ([self newRadioSub6DataBearer])
    {
      v2 = @"FR1";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [self newRadioMmWaveDataBearer])
  {
    return @"FR2";
  }

  return v2;
}

- (__CFString)radioCoverageString
{
  if (objc_opt_respondsToSelector())
  {
    if ([self newRadioCoverage])
    {
      v2 = @"NR";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [self newRadioSaCoverage])
  {
    v2 = @"NRSA";
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [self newRadioNsaCoverage])
  {
    return @"NRNSA";
  }

  return v2;
}

- (id)dictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "attached")}];
  [v2 setObject:v3 forKeyedSubscript:@"cellular_attached"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "roamAllowed")}];
  [v2 setObject:v4 forKeyedSubscript:@"cellular_roam_allowed"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "dataPlanSignalingReductionOverride")}];
  [v2 setObject:v5 forKeyedSubscript:@"cellular_data_plan_signaling_reduction_override"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "cellularDataPossible")}];
  [v2 setObject:v6 forKeyedSubscript:@"cellular_data_possible"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "inHomeCountry")}];
  [v2 setObject:v7 forKeyedSubscript:@"cellular_in_home_country"];

  indicatorString = [self indicatorString];
  [v2 setObject:indicatorString forKeyedSubscript:@"cellular_indicator"];

  indicatorOverrideString = [self indicatorOverrideString];
  [v2 setObject:indicatorOverrideString forKeyedSubscript:@"cellular_indicator_override"];

  radioTechnologyString = [self radioTechnologyString];
  [v2 setObject:radioTechnologyString forKeyedSubscript:@"cellular_radio_access_technology_ct_data_status"];

  dataBearerTechnologyString = [self dataBearerTechnologyString];
  [v2 setObject:dataBearerTechnologyString forKeyedSubscript:@"cellular_data_bearer_technology"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "dataBearerSoMask")}];
  [v2 setObject:v12 forKeyedSubscript:@"cellular_data_bearer_so_mask"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "activeContexts")}];
  [v2 setObject:v13 forKeyedSubscript:@"cellular_active_contexts"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "totalActiveContexts")}];
  [v2 setObject:v14 forKeyedSubscript:@"cellular_total_active_contexts"];

  radioFrequencyString = [self radioFrequencyString];
  [v2 setObject:radioFrequencyString forKeyedSubscript:@"cellular_radio_frequency"];

  if (objc_opt_respondsToSelector())
  {
    v16 = ctReasonToString([self reason]);
    [v2 setObject:v16 forKeyedSubscript:@"cellular_event_change_reason"];
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "newRadioCoverage")}];
    [v2 setObject:v17 forKeyedSubscript:@"cellular_new_radio_coverage"];
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "newRadioSaCoverage")}];
    [v2 setObject:v18 forKeyedSubscript:@"cellular_new_radio_sa_coverage"];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "newRadioNsaCoverage")}];
    [v2 setObject:v19 forKeyedSubscript:@"cellular_new_radio_nsa_coverage"];
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "newRadioDataBearer")}];
    [v2 setObject:v20 forKeyedSubscript:@"cellular_new_radio_data_bearer"];
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "newRadioSaDataBearer")}];
    [v2 setObject:v21 forKeyedSubscript:@"cellular_new_radio_sa_data_bearer"];
  }

  if (objc_opt_respondsToSelector())
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "newRadioNsaDataBearer")}];
    [v2 setObject:v22 forKeyedSubscript:@"cellular_new_radio_nsa_data_bearer"];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "newRadioMmWaveDataBearer")}];
    [v2 setObject:v23 forKeyedSubscript:@"cellular_new_radio_mmwave_data_bearer"];
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "newRadioSub6DataBearer")}];
    [v2 setObject:v24 forKeyedSubscript:@"cellular_new_radio_sub6_data_bearer"];
  }

  v25 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v25;
}

@end