@interface CardDAVPropertiesHelper
+ (BOOL)updateSyncDict:(id)dict withDAVContainer:(id)container;
+ (int64_t)maxImageSizeFromSyncDict:(id)dict;
+ (int64_t)maxResourceSizeFromContainer:(id)container;
+ (int64_t)maxResourceSizeFromSyncDict:(id)dict;
@end

@implementation CardDAVPropertiesHelper

+ (BOOL)updateSyncDict:(id)dict withDAVContainer:(id)container
{
  dictCopy = dict;
  v6 = *MEMORY[0x277CFDEB0];
  containerCopy = container;
  v8 = [dictCopy objectForKeyedSubscript:v6];
  integerValue = [v8 integerValue];

  v10 = *MEMORY[0x277CFDEB8];
  v11 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277CFDEB8]];
  integerValue2 = [v11 integerValue];

  maxImageSize = [containerCopy maxImageSize];
  integerValue3 = [maxImageSize integerValue];

  v15 = 786432;
  if (integerValue3 < 786432)
  {
    v15 = integerValue3;
  }

  if (integerValue3 >= 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 393216;
  }

  maxResourceSize = [containerCopy maxResourceSize];

  integerValue4 = [maxResourceSize integerValue];
  if (integerValue4 < 1)
  {
    integerValue4 = 0x100000;
  }

  v19 = integerValue == v16 && integerValue2 == integerValue4;
  v20 = !v19;
  if (!v19)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [dictCopy setObject:v21 forKeyedSubscript:v6];

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue4];
    [dictCopy setObject:v22 forKeyedSubscript:v10];
  }

  return v20;
}

+ (int64_t)maxImageSizeFromSyncDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:*MEMORY[0x277CFDEB0]];
  integerValue = [v3 integerValue];

  v5 = 786432;
  if (integerValue < 786432)
  {
    v5 = integerValue;
  }

  if (integerValue >= 1)
  {
    return v5;
  }

  else
  {
    return 393216;
  }
}

+ (int64_t)maxResourceSizeFromSyncDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:*MEMORY[0x277CFDEB8]];
  integerValue = [v3 integerValue];

  v5 = 0x200000;
  if (integerValue < 0x200000)
  {
    v5 = integerValue;
  }

  if (integerValue >= 1)
  {
    return v5;
  }

  else
  {
    return 0x100000;
  }
}

+ (int64_t)maxResourceSizeFromContainer:(id)container
{
  syncData = [container syncData];
  if (syncData)
  {
    v4 = [MEMORY[0x277CCAC58] propertyListFromData:syncData mutabilityOption:0 format:0 errorDescription:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [CardDAVPropertiesHelper maxResourceSizeFromSyncDict:v4];

  return v5;
}

@end