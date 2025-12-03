@interface NSLayoutConstraint(MUConstraintLayout)
+ (void)_mapsui_activateLayouts:()MUConstraintLayout;
+ (void)_mapsui_activateLayouts:()MUConstraintLayout constraints:;
+ (void)_mapsui_deactivateLayouts:()MUConstraintLayout;
+ (void)_mapsui_deactivateLayouts:()MUConstraintLayout constraints:;
@end

@implementation NSLayoutConstraint(MUConstraintLayout)

+ (void)_mapsui_deactivateLayouts:()MUConstraintLayout constraints:
{
  v6 = a4;
  v7 = MUMap(a3, &__block_literal_global_54);
  [self _mapsui_internal_activateLayouts:v7 constraints:v6];
}

+ (void)_mapsui_deactivateLayouts:()MUConstraintLayout
{
  v4 = MUMap(a3, &__block_literal_global_52_11673);
  [self _mapsui_internal_deactivateLayouts:v4];
}

+ (void)_mapsui_activateLayouts:()MUConstraintLayout constraints:
{
  v6 = a4;
  v7 = MUMap(a3, &__block_literal_global_50);
  [self _mapsui_internal_activateLayouts:v7 constraints:v6];
}

+ (void)_mapsui_activateLayouts:()MUConstraintLayout
{
  v4 = MUMap(a3, &__block_literal_global_11674);
  [self _mapsui_internal_activateLayouts:v4];
}

@end