@interface CKComposeNavbarManager
- (CKComposeNavbarManagerDelegate)delegate;
- (UIButton)cancelButton;
- (id)initForBusinessChat:(BOOL)chat;
- (void)_setupAvatarNavBarViewControllerWithConversation:(id)conversation shouldShowBackButtonView:(BOOL)view;
- (void)_setupDefaultNavbarCanvasViewControllerForBusinessChat:(BOOL)chat;
- (void)commitTransitionAnimationWithConversation:(id)conversation shouldShowBackButtonView:(BOOL)view;
- (void)dealloc;
- (void)setCanvasViewControllerDelegate:(id)delegate;
- (void)updateContentsForConversation:(id)conversation;
- (void)updateTitle:(id)title animated:(BOOL)animated;
@end

@implementation CKComposeNavbarManager

- (id)initForBusinessChat:(BOOL)chat
{
  chatCopy = chat;
  v9.receiver = self;
  v9.super_class = CKComposeNavbarManager;
  v4 = [(CKComposeNavbarManager *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(CKComposeNavbarManagerContentView);
    [(CKComposeNavbarManagerContentView *)v5 setAutoresizingMask:18];
    [(CKComposeNavbarManager *)v4 setComposeContentView:v5];
    [(CKComposeNavbarManager *)v4 _setupDefaultNavbarCanvasViewControllerForBusinessChat:chatCopy];
    defaultNavbarCanvasViewController = [(CKComposeNavbarManager *)v4 defaultNavbarCanvasViewController];
    view = [defaultNavbarCanvasViewController view];

    [view setEnforceLeftItemViewsAlignmentToCenter:1];
    [(CKComposeNavbarManagerContentView *)v5 setCanvasView:view];
    [(CKComposeNavbarManagerContentView *)v5 addSubview:view];
  }

  return v4;
}

- (void)dealloc
{
  customStatusBackgroundView = [(CKComposeNavbarManager *)self customStatusBackgroundView];
  [customStatusBackgroundView removeFromSuperview];

  v4.receiver = self;
  v4.super_class = CKComposeNavbarManager;
  [(CKComposeNavbarManager *)&v4 dealloc];
}

- (void)updateContentsForConversation:(id)conversation
{
  conversationCopy = conversation;
  defaultNavbarCanvasViewController = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  [defaultNavbarCanvasViewController updateContentsForConversation:conversationCopy];
}

- (void)updateTitle:(id)title animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  defaultNavbarCanvasViewController = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  [defaultNavbarCanvasViewController updateTitle:titleCopy animated:animatedCopy];
}

- (UIButton)cancelButton
{
  defaultNavbarCanvasViewController = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  cancelButton = [defaultNavbarCanvasViewController cancelButton];

  return cancelButton;
}

- (void)setCanvasViewControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  defaultNavbarCanvasViewController = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  [defaultNavbarCanvasViewController setDelegate:delegateCopy];
}

- (void)_setupDefaultNavbarCanvasViewControllerForBusinessChat:(BOOL)chat
{
  v4 = off_1E72E4AF0;
  if (!chat)
  {
    v4 = off_1E72E4AF8;
  }

  v5 = objc_alloc_init(*v4);
  [(CKComposeNavbarManager *)self setDefaultNavbarCanvasViewController:v5];
}

- (void)_setupAvatarNavBarViewControllerWithConversation:(id)conversation shouldShowBackButtonView:(BOOL)view
{
  viewCopy = view;
  conversationCopy = conversation;
  v7 = [[CKNavbarCanvasViewController alloc] initWithConversation:conversationCopy navigationController:0];

  [(CKNavbarCanvasViewController *)v7 setCanShowBackButtonView:viewCopy];
  [(CKComposeNavbarManager *)self setAvatarNavbarCanvasViewController:v7];
}

