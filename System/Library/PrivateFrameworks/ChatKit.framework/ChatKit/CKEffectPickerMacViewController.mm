@interface CKEffectPickerMacViewController
- (BOOL)effectSelectionViewController:(id)controller didSelectEffectWithIdentifier:(id)identifier;
- (BOOL)effectShouldDisplayOverBalloon:(id)balloon;
- (CGPoint)balloonViewOrigin;
- (CKEffectPickerMacViewController)initWithComposition:(id)composition balloonViewOrigin:(CGPoint)origin color:(char)color gradientReferenceView:(id)view;
- (CKEffectPickerMacViewController)initWithEntryView:(id)view balloonViewOrigin:(CGPoint)origin color:(char)color gradientReferenceView:(id)referenceView isInlineReply:(BOOL)reply;
- (CKEffectPickerViewControllerDelegate)delegate;
- (CKGradientReferenceView)gradientReferenceView;
- (CKMessageEntryView)entryView;
- (UIView)effectsPresentingView;
- (UIViewController)effectsPresentingViewController;
- (id)_defaultSendAnimationContextForAnimationPreview;
- (id)createSendButton;
- (id)keyCommands;
- (void)_layoutBalloonView;
- (void)_updateConstraintsWithSafeAreaInsets:(UIEdgeInsets)insets;
- (void)closeButtonPressed:(id)pressed;
- (void)createBalloonView;
- (void)createTranscriptBlurBackground;
- (void)didUpdateMaxCellHeight:(double)height;
- (void)placeBalloonContainer:(id)container;
- (void)placeSendButton;
- (void)showCloseButton;
- (void)startAnimationPreviewForIdentifier:(id)identifier;
- (void)touchUpInsideSendButton:(id)button;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKEffectPickerMacViewController

- (CKEffectPickerMacViewController)initWithComposition:(id)composition balloonViewOrigin:(CGPoint)origin color:(char)color gradientReferenceView:(id)view
{
  y = origin.y;
  x = origin.x;
  compositionCopy = composition;
  viewCopy = view;
  v19.receiver = self;
  v19.super_class = CKEffectPickerMacViewController;
  v14 = [(CKEffectPickerMacViewController *)&v19 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_composition, composition);
    v15->_balloonViewOrigin.x = x;
    v15->_balloonViewOrigin.y = y;
    v15->_color = color;
    objc_storeWeak(&v15->_gradientReferenceView, viewCopy);
    v15->_hasSelectedDefaultEffect = 0;
    v16 = objc_alloc_init(CKFullScreenEffectManager);
    fsem = v15->_fsem;
    v15->_fsem = v16;

    v15->_showingInStandAloneWindow = 0;
    v15->_isInlineReply = 0;
  }

  return v15;
}

- (CKEffectPickerMacViewController)initWithEntryView:(id)view balloonViewOrigin:(CGPoint)origin color:(char)color gradientReferenceView:(id)referenceView isInlineReply:(BOOL)reply
{
  y = origin.y;
  x = origin.x;
  viewCopy = view;
  referenceViewCopy = referenceView;
  v20.receiver = self;
  v20.super_class = CKEffectPickerMacViewController;
  v15 = [(CKEffectPickerMacViewController *)&v20 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_entryView, viewCopy);
    v16->_balloonViewOrigin.x = x;
    v16->_balloonViewOrigin.y = y;
    v16->_color = color;
    objc_storeWeak(&v16->_gradientReferenceView, referenceViewCopy);
    v16->_hasSelectedDefaultEffect = 0;
    v17 = objc_alloc_init(CKFullScreenEffectManager);
    fsem = v16->_fsem;
    v16->_fsem = v17;

    v16->_showingInStandAloneWindow = 0;
    v16->_isInlineReply = reply;
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerMacViewController;
  [(CKEffectPickerMacViewController *)&v5 viewWillAppear:appear];
  if (![(CKEffectPickerMacViewController *)self hasSelectedDefaultEffect])
  {
    [(CKEffectPickerMacViewController *)self setHasSelectedDefaultEffect:1];
    selectionViewController = [(CKEffectPickerMacViewController *)self selectionViewController];
    [selectionViewController setSelectedEffectIdentifier:@"com.apple.messages.effect.CKHeartEffect"];

    [(CKEffectPickerMacViewController *)self setEffectIdentifier:@"com.apple.messages.effect.CKHeartEffect"];
  }
}

