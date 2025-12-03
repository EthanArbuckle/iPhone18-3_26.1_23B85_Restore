@interface CKObscurableBalloonView
- (CKObscurableBalloonViewDelegate)obscurableBalloonDelegate;
- (UIButton)showButton;
- (UIButton)warningButton;
- (UIImageView)obscuredContentBadgeView;
- (UILabel)sensitiveContentDescription;
- (UIVisualEffectView)blurEffect;
- (id)_cellHoldingView;
- (id)_containerView;
- (id)blurVisualEffect;
- (void)_menuWillPresent;
- (void)_presentGetHelpAlert:(id)alert;
- (void)_setupForAdultsIn:(id)in revealingContent:(BOOL)content;
- (void)_setupObscuringView:(BOOL)view;
- (void)_setupWarningButtonIn:(id)in forRevealing:(BOOL)revealing;
- (void)didAskForMoreHelp:(id)help;
- (void)didBlockContact:(id)contact;
- (void)evidenceToReportWithContext:(id)context completionHandler:(id)handler;
- (void)layoutSubviews;
- (void)obscureSensitiveContent:(BOOL)content;
- (void)prepareForReuse;
- (void)revealSensitiveContent:(BOOL)content;
- (void)tapGestureRecognized:(id)recognized;
- (void)updateObscuredStateForChatItem:(id)item;
@end

@implementation CKObscurableBalloonView

- (void)updateObscuredStateForChatItem:(id)item
{
  itemCopy = item;
  commSafetyTransferLocalURL = [itemCopy commSafetyTransferLocalURL];
  [(CKObscurableBalloonView *)self setCommSafetyTransferLocalURL:commSafetyTransferLocalURL];

  commSafetyTransferGUID = [itemCopy commSafetyTransferGUID];
  [(CKObscurableBalloonView *)self setCommSafetyTransferGUID:commSafetyTransferGUID];

  if ([itemCopy isCommSafetySensitiveViewable])
  {
    -[CKObscurableBalloonView revealSensitiveContent:](self, "revealSensitiveContent:", [itemCopy itemIsReplyContextPreview]);
  }

  else if ([itemCopy isCommSafetySensitiveNotViewable])
  {
    -[CKObscurableBalloonView obscureSensitiveContent:](self, "obscureSensitiveContent:", [itemCopy itemIsReplyContextPreview]);
    commSafetyTransferLocalURL2 = [itemCopy commSafetyTransferLocalURL];
    v7 = [CKCommSafetyAnalytics contentTypeForURL:commSafetyTransferLocalURL2];

    commSafetyTransferGUID2 = [itemCopy commSafetyTransferGUID];
    [CKCommSafetyAnalytics recordObscuredViewShownWithContentType:v7 subcontentType:0 identifier:commSafetyTransferGUID2];
  }
}

- (void)obscureSensitiveContent:(BOOL)content
{
  [(CKObscurableBalloonView *)self _setupObscuringView:content];
  v4 = +[CKUIBehavior sharedBehaviors];
  shouldUseRotisserieScrolling = [v4 shouldUseRotisserieScrolling];

  if (shouldUseRotisserieScrolling)
  {
    _cellHoldingView = [(CKObscurableBalloonView *)self _cellHoldingView];
    layer = [_cellHoldingView layer];
    [layer setAllowsGroupOpacity:1];
  }
}

