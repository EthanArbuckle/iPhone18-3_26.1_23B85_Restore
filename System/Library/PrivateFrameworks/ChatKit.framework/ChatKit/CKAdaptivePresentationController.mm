@interface CKAdaptivePresentationController
+ (id)sharedInstance;
- (void)_cleanup;
- (void)_presentViewController:(id)controller fromViewController:(id)viewController presentationHandler:(id)handler barButtonItemPresentationHandler:(id)presentationHandler dismissalHandler:(id)dismissalHandler animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
@end

@implementation CKAdaptivePresentationController

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[CKAdaptivePresentationController sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance_0;

  return v3;
}

void __50__CKAdaptivePresentationController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKAdaptivePresentationController);
  v1 = sharedInstance_sSharedInstance_0;
  sharedInstance_sSharedInstance_0 = v0;
}

- (void)dealloc
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIViewController *)self->_presentedViewController setAlertDelegate:0];
  }

  v3.receiver = self;
  v3.super_class = CKAdaptivePresentationController;
  [(CKAdaptivePresentationController *)&v3 dealloc];
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  presentationHandler = self->_presentationHandler;
  if (presentationHandler)
  {
    presentationHandler[2](presentationHandler, rect, view);
  }
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  currentPresentationController = [(CKAdaptivePresentationController *)self currentPresentationController];

  v5 = popoverCopy;
  if (currentPresentationController == popoverCopy)
  {
    dismissalHandler = self->_dismissalHandler;
    if (dismissalHandler)
    {
      dismissalHandler[2](dismissalHandler, popoverCopy);
    }

    [(CKAdaptivePresentationController *)self _cleanup];
    v5 = popoverCopy;
  }
}

