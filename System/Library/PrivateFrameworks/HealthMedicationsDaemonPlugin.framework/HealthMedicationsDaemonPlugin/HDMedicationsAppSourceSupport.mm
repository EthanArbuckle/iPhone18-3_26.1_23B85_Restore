@interface HDMedicationsAppSourceSupport
+ (id)medicationsAppSourceEntityForProfile:(id)profile error:(id *)error;
@end

@implementation HDMedicationsAppSourceSupport

+ (id)medicationsAppSourceEntityForProfile:(id)profile error:(id *)error
{
  v20[3] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CCC1B8];
  v6 = MEMORY[0x277CBEC38];
  v20[0] = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277CCCDE0];
  v19[0] = v5;
  v19[1] = v7;
  v18 = *MEMORY[0x277CCE3D8];
  v8 = v18;
  v9 = MEMORY[0x277CBEA60];
  profileCopy = profile;
  v11 = [v9 arrayWithObjects:&v18 count:1];
  v19[2] = *MEMORY[0x277CCC878];
  v20[1] = v11;
  v20[2] = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:{3, v18}];

  sourceManager = [profileCopy sourceManager];

  v14 = [MEMORY[0x277CCDDA8] entitlementsWithDictionary:v12];
  v15 = [sourceManager sourceForApplicationIdentifier:v8 createOrUpdateIfNecessary:1 entitlements:v14 name:0 error:error];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end