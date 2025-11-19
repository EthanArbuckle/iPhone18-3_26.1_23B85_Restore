@interface CRKFeatureDataStoreDefaults_MCX
+ (BOOL)defaultAskValueForFeature:(id)a3;
+ (id)restrictionDefaultValues;
+ (unint64_t)defaultValueForFeature:(id)a3;
@end

@implementation CRKFeatureDataStoreDefaults_MCX

+ (unint64_t)defaultValueForFeature:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() restrictionDefaultValues];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v5 objectForKeyedSubscript:@"value"];

  v7 = [MEMORY[0x277CCABB0] crk_featureBoolTypeFromNumber:v6];
  return v7;
}

+ (BOOL)defaultAskValueForFeature:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() restrictionDefaultValues];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [v5 objectForKeyedSubscript:@"ask"];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

+ (id)restrictionDefaultValues
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CRKFeatureDataStoreDefaults_MCX_restrictionDefaultValues__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (restrictionDefaultValues_onceToken != -1)
  {
    dispatch_once(&restrictionDefaultValues_onceToken, block);
  }

  v2 = restrictionDefaultValues_classroomRestrictionDefaultValues;

  return v2;
}

@end