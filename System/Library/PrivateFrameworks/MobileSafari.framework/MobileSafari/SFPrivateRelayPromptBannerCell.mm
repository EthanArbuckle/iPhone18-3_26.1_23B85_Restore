@interface SFPrivateRelayPromptBannerCell
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (SFPrivateRelayPromptBannerCell)initWithCoder:(id)a3;
- (SFPrivateRelayPromptBannerCell)initWithFrame:(CGRect)a3;
- (id)_attributedStringForMessage:(id)a3;
- (id)focusEffect;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_dismiss:(id)a3;
- (void)_turnOnPrivateRelay:(id)a3;
- (void)_updateTurnOnButtonConfiguration;
- (void)configureUsingBanner:(id)a3;
- (void)layoutSubviews;
- (void)setDismissHandler:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTurnOnButton:(id)a3;
@end

@implementation SFPrivateRelayPromptBannerCell

- (SFPrivateRelayPromptBannerCell)initWithFrame:(CGRect)a3
{
  v91[2] = *MEMORY[0x1E69E9840];
  v86.receiver = self;
  v86.super_class = SFPrivateRelayPromptBannerCell;
  v3 = [(SFPrivateRelayPromptBannerCell *)&v86 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [(UIVisualEffectView *)SFBannerBackgroundView sf_startPageCellBackgroundEffectViewWithShadow:0];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(SFBannerBackgroundView *)v3->_backgroundView setBannerStyle:1];
    [(SFBannerBackgroundView *)v3->_backgroundView _setGroupName:0];
    [(SFBannerBackgroundView *)v3->_backgroundView _setContinuousCornerRadius:8.0];
    [(SFPrivateRelayPromptBannerCell *)v3 setBackgroundView:v3->_backgroundView];
    [(SFPrivateRelayPromptBannerCell *)v3 setLayoutMargins:30.0, 30.0, 30.0, 30.0];
    v85 = [MEMORY[0x1E69DB878] _sf_preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] symbolicTraits:2];
    v6 = [MEMORY[0x1E69DCC10] sf_startPageBannerTitleLabelWithFont:v85];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFPrivateRelayPromptBannerCell *)v3 addSubview:v3->_titleLabel];
    v8 = objc_alloc_init(MEMORY[0x1E69DD168]);
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v8;

    [(UITextView *)v3->_messageLabel setDelegate:v3];
    [(UITextView *)v3->_messageLabel setEditable:0];
    [(UITextView *)v3->_messageLabel setSelectable:1];
    [(UITextView *)v3->_messageLabel setScrollEnabled:0];
    v10 = [(UITextView *)v3->_messageLabel textContainer];
    [v10 setLineFragmentPadding:0.0];

    [(UITextView *)v3->_messageLabel _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v3->_messageLabel setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)v3->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v3->_messageLabel setBackgroundColor:v11];

    [(UITextView *)v3->_messageLabel setTextAlignment:1];
    [(UITextView *)v3->_messageLabel setAdjustsFontForContentSizeCategory:1];
    v88 = *MEMORY[0x1E69DB650];
    v12 = [MEMORY[0x1E69DC888] linkColor];
    v89 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    [(UITextView *)v3->_messageLabel setLinkTextAttributes:v13];

    LODWORD(v14) = 1148846080;
    [(UITextView *)v3->_messageLabel setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UITextView *)v3->_messageLabel setContentCompressionResistancePriority:1 forAxis:v15];
    [(SFPrivateRelayPromptBannerCell *)v3 addSubview:v3->_messageLabel];
    v16 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v16 setButtonSize:3];
    [v16 setContentInsets:{10.0, 5.0, 10.0, 5.0}];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    [v16 setImage:v17];

    v18 = [MEMORY[0x1E69DCAD8] configurationWithWeight:9];
    [v16 setPreferredSymbolConfigurationForImage:v18];

    v19 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v16 primaryAction:0];
    v20 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v19 setTintColor:v20];

    [(UIButton *)v19 setPointerStyleProvider:&__block_literal_global_16];
    [(UIButton *)v19 setTintAdjustmentMode:1];
    [(UIButton *)v19 _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(UIButton *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    dismissButton = v3->_dismissButton;
    v3->_dismissButton = v19;

    [(UIButton *)v3->_dismissButton addTarget:v3 action:sel__dismiss_ forControlEvents:0x2000];
    [(SFPrivateRelayPromptBannerCell *)v3 addSubview:v3->_dismissButton];
    v22 = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    [v22 setCornerStyle:4];
    [v22 setButtonSize:0];
    v23 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v23 setAlignment:1];
    [v23 setLineBreakStrategy:1];
    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    v25 = _WBSLocalizedString();
    v90[0] = *MEMORY[0x1E69DB648];
    v26 = turnOnButtonFont();
    v90[1] = *MEMORY[0x1E69DB688];
    v91[0] = v26;
    v91[1] = v23;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:2];
    v28 = [v24 initWithString:v25 attributes:v27];
    [v22 setAttributedTitle:v28];

    v29 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v22 primaryAction:0];
    v30 = [(UIButton *)v29 titleLabel];
    [v30 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v29 _sf_setMatchesIntrinsicContentSize];

    turnOnButton = v3->_turnOnButton;
    v3->_turnOnButton = v29;

    [(UIButton *)v3->_turnOnButton addTarget:v3 action:sel__turnOnPrivateRelay_ forControlEvents:0x2000];
    [(SFPrivateRelayPromptBannerCell *)v3 addSubview:v3->_turnOnButton];
    v32 = [(UIButton *)v3->_turnOnButton bottomAnchor];
    v33 = [(SFPrivateRelayPromptBannerCell *)v3 readableContentGuide];
    v66 = MEMORY[0x1E696ACD8];
    v84 = [(UILabel *)v3->_titleLabel topAnchor];
    v83 = [v33 topAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v87[0] = v82;
    v81 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v80 = [v33 leadingAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v87[1] = v79;
    v78 = [v33 trailingAnchor];
    v77 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77];
    v87[2] = v76;
    v75 = [(UILabel *)v3->_titleLabel centerXAnchor];
    v74 = [(SFPrivateRelayPromptBannerCell *)v3 centerXAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v87[3] = v73;
    v72 = [(UITextView *)v3->_messageLabel topAnchor];
    v71 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:8.0];
    v87[4] = v70;
    v69 = [(UITextView *)v3->_messageLabel leadingAnchor];
    v68 = [v33 leadingAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v87[5] = v67;
    v65 = [v33 trailingAnchor];
    v64 = [(UITextView *)v3->_messageLabel trailingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v87[6] = v63;
    v62 = [(UITextView *)v3->_messageLabel centerXAnchor];
    v61 = [(SFPrivateRelayPromptBannerCell *)v3 centerXAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v87[7] = v60;
    v57 = [(UIButton *)v3->_turnOnButton topAnchor];
    v56 = [(UITextView *)v3->_messageLabel bottomAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:16.0];
    v87[8] = v55;
    v54 = [(UIButton *)v3->_turnOnButton centerXAnchor];
    v53 = [v33 centerXAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v87[9] = v52;
    v51 = [(UIButton *)v3->_turnOnButton leadingAnchor];
    v59 = v33;
    v50 = [v33 leadingAnchor];
    v49 = [v51 constraintGreaterThanOrEqualToAnchor:v50];
    v87[10] = v49;
    v48 = [(UIButton *)v3->_dismissButton leadingAnchor];
    v47 = [(SFPrivateRelayPromptBannerCell *)v3 leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:10.0];
    v87[11] = v46;
    v34 = [(UIButton *)v3->_dismissButton topAnchor];
    v35 = [(SFPrivateRelayPromptBannerCell *)v3 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:10.0];
    v87[12] = v36;
    v37 = [v33 bottomAnchor];
    v58 = v32;
    v38 = [v37 constraintGreaterThanOrEqualToAnchor:v32];
    v87[13] = v38;
    v39 = [v33 bottomAnchor];
    v40 = [v39 constraintEqualToAnchor:v32];
    LODWORD(v41) = 1132068864;
    v42 = [v40 sf_withPriority:v41];
    v87[14] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:15];
    [v66 activateConstraints:v43];

    v44 = v3;
  }

  return v3;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v13.receiver = self;
  v13.super_class = SFPrivateRelayPromptBannerCell;
  v4 = [(SFPrivateRelayPromptBannerCell *)&v13 preferredLayoutAttributesFittingAttributes:a3];
  [(SFPrivateRelayPromptBannerCell *)self layoutIfNeeded];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFPrivateRelayPromptBannerCell *)self bounds];
  [(SFPrivateRelayPromptBannerCell *)self systemLayoutSizeFittingSize:CGRectGetWidth(v15), *(MEMORY[0x1E69DE090] + 8)];
  [v4 setFrame:{v6, v8, v10, v11}];

  return v4;
}

