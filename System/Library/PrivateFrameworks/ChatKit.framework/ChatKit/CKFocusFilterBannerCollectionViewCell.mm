@interface CKFocusFilterBannerCollectionViewCell
+ (BOOL)_showsKeyline;
- (CKFocusFilterBannerCollectionViewCell)initWithFrame:(CGRect)frame;
- (CKFocusFilterBannerDelegate)focusFilterBannerDelegate;
- (void)_focusFilterToggleButtonSelected:(id)selected;
- (void)_updateFilterToggleButtonConfiguration;
- (void)_updateKeylineAlignmentConstraints;
- (void)_updateKeylineHeightConstraints;
- (void)_updateSizeClassDependentConstraints;
- (void)_updateTitle;
- (void)contentSizeCategoryDidChange;
- (void)setIsFocusFilterEnabled:(BOOL)enabled;
- (void)setUseFullWidthKeylines:(BOOL)keylines;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKFocusFilterBannerCollectionViewCell

+ (BOOL)_showsKeyline
{
  v2 = +[CKUIBehavior sharedBehaviors];
  conversationListFocusFilterBannerShowsKeylines = [v2 conversationListFocusFilterBannerShowsKeylines];

  return conversationListFocusFilterBannerShowsKeylines;
}

- (CKFocusFilterBannerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v48[2] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = CKFocusFilterBannerCollectionViewCell;
  v3 = [(CKFocusFilterBannerCollectionViewCell *)&v47 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(CKFocusFilterBannerCollectionViewCell *)v3 contentView];
    [(CKFocusFilterBannerCollectionViewCell *)v4 setPreservesSuperviewLayoutMargins:1];
    [contentView setPreservesSuperviewLayoutMargins:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    focusFilterStateDescriptionLabel = v4->_focusFilterStateDescriptionLabel;
    v4->_focusFilterStateDescriptionLabel = v6;

    [(UILabel *)v4->_focusFilterStateDescriptionLabel setNumberOfLines:0];
    [(UILabel *)v4->_focusFilterStateDescriptionLabel setTextAlignment:4];
    [contentView addSubview:v4->_focusFilterStateDescriptionLabel];
    v8 = [MEMORY[0x1E69DC738] buttonWithType:CKIsRunningInMacCatalyst() != 0];
    focusFilterToggleButton = v4->_focusFilterToggleButton;
    v4->_focusFilterToggleButton = v8;

    [(UIButton *)v4->_focusFilterToggleButton addTarget:v4 action:sel__focusFilterToggleButtonSelected_ forControlEvents:0x2000];
    [contentView addSubview:v4->_focusFilterToggleButton];
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    topKeylineView = v4->_topKeylineView;
    v4->_topKeylineView = v10;

    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v4->_topKeylineView setBackgroundColor:separatorColor];

    [contentView addSubview:v4->_topKeylineView];
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    bottomKeylineView = v4->_bottomKeylineView;
    v4->_bottomKeylineView = v13;

    separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v4->_bottomKeylineView setBackgroundColor:separatorColor2];

    [contentView addSubview:v4->_bottomKeylineView];
    [(CKFocusFilterBannerCollectionViewCell *)v4 _updateTitle];
    [(UILabel *)v4->_focusFilterStateDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_focusFilterToggleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_topKeylineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_bottomKeylineView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1148846080;
    [(UIButton *)v4->_focusFilterToggleButton setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(UIButton *)v4->_focusFilterToggleButton setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1132068864;
    [(UILabel *)v4->_focusFilterStateDescriptionLabel setContentHuggingPriority:0 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(UILabel *)v4->_focusFilterStateDescriptionLabel setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UIButton *)v4->_focusFilterToggleButton setContentCompressionResistancePriority:1 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(UILabel *)v4->_focusFilterStateDescriptionLabel setContentHuggingPriority:1 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UIButton *)v4->_focusFilterToggleButton setContentHuggingPriority:1 forAxis:v22];
    leadingAnchor = [(UIView *)v4->_topKeylineView leadingAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v26 setActive:1];

    leadingAnchor3 = [(UIView *)v4->_bottomKeylineView leadingAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
    v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v30 setActive:1];

    heightAnchor = [(UIView *)v4->_topKeylineView heightAnchor];
    v32 = [heightAnchor constraintEqualToConstant:1.0];
    topKeylineHeightConstraint = v4->_topKeylineHeightConstraint;
    v4->_topKeylineHeightConstraint = v32;

    heightAnchor2 = [(UIView *)v4->_bottomKeylineView heightAnchor];
    v35 = [heightAnchor2 constraintEqualToConstant:1.0];
    bottomKeylineHeightConstraint = v4->_bottomKeylineHeightConstraint;
    v4->_bottomKeylineHeightConstraint = v35;

    v37 = MEMORY[0x1E696ACD8];
    v48[0] = v4->_topKeylineHeightConstraint;
    v48[1] = v4->_bottomKeylineHeightConstraint;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    [v37 activateConstraints:v38];

    [(CKFocusFilterBannerCollectionViewCell *)v4 _updateKeylineHeightConstraints];
    [(CKFocusFilterBannerCollectionViewCell *)v4 _updateSizeClassDependentConstraints];
    [(CKFocusFilterBannerCollectionViewCell *)v4 _updateFilterToggleButtonConfiguration];
    [(CKFocusFilterBannerCollectionViewCell *)v4 _updateKeylineAlignmentConstraints];
    topAnchor = [(UIView *)v4->_topKeylineView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v41 setActive:1];

    bottomAnchor = [(UIView *)v4->_bottomKeylineView bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v44 setActive:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    -[UIView setHidden:](v4->_topKeylineView, "setHidden:", [objc_opt_class() _showsKeyline] ^ 1);
    -[UIView setHidden:](v4->_bottomKeylineView, "setHidden:", [objc_opt_class() _showsKeyline] ^ 1);
  }

  return v4;
}

