@interface CKKTEnhancedProtectionStatusCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKKTEnhancedProtectionStatusCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier state:(int64_t)state delegate:(id)delegate handlesInChat:(id)chat verifiedHandles:(id)handles titleString:(id)string shouldShowMacHeader:(BOOL)self0;
- (CKKTEnhancedProtectionStatusCellDelegate)delegate;
- (id)clearWarningAction;
- (id)ktStatusMenu;
- (id)learnMoreAction;
- (id)menuForKTStatusError;
- (id)menuForKTStatusTurnedOff;
- (id)menuForKTStatusUnavailable;
- (id)reportToAppleAction;
- (id)statusButtonConfiguration;
- (id)verifyConversationAction;
- (void)activateConstraints;
- (void)layoutSubviews;
- (void)reconfigureStatusButton;
- (void)setupConstraintsForLayouts;
- (void)setupSeparators;
- (void)setupStatusButton;
- (void)setupTitleLabel;
- (void)setupView;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTitleAndStatusButtonConfiguration;
@end

@implementation CKKTEnhancedProtectionStatusCell

- (CKKTEnhancedProtectionStatusCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier state:(int64_t)state delegate:(id)delegate handlesInChat:(id)chat verifiedHandles:(id)handles titleString:(id)string shouldShowMacHeader:(BOOL)self0
{
  delegateCopy = delegate;
  chatCopy = chat;
  handlesCopy = handles;
  stringCopy = string;
  v23.receiver = self;
  v23.super_class = CKKTEnhancedProtectionStatusCell;
  v20 = [(CKDetailsCell *)&v23 initWithStyle:style reuseIdentifier:identifier];
  v21 = v20;
  if (v20)
  {
    v20->_enhancedProtectionStatusCellState = state;
    objc_storeWeak(&v20->_delegate, delegateCopy);
    v21->_handlesInChatCount = [chatCopy count];
    v21->_verifiedHandlesCount = [handlesCopy count];
    objc_storeStrong(&v21->_titleString, string);
    v21->_shouldShowMacHeader = header;
    [(CKKTEnhancedProtectionStatusCell *)v21 setupView];
  }

  return v21;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKKTEnhancedProtectionStatusCell;
  [(CKKTEnhancedProtectionStatusCell *)&v4 traitCollectionDidChange:change];
  [(CKKTEnhancedProtectionStatusCell *)self activateConstraints];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKKTEnhancedProtectionStatusCell;
  [(CKDetailsCell *)&v3 layoutSubviews];
  [(CKKTEnhancedProtectionStatusCell *)self activateConstraints];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(CKKTEnhancedProtectionStatusCell *)self contentView:fits.width];
  [v5 layoutMargins];
  v7 = v6;
  contentView = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView layoutMargins];
  v10 = v7 + v9;

  contentView2 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView2 frame];
  v13 = v12 - v10;

  [(UIButton *)self->_ktStatusButton sizeThatFits:v13, 1.79769313e308];
  v15 = v14;
  v17 = v16;
  [(UILabel *)self->_macHeaderLabel sizeThatFits:v13, 1.79769313e308];
  v19 = v18;
  [(UILabel *)self->_ktTitleLabel sizeThatFits:v13, 1.79769313e308];
  if (v15 + v21 <= v13)
  {
    v22 = fmax(v17, v20);
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 detailsCellLabelPadding];
    v25 = 2.0;
  }

  else
  {
    v22 = v17 + 0.0 + v20;
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 detailsCellLabelPadding];
    v25 = 4.0;
  }

  v26 = v22 + v24 * v25;

  if (self->_macHeaderLabel && self->_shouldShowMacHeader)
  {
    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 detailsSectionHeaderPaddingAbove];
    v26 = v19 + v26 + v28;
  }

  contentView3 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView3 layoutMargins];
  v31 = v26 + v30;
  contentView4 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView4 layoutMargins];
  v34 = v31 + v33;

  v35 = width;
  v36 = v34;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)setupView
{
  [(CKKTEnhancedProtectionStatusCell *)self setupVibrancyEffectView];
  [(CKKTEnhancedProtectionStatusCell *)self setupTitleLabel];
  [(CKKTEnhancedProtectionStatusCell *)self setupStatusButton];
  [(CKKTEnhancedProtectionStatusCell *)self setupSeparators];
  if (self->_shouldShowMacHeader)
  {
    [(CKKTEnhancedProtectionStatusCell *)self setupMacHeaderLabel];
  }

  contentView = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView setBackgroundColor:0];

  [(CKKTEnhancedProtectionStatusCell *)self setupConstraintsForLayouts];
}

