@interface SFPrivateRelayPromptBannerCell
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (SFPrivateRelayPromptBannerCell)initWithCoder:(id)coder;
- (SFPrivateRelayPromptBannerCell)initWithFrame:(CGRect)frame;
- (id)_attributedStringForMessage:(id)message;
- (id)focusEffect;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_dismiss:(id)_dismiss;
- (void)_turnOnPrivateRelay:(id)relay;
- (void)_updateTurnOnButtonConfiguration;
- (void)configureUsingBanner:(id)banner;
- (void)layoutSubviews;
- (void)setDismissHandler:(id)handler;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
- (void)setTurnOnButton:(id)button;
@end

@implementation SFPrivateRelayPromptBannerCell

- (SFPrivateRelayPromptBannerCell)initWithFrame:(CGRect)frame
{
  v91[2] = *MEMORY[0x1E69E9840];
  v86.receiver = self;
  v86.super_class = SFPrivateRelayPromptBannerCell;
  v3 = [(SFPrivateRelayPromptBannerCell *)&v86 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    textContainer = [(UITextView *)v3->_messageLabel textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)v3->_messageLabel _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v3->_messageLabel setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)v3->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v3->_messageLabel setBackgroundColor:clearColor];

    [(UITextView *)v3->_messageLabel setTextAlignment:1];
    [(UITextView *)v3->_messageLabel setAdjustsFontForContentSizeCategory:1];
    v88 = *MEMORY[0x1E69DB650];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    v89 = linkColor;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    [(UITextView *)v3->_messageLabel setLinkTextAttributes:v13];

    LODWORD(v14) = 1148846080;
    [(UITextView *)v3->_messageLabel setContentHuggingPriority:1 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UITextView *)v3->_messageLabel setContentCompressionResistancePriority:1 forAxis:v15];
    [(SFPrivateRelayPromptBannerCell *)v3 addSubview:v3->_messageLabel];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setButtonSize:3];
    [plainButtonConfiguration setContentInsets:{10.0, 5.0, 10.0, 5.0}];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    [plainButtonConfiguration setImage:v17];

    v18 = [MEMORY[0x1E69DCAD8] configurationWithWeight:9];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v18];

    v19 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v19 setTintColor:secondaryLabelColor];

    [(UIButton *)v19 setPointerStyleProvider:&__block_literal_global_16];
    [(UIButton *)v19 setTintAdjustmentMode:1];
    [(UIButton *)v19 _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(UIButton *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    dismissButton = v3->_dismissButton;
    v3->_dismissButton = v19;

    [(UIButton *)v3->_dismissButton addTarget:v3 action:sel__dismiss_ forControlEvents:0x2000];
    [(SFPrivateRelayPromptBannerCell *)v3 addSubview:v3->_dismissButton];
    borderedProminentButtonConfiguration = [MEMORY[0x1E69DC740] borderedProminentButtonConfiguration];
    [borderedProminentButtonConfiguration setCornerStyle:4];
    [borderedProminentButtonConfiguration setButtonSize:0];
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
    [borderedProminentButtonConfiguration setAttributedTitle:v28];

    v29 = [MEMORY[0x1E69DC738] buttonWithConfiguration:borderedProminentButtonConfiguration primaryAction:0];
    titleLabel = [(UIButton *)v29 titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v29 _sf_setMatchesIntrinsicContentSize];

    turnOnButton = v3->_turnOnButton;
    v3->_turnOnButton = v29;

    [(UIButton *)v3->_turnOnButton addTarget:v3 action:sel__turnOnPrivateRelay_ forControlEvents:0x2000];
    [(SFPrivateRelayPromptBannerCell *)v3 addSubview:v3->_turnOnButton];
    bottomAnchor = [(UIButton *)v3->_turnOnButton bottomAnchor];
    readableContentGuide = [(SFPrivateRelayPromptBannerCell *)v3 readableContentGuide];
    v66 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [readableContentGuide topAnchor];
    v82 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v87[0] = v82;
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [readableContentGuide leadingAnchor];
    v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v87[1] = v79;
    trailingAnchor = [readableContentGuide trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v76 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v87[2] = v76;
    centerXAnchor = [(UILabel *)v3->_titleLabel centerXAnchor];
    centerXAnchor2 = [(SFPrivateRelayPromptBannerCell *)v3 centerXAnchor];
    v73 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v87[3] = v73;
    topAnchor3 = [(UITextView *)v3->_messageLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v70 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:8.0];
    v87[4] = v70;
    leadingAnchor3 = [(UITextView *)v3->_messageLabel leadingAnchor];
    leadingAnchor4 = [readableContentGuide leadingAnchor];
    v67 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v87[5] = v67;
    trailingAnchor3 = [readableContentGuide trailingAnchor];
    trailingAnchor4 = [(UITextView *)v3->_messageLabel trailingAnchor];
    v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v87[6] = v63;
    centerXAnchor3 = [(UITextView *)v3->_messageLabel centerXAnchor];
    centerXAnchor4 = [(SFPrivateRelayPromptBannerCell *)v3 centerXAnchor];
    v60 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v87[7] = v60;
    topAnchor4 = [(UIButton *)v3->_turnOnButton topAnchor];
    bottomAnchor3 = [(UITextView *)v3->_messageLabel bottomAnchor];
    v55 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3 constant:16.0];
    v87[8] = v55;
    centerXAnchor5 = [(UIButton *)v3->_turnOnButton centerXAnchor];
    centerXAnchor6 = [readableContentGuide centerXAnchor];
    v52 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v87[9] = v52;
    leadingAnchor5 = [(UIButton *)v3->_turnOnButton leadingAnchor];
    v59 = readableContentGuide;
    leadingAnchor6 = [readableContentGuide leadingAnchor];
    v49 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
    v87[10] = v49;
    leadingAnchor7 = [(UIButton *)v3->_dismissButton leadingAnchor];
    leadingAnchor8 = [(SFPrivateRelayPromptBannerCell *)v3 leadingAnchor];
    v46 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:10.0];
    v87[11] = v46;
    topAnchor5 = [(UIButton *)v3->_dismissButton topAnchor];
    topAnchor6 = [(SFPrivateRelayPromptBannerCell *)v3 topAnchor];
    v36 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:10.0];
    v87[12] = v36;
    bottomAnchor4 = [readableContentGuide bottomAnchor];
    v58 = bottomAnchor;
    v38 = [bottomAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor];
    v87[13] = v38;
    bottomAnchor5 = [readableContentGuide bottomAnchor];
    v40 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor];
    LODWORD(v41) = 1132068864;
    v42 = [v40 sf_withPriority:v41];
    v87[14] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:15];
    [v66 activateConstraints:v43];

    v44 = v3;
  }

  return v3;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v13.receiver = self;
  v13.super_class = SFPrivateRelayPromptBannerCell;
  v4 = [(SFPrivateRelayPromptBannerCell *)&v13 preferredLayoutAttributesFittingAttributes:attributes];
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