- (void)setIsFocusFilterEnabled:(BOOL)enabled
{
  if (self->_isFocusFilterEnabled != enabled)
  {
    self->_isFocusFilterEnabled = enabled;
    [(CKFocusFilterBannerCollectionViewCell *)self _updateTitle];
  }
}

- (void)setUseFullWidthKeylines:(BOOL)keylines
{
  if (self->_useFullWidthKeylines != keylines)
  {
    self->_useFullWidthKeylines = keylines;
    [(CKFocusFilterBannerCollectionViewCell *)self _updateKeylineAlignmentConstraints];
  }
}

- (void)_updateTitle
{
  v3 = +[CKUIBehavior sharedBehaviors];
  conversationListFocusFilterBannerTitleFont = [v3 conversationListFocusFilterBannerTitleFont];

  v4 = +[CKUIBehavior sharedBehaviors];
  conversationListFocusFilterBannerTitleValueFont = [v4 conversationListFocusFilterBannerTitleValueFont];

  selfCopy = self;
  LODWORD(v3) = self->_isFocusFilterEnabled;
  v5 = CKFrameworkBundle();
  v6 = v5;
  if (v3 == 1)
  {
    v7 = [v5 localizedStringForKey:@"FILTERED_BY_FOCUS" value:&stru_1F04268F8 table:@"ChatKit"];

    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    transcriptAvailabilityColor = [theme transcriptAvailabilityColor];

    v10 = CKFrameworkBundle();
    v30 = [v10 localizedStringForKey:@"TURN_OFF" value:&stru_1F04268F8 table:@"ChatKit"];

    v11 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v11 theme];
    conversationListFocusFilterBannerTextColor = [theme2 conversationListFocusFilterBannerTextColor];

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 conversationListFocusFilterBannerEnabledIcon];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"FOCUS_FILTER_OFF" value:&stru_1F04268F8 table:@"ChatKit"];

    v14 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v14 theme];
    transcriptAvailabilityColor = [theme3 conversationListSummaryColor];

    v16 = CKFrameworkBundle();
    v30 = [v16 localizedStringForKey:@"TURN_ON" value:&stru_1F04268F8 table:@"ChatKit"];

    v17 = +[CKUIBehavior sharedBehaviors];
    theme4 = [v17 theme];
    conversationListFocusFilterBannerTextColor = [theme4 conversationListFocusFilterBannerTextColor];

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 conversationListFocusFilterBannerDisabledIcon];
  }
  v19 = ;
  v28 = v7;

  v20 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v7];
  [v20 replaceCharactersInRange:0 withString:{0, @" "}];
  v21 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v21 setImage:v19];
  v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v21];
  [v20 insertAttributedString:v22 atIndex:0];
  v23 = [v20 length];
  v24 = *MEMORY[0x1E69DB648];
  [v20 addAttribute:*MEMORY[0x1E69DB648] value:conversationListFocusFilterBannerTitleFont range:{0, v23}];
  v25 = *MEMORY[0x1E69DB650];
  [v20 addAttribute:*MEMORY[0x1E69DB650] value:transcriptAvailabilityColor range:{0, v23}];
  v26 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v30];
  v27 = [v26 length];
  [v26 addAttribute:v24 value:conversationListFocusFilterBannerTitleValueFont range:{0, v27}];
  [v26 addAttribute:v25 value:conversationListFocusFilterBannerTextColor range:{0, v27}];
  [(UILabel *)selfCopy->_focusFilterStateDescriptionLabel setAttributedText:v20];
  [(UIButton *)selfCopy->_focusFilterToggleButton setAttributedTitle:v26 forState:0];
}

