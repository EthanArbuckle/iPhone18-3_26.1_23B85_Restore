@interface OBHeaderView
- (OBAnimationView)animationView;
- (OBHeaderView)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (OBHeaderView)initWithTitle:(id)a3 icon:(id)a4;
- (UIView)customIconContainerView;
- (double)_setupAssistantIconHeight;
- (double)detailLabelToAccessoryButtonPadding;
- (double)headerLabelToDetailAndSubtitleLabelPadding;
- (double)iconHeight;
- (double)iconToHeaderLabelPadding;
- (id)_createDetailLabelIfNeeded;
- (id)_createImageView:(id)a3 withAnimatedSymbol:(BOOL)a4;
- (id)_detailFont;
- (id)_headerTextStyle;
- (id)_subtitleFont;
- (id)_symbolIconForHeaderStyle:(id)a3 configuration:(id)a4;
- (id)headerFont;
- (id)symbolConfiguration;
- (id)title;
- (void)_animateDetailLabelAlpha:(double)a3 duration:(double)a4;
- (void)_createHeaderLabelIfNeeded;
- (void)_insertAndLayoutImageViewIfNeeded;
- (void)_layoutTopAssetContainer;
- (void)_updateConstraintsForDetailLabel;
- (void)_updateConstraintsForSubtitle;
- (void)_updateDetailLabel;
- (void)_updateHeaderLabelFont;
- (void)addAccessoryButton:(id)a3;
- (void)extendedInitWithTitle:(id)a3 detailText:(id)a4;
- (void)overrideSpansAllLines:(unint64_t)a3;
- (void)removeAccessoryButton;
- (void)removeAccessoryButtonFromSuperview;
- (void)removeDetailLabelFromSuperview;
- (void)setAppNameForIntroScreen:(id)a3;
- (void)setAttributedDetailText:(id)a3;
- (void)setBadgeText:(id)a3;
- (void)setDetailText:(id)a3;
- (void)setDetailTextAccessibilityIdentifier:(id)a3;
- (void)setDetailedTextHeader:(id)a3 detailedTextBody:(id)a4;
- (void)setIcon:(id)a3 accessibilityLabel:(id)a4;
- (void)setIconAccessibilityIdentifier:(id)a3;
- (void)setLanguage:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTemplateType:(unint64_t)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAccessibilityIdentifier:(id)a3;
- (void)setTitleHyphenationFactor:(float)a3;
- (void)setTitleStyle:(unint64_t)a3;
- (void)setTitleTrailingSymbol:(id)a3;
- (void)startSymbolAnimation;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBHeaderView

- (OBHeaderView)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = OBHeaderView;
  v11 = [(OBHeaderView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    if (v10)
    {
      v13 = [(OBHeaderView *)v11 _createImageView:v10 withAnimatedSymbol:0];
      [(OBHeaderView *)v12 setImageView:v13];
    }

    [(OBHeaderView *)v12 extendedInitWithTitle:v8 detailText:v9];
  }

  return v12;
}

- (OBHeaderView)initWithTitle:(id)a3 icon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = OBHeaderView;
  v8 = [(OBHeaderView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      v10 = [(OBHeaderView *)v8 _createImageView:v7 withAnimatedSymbol:0];
      [(OBHeaderView *)v9 setImageView:v10];
    }

    v11 = &stru_1F2CE9518;
    if (v6)
    {
      v11 = v6;
    }

    v12 = v11;

    [(OBHeaderView *)v9 extendedInitWithTitle:v12 detailText:0];
    v6 = v12;
  }

  return v9;
}

- (void)extendedInitWithTitle:(id)a3 detailText:(id)a4
{
  v22 = a4;
  v6 = a3;
  [(OBHeaderView *)self _createHeaderLabelIfNeeded];
  v7 = [(OBHeaderView *)self headerLabel];
  [v7 setText:v6];

  v8 = [(OBHeaderView *)self headerLabel];
  [(OBHeaderView *)self addSubview:v8];

  if ([v22 length])
  {
    v9 = [(OBHeaderView *)self _createDetailLabelIfNeeded];
    [(OBHeaderView *)self setDetailLabel:v9];

    v10 = [(OBHeaderView *)self detailLabel];
    [v10 setText:v22];
  }

  v11 = [(OBHeaderView *)self detailLabel];
  [(OBHeaderView *)self addSubview:v11];

  v12 = [(OBHeaderView *)self leftAnchor];
  v13 = [(OBHeaderView *)self headerLabel];
  v14 = [v13 leftAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [(OBHeaderView *)self setHeaderLeftEdgeConstraint:v15];

  v16 = [(OBHeaderView *)self headerLeftEdgeConstraint];
  [v16 setActive:1];

  v17 = [(OBHeaderView *)self rightAnchor];
  v18 = [(OBHeaderView *)self headerLabel];
  v19 = [v18 rightAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [(OBHeaderView *)self setHeaderRightEdgeConstraint:v20];

  v21 = [(OBHeaderView *)self headerRightEdgeConstraint];
  [v21 setActive:1];

  [(OBHeaderView *)self _insertAndLayoutImageViewIfNeeded];
  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
}

- (void)_createHeaderLabelIfNeeded
{
  v3 = [(OBHeaderView *)self headerLabel];

  if (!v3)
  {
    v4 = objc_alloc_init(OBTemplateLabel);
    [(OBHeaderView *)self setHeaderLabel:v4];

    v5 = [(OBHeaderView *)self headerLabel];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [MEMORY[0x1E69DC888] labelColor];
    v7 = [(OBHeaderView *)self headerLabel];
    [v7 setTextColor:v6];

    v8 = [MEMORY[0x1E69DC888] clearColor];
    v9 = [(OBHeaderView *)self headerLabel];
    [v9 setBackgroundColor:v8];

    [(OBHeaderView *)self _updateHeaderLabelFont];
    v10 = [(OBHeaderView *)self headerLabel];
    [v10 setNumberOfLines:0];
  }
}

- (void)setAppNameForIntroScreen:(id)a3
{
  v35[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(OBHeaderView *)self setUseIntroScreenLayout:1];
  v5 = [MEMORY[0x1E69DC888] tintColor];
  v6 = [(OBHeaderView *)self headerLabel];
  [v6 setTextColor:v5];

  v7 = [(OBHeaderView *)self appNameLabel];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(OBHeaderView *)self setAppNameLabel:v8];

    v9 = [(OBHeaderView *)self appNameLabel];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [MEMORY[0x1E69DC888] labelColor];
    v11 = [(OBHeaderView *)self appNameLabel];
    [v11 setTextColor:v10];

    v12 = [MEMORY[0x1E69DC888] clearColor];
    v13 = [(OBHeaderView *)self appNameLabel];
    [v13 setBackgroundColor:v12];

    v14 = [(OBHeaderView *)self headerFont];
    v15 = [(OBHeaderView *)self appNameLabel];
    [v15 setFont:v14];

    v16 = [(OBHeaderView *)self appNameLabel];
    [v16 setNumberOfLines:0];

    v17 = [(OBHeaderView *)self appNameLabel];
    [(OBHeaderView *)self addSubview:v17];

    v29 = MEMORY[0x1E696ACD8];
    v34 = [(OBHeaderView *)self appNameLabel];
    v33 = [v34 leadingAnchor];
    v32 = [(OBHeaderView *)self leadingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v35[0] = v31;
    v30 = [(OBHeaderView *)self appNameLabel];
    v28 = [v30 trailingAnchor];
    v18 = [(OBHeaderView *)self trailingAnchor];
    v19 = [v28 constraintEqualToAnchor:v18];
    v35[1] = v19;
    v20 = [(OBHeaderView *)self appNameLabel];
    v21 = [v20 topAnchor];
    v22 = [(OBHeaderView *)self headerLabel];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v35[2] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    [v29 activateConstraints:v25];

    [(OBHeaderView *)self _updateConstraintsForDetailLabel];
    [(OBHeaderView *)self _updateConstraintsForSubtitle];
    [(OBHeaderView *)self _insertAndLayoutImageViewIfNeeded];
  }

  v26 = [(OBHeaderView *)self appNameLabel];
  [v26 setText:v4];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)startSymbolAnimation
{
  v4 = [(OBHeaderView *)self imageView];
  v2 = [MEMORY[0x1E6982268] effect];
  v3 = [MEMORY[0x1E6982278] options];
  [v4 addSymbolEffect:v2 options:v3 animated:1];
}

- (void)setIcon:(id)a3 accessibilityLabel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (*&self->_animationView == 0)
  {
    [(OBHeaderView *)self _setImage:v6 accessibilityLabel:v7 withAnimatedSymbol:0];
  }

  else
  {
    v8 = _OBLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(OBHeaderView *)v8 setIcon:v9 accessibilityLabel:v10, v11, v12, v13, v14, v15];
    }
  }
}

