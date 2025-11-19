@interface CRKFeatureDataStoreDefaults
@end

@implementation CRKFeatureDataStoreDefaults

void __59__CRKFeatureDataStoreDefaults_MCX_restrictionDefaultValues__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v0 pathForResource:@"defaultSettings_macOS" ofType:@"plist"];

  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  v2 = restrictionDefaultValues_classroomRestrictionDefaultValues;
  restrictionDefaultValues_classroomRestrictionDefaultValues = v1;
}

@end