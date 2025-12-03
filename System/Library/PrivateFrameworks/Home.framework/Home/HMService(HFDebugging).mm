@interface HMService(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMService(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  v8 = MEMORY[0x277CD1D90];
  serviceType = [self serviceType];
  v10 = [v8 localizedDescriptionForServiceType:serviceType];
  [v5 setObject:v10 forKeyedSubscript:@"type"];

  serviceSubtype = [self serviceSubtype];

  if (serviceSubtype)
  {
    v12 = MEMORY[0x277CD1D90];
    serviceSubtype2 = [self serviceSubtype];
    v14 = [v12 hf_descriptionForServiceSubtype:serviceSubtype2];
    [v5 setObject:v14 forKeyedSubscript:@"subtype"];
  }

  accessory = [self accessory];
  v16 = [v4 copyWithDetailLevel:0];
  [v5 appendObject:accessory withName:@"accessory" context:v16];

  if ([v4 detailLevel] == 2)
  {
    characteristics = [self characteristics];
    [v5 setObject:characteristics forKeyedSubscript:@"characteristics"];

    associatedServiceType = [self associatedServiceType];

    if (associatedServiceType)
    {
      v19 = MEMORY[0x277CD1D90];
      associatedServiceType2 = [self associatedServiceType];
      v21 = [v19 localizedDescriptionForServiceType:associatedServiceType2];
      [v5 setObject:v21 forKeyedSubscript:@"associatedServiceType"];
    }

    linkedServices = [self linkedServices];
    v23 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:linkedServices withName:@"linkedServices" context:v23 options:1];

    [v5 appendBool:objc_msgSend(self withName:{"hf_isOnForContextType:", 0), @"isLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_shouldBeOnForContextType:", 0), @"showInLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_isFavorite"), @"isFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_effectiveIsFavorite"), @"effectiveIsFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_showInHomeDashboard"), @"showInHomeDashboard"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_effectiveShowInHomeDashboard"), @"effectiveShowInHomeDashboard"}];
    [v5 appendBool:objc_msgSend(self withName:{"isPrimaryService"), @"primaryService"}];
  }

  return v5;
}

@end