- (id)title
{
  v2 = [(OBHeaderView *)self headerLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(OBHeaderView *)self headerLabel];
    [v5 setText:v4];
  }
}

- (void)setTitleTrailingSymbol:(id)a3
{
  v4 = a3;
  v5 = [(OBHeaderView *)self headerLabel];
  [v5 setTitleTrailingSymbol:v4];
}

- (void)setDetailText:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(OBHeaderView *)self _createDetailLabelIfNeeded];
    v6 = [(OBHeaderView *)self detailLabel];
    [v6 setText:v4];
  }
}

- (void)setAttributedDetailText:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(OBHeaderView *)self _createDetailLabelIfNeeded];
    v6 = objc_alloc(MEMORY[0x1E696AD40]);
    v7 = [v4 string];
    v8 = [v6 initWithString:v7];

    v9 = [v4 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__OBHeaderView_setAttributedDetailText___block_invoke;
    v12[3] = &unk_1E7C157A0;
    v13 = v8;
    v10 = v8;
    [v4 enumerateAttributesInRange:0 options:v9 usingBlock:{0, v12}];

    v11 = [(OBHeaderView *)self detailLabel];
    [v11 setAttributedText:v10];
  }
}

void __40__OBHeaderView_setAttributedDetailText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = *MEMORY[0x1E69DB5F8];
  v9 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:v8];
  }

  v10 = *MEMORY[0x1E69DB650];
  v11 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
  if (v11)
  {
    [v7 setObject:v11 forKeyedSubscript:v10];
  }

  [*(a1 + 32) addAttributes:v7 range:{a3, a4}];
}

