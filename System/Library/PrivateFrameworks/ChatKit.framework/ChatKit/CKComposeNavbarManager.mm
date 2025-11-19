@interface CKComposeNavbarManager
- (CKComposeNavbarManagerDelegate)delegate;
- (UIButton)cancelButton;
- (id)initForBusinessChat:(BOOL)a3;
- (void)_setupAvatarNavBarViewControllerWithConversation:(id)a3 shouldShowBackButtonView:(BOOL)a4;
- (void)_setupDefaultNavbarCanvasViewControllerForBusinessChat:(BOOL)a3;
- (void)commitTransitionAnimationWithConversation:(id)a3 shouldShowBackButtonView:(BOOL)a4;
- (void)dealloc;
- (void)setCanvasViewControllerDelegate:(id)a3;
- (void)updateContentsForConversation:(id)a3;
- (void)updateTitle:(id)a3 animated:(BOOL)a4;
@end

@implementation CKComposeNavbarManager

- (id)initForBusinessChat:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = CKComposeNavbarManager;
  v4 = [(CKComposeNavbarManager *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(CKComposeNavbarManagerContentView);
    [(CKComposeNavbarManagerContentView *)v5 setAutoresizingMask:18];
    [(CKComposeNavbarManager *)v4 setComposeContentView:v5];
    [(CKComposeNavbarManager *)v4 _setupDefaultNavbarCanvasViewControllerForBusinessChat:v3];
    v6 = [(CKComposeNavbarManager *)v4 defaultNavbarCanvasViewController];
    v7 = [v6 view];

    [v7 setEnforceLeftItemViewsAlignmentToCenter:1];
    [(CKComposeNavbarManagerContentView *)v5 setCanvasView:v7];
    [(CKComposeNavbarManagerContentView *)v5 addSubview:v7];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(CKComposeNavbarManager *)self customStatusBackgroundView];
  [v3 removeFromSuperview];

  v4.receiver = self;
  v4.super_class = CKComposeNavbarManager;
  [(CKComposeNavbarManager *)&v4 dealloc];
}

- (void)updateContentsForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  [v5 updateContentsForConversation:v4];
}

- (void)updateTitle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  [v7 updateTitle:v6 animated:v4];
}

- (UIButton)cancelButton
{
  v2 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  v3 = [v2 cancelButton];

  return v3;
}

- (void)setCanvasViewControllerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  [v5 setDelegate:v4];
}

- (void)_setupDefaultNavbarCanvasViewControllerForBusinessChat:(BOOL)a3
{
  v4 = off_1E72E4AF0;
  if (!a3)
  {
    v4 = off_1E72E4AF8;
  }

  v5 = objc_alloc_init(*v4);
  [(CKComposeNavbarManager *)self setDefaultNavbarCanvasViewController:v5];
}

- (void)_setupAvatarNavBarViewControllerWithConversation:(id)a3 shouldShowBackButtonView:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[CKNavbarCanvasViewController alloc] initWithConversation:v6 navigationController:0];

  [(CKNavbarCanvasViewController *)v7 setCanShowBackButtonView:v4];
  [(CKComposeNavbarManager *)self setAvatarNavbarCanvasViewController:v7];
}

