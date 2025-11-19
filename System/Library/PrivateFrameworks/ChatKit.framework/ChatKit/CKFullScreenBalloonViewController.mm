@interface CKFullScreenBalloonViewController
- (BOOL)forceWindowedPresentation;
- (BOOL)shouldHideBalloonTail;
- (BOOL)shouldShowTapbackAttribution;
- (BOOL)shouldShowTapbackPicker;
- (BOOL)wantsWindowedPresentation;
- (CGRect)preservedBoundsInBalloonWindowAtAppearance;
- (CKFullScreenBalloonViewController)initWithChatItem:(id)a3 delegate:(id)a4;
- (CKFullScreenBalloonViewController)initWithChatItem:(id)a3 displayConfiguration:(id)a4 delegate:(id)a5;
- (CKFullScreenBalloonViewControllerDelegate)delegate;
- (CKMessagePartChatItem)supplementaryLayoutChatItem;
- (id)supplementaryLayoutContext;
- (id)viewToAlignWith;
- (void)_performClosingAnimationsAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 duration:(double)a5 withCompletion:(id)a6;
- (void)addTapRecognizerWithTarget:(id)a3 action:(SEL)a4;
- (void)beginDismissal;
- (void)dealloc;
- (void)dismissImmediatelyWithNoAnimations;
- (void)hideTint:(BOOL)a3 duration:(double)a4;
- (void)performCancelAnimationWithCompletion:(id)a3;
- (void)performClosingAnimationsAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 withCompletion:(id)a5;
- (void)performSendAndCloseAnimationWithCompletion:(id)a3;
- (void)removeTapRecognizer;
- (void)replyButtonPressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CKFullScreenBalloonViewController

- (CKFullScreenBalloonViewController)initWithChatItem:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKFullScreenBalloonViewDisplayConfiguration tapbackPickerContext];
  v9 = [(CKFullScreenBalloonViewController *)self initWithChatItem:v7 displayConfiguration:v8 delegate:v6];

  return v9;
}

- (CKFullScreenBalloonViewController)initWithChatItem:(id)a3 displayConfiguration:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKFullScreenBalloonViewController;
  v12 = [(CKFullScreenBalloonViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_chatItem, a3);
    objc_storeWeak(&v13->_delegate, v11);
    objc_storeStrong(&v13->_displayConfiguration, a4);
  }

  return v13;
}

- (void)dealloc
{
  [(CKFullScreenBalloonViewController *)self removeTapRecognizer];
  v3.receiver = self;
  v3.super_class = CKFullScreenBalloonViewController;
  [(CKFullScreenBalloonViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CKFullScreenBalloonViewController;
  [(CKFullScreenBalloonViewController *)&v19 viewDidLoad];
  v3 = [(CKFullScreenBalloonViewController *)self view];
  [v3 setLayoutMarginsFollowReadableWidth:1];

  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = [(CKFullScreenBalloonViewController *)self view];
  [v5 bounds];
  v6 = [v4 initWithFrame:?];

  [(UIView *)v6 setAutoresizingMask:18];
  v7 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v8 = [v7 tintViewBackgroundColor];
  [(UIView *)v6 setBackgroundColor:v8];

  [(UIView *)v6 setAlpha:0.0];
  tintView = self->_tintView;
  self->_tintView = v6;
  v10 = v6;

  v11 = [(CKFullScreenBalloonViewController *)self view];
  [v11 addSubview:v10];

  v12 = [(CKFullScreenBalloonViewController *)self chatItem];
  v13 = [(CKFullScreenBalloonViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CKFullScreenBalloonViewController *)self delegate];
    v16 = [v15 fullScreenBalloonViewControllerShouldShowReplyButton:self];

    if (v16)
    {
      v17 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      v18 = [v17 shouldShowReplyButton];

      if (v18)
      {
        if ([v12 canInlineReply])
        {
          [(CKFullScreenBalloonViewController *)self setupReplyButton];
        }
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = CKFullScreenBalloonViewController;
  [(CKViewController *)&v8 viewWillAppear:?];
  v5 = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKFullScreenBalloonViewController *)self delegate];
    [v7 fullScreenBalloonViewController:self willAppearAnimated:v3];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = CKFullScreenBalloonViewController;
  [(CKViewController *)&v8 viewDidAppear:?];
  [(CKFullScreenBalloonViewController *)self addTapRecognizerWithTarget:self action:sel_dismissTapGestureRecognized_];
  v5 = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKFullScreenBalloonViewController *)self delegate];
    [v7 fullScreenBalloonViewController:self didAppearAnimated:v3];
  }

  if (![(CKFullScreenBalloonViewController *)self hasPerformedInitialAnimations])
  {
    [(CKFullScreenBalloonViewController *)self performInitialAnimations];
    [(CKFullScreenBalloonViewController *)self setHasPerformedInitialAnimations:1];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKFullScreenBalloonViewController;
  [(CKViewController *)&v4 viewDidDisappear:a3];
  [(CKFullScreenBalloonViewController *)self removeTapRecognizer];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = CKFullScreenBalloonViewController;
  [(CKFullScreenBalloonViewController *)&v2 viewWillLayoutSubviews];
}

- (BOOL)wantsWindowedPresentation
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 fullScreenBalloonWantsWindowedPresentation];
  self->_wantsWindowedPresentation = v4;

  return v4;
}

- (BOOL)forceWindowedPresentation
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 fullScreenBalloonForceWindowedPresentation];

  return v3;
}