- (void)commitTransitionAnimationWithConversation:(id)conversation shouldShowBackButtonView:(BOOL)view
{
  viewCopy = view;
  conversationCopy = conversation;
  [(CKComposeNavbarManager *)self _setupAvatarNavBarViewControllerWithConversation:conversationCopy shouldShowBackButtonView:viewCopy];
  avatarNavbarCanvasViewController = [(CKComposeNavbarManager *)self avatarNavbarCanvasViewController];
  defaultNavbarCanvasViewController = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  delegate = [defaultNavbarCanvasViewController delegate];
  [avatarNavbarCanvasViewController setDelegate:delegate];

  defaultNavbarCanvasViewController2 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
  view = [defaultNavbarCanvasViewController2 view];

  avatarNavbarCanvasViewController2 = [(CKComposeNavbarManager *)self avatarNavbarCanvasViewController];
  view2 = [avatarNavbarCanvasViewController2 view];

  composeContentView = [(CKComposeNavbarManager *)self composeContentView];
  [composeContentView setCanvasView:view2];

  if ([conversationCopy isBusinessConversation])
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    theme = [v15 theme];
    chat = [conversationCopy chat];
    v18 = [theme primaryBrandColorForBusinessChat:chat];
    [view2 setBackgroundColor:v18];

    [view2 setAlpha:1.0];
    v19 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v19 theme];
    chat2 = [conversationCopy chat];
    v22 = [theme2 secondaryBrandColorForBusinessChat:chat2];
    [view2 setTintColor:v22];

    avatarNavbarCanvasViewController3 = [(CKComposeNavbarManager *)self avatarNavbarCanvasViewController];
    conversationIdentityView = [avatarNavbarCanvasViewController3 conversationIdentityView];
    v25 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v25 theme];
    [conversationCopy chat];
    v27 = v70 = view;
    [conversationIdentityView setStyle:{objc_msgSend(theme3, "navBarTextStyleForBusinessChat:", v27)}];

    v28 = objc_alloc(MEMORY[0x1E69DD250]);
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    keyWindow = [mEMORY[0x1E69DC668] keyWindow];
    [keyWindow frame];
    v32 = v31;
    contentView = [(CKComposeNavbarManager *)self contentView];
    [contentView frame];
    v35 = v32 - v34;
    contentView2 = [(CKComposeNavbarManager *)self contentView];
    [contentView2 frame];
    v38 = v37;
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668]2 statusBarFrame];
    v40 = [v28 initWithFrame:{v35, 0.0, v38}];
    customStatusBackgroundView = self->_customStatusBackgroundView;
    self->_customStatusBackgroundView = v40;

    v42 = v40;
    v43 = +[CKUIBehavior sharedBehaviors];
    theme4 = [v43 theme];
    chat3 = [conversationCopy chat];
    v46 = [theme4 primaryBrandColorForBusinessChat:chat3];
    [(UIView *)v42 setBackgroundColor:v46];

    view = v70;
    [(UIView *)v42 setAlpha:0.0];
    [(UIView *)v42 setAccessibilityIgnoresInvertColors:1];
    mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
    keyWindow2 = [mEMORY[0x1E69DC668]3 keyWindow];
    [keyWindow2 addSubview:v42];

    avatarNavbarCanvasViewController4 = [(CKComposeNavbarManager *)self avatarNavbarCanvasViewController];
    [avatarNavbarCanvasViewController4 updateTitle:&stru_1F04268F8 animated:0];

    defaultNavbarCanvasViewController3 = [(CKComposeNavbarManager *)self defaultNavbarCanvasViewController];
    [defaultNavbarCanvasViewController3 updateTitle:&stru_1F04268F8 animated:0];
  }

  else
  {
    v42 = 0;
  }

  contentView3 = [(CKComposeNavbarManager *)self contentView];
  [contentView3 insertSubview:view2 belowSubview:view];

  contentView4 = [(CKComposeNavbarManager *)self contentView];
  [contentView4 bounds];
  [view2 setFrame:?];

  v53 = +[CKUIBehavior sharedBehaviors];
  [v53 sendAnimationDuration];
  v55 = v54 * 0.5;

  if ([conversationCopy isBusinessConversation])
  {
    leftItemView = [view2 leftItemView];
    [leftItemView setAlpha:0.0];

    rightItemView = [view2 rightItemView];
    [rightItemView setAlpha:0.0];

    [view2 setAlpha:0.0];
    v58 = MEMORY[0x1E69DD250];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke;
    v80[3] = &unk_1E72EB880;
    v59 = &v81;
    v81 = v42;
    v60 = v82;
    v82[0] = view;
    v82[1] = self;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_2;
    v77[3] = &unk_1E72EEA08;
    v61 = &v78;
    v62 = v79;
    v78 = v82[0];
    v79[0] = view2;
    *&v79[1] = v55;
    v63 = view2;
    v64 = v42;
    v65 = v80;
    v66 = v77;
  }

  else
  {
    [view2 setAlpha:0.0];
    v58 = MEMORY[0x1E69DD250];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __93__CKComposeNavbarManager_commitTransitionAnimationWithConversation_shouldShowBackButtonView___block_invoke_4;
    v74[3] = &unk_1E72EB880;
    v59 = &v75;
    v75 = v42;
    v60 = v76;
    v76[0] = view;
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
    v73[0] = view2;
    v68 = view2;
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