- (void)setBadgeText:(id)a3
{
  v58[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(OBHeaderView *)self badgeLabel];

  if (v5)
  {
    v6 = [(OBHeaderView *)self badgeLabel];
    [v6 removeFromSuperview];

    [(OBHeaderView *)self setBadgeLabel:0];
  }

  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = v4;
    [v7 setText:v4];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v7 setFont:v8];

    [v7 setNumberOfLines:1];
    LODWORD(v9) = 1148846080;
    [v7 setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [v7 setContentCompressionResistancePriority:0 forAxis:v10];
    v11 = objc_alloc_init(MEMORY[0x1E69DC5D8]);
    [v11 setStyle:1];
    [v11 setPlatterSize:1];
    [v11 setShape:2];
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    [v7 setTextColor:v12];

    v13 = [MEMORY[0x1E69DC888] grayColor];
    [v11 setColor:v13];

    v55 = v11;
    [v7 _setTextEncapsulation:v11];
    [(OBHeaderView *)self setBadgeLabel:v7];
    [(OBHeaderView *)self addSubview:v7];
    v14 = [(OBHeaderView *)self headerLabel];
    LODWORD(v15) = 1132068864;
    [v14 setContentHuggingPriority:0 forAxis:v15];

    v16 = [(OBHeaderView *)self headerLabel];
    LODWORD(v17) = 1144750080;
    [v16 setContentCompressionResistancePriority:0 forAxis:v17];

    v18 = [MEMORY[0x1E69DC668] sharedApplication];
    v19 = [v18 userInterfaceLayoutDirection];

    if (v19 == 1)
    {
      v20 = [(OBHeaderView *)self headerLeftEdgeConstraint];

      if (v20)
      {
        v21 = [(OBHeaderView *)self headerLeftEdgeConstraint];
        [v21 setActive:0];

        [(OBHeaderView *)self setHeaderLeftEdgeConstraint:0];
      }

      v50 = MEMORY[0x1E696ACD8];
      v22 = [v7 rightAnchor];
      v53 = [(OBHeaderView *)self headerLabel];
      [v53 leftAnchor];
      v52 = v54 = v22;
      v51 = [v22 constraintEqualToAnchor:-8.0 constant:?];
      v58[0] = v51;
      v23 = [v7 centerYAnchor];
      v48 = [(OBHeaderView *)self headerLabel];
      [v48 centerYAnchor];
      v47 = v49 = v23;
      v46 = [v23 constraintEqualToAnchor:?];
      v58[1] = v46;
      v24 = [v7 leftAnchor];
      v44 = [(OBHeaderView *)self leftAnchor];
      v45 = v24;
      v43 = [v24 constraintGreaterThanOrEqualToAnchor:?];
      v58[2] = v43;
      v25 = [(OBHeaderView *)self headerLabel];
      v26 = [v25 rightAnchor];
      v27 = [(OBHeaderView *)self rightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      v58[3] = v28;
      v29 = [(OBHeaderView *)self headerLabel];
      v30 = [v29 leftAnchor];
      v31 = [v7 rightAnchor];
      v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31 constant:8.0];
      v58[4] = v32;
      v33 = v58;
    }

    else
    {
      v36 = [(OBHeaderView *)self headerRightEdgeConstraint];

      if (v36)
      {
        v37 = [(OBHeaderView *)self headerRightEdgeConstraint];
        [v37 setActive:0];

        [(OBHeaderView *)self setHeaderRightEdgeConstraint:0];
      }

      v50 = MEMORY[0x1E696ACD8];
      v38 = [v7 leftAnchor];
      v53 = [(OBHeaderView *)self headerLabel];
      [v53 rightAnchor];
      v52 = v54 = v38;
      v51 = [v38 constraintEqualToAnchor:8.0 constant:?];
      v57[0] = v51;
      v39 = [v7 centerYAnchor];
      v48 = [(OBHeaderView *)self headerLabel];
      [v48 centerYAnchor];
      v47 = v49 = v39;
      v46 = [v39 constraintEqualToAnchor:?];
      v57[1] = v46;
      v40 = [v7 rightAnchor];
      v44 = [(OBHeaderView *)self rightAnchor];
      v45 = v40;
      v43 = [v40 constraintLessThanOrEqualToAnchor:?];
      v57[2] = v43;
      v25 = [(OBHeaderView *)self headerLabel];
      v26 = [v25 leftAnchor];
      v27 = [(OBHeaderView *)self leftAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      v57[3] = v28;
      v29 = [(OBHeaderView *)self headerLabel];
      v30 = [v29 rightAnchor];
      v31 = [v7 leftAnchor];
      v32 = [v30 constraintLessThanOrEqualToAnchor:v31 constant:-8.0];
      v57[4] = v32;
      v33 = v57;
    }

    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
    [v50 activateConstraints:v41];

    v4 = v56;
  }

  else
  {
    v34 = [(OBHeaderView *)self headerLeftEdgeConstraint];
    [v34 setActive:1];

    v35 = [(OBHeaderView *)self headerRightEdgeConstraint];
    [v35 setActive:1];
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)overrideSpansAllLines:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(OBHeaderView *)self title];
    v9 = 134218242;
    v10 = a3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "Overriding spansAllLines: (%li), for label with title:%@", &v9, 0x16u);
  }

  v7 = [(OBHeaderView *)self detailLabel];
  [v7 overrideSpansAllLines:a3];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLanguage:(id)a3
{
  v4 = a3;
  v5 = [(OBHeaderView *)self headerLabel];
  v6 = [v5 _defaultAttributes];
  v7 = [v6 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"NSLanguage"];
  v8 = [(OBHeaderView *)self headerLabel];
  [v8 _setDefaultAttributes:v7];

  v9 = [(OBHeaderView *)self detailLabel];
  v10 = [v9 _defaultAttributes];
  v12 = [v10 mutableCopy];

  [v12 setObject:v4 forKeyedSubscript:@"NSLanguage"];
  v11 = [(OBHeaderView *)self detailLabel];
  [v11 _setDefaultAttributes:v12];
}

- (void)setDetailedTextHeader:(id)a3 detailedTextBody:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(OBHeaderView *)self _createDetailLabelIfNeeded];
    v9 = [(OBHeaderView *)self detailLabel];
    [v9 setDetailedTextHeader:v7 detailedTextBody:v6];
  }
}

- (void)setSubtitleText:(id)a3
{
  v18 = a3;
  v4 = [(OBHeaderView *)self subtitleLabel];

  v5 = v18;
  if (!v4)
  {
    v6 = objc_alloc_init(OBTemplateLabel);
    [(OBHeaderView *)self setSubtitleLabel:v6];

    v7 = [(OBHeaderView *)self subtitleLabel];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(OBHeaderView *)self _subtitleFont];
    v9 = [(OBHeaderView *)self subtitleLabel];
    [v9 setFont:v8];

    v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v11 = [(OBHeaderView *)self subtitleLabel];
    [v11 setTextColor:v10];

    v12 = [(OBHeaderView *)self subtitleLabel];
    [v12 setNumberOfLines:0];

    if (self->_forceCenterAlignment)
    {
      v13 = [(OBHeaderView *)self subtitleLabel];
      [v13 setForceCenterAlignment:1];
    }

    v14 = [(OBHeaderView *)self subtitleLabel];
    [(OBHeaderView *)self addSubview:v14];

    v5 = v18;
  }

  v15 = [v5 length];
  v16 = [(OBHeaderView *)self subtitleLabel];
  v17 = v16;
  if (v15)
  {
    [v16 setText:v18];
  }

  else
  {
    [v16 removeFromSuperview];

    [(OBHeaderView *)self setSubtitleLabel:0];
  }

  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
  [(OBHeaderView *)self _updateConstraintsForSubtitle];
}

- (void)addAccessoryButton:(id)a3
{
  v33[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(OBHeaderView *)self detailLabel];

  if (!v5)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D930];
    v25 = @"Accessory button is not supported with no detail text.";
    goto LABEL_12;
  }

  v6 = [(OBHeaderView *)self accessoryButton];

  if (v6)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D930];
    v25 = @"Only one accessory button is supported.";
