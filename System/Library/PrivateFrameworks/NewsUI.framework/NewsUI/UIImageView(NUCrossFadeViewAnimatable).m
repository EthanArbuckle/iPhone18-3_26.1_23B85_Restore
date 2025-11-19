@interface UIImageView(NUCrossFadeViewAnimatable)
- (void)nu_crossFadeViewSetValue:()NUCrossFadeViewAnimatable;
@end

@implementation UIImageView(NUCrossFadeViewAnimatable)

- (void)nu_crossFadeViewSetValue:()NUCrossFadeViewAnimatable
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [a1 setImage:v4];
}

@end