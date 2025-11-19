@interface CKKTEnhancedProtectionStatusCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKKTEnhancedProtectionStatusCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 state:(int64_t)a5 delegate:(id)a6 handlesInChat:(id)a7 verifiedHandles:(id)a8 titleString:(id)a9 shouldShowMacHeader:(BOOL)a10;
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
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTitleAndStatusButtonConfiguration;
@end

@implementation CKKTEnhancedProtectionStatusCell

- (CKKTEnhancedProtectionStatusCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 state:(int64_t)a5 delegate:(id)a6 handlesInChat:(id)a7 verifiedHandles:(id)a8 titleString:(id)a9 shouldShowMacHeader:(BOOL)a10
{
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v23.receiver = self;
  v23.super_class = CKKTEnhancedProtectionStatusCell;
  v20 = [(CKDetailsCell *)&v23 initWithStyle:a3 reuseIdentifier:a4];
  v21 = v20;
  if (v20)
  {
    v20->_enhancedProtectionStatusCellState = a5;
    objc_storeWeak(&v20->_delegate, v16);
    v21->_handlesInChatCount = [v17 count];
    v21->_verifiedHandlesCount = [v18 count];
    objc_storeStrong(&v21->_titleString, a9);
    v21->_shouldShowMacHeader = a10;
    [(CKKTEnhancedProtectionStatusCell *)v21 setupView];
  }

  return v21;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKKTEnhancedProtectionStatusCell;
  [(CKKTEnhancedProtectionStatusCell *)&v4 traitCollectionDidChange:a3];
  [(CKKTEnhancedProtectionStatusCell *)self activateConstraints];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKKTEnhancedProtectionStatusCell;
  [(CKDetailsCell *)&v3 layoutSubviews];
  [(CKKTEnhancedProtectionStatusCell *)self activateConstraints];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(CKKTEnhancedProtectionStatusCell *)self contentView:a3.width];
  [v5 layoutMargins];
  v7 = v6;
  v8 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v8 layoutMargins];
  v10 = v7 + v9;

  v11 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v11 frame];
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

  v29 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v29 layoutMargins];
  v31 = v26 + v30;
  v32 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v32 layoutMargins];
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

  v3 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v3 setBackgroundColor:0];

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
  v8 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v8 addSubview:self->_ktTitleLabel];
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

          v38 = [MEMORY[0x1E69DC888] redColor];
          v39 = [v37 imageWithTintColor:v38];

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

          v21 = [MEMORY[0x1E69DC888] systemRedColor];
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
    v12 = [(CKKTEnhancedProtectionStatusCell *)self handlesInChatCount];
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = CKFrameworkBundle();
    v15 = v14;
    if (v12 == 1)
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
    v20 = [v19 theme];
    v21 = [v20 secondaryLabelColor];

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

    v29 = [MEMORY[0x1E69DC668] sharedApplication];
    v30 = [v29 userInterfaceLayoutDirection];

    if (v30 == 1)
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
  v48 = [v47 theme];
  v21 = [v48 secondaryLabelColor];

  v45 = 0;
LABEL_29:
  v49 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v49 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [v49 setAttributedTitle:v18];
  [v49 setBaseForegroundColor:v21];
  [v49 setBaseBackgroundColor:v21];
  v50 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v51 = [v45 imageWithSymbolConfiguration:v50];

  [v49 setImage:v51];
  v52 = +[CKUIBehavior sharedBehaviors];
  [v52 ktStatusCellImagePadding];
  [v49 setImagePadding:?];

  [v49 setImagePlacement:2];
  [v49 setTitleAlignment:1];

  return v49;
}

- (void)setupStatusButton
{
  v3 = MEMORY[0x1E69DC738];
  v4 = [(CKKTEnhancedProtectionStatusCell *)self statusButtonConfiguration];
  v5 = [v3 buttonWithConfiguration:v4 primaryAction:0];
  ktStatusButton = self->_ktStatusButton;
  self->_ktStatusButton = v5;

  [(UIButton *)self->_ktStatusButton setPreferredBehavioralStyle:1];
  v7 = self->_ktStatusButton;
  v8 = [(CKKTEnhancedProtectionStatusCell *)self ktStatusMenu];
  [(UIButton *)v7 setMenu:v8];

  [(UIButton *)self->_ktStatusButton setShowsMenuAsPrimaryAction:1];
  if ((self->_enhancedProtectionStatusCellState - 1) <= 2)
  {
    [(UIButton *)self->_ktStatusButton setUserInteractionEnabled:0];
  }

  [(UIButton *)self->_ktStatusButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v9 addSubview:self->_ktStatusButton];
}