LABEL_12:
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    objc_exception_throw(v26);
  }

  if (+[OBFeatureFlags isNaturalUIEnabled](OBFeatureFlags, "isNaturalUIEnabled") && [v4 displayInfoIcon])
  {
    [v4 addInfoIcon];
  }

  [(OBHeaderView *)self setAccessoryButton:v4];
  v7 = [(OBHeaderView *)self underlineLinks];
  v8 = [(OBHeaderView *)self accessoryButton];
  [v8 setUnderlineLinks:v7];

  [(OBHeaderView *)self addSubview:v4];
  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
  LODWORD(v7) = +[OBFeatureFlags isNaturalUIEnabled];
  v30 = MEMORY[0x1E696ACD8];
  v9 = [v4 leadingAnchor];
  v10 = [(OBHeaderView *)self leadingAnchor];
  if (v7)
  {
    v11 = [v9 constraintEqualToAnchor:v10];
    v33[0] = v11;
    v12 = [v4 trailingAnchor];
    v31 = [(OBHeaderView *)self trailingAnchor];
    v29 = [v12 constraintLessThanOrEqualToAnchor:?];
    v33[1] = v29;
    v13 = [v4 bottomAnchor];
    v14 = [(OBHeaderView *)self bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];
    v33[2] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
    [v30 activateConstraints:v16];
  }

  else
  {
    v28 = [v9 constraintGreaterThanOrEqualToAnchor:v10];
    v32[0] = v28;
    v27 = [v4 trailingAnchor];
    v31 = [(OBHeaderView *)self trailingAnchor];
    v29 = [v27 constraintLessThanOrEqualToAnchor:?];
    v32[1] = v29;
    v13 = [v4 centerXAnchor];
    v14 = [(OBHeaderView *)self centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v32[2] = v15;
    v16 = [v4 bottomAnchor];
    v17 = [(OBHeaderView *)self bottomAnchor];
    [v16 constraintEqualToAnchor:v17 constant:0.0];
    v19 = v18 = v9;
    v32[3] = v19;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    v21 = v20 = v10;
    [v30 activateConstraints:v21];

    v10 = v20;
    v12 = v27;

    v9 = v18;
    v11 = v28;
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = OBHeaderView;
  [(OBHeaderView *)&v8 traitCollectionDidChange:a3];
  [(OBHeaderView *)self _updateHeaderLabelFont];
  v4 = [(OBHeaderView *)self _subtitleFont];
  v5 = [(OBHeaderView *)self subtitleLabel];
  [v5 setFont:v4];

  v6 = [(OBHeaderView *)self _detailFont];
  v7 = [(OBHeaderView *)self detailLabel];
  [v7 setFont:v6];
}

- (void)tintColorDidChange
{
  v11.receiver = self;
  v11.super_class = OBHeaderView;
  [(OBHeaderView *)&v11 tintColorDidChange];
  if ([(OBHeaderView *)self iconInheritsTint])
  {
    v3 = [(OBHeaderView *)self tintColor];

    if (v3)
    {
      v4 = [(OBHeaderView *)self symbolName];

      if (v4)
      {
        if (+[OBFeatureFlags isNaturalUIEnabled])
        {
          v5 = [(OBHeaderView *)self symbolName];
          v6 = [(OBHeaderView *)self symbolConfiguration];
          [(OBHeaderView *)self _symbolIconForHeaderStyle:v5 configuration:v6];
        }

        else
        {
          v5 = [(OBHeaderView *)self originalIconImage];
          v6 = [(OBHeaderView *)self tintColor];
          [v5 imageWithTintColor:v6 renderingMode:2];
        }
        v7 = ;

        v8 = [(OBHeaderView *)self imageView];
        [v8 setImage:v7];
      }

      else
      {
        v7 = [(OBHeaderView *)self imageView];
        v8 = [(OBHeaderView *)self originalIconImage];
        v9 = [(OBHeaderView *)self tintColor];
        v10 = [v8 _flatImageWithColor:v9];
        [v7 setImage:v10];
      }
    }
  }
}

- (void)setTitleStyle:(unint64_t)a3
{
  [(OBHeaderView *)self setHeaderStyle:a3];

  [(OBHeaderView *)self _updateHeaderLabelFont];
}

- (id)headerFont
{
  v3 = [(OBHeaderView *)self _headerFontOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(OBHeaderView *)self _headerTextStyle];
    v7 = MEMORY[0x1E69DB880];
    v8 = [(OBHeaderView *)self traitCollection];
    v9 = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:v8];

    v10 = MEMORY[0x1E69DB878];
    v11 = [v9 fontDescriptorWithSymbolicTraits:2];
    v5 = [v10 fontWithDescriptor:v11 size:0.0];
  }

  return v5;
}

- (void)setTitleHyphenationFactor:(float)a3
{
  v5 = [(OBHeaderView *)self headerLabel];
  *&v4 = a3;
  [v5 _setHyphenationFactor:v4];
}

- (void)removeDetailLabelFromSuperview
{
  v3 = [(OBHeaderView *)self detailLabel];
  [v3 removeFromSuperview];

  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
}

- (void)removeAccessoryButtonFromSuperview
{
  v3 = [(OBHeaderView *)self accessoryButton];
  [v3 removeFromSuperview];

  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
}

- (void)removeAccessoryButton
{
  v3 = [(OBHeaderView *)self accessoryButton];
  [v3 removeFromSuperview];

  [(OBHeaderView *)self setAccessoryButton:0];

  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
}

- (void)setIconAccessibilityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(OBHeaderView *)self imageView];
  [v5 setAccessibilityIdentifier:v4];
}

- (void)setTitleAccessibilityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(OBHeaderView *)self headerLabel];
  [v5 setAccessibilityIdentifier:v4];
}

- (void)setDetailTextAccessibilityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(OBHeaderView *)self detailLabel];
  [v5 setAccessibilityIdentifier:v4];
}

- (void)_updateHeaderLabelFont
{
  v3 = [(OBHeaderView *)self headerFont];
  v4 = [(OBHeaderView *)self headerLabel];
  [v4 setFont:v3];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  v5 = [(OBHeaderView *)self badgeLabel];
  [v5 setFont:v6];
}

- (void)_updateDetailLabel
{
  v3 = [(OBHeaderView *)self detailLabel];

  if (v3)
  {
    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v5 = ;
    v4 = [(OBHeaderView *)self detailLabel];
    [v4 setTextColor:v5];
  }
}