- (void)setupTitleLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  ktTitleLabel = self->_ktTitleLabel;
  self->_ktTitleLabel = v4;

  [(UILabel *)self->_ktTitleLabel setText:self->_titleString];
  v6 = self->_ktTitleLabel;
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)v6 setFont:v7];

  [(UILabel *)self->_ktTitleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_ktTitleLabel setLineBreakMode:0];
  [(UILabel *)self->_ktTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_ktTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView addSubview:self->_ktTitleLabel];
}

- (id)statusButtonConfiguration
{
  enhancedProtectionStatusCellState = self->_enhancedProtectionStatusCellState;
  if (enhancedProtectionStatusCellState > 3)
  {
    if ((enhancedProtectionStatusCellState - 6) < 2)
    {
      v8 = objc_alloc(MEMORY[0x1E696AAB0]);
      v9 = CKFrameworkBundle();
      v10 = v9;
      v11 = @"KT_STATE_UNAVAILABLE";
    }

    else
    {
      if (enhancedProtectionStatusCellState == 4)
      {
        if (CKIsRunningInMacCatalyst())
        {
          v32 = objc_alloc(MEMORY[0x1E696AD40]);
          v33 = CKFrameworkBundle();
          v34 = [v33 localizedStringForKey:@"KT_ENHANCED_PROTECTION_STATE_WARNING" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
          v10 = [v32 initWithString:v34];

          v35 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.down"];
          v36 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
          v37 = [v35 imageWithSymbolConfiguration:v36];

          redColor = [MEMORY[0x1E69DC888] redColor];
          v39 = [v37 imageWithTintColor:redColor];

          v40 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
          [v40 setImage:v39];
          [v40 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
          v41 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
          v42 = +[CKUIBehavior sharedBehaviors];
          [v42 ktStringAttachmentPadding];
          [v41 setBounds:?];

          v43 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v41];
          [v10 appendAttributedString:v43];

          v44 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v40];
          [v10 appendAttributedString:v44];

          v18 = [v10 copy];
LABEL_24:

          systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
          v22 = MEMORY[0x1E69DCAB8];
          v23 = @"exclamationmark.triangle.fill";
LABEL_25:
          v45 = [v22 systemImageNamed:v23];
          goto LABEL_29;
        }

        goto LABEL_22;
      }

      if (enhancedProtectionStatusCellState != 5)
      {
LABEL_22:
        v8 = objc_alloc(MEMORY[0x1E696AAB0]);
        v9 = CKFrameworkBundle();
        v10 = v9;
        v11 = @"KT_ENHANCED_PROTECTION_STATE_WARNING";
        goto LABEL_23;
      }

      v8 = objc_alloc(MEMORY[0x1E696AAB0]);
      v9 = CKFrameworkBundle();
      v10 = v9;
      v11 = @"KT_ENHANCED_PROTECTION_STATE_TURNED_OFF";
    }

LABEL_23:
    v39 = [v9 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
    v18 = [v8 initWithString:v39];
    goto LABEL_24;
  }

  if (enhancedProtectionStatusCellState == 1)
  {
    handlesInChatCount = [(CKKTEnhancedProtectionStatusCell *)self handlesInChatCount];
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = CKFrameworkBundle();
    v15 = v14;
    if (handlesInChatCount == 1)
    {
      v16 = @"KT_SINGLE_VERIFIED";
    }

    else
    {
      v16 = @"KT_MULTIPLE_VERIFIED";
    }

    v17 = [v14 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
    v18 = [v13 initWithString:v17];

    v19 = +[CKUIBehavior sharedBehaviors];
    theme = [v19 theme];
    systemRedColor = [theme secondaryLabelColor];

    v22 = MEMORY[0x1E69DCAB8];
    v23 = @"checkmark.circle.fill";
    goto LABEL_25;
  }

  if (enhancedProtectionStatusCellState != 2)
  {
    if (enhancedProtectionStatusCellState == 3)
    {
      v4 = objc_alloc(MEMORY[0x1E696AAB0]);
      v5 = CKFrameworkBundle();
      v6 = v5;
      v7 = @"KT_ENHANCED_PROTECTION_STATE_VERIFICATION_OFF";
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  handlesInChatCount = self->_handlesInChatCount;
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (handlesInChatCount >= 2)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = CKFrameworkBundle();
    v27 = [v26 localizedStringForKey:@"N_OF_N_VERIFIED" value:&stru_1F04268F8 table:@"ChatKitFormats-Key-Transparency"];
    v28 = [v25 localizedStringWithFormat:v27, -[CKKTEnhancedProtectionStatusCell verifiedHandlesCount](self, "verifiedHandlesCount"), -[CKKTEnhancedProtectionStatusCell handlesInChatCount](self, "handlesInChatCount")];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v31 = @"\u200F";
    }

    else
    {
      v31 = @"\u200E";
    }

    v6 = [(__CFString *)v31 stringByAppendingString:v28];

    v18 = [v4 initWithString:v6];
    goto LABEL_28;
  }

  v5 = CKFrameworkBundle();
  v6 = v5;
  v7 = @"KT_ENHANCED_PROTECTION_STATE_NOT_VERIFIED";
LABEL_27:
  v46 = [v5 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v18 = [v4 initWithString:v46];

LABEL_28:
  v47 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v47 theme];
  systemRedColor = [theme2 secondaryLabelColor];

  v45 = 0;
LABEL_29:
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [plainButtonConfiguration setAttributedTitle:v18];
  [plainButtonConfiguration setBaseForegroundColor:systemRedColor];
  [plainButtonConfiguration setBaseBackgroundColor:systemRedColor];
  v50 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v51 = [v45 imageWithSymbolConfiguration:v50];

  [plainButtonConfiguration setImage:v51];
  v52 = +[CKUIBehavior sharedBehaviors];
  [v52 ktStatusCellImagePadding];
  [plainButtonConfiguration setImagePadding:?];

  [plainButtonConfiguration setImagePlacement:2];
  [plainButtonConfiguration setTitleAlignment:1];

  return plainButtonConfiguration;
}

- (void)setupStatusButton
{
  v3 = MEMORY[0x1E69DC738];
  statusButtonConfiguration = [(CKKTEnhancedProtectionStatusCell *)self statusButtonConfiguration];
  v5 = [v3 buttonWithConfiguration:statusButtonConfiguration primaryAction:0];
  ktStatusButton = self->_ktStatusButton;
  self->_ktStatusButton = v5;

  [(UIButton *)self->_ktStatusButton setPreferredBehavioralStyle:1];
  v7 = self->_ktStatusButton;
  ktStatusMenu = [(CKKTEnhancedProtectionStatusCell *)self ktStatusMenu];
  [(UIButton *)v7 setMenu:ktStatusMenu];

  [(UIButton *)self->_ktStatusButton setShowsMenuAsPrimaryAction:1];
  if ((self->_enhancedProtectionStatusCellState - 1) <= 2)
  {
    [(UIButton *)self->_ktStatusButton setUserInteractionEnabled:0];
  }

  [(UIButton *)self->_ktStatusButton setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView addSubview:self->_ktStatusButton];
}

- (void)reconfigureStatusButton
{
  ktStatusButton = self->_ktStatusButton;
  statusButtonConfiguration = [(CKKTEnhancedProtectionStatusCell *)self statusButtonConfiguration];
  [(UIButton *)ktStatusButton setConfiguration:statusButtonConfiguration];

  v6 = self->_ktStatusButton;
  ktStatusMenu = [(CKKTEnhancedProtectionStatusCell *)self ktStatusMenu];
  [(UIButton *)v6 setMenu:ktStatusMenu];

  [(UIButton *)v6 setUserInteractionEnabled:(self->_enhancedProtectionStatusCellState - 4) < 0xFFFFFFFFFFFFFFFDLL];
}

- (void)setupSeparators
{
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];

  [(CKDetailsCell *)self setIndentTopSeperator:1];

  [(CKDetailsCell *)self setIndentBottomSeperator:1];
}

- (void)setupConstraintsForLayouts
{
  v135[4] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  horizontalLayoutConstraints = self->_horizontalLayoutConstraints;
  self->_horizontalLayoutConstraints = array;

  array2 = [MEMORY[0x1E695DF70] array];
  verticalLayoutConstraints = self->_verticalLayoutConstraints;
  self->_verticalLayoutConstraints = array2;

  if (CKIsRunningInMacCatalyst())
  {
    macHeaderLabel = self->_macHeaderLabel;
    if (macHeaderLabel)
    {
      if (self->_shouldShowMacHeader)
      {
        v90 = self->_horizontalLayoutConstraints;
        topAnchor = [(UILabel *)macHeaderLabel topAnchor];
        contentView = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        layoutMarginsGuide = [contentView layoutMarginsGuide];
        topAnchor2 = [layoutMarginsGuide topAnchor];
        v115 = +[CKUIBehavior sharedBehaviors];
        [v115 detailsSectionHeaderPaddingAbove];
        v105 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
        v135[0] = v105;
        heightAnchor = [(UILabel *)self->_macHeaderLabel heightAnchor];
        font = [(UILabel *)self->_macHeaderLabel font];
        [font pointSize];
        v85 = [heightAnchor constraintEqualToConstant:?];
        v135[1] = v85;
        leadingAnchor = [(UILabel *)self->_macHeaderLabel leadingAnchor];
        contentView2 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
        leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
        v8 = +[CKUIBehavior sharedBehaviors];
        [v8 detailsSectionHeaderPaddingLeading];
        v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
        v135[2] = v9;
        trailingAnchor = [(UILabel *)self->_macHeaderLabel trailingAnchor];
        contentView3 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
        trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
        v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v135[3] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:4];
        [(NSMutableArray *)v90 addObjectsFromArray:v15];

        v101 = self->_verticalLayoutConstraints;
        topAnchor3 = [(UILabel *)self->_macHeaderLabel topAnchor];
        contentView4 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
        topAnchor4 = [layoutMarginsGuide4 topAnchor];
        v116 = +[CKUIBehavior sharedBehaviors];
        [v116 detailsSectionHeaderPaddingAbove];
        v106 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
        v134[0] = v106;
        heightAnchor2 = [(UILabel *)self->_macHeaderLabel heightAnchor];
        font2 = [(UILabel *)self->_macHeaderLabel font];
        [font2 pointSize];
        v86 = [heightAnchor2 constraintEqualToConstant:?];
        v134[1] = v86;
        leadingAnchor3 = [(UILabel *)self->_macHeaderLabel leadingAnchor];
        contentView5 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
        leadingAnchor4 = [layoutMarginsGuide5 leadingAnchor];
        v17 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v134[2] = v17;
        trailingAnchor3 = [(UILabel *)self->_macHeaderLabel trailingAnchor];
        contentView6 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
        trailingAnchor4 = [layoutMarginsGuide6 trailingAnchor];
        v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v134[3] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:4];
        [(NSMutableArray *)v101 addObjectsFromArray:v23];
      }
    }
  }

  v117 = self->_verticalLayoutConstraints;
  topAnchor5 = [(UILabel *)self->_ktTitleLabel topAnchor];
  v25 = self->_macHeaderLabel;
  v122 = v25;
  if (v25)
  {
    [(UILabel *)v25 bottomAnchor];
  }

  else
  {
    contentView5 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
    leadingAnchor3 = [contentView5 layoutMarginsGuide];
    [leadingAnchor3 topAnchor];
  }
  v26 = ;
  v112 = +[CKUIBehavior sharedBehaviors];
  [v112 detailsCellLabelPadding];
  v102 = [topAnchor5 constraintEqualToAnchor:v26 constant:?];
  v133[0] = v102;
  leadingAnchor5 = [(UILabel *)self->_ktTitleLabel leadingAnchor];
  contentView7 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView7 layoutMarginsGuide];
  v87 = v107 = topAnchor5;
  leadingAnchor6 = [v87 leadingAnchor];
  v28 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v133[1] = v28;
  trailingAnchor5 = [(UILabel *)self->_ktTitleLabel trailingAnchor];
  contentView8 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView8 layoutMarginsGuide];
  v32 = v31 = v26;
  trailingAnchor6 = [v32 trailingAnchor];
  v34 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
  v133[2] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:3];
  [(NSMutableArray *)v117 addObjectsFromArray:v35];

  if (!v122)
  {

    v31 = contentView5;
  }

  v88 = self->_verticalLayoutConstraints;
  topAnchor6 = [(UIButton *)self->_ktStatusButton topAnchor];
  bottomAnchor = [(UILabel *)self->_ktTitleLabel bottomAnchor];
  v118 = +[CKUIBehavior sharedBehaviors];
  [v118 detailsCellLabelPadding];
  v108 = [topAnchor6 constraintEqualToAnchor:bottomAnchor constant:v36 + v36];
  v132[0] = v108;
  leadingAnchor7 = [(UIButton *)self->_ktStatusButton leadingAnchor];
  contentView9 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  layoutMarginsGuide7 = [contentView9 layoutMarginsGuide];
  leadingAnchor8 = [layoutMarginsGuide7 leadingAnchor];
  v79 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v132[1] = v79;
  trailingAnchor7 = [(UIButton *)self->_ktStatusButton trailingAnchor];
  contentView10 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  layoutMarginsGuide8 = [contentView10 layoutMarginsGuide];
  trailingAnchor8 = [layoutMarginsGuide8 trailingAnchor];
  v38 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
  v132[2] = v38;
  bottomAnchor2 = [(UIButton *)self->_ktStatusButton bottomAnchor];
  contentView11 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  layoutMarginsGuide9 = [contentView11 layoutMarginsGuide];
  bottomAnchor3 = [layoutMarginsGuide9 bottomAnchor];
  v43 = +[CKUIBehavior sharedBehaviors];
  [v43 detailsCellLabelPadding];
  v45 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v44];
  v132[3] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:4];
  [(NSMutableArray *)v88 addObjectsFromArray:v46];

  v119 = self->_horizontalLayoutConstraints;
  topAnchor7 = [(UILabel *)self->_ktTitleLabel topAnchor];
  v48 = self->_macHeaderLabel;
  v127 = v48;
  if (v48)
  {
    [(UILabel *)v48 bottomAnchor];
  }

  else
  {
    trailingAnchor7 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
    layoutMarginsGuide8 = [trailingAnchor7 layoutMarginsGuide];
    [layoutMarginsGuide8 topAnchor];
  }
  v49 = ;
  v124 = +[CKUIBehavior sharedBehaviors];
  [v124 detailsCellLabelPadding];
  v114 = [topAnchor7 constraintEqualToAnchor:v49 constant:?];
  v131[0] = v114;
  bottomAnchor4 = [(UILabel *)self->_ktTitleLabel bottomAnchor];
  contentView12 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  layoutMarginsGuide10 = [contentView12 layoutMarginsGuide];
  bottomAnchor5 = [layoutMarginsGuide10 bottomAnchor];
  v89 = +[CKUIBehavior sharedBehaviors];
  [v89 detailsCellLabelPadding];
  v80 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-v50];
  v131[1] = v80;
  leadingAnchor9 = [(UILabel *)self->_ktTitleLabel leadingAnchor];
  contentView13 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  layoutMarginsGuide11 = [contentView13 layoutMarginsGuide];
  leadingAnchor10 = [layoutMarginsGuide11 leadingAnchor];
  [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v54 = v94 = topAnchor7;
  v131[2] = v54;
  [(UILabel *)self->_ktTitleLabel trailingAnchor];
  v56 = v55 = v49;
  leadingAnchor11 = [(UIButton *)self->_ktStatusButton leadingAnchor];
  v58 = [v56 constraintLessThanOrEqualToAnchor:leadingAnchor11];
  v131[3] = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:4];
  [(NSMutableArray *)v119 addObjectsFromArray:v59];

  if (!v127)
  {

    v55 = trailingAnchor7;
  }

  v60 = self->_horizontalLayoutConstraints;
  trailingAnchor9 = [(UIButton *)self->_ktStatusButton trailingAnchor];
  contentView14 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  layoutMarginsGuide12 = [contentView14 layoutMarginsGuide];
  trailingAnchor10 = [layoutMarginsGuide12 trailingAnchor];
  v65 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v130[0] = v65;
  centerYAnchor = [(UIButton *)self->_ktStatusButton centerYAnchor];
  centerYAnchor2 = [(UILabel *)self->_ktTitleLabel centerYAnchor];
  v68 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v130[1] = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
  [(NSMutableArray *)v60 addObjectsFromArray:v69];
}

