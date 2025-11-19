@interface NUImages
+ (id)newStoriesArrow;
+ (id)premiumSealInner;
+ (id)premiumSealOuter;
+ (id)premiumSealOuterFR;
+ (id)welcomeToNewsIcon;
@end

@implementation NUImages

+ (id)newStoriesArrow
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"icon-new-stories-arrow" inBundle:v3 compatibleWithTraitCollection:0];
  v5 = [v4 imageWithRenderingMode:2];

  return v5;
}

+ (id)welcomeToNewsIcon
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"ios_news_firstlaunch_whatsnew_news" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)premiumSealInner
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"PremiumSealInner" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)premiumSealOuter
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"PremiumSealOuter" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)premiumSealOuterFR
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"PremiumSealOuter-FR" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

@end