- (id)_subtitleFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDD00];
  v5 = [(OBHeaderView *)self traitCollection];
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:v5];
  v7 = [v2 fontWithDescriptor:v6 size:0.0];

  return v7;
}

- (id)_detailFont
{
  v3 = 0.0;
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
    [v4 pointSize];
    v3 = v5;
  }

  v6 = MEMORY[0x1E69DB878];
  v7 = MEMORY[0x1E69DB880];
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = [(OBHeaderView *)self traitCollection];
  v10 = [v7 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:v9];
  v11 = [v6 fontWithDescriptor:v10 size:v3];

  return v11;
}

- (id)_createImageView:(id)a3 withAnimatedSymbol:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(OBHeaderView *)self setOriginalIconImage:v6];
  v7 = [[OBImageView alloc] initWithImage:v6];

  [(OBImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBImageView *)v7 setContentMode:1];
  v8 = [(OBHeaderView *)self symbolName];

  if (v8 && v4)
  {
    v9 = [MEMORY[0x1E6982258] effect];
    v10 = [MEMORY[0x1E6982278] options];
    [(OBImageView *)v7 addSymbolEffect:v9 options:v10 animated:0];
  }

  return v7;
}

- (void)_insertAndLayoutImageViewIfNeeded
{
  v59[2] = *MEMORY[0x1E69E9840];
  v3 = [(OBHeaderView *)self imageView];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(OBHeaderView *)self imageViewConstraints];
    [v4 deactivateConstraints:v5];

    if (!self->_topAssetContainer)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      topAssetContainer = self->_topAssetContainer;
      self->_topAssetContainer = v7;

      [(UIView *)self->_topAssetContainer setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = [(OBHeaderView *)self topAssetContainer];
      [(OBHeaderView *)self addSubview:v9];
    }

    v10 = [(OBHeaderView *)self imageView];
    [(OBHeaderView *)self addSubview:v10];

    v58 = [(OBHeaderView *)self imageView];
    v56 = [v58 topAnchor];
    v57 = [(OBHeaderView *)self topAssetContainer];
    v11 = [v57 topAnchor];
    v12 = [v56 constraintEqualToAnchor:v11];
    v59[0] = v12;
    v13 = [(OBHeaderView *)self imageView];
    v14 = [v13 bottomAnchor];
    v15 = [(OBHeaderView *)self topAssetContainer];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v59[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    v19 = [v18 mutableCopy];

    v20 = [(OBHeaderView *)self centerXAnchor];
    v21 = [(OBHeaderView *)self imageView];
    v22 = [v21 centerXAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];

    [v19 addObject:v23];
    if ([(OBHeaderView *)self allowFullWidthIcon])
    {
      v24 = [(OBHeaderView *)self imageView];
      v25 = [v24 leadingAnchor];
      v26 = [(OBHeaderView *)self topAssetContainer];
      v27 = [v26 leadingAnchor];
      v28 = [v25 constraintEqualToAnchor:v27];
      [v19 addObject:v28];

      v29 = [(OBHeaderView *)self imageView];
      v30 = [v29 trailingAnchor];
      v31 = [(OBHeaderView *)self topAssetContainer];
      v32 = [v31 trailingAnchor];
      v33 = [v30 constraintEqualToAnchor:v32];
    }

    else
    {
      if (!+[OBFeatureFlags isNaturalUIEnabled])
      {
        goto LABEL_10;
      }

      v35 = [(OBHeaderView *)self imageView];
      v36 = [v35 image];
      [v36 size];
      v38 = v37;

      if (v38 <= 0.0)
      {
LABEL_10:
        [(OBHeaderView *)self iconHeight];
        v48 = v47;
        v29 = [(OBHeaderView *)self imageView];
        v30 = [v29 widthAnchor];
        v31 = [v30 constraintEqualToConstant:v48];
        [v19 addObject:v31];
        goto LABEL_11;
      }

      v39 = [(OBHeaderView *)self imageView];
      v40 = [v39 image];
      [v40 size];
      v42 = v41;
      v43 = [(OBHeaderView *)self imageView];
      v44 = [v43 image];
      [v44 size];
      v46 = v42 / v45;

      v29 = [(OBHeaderView *)self imageView];
      v30 = [v29 widthAnchor];
      v31 = [(OBHeaderView *)self imageView];
      v32 = [v31 heightAnchor];
      v33 = [v30 constraintEqualToAnchor:v32 multiplier:v46];
    }

    v34 = v33;
    [v19 addObject:v33];

LABEL_11:
    v49 = [(OBHeaderView *)self imageView];
    v50 = [v49 heightAnchor];
    [(OBHeaderView *)self iconHeight];
    v51 = [v50 constraintEqualToConstant:?];
    [v19 addObject:v51];

    v52 = [v19 copy];
    [(OBHeaderView *)self setImageViewConstraints:v52];

    v53 = MEMORY[0x1E696ACD8];
    v54 = [(OBHeaderView *)self imageViewConstraints];
    [v53 activateConstraints:v54];
  }

  [(OBHeaderView *)self _layoutTopAssetContainer];
  v55 = *MEMORY[0x1E69E9840];
}

