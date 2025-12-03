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
  productClass = [a3 productClass];
  v4 = MEMORY[0x277CD1680];

  return [v4 categoryForProductClass:productClass];
}

+ (id)categoryWithCategoryIdentifier:()HMDHAPMetadata
{
  v3 = a3;
  v4 = +[HMDHAPMetadata getSharedInstance];
  categoryForOther = [v4 categoryForIdentifier:v3];

  if (!categoryForOther)
  {
    v6 = +[HMDHAPMetadata getSharedInstance];
    categoryForOther = [v6 categoryForOther];
  }

  v7 = objc_alloc(MEMORY[0x277CD1680]);
  uuidStr = [categoryForOther uuidStr];
  catDescription = [categoryForOther catDescription];
  v10 = [v7 initWithType:uuidStr name:catDescription];

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
    categoryForOther = [v7 categoryForType:*MEMORY[0x277CCE920]];
  }

  else
  {
    uUIDString = [v3 UUIDString];
    categoryForOther = [v8 categoryForType:uUIDString];
  }

  if (!categoryForOther)
  {
    v11 = +[HMDHAPMetadata getSharedInstance];
    categoryForOther = [v11 categoryForOther];
  }

  v12 = objc_alloc(MEMORY[0x277CD1680]);
  uUIDString2 = [v3 UUIDString];
  catDescription = [categoryForOther catDescription];
  v15 = [v12 initWithType:uUIDString2 name:catDescription];

  v16 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v15];

  return v16;
}

+ (id)categoryIdentifierForCategory:()HMDHAPMetadata
{
  v3 = a3;
  v4 = +[HMDHAPMetadata getSharedInstance];
  categoryType = [v3 categoryType];

  v6 = [v4 categoryForType:categoryType];

  if (v6)
  {
    identifier = [v6 identifier];
  }

  else
  {
    v8 = +[HMDHAPMetadata getSharedInstance];
    categoryForOther = [v8 categoryForOther];
    identifier = [categoryForOther identifier];
  }

  return identifier;
}

@end