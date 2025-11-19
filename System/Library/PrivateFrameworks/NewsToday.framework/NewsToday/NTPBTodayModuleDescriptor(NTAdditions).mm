@interface NTPBTodayModuleDescriptor(NTAdditions)
+ (id)nt_defaultModule;
+ (id)nt_moduleWithTagID:()NTAdditions;
@end

@implementation NTPBTodayModuleDescriptor(NTAdditions)

+ (id)nt_defaultModule
{
  v0 = objc_opt_new();
  [v0 setModuleDescriptorType:0];
  v1 = objc_opt_new();
  [v1 setRequest:v0];
  v2 = objc_opt_new();
  [v2 setIdentifier:@"default"];
  [v2 setType:0];
  [v2 addAvailableContents:v1];

  return v2;
}

+ (id)nt_moduleWithTagID:()NTAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setModuleDescriptorType:1];
  [v4 setTagID:v3];
  v5 = objc_opt_new();
  [v5 setRequest:v4];
  v6 = objc_opt_new();
  [v6 setIdentifier:v3];

  [v6 setType:1];
  [v6 addAvailableContents:v5];

  return v6;
}

@end