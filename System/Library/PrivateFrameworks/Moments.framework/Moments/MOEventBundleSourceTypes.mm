@interface MOEventBundleSourceTypes
+ (id)all;
@end

@implementation MOEventBundleSourceTypes

+ (id)all
{
  if (all_onceToken != -1)
  {
    +[MOEventBundleSourceTypes all];
  }

  v3 = all_allowableSourceTypes;

  return v3;
}

void __31__MOEventBundleSourceTypes_all__block_invoke()
{
  v5[9] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v5[0] = MOEventBundleSourceTypeContact;
  v5[1] = MOEventBundleSourceTypeMedia;
  v5[2] = MOEventBundleSourceTypePeopleContext;
  v5[3] = MOEventBundleSourceTypePhoto;
  v5[4] = MOEventBundleSourceTypeStateOfMind;
  v5[5] = MOEventBundleSourceTypeReflectionPrompt;
  v5[6] = MOEventBundleSourceTypeThirdPartyMedia;
  v5[7] = MOEventBundleSourceTypeVisitLocation;
  v5[8] = MOEventBundleSourceTypeActivity;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:9];
  v2 = [v0 initWithArray:v1];
  v3 = all_allowableSourceTypes;
  all_allowableSourceTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end