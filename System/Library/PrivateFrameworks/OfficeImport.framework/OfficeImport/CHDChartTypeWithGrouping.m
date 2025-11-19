@interface CHDChartTypeWithGrouping
- (CHDChartTypeWithGrouping)initWithChart:(id)a3;
- (id)chdGroupingString;
@end

@implementation CHDChartTypeWithGrouping

- (CHDChartTypeWithGrouping)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDChartTypeWithGrouping;
  result = [(CHDChartType *)&v4 initWithChart:a3];
  if (result)
  {
    *(&result->super.mVaryColors + 1) = 3;
  }

  return result;
}

- (id)chdGroupingString
{
  v2 = *(&self->super.mVaryColors + 1);
  if (v2 > 3)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CD1F8[v2];
  }
}

@end