- (void)_layoutTopAssetContainer
{
  v39[5] = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  v4 = MEMORY[0x1E696ACD8];
  v5 = [(OBHeaderView *)self topAssetContainerConstraints];
  [v4 deactivateConstraints:v5];

  v6 = [(OBHeaderView *)self topAssetContainer];

  v7 = [(OBHeaderView *)self topAnchor];
  if (v6)
  {
    v35 = [(OBHeaderView *)self topAssetContainer];
    v33 = [v35 topAnchor];
    [(OBHeaderView *)self topPadding];
    v31 = [v7 constraintEqualToAnchor:v33 constant:-v8];
    v39[0] = v31;
    v29 = [(OBHeaderView *)self topAssetContainer];
    v37 = [v29 leadingAnchor];
    v36 = [(OBHeaderView *)self leadingAnchor];
    v34 = [v37 constraintEqualToAnchor:v36];
    v39[1] = v34;
    v32 = [(OBHeaderView *)self topAssetContainer];
    v30 = [v32 trailingAnchor];
    v28 = [(OBHeaderView *)self trailingAnchor];
    v27 = [v30 constraintEqualToAnchor:v28];
    v39[2] = v27;
    v26 = [(OBHeaderView *)self topAssetContainer];
    v9 = [v26 heightAnchor];
    [(OBHeaderView *)self iconHeight];
    v10 = [v9 constraintLessThanOrEqualToConstant:?];
    v39[3] = v10;
    v11 = [(OBHeaderView *)self topAssetContainer];
    v12 = [v11 bottomAnchor];
    v13 = [(OBHeaderView *)self headerLabel];
    v14 = [v13 topAnchor];
    [(OBHeaderView *)self iconToHeaderLabelPadding];
    v16 = [v12 constraintEqualToAnchor:v14 constant:-v15];
    v39[4] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:5];
    [(OBHeaderView *)self setTopAssetContainerConstraints:v17];

    v18 = v31;
    v19 = v29;

    v20 = v35;
    v21 = v33;

    v3 = 0x1E696A000;
  }

  else
  {
    v20 = [(OBHeaderView *)self headerLabel];
    v21 = [v20 topAnchor];
    [(OBHeaderView *)self topPadding];
    v18 = [v7 constraintEqualToAnchor:v21 constant:-v22];
    v38 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    [(OBHeaderView *)self setTopAssetContainerConstraints:v19];
  }

  v23 = *(v3 + 3288);
  v24 = [(OBHeaderView *)self topAssetContainerConstraints];
  [v23 activateConstraints:v24];

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_createDetailLabelIfNeeded
{
  v3 = [(OBHeaderView *)self detailLabel];

  if (!v3)
  {
    v4 = objc_alloc_init(OBTemplateHeaderDetailLabel);
    [(OBHeaderView *)self setDetailLabel:v4];

    v5 = [(OBHeaderView *)self detailLabel];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(OBHeaderView *)self _updateDetailLabel];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    v7 = [(OBHeaderView *)self detailLabel];
    [v7 setBackgroundColor:v6];

    v8 = [(OBHeaderView *)self _detailFont];
    v9 = [(OBHeaderView *)self detailLabel];
    [v9 setFont:v8];

    v10 = [(OBHeaderView *)self detailLabel];
    [v10 setNumberOfLines:0];

    if (self->_forceCenterAlignment)
    {
      v11 = [(OBHeaderView *)self detailLabel];
      [v11 setForceCenterAlignment:1];
    }

    v12 = [(OBHeaderView *)self detailLabel];
    [(OBHeaderView *)self addSubview:v12];

    [(OBHeaderView *)self _updateConstraintsForDetailLabel];
  }

  return [(OBHeaderView *)self detailLabel];
}

