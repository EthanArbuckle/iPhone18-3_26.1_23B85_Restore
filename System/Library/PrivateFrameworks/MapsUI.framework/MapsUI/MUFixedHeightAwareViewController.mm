@interface MUFixedHeightAwareViewController
- (MUFixedHeightAwareViewController)initWithViewController:(id)a3;
- (void)_setupChildVC;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation MUFixedHeightAwareViewController

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
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
  v3 = [(UIViewController *)self->_childVC view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(UIViewController *)self->_childVC view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(UIViewController *)self->_childVC view];
    [v6 setScrollEnabled:0];
  }

  [(MUFixedHeightAwareViewController *)self addChildViewController:self->_childVC];
  v7 = [(MUFixedHeightAwareViewController *)self view];
  v8 = [(UIViewController *)self->_childVC view];
  [v7 addSubview:v8];

  [(UIViewController *)self->_childVC didMoveToParentViewController:self];
  v9 = [(UIViewController *)self->_childVC view];
  v10 = [v9 heightAnchor];
  [(UIViewController *)self->_childVC preferredContentSize];
  v12 = [v10 constraintEqualToConstant:v11];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v12;

  v28 = MEMORY[0x1E696ACD8];
  v37 = [(UIViewController *)self->_childVC view];
  v35 = [v37 leadingAnchor];
  v36 = [(MUFixedHeightAwareViewController *)self view];
  v34 = [v36 leadingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v38[0] = v33;
  v32 = [(UIViewController *)self->_childVC view];
  v30 = [v32 trailingAnchor];
  v31 = [(MUFixedHeightAwareViewController *)self view];
  v29 = [v31 trailingAnchor];
  v27 = [v30 constraintEqualToAnchor:v29];
  v38[1] = v27;
  v26 = [(UIViewController *)self->_childVC view];
  v25 = [v26 topAnchor];
  v14 = [(MUFixedHeightAwareViewController *)self view];
  v15 = [v14 topAnchor];
  v16 = [v25 constraintEqualToAnchor:v15];
  v38[2] = v16;
  v17 = [(UIViewController *)self->_childVC view];
  v18 = [v17 bottomAnchor];
  v19 = [(MUFixedHeightAwareViewController *)self view];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v22 = self->_heightConstraint;
  v38[3] = v21;
  v38[4] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:5];
  [v28 activateConstraints:v23];

  v24 = *MEMORY[0x1E69E9840];
}

- (MUFixedHeightAwareViewController)initWithViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUFixedHeightAwareViewController;
  v6 = [(MUFixedHeightAwareViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_childVC, a3);
    [(MUFixedHeightAwareViewController *)v7 _setupChildVC];
  }

  return v7;
}

@end