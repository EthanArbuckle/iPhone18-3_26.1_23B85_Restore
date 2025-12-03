@interface CHBPieDataValueProperties
+ (id)chdDataValueProperties;
+ (void)read:(id)read from:(const XlChartSeriesFormat *)from;
@end

@implementation CHBPieDataValueProperties

+ (id)chdDataValueProperties
{
  v2 = objc_alloc_init(CHDPieDataValueProperties);

  return v2;
}

+ (void)read:(id)read from:(const XlChartSeriesFormat *)from
{
  readCopy = read;
  if (from)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [readCopy setExplosion:from->var10];
    }
  }
}

@end