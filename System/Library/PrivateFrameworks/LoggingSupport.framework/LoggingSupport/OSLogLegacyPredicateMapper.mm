@interface OSLogLegacyPredicateMapper
@end

@implementation OSLogLegacyPredicateMapper

void __68___OSLogLegacyPredicateMapper_mapLeftExpression_andRightExpression___block_invoke()
{
  v0 = mapLeftExpression_andRightExpression__keypathMaps_520;
  mapLeftExpression_andRightExpression__keypathMaps_520 = &unk_2841B93B0;
}

void __44___OSLogLegacyPredicateMapper_validKeyPaths__block_invoke()
{
  v10[11] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = validKeyPaths__legacyValidKeyPaths;
  validKeyPaths__legacyValidKeyPaths = v0;

  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v10[4] = objc_opt_class();
  v10[5] = objc_opt_class();
  v10[6] = objc_opt_class();
  v10[7] = objc_opt_class();
  v10[8] = objc_opt_class();
  v10[9] = objc_opt_class();
  v2 = 0;
  v10[10] = objc_opt_class();
  do
  {
    outCount = 0;
    v3 = class_copyPropertyList(v10[v2], &outCount);
    if (v3)
    {
      v4 = v3;
      if (outCount)
      {
        for (i = 0; i < outCount; ++i)
        {
          v6 = validKeyPaths__legacyValidKeyPaths;
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v4[i])];
          [v6 addObject:v7];
        }
      }

      free(v4);
    }

    ++v2;
  }

  while (v2 != 11);
  v8 = *MEMORY[0x277D85DE8];
}

@end