- (void)commitTransitionAnimationWithConversation:(id)a3 shouldShowBackButtonView:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CKComposeNavbarManager *)self _setupAvatarNavBarViewControllerWithConversation:v6 shouldShowBackButtonView:v4];
  v7 = [(CKComposeNavbarManager *)self avatarNavbarCanvasViewController];
  v8 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  v9 = [v8 delegate];
  [v7 setDelegate:v9];

  v10 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  v11 = [v10 view];

  v12 = [(CKComposeNavbarManager *)self avatarNavbarCanvasViewController];
  v13 = [v12 view];

  v14 = [(CKComposeNavbarManager *)self composeContentView];
  [v14 setCanvasView:v13];

  if ([v6 isBusinessConversation])
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    v16 = [v15 theme];
    v17 = [v6 chat];
    v18 = [v16 primaryBrandColorForBusinessChat:v17];
    [v13 setBackgroundColor:v18];

    [v13 setAlpha:1.0];
    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 theme];
    v21 = [v6 chat];
    v22 = [v20 secondaryBrandColorForBusinessChat:v21];
    [v13 setTintColor:v22];

    v23 = [(CKComposeNavbarManager *)self avatarNavbarCanvasViewController];
    v24 = [v23 conversationIdentityView];
    v25 = +[CKUIBehavior sharedBehaviors];
    v26 = [v25 theme];
    [v6 chat];
    v27 = v70 = v11;
    [v24 setStyle:{objc_msgSend(v26, "navBarTextStyleForBusinessChat:", v27)}];

    v28 = objc_alloc(MEMORY[0x1E69DD250]);
    v29 = [MEMORY[0x1E69DC668] sharedApplication];
    v30 = [v29 keyWindow];
    [v30 frame];
    v32 = v31;
    v33 = [(CKComposeNavbarManager *)self contentView];
    [v33 frame];
    v35 = v32 - v34;
    v36 = [(CKComposeNavbarManager *)self contentView];
    [v36 frame];
    v38 = v37;
    v39 = [MEMORY[0x1E69DC668] sharedApplication];
    [v39 statusBarFrame];
    v40 = [v28 initWithFrame:{v35, 0.0, v38}];
    customStatusBackgroundView = self->_customStatusBackgroundView;
    self->_customStatusBackgroundView = v40;

    v42 = v40;
    v43 = +[CKUIBehavior sharedBehaviors];
    v44 = [v43 theme];
    v45 = [v6 chat];
    v46 = [v44 primaryBrandColorForBusinessChat:v45];
    [(UIView *)v42 setBackgroundColor:v46];

    v11 = v70;
    [(UIView *)v42 setAlpha:0.0];
    [(UIView *)v42 setAccessibilityIgnoresInvertColors:1];
    v47 = [MEMORY[0x1E69DC668] sharedApplication];
    v48 = [v47 keyWindow];
    [v48 addSubview:v42];

    v49 = [(CKComposeNavbarManager *)self avatarNavbarCanvasViewController];
    [v49 updateTitle:&stru_1F04268F8 animated:0];

    v50 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
    [v50 updateTitle:&stru_1F04268F8 animated:0];
  }

  else
  {
    v42 = 0;
  }

  v51 = [(CKComposeNavbarManager *)self contentView];
  [v51 insertSubview:v13 belowSubview:v11];

  v52 = [(CKComposeNavbarManager *)self contentView];
  [v52 bounds];
  [v13 setFrame:?];

  v53 = +[CKUIBehavior sharedBehaviors];
  [v53 sendAnimationDuration];
  v55 = v54 * 0.5;

  if ([v6 isBusinessConversation])
  {
    v56 = [v13 leftItemView];
    [v56 setAlpha:0.0];

    v57 = [v13 rightItemView];
    [v57 setAlpha:0.0];

    [v13 setAlpha:0.0];
    v58 = MEMORY[0x1E69DD250];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke;
    v80[3] = &unk_1E72EB880;
    v59 = &v81;
    v81 = v42;
    v60 = v82;
    v82[0] = v11;
    v82[1] = self;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_2;
    v77[3] = &unk_1E72EEA08;
    v61 = &v78;
    v62 = v79;
    v78 = v82[0];
    v79[0] = v13;
    *&v79[1] = v55;
    v63 = v13;
    v64 = v42;
    v65 = v80;
    v66 = v77;
  }

  else
  {
    [v13 setAlpha:0.0];
    v58 = MEMORY[0x1E69DD250];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_4;
    v74[3] = &unk_1E72EB880;
    v59 = &v75;
    v75 = v42;
    v60 = v76;
    v76[0] = v11;
    v76[1] = self;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_5;
    v71[3] = &unk_1E72EEA08;
    v61 = &v72;
    v67 = v76[0];
    *&v73[1] = v55;
    v62 = v73;
    v72 = v67;
    v73[0] = v13;
    v68 = v13;
    v69 = v42;
    v65 = v74;
    v66 = v71;
  }

  [v58 animateWithDuration:v65 animations:v66 completion:v55];
}

void __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setAlpha:1.0];
  }

  v3 = [*(a1 + 40) leftItemView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 40) rightItemView];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 48) delegate];
  [v5 navbarManagerIsAnimatingNavbarTransition:*(a1 + 48)];
}

void __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) setAlpha:1.0];
  v2 = MEMORY[0x1E69DD250];
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_3;
  v4[3] = &unk_1E72EBA18;
  v5 = *(a1 + 40);
  [v2 animateWithDuration:v4 animations:v3];
}

void __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) leftItemView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) rightItemView];
  [v3 setAlpha:1.0];
}

void __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setAlpha:1.0];
  }

  [*(a1 + 40) setAlpha:0.0];
  v3 = [*(a1 + 48) delegate];
  [v3 navbarManagerIsAnimatingNavbarTransition:*(a1 + 48)];
}

void __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = MEMORY[0x1E69DD250];
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_6;
  v4[3] = &unk_1E72EBA18;
  v5 = *(a1 + 40);
  [v2 animateWithDuration:v4 animations:v3];
}

- (CKComposeNavbarManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end