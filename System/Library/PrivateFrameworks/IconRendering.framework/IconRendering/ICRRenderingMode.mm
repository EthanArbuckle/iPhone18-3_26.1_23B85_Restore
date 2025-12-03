@interface ICRRenderingMode
+ (id)tintWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
@end

@implementation ICRRenderingMode

+ (id)tintWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = sub_1B15FE780(red, green, blue, alpha);

  return v6;
}

@end