@interface NSLayoutConstraint(MobileSafariFrameworkExtras)
+ (uint64_t)sf_setConstraints:()MobileSafariFrameworkExtras active:;
@end

@implementation NSLayoutConstraint(MobileSafariFrameworkExtras)

+ (uint64_t)sf_setConstraints:()MobileSafariFrameworkExtras active:
{
  if (a4)
  {
    return [a1 activateConstraints:?];
  }

  else
  {
    return [a1 deactivateConstraints:?];
  }
}

@end