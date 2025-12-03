@interface NSLayoutConstraint(MobileSafariFrameworkExtras)
+ (uint64_t)sf_setConstraints:()MobileSafariFrameworkExtras active:;
@end

@implementation NSLayoutConstraint(MobileSafariFrameworkExtras)

+ (uint64_t)sf_setConstraints:()MobileSafariFrameworkExtras active:
{
  if (a4)
  {
    return [self activateConstraints:?];
  }

  else
  {
    return [self deactivateConstraints:?];
  }
}

@end