- (void)_updateKeylineHeightConstraints
{
  v3 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v3 isAccessibilityPreferredContentSizeCategory];

  v5 = 1.0;
  if ((isAccessibilityPreferredContentSizeCategory & 1) == 0)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 defaultSeparatorHeight];
    v5 = v7;
  }

  [(NSLayoutConstraint *)self->_topKeylineHeightConstraint setConstant:v5];
  bottomKeylineHeightConstraint = self->_bottomKeylineHeightConstraint;

  [(NSLayoutConstraint *)bottomKeylineHeightConstraint setConstant:v5];
}

- (void)_updateKeylineAlignmentConstraints
{
  if (self->_keylineAlignmentConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  contentView = [(CKFocusFilterBannerCollectionViewCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_useFullWidthKeylines)
  {
    trailingAnchor = [contentView trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_topKeylineView trailingAnchor];
    v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v3 addObject:v6];

    trailingAnchor3 = [contentView trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_bottomKeylineView trailingAnchor];
    trailingAnchor7 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v3 addObject:trailingAnchor7];
  }

  else
  {
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    trailingAnchor5 = [layoutMarginsGuide trailingAnchor];
    trailingAnchor6 = [(UIView *)self->_topKeylineView trailingAnchor];
    v13 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v3 addObject:v13];

    trailingAnchor3 = [contentView layoutMarginsGuide];
    trailingAnchor4 = [trailingAnchor3 trailingAnchor];
    trailingAnchor7 = [(UIView *)self->_bottomKeylineView trailingAnchor];
    v14 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor7];
    [v3 addObject:v14];
  }

  v15 = [v3 copy];
  keylineAlignmentConstraints = self->_keylineAlignmentConstraints;
  self->_keylineAlignmentConstraints = v15;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_keylineAlignmentConstraints];
}

