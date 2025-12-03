@interface CKSendAnimationWindow
- (CKSendAnimationWindow)initWithWindowScene:(id)scene frame:(CGRect)frame;
@end

@implementation CKSendAnimationWindow

- (CKSendAnimationWindow)initWithWindowScene:(id)scene frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  v15.receiver = self;
  v15.super_class = CKSendAnimationWindow;
  v10 = [(UIApplicationRotationFollowingWindow *)&v15 initWithWindowScene:sceneCopy];
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
    -[UIAutoRotatingWindow updateForOrientation:](v11, "updateForOrientation:", [sceneCopy interfaceOrientation]);
  }

  return v11;
}

@end