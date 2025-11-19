@interface SFCapsuleInputAccessorySpacerView
- (CGSize)sizeThatFits:(CGSize)result;
- (SFCapsuleInputAccessorySpacerView)initWithCapsuleView:(id)a3;
- (void)setCapsuleHeight:(double)a3;
@end

@implementation SFCapsuleInputAccessorySpacerView

- (SFCapsuleInputAccessorySpacerView)initWithCapsuleView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCapsuleInputAccessorySpacerView;
  v5 = [(SFCapsuleInputAccessorySpacerView *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SFCapsuleInputAccessorySpacerView *)v5 setUserInteractionEnabled:0];
    [v4 frame];
    v6->_capsuleHeight = CGRectGetHeight(v10);
    [(SFCapsuleInputAccessorySpacerView *)v6 sizeToFit];
    v7 = v6;
  }

  return v6;
}

- (void)setCapsuleHeight:(double)a3
{
  if (self->_capsuleHeight != a3)
  {
    self->_capsuleHeight = a3;
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