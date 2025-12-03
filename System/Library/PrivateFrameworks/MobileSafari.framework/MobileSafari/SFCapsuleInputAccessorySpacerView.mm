@interface SFCapsuleInputAccessorySpacerView
- (CGSize)sizeThatFits:(CGSize)result;
- (SFCapsuleInputAccessorySpacerView)initWithCapsuleView:(id)view;
- (void)setCapsuleHeight:(double)height;
@end

@implementation SFCapsuleInputAccessorySpacerView

- (SFCapsuleInputAccessorySpacerView)initWithCapsuleView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SFCapsuleInputAccessorySpacerView;
  v5 = [(SFCapsuleInputAccessorySpacerView *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SFCapsuleInputAccessorySpacerView *)v5 setUserInteractionEnabled:0];
    [viewCopy frame];
    v6->_capsuleHeight = CGRectGetHeight(v10);
    [(SFCapsuleInputAccessorySpacerView *)v6 sizeToFit];
    v7 = v6;
  }

  return v6;
}

- (void)setCapsuleHeight:(double)height
{
  if (self->_capsuleHeight != height)
  {
    self->_capsuleHeight = height;
    [(SFCapsuleInputAccessorySpacerView *)self sizeToFit];

    [(SFCapsuleInputAccessorySpacerView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = self->_capsuleHeight + 12.0 + 8.0;
  result.height = v3;
  return result;
}

@end