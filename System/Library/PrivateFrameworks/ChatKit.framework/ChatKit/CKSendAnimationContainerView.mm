@interface CKSendAnimationContainerView
- (CKSendAnimationContainerView)initWithFrame:(CGRect)a3;
@end

@implementation CKSendAnimationContainerView

- (CKSendAnimationContainerView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKSendAnimationContainerView;
  v3 = [(CKSendAnimationContainerView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [CKGradientReferenceView alloc];
    [(CKSendAnimationContainerView *)v3 bounds];
    v5 = [(CKGradientReferenceView *)v4 initWithFrame:?];
    [(CKGradientReferenceView *)v5 setAutoresizingMask:18];
    [(CKSendAnimationContainerView *)v3 setGradientReferenceView:v5];
    [(CKSendAnimationContainerView *)v3 addSubview:v5];
  }

  return v3;
}

@end