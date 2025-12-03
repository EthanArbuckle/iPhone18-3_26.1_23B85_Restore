@interface MTMaterialView(HomeUI)
+ (id)tileCellToggleSizeButtonMaterialViewForTraitCollection:()HomeUI;
@end

@implementation MTMaterialView(HomeUI)

+ (id)tileCellToggleSizeButtonMaterialViewForTraitCollection:()HomeUI
{
  v2 = HUHomeUIBundle();
  v3 = [self materialViewWithRecipeNamed:@"TileCellToggleSizeButton" inBundle:v2 options:0 initialWeighting:0 scaleAdjustment:1.0];

  [v3 setGroupNameBase:@"TileCellToggleSizeButton"];

  return v3;
}

@end