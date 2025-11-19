@interface CardDAVPropertiesHelper
+ (BOOL)updateSyncDict:(id)a3 withDAVContainer:(id)a4;
+ (int64_t)maxImageSizeFromSyncDict:(id)a3;
+ (int64_t)maxResourceSizeFromContainer:(id)a3;
+ (int64_t)maxResourceSizeFromSyncDict:(id)a3;
@end

@implementation CardDAVPropertiesHelper

+ (BOOL)updateSyncDict:(id)a3 withDAVContainer:(id)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277CFDEB0];
  v7 = a4;
  v8 = [v5 objectForKeyedSubscript:v6];
  v9 = [v8 integerValue];

  v10 = *MEMORY[0x277CFDEB8];
  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFDEB8]];
  v12 = [v11 integerValue];

  v13 = [v7 maxImageSize];
  v14 = [v13 integerValue];

  v15 = 786432;
  if (v14 < 786432)
  {
    v15 = v14;
  }

  if (v14 >= 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 393216;
  }

  v17 = [v7 maxResourceSize];

  v18 = [v17 integerValue];
  if (v18 < 1)
  {
    v18 = 0x100000;
  }

  v19 = v9 == v16 && v12 == v18;
  v20 = !v19;
  if (!v19)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [v5 setObject:v21 forKeyedSubscript:v6];

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
    [v5 setObject:v22 forKeyedSubscript:v10];
  }

  return v20;
}

+ (int64_t)maxImageSizeFromSyncDict:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CFDEB0]];
  v4 = [v3 integerValue];

  v5 = 786432;
  if (v4 < 786432)
  {
    v5 = v4;
  }

  if (v4 >= 1)
  {
    return v5;
  }

  else
  {
    return 393216;
  }
}

+ (int64_t)maxResourceSizeFromSyncDict:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CFDEB8]];
  v4 = [v3 integerValue];

  v5 = 0x200000;
  if (v4 < 0x200000)
  {
    v5 = v4;
  }

  if (v4 >= 1)
  {
    return v5;
  }

  else
  {
    return 0x100000;
  }
}

+ (int64_t)maxResourceSizeFromContainer:(id)a3
{
  v3 = [a3 syncData];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAC58] propertyListFromData:v3 mutabilityOption:0 format:0 errorDescription:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [CardDAVPropertiesHelper maxResourceSizeFromSyncDict:v4];

  return v5;
}

@end