@interface UIColor(TSUAdditions)
+ (id)tsu_tableViewCellDarkBlueTextColor;
@end

@implementation UIColor(TSUAdditions)

+ (id)tsu_tableViewCellDarkBlueTextColor
{
  v0 = tsu_tableViewCellDarkBlueTextColor_sColor;
  if (!tsu_tableViewCellDarkBlueTextColor_sColor)
  {
    v1 = [MEMORY[0x277D75348] colorWithRed:0.219607843 green:0.329411765 blue:0.529411765 alpha:1.0];
    v2 = tsu_tableViewCellDarkBlueTextColor_sColor;
    tsu_tableViewCellDarkBlueTextColor_sColor = v1;

    v0 = tsu_tableViewCellDarkBlueTextColor_sColor;
  }

  return v0;
}

@end