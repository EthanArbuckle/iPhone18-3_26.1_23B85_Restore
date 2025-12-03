@interface GKSignInOriginManager
+ (id)stringForOrigin:(unint64_t)origin;
@end

@implementation GKSignInOriginManager

+ (id)stringForOrigin:(unint64_t)origin
{
  if (origin - 1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2785E06D8[origin - 1];
  }
}

@end