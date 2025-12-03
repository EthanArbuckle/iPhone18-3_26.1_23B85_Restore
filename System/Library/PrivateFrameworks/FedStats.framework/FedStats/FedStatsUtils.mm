@interface FedStatsUtils
+ (BOOL)checkDeviceOSVersionFilter:(id)filter;
+ (BOOL)checkDeviceOSVersionFilter:(id)filter systemVersion:(id)version;
+ (BOOL)checkDeviceRegionCodeRestrictionForAllowedRegions:(id)regions deniedRegions:(id)deniedRegions;
+ (BOOL)isNaturalLanguageAvailable;
+ (id)SHA1AsBitString:(id)string;
+ (id)bitStringToInt:(id)int;
+ (id)getDeviceRegion;
+ (id)intToBitString:(unint64_t)string withLength:(unint64_t)length;
+ (id)normL2:(id)l2;
+ (id)subsampleBooleanValue:(id)value samplingRateTrue:(id)true samplingRateFalse:(id)false error:(id *)error;
+ (id)tokenizeSentence:(id)sentence removePunctuation:(BOOL)punctuation tokenizePerson:(BOOL)person tokenizeLocation:(BOOL)location tokenizeNumber:(BOOL)number action:(int64_t)action;
+ (id)transformUseCaseID:(id)d;
@end

@implementation FedStatsUtils

+ (id)bitStringToInt:(id)int
{
  intCopy = int;
  if ([intCopy length] > 0x3F)
  {
LABEL_2:
    v4 = 0;
    goto LABEL_8;
  }

  v5 = 0;
  if ([intCopy length])
  {
    v6 = 0;
    do
    {
      v7 = [intCopy substringWithRange:{v6, 1}];
      v8 = [&unk_285E12EC0 indexOfObject:v7];

      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_2;
      }

      v5 = v8 + 2 * v5;
    }

    while (++v6 < [intCopy length]);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
LABEL_8:

  return v4;
}

+ (id)intToBitString:(unint64_t)string withLength:(unint64_t)length
{
  string = [MEMORY[0x277CCAB68] string];
  if (length)
  {
    v7 = 0;
    do
    {
      v8 = [&unk_285E12ED8 objectAtIndex:((1 << v7) & string) != 0];
      [string insertString:v8 atIndex:0];

      ++v7;
    }

    while (length != v7);
  }

  return string;
}

+ (id)SHA1AsBitString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  uTF8String = [string UTF8String];
  v7 = strlen(uTF8String);
  CC_SHA1(uTF8String, v7, md);
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:160];
  for (i = 0; i != 20; ++i)
  {
    v10 = [self intToBitString:md[i] withLength:8];
    [v8 appendFormat:@"%@", v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (BOOL)isNaturalLanguageAvailable
{
  v2 = [MEMORY[0x277CD89D8] availableTagSchemesForUnit:0 language:*MEMORY[0x277CD8708]];
  v3 = [v2 containsObject:*MEMORY[0x277CD8970]];

  return v3;
}

+ (id)tokenizeSentence:(id)sentence removePunctuation:(BOOL)punctuation tokenizePerson:(BOOL)person tokenizeLocation:(BOOL)location tokenizeNumber:(BOOL)number action:(int64_t)action
{
  punctuationCopy = punctuation;
  v34[1] = *MEMORY[0x277D85DE8];
  sentenceCopy = sentence;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![sentenceCopy length])
  {
    v24 = 0;
    goto LABEL_13;
  }

  if (([self isNaturalLanguageAvailable] & 1) == 0)
  {
    v24 = sentenceCopy;
    goto LABEL_13;
  }

  array = [MEMORY[0x277CBEB18] array];
  v16 = objc_alloc(MEMORY[0x277CD89D8]);
  v17 = *MEMORY[0x277CD8970];
  v34[0] = *MEMORY[0x277CD8970];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v19 = [v16 initWithTagSchemes:v18];

  [v19 setString:sentenceCopy];
  if (punctuationCopy)
  {
    v20 = 62;
  }

  else
  {
    v20 = 52;
  }

  v21 = [sentenceCopy length];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __106__FedStatsUtils_tokenizeSentence_removePunctuation_tokenizePerson_tokenizeLocation_tokenizeNumber_action___block_invoke;
  v28[3] = &unk_278FF6268;
  personCopy = person;
  v22 = array;
  v29 = v22;
  locationCopy = location;
  numberCopy = number;
  v30 = sentenceCopy;
  [v19 enumerateTagsInRange:0 unit:v21 scheme:0 options:v17 usingBlock:{v20, v28}];
  if ([v22 count])
  {
    switch(action)
    {
      case 2:
        v27 = [v22 sortedArrayUsingSelector:sel_compare_];
        v24 = [v27 componentsJoinedByString:@" "];

        goto LABEL_21;
      case 1:
        v23 = [v22 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v22, "count"))}];
        goto LABEL_19;
      case 0:
        v23 = [v22 componentsJoinedByString:@" "];
LABEL_19:
        v24 = v23;
        goto LABEL_21;
    }
  }

  v24 = 0;
LABEL_21:

LABEL_13:
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __106__FedStatsUtils_tokenizeSentence_removePunctuation_tokenizePerson_tokenizeLocation_tokenizeNumber_action___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  if ([v11 isEqualToString:*MEMORY[0x277CD8920]] && *(a1 + 48) == 1)
  {
    v7 = *(a1 + 32);
    v8 = @"<person>";
LABEL_10:
    [v7 addObject:v8];
    goto LABEL_12;
  }

  if ([v11 isEqualToString:*MEMORY[0x277CD8928]] && *(a1 + 49) == 1)
  {
    v7 = *(a1 + 32);
    v8 = @"<location>";
    goto LABEL_10;
  }

  if ([v11 isEqualToString:*MEMORY[0x277CD8900]] && *(a1 + 50) == 1)
  {
    v7 = *(a1 + 32);
    v8 = @"<number>";
    goto LABEL_10;
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) substringWithRange:{a3, a4}];
  [v9 addObject:v10];

LABEL_12:
}

+ (id)getDeviceRegion
{
  if (getDeviceRegion_onceToken != -1)
  {
    +[FedStatsUtils getDeviceRegion];
  }

  v2 = getDeviceRegion_deviceRegionCode;
  if (!getDeviceRegion_deviceRegionCode)
  {
    v3 = +[FedStatsLog logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[(FedStatsUtils *)v3];
    }

    v2 = getDeviceRegion_deviceRegionCode;
  }

  return v2;
}

void __32__FedStatsUtils_getDeviceRegion__block_invoke()
{
  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v0 = [v2 objectForKey:*MEMORY[0x277CBE690]];
  v1 = getDeviceRegion_deviceRegionCode;
  getDeviceRegion_deviceRegionCode = v0;
}

+ (BOOL)checkDeviceRegionCodeRestrictionForAllowedRegions:(id)regions deniedRegions:(id)deniedRegions
{
  regionsCopy = regions;
  deniedRegionsCopy = deniedRegions;
  v7 = deniedRegionsCopy;
  if (regionsCopy | deniedRegionsCopy)
  {
    if (regionsCopy && deniedRegionsCopy)
    {
      v8 = 0;
    }

    else
    {
      v9 = +[FedStatsUtils getDeviceRegion];
      if (v9)
      {
        v10 = +[FedStatsLog logger];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [FedStatsUtils checkDeviceRegionCodeRestrictionForAllowedRegions:v9 deniedRegions:v10];
        }

        v11 = [v7 containsObject:v9];
        v8 = v11 ^ 1;
        if (regionsCopy && (v11 & 1) == 0)
        {
          v8 = [regionsCopy containsObject:v9];
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)checkDeviceOSVersionFilter:(id)filter
{
  v4 = MEMORY[0x277CCAC38];
  filterCopy = filter;
  processInfo = [v4 processInfo];
  v7 = processInfo;
  v8 = MEMORY[0x277CCACA8];
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
    v9 = v17;
    [v7 operatingSystemVersion];
    v10 = v15;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
  }

  v11 = [v8 stringWithFormat:@"%li.%li", v9, v10, v14, v15, v16, v17, v18, v19];
  v12 = [self checkDeviceOSVersionFilter:filterCopy systemVersion:v11];

  return v12;
}

+ (BOOL)checkDeviceOSVersionFilter:(id)filter systemVersion:(id)version
{
  versionCopy = version;
  filterCopy = filter;
  v7 = [filterCopy objectForKey:@"iOSMinVersion"];
  v8 = [filterCopy objectForKey:@"iOSMaxVersion"];

  if (v7 && [versionCopy compare:v7 options:64] == -1)
  {
    v9 = 0;
  }

  else if (v8)
  {
    v9 = [versionCopy compare:v8 options:64] != 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)transformUseCaseID:(id)d
{
  v3 = [&unk_285E12E20 objectForKey:d];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"cv000";
  }

  v6 = v5;

  return v5;
}

+ (id)subsampleBooleanValue:(id)value samplingRateTrue:(id)true samplingRateFalse:(id)false error:(id *)error
{
  valueCopy = value;
  trueCopy = true;
  falseCopy = false;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_21;
    }

LABEL_20:
    [FedStatsError errorWithCode:900 description:v21];
    *error = v22 = 0;
    goto LABEL_22;
  }

  bOOLValue = [valueCopy BOOLValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [trueCopy doubleValue];
  if (v13 < 0.0 || (v14 = v13, v13 > 1.0))
  {
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [falseCopy doubleValue];
  if (v15 >= 0.0)
  {
    v16 = v15;
    if (v15 <= 1.0)
    {
      v17 = objc_alloc_init(FedStatsUtilsUniformUnitIntervalDistribution);
      [(FedStatsUtilsUniformUnitIntervalDistribution *)v17 sample];
      v19 = v18;

      if (bOOLValue)
      {
        v20 = v19 > v14;
      }

      else
      {
        v20 = v19 > v16;
      }

      v24 = !v20;
      v22 = [MEMORY[0x277CCABB0] numberWithInt:v24];
      goto LABEL_22;
    }
  }

  if (error)
  {
    goto LABEL_20;
  }

LABEL_21:
  v22 = 0;
LABEL_22:

  return v22;
}

+ (id)normL2:(id)l2
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  l2Copy = l2;
  v4 = [l2Copy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(l2Copy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v11 = 0;
          goto LABEL_13;
        }

        [v9 floatValue];
        v7 = v7 + (v10 * v10);
      }

      v5 = [l2Copy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0.0;
  }

  *&v12 = sqrtf(v7);
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)checkDeviceRegionCodeRestrictionForAllowedRegions:(uint64_t)a1 deniedRegions:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24AAFE000, a2, OS_LOG_TYPE_DEBUG, "Device region code: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end