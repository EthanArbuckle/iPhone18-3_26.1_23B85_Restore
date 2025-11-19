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
- (void)_presentGetHelpAlert:(id)a3;
- (void)_setupForAdultsIn:(id)a3 revealingContent:(BOOL)a4;
- (void)_setupObscuringView:(BOOL)a3;
- (void)_setupWarningButtonIn:(id)a3 forRevealing:(BOOL)a4;
- (void)didAskForMoreHelp:(id)a3;
- (void)didBlockContact:(id)a3;
- (void)evidenceToReportWithContext:(id)a3 completionHandler:(id)a4;
- (void)layoutSubviews;
- (void)obscureSensitiveContent:(BOOL)a3;
- (void)prepareForReuse;
- (void)revealSensitiveContent:(BOOL)a3;
- (void)tapGestureRecognized:(id)a3;
- (void)updateObscuredStateForChatItem:(id)a3;
@end

@implementation CKObscurableBalloonView

- (void)updateObscuredStateForChatItem:(id)a3
{
  v9 = a3;
  v4 = [v9 commSafetyTransferLocalURL];
  [(CKObscurableBalloonView *)self setCommSafetyTransferLocalURL:v4];

  v5 = [v9 commSafetyTransferGUID];
  [(CKObscurableBalloonView *)self setCommSafetyTransferGUID:v5];

  if ([v9 isCommSafetySensitiveViewable])
  {
    -[CKObscurableBalloonView revealSensitiveContent:](self, "revealSensitiveContent:", [v9 itemIsReplyContextPreview]);
  }

  else if ([v9 isCommSafetySensitiveNotViewable])
  {
    -[CKObscurableBalloonView obscureSensitiveContent:](self, "obscureSensitiveContent:", [v9 itemIsReplyContextPreview]);
    v6 = [v9 commSafetyTransferLocalURL];
    v7 = [CKCommSafetyAnalytics contentTypeForURL:v6];

    v8 = [v9 commSafetyTransferGUID];
    [CKCommSafetyAnalytics recordObscuredViewShownWithContentType:v7 subcontentType:0 identifier:v8];
  }
}

- (void)obscureSensitiveContent:(BOOL)a3
{
  [(CKObscurableBalloonView *)self _setupObscuringView:a3];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 shouldUseRotisserieScrolling];

  if (v5)
  {
    v7 = [(CKObscurableBalloonView *)self _cellHoldingView];
    v6 = [v7 layer];
    [v6 setAllowsGroupOpacity:1];
  }
}

- (void)revealSensitiveContent:(BOOL)a3
{
  if ([(CKObscurableBalloonView *)self isObscured])
  {
    v5 = [(CKObscurableBalloonView *)self obscuringView];
    [v5 removeFromSuperview];

    [(CKObscurableBalloonView *)self setObscuringView:0];
  }

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 shouldUseRotisserieScrolling];

  if (v7)
  {
    v8 = [(CKObscurableBalloonView *)self _cellHoldingView];
    v9 = [v8 layer];
    [v9 setAllowsGroupOpacity:0];
  }

  if (!a3)
  {
    v10 = [MEMORY[0x1E69A7FC8] sharedManager];
    v11 = [v10 enablementGroup];

    if (v11 == 2)
    {
      [(CKObscurableBalloonView *)self _setupForAdultsIn:self revealingContent:1];
    }

    v12 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
    v13 = [v12 isRevealingContentEnabled];

    if (v13)
    {

      [(CKObscurableBalloonView *)self _setupWarningButtonIn:self forRevealing:1];
    }
  }
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v6 = [v5 hitTest:0 withEvent:?];
  if (!-[CKObscurableBalloonView isObscured](self, "isObscured") || ([MEMORY[0x1E69A7FC8] sharedManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "enablementGroup"), v7, v8 != 2) || (-[CKObscurableBalloonView showButton](self, "showButton"), v9 = objc_claimAutoreleasedReturnValue(), v9, v6 == v9))
  {
    v10.receiver = self;
    v10.super_class = CKObscurableBalloonView;
    [(CKBalloonView *)&v10 tapGestureRecognized:v4];
  }
}

