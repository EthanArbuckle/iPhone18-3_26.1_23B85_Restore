@interface MUFixedHeightAwareViewController
- (MUFixedHeightAwareViewController)initWithViewController:(id)controller;
- (void)_setupChildVC;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation MUFixedHeightAwareViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  [(UIViewController *)self->_childVC preferredContentSize];
  [(MUFixedHeightAwareViewController *)self setPreferredContentSize:?];
  [(UIViewController *)self->_childVC preferredContentSize];
  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:v4];
}

- (void)_setupChildVC
{
  v38[5] = *MEMORY[0x1E69E9840];
  view = [(UIViewController *)self->_childVC view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(UIViewController *)self->_childVC view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view3 = [(UIViewController *)self->_childVC view];
    [view3 setScrollEnabled:0];
  }

  [(MUFixedHeightAwareViewController *)self addChildViewController:self->_childVC];
  view4 = [(MUFixedHeightAwareViewController *)self view];
  view5 = [(UIViewController *)self->_childVC view];
  [view4 addSubview:view5];

  [(UIViewController *)self->_childVC didMoveToParentViewController:self];
  view6 = [(UIViewController *)self->_childVC view];
  heightAnchor = [view6 heightAnchor];
  [(UIViewController *)self->_childVC preferredContentSize];
  v12 = [heightAnchor constraintEqualToConstant:v11];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v12;

  v28 = MEMORY[0x1E696ACD8];
  view7 = [(UIViewController *)self->_childVC view];
  leadingAnchor = [view7 leadingAnchor];
  view8 = [(MUFixedHeightAwareViewController *)self view];
  leadingAnchor2 = [view8 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v33;
  view9 = [(UIViewController *)self->_childVC view];
  trailingAnchor = [view9 trailingAnchor];
  view10 = [(MUFixedHeightAwareViewController *)self view];
  trailingAnchor2 = [view10 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[1] = v27;
  view11 = [(UIViewController *)self->_childVC view];
  topAnchor = [view11 topAnchor];
  view12 = [(MUFixedHeightAwareViewController *)self view];
  topAnchor2 = [view12 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v16;
  view13 = [(UIViewController *)self->_childVC view];
  bottomAnchor = [view13 bottomAnchor];
  view14 = [(MUFixedHeightAwareViewController *)self view];
  bottomAnchor2 = [view14 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22 = self->_heightConstraint;
  v38[3] = v21;
  v38[4] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
  [v28 activateConstraints:v23];

  v24 = *MEMORY[0x1E69E9840];
}

- (MUFixedHeightAwareViewController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MUFixedHeightAwareViewController;
  v6 = [(MUFixedHeightAwareViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_childVC, controller);
    [(MUFixedHeightAwareViewController *)v7 _setupChildVC];
  }

  return v7;
}

@end