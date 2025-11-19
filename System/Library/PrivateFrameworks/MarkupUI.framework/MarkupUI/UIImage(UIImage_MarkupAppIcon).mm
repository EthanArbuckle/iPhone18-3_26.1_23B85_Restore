@interface UIImage(UIImage_MarkupAppIcon)
+ (id)mu_markupAppIcon;
@end

@implementation UIImage(UIImage_MarkupAppIcon)

+ (id)mu_markupAppIcon
{
  v0 = MEMORY[0x277D755B8];
  v1 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MarkupUI"];
  v2 = [v0 imageNamed:@"MarkupActionItemIcon" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

@end