- (void)activateConstraints
{
  ktStatusButton = self->_ktStatusButton;
  contentView = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView frame];
  [(UIButton *)ktStatusButton sizeThatFits:v5, 1.79769313e308];
  v7 = v6;

  ktTitleLabel = self->_ktTitleLabel;
  contentView2 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView2 frame];
  [(UILabel *)ktTitleLabel sizeThatFits:v10, 1.79769313e308];
  v12 = v11;

  contentView3 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView3 layoutMargins];
  v15 = v14;
  contentView4 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView4 layoutMargins];
  v18 = v15 + v17;

  contentView5 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [contentView5 frame];
  v21 = v20 - v18;

  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_horizontalLayoutConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_verticalLayoutConstraints];
  v22 = MEMORY[0x1E696ACD8];
  if (v7 + v12 <= v21)
  {
    v23 = 1120;
  }

  else
  {
    v23 = 1128;
  }

  v24 = *(&self->super.super.super.super.super.isa + v23);

  [v22 activateConstraints:{v24, v7 + v12}];
}

- (void)updateTitleAndStatusButtonConfiguration
{
  [(UILabel *)self->_ktTitleLabel setText:self->_titleString];

  [(CKKTEnhancedProtectionStatusCell *)self reconfigureStatusButton];
}

