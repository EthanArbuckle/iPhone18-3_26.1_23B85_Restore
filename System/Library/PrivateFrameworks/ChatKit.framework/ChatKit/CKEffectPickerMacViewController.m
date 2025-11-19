@interface CKEffectPickerMacViewController
- (BOOL)effectSelectionViewController:(id)a3 didSelectEffectWithIdentifier:(id)a4;
- (BOOL)effectShouldDisplayOverBalloon:(id)a3;
- (CGPoint)balloonViewOrigin;
- (CKEffectPickerMacViewController)initWithComposition:(id)a3 balloonViewOrigin:(CGPoint)a4 color:(char)a5 gradientReferenceView:(id)a6;
- (CKEffectPickerMacViewController)initWithEntryView:(id)a3 balloonViewOrigin:(CGPoint)a4 color:(char)a5 gradientReferenceView:(id)a6 isInlineReply:(BOOL)a7;
- (CKEffectPickerViewControllerDelegate)delegate;
- (CKGradientReferenceView)gradientReferenceView;
- (CKMessageEntryView)entryView;
- (UIView)effectsPresentingView;
- (UIViewController)effectsPresentingViewController;
- (id)_defaultSendAnimationContextForAnimationPreview;
- (id)createSendButton;
- (id)keyCommands;
- (void)_layoutBalloonView;
- (void)_updateConstraintsWithSafeAreaInsets:(UIEdgeInsets)a3;
- (void)closeButtonPressed:(id)a3;
- (void)createBalloonView;
- (void)createTranscriptBlurBackground;
- (void)didUpdateMaxCellHeight:(double)a3;
- (void)placeBalloonContainer:(id)a3;
- (void)placeSendButton;
- (void)showCloseButton;
- (void)startAnimationPreviewForIdentifier:(id)a3;
- (void)touchUpInsideSendButton:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKEffectPickerMacViewController

- (CKEffectPickerMacViewController)initWithComposition:(id)a3 balloonViewOrigin:(CGPoint)a4 color:(char)a5 gradientReferenceView:(id)a6
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CKEffectPickerMacViewController;
  v14 = [(CKEffectPickerMacViewController *)&v19 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_composition, a3);
    v15->_balloonViewOrigin.x = x;
    v15->_balloonViewOrigin.y = y;
    v15->_color = a5;
    objc_storeWeak(&v15->_gradientReferenceView, v13);
    v15->_hasSelectedDefaultEffect = 0;
    v16 = objc_alloc_init(CKFullScreenEffectManager);
    fsem = v15->_fsem;
    v15->_fsem = v16;

    v15->_showingInStandAloneWindow = 0;
    v15->_isInlineReply = 0;
  }

  return v15;
}

