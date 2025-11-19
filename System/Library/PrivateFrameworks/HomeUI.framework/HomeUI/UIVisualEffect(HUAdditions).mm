@interface UIVisualEffect(HUAdditions)
+ (id)hu_categoryDashboardBackgroundEffects;
+ (id)hu_dashboardBarEffects;
+ (id)hu_gridCellBackgroundOffEffects;
+ (id)hu_gridCellBackgroundOnEffects;
@end

@implementation UIVisualEffect(HUAdditions)

+ (id)hu_dashboardBarEffects
{
  if (_MergedGlobals_633 != -1)
  {
    dispatch_once(&_MergedGlobals_633, &__block_literal_global_7_1);
  }

  v1 = qword_281122018;

  return v1;
}

+ (id)hu_categoryDashboardBackgroundEffects
{
  if (qword_281122020 != -1)
  {
    dispatch_once(&qword_281122020, &__block_literal_global_20_4);
  }

  v1 = qword_281122028;

  return v1;
}

+ (id)hu_gridCellBackgroundOffEffects
{
  if (qword_281122030 != -1)
  {
    dispatch_once(&qword_281122030, &__block_literal_global_33_1);
  }

  v1 = qword_281122038;

  return v1;
}

+ (id)hu_gridCellBackgroundOnEffects
{
  if (qword_281122040 != -1)
  {
    dispatch_once(&qword_281122040, &__block_literal_global_40_1);
  }

  v1 = qword_281122048;

  return v1;
}

@end