- (void)_updateConstraintsForDetailLabel
{
  v38[4] = *MEMORY[0x1E69E9840];
  v3 = [(OBHeaderView *)self detailLabelConstraints];
  [(OBHeaderView *)self removeConstraints:v3];

  v4 = [(OBHeaderView *)self detailLabel];
  v5 = [v4 superview];

  if (v5 == self)
  {
    v8 = [(OBHeaderView *)self accessoryButton];

    if (v8)
    {
      v9 = [(OBHeaderView *)self detailLabel];
      v10 = [v9 bottomAnchor];
      v11 = [(OBHeaderView *)self accessoryButton];
      v12 = [v11 topAnchor];
      [(OBHeaderView *)self detailLabelToAccessoryButtonPadding];
      v14 = [v10 constraintEqualToAnchor:v12 constant:-v13];
    }

    else
    {
      v9 = [(OBHeaderView *)self bottomAnchor];
      v10 = [(OBHeaderView *)self detailLabel];
      v11 = [v10 bottomAnchor];
      [(OBHeaderView *)self bottomPadding];
      v14 = [v9 constraintEqualToAnchor:v11 constant:?];
    }

    v16 = [(OBHeaderView *)self subtitleLabel];
    if (!v16)
    {
      if ([(OBHeaderView *)self useIntroScreenLayout])
      {
        [(OBHeaderView *)self appNameLabel];
      }

      else
      {
        [(OBHeaderView *)self headerLabel];
      }
      v16 = ;
    }

    [(OBHeaderView *)self headerLabelToDetailAndSubtitleLabelPadding];
    v22 = v21;
    v19 = [(OBHeaderView *)self leftAnchor];
    v20 = [(OBHeaderView *)self detailLabel];
    v36 = [v20 leftAnchor];
    v35 = [v19 constraintEqualToAnchor:v36];
    v38[0] = v35;
    v33 = [(OBHeaderView *)self rightAnchor];
    v34 = [(OBHeaderView *)self detailLabel];
    v32 = [v34 rightAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v38[1] = v31;
    v23 = [v16 bottomAnchor];
    v24 = [(OBHeaderView *)self detailLabel];
    v25 = [v24 topAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:-v22];
    v38[2] = v26;
    v38[3] = v14;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    v27 = v18 = v14;
    [(OBHeaderView *)self setDetailLabelConstraints:v27];
  }

  else
  {
    v6 = [(OBHeaderView *)self subtitleLabel];

    if (v6)
    {
      v7 = [(OBHeaderView *)self subtitleLabel];
    }

    else
    {
      v15 = [(OBHeaderView *)self appNameLabel];

      if (v15)
      {
        [(OBHeaderView *)self appNameLabel];
      }

      else
      {
        [(OBHeaderView *)self headerLabel];
      }
      v7 = ;
    }

    v17 = v7;
    v18 = [v7 bottomAnchor];

    v16 = [(OBHeaderView *)self bottomAnchor];
    [(OBHeaderView *)self bottomPadding];
    v19 = [v16 constraintEqualToAnchor:v18 constant:?];
    v37 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    [(OBHeaderView *)self setDetailLabelConstraints:v20];
  }

  v28 = MEMORY[0x1E696ACD8];
  v29 = [(OBHeaderView *)self detailLabelConstraints];
  [v28 activateConstraints:v29];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_updateConstraintsForSubtitle
{
  v37[3] = *MEMORY[0x1E69E9840];
  v3 = [(OBHeaderView *)self subtitleLabel];

  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = [(OBHeaderView *)self subtitleLabelConstraints];
  [(OBHeaderView *)self removeConstraints:v4];

  [(OBHeaderView *)self headerLabelToDetailAndSubtitleLabelPadding];
  v6 = v5;
  v7 = [(OBHeaderView *)self detailLabel];

  v8 = -v6;
  if (v7)
  {
    v9 = [(OBHeaderView *)self subtitleLabel];
    v10 = [v9 bottomAnchor];
    v11 = [(OBHeaderView *)self detailLabel];
  }

  else
  {
    v12 = [(OBHeaderView *)self accessoryButton];

    if (!v12)
    {
      v9 = [(OBHeaderView *)self bottomAnchor];
      v10 = [(OBHeaderView *)self subtitleLabel];
      v13 = [v10 bottomAnchor];
      [(OBHeaderView *)self bottomPadding];
      v15 = [v9 constraintEqualToAnchor:v13 constant:?];
      goto LABEL_7;
    }

    v9 = [(OBHeaderView *)self subtitleLabel];
    v10 = [v9 bottomAnchor];
    v11 = [(OBHeaderView *)self accessoryButton];
  }

  v13 = v11;
  v14 = [v11 topAnchor];
  v15 = [v10 constraintEqualToAnchor:v14 constant:v8];

LABEL_7:
  v16 = [(OBHeaderView *)self leftAnchor];
  v17 = [(OBHeaderView *)self subtitleLabel];
  v18 = [v17 leftAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v37[0] = v19;
  v20 = [(OBHeaderView *)self rightAnchor];
  v21 = [(OBHeaderView *)self subtitleLabel];
  v22 = [v21 rightAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v37[1] = v23;
  v37[2] = v15;
  v35 = v15;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  [(OBHeaderView *)self setSubtitleLabelConstraints:v24];

  v25 = MEMORY[0x1E696ACD8];
  v26 = [(OBHeaderView *)self subtitleLabelConstraints];
  [v25 activateConstraints:v26];

  if ([(OBHeaderView *)self useIntroScreenLayout])
  {
    [(OBHeaderView *)self appNameLabel];
  }

  else
  {
    [(OBHeaderView *)self headerLabel];
  }
  v27 = ;
  v28 = [v27 bottomAnchor];

  v29 = MEMORY[0x1E696ACD8];
  v30 = [(OBHeaderView *)self subtitleLabel];
  v31 = [v30 topAnchor];
  v32 = [v28 constraintEqualToAnchor:v31 constant:v8];
  v36 = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v29 activateConstraints:v33];

LABEL_11:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)setTemplateType:(unint64_t)a3
{
  self->_templateType = a3;
  [(OBHeaderView *)self _updateHeaderLabelFont];
  [(OBHeaderView *)self _updateDetailLabel];

  [(OBHeaderView *)self _insertAndLayoutImageViewIfNeeded];
}

- (double)iconToHeaderLabelPadding
{
  v2 = +[OBFeatureFlags isNaturalUIEnabled];
  result = 40.0;
  if (!v2)
  {
    return 20.0;
  }

  return result;
}

- (double)headerLabelToDetailAndSubtitleLabelPadding
{
  v2 = +[OBFeatureFlags isNaturalUIEnabled];
  result = 1.0;
  if (!v2)
  {
    v4 = +[OBDevice currentDevice];
    v5 = [v4 templateType];

    result = 0.0;
    if ((v5 - 1) <= 9)
    {
      return dbl_1B4FFC2A8[v5 - 1];
    }
  }

  return result;
}

- (double)detailLabelToAccessoryButtonPadding
{
  v2 = +[OBDevice currentDevice];
  v3 = [v2 templateType];

  result = 0.0;
  if ((v3 - 1) <= 9)
  {
    return dbl_1B4FFC2A8[v3 - 1];
  }

  return result;
}

- (double)iconHeight
{
  v3 = [(OBHeaderView *)self templateType];
  if (v3 - 1 >= 3)
  {
    if (!v3)
    {
      if ([(OBHeaderView *)self useIntroScreenLayout])
      {
        return 110.0;
      }

      else
      {
        v5 = +[OBFeatureFlags isNaturalUIEnabled];
        result = 80.0;
        if (v5)
        {
          return 82.0;
        }
      }
    }
  }

  else
  {

    [(OBHeaderView *)self _setupAssistantIconHeight];
  }

  return result;
}

- (double)_setupAssistantIconHeight
{
  v2 = +[OBDevice currentDevice];
  v3 = [v2 templateType];

  result = 0.0;
  if ((v3 - 1) <= 9)
  {
    return dbl_1B4FFC2F8[v3 - 1];
  }

  return result;
}

- (id)symbolConfiguration
{
  v2 = +[OBDevice currentDevice];
  v3 = [v2 templateType];

  v4 = 0.0;
  v5 = -1;
  if (v3 > 0xA)
  {
    goto LABEL_7;
  }

  if (((1 << v3) & 0x35E) != 0)
  {
    v6 = 0x4047000000000000;
LABEL_6:
    v4 = *&v6;
    v5 = 3;
    goto LABEL_7;
  }

  if (((1 << v3) & 0xA0) != 0)
  {
    v6 = 0x4044000000000000;
    goto LABEL_6;
  }

  if (v3 == 10)
  {
    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      v4 = 82.0;
    }

    else
    {
      v4 = 85.0;
    }
  }

LABEL_7:
  v7 = +[OBFeatureFlags isNaturalUIEnabled];
  v8 = MEMORY[0x1E69DCAD8];
  if (v7)
  {
    v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:v5 scale:v4];
    v10 = [MEMORY[0x1E69DCAD8] configurationWithColorRenderingMode:2];
    v11 = [v9 configurationByApplyingConfiguration:v10];
  }

  else
  {
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:v4];
    v9 = [v8 configurationWithFont:v10 scale:v5];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithWeight:3];
    v11 = [v9 configurationByApplyingConfiguration:v12];
  }

  return v11;
}

- (id)_symbolIconForHeaderStyle:(id)a3 configuration:(id)a4
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = a4;
  v7 = [v5 _systemImageNamed:a3];
  v8 = [v7 imageWithConfiguration:v6];

  return v8;
}