- (void)revealSensitiveContent:(BOOL)content
{
  if ([(CKObscurableBalloonView *)self isObscured])
  {
    obscuringView = [(CKObscurableBalloonView *)self obscuringView];
    [obscuringView removeFromSuperview];

    [(CKObscurableBalloonView *)self setObscuringView:0];
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  shouldUseRotisserieScrolling = [v6 shouldUseRotisserieScrolling];

  if (shouldUseRotisserieScrolling)
  {
    _cellHoldingView = [(CKObscurableBalloonView *)self _cellHoldingView];
    layer = [_cellHoldingView layer];
    [layer setAllowsGroupOpacity:0];
  }

  if (!content)
  {
    mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
    enablementGroup = [mEMORY[0x1E69A7FC8] enablementGroup];

    if (enablementGroup == 2)
    {
      [(CKObscurableBalloonView *)self _setupForAdultsIn:self revealingContent:1];
    }

    obscurableBalloonDelegate = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
    isRevealingContentEnabled = [obscurableBalloonDelegate isRevealingContentEnabled];

    if (isRevealingContentEnabled)
    {

      [(CKObscurableBalloonView *)self _setupWarningButtonIn:self forRevealing:1];
    }
  }
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  view = [recognizedCopy view];
  [recognizedCopy locationInView:view];
  v6 = [view hitTest:0 withEvent:?];
  if (!-[CKObscurableBalloonView isObscured](self, "isObscured") || ([MEMORY[0x1E69A7FC8] sharedManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "enablementGroup"), v7, v8 != 2) || (-[CKObscurableBalloonView showButton](self, "showButton"), v9 = objc_claimAutoreleasedReturnValue(), v9, v6 == v9))
  {
    v10.receiver = self;
    v10.super_class = CKObscurableBalloonView;
    [(CKBalloonView *)&v10 tapGestureRecognized:recognizedCopy];
  }
}

- (id)_cellHoldingView
{
  superview = [(CKObscurableBalloonView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
}

- (void)_setupObscuringView:(BOOL)view
{
  v67[4] = *MEMORY[0x1E69E9840];
  if (![(CKObscurableBalloonView *)self isObscured])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v5 _setOverrideUserInterfaceRenderingMode:2];
    v6 = +[CKUIBehavior sharedBehaviors];
    -[UIView _setOverrideUserInterfaceStyle:](v5, "_setOverrideUserInterfaceStyle:", [v6 obscurableBalloonBlurMaterialInterfaceStyle]);

    [(CKObscurableBalloonView *)self blurEffect];
    v7 = v61 = view;
    [(UIView *)v5 addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = MEMORY[0x1E696ACD8];
    topAnchor = [v7 topAnchor];
    topAnchor2 = [(UIView *)v5 topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v67[0] = v55;
    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [(UIView *)v5 bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v67[1] = v9;
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [(UIView *)v5 leadingAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v12 = v64 = self;
    v67[2] = v12;
    trailingAnchor = [v7 trailingAnchor];
    v63 = v5;
    trailingAnchor2 = [(UIView *)v5 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v67[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
    [v51 activateConstraints:v16];

    v17 = v7;
    v18 = v64;

    if (!v61)
    {
      sensitiveContentDescription = [(CKObscurableBalloonView *)v64 sensitiveContentDescription];
      contentView = [v17 contentView];
      [contentView addSubview:sensitiveContentDescription];

      [sensitiveContentDescription setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 sensitiveLabelPadding];
      v23 = v22;

      centerYAnchor = [sensitiveContentDescription centerYAnchor];
      contentView2 = [v17 contentView];
      centerYAnchor2 = [contentView2 centerYAnchor];
      v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      LODWORD(v28) = 1143930880;
      [v27 setPriority:v28];
      v50 = MEMORY[0x1E696ACD8];
      centerXAnchor = [sensitiveContentDescription centerXAnchor];
      contentView3 = [v17 contentView];
      centerXAnchor2 = [contentView3 centerXAnchor];
      v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v66[0] = v52;
      v66[1] = v27;
      v60 = v27;
      leadingAnchor3 = [sensitiveContentDescription leadingAnchor];
      contentView4 = [v17 contentView];
      leadingAnchor4 = [contentView4 leadingAnchor];
      v32 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:v23];
      v66[2] = v32;
      v62 = sensitiveContentDescription;
      trailingAnchor3 = [sensitiveContentDescription trailingAnchor];
      v34 = v17;
      contentView5 = [v17 contentView];
      trailingAnchor4 = [contentView5 trailingAnchor];
      v37 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-v23];
      v66[3] = v37;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
      [v50 activateConstraints:v38];

      v18 = v64;
      obscurableBalloonDelegate = [(CKObscurableBalloonView *)v64 obscurableBalloonDelegate];
      LODWORD(v32) = [obscurableBalloonDelegate isRevealingContentEnabled];

      if (v32)
      {
        _containerView = [(CKObscurableBalloonView *)v64 _containerView];
        [(CKObscurableBalloonView *)v64 _setupWarningButtonIn:_containerView forRevealing:0];
      }

      mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
      enablementGroup = [mEMORY[0x1E69A7FC8] enablementGroup];

      _containerView2 = [(CKObscurableBalloonView *)v64 _containerView];
      if (enablementGroup == 2)
      {
        [(CKObscurableBalloonView *)v64 _setupForAdultsIn:_containerView2 revealingContent:0];
      }

      else
      {
        obscuredContentBadgeView = [(CKObscurableBalloonView *)v64 obscuredContentBadgeView];
        [(CKObscurableBalloonView *)v64 _setupForChildrenIn:_containerView2 withBadgeView:obscuredContentBadgeView];
      }

      v17 = v34;
    }

    [(CKObscurableBalloonView *)v18 addSubview:v63];
    [(CKObscurableBalloonView *)v18 bringSubviewToFront:v63];
    v45 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
    [(CKBalloonView *)v18 balloonDescriptor];
    v46 = [(CKBalloonMaskLayer *)v45 initWithDescriptor:v65];
    [(CKObscurableBalloonView *)v18 setMaskLayer:v46];

    maskLayer = [(CKObscurableBalloonView *)v18 maskLayer];
    layer = [(UIView *)v63 layer];
    [layer setMask:maskLayer];

    obscuringView = v18->_obscuringView;
    v18->_obscuringView = v63;
  }
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = CKObscurableBalloonView;
  [(CKBalloonView *)&v34 layoutSubviews];
  [(CKObscurableBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  obscuringView = [(CKObscurableBalloonView *)self obscuringView];
  [obscuringView setFrame:{v4, v6, v8, v10}];

  [(CKObscurableBalloonView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  maskLayer = [(CKObscurableBalloonView *)self maskLayer];
  [maskLayer setFrame:{v13, v15, v17, v19}];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v22 = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 obscurableBalloonVerticalPadding];
  v25 = v24;

  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 obscurableBalloonHorizontalPadding];
  v28 = v27;

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __41__CKObscurableBalloonView_layoutSubviews__block_invoke;
  v32[3] = &unk_1E72F5828;
  v33 = v22;
  v32[4] = self;
  v32[5] = v28;
  v32[6] = v25;
  v29 = _Block_copy(v32);
  if (self->_obscuredContentBadgeView)
  {
    obscuredContentBadgeView = [(CKObscurableBalloonView *)self obscuredContentBadgeView];
    v29[2](v29, obscuredContentBadgeView);
  }

  if (self->_showButton)
  {
    showButton = [(CKObscurableBalloonView *)self showButton];
    v29[2](v29, showButton);
  }
}

void __41__CKObscurableBalloonView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  [v18 sizeToFit];
  [v18 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (*(a1 + 56) == 1)
  {
    v10 = *(a1 + 40);
  }

  else
  {
    v11 = v3;
    [*(a1 + 32) bounds];
    MaxX = CGRectGetMaxX(v20);
    v21.origin.x = v11;
    v21.origin.y = v5;
    v21.size.width = v7;
    v21.size.height = v9;
    v13 = MaxX - CGRectGetWidth(v21) - *(a1 + 40);
    [*(a1 + 32) tailInsets];
    v10 = v13 - v14;
  }

  [*(a1 + 32) bounds];
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = v10;
  v23.origin.y = v5;
  v23.size.width = v7;
  v23.size.height = v9;
  v16 = MaxY - CGRectGetHeight(v23) - *(a1 + 48);
  [*(a1 + 32) tailInsets];
  [v18 setFrame:{v10, v16 - v17, v7, v9}];
}

- (void)_setupForAdultsIn:(id)in revealingContent:(BOOL)content
{
  if (!content)
  {
    inCopy = in;
    showButton = [(CKObscurableBalloonView *)self showButton];
    [inCopy addSubview:showButton];
  }
}

- (void)_setupWarningButtonIn:(id)in forRevealing:(BOOL)revealing
{
  revealingCopy = revealing;
  v27[2] = *MEMORY[0x1E69E9840];
  inCopy = in;
  warningButton = [(CKObscurableBalloonView *)self warningButton];
  configuration = [warningButton configuration];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = v9;
  if (revealingCopy)
  {
    [v9 obscurableBalloonWarningButtonBackgroundConfigurationRevealed];
  }

  else
  {
    [v9 obscurableBalloonWarningButtonBackgroundConfigurationObscured];
  }
  v11 = ;

  [configuration setBackground:v11];
  [warningButton setConfiguration:configuration];
  [inCopy addSubview:warningButton];
  [warningButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 obscurableBalloonVerticalPadding];
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 obscurableBalloonHorizontalPadding];
  v17 = v16;

  v26 = MEMORY[0x1E696ACD8];
  topAnchor = [warningButton topAnchor];
  topAnchor2 = [inCopy topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v14];
  v27[0] = v20;
  trailingAnchor = [warningButton trailingAnchor];
  trailingAnchor2 = [inCopy trailingAnchor];

  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v17];
  v27[1] = v23;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v25 = v24 = v11;
  [v26 activateConstraints:v25];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKObscurableBalloonView;
  [(CKBalloonView *)&v5 prepareForReuse];
  if ([(CKObscurableBalloonView *)self isObscured])
  {
    obscuringView = [(CKObscurableBalloonView *)self obscuringView];
    [obscuringView removeFromSuperview];

    [(CKObscurableBalloonView *)self setObscuringView:0];
  }

  warningButton = self->_warningButton;
  if (warningButton)
  {
    [(UIButton *)warningButton removeFromSuperview];
  }

  [(CKObscurableBalloonView *)self setCommSafetyTransferLocalURL:0];
  [(CKObscurableBalloonView *)self setCommSafetyTransferGUID:0];
}

- (UIVisualEffectView)blurEffect
{
  blurEffect = self->_blurEffect;
  if (!blurEffect)
  {
    v4 = MEMORY[0x1E69DC730];
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v4 effectWithStyle:{objc_msgSend(v5, "obscurableBalloonBlurMaterial")}];

    v7 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v6];
    v8 = self->_blurEffect;
    self->_blurEffect = v7;

    blurEffect = self->_blurEffect;
  }

  return blurEffect;
}

- (id)blurVisualEffect
{
  blurEffect = [(CKObscurableBalloonView *)self blurEffect];
  effect = [blurEffect effect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = effect;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_containerView
{
  blurEffect = [(CKObscurableBalloonView *)self blurEffect];
  contentView = [blurEffect contentView];

  return contentView;
}

- (UILabel)sensitiveContentDescription
{
  sensitiveContentDescription = self->_sensitiveContentDescription;
  if (!sensitiveContentDescription)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setTextAlignment:1];
    v5 = IMSharedUtilitiesFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"MAY_BE_SENSITIVE" value:&stru_1F04268F8 table:@"CommSafetyLocalizable"];
    [(UILabel *)v4 setText:v6];

    v7 = +[CKUIBehavior sharedBehaviors];
    sensitiveLabelColor = [v7 sensitiveLabelColor];
    [(UILabel *)v4 setTextColor:sensitiveLabelColor];

    v9 = +[CKUIBehavior sharedBehaviors];
    sensitiveLabelFont = [v9 sensitiveLabelFont];
    [(UILabel *)v4 setFont:sensitiveLabelFont];

    v11 = self->_sensitiveContentDescription;
    self->_sensitiveContentDescription = v4;

    sensitiveContentDescription = self->_sensitiveContentDescription;
  }

  return sensitiveContentDescription;
}

- (UIButton)showButton
{
  showButton = self->_showButton;
  if (!showButton)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC738]);
    v5 = +[CKUIBehavior sharedBehaviors];
    obscurableBalloonShowButtonConfiguration = [v5 obscurableBalloonShowButtonConfiguration];
    [(UIButton *)v4 setConfiguration:obscurableBalloonShowButtonConfiguration];

    titleLabel = [(UIButton *)v4 titleLabel];
    [titleLabel _setOverrideUserInterfaceStyle:2];

    imageView = [(UIButton *)v4 imageView];
    [imageView _setOverrideUserInterfaceStyle:2];

    v9 = self->_showButton;
    self->_showButton = v4;

    showButton = self->_showButton;
  }

  return showButton;
}