- (id)_cellHoldingView
{
  v2 = [(CKObscurableBalloonView *)self superview];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)_setupObscuringView:(BOOL)a3
{
  v67[4] = *MEMORY[0x1E69E9840];
  if (![(CKObscurableBalloonView *)self isObscured])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v5 _setOverrideUserInterfaceRenderingMode:2];
    v6 = +[CKUIBehavior sharedBehaviors];
    -[UIView _setOverrideUserInterfaceStyle:](v5, "_setOverrideUserInterfaceStyle:", [v6 obscurableBalloonBlurMaterialInterfaceStyle]);

    [(CKObscurableBalloonView *)self blurEffect];
    v7 = v61 = a3;
    [(UIView *)v5 addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = MEMORY[0x1E696ACD8];
    v59 = [v7 topAnchor];
    v57 = [(UIView *)v5 topAnchor];
    v55 = [v59 constraintEqualToAnchor:v57];
    v67[0] = v55;
    v53 = [v7 bottomAnchor];
    v8 = [(UIView *)v5 bottomAnchor];
    v9 = [v53 constraintEqualToAnchor:v8];
    v67[1] = v9;
    v10 = [v7 leadingAnchor];
    v11 = [(UIView *)v5 leadingAnchor];
    [v10 constraintEqualToAnchor:v11];
    v12 = v64 = self;
    v67[2] = v12;
    v13 = [v7 trailingAnchor];
    v63 = v5;
    v14 = [(UIView *)v5 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v67[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
    [v51 activateConstraints:v16];

    v17 = v7;
    v18 = v64;

    if (!v61)
    {
      v19 = [(CKObscurableBalloonView *)v64 sensitiveContentDescription];
      v20 = [v17 contentView];
      [v20 addSubview:v19];

      [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 sensitiveLabelPadding];
      v23 = v22;

      v24 = [v19 centerYAnchor];
      v25 = [v17 contentView];
      v26 = [v25 centerYAnchor];
      v27 = [v24 constraintEqualToAnchor:v26];

      LODWORD(v28) = 1143930880;
      [v27 setPriority:v28];
      v50 = MEMORY[0x1E696ACD8];
      v56 = [v19 centerXAnchor];
      v58 = [v17 contentView];
      v54 = [v58 centerXAnchor];
      v52 = [v56 constraintEqualToAnchor:v54];
      v66[0] = v52;
      v66[1] = v27;
      v60 = v27;
      v29 = [v19 leadingAnchor];
      v30 = [v17 contentView];
      v31 = [v30 leadingAnchor];
      v32 = [v29 constraintGreaterThanOrEqualToAnchor:v31 constant:v23];
      v66[2] = v32;
      v62 = v19;
      v33 = [v19 trailingAnchor];
      v34 = v17;
      v35 = [v17 contentView];
      v36 = [v35 trailingAnchor];
      v37 = [v33 constraintLessThanOrEqualToAnchor:v36 constant:-v23];
      v66[3] = v37;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
      [v50 activateConstraints:v38];

      v18 = v64;
      v39 = [(CKObscurableBalloonView *)v64 obscurableBalloonDelegate];
      LODWORD(v32) = [v39 isRevealingContentEnabled];

      if (v32)
      {
        v40 = [(CKObscurableBalloonView *)v64 _containerView];
        [(CKObscurableBalloonView *)v64 _setupWarningButtonIn:v40 forRevealing:0];
      }

      v41 = [MEMORY[0x1E69A7FC8] sharedManager];
      v42 = [v41 enablementGroup];

      v43 = [(CKObscurableBalloonView *)v64 _containerView];
      if (v42 == 2)
      {
        [(CKObscurableBalloonView *)v64 _setupForAdultsIn:v43 revealingContent:0];
      }

      else
      {
        v44 = [(CKObscurableBalloonView *)v64 obscuredContentBadgeView];
        [(CKObscurableBalloonView *)v64 _setupForChildrenIn:v43 withBadgeView:v44];
      }

      v17 = v34;
    }

    [(CKObscurableBalloonView *)v18 addSubview:v63];
    [(CKObscurableBalloonView *)v18 bringSubviewToFront:v63];
    v45 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
    [(CKBalloonView *)v18 balloonDescriptor];
    v46 = [(CKBalloonMaskLayer *)v45 initWithDescriptor:v65];
    [(CKObscurableBalloonView *)v18 setMaskLayer:v46];

    v47 = [(CKObscurableBalloonView *)v18 maskLayer];
    v48 = [(UIView *)v63 layer];
    [v48 setMask:v47];

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
  v11 = [(CKObscurableBalloonView *)self obscuringView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(CKObscurableBalloonView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(CKObscurableBalloonView *)self maskLayer];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [MEMORY[0x1E69DC668] sharedApplication];
  v22 = [v21 userInterfaceLayoutDirection] == 1;

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
    v30 = [(CKObscurableBalloonView *)self obscuredContentBadgeView];
    v29[2](v29, v30);
  }

  if (self->_showButton)
  {
    v31 = [(CKObscurableBalloonView *)self showButton];
    v29[2](v29, v31);
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

- (void)_setupForAdultsIn:(id)a3 revealingContent:(BOOL)a4
{
  if (!a4)
  {
    v6 = a3;
    v7 = [(CKObscurableBalloonView *)self showButton];
    [v6 addSubview:v7];
  }
}

- (void)_setupWarningButtonIn:(id)a3 forRevealing:(BOOL)a4
{
  v4 = a4;
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CKObscurableBalloonView *)self warningButton];
  v8 = [v7 configuration];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = v9;
  if (v4)
  {
    [v9 obscurableBalloonWarningButtonBackgroundConfigurationRevealed];
  }

  else
  {
    [v9 obscurableBalloonWarningButtonBackgroundConfigurationObscured];
  }
  v11 = ;

  [v8 setBackground:v11];
  [v7 setConfiguration:v8];
  [v6 addSubview:v7];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 obscurableBalloonVerticalPadding];
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 obscurableBalloonHorizontalPadding];
  v17 = v16;

  v26 = MEMORY[0x1E696ACD8];
  v18 = [v7 topAnchor];
  v19 = [v6 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v14];
  v27[0] = v20;
  v21 = [v7 trailingAnchor];
  v22 = [v6 trailingAnchor];

  v23 = [v21 constraintEqualToAnchor:v22 constant:-v17];
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
    v3 = [(CKObscurableBalloonView *)self obscuringView];
    [v3 removeFromSuperview];

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
  v2 = [(CKObscurableBalloonView *)self blurEffect];
  v3 = [v2 effect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_containerView
{
  v2 = [(CKObscurableBalloonView *)self blurEffect];
  v3 = [v2 contentView];

  return v3;
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
    v8 = [v7 sensitiveLabelColor];
    [(UILabel *)v4 setTextColor:v8];

    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 sensitiveLabelFont];
    [(UILabel *)v4 setFont:v10];

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
    v6 = [v5 obscurableBalloonShowButtonConfiguration];
    [(UIButton *)v4 setConfiguration:v6];

    v7 = [(UIButton *)v4 titleLabel];
    [v7 _setOverrideUserInterfaceStyle:2];

    v8 = [(UIButton *)v4 imageView];
    [v8 _setOverrideUserInterfaceStyle:2];

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
    v6 = [v5 obscurableBalloonObscuredContentBadgeImage];
    v7 = [v4 initWithImage:v6];

    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 obscurableBalloonBadgeTintColor];
    [(UIImageView *)v7 setTintColor:v9];

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
    v6 = [v5 obscurableBalloonWarningButtonConfiguration];
    [(UIButton *)v4 setConfiguration:v6];

    v7 = [(UIButton *)v4 imageView];
    [v7 _setOverrideUserInterfaceStyle:2];

    [(UIButton *)v4 setShowsMenuAsPrimaryAction:1];
    v8 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
    if ([v8 isReportingEnabled])
    {
      v9 = 97;
    }

    else
    {
      v9 = 1;
    }

    if (v8)
    {
      if (self->_commSafetyTransferGUID)
      {
        v22 = @"SCUIAnalyticsContextKeyForContextDictionary";
        v10 = [(CKObscurableBalloonView *)self _buildContextKeyIdentifierForContextMenuEvents];
        v23[0] = v10;
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

- (void)_presentGetHelpAlert:(id)a3
{
  v4 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
    [v6 presentGetHelpAlert];
  }
}

- (void)_menuWillPresent
{
  if (self->_commSafetyTransferLocalURL)
  {
    v3 = [CKCommSafetyAnalytics contentTypeForURL:?];
    v4 = [(CKObscurableBalloonView *)self isObscured];
    v5 = [(CKObscurableBalloonView *)self _buildContextKeyIdentifierForContextMenuEvents];
    [CKCommSafetyAnalytics recordContextMenuButtonTappedWithContentType:v3 subContentType:0 direction:2 options:0 isBlurred:v4 identifier:v5];
  }
}

- (void)didAskForMoreHelp:(id)a3
{
  v3 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
  [v3 didTapWaysToGetHelp];
}

- (void)didBlockContact:(id)a3
{
  v4 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
  [v4 didTapBlockContactInBalloonView:self];
}

- (void)evidenceToReportWithContext:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CKObscurableBalloonView *)self obscurableBalloonDelegate];
    [v9 evidenceToReportWithContext:v10 balloonView:self completionHandler:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    v6[2](v6, 0, v9);
  }
}

- (CKObscurableBalloonViewDelegate)obscurableBalloonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_obscurableBalloonDelegate);

  return WeakRetained;
}

@end