- (id)ktStatusMenu
{
  enhancedProtectionStatusCellState = self->_enhancedProtectionStatusCellState;
  if ((enhancedProtectionStatusCellState - 6) < 2)
  {
    menuForKTStatusUnavailable = [(CKKTEnhancedProtectionStatusCell *)self menuForKTStatusUnavailable];
  }

  else if (enhancedProtectionStatusCellState == 4)
  {
    menuForKTStatusUnavailable = [(CKKTEnhancedProtectionStatusCell *)self menuForKTStatusError];
  }

  else if (enhancedProtectionStatusCellState == 5)
  {
    menuForKTStatusUnavailable = [(CKKTEnhancedProtectionStatusCell *)self menuForKTStatusTurnedOff];
  }

  else
  {
    menuForKTStatusUnavailable = 0;
  }

  return menuForKTStatusUnavailable;
}

- (id)menuForKTStatusError
{
  v17[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  learnMoreAction = [(CKKTEnhancedProtectionStatusCell *)self learnMoreAction];
  reportToAppleAction = [(CKKTEnhancedProtectionStatusCell *)self reportToAppleAction];
  verifyConversationAction = [(CKKTEnhancedProtectionStatusCell *)self verifyConversationAction];
  clearWarningAction = [(CKKTEnhancedProtectionStatusCell *)self clearWarningAction];
  v8 = MEMORY[0x1E69DCC60];
  v17[0] = clearWarningAction;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v10 = [v8 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v9];

  v16[0] = v10;
  v16[1] = verifyConversationAction;
  v16[2] = reportToAppleAction;
  v16[3] = learnMoreAction;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  [array addObjectsFromArray:v11];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyReportToAppleEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyReportToAppleEnabled];

  if ((isKeyTransparencyReportToAppleEnabled & 1) == 0)
  {
    [array removeObject:reportToAppleAction];
  }

  if (self->_handlesInChatCount >= 2)
  {
    [array removeObject:verifyConversationAction];
  }

  v14 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:array];

  return v14;
}

