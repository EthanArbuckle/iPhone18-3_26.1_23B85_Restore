@interface GKSignInOriginManager
+ (id)stringForOrigin:(unint64_t)a3;
@end

@implementation GKSignInOriginManager

+ (id)stringForOrigin:(unint64_t)a3
{
  if (a3 - 1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2785E06D8[a3 - 1];
  }
}

@end