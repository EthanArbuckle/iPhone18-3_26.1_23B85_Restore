@interface DMFControlGroupIdentifier(CRKAdditions)
+ (id)crk_adHocXPCGroupIdentifier;
+ (id)crk_asmXPCGroupIdentifier;
+ (id)crk_managedXPCGroupIdentifier;
@end

@implementation DMFControlGroupIdentifier(CRKAdditions)

+ (id)crk_managedXPCGroupIdentifier
{
  v0 = objc_alloc(MEMORY[0x277D04C00]);
  crk_zerosUUID = [MEMORY[0x277CCAD78] crk_zerosUUID];
  v2 = [v0 initWithOrganizationUUID:crk_zerosUUID groupID:0];

  return v2;
}

+ (id)crk_adHocXPCGroupIdentifier
{
  v0 = objc_alloc(MEMORY[0x277D04C00]);
  crk_zerosUUID = [MEMORY[0x277CCAD78] crk_zerosUUID];
  v2 = [v0 initWithOrganizationUUID:crk_zerosUUID groupID:1];

  return v2;
}

+ (id)crk_asmXPCGroupIdentifier
{
  v0 = objc_alloc(MEMORY[0x277D04C00]);
  crk_zerosUUID = [MEMORY[0x277CCAD78] crk_zerosUUID];
  v2 = [v0 initWithOrganizationUUID:crk_zerosUUID groupID:2];

  return v2;
}

@end