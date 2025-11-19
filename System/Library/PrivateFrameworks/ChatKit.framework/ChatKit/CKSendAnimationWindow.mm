@interface CKSendAnimationWindow
- (CKSendAnimationWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4;
@end

@implementation CKSendAnimationWindow

- (CKSendAnimationWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v15.receiver = self;
  v15.super_class = CKSendAnimationWindow;
  v10 = [(UIApplicationRotationFollowingWindow *)&v15 initWithWindowScene:v9];
  v11 = v10;
  if (v10)
  {
    [(CKSendAnimationWindow *)v10 setFrame:x, y, width, height];
    v12 = [CKGradientReferenceView alloc];
    [(CKSendAnimationWindow *)v11 bounds];
    v13 = [(CKGradientReferenceView *)v12 initWithFrame:?];
    [(CKGradientReferenceView *)v13 setAutoresizingMask:18];
    [(CKSendAnimationWindow *)v11 setGradientReferenceView:v13];
    [(CKSendAnimationWindow *)v11 addSubview:v13];
    -[UIAutoRotatingWindow updateForOrientation:](v11, "updateForOrientation:", [v9 interfaceOrientation]);
  }

  return v11;
}

@end