- (CKEffectPickerMacViewController)initWithEntryView:(id)a3 balloonViewOrigin:(CGPoint)a4 color:(char)a5 gradientReferenceView:(id)a6 isInlineReply:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CKEffectPickerMacViewController;
  v15 = [(CKEffectPickerMacViewController *)&v20 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_entryView, v13);
    v16->_balloonViewOrigin.x = x;
    v16->_balloonViewOrigin.y = y;
    v16->_color = a5;
    objc_storeWeak(&v16->_gradientReferenceView, v14);
    v16->_hasSelectedDefaultEffect = 0;
    v17 = objc_alloc_init(CKFullScreenEffectManager);
    fsem = v16->_fsem;
    v16->_fsem = v17;

    v16->_showingInStandAloneWindow = 0;
    v16->_isInlineReply = a7;
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerMacViewController;
  [(CKEffectPickerMacViewController *)&v5 viewWillAppear:a3];
  if (![(CKEffectPickerMacViewController *)self hasSelectedDefaultEffect])
  {
    [(CKEffectPickerMacViewController *)self setHasSelectedDefaultEffect:1];
    v4 = [(CKEffectPickerMacViewController *)self selectionViewController];
    [v4 setSelectedEffectIdentifier:@"com.apple.messages.effect.CKHeartEffect"];

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
  v4 = [v3 effectPickerPresentsSelectionView];

  v5 = 0x1E695D000;
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc_init(CKEffectSelectionViewController);
    [(CKEffectSelectionViewController *)v6 setDelegate:self];
    v7 = [(CKEffectSelectionViewController *)v6 view];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(CKEffectPickerMacViewController *)self addChildViewController:v6];
    v8 = [(CKEffectPickerMacViewController *)self contentView];
    v9 = [(CKEffectSelectionViewController *)v6 view];
    [v8 addSubview:v9];

    v10 = [(CKEffectSelectionViewController *)v6 view];
    v11 = [v10 heightAnchor];
    v12 = [v11 constraintEqualToConstant:15.0];
    [(CKEffectPickerMacViewController *)self setHeightConstraint:v12];

    v61 = MEMORY[0x1E696ACD8];
    v69 = [(CKEffectSelectionViewController *)v6 view];
    v65 = [v69 leadingAnchor];
    v67 = [(CKEffectPickerMacViewController *)self contentView];
    v64 = [v67 leadingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v73[0] = v63;
    v62 = [(CKEffectSelectionViewController *)v6 view];
    v59 = [v62 trailingAnchor];
    v60 = [(CKEffectPickerMacViewController *)self contentView];
    v58 = [v60 trailingAnchor];
    v13 = [v59 constraintEqualToAnchor:v58];
    v73[1] = v13;
    v14 = [(CKEffectSelectionViewController *)v6 view];
    v15 = [v14 bottomAnchor];
    v16 = [(CKEffectPickerMacViewController *)self contentView];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:15.0 + -18.0];
    v73[2] = v18;
    v19 = [(CKEffectPickerMacViewController *)self heightConstraint];
    v73[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    [v61 activateConstraints:v20];

    [(CKEffectSelectionViewController *)v6 didMoveToParentViewController:self];
    [(CKEffectPickerMacViewController *)self setSelectionViewController:v6];

    v5 = 0x1E695D000uLL;
  }

  v21 = objc_alloc_init(CKEffectPreviewCollectionViewController);
  v22 = [(CKEffectPickerMacViewController *)self contentView];
  v23 = [(CKEffectPreviewCollectionViewController *)v21 view];
  [v22 addSubview:v23];

  [(CKEffectPickerMacViewController *)self addChildViewController:v21];
  v24 = [(CKEffectPreviewCollectionViewController *)v21 view];
  v25 = [(CKEffectPickerMacViewController *)self contentView];
  [v24 __ck_makeEdgesEqualToHorizontalSafeArea:v25];

  [(CKEffectPreviewCollectionViewController *)v21 didMoveToParentViewController:self];
  [(CKEffectPreviewCollectionViewController *)v21 setDelegate:self];
  v70 = v21;
  v26 = [(CKEffectPreviewCollectionViewController *)v21 view];
  [v26 setUserInteractionEnabled:0];

  v27 = [(CKEffectPreviewCollectionViewController *)v21 view];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

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
  v33 = [v32 contentView];
  [v33 addSubview:v28];

  [(CKEffectPickerMacViewController *)self setTitleContainerView:v32];
  v34 = [(CKEffectPickerMacViewController *)self contentView];
  [v34 addSubview:v32];

  v35 = [v32 contentView];
  [v35 __ck_makeEdgesEqualToHorizontalSafeArea:v28];

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

  v41 = [v32 leadingAnchor];
  v42 = [(CKEffectPickerMacViewController *)self contentView];
  v43 = [v42 leadingAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  [(CKEffectPickerMacViewController *)self setTitleLeadingConstraint:v44];

  v45 = MEMORY[0x1E696ACD8];
  v46 = [(CKEffectPickerMacViewController *)self titleLeadingConstraint];
  v72[0] = v46;
  v47 = [v32 topAnchor];
  v48 = [(CKEffectPickerMacViewController *)self contentView];
  v49 = [v48 topAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:v40];
  v72[1] = v50;
  v51 = [*(v5 + 3784) arrayWithObjects:v72 count:2];
  [v45 activateConstraints:v51];

  v52 = [(CKEffectPickerMacViewController *)self createSendButton];
  [(CKEffectPickerMacViewController *)self setSendButton:v52];

  v53 = [(CKEffectPickerMacViewController *)self contentView];
  v54 = [(CKEffectPickerMacViewController *)self sendButton];
  [v53 addSubview:v54];

  [(CKEffectPickerMacViewController *)self placeSendButton];
  v55 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v56 = [(CKEffectPickerMacViewController *)self contentView];
  [v56 addSubview:v55];

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
  v3 = [(CKEffectPickerMacViewController *)self view];
  [v3 safeAreaInsets];
  [(CKEffectPickerMacViewController *)self _updateConstraintsWithSafeAreaInsets:?];
}

- (void)_updateConstraintsWithSafeAreaInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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
  v18 = [(CKEffectPickerMacViewController *)self closeButtonLeadingConstraint];
  [v18 setConstant:v17];

  v19 = [(CKEffectPickerMacViewController *)self titleLeadingConstraint];
  [v19 setConstant:v17 + v14];

  v20 = [(CKEffectPickerMacViewController *)self sendButtonTrailingConstraint];
  [v20 setConstant:-right - v13];

  v21 = [(CKEffectPickerMacViewController *)self selectionViewController];
  [v21 updateContentInsets:{top, left, bottom, right}];
}

- (void)createTranscriptBlurBackground
{
  v33[4] = *MEMORY[0x1E69E9840];
  v3 = [CKEffectPickerBackgroundView alloc];
  v4 = [(CKEffectPickerMacViewController *)self view];
  [v4 bounds];
  v32 = [(CKEffectPickerBackgroundView *)v3 initWithFrame:?];

  v5 = [(CKEffectPickerMacViewController *)self isInlineReply];
  v6 = [(CKEffectPickerMacViewController *)self delegate];
  -[CKEffectPickerBackgroundView setBackgroundColorForTranscriptType:hasPortalBackground:](v32, "setBackgroundColorForTranscriptType:hasPortalBackground:", v5, [v6 hasPortalBackground]);

  [(CKEffectPickerBackgroundView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(CKEffectPickerMacViewController *)self view];
  [v7 addSubview:v32];

  v8 = [(CKEffectPickerBackgroundView *)v32 effectView];
  v9 = [v8 contentView];
  [(CKEffectPickerMacViewController *)self setContentView:v9];

  v22 = MEMORY[0x1E696ACD8];
  v31 = [(CKEffectPickerMacViewController *)self contentView];
  v29 = [v31 leadingAnchor];
  v30 = [(CKEffectPickerMacViewController *)self view];
  v28 = [v30 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v33[0] = v27;
  v26 = [(CKEffectPickerMacViewController *)self contentView];
  v24 = [v26 trailingAnchor];
  v25 = [(CKEffectPickerMacViewController *)self view];
  v23 = [v25 trailingAnchor];
  v21 = [v24 constraintEqualToAnchor:v23];
  v33[1] = v21;
  v20 = [(CKEffectPickerMacViewController *)self contentView];
  v10 = [v20 bottomAnchor];
  v11 = [(CKEffectPickerMacViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v33[2] = v13;
  v14 = [(CKEffectPickerMacViewController *)self contentView];
  v15 = [v14 topAnchor];
  v16 = [(CKEffectPickerMacViewController *)self view];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
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
    v8 = [v7 isAccessibilityPreferredContentSizeCategory];

    if (v8)
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
  v3 = [(CKEffectPickerMacViewController *)self sendButton];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CKEffectPickerMacViewController *)self view];
  v5 = +[CKUIBehavior sharedBehaviors];
  if ([v5 effectPickerPresentsSelectionView])
  {
    v6 = [v4 bottomAnchor];
  }

  else
  {
    v7 = [(CKEffectPickerMacViewController *)self selectionViewController];
    v8 = [v7 view];
    v6 = [v8 topAnchor];
  }

  v29 = v6;

  +[CKGlassSendButton buttonSize];
  v10 = v9;
  v12 = v11;
  v13 = [(CKEffectPickerMacViewController *)self sendButton];
  v14 = [v13 trailingAnchor];
  v15 = [v4 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
  [(CKEffectPickerMacViewController *)self setSendButtonTrailingConstraint:v16];

  v27 = MEMORY[0x1E696ACD8];
  v30 = [(CKEffectPickerMacViewController *)self sendButtonTrailingConstraint];
  v31[0] = v30;
  v17 = [(CKEffectPickerMacViewController *)self sendButton];
  v18 = [v17 bottomAnchor];
  v19 = [v18 constraintEqualToAnchor:v6 constant:-12.0];
  v31[1] = v19;
  v20 = [(CKEffectPickerMacViewController *)self sendButton];
  v21 = [v20 widthAnchor];
  v22 = [v21 constraintEqualToConstant:v10];
  v31[2] = v22;
  v23 = [(CKEffectPickerMacViewController *)self sendButton];
  [v23 heightAnchor];
  v24 = v28 = v4;
  v25 = [v24 constraintEqualToConstant:v12];
  v31[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v27 activateConstraints:v26];
}

- (void)placeBalloonContainer:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:self->_balloonView];
  [(CKEffectPickerMacViewController *)self setBalloonContainer:v4];
  v5 = [v4 widthAnchor];
  v6 = [v5 constraintEqualToConstant:0.0];
  balloonWidthConstraint = self->_balloonWidthConstraint;
  self->_balloonWidthConstraint = v6;

  v8 = [v4 heightAnchor];
  v9 = [v8 constraintEqualToConstant:0.0];
  balloonHeightConstraint = self->_balloonHeightConstraint;
  self->_balloonHeightConstraint = v9;

  v21 = MEMORY[0x1E696ACD8];
  v11 = [v4 rightAnchor];
  v12 = [(UIView *)self->_sendButton leftAnchor];
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 balloonMaskTailSizeForTailShape:1];
  v15 = [v11 constraintEqualToAnchor:v12 constant:-(8.0 - v14)];
  v22[0] = v15;
  v16 = [v4 bottomAnchor];

  v17 = [(UIView *)self->_sendButton bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
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
  v4 = [(CKEffectPickerMacViewController *)self contentView];
  [v4 addSubview:v3];

  [(CKEffectPickerMacViewController *)self setCloseButton:v3];
  +[_TtC7ChatKit19CKPillShapedXButton buttonSize];
  v6 = v5;
  v8 = v7;
  v9 = [(CKPillShapedXButton *)v3 leadingAnchor];
  v10 = [(CKEffectPickerMacViewController *)self view];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [(CKEffectPickerMacViewController *)self setCloseButtonLeadingConstraint:v12];

  v22 = MEMORY[0x1E696ACD8];
  v23 = [(CKEffectPickerMacViewController *)self closeButtonLeadingConstraint];
  v24[0] = v23;
  v13 = [(CKPillShapedXButton *)v3 centerYAnchor];
  v14 = [(CKEffectPickerMacViewController *)self sendButton];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v24[1] = v16;
  v17 = [(CKPillShapedXButton *)v3 widthAnchor];
  v18 = [v17 constraintEqualToConstant:v6];
  v24[2] = v18;
  v19 = [(CKPillShapedXButton *)v3 heightAnchor];
  v20 = [v19 constraintEqualToConstant:v8];
  v24[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v22 activateConstraints:v21];
}

- (void)_layoutBalloonView
{
  v3 = [(CKEffectPickerMacViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(CKEffectPickerMacViewController *)self view];
  [v6 safeAreaInsets];
  v8 = v5 - v7;
  v9 = [(CKEffectPickerMacViewController *)self view];
  [v9 safeAreaInsets];
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

- (void)touchUpInsideSendButton:(id)a3
{
  v6 = [(CKEffectPickerMacViewController *)self delegate];
  v4 = [(CKEffectPickerMacViewController *)self selectionViewController];
  v5 = [v4 selectedEffectIdentifier];
  [v6 effectPickerViewController:self effectWithIdentifierSelected:v5];
}

- (void)closeButtonPressed:(id)a3
{
  v4 = [(CKEffectPickerMacViewController *)self delegate];
  [v4 effectPickerViewControllerClose:self animated:0];
}

- (void)didUpdateMaxCellHeight:(double)a3
{
  v3 = a3 + 15.0;
  v4 = [(CKEffectPickerMacViewController *)self heightConstraint];
  [v4 setConstant:v3];
}

- (BOOL)effectSelectionViewController:(id)a3 didSelectEffectWithIdentifier:(id)a4
{
  v5 = a4;
  [(CKEffectPickerMacViewController *)self setEffectIdentifier:v5];
  if (([v5 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"] & 1) == 0)
  {
    v6 = [(CKEffectPickerMacViewController *)self balloonView];
    [v6 setInvisibleInkEffectEnabled:0];
  }

  v7 = [(CKEffectPickerMacViewController *)self contentView];
  v8 = [(CKEffectPickerMacViewController *)self effectShouldDisplayOverBalloon:v5];
  v9 = [(CKEffectPickerMacViewController *)self effectCollectionViewController];
  v10 = [v9 view];
  v11 = [(CKEffectPickerMacViewController *)self balloonContainer];
  if (v8)
  {
    [v7 insertSubview:v10 aboveSubview:v11];
  }

  else
  {
    [v7 insertSubview:v10 belowSubview:v11];
  }

  v12 = [(CKEffectPickerMacViewController *)self sendButton];
  v13 = [(CKEffectPickerMacViewController *)self balloonContainer];
  [v7 insertSubview:v12 aboveSubview:v13];

  v14 = [(CKEffectPickerMacViewController *)self titleContainerView];
  v15 = [(CKEffectPickerMacViewController *)self balloonContainer];
  [v7 insertSubview:v14 aboveSubview:v15];

  v16 = [(CKEffectPickerMacViewController *)self fsem];
  v17 = [v16 effectForIdentifier:v5];

  if (v17 && [v17 effectIsDark])
  {
    v18 = +[CKUIBehavior sharedBehaviors];
    v19 = [v18 effectPickerPresentsSelectionView];

    if ((v19 & 1) == 0)
    {
      v20 = [(CKEffectPickerMacViewController *)self selectionViewController];
      v21 = [v20 view];
      v22 = [(CKEffectPickerMacViewController *)self effectCollectionViewController];
      v23 = [v22 view];
      [v7 insertSubview:v21 aboveSubview:v23];
    }

    v24 = [(CKEffectPickerMacViewController *)self titleVibrancyEffect];
    v25 = [(CKEffectPickerMacViewController *)self titleContainerView];
    [v25 setEffect:v24];
  }

  else
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    v27 = [v26 effectPickerPresentsSelectionView];

    if ((v27 & 1) == 0)
    {
      v28 = [(CKEffectPickerMacViewController *)self selectionViewController];
      v29 = [v28 view];
      v30 = [(CKEffectPickerMacViewController *)self effectCollectionViewController];
      v31 = [v30 view];
      [v7 insertSubview:v29 belowSubview:v31];
    }

    v24 = [(CKEffectPickerMacViewController *)self titleContainerView];
    [v24 setEffect:0];
  }

  v32 = +[CKImpactEffectManager effectIdentifiers];
  v33 = [v32 containsObject:v5];

  if (v33)
  {
    v34 = [(CKEffectPickerMacViewController *)self effectCollectionViewController];
    [v34 displayEffectWithIdentifier:0];

    [(CKEffectPickerMacViewController *)self startAnimationPreviewForIdentifier:v5];
  }

  else
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __95__CKEffectPickerMacViewController_effectSelectionViewController_didSelectEffectWithIdentifier___block_invoke;
    v40 = &unk_1E72EB8D0;
    v41 = self;
    v42 = v5;
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

- (BOOL)effectShouldDisplayOverBalloon:(id)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"com.apple.messages.effect.CKHappyBirthdayEffect";
  v8[1] = @"com.apple.messages.effect.CKConfettiEffect";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v8 count:2];
  v6 = [v5 indexOfObject:v4];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_defaultSendAnimationContextForAnimationPreview
{
  v2 = objc_alloc_init(CKSendAnimationContext);
  [(CKSendAnimationContext *)v2 setIsSender:1];
  [(CKSendAnimationContext *)v2 setShouldRepeat:0];

  return v2;
}

- (void)startAnimationPreviewForIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKEffectPickerMacViewController *)self balloonView];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v5)
  {
    [v5 setInvisibleInkEffectEnabled:{objc_msgSend(v4, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.invisibleink"}];
    [v5 prepareForDisplayIfNeeded];
    v11 = [(CKEffectPickerMacViewController *)self _defaultSendAnimationContextForAnimationPreview];
    v21 = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v11 setThrowBalloonViews:v12];

    v13 = v7;
    if (!v7)
    {
      v13 = [MEMORY[0x1E695DFB0] null];
    }

    v20 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v11 setAnimatableTextViews:v14];

    if (!v7)
    {
    }

    [v11 setImpactIdentifier:v4];
    v15 = [(CKEffectPickerMacViewController *)self dummyAnimator];
    [v15 beginAnimationWithSendAnimationContext:v11];
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