- (id)menuForKTStatusUnavailable
{
  v16[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  learnMoreAction = [(CKKTEnhancedProtectionStatusCell *)self learnMoreAction];
  reportToAppleAction = [(CKKTEnhancedProtectionStatusCell *)self reportToAppleAction];
  clearWarningAction = [(CKKTEnhancedProtectionStatusCell *)self clearWarningAction];
  v7 = MEMORY[0x1E69DCC60];
  v16[0] = clearWarningAction;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [v7 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v8];

  v15[0] = v9;
  v15[1] = reportToAppleAction;
  v15[2] = learnMoreAction;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [array addObjectsFromArray:v10];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyReportToAppleEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyReportToAppleEnabled];

  if ((isKeyTransparencyReportToAppleEnabled & 1) == 0)
  {
    [array removeObject:reportToAppleAction];
  }

  v13 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:array];

  return v13;
}

- (id)menuForKTStatusTurnedOff
{
  v13[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  learnMoreAction = [(CKKTEnhancedProtectionStatusCell *)self learnMoreAction];
  clearWarningAction = [(CKKTEnhancedProtectionStatusCell *)self clearWarningAction];
  v6 = MEMORY[0x1E69DCC60];
  v13[0] = clearWarningAction;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [v6 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v7];

  v12[0] = v8;
  v12[1] = learnMoreAction;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [array addObjectsFromArray:v9];

  v10 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:array];

  return v10;
}

