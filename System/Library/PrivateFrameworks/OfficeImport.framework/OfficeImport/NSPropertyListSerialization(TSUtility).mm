@interface NSPropertyListSerialization(TSUtility)
+ (id)tsu_localizedPropertyListWithContentsOfURL:()TSUtility options:error:;
+ (id)tsu_propertyListWithContentsOfURL:()TSUtility options:error:;
+ (void)tsu_processLocalizedPropertyList:()TSUtility;
@end

@implementation NSPropertyListSerialization(TSUtility)

+ (id)tsu_propertyListWithContentsOfURL:()TSUtility options:error:
{
  v7 = [MEMORY[0x277CBEAE0] inputStreamWithURL:?];
  v8 = v7;
  if (v7)
  {
    [v7 open];
    v9 = [MEMORY[0x277CCAC58] propertyListWithStream:v8 options:a4 format:0 error:a5];
    [v8 close];
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
    *a5 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)tsu_processLocalizedPropertyList:()TSUtility
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 objectForKey:@"_LOCALIZABLE_"];
    if (v6)
    {
      [v5 removeObjectForKey:@"_LOCALIZABLE_"];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__NSPropertyListSerialization_TSUtility__tsu_processLocalizedPropertyList___block_invoke;
    v18[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
    v18[4] = self;
    [v5 enumerateKeysAndObjectsUsingBlock:v18];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSPropertyListSerialization(TSUtility) tsu_processLocalizedPropertyList:]"];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSPropertyListSerialization_TSUtility.m"];
        [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:47 isFatal:0 description:"Expected a dictionary as a child of %{public}@", @"_LOCALIZABLE_"];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      [v5 addEntriesFromDictionary:v6];
    }

LABEL_17:
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [self tsu_processLocalizedPropertyList:*(*(&v14 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v11);
    }

    goto LABEL_17;
  }

LABEL_18:
}

+ (id)tsu_localizedPropertyListWithContentsOfURL:()TSUtility options:error:
{
  v8 = a3;
  if ((a4 - 1) >= 2)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSPropertyListSerialization(TSUtility) tsu_localizedPropertyListWithContentsOfURL:options:error:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSPropertyListSerialization_TSUtility.m"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:65 isFatal:0 description:"Need mutable containers to process a localizable property list"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v11 = [self tsu_propertyListWithContentsOfURL:v8 options:a4 error:a5];
  [self tsu_processLocalizedPropertyList:v11];

  return v11;
}

@end