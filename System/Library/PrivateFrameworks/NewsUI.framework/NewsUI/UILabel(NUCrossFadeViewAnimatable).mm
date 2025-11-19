@interface UILabel(NUCrossFadeViewAnimatable)
- (uint64_t)nu_crossFadeViewClearVisibleState;
- (void)nu_crossFadeViewSetValue:()NUCrossFadeViewAnimatable;
@end

@implementation UILabel(NUCrossFadeViewAnimatable)

- (uint64_t)nu_crossFadeViewClearVisibleState
{
  [a1 setText:0];

  return [a1 setAttributedText:0];
}

- (void)nu_crossFadeViewSetValue:()NUCrossFadeViewAnimatable
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
    v5 = v8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 setText:v8];
      goto LABEL_7;
    }

    [a1 setText:0];
    v4 = a1;
    v5 = 0;
  }

  [v4 setAttributedText:v5];
LABEL_7:
  v6 = [a1 superview];
  [v6 setNeedsLayout];

  v7 = [a1 superview];
  [v7 layoutIfNeeded];
}

@end