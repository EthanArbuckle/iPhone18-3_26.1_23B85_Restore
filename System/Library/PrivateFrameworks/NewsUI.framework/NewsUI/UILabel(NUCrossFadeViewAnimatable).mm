@interface UILabel(NUCrossFadeViewAnimatable)
- (uint64_t)nu_crossFadeViewClearVisibleState;
- (void)nu_crossFadeViewSetValue:()NUCrossFadeViewAnimatable;
@end

@implementation UILabel(NUCrossFadeViewAnimatable)

- (uint64_t)nu_crossFadeViewClearVisibleState
{
  [self setText:0];

  return [self setAttributedText:0];
}

- (void)nu_crossFadeViewSetValue:()NUCrossFadeViewAnimatable
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    v5 = v8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self setText:v8];
      goto LABEL_7;
    }

    [self setText:0];
    selfCopy2 = self;
    v5 = 0;
  }

  [selfCopy2 setAttributedText:v5];
LABEL_7:
  superview = [self superview];
  [superview setNeedsLayout];

  superview2 = [self superview];
  [superview2 layoutIfNeeded];
}

@end