- (SFPrivateRelayPromptBannerCell)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFPrivateRelayPromptBannerCell;
  return [(SFPrivateRelayPromptBannerCell *)&v4 initWithCoder:coder];
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

- (void)_dismiss:(id)_dismiss
{
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] reportPrivateRelayModulePromptEvent:@"Dismiss"];

  v5 = *(self->_dismissHandler + 2);

  v5();
}

- (void)_turnOnPrivateRelay:(id)relay
{
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] reportPrivateRelayModulePromptEvent:@"Turn On Private Relay"];

  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  [mEMORY[0x1E69C9808] setPrivacyProxyEnabled:1 completionHandler:0];

  v6 = *(self->_dismissHandler + 2);

  v6();
}

- (void)_updateTurnOnButtonConfiguration
{
  v19[1] = *MEMORY[0x1E69E9840];
  titleLabel = [(UIButton *)self->_turnOnButton titleLabel];
  v4 = turnOnButtonFont();
  text = [titleLabel text];
  [titleLabel frame];
  v7 = v6;
  v18 = *MEMORY[0x1E69DB648];
  v19[0] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [text boundingRectWithSize:1 options:v8 attributes:0 context:{v7, 1.79769313e308}];
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

  configuration = [(UIButton *)self->_turnOnButton configuration];
  cornerStyle = [configuration cornerStyle];

  if (v13 != cornerStyle)
  {
    configuration2 = [(UIButton *)self->_turnOnButton configuration];
    [configuration2 setCornerStyle:v13];
    if (v12 > 1.0)
    {
      background = [configuration2 background];
      [background setCornerRadius:8.0];
    }

    [(UIButton *)self->_turnOnButton setConfiguration:configuration2];
  }
}

