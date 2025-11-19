@interface WDSexualActivityListDataProvider
- (id)sampleTypes;
- (id)textForObject:(id)a3;
@end

@implementation WDSexualActivityListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBA98]];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)textForObject:(id)a3
{
  v3 = [a3 metadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCC508]];

  if (v4)
  {
    v5 = [v4 BOOLValue];
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = v6;
    if (v5)
    {
      v8 = @"PROTECTION_USED";
    }

    else
    {
      v8 = @"PROTECTION_NOT_USED";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  }

  else
  {
    v9 = HKLocalizedNoDataString();
  }

  return v9;
}

@end