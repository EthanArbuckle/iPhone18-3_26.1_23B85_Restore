@interface CKPresentationControllerWindow
- (BOOL)_canAffectStatusBarAppearance;
- (CKPresentationControllerWindow)initWithFrame:(CGRect)a3 allowsRotation:(BOOL)a4 allowsStatusBarChanges:(BOOL)a5 restrictedToPortraitOrientation:(BOOL)a6;
- (CKPresentationControllerWindow)initWithWindowScene:(id)a3 allowsRotation:(BOOL)a4 allowsStatusBarChanges:(BOOL)a5 restrictedToPortraitOrientation:(BOOL)a6;
- (CKPresentationControllerWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4 allowsRotation:(BOOL)a5 allowsStatusBarChanges:(BOOL)a6 restrictedToPortraitOrientation:(BOOL)a7;
- (void)restrictedToPortraitOrientation:(BOOL)a3;
@end

@implementation CKPresentationControllerWindow

- (CKPresentationControllerWindow)initWithWindowScene:(id)a3 allowsRotation:(BOOL)a4 allowsStatusBarChanges:(BOOL)a5 restrictedToPortraitOrientation:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CKPresentationControllerWindow;
  v9 = [(CKPresentationControllerWindow *)&v15 initWithWindowScene:a3];
  if (v9)
  {
    v10 = objc_alloc_init(CKPresentationControllerRootViewController);
    [(CKPresentationControllerRootViewController *)v10 setAllowsRotation:v8];
    [(CKPresentationControllerRootViewController *)v10 setAllowsStatusBarChanges:v7];
    [(CKPresentationControllerRootViewController *)v10 setRestrictedToPortraitOrientation:v6];
    v11 = [(CKPresentationControllerRootViewController *)v10 view];
    [v11 setBackgroundColor:0];

    [(CKPresentationControllerWindow *)v9 setRootViewController:v10];
    v12 = [(CKPresentationControllerRootViewController *)v10 view];
    [(CKPresentationControllerWindow *)v9 addSubview:v12];

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 presentationControllerWindowLevel];
    [(CKPresentationControllerWindow *)v9 setWindowLevel:?];
  }

  return v9;
}

- (CKPresentationControllerWindow)initWithFrame:(CGRect)a3 allowsRotation:(BOOL)a4 allowsStatusBarChanges:(BOOL)a5 restrictedToPortraitOrientation:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = [MEMORY[0x1E69DD2E8] keyWindow];
  v15 = [v14 windowScene];
  v16 = [(CKPresentationControllerWindow *)self initWithWindowScene:v15 frame:v8 allowsRotation:v7 allowsStatusBarChanges:v6 restrictedToPortraitOrientation:x, y, width, height];

  return v16;
}

- (CKPresentationControllerWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4 allowsRotation:(BOOL)a5 allowsStatusBarChanges:(BOOL)a6 restrictedToPortraitOrientation:(BOOL)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = [(CKPresentationControllerWindow *)self initWithWindowScene:a3 allowsRotation:a5 allowsStatusBarChanges:a6 restrictedToPortraitOrientation:a7];
  v12 = v11;
  if (v11)
  {
    [(CKPresentationControllerWindow *)v11 setFrame:x, y, width, height];
  }

  return v12;
}

- (void)restrictedToPortraitOrientation:(BOOL)a3
{
  if (self->_restrictedToPortraitOrientation != a3)
  {
    v4 = a3;
    self->_restrictedToPortraitOrientation = a3;
    v5 = [(CKPresentationControllerWindow *)self rootViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setRestrictedToPortraitOrientation:v4];
    }
  }
}

- (BOOL)_canAffectStatusBarAppearance
{
  v2 = [(CKPresentationControllerWindow *)self rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 allowsStatusBarChanges];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end