- (void)_presentViewController:(id)controller fromViewController:(id)viewController presentationHandler:(id)handler barButtonItemPresentationHandler:(id)presentationHandler dismissalHandler:(id)dismissalHandler animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  handlerCopy = handler;
  presentationHandlerCopy = presentationHandler;
  dismissalHandlerCopy = dismissalHandler;
  completionCopy = completion;
  presentedViewController = [(CKAdaptivePresentationController *)self presentedViewController];

  if (presentedViewController == controllerCopy)
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Attempting to present the same view controller that is already being presented", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    presentedViewController2 = [(CKAdaptivePresentationController *)self presentedViewController];

    if (presentedViewController2)
    {
      [(CKAdaptivePresentationController *)self dismissViewControllerAnimated:0 completion:0];
    }

    [(CKAdaptivePresentationController *)self setPresentedViewController:controllerCopy];
    [(CKAdaptivePresentationController *)self setPresentationHandler:handlerCopy];
    [(CKAdaptivePresentationController *)self setDismissalHandler:dismissalHandlerCopy];
    if (objc_opt_respondsToSelector())
    {
      forceWindowedPresentation = [controllerCopy forceWindowedPresentation];
    }

    else
    {
      forceWindowedPresentation = 0;
    }

    v25 = +[CKUIBehavior sharedBehaviors];
    if ([v25 canPresentOverKeyboard] && (objc_msgSend(controllerCopy, "wantsWindowedPresentation") & 1) != 0)
    {
      forceWindowedPresentation = 1;
    }

    v68 = viewControllerCopy;

    preserveModalPresentationStyle = [controllerCopy preserveModalPresentationStyle];
    if (objc_opt_respondsToSelector())
    {
      v27 = [controllerCopy constrainToPresentingVCBounds] ^ 1;
    }

    else
    {
      v27 = 1;
    }

    v66 = animatedCopy;
    v67 = presentationHandlerCopy;
    if (preserveModalPresentationStyle)
    {
      popoverPresentationController = 0;
    }

    else
    {
      [controllerCopy setModalPresentationStyle:7];
      popoverPresentationController = [controllerCopy popoverPresentationController];
      [popoverPresentationController setDelegate:self];
      if ((forceWindowedPresentation & 1) == 0)
      {
        if (handlerCopy)
        {
          v29 = *(MEMORY[0x1E695F058] + 16);
          *buf = *MEMORY[0x1E695F058];
          v72 = v29;
          v70 = 0;
          handlerCopy[2](handlerCopy, buf, &v70);
          v30 = v70;
          [popoverPresentationController setSourceView:v30];
          [popoverPresentationController setSourceRect:{*buf, *&buf[8], v72}];
        }

        if (presentationHandlerCopy)
        {
          v69 = 0;
          presentationHandlerCopy[2](presentationHandlerCopy, &v69);
          v31 = v69;
          [popoverPresentationController setBarButtonItem:v31];
        }
      }
    }

    [(CKAdaptivePresentationController *)self setCurrentPresentationController:popoverPresentationController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [controllerCopy setAlertDelegate:self];
    }

    if (forceWindowedPresentation)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allowsRotation = [controllerCopy allowsRotation];
      }

      else
      {
        allowsRotation = 0;
      }

      v65 = dismissalHandlerCopy;
      if (v27)
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen bounds];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = v68;
      }

      else
      {
        mainScreen = [MEMORY[0x1E69DD2E8] keyWindow];
        v41 = v68;
        view = [v68 view];
        [view bounds];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        view2 = [v68 view];
        [mainScreen convertRect:view2 fromView:{v44, v46, v48, v50}];
        v34 = v52;
        v36 = v53;
        v38 = v54;
        v40 = v55;
      }

      v56 = [CKPresentationControllerWindow alloc];
      view3 = [v41 view];
      window = [view3 window];
      windowScene = [window windowScene];
      v60 = [(CKPresentationControllerWindow *)v56 initWithWindowScene:windowScene allowsRotation:allowsRotation allowsStatusBarChanges:0 restrictedToPortraitOrientation:0];

      [(CKPresentationControllerWindow *)v60 setFrame:v34, v36, v38, v40];
      [(CKAdaptivePresentationController *)self setPresentationWindow:v60];
      v61 = objc_opt_respondsToSelector();
      shouldHidePresentingWindow = 0;
      if (v61)
      {
        shouldHidePresentingWindow = [controllerCopy shouldHidePresentingWindow];
      }

      [(CKPresentationControllerWindow *)v60 setHidden:shouldHidePresentingWindow];
      rootViewController = [(CKPresentationControllerWindow *)v60 rootViewController];
      [rootViewController presentViewController:controllerCopy animated:v66 completion:completionCopy];

      presentationHandlerCopy = v67;
      viewControllerCopy = v68;
      dismissalHandlerCopy = v65;
    }

    else
    {
      viewControllerCopy = v68;
      [v68 presentViewController:controllerCopy animated:v66 completion:completionCopy];
    }
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(CKAdaptivePresentationController *)self presentedViewController];
  if (presentedViewController && (v8 = presentedViewController, -[CKAdaptivePresentationController presentedViewController](self, "presentedViewController"), v9 = objc_claimAutoreleasedReturnValue(), [v9 presentingViewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
  {
    presentedViewController2 = [(CKAdaptivePresentationController *)self presentedViewController];
    presentingViewController = [presentedViewController2 presentingViewController];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __77__CKAdaptivePresentationController_dismissViewControllerAnimated_completion___block_invoke;
    v16 = &unk_1E72EE5D8;
    selfCopy = self;
    v18 = completionCopy;
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:&v13];

    [(CKAdaptivePresentationController *)self setPresentedViewController:0, v13, v14, v15, v16];
  }

  else
  {
    [(CKAdaptivePresentationController *)self _cleanup];
  }
}

uint64_t __77__CKAdaptivePresentationController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4 = v3[5];
  if (v4)
  {
    (*(v4 + 16))(v3[5], 0);
    v3 = *(a1 + 32);
  }

  return [v3 _cleanup];
}

- (void)_cleanup
{
  [(CKAdaptivePresentationController *)self setPresentedViewController:0];
  [(CKAdaptivePresentationController *)self setCurrentPresentationController:0];
  presentationWindow = [(CKAdaptivePresentationController *)self presentationWindow];
  [presentationWindow setHidden:1];

  [(CKAdaptivePresentationController *)self setPresentationWindow:0];
  [(CKAdaptivePresentationController *)self setPresentationHandler:0];

  [(CKAdaptivePresentationController *)self setDismissalHandler:0];
}

@end