- (UIImageView)obscuredContentBadgeView
{
  obscuredContentBadgeView = self->_obscuredContentBadgeView;
  if (!obscuredContentBadgeView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = +[CKUIBehavior sharedBehaviors];
    obscurableBalloonObscuredContentBadgeImage = [v5 obscurableBalloonObscuredContentBadgeImage];
    v7 = [v4 initWithImage:obscurableBalloonObscuredContentBadgeImage];

    v8 = +[CKUIBehavior sharedBehaviors];
    obscurableBalloonBadgeTintColor = [v8 obscurableBalloonBadgeTintColor];
    [(UIImageView *)v7 setTintColor:obscurableBalloonBadgeTintColor];

    [(UIImageView *)v7 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    v10 = self->_obscuredContentBadgeView;
    self->_obscuredContentBadgeView = v7;

    obscuredContentBadgeView = self->_obscuredContentBadgeView;
  }

  return obscuredContentBadgeView;
}

- (UIButton)warningButton
{
  v23[1] = *MEMORY[0x1E69E9840];
  warningButton = self->_warningButton;
  if (!warningButton)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC738]);
    v5 = +[CKUIBehavior sharedBehaviors];
    obscurableBalloonWarningButtonConfiguration = [v5 obscurableBalloonWarningButtonConfiguration];
    [(UIButton *)v4 setConfiguration:obscurableBalloonWarningButtonConfiguration];

    imageView = [(UIButton *)v4 imageView];
    [imageView _setOverrideUserInterfaceStyle:2];

    [(UIButton *)v4 setShowsMenuAsPrimaryAction:1];
    obscurableBalloonDelegate = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
    if ([obscurableBalloonDelegate isReportingEnabled])
    {
      v9 = 97;
    }

    else
    {
      v9 = 1;
    }

    if (obscurableBalloonDelegate)
    {
      if (self->_commSafetyTransferGUID)
      {
        v22 = @"SCUIAnalyticsContextKeyForContextDictionary";
        _buildContextKeyIdentifierForContextMenuEvents = [(CKObscurableBalloonView *)self _buildContextKeyIdentifierForContextMenuEvents];
        v23[0] = _buildContextKeyIdentifierForContextMenuEvents;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      }

      else
      {
        v11 = 0;
      }

      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v12 = getSCUIMoreHelpContextMenuClass_softClass;
      v21 = getSCUIMoreHelpContextMenuClass_softClass;
      if (!getSCUIMoreHelpContextMenuClass_softClass)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __getSCUIMoreHelpContextMenuClass_block_invoke;
        v17[3] = &unk_1E72EB968;
        v17[4] = &v18;
        __getSCUIMoreHelpContextMenuClass_block_invoke(v17);
        v12 = v19[3];
      }

      v13 = v12;
      _Block_object_dispose(&v18, 8);
      v14 = [v12 menuWithDelegate:self contextDictionary:v11 additionalOptions:v9];
      [(UIButton *)v4 addTarget:self action:sel__menuWillPresent forEvents:0x4000];
      [(UIButton *)v4 setMenu:v14];
    }

    v15 = self->_warningButton;
    self->_warningButton = v4;

    warningButton = self->_warningButton;
  }

  return warningButton;
}