- (id)learnMoreAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_LEARN_MORE_ELLIPSES" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CKKTEnhancedProtectionStatusCell_learnMoreAction__block_invoke;
  v8[3] = &unk_1E72EBCD8;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __51__CKKTEnhancedProtectionStatusCell_learnMoreAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 keyTransparencyDetailsStatusCellDidSelectLearnMore:v3];
}

- (id)reportToAppleAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_REPORT_TO_APPLE_ELLIPSES" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CKKTEnhancedProtectionStatusCell_reportToAppleAction__block_invoke;
  v8[3] = &unk_1E72EBCD8;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __55__CKKTEnhancedProtectionStatusCell_reportToAppleAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 keyTransparencyDetailsStatusCellDidRequestReportToApple:v3];
}

- (id)verifyConversationAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_VERIFY_CONVERSATION_ELLIPSES" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.badge.checkmark"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__CKKTEnhancedProtectionStatusCell_verifyConversationAction__block_invoke;
  v8[3] = &unk_1E72EBCD8;
  objc_copyWeak(&v9, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __60__CKKTEnhancedProtectionStatusCell_verifyConversationAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 keyTransparencyDetailsStatusCellDidRequestVerification:v3];
}

- (id)clearWarningAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"KT_CLEAR_WARNING" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __54__CKKTEnhancedProtectionStatusCell_clearWarningAction__block_invoke;
  v11 = &unk_1E72EBCD8;
  objc_copyWeak(&v12, &location);
  v6 = [v2 actionWithTitle:v4 image:v5 identifier:0 handler:&v8];

  [v6 setAttributes:{2, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __54__CKKTEnhancedProtectionStatusCell_clearWarningAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 keyTransparencyDetailsStatusCellDidSelectIgnoreFailures:v3];
}

- (CKKTEnhancedProtectionStatusCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end