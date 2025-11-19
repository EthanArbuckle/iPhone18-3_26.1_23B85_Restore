@interface QuickLookContentEditorBannerConfiguration
+ (id)configurationWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 primaryAction:(id)a6 dismissAction:(id)a7;
@end

@implementation QuickLookContentEditorBannerConfiguration

+ (id)configurationWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 primaryAction:(id)a6 dismissAction:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setImage:v15];

  [v16 setTitle:v14];
  [v16 setSubtitle:v13];

  [v16 setPrimaryAction:v12];
  [v16 setDismissAction:v11];

  return v16;
}

@end