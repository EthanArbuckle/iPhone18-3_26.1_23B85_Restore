@interface MUConstraintLayout
- (MUConstraintLayout)initWithInternal:(id)internal;
@end

@implementation MUConstraintLayout

- (MUConstraintLayout)initWithInternal:(id)internal
{
  internalCopy = internal;
  if (internalCopy)
  {
    v10.receiver = self;
    v10.super_class = MUConstraintLayout;
    v6 = [(MUConstraintLayout *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_internal, internal);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end