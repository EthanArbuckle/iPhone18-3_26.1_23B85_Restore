@interface NSString(CLSExtensions)
+ (id)cls_generateUUID;
- (__CFString)cls_normalizedString;
- (id)clsBetterComponentsSeparatedByCharactersInSet:()CLSExtensions;
- (id)cls_indentBy:()CLSExtensions;
@end

@implementation NSString(CLSExtensions)

- (id)clsBetterComponentsSeparatedByCharactersInSet:()CLSExtensions
{
  v4 = a3;
  v5 = [a1 stringByTrimmingCharactersInSet:v4];
  v6 = MEMORY[0x277CBEB18];
  v7 = [v5 componentsSeparatedByCharactersInSet:v4];
  v8 = [v6 arrayWithArray:v7];

  [v8 removeObject:&stru_284489518];
  if ([v8 count])
  {
    v9 = 0;
    do
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      v11 = [v10 stringByTrimmingCharactersInSet:v4];

      [v8 replaceObjectAtIndex:v9 withObject:v11];
      ++v9;
    }

    while (v9 < [v8 count]);
  }

  return v8;
}

- (id)cls_indentBy:()CLSExtensions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a1 componentsSeparatedByString:@"\n"];
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        for (j = a3; j; --j)
        {
          [v5 appendString:@"\t"];
        }

        [v5 appendFormat:@"%@\n", v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v5 deleteCharactersInRange:{objc_msgSend(v5, "length") - 1, 1}];

  return v5;
}

- (__CFString)cls_normalizedString
{
  v1 = [MEMORY[0x277CCAB68] stringWithString:a1];
  CFStringNormalize(v1, kCFStringNormalizationFormD);
  CFStringFold(v1, 0x181uLL, 0);

  return v1;
}

+ (id)cls_generateUUID
{
  v0 = CFUUIDCreate(0);
  if (!v0)
  {
    __assert_rtn("+[NSString(CLSExtensions) cls_generateUUID]", "NSString+CLSExtensions.m", 20, "uuid != NULL");
  }

  v1 = v0;
  v2 = CFUUIDCreateString(0, v0);
  if (!v2)
  {
    __assert_rtn("+[NSString(CLSExtensions) cls_generateUUID]", "NSString+CLSExtensions.m", 23, "uuidString != NULL");
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCACA8] stringWithString:v2];
  CFRelease(v3);
  CFRelease(v1);

  return v4;
}

@end