- (void)reconfigureStatusButton
{
  ktStatusButton = self->_ktStatusButton;
  v4 = [(CKKTEnhancedProtectionStatusCell *)self statusButtonConfiguration];
  [(UIButton *)ktStatusButton setConfiguration:v4];

  v6 = self->_ktStatusButton;
  v5 = [(CKKTEnhancedProtectionStatusCell *)self ktStatusMenu];
  [(UIButton *)v6 setMenu:v5];

  [(UIButton *)v6 setUserInteractionEnabled:(self->_enhancedProtectionStatusCellState - 4) < 0xFFFFFFFFFFFFFFFDLL];
}

- (void)setupSeparators
{
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];

  v4 = [(CKDetailsCell *)self bottomSeperator];
  [v4 setHidden:1];

  [(CKDetailsCell *)self setIndentTopSeperator:1];

  [(CKDetailsCell *)self setIndentBottomSeperator:1];
}

- (void)setupConstraintsForLayouts
{
  v135[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  horizontalLayoutConstraints = self->_horizontalLayoutConstraints;
  self->_horizontalLayoutConstraints = v3;

  v5 = [MEMORY[0x1E695DF70] array];
  verticalLayoutConstraints = self->_verticalLayoutConstraints;
  self->_verticalLayoutConstraints = v5;

  if (CKIsRunningInMacCatalyst())
  {
    macHeaderLabel = self->_macHeaderLabel;
    if (macHeaderLabel)
    {
      if (self->_shouldShowMacHeader)
      {
        v90 = self->_horizontalLayoutConstraints;
        v120 = [(UILabel *)macHeaderLabel topAnchor];
        v128 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        v125 = [v128 layoutMarginsGuide];
        v110 = [v125 topAnchor];
        v115 = +[CKUIBehavior sharedBehaviors];
        [v115 detailsSectionHeaderPaddingAbove];
        v105 = [v120 constraintEqualToAnchor:v110 constant:?];
        v135[0] = v105;
        v95 = [(UILabel *)self->_macHeaderLabel heightAnchor];
        v100 = [(UILabel *)self->_macHeaderLabel font];
        [v100 pointSize];
        v85 = [v95 constraintEqualToConstant:?];
        v135[1] = v85;
        v73 = [(UILabel *)self->_macHeaderLabel leadingAnchor];
        v82 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        v78 = [v82 layoutMarginsGuide];
        v71 = [v78 leadingAnchor];
        v8 = +[CKUIBehavior sharedBehaviors];
        [v8 detailsSectionHeaderPaddingLeading];
        v9 = [v73 constraintEqualToAnchor:v71 constant:?];
        v135[2] = v9;
        v10 = [(UILabel *)self->_macHeaderLabel trailingAnchor];
        v11 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        v12 = [v11 layoutMarginsGuide];
        v13 = [v12 trailingAnchor];
        v14 = [v10 constraintEqualToAnchor:v13];
        v135[3] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:4];
        [(NSMutableArray *)v90 addObjectsFromArray:v15];

        v101 = self->_verticalLayoutConstraints;
        v121 = [(UILabel *)self->_macHeaderLabel topAnchor];
        v129 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        v126 = [v129 layoutMarginsGuide];
        v111 = [v126 topAnchor];
        v116 = +[CKUIBehavior sharedBehaviors];
        [v116 detailsSectionHeaderPaddingAbove];
        v106 = [v121 constraintEqualToAnchor:v111 constant:?];
        v134[0] = v106;
        v91 = [(UILabel *)self->_macHeaderLabel heightAnchor];
        v96 = [(UILabel *)self->_macHeaderLabel font];
        [v96 pointSize];
        v86 = [v91 constraintEqualToConstant:?];
        v134[1] = v86;
        v77 = [(UILabel *)self->_macHeaderLabel leadingAnchor];
        v81 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        v74 = [v81 layoutMarginsGuide];
        v16 = [v74 leadingAnchor];
        v17 = [v77 constraintEqualToAnchor:v16];
        v134[2] = v17;
        v18 = [(UILabel *)self->_macHeaderLabel trailingAnchor];
        v19 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
        v20 = [v19 layoutMarginsGuide];
        v21 = [v20 trailingAnchor];
        v22 = [v18 constraintEqualToAnchor:v21];
        v134[3] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:4];
        [(NSMutableArray *)v101 addObjectsFromArray:v23];
      }
    }
  }

  v117 = self->_verticalLayoutConstraints;
  v24 = [(UILabel *)self->_ktTitleLabel topAnchor];
  v25 = self->_macHeaderLabel;
  v122 = v25;
  if (v25)
  {
    [(UILabel *)v25 bottomAnchor];
  }

  else
  {
    v81 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
    v77 = [v81 layoutMarginsGuide];
    [v77 topAnchor];
  }
  v26 = ;
  v112 = +[CKUIBehavior sharedBehaviors];
  [v112 detailsCellLabelPadding];
  v102 = [v24 constraintEqualToAnchor:v26 constant:?];
  v133[0] = v102;
  v92 = [(UILabel *)self->_ktTitleLabel leadingAnchor];
  v97 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v97 layoutMarginsGuide];
  v87 = v107 = v24;
  v27 = [v87 leadingAnchor];
  v28 = [v92 constraintEqualToAnchor:v27];
  v133[1] = v28;
  v29 = [(UILabel *)self->_ktTitleLabel trailingAnchor];
  v30 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v30 layoutMarginsGuide];
  v32 = v31 = v26;
  v33 = [v32 trailingAnchor];
  v34 = [v29 constraintLessThanOrEqualToAnchor:v33];
  v133[2] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:3];
  [(NSMutableArray *)v117 addObjectsFromArray:v35];

  if (!v122)
  {

    v31 = v81;
  }

  v88 = self->_verticalLayoutConstraints;
  v123 = [(UIButton *)self->_ktStatusButton topAnchor];
  v113 = [(UILabel *)self->_ktTitleLabel bottomAnchor];
  v118 = +[CKUIBehavior sharedBehaviors];
  [v118 detailsCellLabelPadding];
  v108 = [v123 constraintEqualToAnchor:v113 constant:v36 + v36];
  v132[0] = v108;
  v98 = [(UIButton *)self->_ktStatusButton leadingAnchor];
  v103 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  v93 = [v103 layoutMarginsGuide];
  v83 = [v93 leadingAnchor];
  v79 = [v98 constraintEqualToAnchor:v83];
  v132[1] = v79;
  v72 = [(UIButton *)self->_ktStatusButton trailingAnchor];
  v75 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  v70 = [v75 layoutMarginsGuide];
  v37 = [v70 trailingAnchor];
  v38 = [v72 constraintLessThanOrEqualToAnchor:v37];
  v132[2] = v38;
  v39 = [(UIButton *)self->_ktStatusButton bottomAnchor];
  v40 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  v41 = [v40 layoutMarginsGuide];
  v42 = [v41 bottomAnchor];
  v43 = +[CKUIBehavior sharedBehaviors];
  [v43 detailsCellLabelPadding];
  v45 = [v39 constraintEqualToAnchor:v42 constant:-v44];
  v132[3] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:4];
  [(NSMutableArray *)v88 addObjectsFromArray:v46];

  v119 = self->_horizontalLayoutConstraints;
  v47 = [(UILabel *)self->_ktTitleLabel topAnchor];
  v48 = self->_macHeaderLabel;
  v127 = v48;
  if (v48)
  {
    [(UILabel *)v48 bottomAnchor];
  }

  else
  {
    v72 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
    v70 = [v72 layoutMarginsGuide];
    [v70 topAnchor];
  }
  v49 = ;
  v124 = +[CKUIBehavior sharedBehaviors];
  [v124 detailsCellLabelPadding];
  v114 = [v47 constraintEqualToAnchor:v49 constant:?];
  v131[0] = v114;
  v99 = [(UILabel *)self->_ktTitleLabel bottomAnchor];
  v109 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  v104 = [v109 layoutMarginsGuide];
  v84 = [v104 bottomAnchor];
  v89 = +[CKUIBehavior sharedBehaviors];
  [v89 detailsCellLabelPadding];
  v80 = [v99 constraintEqualToAnchor:v84 constant:-v50];
  v131[1] = v80;
  v76 = [(UILabel *)self->_ktTitleLabel leadingAnchor];
  v51 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  v52 = [v51 layoutMarginsGuide];
  v53 = [v52 leadingAnchor];
  [v76 constraintEqualToAnchor:v53];
  v54 = v94 = v47;
  v131[2] = v54;
  [(UILabel *)self->_ktTitleLabel trailingAnchor];
  v56 = v55 = v49;
  v57 = [(UIButton *)self->_ktStatusButton leadingAnchor];
  v58 = [v56 constraintLessThanOrEqualToAnchor:v57];
  v131[3] = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:4];
  [(NSMutableArray *)v119 addObjectsFromArray:v59];

  if (!v127)
  {

    v55 = v72;
  }

  v60 = self->_horizontalLayoutConstraints;
  v61 = [(UIButton *)self->_ktStatusButton trailingAnchor];
  v62 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  v63 = [v62 layoutMarginsGuide];
  v64 = [v63 trailingAnchor];
  v65 = [v61 constraintEqualToAnchor:v64];
  v130[0] = v65;
  v66 = [(UIButton *)self->_ktStatusButton centerYAnchor];
  v67 = [(UILabel *)self->_ktTitleLabel centerYAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];
  v130[1] = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
  [(NSMutableArray *)v60 addObjectsFromArray:v69];
}

