@interface CRKFeatureDataStoreDefaults_MCX
+ (BOOL)defaultAskValueForFeature:(id)feature;
+ (id)restrictionDefaultValues;
+ (unint64_t)defaultValueForFeature:(id)feature;
@end

@implementation CRKFeatureDataStoreDefaults_MCX

+ (unint64_t)defaultValueForFeature:(id)feature
{
  featureCopy = feature;
  restrictionDefaultValues = [objc_opt_class() restrictionDefaultValues];
  v5 = [restrictionDefaultValues objectForKeyedSubscript:featureCopy];

  v6 = [v5 objectForKeyedSubscript:@"value"];

  v7 = [MEMORY[0x277CCABB0] crk_featureBoolTypeFromNumber:v6];
  return v7;
}

+ (BOOL)defaultAskValueForFeature:(id)feature
{
  featureCopy = feature;
  restrictionDefaultValues = [objc_opt_class() restrictionDefaultValues];
  v5 = [restrictionDefaultValues objectForKeyedSubscript:featureCopy];

  v6 = [v5 objectForKeyedSubscript:@"ask"];

  LOBYTE(restrictionDefaultValues) = [v6 BOOLValue];
  return restrictionDefaultValues;
}

+ (id)restrictionDefaultValues
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CRKFeatureDataStoreDefaults_MCX_restrictionDefaultValues__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (restrictionDefaultValues_onceToken != -1)
  {
    dispatch_once(&restrictionDefaultValues_onceToken, block);
  }

  v2 = restrictionDefaultValues_classroomRestrictionDefaultValues;

  return v2;
}

@end