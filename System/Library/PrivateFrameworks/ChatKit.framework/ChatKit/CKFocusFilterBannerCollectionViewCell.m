@interface CKFocusFilterBannerCollectionViewCell
+ (BOOL)_showsKeyline;
- (CKFocusFilterBannerCollectionViewCell)initWithFrame:(CGRect)a3;
- (CKFocusFilterBannerDelegate)focusFilterBannerDelegate;
- (void)_focusFilterToggleButtonSelected:(id)a3;
- (void)_updateFilterToggleButtonConfiguration;
- (void)_updateKeylineAlignmentConstraints;
- (void)_updateKeylineHeightConstraints;
- (void)_updateSizeClassDependentConstraints;
- (void)_updateTitle;
- (void)contentSizeCategoryDidChange;
- (void)setIsFocusFilterEnabled:(BOOL)a3;
- (void)setUseFullWidthKeylines:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKFocusFilterBannerCollectionViewCell

+ (BOOL)_showsKeyline
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 conversationListFocusFilterBannerShowsKeylines];

  return v3;
}

- (CKFocusFilterBannerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v48[2] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = CKFocusFilterBannerCollectionViewCell;
  v3 = [(CKFocusFilterBannerCollectionViewCell *)&v47 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKFocusFilterBannerCollectionViewCell *)v3 contentView];
    [(CKFocusFilterBannerCollectionViewCell *)v4 setPreservesSuperviewLayoutMargins:1];
    [v5 setPreservesSuperviewLayoutMargins:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    focusFilterStateDescriptionLabel = v4->_focusFilterStateDescriptionLabel;
    v4->_focusFilterStateDescriptionLabel = v6;

    [(UILabel *)v4->_focusFilterStateDescriptionLabel setNumberOfLines:0];
    [(UILabel *)v4->_focusFilterStateDescriptionLabel setTextAlignment:4];
    [v5 addSubview:v4->_focusFilterStateDescriptionLabel];
    v8 = [MEMORY[0x1E69DC738] buttonWithType:CKIsRunningInMacCatalyst() != 0];
    focusFilterToggleButton = v4->_focusFilterToggleButton;
    v4->_focusFilterToggleButton = v8;

    [(UIButton *)v4->_focusFilterToggleButton addTarget:v4 action:sel__focusFilterToggleButtonSelected_ forControlEvents:0x2000];
    [v5 addSubview:v4->_focusFilterToggleButton];
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    topKeylineView = v4->_topKeylineView;
    v4->_topKeylineView = v10;

    v12 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v4->_topKeylineView setBackgroundColor:v12];

    [v5 addSubview:v4->_topKeylineView];
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    bottomKeylineView = v4->_bottomKeylineView;
    v4->_bottomKeylineView = v13;

    v15 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v4->_bottomKeylineView setBackgroundColor:v15];

    [v5 addSubview:v4->_bottomKeylineView];
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
    v23 = [(UIView *)v4->_topKeylineView leadingAnchor];
    v24 = [v5 layoutMarginsGuide];
    v25 = [v24 leadingAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [(UIView *)v4->_bottomKeylineView leadingAnchor];
    v28 = [v5 layoutMarginsGuide];
    v29 = [v28 leadingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [(UIView *)v4->_topKeylineView heightAnchor];
    v32 = [v31 constraintEqualToConstant:1.0];
    topKeylineHeightConstraint = v4->_topKeylineHeightConstraint;
    v4->_topKeylineHeightConstraint = v32;

    v34 = [(UIView *)v4->_bottomKeylineView heightAnchor];
    v35 = [v34 constraintEqualToConstant:1.0];
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
    v39 = [(UIView *)v4->_topKeylineView topAnchor];
    v40 = [v5 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v41 setActive:1];

    v42 = [(UIView *)v4->_bottomKeylineView bottomAnchor];
    v43 = [v5 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [v44 setActive:1];

    v45 = [MEMORY[0x1E696AD88] defaultCenter];
    [v45 addObserver:v4 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    -[UIView setHidden:](v4->_topKeylineView, "setHidden:", [objc_opt_class() _showsKeyline] ^ 1);
    -[UIView setHidden:](v4->_bottomKeylineView, "setHidden:", [objc_opt_class() _showsKeyline] ^ 1);
  }

  return v4;
}

- (void)setIsFocusFilterEnabled:(BOOL)a3
{
  if (self->_isFocusFilterEnabled != a3)
  {
    self->_isFocusFilterEnabled = a3;
    [(CKFocusFilterBannerCollectionViewCell *)self _updateTitle];
  }
}

- (void)setUseFullWidthKeylines:(BOOL)a3
{
  if (self->_useFullWidthKeylines != a3)
  {
    self->_useFullWidthKeylines = a3;
    [(CKFocusFilterBannerCollectionViewCell *)self _updateKeylineAlignmentConstraints];
  }
}

- (void)_updateTitle
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v34 = [v3 conversationListFocusFilterBannerTitleFont];

  v4 = +[CKUIBehavior sharedBehaviors];
  v33 = [v4 conversationListFocusFilterBannerTitleValueFont];

  v32 = self;
  LODWORD(v3) = self->_isFocusFilterEnabled;
  v5 = CKFrameworkBundle();
  v6 = v5;
  if (v3 == 1)
  {
    v7 = [v5 localizedStringForKey:@"FILTERED_BY_FOCUS" value:&stru_1F04268F8 table:@"ChatKit"];

    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v31 = [v9 transcriptAvailabilityColor];

    v10 = CKFrameworkBundle();
    v30 = [v10 localizedStringForKey:@"TURN_OFF" value:&stru_1F04268F8 table:@"ChatKit"];

    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v29 = [v12 conversationListFocusFilterBannerTextColor];

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 conversationListFocusFilterBannerEnabledIcon];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"FOCUS_FILTER_OFF" value:&stru_1F04268F8 table:@"ChatKit"];

    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 theme];
    v31 = [v15 conversationListSummaryColor];

    v16 = CKFrameworkBundle();
    v30 = [v16 localizedStringForKey:@"TURN_ON" value:&stru_1F04268F8 table:@"ChatKit"];

    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = [v17 theme];
    v29 = [v18 conversationListFocusFilterBannerTextColor];

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
  [v20 addAttribute:*MEMORY[0x1E69DB648] value:v34 range:{0, v23}];
  v25 = *MEMORY[0x1E69DB650];
  [v20 addAttribute:*MEMORY[0x1E69DB650] value:v31 range:{0, v23}];
  v26 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v30];
  v27 = [v26 length];
  [v26 addAttribute:v24 value:v33 range:{0, v27}];
  [v26 addAttribute:v25 value:v29 range:{0, v27}];
  [(UILabel *)v32->_focusFilterStateDescriptionLabel setAttributedText:v20];
  [(UIButton *)v32->_focusFilterToggleButton setAttributedTitle:v26 forState:0];
}

