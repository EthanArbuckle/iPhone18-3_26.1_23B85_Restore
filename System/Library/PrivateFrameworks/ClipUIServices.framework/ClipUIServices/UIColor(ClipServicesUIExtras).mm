@interface UIColor(ClipServicesUIExtras)
+ (id)cps_colorNamed:()ClipServicesUIExtras;
@end

@implementation UIColor(ClipServicesUIExtras)

+ (id)cps_colorNamed:()ClipServicesUIExtras
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 cps_clipUIServicesBundle];
  v7 = [a1 colorNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

@end