- (void)viewDidLoad
{
  v73[4] = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = CKEffectPickerMacViewController;
  [(CKEffectPickerMacViewController *)&v71 viewDidLoad];
  [(CKEffectPickerMacViewController *)self createTranscriptBlurBackground];
  [(CKEffectPickerMacViewController *)self createBalloonView];
  v3 = +[CKUIBehavior sharedBehaviors];
  effectPickerPresentsSelectionView = [v3 effectPickerPresentsSelectionView];

  v5 = 0x1E695D000;
  if ((effectPickerPresentsSelectionView & 1) == 0)
  {
    v6 = objc_alloc_init(CKEffectSelectionViewController);
    [(CKEffectSelectionViewController *)v6 setDelegate:self];
    view = [(CKEffectSelectionViewController *)v6 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    [(CKEffectPickerMacViewController *)self addChildViewController:v6];
    contentView = [(CKEffectPickerMacViewController *)self contentView];
    view2 = [(CKEffectSelectionViewController *)v6 view];
    [contentView addSubview:view2];

    view3 = [(CKEffectSelectionViewController *)v6 view];
    heightAnchor = [view3 heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:15.0];
    [(CKEffectPickerMacViewController *)self setHeightConstraint:v12];

    v61 = MEMORY[0x1E696ACD8];
    view4 = [(CKEffectSelectionViewController *)v6 view];
    leadingAnchor = [view4 leadingAnchor];
    contentView2 = [(CKEffectPickerMacViewController *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v73[0] = v63;
    view5 = [(CKEffectSelectionViewController *)v6 view];
    trailingAnchor = [view5 trailingAnchor];
    contentView3 = [(CKEffectPickerMacViewController *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v73[1] = v13;
    view6 = [(CKEffectSelectionViewController *)v6 view];
    bottomAnchor = [view6 bottomAnchor];
    contentView4 = [(CKEffectPickerMacViewController *)self contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:15.0 + -18.0];
    v73[2] = v18;
    heightConstraint = [(CKEffectPickerMacViewController *)self heightConstraint];
    v73[3] = heightConstraint;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    [v61 activateConstraints:v20];

    [(CKEffectSelectionViewController *)v6 didMoveToParentViewController:self];
    [(CKEffectPickerMacViewController *)self setSelectionViewController:v6];

    v5 = 0x1E695D000uLL;
  }

  v21 = objc_alloc_init(CKEffectPreviewCollectionViewController);
  contentView5 = [(CKEffectPickerMacViewController *)self contentView];
  view7 = [(CKEffectPreviewCollectionViewController *)v21 view];
  [contentView5 addSubview:view7];

  [(CKEffectPickerMacViewController *)self addChildViewController:v21];
  view8 = [(CKEffectPreviewCollectionViewController *)v21 view];
  contentView6 = [(CKEffectPickerMacViewController *)self contentView];
  [view8 __ck_makeEdgesEqualToHorizontalSafeArea:contentView6];

  [(CKEffectPreviewCollectionViewController *)v21 didMoveToParentViewController:self];
  [(CKEffectPreviewCollectionViewController *)v21 setDelegate:self];
  v70 = v21;
  view9 = [(CKEffectPreviewCollectionViewController *)v21 view];
  [view9 setUserInteractionEnabled:0];

  view10 = [(CKEffectPreviewCollectionViewController *)v21 view];
  [view10 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(CKEffectPreviewCollectionViewController *)v21 displayEffectWithIdentifier:0];
  [(CKEffectPickerMacViewController *)self setEffectCollectionViewController:v21];
  v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v29 = CKFrameworkBundle();
  v30 = [v29 localizedStringForKey:@"EFFECT_PICKER_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  [v28 setText:v30];

  v31 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v28 setFont:v31];

  [v28 sizeToFit];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKEffectPickerMacViewController *)self setTitleLabel:v28];
  v68 = [MEMORY[0x1E69DC730] effectWithStyle:18];
  v66 = [MEMORY[0x1E69DD248] effectForBlurEffect:v68];
  [(CKEffectPickerMacViewController *)self setTitleVibrancyEffect:v66];
  v32 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v66];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView7 = [v32 contentView];
  [contentView7 addSubview:v28];

  [(CKEffectPickerMacViewController *)self setTitleContainerView:v32];
  contentView8 = [(CKEffectPickerMacViewController *)self contentView];
  [contentView8 addSubview:v32];

  contentView9 = [v32 contentView];
  [contentView9 __ck_makeEdgesEqualToHorizontalSafeArea:v28];

  v36 = +[CKUIBehavior sharedBehaviors];
  [v36 macAppKitToolbarHeight];
  v38 = v37;

  [v28 bounds];
  if (v39 >= v38)
  {
    v40 = v38 * 0.5;
  }

  else
  {
    v40 = v38 * 0.5 - v39 * 0.5;
  }

  leadingAnchor3 = [v32 leadingAnchor];
  contentView10 = [(CKEffectPickerMacViewController *)self contentView];
  leadingAnchor4 = [contentView10 leadingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [(CKEffectPickerMacViewController *)self setTitleLeadingConstraint:v44];

  v45 = MEMORY[0x1E696ACD8];
  titleLeadingConstraint = [(CKEffectPickerMacViewController *)self titleLeadingConstraint];
  v72[0] = titleLeadingConstraint;
  topAnchor = [v32 topAnchor];
  contentView11 = [(CKEffectPickerMacViewController *)self contentView];
  topAnchor2 = [contentView11 topAnchor];
  v50 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v40];
  v72[1] = v50;
  v51 = [*(v5 + 3784) arrayWithObjects:v72 count:2];
  [v45 activateConstraints:v51];

  createSendButton = [(CKEffectPickerMacViewController *)self createSendButton];
  [(CKEffectPickerMacViewController *)self setSendButton:createSendButton];

  contentView12 = [(CKEffectPickerMacViewController *)self contentView];
  sendButton = [(CKEffectPickerMacViewController *)self sendButton];
  [contentView12 addSubview:sendButton];

  [(CKEffectPickerMacViewController *)self placeSendButton];
  v55 = objc_alloc_init(MEMORY[0x1E69DD250]);
  contentView13 = [(CKEffectPickerMacViewController *)self contentView];
  [contentView13 addSubview:v55];

  [(CKEffectPickerMacViewController *)self placeBalloonContainer:v55];
  v57 = objc_alloc_init(CKChatControllerDummyAnimator);
  [(CKEffectPickerMacViewController *)self setDummyAnimator:v57];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKEffectPickerMacViewController;
  [(CKEffectPickerMacViewController *)&v3 viewDidLayoutSubviews];
  [(CKBalloonView *)self->_balloonView prepareForDisplay];
  [(CKBalloonView *)self->_balloonView setNeedsLayout];
  [(CKBalloonView *)self->_balloonView setNeedsDisplay];
  [(CKBalloonView *)self->_balloonView layoutIfNeeded];
  [(CKEffectPickerMacViewController *)self _layoutBalloonView];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = CKEffectPickerMacViewController;
  [(CKEffectPickerMacViewController *)&v4 viewSafeAreaInsetsDidChange];
  view = [(CKEffectPickerMacViewController *)self view];
  [view safeAreaInsets];
  [(CKEffectPickerMacViewController *)self _updateConstraintsWithSafeAreaInsets:?];
}

- (void)_updateConstraintsWithSafeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 macEffectPickerTitleLeadingPadding];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 macEffectPickerTitleLeadingPadding];
  v13 = v12;

  v14 = 0.0;
  if ([(CKEffectPickerMacViewController *)self showingInStandAloneWindow])
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 macToolbarStoplightButtonsLeadingPadding];
    v14 = v16;
  }

  v17 = left + v10;
  closeButtonLeadingConstraint = [(CKEffectPickerMacViewController *)self closeButtonLeadingConstraint];
  [closeButtonLeadingConstraint setConstant:v17];

  titleLeadingConstraint = [(CKEffectPickerMacViewController *)self titleLeadingConstraint];
  [titleLeadingConstraint setConstant:v17 + v14];

  sendButtonTrailingConstraint = [(CKEffectPickerMacViewController *)self sendButtonTrailingConstraint];
  [sendButtonTrailingConstraint setConstant:-right - v13];

  selectionViewController = [(CKEffectPickerMacViewController *)self selectionViewController];
  [selectionViewController updateContentInsets:{top, left, bottom, right}];
}

