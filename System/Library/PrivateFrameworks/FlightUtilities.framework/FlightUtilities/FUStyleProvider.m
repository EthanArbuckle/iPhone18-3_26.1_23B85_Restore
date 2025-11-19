@interface FUStyleProvider
+ (id)providerForStyle:(unint64_t)a3;
@end

@implementation FUStyleProvider

+ (id)providerForStyle:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(*off_2790115A0[a3 - 1]);
  }

  return v4;
}

@end