- (void)activateConstraints
{
  ktStatusButton = self->_ktStatusButton;
  v4 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v4 frame];
  [(UIButton *)ktStatusButton sizeThatFits:v5, 1.79769313e308];
  v7 = v6;

  ktTitleLabel = self->_ktTitleLabel;
  v9 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v9 frame];
  [(UILabel *)ktTitleLabel sizeThatFits:v10, 1.79769313e308];
  v12 = v11;

  v13 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v13 layoutMargins];
  v15 = v14;
  v16 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v16 layoutMargins];
  v18 = v15 + v17;

  v19 = [(CKKTEnhancedProtectionStatusCell *)self contentView];
  [v19 frame];
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
    v3 = [(CKKTEnhancedProtectionStatusCell *)self menuForKTStatusUnavailable];
  }

  else if (enhancedProtectionStatusCellState == 4)
  {
    v3 = [(CKKTEnhancedProtectionStatusCell *)self menuForKTStatusError];
  }

  else if (enhancedProtectionStatusCellState == 5)
  {
    v3 = [(CKKTEnhancedProtectionStatusCell *)self menuForKTStatusTurnedOff];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)menuForKTStatusError
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKKTEnhancedProtectionStatusCell *)self learnMoreAction];
  v5 = [(CKKTEnhancedProtectionStatusCell *)self reportToAppleAction];
  v6 = [(CKKTEnhancedProtectionStatusCell *)self verifyConversationAction];
  v7 = [(CKKTEnhancedProtectionStatusCell *)self clearWarningAction];
  v8 = MEMORY[0x1E69DCC60];
  v17[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v10 = [v8 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v9];

  v16[0] = v10;
  v16[1] = v6;
  v16[2] = v5;
  v16[3] = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  [v3 addObjectsFromArray:v11];

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isKeyTransparencyReportToAppleEnabled];

  if ((v13 & 1) == 0)
  {
    [v3 removeObject:v5];
  }

  if (self->_handlesInChatCount >= 2)
  {
    [v3 removeObject:v6];
  }

  v14 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v3];

  return v14;
}

- (id)menuForKTStatusUnavailable
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKKTEnhancedProtectionStatusCell *)self learnMoreAction];
  v5 = [(CKKTEnhancedProtectionStatusCell *)self reportToAppleAction];
  v6 = [(CKKTEnhancedProtectionStatusCell *)self clearWarningAction];
  v7 = MEMORY[0x1E69DCC60];
  v16[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [v7 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v8];

  v15[0] = v9;
  v15[1] = v5;
  v15[2] = v4;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [v3 addObjectsFromArray:v10];

  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 isKeyTransparencyReportToAppleEnabled];

  if ((v12 & 1) == 0)
  {
    [v3 removeObject:v5];
  }

  v13 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v3];

  return v13;
}

- (id)menuForKTStatusTurnedOff
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKKTEnhancedProtectionStatusCell *)self learnMoreAction];
  v5 = [(CKKTEnhancedProtectionStatusCell *)self clearWarningAction];
  v6 = MEMORY[0x1E69DCC60];
  v13[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [v6 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v7];

  v12[0] = v8;
  v12[1] = v4;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v3 addObjectsFromArray:v9];

  v10 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v3];

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