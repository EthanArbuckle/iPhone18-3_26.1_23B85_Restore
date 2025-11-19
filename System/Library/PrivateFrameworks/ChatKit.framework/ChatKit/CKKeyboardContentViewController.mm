@interface CKKeyboardContentViewController
- (CKKeyboardContentViewController)initWithViewController:(id)a3 identifier:(id)a4;
- (void)loadView;
- (void)setViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKKeyboardContentViewController

- (CKKeyboardContentViewController)initWithViewController:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKKeyboardContentViewController;
  v8 = [(UIInputViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(CKKeyboardContentViewController *)v8 setIdentifier:v7];
    [(CKKeyboardContentViewController *)v9 setViewController:v6];
    if ([v7 isEqualToString:*MEMORY[0x1E69A6A00]])
    {
      [(UIInputViewController *)v9 _setAutosizeToCurrentKeyboard:1];
    }
  }

  return v9;
}

- (void)loadView
{
  v3 = [(CKKeyboardContentViewController *)self identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69A6A00]];

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
  v3 = [(CKKeyboardContentViewController *)self viewController];

  if (v3)
  {
    v4 = [(CKKeyboardContentViewController *)self viewController];
    [(CKKeyboardContentViewController *)self addChildViewController:v4];

    v5 = [(CKKeyboardContentViewController *)self view];
    v6 = [(CKKeyboardContentViewController *)self viewController];
    v7 = [v6 view];
    [v5 addSubview:v7];

    v8 = [(CKKeyboardContentViewController *)self viewController];
    v9 = [v8 view];
    v10 = [(CKKeyboardContentViewController *)self view];
    [v10 bounds];
    [v9 setBounds:?];

    v11 = [(CKKeyboardContentViewController *)self viewController];
    [v11 didMoveToParentViewController:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKKeyboardContentViewController;
  [(CKKeyboardContentViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(CKKeyboardContentViewController *)self viewController];
  v4 = [v3 view];
  v5 = [(CKKeyboardContentViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = CKKeyboardContentViewController;
  [(CKKeyboardContentViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(CKKeyboardContentViewController *)self view];
  [v5 invalidateIntrinsicContentSize];
}

- (void)setViewController:(id)a3
{
  v5 = a3;
  viewController = self->_viewController;
  v12 = v5;
  if (viewController != v5)
  {
    [(UIViewController *)viewController removeFromParentViewController];
    v7 = [(UIViewController *)self->_viewController view];
    [v7 removeFromSuperview];

    [(UIViewController *)self->_viewController didMoveToParentViewController:0];
    objc_storeStrong(&self->_viewController, a3);
    if (self->_viewController)
    {
      [(CKKeyboardContentViewController *)self addChildViewController:?];
      v8 = [(CKKeyboardContentViewController *)self view];
      v9 = [(UIViewController *)self->_viewController view];
      [v8 addSubview:v9];

      [(UIViewController *)self->_viewController didMoveToParentViewController:self];
      v10 = [(UIViewController *)self->_viewController view];
      v11 = [(CKKeyboardContentViewController *)self view];
      [v11 bounds];
      [v10 setFrame:?];
    }
  }
}

@end