- (void)createTranscriptBlurBackground
{
  v33[4] = *MEMORY[0x1E69E9840];
  v3 = [CKEffectPickerBackgroundView alloc];
  view = [(CKEffectPickerMacViewController *)self view];
  [view bounds];
  v32 = [(CKEffectPickerBackgroundView *)v3 initWithFrame:?];

  isInlineReply = [(CKEffectPickerMacViewController *)self isInlineReply];
  delegate = [(CKEffectPickerMacViewController *)self delegate];
  -[CKEffectPickerBackgroundView setBackgroundColorForTranscriptType:hasPortalBackground:](v32, "setBackgroundColorForTranscriptType:hasPortalBackground:", isInlineReply, [delegate hasPortalBackground]);

  [(CKEffectPickerBackgroundView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CKEffectPickerMacViewController *)self view];
  [view2 addSubview:v32];

  effectView = [(CKEffectPickerBackgroundView *)v32 effectView];
  contentView = [effectView contentView];
  [(CKEffectPickerMacViewController *)self setContentView:contentView];

  v22 = MEMORY[0x1E696ACD8];
  contentView2 = [(CKEffectPickerMacViewController *)self contentView];
  leadingAnchor = [contentView2 leadingAnchor];
  view3 = [(CKEffectPickerMacViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[0] = v27;
  contentView3 = [(CKEffectPickerMacViewController *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  view4 = [(CKEffectPickerMacViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v33[1] = v21;
  contentView4 = [(CKEffectPickerMacViewController *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  view5 = [(CKEffectPickerMacViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[2] = v13;
  contentView5 = [(CKEffectPickerMacViewController *)self contentView];
  topAnchor = [contentView5 topAnchor];
  view6 = [(CKEffectPickerMacViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  [v22 activateConstraints:v19];
}

- (void)createBalloonView
{
  v3 = CKBalloonViewForClass([(CKComposition *)self->_composition balloonViewClass]);
  [(CKBalloonView *)v3 configureForComposition:self->_composition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    color = self->_color;
    v5 = v3;
    [(CKBalloonView *)v5 setColor:color];
    WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);
    [(CKBalloonView *)v5 setGradientReferenceView:WeakRetained];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    isAccessibilityPreferredContentSizeCategory = [v7 isAccessibilityPreferredContentSizeCategory];

    if (isAccessibilityPreferredContentSizeCategory)
    {
      [(CKBalloonView *)v3 truncateForLargeText];
    }
  }

  [(CKBalloonView *)v3 setCanUseOpaqueMask:0];
  [(CKBalloonView *)v3 setUserInteractionEnabled:0];
  balloonView = self->_balloonView;
  self->_balloonView = v3;
}

- (id)createSendButton
{
  v3 = objc_alloc_init(CKGlassSendButton);
  [(CKGlassSendButton *)v3 setCkTintColor:[(CKEffectPickerMacViewController *)self color]];
  [(CKGlassSendButton *)v3 addTarget:self action:sel_touchUpInsideSendButton_ forControlEvents:64];
  [(UIView *)v3 __ck_applyPortalGlassEffect];

  return v3;
}

- (void)placeSendButton
{
  v31[4] = *MEMORY[0x1E69E9840];
  sendButton = [(CKEffectPickerMacViewController *)self sendButton];
  [sendButton setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(CKEffectPickerMacViewController *)self view];
  v5 = +[CKUIBehavior sharedBehaviors];
  if ([v5 effectPickerPresentsSelectionView])
  {
    bottomAnchor = [view bottomAnchor];
  }

  else
  {
    selectionViewController = [(CKEffectPickerMacViewController *)self selectionViewController];
    view2 = [selectionViewController view];
    bottomAnchor = [view2 topAnchor];
  }

  v29 = bottomAnchor;

  +[CKGlassSendButton buttonSize];
  v10 = v9;
  v12 = v11;
  sendButton2 = [(CKEffectPickerMacViewController *)self sendButton];
  trailingAnchor = [sendButton2 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  [(CKEffectPickerMacViewController *)self setSendButtonTrailingConstraint:v16];

  v27 = MEMORY[0x1E696ACD8];
  sendButtonTrailingConstraint = [(CKEffectPickerMacViewController *)self sendButtonTrailingConstraint];
  v31[0] = sendButtonTrailingConstraint;
  sendButton3 = [(CKEffectPickerMacViewController *)self sendButton];
  bottomAnchor2 = [sendButton3 bottomAnchor];
  v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor constant:-12.0];
  v31[1] = v19;
  sendButton4 = [(CKEffectPickerMacViewController *)self sendButton];
  widthAnchor = [sendButton4 widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:v10];
  v31[2] = v22;
  sendButton5 = [(CKEffectPickerMacViewController *)self sendButton];
  [sendButton5 heightAnchor];
  v24 = v28 = view;
  v25 = [v24 constraintEqualToConstant:v12];
  v31[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v27 activateConstraints:v26];
}

- (void)placeBalloonContainer:(id)container
{
  v22[4] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  [containerCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [containerCopy addSubview:self->_balloonView];
  [(CKEffectPickerMacViewController *)self setBalloonContainer:containerCopy];
  widthAnchor = [containerCopy widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:0.0];
  balloonWidthConstraint = self->_balloonWidthConstraint;
  self->_balloonWidthConstraint = v6;

  heightAnchor = [containerCopy heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:0.0];
  balloonHeightConstraint = self->_balloonHeightConstraint;
  self->_balloonHeightConstraint = v9;

  v21 = MEMORY[0x1E696ACD8];
  rightAnchor = [containerCopy rightAnchor];
  leftAnchor = [(UIView *)self->_sendButton leftAnchor];
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 balloonMaskTailSizeForTailShape:1];
  v15 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-(8.0 - v14)];
  v22[0] = v15;
  bottomAnchor = [containerCopy bottomAnchor];

  bottomAnchor2 = [(UIView *)self->_sendButton bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19 = self->_balloonWidthConstraint;
  v22[1] = v18;
  v22[2] = v19;
  v22[3] = self->_balloonHeightConstraint;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v21 activateConstraints:v20];
}

- (void)showCloseButton
{
  v24[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_TtC7ChatKit19CKPillShapedXButton);
  [(CKPillShapedXButton *)v3 addTarget:self action:sel_closeButtonPressed_ forControlEvents:64];
  [(CKPillShapedXButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CKEffectPickerMacViewController *)self contentView];
  [contentView addSubview:v3];

  [(CKEffectPickerMacViewController *)self setCloseButton:v3];
  +[_TtC7ChatKit19CKPillShapedXButton buttonSize];
  v6 = v5;
  v8 = v7;
  leadingAnchor = [(CKPillShapedXButton *)v3 leadingAnchor];
  view = [(CKEffectPickerMacViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(CKEffectPickerMacViewController *)self setCloseButtonLeadingConstraint:v12];

  v22 = MEMORY[0x1E696ACD8];
  closeButtonLeadingConstraint = [(CKEffectPickerMacViewController *)self closeButtonLeadingConstraint];
  v24[0] = closeButtonLeadingConstraint;
  centerYAnchor = [(CKPillShapedXButton *)v3 centerYAnchor];
  sendButton = [(CKEffectPickerMacViewController *)self sendButton];
  centerYAnchor2 = [sendButton centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v24[1] = v16;
  widthAnchor = [(CKPillShapedXButton *)v3 widthAnchor];
  v18 = [widthAnchor constraintEqualToConstant:v6];
  v24[2] = v18;
  heightAnchor = [(CKPillShapedXButton *)v3 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:v8];
  v24[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v22 activateConstraints:v21];
}

- (void)_layoutBalloonView
{
  view = [(CKEffectPickerMacViewController *)self view];
  [view frame];
  v5 = v4;
  view2 = [(CKEffectPickerMacViewController *)self view];
  [view2 safeAreaInsets];
  v8 = v5 - v7;
  view3 = [(CKEffectPickerMacViewController *)self view];
  [view3 safeAreaInsets];
  v11 = v8 - v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 senderTranscriptInsets];
  [v12 balloonMaxWidthForTranscriptWidth:1 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:0 shouldCoverSendButton:v11 isStewieMode:{v14, v15, v16, v17}];
  v19 = v18;

  [(CKBalloonView *)self->_balloonView sizeThatFits:v19, 1.79769313e308];
  v21 = v20;
  v23 = v22;
  [(CKBalloonImageView *)self->_balloonView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v20, v22];
  [(NSLayoutConstraint *)self->_balloonHeightConstraint setConstant:v23];
  balloonWidthConstraint = self->_balloonWidthConstraint;

  [(NSLayoutConstraint *)balloonWidthConstraint setConstant:v21];
}

- (id)keyCommands
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_closeButtonPressed_];
  v6[0] = v2;
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_keyCommandReturn_];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)touchUpInsideSendButton:(id)button
{
  delegate = [(CKEffectPickerMacViewController *)self delegate];
  selectionViewController = [(CKEffectPickerMacViewController *)self selectionViewController];
  selectedEffectIdentifier = [selectionViewController selectedEffectIdentifier];
  [delegate effectPickerViewController:self effectWithIdentifierSelected:selectedEffectIdentifier];
}

- (void)closeButtonPressed:(id)pressed
{
  delegate = [(CKEffectPickerMacViewController *)self delegate];
  [delegate effectPickerViewControllerClose:self animated:0];
}

- (void)didUpdateMaxCellHeight:(double)height
{
  v3 = height + 15.0;
  heightConstraint = [(CKEffectPickerMacViewController *)self heightConstraint];
  [heightConstraint setConstant:v3];
}

- (BOOL)effectSelectionViewController:(id)controller didSelectEffectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(CKEffectPickerMacViewController *)self setEffectIdentifier:identifierCopy];
  if (([identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"] & 1) == 0)
  {
    balloonView = [(CKEffectPickerMacViewController *)self balloonView];
    [balloonView setInvisibleInkEffectEnabled:0];
  }

  contentView = [(CKEffectPickerMacViewController *)self contentView];
  v8 = [(CKEffectPickerMacViewController *)self effectShouldDisplayOverBalloon:identifierCopy];
  effectCollectionViewController = [(CKEffectPickerMacViewController *)self effectCollectionViewController];
  view = [effectCollectionViewController view];
  balloonContainer = [(CKEffectPickerMacViewController *)self balloonContainer];
  if (v8)
  {
    [contentView insertSubview:view aboveSubview:balloonContainer];
  }

  else
  {
    [contentView insertSubview:view belowSubview:balloonContainer];
  }

  sendButton = [(CKEffectPickerMacViewController *)self sendButton];
  balloonContainer2 = [(CKEffectPickerMacViewController *)self balloonContainer];
  [contentView insertSubview:sendButton aboveSubview:balloonContainer2];

  titleContainerView = [(CKEffectPickerMacViewController *)self titleContainerView];
  balloonContainer3 = [(CKEffectPickerMacViewController *)self balloonContainer];
  [contentView insertSubview:titleContainerView aboveSubview:balloonContainer3];

  fsem = [(CKEffectPickerMacViewController *)self fsem];
  v17 = [fsem effectForIdentifier:identifierCopy];

  if (v17 && [v17 effectIsDark])
  {
    v18 = +[CKUIBehavior sharedBehaviors];
    effectPickerPresentsSelectionView = [v18 effectPickerPresentsSelectionView];

    if ((effectPickerPresentsSelectionView & 1) == 0)
    {
      selectionViewController = [(CKEffectPickerMacViewController *)self selectionViewController];
      view2 = [selectionViewController view];
      effectCollectionViewController2 = [(CKEffectPickerMacViewController *)self effectCollectionViewController];
      view3 = [effectCollectionViewController2 view];
      [contentView insertSubview:view2 aboveSubview:view3];
    }

    titleVibrancyEffect = [(CKEffectPickerMacViewController *)self titleVibrancyEffect];
    titleContainerView2 = [(CKEffectPickerMacViewController *)self titleContainerView];
    [titleContainerView2 setEffect:titleVibrancyEffect];
  }

  else
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    effectPickerPresentsSelectionView2 = [v26 effectPickerPresentsSelectionView];

    if ((effectPickerPresentsSelectionView2 & 1) == 0)
    {
      selectionViewController2 = [(CKEffectPickerMacViewController *)self selectionViewController];
      view4 = [selectionViewController2 view];
      effectCollectionViewController3 = [(CKEffectPickerMacViewController *)self effectCollectionViewController];
      view5 = [effectCollectionViewController3 view];
      [contentView insertSubview:view4 belowSubview:view5];
    }

    titleVibrancyEffect = [(CKEffectPickerMacViewController *)self titleContainerView];
    [titleVibrancyEffect setEffect:0];
  }

  v32 = +[CKImpactEffectManager effectIdentifiers];
  v33 = [v32 containsObject:identifierCopy];

  if (v33)
  {
    effectCollectionViewController4 = [(CKEffectPickerMacViewController *)self effectCollectionViewController];
    [effectCollectionViewController4 displayEffectWithIdentifier:0];

    [(CKEffectPickerMacViewController *)self startAnimationPreviewForIdentifier:identifierCopy];
  }

  else
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __95__CKEffectPickerMacViewController_effectSelectionViewController_didSelectEffectWithIdentifier___block_invoke;
    v40 = &unk_1E72EB8D0;
    selfCopy = self;
    v42 = identifierCopy;
    dispatch_async(MEMORY[0x1E69E96A0], &v37);
  }

  if ([v17 effectIsDark])
  {
    v35 = 2;
  }

  else
  {
    v35 = 0;
  }

  [(CKEffectPickerMacViewController *)self setOverrideUserInterfaceStyle:v35];

  return 1;
}

void __95__CKEffectPickerMacViewController_effectSelectionViewController_didSelectEffectWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectCollectionViewController];
  [v2 displayEffectWithIdentifier:*(a1 + 40)];
}

- (BOOL)effectShouldDisplayOverBalloon:(id)balloon
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"com.apple.messages.effect.CKHappyBirthdayEffect";
  v8[1] = @"com.apple.messages.effect.CKConfettiEffect";
  v3 = MEMORY[0x1E695DEC8];
  balloonCopy = balloon;
  v5 = [v3 arrayWithObjects:v8 count:2];
  v6 = [v5 indexOfObject:balloonCopy];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_defaultSendAnimationContextForAnimationPreview
{
  v2 = objc_alloc_init(CKSendAnimationContext);
  [(CKSendAnimationContext *)v2 setIsSender:1];
  [(CKSendAnimationContext *)v2 setShouldRepeat:0];

  return v2;
}

- (void)startAnimationPreviewForIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  balloonView = [(CKEffectPickerMacViewController *)self balloonView];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [balloonView subviews];
  v7 = [subviews countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (balloonView)
  {
    [balloonView setInvisibleInkEffectEnabled:{objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.invisibleink"}];
    [balloonView prepareForDisplayIfNeeded];
    _defaultSendAnimationContextForAnimationPreview = [(CKEffectPickerMacViewController *)self _defaultSendAnimationContextForAnimationPreview];
    v21 = balloonView;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [_defaultSendAnimationContextForAnimationPreview setThrowBalloonViews:v12];

    null = v7;
    if (!v7)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v20 = null;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [_defaultSendAnimationContextForAnimationPreview setAnimatableTextViews:v14];

    if (!v7)
    {
    }

    [_defaultSendAnimationContextForAnimationPreview setImpactIdentifier:identifierCopy];
    dummyAnimator = [(CKEffectPickerMacViewController *)self dummyAnimator];
    [dummyAnimator beginAnimationWithSendAnimationContext:_defaultSendAnimationContextForAnimationPreview];
  }
}

- (CKEffectPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)balloonViewOrigin
{
  x = self->_balloonViewOrigin.x;
  y = self->_balloonViewOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIViewController)effectsPresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_effectsPresentingViewController);

  return WeakRetained;
}

- (UIView)effectsPresentingView
{
  WeakRetained = objc_loadWeakRetained(&self->_effectsPresentingView);

  return WeakRetained;
}

- (CKMessageEntryView)entryView
{
  WeakRetained = objc_loadWeakRetained(&self->_entryView);

  return WeakRetained;
}

- (CKGradientReferenceView)gradientReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  return WeakRetained;
}

@end