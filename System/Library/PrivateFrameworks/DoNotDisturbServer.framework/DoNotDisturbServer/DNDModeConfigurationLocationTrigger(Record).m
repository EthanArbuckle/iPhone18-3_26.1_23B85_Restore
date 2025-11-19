@interface DNDModeConfigurationLocationTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationLocationTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v3 = a3;
  v4 = [v3 bs_safeNumberForKey:@"latitude"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 bs_safeNumberForKey:@"longitude"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 bs_safeNumberForKey:@"radius"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 bs_safeStringForKey:@"identifier"];
  v14 = [v3 bs_safeNumberForKey:@"referenceFrame"];
  v15 = [v14 intValue];

  v16 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v13 radius:v6 identifier:{v9, v12}];
  [v16 setGeoReferenceFrame:v15];
  v17 = [v3 bs_safeStringForKey:@"detail"];
  v18 = [v3 bs_safeNumberForKey:@"enabledSetting"];

  v19 = [v18 unsignedIntegerValue];
  v20 = [objc_alloc(MEMORY[0x277D059B0]) initWithRegion:v16 detail:v17 enabledSetting:v19];

  return v20;
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v25[7] = *MEMORY[0x277D85DE8];
  v25[0] = @"DNDModeConfigurationLocationTrigger";
  v24[0] = @"class";
  v24[1] = @"latitude";
  v2 = MEMORY[0x277CCABB0];
  v23 = [a1 region];
  [v23 center];
  v22 = [v2 numberWithDouble:?];
  v25[1] = v22;
  v24[2] = @"longitude";
  v3 = MEMORY[0x277CCABB0];
  v21 = [a1 region];
  [v21 center];
  v20 = [v3 numberWithDouble:v4];
  v25[2] = v20;
  v24[3] = @"radius";
  v5 = MEMORY[0x277CCABB0];
  v6 = [a1 region];
  [v6 radius];
  v7 = [v5 numberWithDouble:?];
  v25[3] = v7;
  v24[4] = @"referenceFrame";
  v8 = MEMORY[0x277CCABB0];
  v9 = [a1 region];
  v10 = [v8 numberWithUnsignedInt:{objc_msgSend(v9, "geoReferenceFrame")}];
  v25[4] = v10;
  v24[5] = @"identifier";
  v11 = [a1 region];
  v12 = [v11 identifier];
  v25[5] = v12;
  v24[6] = @"enabledSetting";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "enabledSetting")}];
  v25[6] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];
  v15 = [v14 mutableCopy];

  v16 = [a1 detail];

  if (v16)
  {
    v17 = [a1 detail];
    [v15 setObject:v17 forKeyedSubscript:@"detail"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

@end