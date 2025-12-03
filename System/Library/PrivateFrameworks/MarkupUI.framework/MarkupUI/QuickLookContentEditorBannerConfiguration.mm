@interface QuickLookContentEditorBannerConfiguration
+ (id)configurationWithImage:(id)image title:(id)title subtitle:(id)subtitle primaryAction:(id)action dismissAction:(id)dismissAction;
@end

@implementation QuickLookContentEditorBannerConfiguration

+ (id)configurationWithImage:(id)image title:(id)title subtitle:(id)subtitle primaryAction:(id)action dismissAction:(id)dismissAction
{
  dismissActionCopy = dismissAction;
  actionCopy = action;
  subtitleCopy = subtitle;
  titleCopy = title;
  imageCopy = image;
  v16 = objc_opt_new();
  [v16 setImage:imageCopy];

  [v16 setTitle:titleCopy];
  [v16 setSubtitle:subtitleCopy];

  [v16 setPrimaryAction:actionCopy];
  [v16 setDismissAction:dismissActionCopy];

  return v16;
}

@end