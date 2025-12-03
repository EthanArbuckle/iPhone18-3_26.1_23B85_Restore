@interface IMBrand(ChatKit)
+ (id)makeBrandPlacecardForIMBrand:()ChatKit;
- (id)primaryBrandColor;
- (id)secondaryBrandColor;
@end

@implementation IMBrand(ChatKit)

- (id)primaryBrandColor
{
  brand = [self brand];
  primaryBrandColor = [brand primaryBrandColor];

  return primaryBrandColor;
}

- (id)secondaryBrandColor
{
  brand = [self brand];
  secondaryBrandColor = [brand secondaryBrandColor];

  return secondaryBrandColor;
}

+ (id)makeBrandPlacecardForIMBrand:()ChatKit
{
  v3 = makeBrandPlacecardForIMBrand__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[IMBrand(ChatKit) makeBrandPlacecardForIMBrand:];
  }

  v5 = makeBrandPlacecardForIMBrand__BSBrandClass;
  brand = [v4 brand];

  v7 = [v5 makeBrandPlacecardForBrand:brand];

  return v7;
}

@end