- (void)replyButtonPressed:(id)a3
{
  [(CKFullScreenBalloonViewController *)self setWillPresentInlineReplies:1];
  [(CKFullScreenBalloonViewController *)self performCancelAnimationWithCompletion:0];
  v4 = [(CKFullScreenBalloonViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(CKFullScreenBalloonViewController *)self delegate];
    v6 = [(CKFullScreenBalloonViewController *)self chatItem];
    [v7 fullScreenBalloonViewController:self replyButtonPressedForChatItem:v6];
  }
}

- (id)viewToAlignWith
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(CKFullScreenBalloonViewController *)v2 viewToAlignWith];
  }

  return 0;
}

- (void)performClosingAnimationsAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 withCompletion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (void)_performClosingAnimationsAnimated:(BOOL)a3 withSendAnimation:(BOOL)a4 duration:(double)a5 withCompletion:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a6;
  [(CKFullScreenBalloonViewController *)self removeTapRecognizer];
  v11 = [(CKFullScreenBalloonViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CKFullScreenBalloonViewController *)self delegate];
    [v13 fullScreenBalloonViewController:self willDisappearWithSendAnimation:v7 duration:a5];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113__CKFullScreenBalloonViewController__performClosingAnimationsAnimated_withSendAnimation_duration_withCompletion___block_invoke;
  v15[3] = &unk_1E72EBDB8;
  v16 = v10;
  v14 = v10;
  [(CKFullScreenBalloonViewController *)self performClosingAnimationsAnimated:v8 withSendAnimation:v7 withCompletion:v15];
}

uint64_t __113__CKFullScreenBalloonViewController__performClosingAnimationsAnimated_withSendAnimation_duration_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performSendAndCloseAnimationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  [v5 scrollDuration];
  [(CKFullScreenBalloonViewController *)self _performClosingAnimationsAnimated:1 withSendAnimation:1 duration:v4 withCompletion:?];
}

- (void)performCancelAnimationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  [v5 scrollDuration];
  [(CKFullScreenBalloonViewController *)self _performClosingAnimationsAnimated:1 withSendAnimation:0 duration:v4 withCompletion:?];
}

- (void)dismissImmediatelyWithNoAnimations
{
  v3 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  [v3 scrollDuration];
  [(CKFullScreenBalloonViewController *)self _performClosingAnimationsAnimated:0 withSendAnimation:0 duration:0 withCompletion:?];
}

- (void)addTapRecognizerWithTarget:(id)a3 action:(SEL)a4
{
  v6 = MEMORY[0x1E69DD060];
  v7 = a3;
  v8 = [[v6 alloc] initWithTarget:v7 action:a4];

  tapRecognizer = self->_tapRecognizer;
  self->_tapRecognizer = v8;

  [(UIGestureRecognizer *)self->_tapRecognizer setDelegate:self];
  [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:1];
  [(UIGestureRecognizer *)self->_tapRecognizer setDelaysTouchesBegan:1];
  [(UIGestureRecognizer *)self->_tapRecognizer setDelaysTouchesEnded:1];
  [(UIGestureRecognizer *)self->_tapRecognizer setRequiresExclusiveTouchType:0];
  v10 = [(CKFullScreenBalloonViewController *)self tintView];
  [v10 addGestureRecognizer:self->_tapRecognizer];
}

- (void)removeTapRecognizer
{
  if (self->_tapRecognizer)
  {
    v3 = [(CKFullScreenBalloonViewController *)self view];
    [v3 removeGestureRecognizer:self->_tapRecognizer];

    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = 0;
  }
}

- (void)hideTint:(BOOL)a3 duration:(double)a4
{
  if (!a3)
  {
    a4 = 0.0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__CKFullScreenBalloonViewController_hideTint_duration___block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v4 options:0 animations:a4 completion:0.0];
}

void __55__CKFullScreenBalloonViewController_hideTint_duration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tintView];
  [v1 setAlpha:0.0];
}

- (BOOL)shouldShowTapbackAttribution
{
  v3 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v4 = [v3 shouldHideTapbackAttributionAndPicker];

  if (v4)
  {
    return 0;
  }

  v6 = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = [v6 shouldShowTapbackAttributionForFullScreenBalloonViewController:self];

  return v7;
}

- (BOOL)shouldShowTapbackPicker
{
  v3 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v4 = [v3 shouldHideTapbackAttributionAndPicker];

  if (v4)
  {
    return 0;
  }

  v6 = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = [v6 shouldShowTapbackPickerForFullScreenBalloonViewController:self];

  return v7;
}

- (void)beginDismissal
{
  if (![(CKFullScreenBalloonViewController *)self beganDismissing])
  {
    v3 = [(CKFullScreenBalloonViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      [(CKFullScreenBalloonViewController *)self setBeganDismissing:1];
      v5 = [(CKFullScreenBalloonViewController *)self delegate];
      [v5 fullScreenBalloonViewControllerHandleDismissTap:self];
    }
  }
}

- (CKMessagePartChatItem)supplementaryLayoutChatItem
{
  v2 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v3 = [v2 supplementaryLayoutChatItem];

  return v3;
}

- (id)supplementaryLayoutContext
{
  v2 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v3 = [v2 supplementaryLayoutContext];

  return v3;
}

- (BOOL)shouldHideBalloonTail
{
  v2 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  v3 = [v2 shouldHideBalloonTail];

  return v3;
}

- (CKFullScreenBalloonViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)preservedBoundsInBalloonWindowAtAppearance
{
  x = self->_preservedBoundsInBalloonWindowAtAppearance.origin.x;
  y = self->_preservedBoundsInBalloonWindowAtAppearance.origin.y;
  width = self->_preservedBoundsInBalloonWindowAtAppearance.size.width;
  height = self->_preservedBoundsInBalloonWindowAtAppearance.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end