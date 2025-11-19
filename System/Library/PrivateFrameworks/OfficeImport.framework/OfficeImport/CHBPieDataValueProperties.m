@interface CHBPieDataValueProperties
+ (id)chdDataValueProperties;
+ (void)read:(id)a3 from:(const XlChartSeriesFormat *)a4;
@end

@implementation CHBPieDataValueProperties

+ (id)chdDataValueProperties
{
  v2 = objc_alloc_init(CHDPieDataValueProperties);

  return v2;
}

+ (void)read:(id)a3 from:(const XlChartSeriesFormat *)a4
{
  v5 = a3;
  if (a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setExplosion:a4->var10];
    }
  }
}

@end