- (void)configureUsingBanner:(id)banner
{
  bannerCopy = banner;
  image = [bannerCopy image];
  if (image)
  {
    v5 = MEMORY[0x1E696AAB0];
    v6 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:image];
    title4 = [v5 attributedStringWithAttachment:v6];

    title = [bannerCopy title];

    if (title)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
      if ([(UIView *)self _sf_usesLeftToRightLayout])
      {
        [v9 appendAttributedString:title4];
        v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v9 appendAttributedString:v10];

        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        title2 = [bannerCopy title];
        v13 = [v11 initWithString:title2];
        [v9 appendAttributedString:v13];
      }

      else
      {
        v14 = objc_alloc(MEMORY[0x1E696AAB0]);
        title3 = [bannerCopy title];
        v16 = [v14 initWithString:title3];
        [v9 appendAttributedString:v16];

        v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v9 appendAttributedString:v17];

        [v9 appendAttributedString:title4];
      }

      [(UILabel *)self->_titleLabel setAttributedText:v9];
    }

    else
    {
      [(UILabel *)self->_titleLabel setAttributedText:title4];
    }
  }

  else
  {
    title4 = [bannerCopy title];
    [(UILabel *)self->_titleLabel setText:title4];
  }

  message = [bannerCopy message];
  v19 = [(SFPrivateRelayPromptBannerCell *)self _attributedStringForMessage:message];

  v20 = _WBSLocalizedString();
  [v19 safari_replaceOccurrenceOfString:@"{learn-more-link}" withString:v20 link:@"learn-more://"];

  [(UITextView *)self->_messageLabel setAttributedText:v19];
  dismissHandler = [bannerCopy dismissHandler];
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = dismissHandler;

  -[SFPrivateRelayPromptBannerCell setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [bannerCopy userInterfaceStyle]);
  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (id)_attributedStringForMessage:(id)message
{
  v3 = MEMORY[0x1E696AD40];
  messageCopy = message;
  v5 = [[v3 alloc] initWithString:messageCopy];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v7 = [v5 length];
  [v5 addAttribute:*MEMORY[0x1E69DB648] value:v6 range:{0, v7}];
  v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v8 setAlignment:1];
  [v5 addAttribute:*MEMORY[0x1E69DB688] value:v8 range:{0, v7}];
  v9 = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 addAttribute:v9 value:secondaryLabelColor range:{0, v7}];

  return v5;
}

- (void)setTitle:(id)title
{
  [(UILabel *)self->_titleLabel setText:title];

  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (void)setMessage:(id)message
{
  [(UITextView *)self->_messageLabel setText:message];

  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (void)setTurnOnButton:(id)button
{
  objc_storeStrong(&self->_turnOnButton, button);

  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (void)setDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = v4;

  [(SFPrivateRelayPromptBannerCell *)self setNeedsLayout];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] reportPrivateRelayModulePromptEvent:@"Learn More"];

  [MEMORY[0x1E69C9808] openPrivateRelayICloudSettings];
  return 0;
}

@end