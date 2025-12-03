@interface PKPassImageSet
+ (Class)classForImageSetType:(int64_t)type;
@end

@implementation PKPassImageSet

+ (Class)classForImageSetType:(int64_t)type
{
  if (type > 8)
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