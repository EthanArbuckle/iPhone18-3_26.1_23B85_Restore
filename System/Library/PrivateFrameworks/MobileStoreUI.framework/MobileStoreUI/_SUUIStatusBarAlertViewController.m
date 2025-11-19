@interface _SUUIStatusBarAlertViewController
- (UIView)statusBarView;
- (_SUUIStatusBarAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_SUUIStatusBarAlertViewControllerDelegate)delegate;
- (unint64_t)defaultInterfaceOrientations;
- (void)endAllAnimations;
- (void)handleLabelTap:(id)a3;
- (void)setMessage:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)updateLabelFrame;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _SUUIStatusBarAlertViewController

- (_SUUIStatusBarAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = _SUUIStatusBarAlertViewController;
  v4 = [(_SUUIStatusBarAlertViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(_SUUIStatusBarAlertViewController *)v4 setSupportedInterfaceOrientations:[(_SUUIStatusBarAlertViewController *)v4 defaultInterfaceOrientations]];
  }

  return v5;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = _SUUIStatusBarAlertViewController;
  [(_SUUIStatusBarAlertViewController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  label = self->_label;
  self->_label = v3;

  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setNumberOfLines:1];
  [(UILabel *)self->_label setMarqueeEnabled:1];
  v5 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)self->_label setTextColor:v5];

  v6 = [(_SUUIStatusBarAlertViewController *)self isOnScreen];
  v7 = 0.0;
  if (v6)
  {
    v7 = 1.0;
  }

  [(UILabel *)self->_label setAlpha:v7];
  v8 = SUUIStatusBarAlertStyleGetColor([(_SUUIStatusBarAlertViewController *)self style]);
  v9 = [v8 CGColor];
  v10 = [(UILabel *)self->_label layer];
  [v10 setBackgroundColor:v9];

  [(UILabel *)self->_label setUserInteractionEnabled:1];
  v11 = self->_label;
  v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleLabelTap_];
  [(UILabel *)v11 addGestureRecognizer:v12];

  v13 = [(_SUUIStatusBarAlertViewController *)self view];
  [v13 addSubview:self->_label];

  [(_SUUIStatusBarAlertViewController *)self updateLabelFrame];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  label = self->_label;
  v6 = a4;
  [(UILabel *)label setHidden:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88___SUUIStatusBarAlertViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_2798F5A88;
  v7[4] = self;
  [v6 animateAlongsideTransition:0 completion:v7];
}

- (void)updateLabelFrame
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 statusBarFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(_SUUIStatusBarAlertViewController *)self view];
  v13 = [(_SUUIStatusBarAlertViewController *)self view];
  v14 = [v13 window];
  [v12 convertRect:v14 fromCoordinateSpace:{v5, v7, v9, v11}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [(UILabel *)self->_label setFrame:v16, v18, v20, v22];
  v25.origin.x = v16;
  v25.origin.y = v18;
  v25.size.width = v20;
  v25.size.height = v22;
  v23 = [MEMORY[0x277D74300] boldSystemFontOfSize:CGRectGetHeight(v25) * 0.7];
  [(UILabel *)self->_label setFont:v23];
}

- (void)endAllAnimations
{
  v2 = [(UILabel *)self->_label layer];
  [v2 removeAllAnimations];
}

- (void)handleLabelTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(_SUUIStatusBarAlertViewController *)self delegate];
    [v4 statusBarAlertViewControllerWasTapped:self];
  }
}

- (UIView)statusBarView
{
  [(_SUUIStatusBarAlertViewController *)self loadViewIfNeeded];
  label = self->_label;

  return label;
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    v13 = v4;
    v14 = v3;
    v9 = a3;
    self->_onScreen = a3;
    v11 = 0.0;
    if (a3)
    {
      v11 = 1.0;
    }

    [(UILabel *)self->_label setAlpha:v11, v6, v5, v13, v14, v7];
    label = self->_label;

    [(UILabel *)label setMarqueeRunning:v9];
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v8 = SUUIStatusBarAlertStyleGetColor(a3);
    v5 = v8;
    v6 = [v8 CGColor];
    v7 = [(UILabel *)self->_label layer];
    [v7 setBackgroundColor:v6];
  }
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  [(_SUUIStatusBarAlertViewController *)self loadViewIfNeeded];
  [(UILabel *)self->_label setText:v4];

  v5 = [(_SUUIStatusBarAlertViewController *)self isOnScreen];
  label = self->_label;

  [(UILabel *)label setMarqueeRunning:v5];
}

- (unint64_t)defaultInterfaceOrientations
{
  v3.receiver = self;
  v3.super_class = _SUUIStatusBarAlertViewController;
  return [(_SUUIStatusBarAlertViewController *)&v3 supportedInterfaceOrientations];
}

- (_SUUIStatusBarAlertViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end