- (void)_presentGetHelpAlert:(id)alert
{
  obscurableBalloonDelegate = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    obscurableBalloonDelegate2 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
    [obscurableBalloonDelegate2 presentGetHelpAlert];
  }
}

- (void)_menuWillPresent
{
  if (self->_commSafetyTransferLocalURL)
  {
    v3 = [CKCommSafetyAnalytics contentTypeForURL:?];
    isObscured = [(CKObscurableBalloonView *)self isObscured];
    _buildContextKeyIdentifierForContextMenuEvents = [(CKObscurableBalloonView *)self _buildContextKeyIdentifierForContextMenuEvents];
    [CKCommSafetyAnalytics recordContextMenuButtonTappedWithContentType:v3 subContentType:0 direction:2 options:0 isBlurred:isObscured identifier:_buildContextKeyIdentifierForContextMenuEvents];
  }
}

- (void)didAskForMoreHelp:(id)help
{
  obscurableBalloonDelegate = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
  [obscurableBalloonDelegate didTapWaysToGetHelp];
}

- (void)didBlockContact:(id)contact
{
  obscurableBalloonDelegate = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
  [obscurableBalloonDelegate didTapBlockContactInBalloonView:self];
}

- (void)evidenceToReportWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  obscurableBalloonDelegate = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    obscurableBalloonDelegate2 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
    [obscurableBalloonDelegate2 evidenceToReportWithContext:contextCopy balloonView:self completionHandler:handlerCopy];
  }

  else
  {
    obscurableBalloonDelegate2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    handlerCopy[2](handlerCopy, 0, obscurableBalloonDelegate2);
  }
}

- (CKObscurableBalloonViewDelegate)obscurableBalloonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_obscurableBalloonDelegate);

  return WeakRetained;
}

@end