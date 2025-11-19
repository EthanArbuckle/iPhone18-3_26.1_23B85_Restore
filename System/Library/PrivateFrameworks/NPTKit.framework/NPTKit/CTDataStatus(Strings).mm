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
  v1 = [a1 radioTechnology];

  return wirelessAccessTechnologyToString(v1);
}

- (__CFString)dataBearerTechnologyString
{
  v1 = [a1 dataBearerTechnology];

  return dataBearerTechnologyToString(v1);
}

- (__CFString)indicatorString
{
  v1 = [a1 indicator];

  return indicatorToString(v1);
}

- (__CFString)indicatorOverrideString
{
  v1 = [a1 indicatorOverride];

  return indicatorToString(v1);
}

- (__CFString)radioFrequencyString
{
  if (objc_opt_respondsToSelector())
  {
    if ([a1 newRadioSub6DataBearer])
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

  if ((objc_opt_respondsToSelector() & 1) != 0 && [a1 newRadioMmWaveDataBearer])
  {
    return @"FR2";
  }

  return v2;
}

- (__CFString)radioCoverageString
{
  if (objc_opt_respondsToSelector())
  {
    if ([a1 newRadioCoverage])
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

  if ((objc_opt_respondsToSelector() & 1) != 0 && [a1 newRadioSaCoverage])
  {
    v2 = @"NRSA";
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [a1 newRadioNsaCoverage])
  {
    return @"NRNSA";
  }

  return v2;
}

- (id)dictionary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "attached")}];
  [v2 setObject:v3 forKeyedSubscript:@"cellular_attached"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "roamAllowed")}];
  [v2 setObject:v4 forKeyedSubscript:@"cellular_roam_allowed"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "dataPlanSignalingReductionOverride")}];
  [v2 setObject:v5 forKeyedSubscript:@"cellular_data_plan_signaling_reduction_override"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "cellularDataPossible")}];
  [v2 setObject:v6 forKeyedSubscript:@"cellular_data_possible"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "inHomeCountry")}];
  [v2 setObject:v7 forKeyedSubscript:@"cellular_in_home_country"];

  v8 = [a1 indicatorString];
  [v2 setObject:v8 forKeyedSubscript:@"cellular_indicator"];

  v9 = [a1 indicatorOverrideString];
  [v2 setObject:v9 forKeyedSubscript:@"cellular_indicator_override"];

  v10 = [a1 radioTechnologyString];
  [v2 setObject:v10 forKeyedSubscript:@"cellular_radio_access_technology_ct_data_status"];

  v11 = [a1 dataBearerTechnologyString];
  [v2 setObject:v11 forKeyedSubscript:@"cellular_data_bearer_technology"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "dataBearerSoMask")}];
  [v2 setObject:v12 forKeyedSubscript:@"cellular_data_bearer_so_mask"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "activeContexts")}];
  [v2 setObject:v13 forKeyedSubscript:@"cellular_active_contexts"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "totalActiveContexts")}];
  [v2 setObject:v14 forKeyedSubscript:@"cellular_total_active_contexts"];

  v15 = [a1 radioFrequencyString];
  [v2 setObject:v15 forKeyedSubscript:@"cellular_radio_frequency"];

  if (objc_opt_respondsToSelector())
  {
    v16 = ctReasonToString([a1 reason]);
    [v2 setObject:v16 forKeyedSubscript:@"cellular_event_change_reason"];
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "newRadioCoverage")}];
    [v2 setObject:v17 forKeyedSubscript:@"cellular_new_radio_coverage"];
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "newRadioSaCoverage")}];
    [v2 setObject:v18 forKeyedSubscript:@"cellular_new_radio_sa_coverage"];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "newRadioNsaCoverage")}];
    [v2 setObject:v19 forKeyedSubscript:@"cellular_new_radio_nsa_coverage"];
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "newRadioDataBearer")}];
    [v2 setObject:v20 forKeyedSubscript:@"cellular_new_radio_data_bearer"];
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "newRadioSaDataBearer")}];
    [v2 setObject:v21 forKeyedSubscript:@"cellular_new_radio_sa_data_bearer"];
  }

  if (objc_opt_respondsToSelector())
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "newRadioNsaDataBearer")}];
    [v2 setObject:v22 forKeyedSubscript:@"cellular_new_radio_nsa_data_bearer"];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "newRadioMmWaveDataBearer")}];
    [v2 setObject:v23 forKeyedSubscript:@"cellular_new_radio_mmwave_data_bearer"];
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "newRadioSub6DataBearer")}];
    [v2 setObject:v24 forKeyedSubscript:@"cellular_new_radio_sub6_data_bearer"];
  }

  v25 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v25;
}

@end