- (void)_updateKeylineHeightConstraints
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 isAccessibilityPreferredContentSizeCategory];

  v5 = 1.0;
  if ((v4 & 1) == 0)
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

  v17 = [(CKFocusFilterBannerCollectionViewCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_useFullWidthKeylines)
  {
    v4 = [v17 trailingAnchor];
    v5 = [(UIView *)self->_topKeylineView trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
    [v3 addObject:v6];

    v7 = [v17 trailingAnchor];
    v8 = [(UIView *)self->_bottomKeylineView trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v3 addObject:v9];
  }

  else
  {
    v10 = [v17 layoutMarginsGuide];
    v11 = [v10 trailingAnchor];
    v12 = [(UIView *)self->_topKeylineView trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v3 addObject:v13];

    v7 = [v17 layoutMarginsGuide];
    v8 = [v7 trailingAnchor];
    v9 = [(UIView *)self->_bottomKeylineView trailingAnchor];
    v14 = [v8 constraintEqualToAnchor:v9];
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

  v53 = [(CKFocusFilterBannerCollectionViewCell *)self contentView];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 conversationListFocusFilterBannerTopPadding];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 conversationListFocusFilterBannerBottomPadding];
  v8 = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 conversationListFocusFilterBannerShouldUseAccessabilityLayout];

  p_focusFilterStateDescriptionLabel = &self->_focusFilterStateDescriptionLabel;
  v13 = [(UILabel *)self->_focusFilterStateDescriptionLabel leadingAnchor];
  v14 = [v53 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v9 addObject:v16];

  if (v11)
  {
    v17 = [*p_focusFilterStateDescriptionLabel trailingAnchor];
    v18 = [v53 layoutMarginsGuide];
    v19 = [v18 trailingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v9 addObject:v20];

    v21 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
    v22 = [v53 layoutMarginsGuide];
    v23 = [v22 leadingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [v9 addObject:v24];

    v25 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
    v26 = [v53 layoutMarginsGuide];
    v27 = [v26 trailingAnchor];
    v28 = [v25 constraintLessThanOrEqualToAnchor:v27];
    [v9 addObject:v28];

    v29 = [*p_focusFilterStateDescriptionLabel topAnchor];
    v30 = [v53 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:v5];
    [v9 addObject:v31];

    v32 = [(UIButton *)self->_focusFilterToggleButton topAnchor];
    v33 = [*p_focusFilterStateDescriptionLabel bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:8.0];
    p_focusFilterStateDescriptionLabel = &self->_focusFilterToggleButton;
  }

  else
  {
    v35 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
    v36 = [*p_focusFilterStateDescriptionLabel trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:10.0];
    [v9 addObject:v37];

    v38 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
    v39 = [v53 layoutMarginsGuide];
    v40 = [v39 trailingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    [v9 addObject:v41];

    v42 = [*p_focusFilterStateDescriptionLabel centerYAnchor];
    v43 = [v53 centerYAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [v9 addObject:v44];

    v45 = [*p_focusFilterStateDescriptionLabel topAnchor];
    v46 = [v53 topAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:v5];
    [v9 addObject:v47];

    v32 = [(UIButton *)self->_focusFilterToggleButton centerYAnchor];
    v33 = [*p_focusFilterStateDescriptionLabel centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
  }

  [v9 addObject:v34];

  v48 = [v53 bottomAnchor];
  v49 = [*p_focusFilterStateDescriptionLabel bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:v8];
  [v9 addObject:v50];

  v51 = [v9 copy];
  sizeClassDependentConstraints = self->_sizeClassDependentConstraints;
  self->_sizeClassDependentConstraints = v51;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_sizeClassDependentConstraints];
}

- (void)_updateFilterToggleButtonConfiguration
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 conversationListFocusFilterBannerShouldUseAccessabilityLayout];

  if (v4)
  {
    v12 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v12 setButtonSize:0];
    [v12 setCornerStyle:4];
    v5 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    v6 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [v5 setBackgroundColor:v6];

    [v12 setBackground:v5];
  }

  else
  {
    v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v8 = [v7 isConversationListRefreshEnabled];

    if (v8)
    {
      v12 = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
      v9 = +[CKUIBehavior sharedBehaviors];
      v10 = [v9 theme];
      v11 = [v10 transcriptAvailabilityCapsuleColor];
      [v12 setBaseBackgroundColor:v11];

      [v12 setButtonSize:0];
      [v12 setCornerStyle:4];
    }

    else
    {
      v12 = 0;
    }
  }

  [(UIButton *)self->_focusFilterToggleButton setConfiguration:v12];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKFocusFilterBannerCollectionViewCell;
  [(CKFocusFilterBannerCollectionViewCell *)&v4 traitCollectionDidChange:a3];
  [(CKFocusFilterBannerCollectionViewCell *)self _updateKeylineHeightConstraints];
}

- (void)contentSizeCategoryDidChange
{
  [(CKFocusFilterBannerCollectionViewCell *)self _updateTitle];
  [(CKFocusFilterBannerCollectionViewCell *)self _updateSizeClassDependentConstraints];
  [(CKFocusFilterBannerCollectionViewCell *)self _updateKeylineHeightConstraints];

  [(CKFocusFilterBannerCollectionViewCell *)self _updateFilterToggleButtonConfiguration];
}

- (void)_focusFilterToggleButtonSelected:(id)a3
{
  isFocusFilterEnabled = self->_isFocusFilterEnabled;
  v4 = [(CKFocusFilterBannerCollectionViewCell *)self focusFilterBannerDelegate];
  [v4 focusFilterBannerEnabledStateDidChange:!isFocusFilterEnabled];
}

- (CKFocusFilterBannerDelegate)focusFilterBannerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_focusFilterBannerDelegate);

  return WeakRetained;
}

@end