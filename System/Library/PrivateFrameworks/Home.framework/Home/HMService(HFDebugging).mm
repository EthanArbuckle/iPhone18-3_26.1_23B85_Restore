@interface HMService(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMService(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 name];
  [v5 setObject:v7 forKeyedSubscript:@"name"];

  v8 = MEMORY[0x277CD1D90];
  v9 = [a1 serviceType];
  v10 = [v8 localizedDescriptionForServiceType:v9];
  [v5 setObject:v10 forKeyedSubscript:@"type"];

  v11 = [a1 serviceSubtype];

  if (v11)
  {
    v12 = MEMORY[0x277CD1D90];
    v13 = [a1 serviceSubtype];
    v14 = [v12 hf_descriptionForServiceSubtype:v13];
    [v5 setObject:v14 forKeyedSubscript:@"subtype"];
  }

  v15 = [a1 accessory];
  v16 = [v4 copyWithDetailLevel:0];
  [v5 appendObject:v15 withName:@"accessory" context:v16];

  if ([v4 detailLevel] == 2)
  {
    v17 = [a1 characteristics];
    [v5 setObject:v17 forKeyedSubscript:@"characteristics"];

    v18 = [a1 associatedServiceType];

    if (v18)
    {
      v19 = MEMORY[0x277CD1D90];
      v20 = [a1 associatedServiceType];
      v21 = [v19 localizedDescriptionForServiceType:v20];
      [v5 setObject:v21 forKeyedSubscript:@"associatedServiceType"];
    }

    v22 = [a1 linkedServices];
    v23 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v22 withName:@"linkedServices" context:v23 options:1];

    [v5 appendBool:objc_msgSend(a1 withName:{"hf_isOnForContextType:", 0), @"isLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_shouldBeOnForContextType:", 0), @"showInLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_isFavorite"), @"isFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_effectiveIsFavorite"), @"effectiveIsFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_showInHomeDashboard"), @"showInHomeDashboard"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_effectiveShowInHomeDashboard"), @"effectiveShowInHomeDashboard"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"isPrimaryService"), @"primaryService"}];
  }

  return v5;
}

@end