- (SFPrivateRelayPromptBannerCell)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFPrivateRelayPromptBannerCell;
  return [(SFPrivateRelayPromptBannerCell *)&v4 initWithCoder:a3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFPrivateRelayPromptBannerCell;
  [(SFPrivateRelayPromptBannerCell *)&v3 layoutSubviews];
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel setPreferredMaxLayoutWidth:CGRectGetWidth(v4)];
  [(UITextView *)self->_messageLabel frame];
  [(UITextView *)self->_messageLabel _setPreferredMaxLayoutWidth:CGRectGetWidth(v5)];
  [(SFPrivateRelayPromptBannerCell *)self _updateTurnOnButtonConfiguration];
}

- (id)focusEffect
{
  v2 = MEMORY[0x1E69DCA28];
  [(SFPrivateRelayPromptBannerCell *)self bounds];
  v3 = *MEMORY[0x1E69796E8];

  return [v2 effectWithRoundedRect:v3 cornerRadius:? curve:?];
}

- (void)_dismiss:(id)a3
{
  v4 = [MEMORY[0x1E69C8810] sharedLogger];
  [v4 reportPrivateRelayModulePromptEvent:@"Dismiss"];

  v5 = *(self->_dismissHandler + 2);

  v5();
}

- (void)_turnOnPrivateRelay:(id)a3
{
  v4 = [MEMORY[0x1E69C8810] sharedLogger];
  [v4 reportPrivateRelayModulePromptEvent:@"Turn On Private Relay"];

  v5 = [MEMORY[0x1E69C9808] sharedManager];
  [v5 setPrivacyProxyEnabled:1 completionHandler:0];

  v6 = *(self->_dismissHandler + 2);

  v6();
}

