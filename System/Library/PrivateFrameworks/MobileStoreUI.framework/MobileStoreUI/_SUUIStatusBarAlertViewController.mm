@interface _SUUIStatusBarAlertViewController
- (UIView)statusBarView;
- (_SUUIStatusBarAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_SUUIStatusBarAlertViewControllerDelegate)delegate;
- (unint64_t)defaultInterfaceOrientations;
- (void)endAllAnimations;
- (void)handleLabelTap:(id)tap;
- (void)setMessage:(id)message;
- (void)setOnScreen:(BOOL)screen;
- (void)setStyle:(int64_t)style;
- (void)updateLabelFrame;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _SUUIStatusBarAlertViewController

- (_SUUIStatusBarAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = _SUUIStatusBarAlertViewController;
  v4 = [(_SUUIStatusBarAlertViewController *)&v7 initWithNibName:name bundle:bundle];
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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)self->_label setTextColor:whiteColor];

  isOnScreen = [(_SUUIStatusBarAlertViewController *)self isOnScreen];
  v7 = 0.0;
  if (isOnScreen)
  {
    v7 = 1.0;
  }

  [(UILabel *)self->_label setAlpha:v7];
  v8 = SUUIStatusBarAlertStyleGetColor([(_SUUIStatusBarAlertViewController *)self style]);
  cGColor = [v8 CGColor];
  layer = [(UILabel *)self->_label layer];
  [layer setBackgroundColor:cGColor];

  [(UILabel *)self->_label setUserInteractionEnabled:1];
  v11 = self->_label;
  v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleLabelTap_];
  [(UILabel *)v11 addGestureRecognizer:v12];

  view = [(_SUUIStatusBarAlertViewController *)self view];
  [view addSubview:self->_label];

  [(_SUUIStatusBarAlertViewController *)self updateLabelFrame];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  label = self->_label;
  coordinatorCopy = coordinator;
  [(UILabel *)label setHidden:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88___SUUIStatusBarAlertViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_2798F5A88;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v7];
}

- (void)updateLabelFrame
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] statusBarFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view = [(_SUUIStatusBarAlertViewController *)self view];
  view2 = [(_SUUIStatusBarAlertViewController *)self view];
  window = [view2 window];
  [view convertRect:window fromCoordinateSpace:{v5, v7, v9, v11}];
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
  layer = [(UILabel *)self->_label layer];
  [layer removeAllAnimations];
}

- (void)handleLabelTap:(id)tap
{
  if ([tap state] == 3)
  {
    delegate = [(_SUUIStatusBarAlertViewController *)self delegate];
    [delegate statusBarAlertViewControllerWasTapped:self];
  }
}

- (UIView)statusBarView
{
  [(_SUUIStatusBarAlertViewController *)self loadViewIfNeeded];
  label = self->_label;

  return label;
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    v13 = v4;
    v14 = v3;
    screenCopy = screen;
    self->_onScreen = screen;
    v11 = 0.0;
    if (screen)
    {
      v11 = 1.0;
    }

    [(UILabel *)self->_label setAlpha:v11, v6, v5, v13, v14, v7];
    label = self->_label;

    [(UILabel *)label setMarqueeRunning:screenCopy];
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    v8 = SUUIStatusBarAlertStyleGetColor(style);
    v5 = v8;
    cGColor = [v8 CGColor];
    layer = [(UILabel *)self->_label layer];
    [layer setBackgroundColor:cGColor];
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  [(_SUUIStatusBarAlertViewController *)self loadViewIfNeeded];
  [(UILabel *)self->_label setText:messageCopy];

  isOnScreen = [(_SUUIStatusBarAlertViewController *)self isOnScreen];
  label = self->_label;

  [(UILabel *)label setMarqueeRunning:isOnScreen];
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