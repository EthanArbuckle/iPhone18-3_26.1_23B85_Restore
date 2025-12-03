@interface CKFullScreenBalloonViewController
- (BOOL)forceWindowedPresentation;
- (BOOL)shouldHideBalloonTail;
- (BOOL)shouldShowTapbackAttribution;
- (BOOL)shouldShowTapbackPicker;
- (BOOL)wantsWindowedPresentation;
- (CGRect)preservedBoundsInBalloonWindowAtAppearance;
- (CKFullScreenBalloonViewController)initWithChatItem:(id)item delegate:(id)delegate;
- (CKFullScreenBalloonViewController)initWithChatItem:(id)item displayConfiguration:(id)configuration delegate:(id)delegate;
- (CKFullScreenBalloonViewControllerDelegate)delegate;
- (CKMessagePartChatItem)supplementaryLayoutChatItem;
- (id)supplementaryLayoutContext;
- (id)viewToAlignWith;
- (void)_performClosingAnimationsAnimated:(BOOL)animated withSendAnimation:(BOOL)animation duration:(double)duration withCompletion:(id)completion;
- (void)addTapRecognizerWithTarget:(id)target action:(SEL)action;
- (void)beginDismissal;
- (void)dealloc;
- (void)dismissImmediatelyWithNoAnimations;
- (void)hideTint:(BOOL)tint duration:(double)duration;
- (void)performCancelAnimationWithCompletion:(id)completion;
- (void)performClosingAnimationsAnimated:(BOOL)animated withSendAnimation:(BOOL)animation withCompletion:(id)completion;
- (void)performSendAndCloseAnimationWithCompletion:(id)completion;
- (void)removeTapRecognizer;
- (void)replyButtonPressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CKFullScreenBalloonViewController

- (CKFullScreenBalloonViewController)initWithChatItem:(id)item delegate:(id)delegate
{
  delegateCopy = delegate;
  itemCopy = item;
  v8 = +[CKFullScreenBalloonViewDisplayConfiguration tapbackPickerContext];
  v9 = [(CKFullScreenBalloonViewController *)self initWithChatItem:itemCopy displayConfiguration:v8 delegate:delegateCopy];

  return v9;
}

- (CKFullScreenBalloonViewController)initWithChatItem:(id)item displayConfiguration:(id)configuration delegate:(id)delegate
{
  itemCopy = item;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = CKFullScreenBalloonViewController;
  v12 = [(CKFullScreenBalloonViewController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_chatItem, item);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_displayConfiguration, configuration);
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
  view = [(CKFullScreenBalloonViewController *)self view];
  [view setLayoutMarginsFollowReadableWidth:1];

  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  view2 = [(CKFullScreenBalloonViewController *)self view];
  [view2 bounds];
  v6 = [v4 initWithFrame:?];

  [(UIView *)v6 setAutoresizingMask:18];
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  tintViewBackgroundColor = [displayConfiguration tintViewBackgroundColor];
  [(UIView *)v6 setBackgroundColor:tintViewBackgroundColor];

  [(UIView *)v6 setAlpha:0.0];
  tintView = self->_tintView;
  self->_tintView = v6;
  v10 = v6;

  view3 = [(CKFullScreenBalloonViewController *)self view];
  [view3 addSubview:v10];

  chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    v16 = [delegate2 fullScreenBalloonViewControllerShouldShowReplyButton:self];

    if (v16)
    {
      displayConfiguration2 = [(CKFullScreenBalloonViewController *)self displayConfiguration];
      shouldShowReplyButton = [displayConfiguration2 shouldShowReplyButton];

      if (shouldShowReplyButton)
      {
        if ([chatItem canInlineReply])
        {
          [(CKFullScreenBalloonViewController *)self setupReplyButton];
        }
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = CKFullScreenBalloonViewController;
  [(CKViewController *)&v8 viewWillAppear:?];
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate2 fullScreenBalloonViewController:self willAppearAnimated:appearCopy];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = CKFullScreenBalloonViewController;
  [(CKViewController *)&v8 viewDidAppear:?];
  [(CKFullScreenBalloonViewController *)self addTapRecognizerWithTarget:self action:sel_dismissTapGestureRecognized_];
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate2 fullScreenBalloonViewController:self didAppearAnimated:appearCopy];
  }

  if (![(CKFullScreenBalloonViewController *)self hasPerformedInitialAnimations])
  {
    [(CKFullScreenBalloonViewController *)self performInitialAnimations];
    [(CKFullScreenBalloonViewController *)self setHasPerformedInitialAnimations:1];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKFullScreenBalloonViewController;
  [(CKViewController *)&v4 viewDidDisappear:disappear];
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
  fullScreenBalloonWantsWindowedPresentation = [v3 fullScreenBalloonWantsWindowedPresentation];
  self->_wantsWindowedPresentation = fullScreenBalloonWantsWindowedPresentation;

  return fullScreenBalloonWantsWindowedPresentation;
}

- (BOOL)forceWindowedPresentation
{
  v2 = +[CKUIBehavior sharedBehaviors];
  fullScreenBalloonForceWindowedPresentation = [v2 fullScreenBalloonForceWindowedPresentation];

  return fullScreenBalloonForceWindowedPresentation;
}

