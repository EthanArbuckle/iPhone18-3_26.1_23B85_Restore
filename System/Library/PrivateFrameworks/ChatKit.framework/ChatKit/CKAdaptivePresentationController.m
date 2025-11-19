@interface CKAdaptivePresentationController
+ (id)sharedInstance;
- (void)_cleanup;
- (void)_presentViewController:(id)a3 fromViewController:(id)a4 presentationHandler:(id)a5 barButtonItemPresentationHandler:(id)a6 dismissalHandler:(id)a7 animated:(BOOL)a8 completion:(id)a9;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
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

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  presentationHandler = self->_presentationHandler;
  if (presentationHandler)
  {
    presentationHandler[2](presentationHandler, a4, a5);
  }
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v7 = a3;
  v4 = [(CKAdaptivePresentationController *)self currentPresentationController];

  v5 = v7;
  if (v4 == v7)
  {
    dismissalHandler = self->_dismissalHandler;
    if (dismissalHandler)
    {
      dismissalHandler[2](dismissalHandler, v7);
    }

    [(CKAdaptivePresentationController *)self _cleanup];
    v5 = v7;
  }
}

- (void)_presentViewController:(id)a3 fromViewController:(id)a4 presentationHandler:(id)a5 barButtonItemPresentationHandler:(id)a6 dismissalHandler:(id)a7 animated:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = [(CKAdaptivePresentationController *)self presentedViewController];

  if (v21 == v15)
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Attempting to present the same view controller that is already being presented", buf, 2u);
    }

    if (v20)
    {
      v20[2](v20);
    }
  }

  else
  {
    v22 = [(CKAdaptivePresentationController *)self presentedViewController];

    if (v22)
    {
      [(CKAdaptivePresentationController *)self dismissViewControllerAnimated:0 completion:0];
    }

    [(CKAdaptivePresentationController *)self setPresentedViewController:v15];
    [(CKAdaptivePresentationController *)self setPresentationHandler:v17];
    [(CKAdaptivePresentationController *)self setDismissalHandler:v19];
    if (objc_opt_respondsToSelector())
    {
      v23 = [v15 forceWindowedPresentation];
    }

    else
    {
      v23 = 0;
    }

    v25 = +[CKUIBehavior sharedBehaviors];
    if ([v25 canPresentOverKeyboard] && (objc_msgSend(v15, "wantsWindowedPresentation") & 1) != 0)
    {
      v23 = 1;
    }

    v68 = v16;

    v26 = [v15 preserveModalPresentationStyle];
    if (objc_opt_respondsToSelector())
    {
      v27 = [v15 constrainToPresentingVCBounds] ^ 1;
    }

    else
    {
      v27 = 1;
    }

    v66 = v9;
    v67 = v18;
    if (v26)
    {
      v28 = 0;
    }

    else
    {
      [v15 setModalPresentationStyle:7];
      v28 = [v15 popoverPresentationController];
      [v28 setDelegate:self];
      if ((v23 & 1) == 0)
      {
        if (v17)
        {
          v29 = *(MEMORY[0x1E695F058] + 16);
          *buf = *MEMORY[0x1E695F058];
          v72 = v29;
          v70 = 0;
          v17[2](v17, buf, &v70);
          v30 = v70;
          [v28 setSourceView:v30];
          [v28 setSourceRect:{*buf, *&buf[8], v72}];
        }

        if (v18)
        {
          v69 = 0;
          v18[2](v18, &v69);
          v31 = v69;
          [v28 setBarButtonItem:v31];
        }
      }
    }

    [(CKAdaptivePresentationController *)self setCurrentPresentationController:v28];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 setAlertDelegate:self];
    }

    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v64 = [v15 allowsRotation];
      }

      else
      {
        v64 = 0;
      }

      v65 = v19;
      if (v27)
      {
        v32 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v32 bounds];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = v68;
      }

      else
      {
        v32 = [MEMORY[0x1E69DD2E8] keyWindow];
        v41 = v68;
        v42 = [v68 view];
        [v42 bounds];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v51 = [v68 view];
        [v32 convertRect:v51 fromView:{v44, v46, v48, v50}];
        v34 = v52;
        v36 = v53;
        v38 = v54;
        v40 = v55;
      }

      v56 = [CKPresentationControllerWindow alloc];
      v57 = [v41 view];
      v58 = [v57 window];
      v59 = [v58 windowScene];
      v60 = [(CKPresentationControllerWindow *)v56 initWithWindowScene:v59 allowsRotation:v64 allowsStatusBarChanges:0 restrictedToPortraitOrientation:0];

      [(CKPresentationControllerWindow *)v60 setFrame:v34, v36, v38, v40];
      [(CKAdaptivePresentationController *)self setPresentationWindow:v60];
      v61 = objc_opt_respondsToSelector();
      v62 = 0;
      if (v61)
      {
        v62 = [v15 shouldHidePresentingWindow];
      }

      [(CKPresentationControllerWindow *)v60 setHidden:v62];
      v63 = [(CKPresentationControllerWindow *)v60 rootViewController];
      [v63 presentViewController:v15 animated:v66 completion:v20];

      v18 = v67;
      v16 = v68;
      v19 = v65;
    }

    else
    {
      v16 = v68;
      [v68 presentViewController:v15 animated:v66 completion:v20];
    }
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CKAdaptivePresentationController *)self presentedViewController];
  if (v7 && (v8 = v7, -[CKAdaptivePresentationController presentedViewController](self, "presentedViewController"), v9 = objc_claimAutoreleasedReturnValue(), [v9 presentingViewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
  {
    v11 = [(CKAdaptivePresentationController *)self presentedViewController];
    v12 = [v11 presentingViewController];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __77__CKAdaptivePresentationController_dismissViewControllerAnimated_completion___block_invoke;
    v16 = &unk_1E72EE5D8;
    v17 = self;
    v18 = v6;
    [v12 dismissViewControllerAnimated:v4 completion:&v13];

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
  v3 = [(CKAdaptivePresentationController *)self presentationWindow];
  [v3 setHidden:1];

  [(CKAdaptivePresentationController *)self setPresentationWindow:0];
  [(CKAdaptivePresentationController *)self setPresentationHandler:0];

  [(CKAdaptivePresentationController *)self setDismissalHandler:0];
}

@end