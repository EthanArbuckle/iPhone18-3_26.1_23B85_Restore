@interface FUStyleProvider
+ (id)providerForStyle:(unint64_t)style;
@end

@implementation FUStyleProvider

+ (id)providerForStyle:(unint64_t)style
{
  if (style - 1 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(*off_2790115A0[style - 1]);
  }

  return v4;
}

@end