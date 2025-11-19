@interface HMAccessoryCategory(HMDHAPMetadata)
+ (id)categoryForProductClass:()HMDHAPMetadata;
+ (id)categoryIdentifierForCategory:()HMDHAPMetadata;
+ (id)categoryWithCategoryIdentifier:()HMDHAPMetadata;
+ (id)categoryWithIdentifier:()HMDHAPMetadata;
+ (uint64_t)categoryForProductInfo:()HMDHAPMetadata;
@end

@implementation HMAccessoryCategory(HMDHAPMetadata)

+ (id)categoryForProductClass:()HMDHAPMetadata
{
  v4 = MEMORY[0x277CD1680];
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = MEMORY[0x277CCE870];
  v7 = MEMORY[0x277CCE8B0];
  if (a3 != 6)
  {
    v7 = MEMORY[0x277CCE900];
  }

  if (a3 != 4)
  {
    v6 = v7;
  }

  v8 = [v5 initWithUUIDString:*v6];
  v9 = [v4 categoryWithIdentifier:v8];

  return v9;
}

+ (uint64_t)categoryForProductInfo:()HMDHAPMetadata
{
  v3 = [a3 productClass];
  v4 = MEMORY[0x277CD1680];

  return [v4 categoryForProductClass:v3];
}

+ (id)categoryWithCategoryIdentifier:()HMDHAPMetadata
{
  v3 = a3;
  v4 = +[HMDHAPMetadata getSharedInstance];
  v5 = [v4 categoryForIdentifier:v3];

  if (!v5)
  {
    v6 = +[HMDHAPMetadata getSharedInstance];
    v5 = [v6 categoryForOther];
  }

  v7 = objc_alloc(MEMORY[0x277CD1680]);
  v8 = [v5 uuidStr];
  v9 = [v5 catDescription];
  v10 = [v7 initWithType:v8 name:v9];

  v11 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v10];

  return v11;
}

+ (id)categoryWithIdentifier:()HMDHAPMetadata
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [v4 initWithUUIDString:*MEMORY[0x277CCE928]];
  v6 = [v3 hmf_isEqualToUUID:v5];

  v7 = +[HMDHAPMetadata getSharedInstance];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 categoryForType:*MEMORY[0x277CCE920]];
  }

  else
  {
    v10 = [v3 UUIDString];
    v9 = [v8 categoryForType:v10];
  }

  if (!v9)
  {
    v11 = +[HMDHAPMetadata getSharedInstance];
    v9 = [v11 categoryForOther];
  }

  v12 = objc_alloc(MEMORY[0x277CD1680]);
  v13 = [v3 UUIDString];
  v14 = [v9 catDescription];
  v15 = [v12 initWithType:v13 name:v14];

  v16 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v15];

  return v16;
}

+ (id)categoryIdentifierForCategory:()HMDHAPMetadata
{
  v3 = a3;
  v4 = +[HMDHAPMetadata getSharedInstance];
  v5 = [v3 categoryType];

  v6 = [v4 categoryForType:v5];

  if (v6)
  {
    v7 = [v6 identifier];
  }

  else
  {
    v8 = +[HMDHAPMetadata getSharedInstance];
    v9 = [v8 categoryForOther];
    v7 = [v9 identifier];
  }

  return v7;
}

@end