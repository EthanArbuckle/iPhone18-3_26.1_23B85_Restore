@interface IMBrand(ChatKit)
+ (id)makeBrandPlacecardForIMBrand:()ChatKit;
- (id)primaryBrandColor;
- (id)secondaryBrandColor;
@end

@implementation IMBrand(ChatKit)

- (id)primaryBrandColor
{
  v1 = [a1 brand];
  v2 = [v1 primaryBrandColor];

  return v2;
}

- (id)secondaryBrandColor
{
  v1 = [a1 brand];
  v2 = [v1 secondaryBrandColor];

  return v2;
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
  v6 = [v4 brand];

  v7 = [v5 makeBrandPlacecardForBrand:v6];

  return v7;
}

@end