@interface CKKeyboardContentViewController
- (CKKeyboardContentViewController)initWithViewController:(id)controller identifier:(id)identifier;
- (void)loadView;
- (void)setViewController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKKeyboardContentViewController

- (CKKeyboardContentViewController)initWithViewController:(id)controller identifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CKKeyboardContentViewController;
  v8 = [(UIInputViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(CKKeyboardContentViewController *)v8 setIdentifier:identifierCopy];
    [(CKKeyboardContentViewController *)v9 setViewController:controllerCopy];
    if ([identifierCopy isEqualToString:*MEMORY[0x1E69A6A00]])
    {
      [(UIInputViewController *)v9 _setAutosizeToCurrentKeyboard:1];
    }
  }

  return v9;
}

- (void)loadView
{
  identifier = [(CKKeyboardContentViewController *)self identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E69A6A00]];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCB00]);
    v7 = [v5 initWithFrame:0 inputViewStyle:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  else
  {
    v6 = [CKInputView alloc];
    v7 = [(UIInputView *)v6 initWithFrame:0 inputViewStyle:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIInputView *)v7 setAllowsSelfSizing:1];
  }

  [(CKInputView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKInputView *)v7 setBackgroundColor:0];
  [(UIInputViewController *)self setView:v7];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CKKeyboardContentViewController;
  [(UIInputViewController *)&v12 viewDidLoad];
  viewController = [(CKKeyboardContentViewController *)self viewController];

  if (viewController)
  {
    viewController2 = [(CKKeyboardContentViewController *)self viewController];
    [(CKKeyboardContentViewController *)self addChildViewController:viewController2];

    view = [(CKKeyboardContentViewController *)self view];
    viewController3 = [(CKKeyboardContentViewController *)self viewController];
    view2 = [viewController3 view];
    [view addSubview:view2];

    viewController4 = [(CKKeyboardContentViewController *)self viewController];
    view3 = [viewController4 view];
    view4 = [(CKKeyboardContentViewController *)self view];
    [view4 bounds];
    [view3 setBounds:?];

    viewController5 = [(CKKeyboardContentViewController *)self viewController];
    [viewController5 didMoveToParentViewController:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKKeyboardContentViewController;
  [(CKKeyboardContentViewController *)&v6 viewDidLayoutSubviews];
  viewController = [(CKKeyboardContentViewController *)self viewController];
  view = [viewController view];
  view2 = [(CKKeyboardContentViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = CKKeyboardContentViewController;
  [(CKKeyboardContentViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  view = [(CKKeyboardContentViewController *)self view];
  [view invalidateIntrinsicContentSize];
}

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  viewController = self->_viewController;
  v12 = controllerCopy;
  if (viewController != controllerCopy)
  {
    [(UIViewController *)viewController removeFromParentViewController];
    view = [(UIViewController *)self->_viewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_viewController didMoveToParentViewController:0];
    objc_storeStrong(&self->_viewController, controller);
    if (self->_viewController)
    {
      [(CKKeyboardContentViewController *)self addChildViewController:?];
      view2 = [(CKKeyboardContentViewController *)self view];
      view3 = [(UIViewController *)self->_viewController view];
      [view2 addSubview:view3];

      [(UIViewController *)self->_viewController didMoveToParentViewController:self];
      view4 = [(UIViewController *)self->_viewController view];
      view5 = [(CKKeyboardContentViewController *)self view];
      [view5 bounds];
      [view4 setFrame:?];
    }
  }
}

@end