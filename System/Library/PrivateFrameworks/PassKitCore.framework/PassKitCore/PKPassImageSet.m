@interface PKPassImageSet
+ (Class)classForImageSetType:(int64_t)a3;
@end

@implementation PKPassImageSet

+ (Class)classForImageSetType:(int64_t)a3
{
  if (a3 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

@end