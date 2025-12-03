@interface CKPresentationControllerWindow
- (BOOL)_canAffectStatusBarAppearance;
- (CKPresentationControllerWindow)initWithFrame:(CGRect)frame allowsRotation:(BOOL)rotation allowsStatusBarChanges:(BOOL)changes restrictedToPortraitOrientation:(BOOL)orientation;
- (CKPresentationControllerWindow)initWithWindowScene:(id)scene allowsRotation:(BOOL)rotation allowsStatusBarChanges:(BOOL)changes restrictedToPortraitOrientation:(BOOL)orientation;
- (CKPresentationControllerWindow)initWithWindowScene:(id)scene frame:(CGRect)frame allowsRotation:(BOOL)rotation allowsStatusBarChanges:(BOOL)changes restrictedToPortraitOrientation:(BOOL)orientation;
- (void)restrictedToPortraitOrientation:(BOOL)orientation;
@end

@implementation CKPresentationControllerWindow

- (CKPresentationControllerWindow)initWithWindowScene:(id)scene allowsRotation:(BOOL)rotation allowsStatusBarChanges:(BOOL)changes restrictedToPortraitOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  changesCopy = changes;
  rotationCopy = rotation;
  v15.receiver = self;
  v15.super_class = CKPresentationControllerWindow;
  v9 = [(CKPresentationControllerWindow *)&v15 initWithWindowScene:scene];
  if (v9)
  {
    v10 = objc_alloc_init(CKPresentationControllerRootViewController);
    [(CKPresentationControllerRootViewController *)v10 setAllowsRotation:rotationCopy];
    [(CKPresentationControllerRootViewController *)v10 setAllowsStatusBarChanges:changesCopy];
    [(CKPresentationControllerRootViewController *)v10 setRestrictedToPortraitOrientation:orientationCopy];
    view = [(CKPresentationControllerRootViewController *)v10 view];
    [view setBackgroundColor:0];

    [(CKPresentationControllerWindow *)v9 setRootViewController:v10];
    view2 = [(CKPresentationControllerRootViewController *)v10 view];
    [(CKPresentationControllerWindow *)v9 addSubview:view2];

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 presentationControllerWindowLevel];
    [(CKPresentationControllerWindow *)v9 setWindowLevel:?];
  }

  return v9;
}

- (CKPresentationControllerWindow)initWithFrame:(CGRect)frame allowsRotation:(BOOL)rotation allowsStatusBarChanges:(BOOL)changes restrictedToPortraitOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  changesCopy = changes;
  rotationCopy = rotation;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
  windowScene = [keyWindow windowScene];
  height = [(CKPresentationControllerWindow *)self initWithWindowScene:windowScene frame:rotationCopy allowsRotation:changesCopy allowsStatusBarChanges:orientationCopy restrictedToPortraitOrientation:x, y, width, height];

  return height;
}

- (CKPresentationControllerWindow)initWithWindowScene:(id)scene frame:(CGRect)frame allowsRotation:(BOOL)rotation allowsStatusBarChanges:(BOOL)changes restrictedToPortraitOrientation:(BOOL)orientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = [(CKPresentationControllerWindow *)self initWithWindowScene:scene allowsRotation:rotation allowsStatusBarChanges:changes restrictedToPortraitOrientation:orientation];
  v12 = v11;
  if (v11)
  {
    [(CKPresentationControllerWindow *)v11 setFrame:x, y, width, height];
  }

  return v12;
}

- (void)restrictedToPortraitOrientation:(BOOL)orientation
{
  if (self->_restrictedToPortraitOrientation != orientation)
  {
    orientationCopy = orientation;
    self->_restrictedToPortraitOrientation = orientation;
    rootViewController = [(CKPresentationControllerWindow *)self rootViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [rootViewController setRestrictedToPortraitOrientation:orientationCopy];
    }
  }
}

- (BOOL)_canAffectStatusBarAppearance
{
  rootViewController = [(CKPresentationControllerWindow *)self rootViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allowsStatusBarChanges = [rootViewController allowsStatusBarChanges];
  }

  else
  {
    allowsStatusBarChanges = 0;
  }

  return allowsStatusBarChanges;
}

@end