- (void)_updateTurnOnButtonConfiguration
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIButton *)self->_turnOnButton titleLabel];
  v4 = turnOnButtonFont();
  v5 = [v3 text];
  [v3 frame];
  v7 = v6;
  v18 = *MEMORY[0x1E69DB648];
  v19[0] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [v5 boundingRectWithSize:1 options:v8 attributes:0 context:{v7, 1.79769313e308}];
  v10 = v9;

  [v4 lineHeight];
  v12 = round(v10 / v11);
  if (v12 > 1.0)
  {
    v13 = -1;
  }

  else
  {
    v13 = 4;
  }

  v14 = [(UIButton *)self->_turnOnButton configuration];
  v15 = [v14 cornerStyle];

  if (v13 != v15)
  {
    v16 = [(UIButton *)self->_turnOnButton configuration];
    [v16 setCornerStyle:v13];
    if (v12 > 1.0)
    {
      v17 = [v16 background];
      [v17 setCornerRadius:8.0];
    }

    [(UIButton *)self->_turnOnButton setConfiguration:v16];
  }
}

- (void)configureUsingBanner:(id)a3
{
  v23 = a3;
  v4 = [v23 image];
  if (v4)
  {
    v5 = MEMORY[0x1E696AAB0];
    v6 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v4];
    v7 = [v5 attributedStringWithAttachment:v6];

    v8 = [v23 title];

    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
      if ([(UIView *)self _sf_usesLeftToRightLayout])
      {
        [v9 appendAttributedString:v7];
        v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v9 appendAttributedString:v10];

        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        v12 = [v23 title];
        v13 = [v11 initWithString:v12];
        [v9 appendAttributedString:v13];
      }

      else
      {
        v14 = objc_alloc(MEMORY[0x1E696AAB0]);
        v15 = [v23 title];
        v16 = [v14 initWithString:v15];
        [v9 appendAttributedString:v16];

        v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v9 appendAttributedString:v17];

        [v9 appendAttributedString:v7];
      }

      [(UILabel *)self->_titleLabel setAttributedText:v9];
    }

    else
    {
      [(UILabel *)self->_titleLabel setAttributedText:v7];
    }
  }

  else
  {
    v7 = [v23 title];
    [(UILabel *)self->_titleLabel setText:v7];
  }

  v18 = [v23 message];
  v19 = [(SFPrivateRelayPromptBannerCell *)self _attributedStringForMessage:v18];

  v20 = _WBSLocalizedString();
  [v19 safari_replaceOccurrenceOfString:@"{learn-more-link}" withString:v20 link:@"learn-more://"];

  [(UITextView *)self->_messageLabel setAttributedText:v19];
  v21 = [v23 dismissHandler];
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = v21;

  -[SFPrivateRelayPromptBannerCell setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v23 userInterfaceStyle]);
  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (id)_attributedStringForMessage:(id)a3
{
  v3 = MEMORY[0x1E696AD40];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v7 = [v5 length];
  [v5 addAttribute:*MEMORY[0x1E69DB648] value:v6 range:{0, v7}];
  v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v8 setAlignment:1];
  [v5 addAttribute:*MEMORY[0x1E69DB688] value:v8 range:{0, v7}];
  v9 = *MEMORY[0x1E69DB650];
  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 addAttribute:v9 value:v10 range:{0, v7}];

  return v5;
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_titleLabel setText:a3];

  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (void)setMessage:(id)a3
{
  [(UITextView *)self->_messageLabel setText:a3];

  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (void)setTurnOnButton:(id)a3
{
  objc_storeStrong(&self->_turnOnButton, a3);

  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (void)setDismissHandler:(id)a3
{
  v4 = _Block_copy(a3);
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = v4;

  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v6 = [MEMORY[0x1E69C8810] sharedLogger];
  [v6 reportPrivateRelayModulePromptEvent:@"Learn More"];

  [MEMORY[0x1E69C9808] openPrivateRelayICloudSettings];
  return 0;
}

@end