- (void)_updateSizeClassDependentConstraints
{
  if (self->_sizeClassDependentConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  contentView = [(CKFocusFilterBannerCollectionViewCell *)self contentView];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 conversationListFocusFilterBannerTopPadding];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 conversationListFocusFilterBannerBottomPadding];
  v8 = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = +[CKUIBehavior sharedBehaviors];
  conversationListFocusFilterBannerShouldUseAccessabilityLayout = [v10 conversationListFocusFilterBannerShouldUseAccessabilityLayout];

  p_focusFilterStateDescriptionLabel = &self->_focusFilterStateDescriptionLabel;
  leadingAnchor = [(UILabel *)self->_focusFilterStateDescriptionLabel leadingAnchor];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v9 addObject:v16];

  if (conversationListFocusFilterBannerShouldUseAccessabilityLayout)
  {
    trailingAnchor = [*p_focusFilterStateDescriptionLabel trailingAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v9 addObject:v20];

    leadingAnchor3 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
    layoutMarginsGuide3 = [contentView layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v9 addObject:v24];

    trailingAnchor3 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
    layoutMarginsGuide4 = [contentView layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
    v28 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    [v9 addObject:v28];

    topAnchor = [*p_focusFilterStateDescriptionLabel topAnchor];
    topAnchor2 = [contentView topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v5];
    [v9 addObject:v31];

    topAnchor3 = [(UIButton *)self->_focusFilterToggleButton topAnchor];
    bottomAnchor = [*p_focusFilterStateDescriptionLabel bottomAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    p_focusFilterStateDescriptionLabel = &self->_focusFilterToggleButton;
  }

  else
  {
    leadingAnchor5 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
    trailingAnchor5 = [*p_focusFilterStateDescriptionLabel trailingAnchor];
    v37 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:10.0];
    [v9 addObject:v37];

    trailingAnchor6 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
    layoutMarginsGuide5 = [contentView layoutMarginsGuide];
    trailingAnchor7 = [layoutMarginsGuide5 trailingAnchor];
    v41 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    [v9 addObject:v41];

    centerYAnchor = [*p_focusFilterStateDescriptionLabel centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v9 addObject:v44];

    topAnchor4 = [*p_focusFilterStateDescriptionLabel topAnchor];
    topAnchor5 = [contentView topAnchor];
    v47 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:v5];
    [v9 addObject:v47];

    topAnchor3 = [(UIButton *)self->_focusFilterToggleButton centerYAnchor];
    bottomAnchor = [*p_focusFilterStateDescriptionLabel centerYAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  }

  [v9 addObject:v34];

  bottomAnchor2 = [contentView bottomAnchor];
  bottomAnchor3 = [*p_focusFilterStateDescriptionLabel bottomAnchor];
  v50 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v8];
  [v9 addObject:v50];

  v51 = [v9 copy];
  sizeClassDependentConstraints = self->_sizeClassDependentConstraints;
  self->_sizeClassDependentConstraints = v51;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_sizeClassDependentConstraints];
}

- (void)_updateFilterToggleButtonConfiguration
{
  v3 = +[CKUIBehavior sharedBehaviors];
  conversationListFocusFilterBannerShouldUseAccessabilityLayout = [v3 conversationListFocusFilterBannerShouldUseAccessabilityLayout];

  if (conversationListFocusFilterBannerShouldUseAccessabilityLayout)
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setButtonSize:0];
    [plainButtonConfiguration setCornerStyle:4];
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [clearConfiguration setBackgroundColor:tertiarySystemFillColor];

    [plainButtonConfiguration setBackground:clearConfiguration];
  }

  else
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isConversationListRefreshEnabled = [mEMORY[0x1E69A8070] isConversationListRefreshEnabled];

    if (isConversationListRefreshEnabled)
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
      v9 = +[CKUIBehavior sharedBehaviors];
      theme = [v9 theme];
      transcriptAvailabilityCapsuleColor = [theme transcriptAvailabilityCapsuleColor];
      [plainButtonConfiguration setBaseBackgroundColor:transcriptAvailabilityCapsuleColor];

      [plainButtonConfiguration setButtonSize:0];
      [plainButtonConfiguration setCornerStyle:4];
    }

    else
    {
      plainButtonConfiguration = 0;
    }
  }

  [(UIButton *)self->_focusFilterToggleButton setConfiguration:plainButtonConfiguration];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKFocusFilterBannerCollectionViewCell;
  [(CKFocusFilterBannerCollectionViewCell *)&v4 traitCollectionDidChange:change];
  [(CKFocusFilterBannerCollectionViewCell *)self _updateKeylineHeightConstraints];
}

- (void)contentSizeCategoryDidChange
{
  [(CKFocusFilterBannerCollectionViewCell *)self _updateTitle];
  [(CKFocusFilterBannerCollectionViewCell *)self _updateSizeClassDependentConstraints];
  [(CKFocusFilterBannerCollectionViewCell *)self _updateKeylineHeightConstraints];

  [(CKFocusFilterBannerCollectionViewCell *)self _updateFilterToggleButtonConfiguration];
}

- (void)_focusFilterToggleButtonSelected:(id)selected
{
  isFocusFilterEnabled = self->_isFocusFilterEnabled;
  focusFilterBannerDelegate = [(CKFocusFilterBannerCollectionViewCell *)self focusFilterBannerDelegate];
  [focusFilterBannerDelegate focusFilterBannerEnabledStateDidChange:!isFocusFilterEnabled];
}

- (CKFocusFilterBannerDelegate)focusFilterBannerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusFilterBannerDelegate);

  return WeakRetained;
}

@end