- (void)_animateDetailLabelAlpha:(double)a3 duration:(double)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__OBHeaderView__animateDetailLabelAlpha_duration___block_invoke;
  v5[3] = &unk_1E7C157C8;
  v5[4] = self;
  *&v5[5] = a3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__OBHeaderView__animateDetailLabelAlpha_duration___block_invoke_2;
  v4[3] = &unk_1E7C157F0;
  v4[4] = self;
  *&v4[5] = a3;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:a4];
}

void __50__OBHeaderView__animateDetailLabelAlpha_duration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) detailLabel];
  [v2 setAlpha:v1];
}

void __50__OBHeaderView__animateDetailLabelAlpha_duration___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40) == 0.0;
  v2 = [*(a1 + 32) detailLabel];
  [v2 setHidden:v1];
}

- (OBAnimationView)animationView
{
  v3 = [(OBHeaderView *)self imageView];
  if (v3)
  {

LABEL_4:
    v4 = _OBLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(OBHeaderView *)v4 animationView:v5];
    }

    v12 = 0;
    goto LABEL_7;
  }

  if (self->_customIconContainerView)
  {
    goto LABEL_4;
  }

  animationView = self->_animationView;
  if (!animationView)
  {
    v15 = [(OBHeaderView *)self topAssetContainer];

    if (!v15)
    {
      v16 = objc_alloc(MEMORY[0x1E69DD250]);
      v17 = [v16 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(OBHeaderView *)self setTopAssetContainer:v17];

      v18 = [(OBHeaderView *)self topAssetContainer];
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

      v19 = [(OBHeaderView *)self topAssetContainer];
      [(OBHeaderView *)self addSubview:v19];
    }

    v20 = [OBAnimationView alloc];
    [(OBHeaderView *)self iconHeight];
    v22 = [(OBAnimationView *)v20 initWithFrame:0.0, 0.0, 0.0, v21];
    v23 = self->_animationView;
    self->_animationView = v22;

    [(OBAnimationView *)self->_animationView setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [(OBHeaderView *)self topAssetContainer];
    [v24 addSubview:self->_animationView];

    [(OBHeaderView *)self _layoutTopAssetContainer];
    v25 = self->_animationView;
    v26 = [(OBHeaderView *)self topAssetContainer];
    [(UIView *)v25 ob_pinToEdges:v26];

    animationView = self->_animationView;
  }

  v12 = animationView;
LABEL_7:

  return v12;
}

- (UIView)customIconContainerView
{
  v3 = [(OBHeaderView *)self imageView];
  if (v3)
  {

LABEL_4:
    v4 = _OBLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(OBHeaderView *)v4 customIconContainerView:v5];
    }

    v12 = 0;
    goto LABEL_7;
  }

  if (self->_animationView)
  {
    goto LABEL_4;
  }

  customIconContainerView = self->_customIconContainerView;
  if (!customIconContainerView)
  {
    v15 = [(OBHeaderView *)self topAssetContainer];

    if (v15)
    {
      v16 = *MEMORY[0x1E695F058];
      v17 = *(MEMORY[0x1E695F058] + 8);
      v18 = *(MEMORY[0x1E695F058] + 16);
      v19 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E69DD250]);
      v16 = *MEMORY[0x1E695F058];
      v17 = *(MEMORY[0x1E695F058] + 8);
      v18 = *(MEMORY[0x1E695F058] + 16);
      v19 = *(MEMORY[0x1E695F058] + 24);
      v21 = [v20 initWithFrame:{*MEMORY[0x1E695F058], v17, v18, v19}];
      [(OBHeaderView *)self setTopAssetContainer:v21];

      v22 = [(OBHeaderView *)self topAssetContainer];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = [(OBHeaderView *)self topAssetContainer];
      [(OBHeaderView *)self addSubview:v23];
    }

    v24 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v16, v17, v18, v19}];
    v25 = self->_customIconContainerView;
    self->_customIconContainerView = v24;

    [(UIView *)self->_customIconContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [(UIView *)self->_customIconContainerView layer];
    [v26 setMasksToBounds:1];

    v27 = [(OBHeaderView *)self topAssetContainer];
    [v27 addSubview:self->_customIconContainerView];

    [(OBHeaderView *)self _layoutTopAssetContainer];
    v28 = [(UIView *)self->_customIconContainerView heightAnchor];
    [(OBHeaderView *)self iconHeight];
    v29 = [v28 constraintEqualToConstant:?];
    [v29 setActive:1];

    v30 = self->_customIconContainerView;
    v31 = [(OBHeaderView *)self topAssetContainer];
    [(UIView *)v30 ob_pinToEdges:v31];

    customIconContainerView = self->_customIconContainerView;
  }

  v12 = customIconContainerView;
LABEL_7:

  return v12;
}

- (id)_headerTextStyle
{
  v3 = [(OBHeaderView *)self templateType];
  v4 = MEMORY[0x1E69DDD58];
  if (v3 - 2 < 2)
  {
    if (!+[OBFeatureFlags isNaturalUIEnabled])
    {
      v8 = *v4;
LABEL_18:
      v10 = v8;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (v3 == 1)
  {
    if (!+[OBFeatureFlags isNaturalUIEnabled])
    {
      v9 = MEMORY[0x1E69DDDB8];
      goto LABEL_17;
    }

LABEL_11:
    v9 = MEMORY[0x1E69DDDC0];
LABEL_17:
    v8 = *v9;
    goto LABEL_18;
  }

  if (v3)
  {
    v10 = 0;
  }

  else
  {
    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      v5 = [(OBHeaderView *)self useIntroScreenLayout];
      v6 = MEMORY[0x1E69DDDB8];
      if (!v5)
      {
        v6 = MEMORY[0x1E69DDDC0];
      }

      v7 = *v6;
    }

    else
    {
      v7 = *v4;
    }

    v10 = v7;
    v11 = +[OBDevice currentDevice];
    v12 = [v11 templateType];

    if (v12 == 5)
    {
      v13 = *MEMORY[0x1E69DDDB8];

      v10 = v13;
    }
  }

LABEL_19:
  if (v10 == *v4 && [(OBHeaderView *)self headerStyle]&& [(OBHeaderView *)self headerStyle]== 1)
  {
    v15 = *MEMORY[0x1E69DDDB8];

    v10 = v15;
  }

  return v10;
}

@end