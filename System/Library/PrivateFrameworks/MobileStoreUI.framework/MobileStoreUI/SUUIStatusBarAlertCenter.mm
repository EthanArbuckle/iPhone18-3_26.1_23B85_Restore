@interface SUUIStatusBarAlertCenter
+ (id)sharedCenter;
- (BOOL)isVisible;
- (NSString)message;
- (SUUIStatusBarAlertCenter)init;
- (void)dismiss;
- (void)scheduleDismiss;
- (void)setVisible:(BOOL)visible;
- (void)showMessage:(id)message withStyle:(int64_t)style forDuration:(double)duration actionBlock:(id)block;
- (void)statusBarAlertViewControllerWasTapped:(id)tapped;
@end

@implementation SUUIStatusBarAlertCenter

+ (id)sharedCenter
{
  if (sharedCenter_onceToken != -1)
  {
    +[SUUIStatusBarAlertCenter sharedCenter];
  }

  v3 = sharedCenter_sharedHeadsUp;

  return v3;
}

uint64_t __40__SUUIStatusBarAlertCenter_sharedCenter__block_invoke()
{
  v0 = objc_alloc_init(SUUIStatusBarAlertCenter);
  v1 = sharedCenter_sharedHeadsUp;
  sharedCenter_sharedHeadsUp = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SUUIStatusBarAlertCenter)init
{
  v10.receiver = self;
  v10.super_class = SUUIStatusBarAlertCenter;
  v2 = [(SUUIStatusBarAlertCenter *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(_SUUIStatusBarAlertViewController);
    rootViewController = v2->_rootViewController;
    v2->_rootViewController = v3;

    [(_SUUIStatusBarAlertViewController *)v2->_rootViewController setDelegate:v2];
    v5 = [_SUUIClickThroughWindow alloc];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v7 = [(_SUUIClickThroughWindow *)v5 initWithFrame:?];
    window = v2->_window;
    v2->_window = v7;

    [(_SUUIClickThroughWindow *)v2->_window setWindowLevel:*MEMORY[0x277D772B8]];
    [(_SUUIClickThroughWindow *)v2->_window setRootViewController:v2->_rootViewController];
    [(_SUUIClickThroughWindow *)v2->_window _setWindowControlsStatusBarOrientation:0];
    v2->_duration = 3.0;
  }

  return v2;
}

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  window = [(SUUIStatusBarAlertCenter *)self window];
  [window setHidden:!visibleCopy];
}

- (BOOL)isVisible
{
  window = [(SUUIStatusBarAlertCenter *)self window];
  isHidden = [window isHidden];

  return isHidden ^ 1;
}

- (NSString)message
{
  rootViewController = [(SUUIStatusBarAlertCenter *)self rootViewController];
  message = [rootViewController message];

  return message;
}

- (void)showMessage:(id)message withStyle:(int64_t)style forDuration:(double)duration actionBlock:(id)block
{
  blockCopy = block;
  if (duration < 2.22044605e-16)
  {
    duration = 3.0;
  }

  messageCopy = message;
  rootViewController = [(SUUIStatusBarAlertCenter *)self rootViewController];
  [rootViewController setMessage:messageCopy];

  [(SUUIStatusBarAlertCenter *)self setDuration:duration];
  rootViewController2 = [(SUUIStatusBarAlertCenter *)self rootViewController];
  [rootViewController2 endAllAnimations];

  if ([(SUUIStatusBarAlertCenter *)self isVisible])
  {
    [(SUUIStatusBarAlertCenter *)self unscheduleDismiss];
    v14 = MEMORY[0x277D75D18];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__SUUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke;
    v28[3] = &unk_2798FC178;
    v28[4] = self;
    styleCopy = style;
    v29 = blockCopy;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__SUUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_2;
    v27[3] = &unk_2798F5D30;
    v27[4] = self;
    [v14 animateWithDuration:v28 animations:v27 completion:0.2];
  }

  else
  {
    keyWindow = [MEMORY[0x277D75DA0] keyWindow];
    v16 = keyWindow;
    if (keyWindow)
    {
      rootViewController3 = [keyWindow rootViewController];
      supportedInterfaceOrientations = [rootViewController3 supportedInterfaceOrientations];
    }

    else
    {
      rootViewController3 = [(SUUIStatusBarAlertCenter *)self rootViewController];
      supportedInterfaceOrientations = [rootViewController3 defaultInterfaceOrientations];
    }

    v19 = supportedInterfaceOrientations;
    rootViewController4 = [(SUUIStatusBarAlertCenter *)self rootViewController];
    [rootViewController4 setSupportedInterfaceOrientations:v19];

    rootViewController5 = [(SUUIStatusBarAlertCenter *)self rootViewController];
    [rootViewController5 setStyle:style];

    [(SUUIStatusBarAlertCenter *)self setActionBlock:blockCopy];
    rootViewController6 = [(SUUIStatusBarAlertCenter *)self rootViewController];
    statusBarView = [rootViewController6 statusBarView];
    window = [(SUUIStatusBarAlertCenter *)self window];
    [window setInteractionView:statusBarView];

    [(SUUIStatusBarAlertCenter *)self setVisible:1];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__SUUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_3;
    v26[3] = &unk_2798F5BE8;
    v26[4] = self;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__SUUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_4;
    v25[3] = &unk_2798F5D30;
    v25[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v26 animations:v25 completion:0.2];
  }
}

uint64_t __74__SUUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rootViewController];
  [v2 setOnScreen:1];

  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) rootViewController];
  [v4 setStyle:v3];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 setActionBlock:v6];
}

uint64_t __74__SUUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) scheduleDismiss];
  }

  return result;
}

void __74__SUUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) rootViewController];
  [v1 setOnScreen:1];
}

uint64_t __74__SUUIStatusBarAlertCenter_showMessage_withStyle_forDuration_actionBlock___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) scheduleDismiss];
  }

  return result;
}

- (void)scheduleDismiss
{
  [(SUUIStatusBarAlertCenter *)self duration];

  [(SUUIStatusBarAlertCenter *)self performSelector:sel_dismiss withObject:0 afterDelay:?];
}

- (void)dismiss
{
  [(SUUIStatusBarAlertCenter *)self unscheduleDismiss];
  if ([(SUUIStatusBarAlertCenter *)self isVisible])
  {
    rootViewController = [(SUUIStatusBarAlertCenter *)self rootViewController];
    [rootViewController endAllAnimations];

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __35__SUUIStatusBarAlertCenter_dismiss__block_invoke;
    v5[3] = &unk_2798F5BE8;
    v5[4] = self;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __35__SUUIStatusBarAlertCenter_dismiss__block_invoke_2;
    v4[3] = &unk_2798F5D30;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:0.2];
  }
}

void __35__SUUIStatusBarAlertCenter_dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) rootViewController];
  [v1 setOnScreen:0];
}

uint64_t __35__SUUIStatusBarAlertCenter_dismiss__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setVisible:0];
    v3 = [*(v2 + 32) rootViewController];
    [v3 setMessage:0];

    v4 = *(v2 + 32);

    return [v4 setActionBlock:0];
  }

  return result;
}

- (void)statusBarAlertViewControllerWasTapped:(id)tapped
{
  [(SUUIStatusBarAlertCenter *)self dismiss];
  actionBlock = [(SUUIStatusBarAlertCenter *)self actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(SUUIStatusBarAlertCenter *)self actionBlock];
    actionBlock2[2]();
  }
}

@end