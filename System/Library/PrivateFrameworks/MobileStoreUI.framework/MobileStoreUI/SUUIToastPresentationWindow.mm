@interface SUUIToastPresentationWindow
- (SUUIToastPresentationWindow)init;
- (id)_presentationViewController;
- (void)presentAlertController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation SUUIToastPresentationWindow

- (SUUIToastPresentationWindow)init
{
  v7.receiver = self;
  v7.super_class = SUUIToastPresentationWindow;
  v2 = [(UIApplicationRotationFollowingWindow *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(SUUIToastPresentationWindow *)v2 setOpaque:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIToastPresentationWindow *)v3 setBackgroundColor:clearColor];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [(SUUIToastPresentationWindow *)v3 setScreen:mainScreen];

    [(SUUIToastPresentationWindow *)v3 setWindowLevel:*MEMORY[0x277D772A8]];
    [(SUUIToastPresentationWindow *)v3 setHidden:1];
  }

  return v3;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentationViewController = [(SUUIToastPresentationWindow *)self _presentationViewController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SUUIToastPresentationWindow_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_2798F8B98;
  v13 = completionCopy;
  v11 = completionCopy;
  [_presentationViewController presentViewController:controllerCopy animated:animatedCopy completion:v12];
}

uint64_t __73__SUUIToastPresentationWindow_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)presentAlertController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentationViewController = [(SUUIToastPresentationWindow *)self _presentationViewController];
  presentedViewController = [_presentationViewController presentedViewController];
  if (presentedViewController)
  {

    if (presentedViewController != controllerCopy)
    {
      [SUUIToastPresentationWindow presentAlertController:a2 animated:self completion:?];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, presentedViewController == controllerCopy);
    }
  }

  else
  {
    [(SUUIToastPresentationWindow *)self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (id)_presentationViewController
{
  rootViewController = [(SUUIToastPresentationWindow *)self rootViewController];

  if (!rootViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75150]);
    [v4 setSizesWindowToScene:1];
    [(SUUIToastPresentationWindow *)self setRootViewController:v4];
  }

  return [(SUUIToastPresentationWindow *)self rootViewController];
}

- (void)presentAlertController:(uint64_t)a1 animated:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIToastPresentationWindow.m" lineNumber:48 description:{@"Multiple alert controllers assigned to the same window: %@", a2}];
}

@end