- (void)replyButtonPressed:(id)pressed
{
  [(CKFullScreenBalloonViewController *)self setWillPresentInlineReplies:1];
  [(CKFullScreenBalloonViewController *)self performCancelAnimationWithCompletion:0];
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    chatItem = [(CKFullScreenBalloonViewController *)self chatItem];
    [delegate2 fullScreenBalloonViewController:self replyButtonPressedForChatItem:chatItem];
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

- (void)performClosingAnimationsAnimated:(BOOL)animated withSendAnimation:(BOOL)animation withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)_performClosingAnimationsAnimated:(BOOL)animated withSendAnimation:(BOOL)animation duration:(double)duration withCompletion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  completionCopy = completion;
  [(CKFullScreenBalloonViewController *)self removeTapRecognizer];
  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
    [delegate2 fullScreenBalloonViewController:self willDisappearWithSendAnimation:animationCopy duration:duration];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113__CKFullScreenBalloonViewController__performClosingAnimationsAnimated_withSendAnimation_duration_withCompletion___block_invoke;
  v15[3] = &unk_1E72EBDB8;
  v16 = completionCopy;
  v14 = completionCopy;
  [(CKFullScreenBalloonViewController *)self performClosingAnimationsAnimated:animatedCopy withSendAnimation:animationCopy withCompletion:v15];
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

- (void)performSendAndCloseAnimationWithCompletion:(id)completion
{
  completionCopy = completion;
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  [displayConfiguration scrollDuration];
  [(CKFullScreenBalloonViewController *)self _performClosingAnimationsAnimated:1 withSendAnimation:1 duration:completionCopy withCompletion:?];
}

- (void)performCancelAnimationWithCompletion:(id)completion
{
  completionCopy = completion;
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  [displayConfiguration scrollDuration];
  [(CKFullScreenBalloonViewController *)self _performClosingAnimationsAnimated:1 withSendAnimation:0 duration:completionCopy withCompletion:?];
}

- (void)dismissImmediatelyWithNoAnimations
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  [displayConfiguration scrollDuration];
  [(CKFullScreenBalloonViewController *)self _performClosingAnimationsAnimated:0 withSendAnimation:0 duration:0 withCompletion:?];
}

- (void)addTapRecognizerWithTarget:(id)target action:(SEL)action
{
  v6 = MEMORY[0x1E69DD060];
  targetCopy = target;
  v8 = [[v6 alloc] initWithTarget:targetCopy action:action];

  tapRecognizer = self->_tapRecognizer;
  self->_tapRecognizer = v8;

  [(UIGestureRecognizer *)self->_tapRecognizer setDelegate:self];
  [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:1];
  [(UIGestureRecognizer *)self->_tapRecognizer setDelaysTouchesBegan:1];
  [(UIGestureRecognizer *)self->_tapRecognizer setDelaysTouchesEnded:1];
  [(UIGestureRecognizer *)self->_tapRecognizer setRequiresExclusiveTouchType:0];
  tintView = [(CKFullScreenBalloonViewController *)self tintView];
  [tintView addGestureRecognizer:self->_tapRecognizer];
}

- (void)removeTapRecognizer
{
  if (self->_tapRecognizer)
  {
    view = [(CKFullScreenBalloonViewController *)self view];
    [view removeGestureRecognizer:self->_tapRecognizer];

    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = 0;
  }
}

- (void)hideTint:(BOOL)tint duration:(double)duration
{
  if (!tint)
  {
    duration = 0.0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__CKFullScreenBalloonViewController_hideTint_duration___block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v4 options:0 animations:duration completion:0.0];
}

void __55__CKFullScreenBalloonViewController_hideTint_duration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tintView];
  [v1 setAlpha:0.0];
}

- (BOOL)shouldShowTapbackAttribution
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  shouldHideTapbackAttributionAndPicker = [displayConfiguration shouldHideTapbackAttributionAndPicker];

  if (shouldHideTapbackAttributionAndPicker)
  {
    return 0;
  }

  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = [delegate shouldShowTapbackAttributionForFullScreenBalloonViewController:self];

  return v7;
}

- (BOOL)shouldShowTapbackPicker
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  shouldHideTapbackAttributionAndPicker = [displayConfiguration shouldHideTapbackAttributionAndPicker];

  if (shouldHideTapbackAttributionAndPicker)
  {
    return 0;
  }

  delegate = [(CKFullScreenBalloonViewController *)self delegate];
  v7 = [delegate shouldShowTapbackPickerForFullScreenBalloonViewController:self];

  return v7;
}

- (void)beginDismissal
{
  if (![(CKFullScreenBalloonViewController *)self beganDismissing])
  {
    delegate = [(CKFullScreenBalloonViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      [(CKFullScreenBalloonViewController *)self setBeganDismissing:1];
      delegate2 = [(CKFullScreenBalloonViewController *)self delegate];
      [delegate2 fullScreenBalloonViewControllerHandleDismissTap:self];
    }
  }
}

- (CKMessagePartChatItem)supplementaryLayoutChatItem
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  supplementaryLayoutChatItem = [displayConfiguration supplementaryLayoutChatItem];

  return supplementaryLayoutChatItem;
}

- (id)supplementaryLayoutContext
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  supplementaryLayoutContext = [displayConfiguration supplementaryLayoutContext];

  return supplementaryLayoutContext;
}

- (BOOL)shouldHideBalloonTail
{
  displayConfiguration = [(CKFullScreenBalloonViewController *)self displayConfiguration];
  shouldHideBalloonTail = [displayConfiguration shouldHideBalloonTail];

  return shouldHideBalloonTail;
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