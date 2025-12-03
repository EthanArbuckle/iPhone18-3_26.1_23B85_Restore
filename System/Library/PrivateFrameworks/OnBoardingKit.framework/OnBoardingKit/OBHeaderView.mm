@interface OBHeaderView
- (OBAnimationView)animationView;
- (OBHeaderView)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (OBHeaderView)initWithTitle:(id)title icon:(id)icon;
- (UIView)customIconContainerView;
- (double)_setupAssistantIconHeight;
- (double)detailLabelToAccessoryButtonPadding;
- (double)headerLabelToDetailAndSubtitleLabelPadding;
- (double)iconHeight;
- (double)iconToHeaderLabelPadding;
- (id)_createDetailLabelIfNeeded;
- (id)_createImageView:(id)view withAnimatedSymbol:(BOOL)symbol;
- (id)_detailFont;
- (id)_headerTextStyle;
- (id)_subtitleFont;
- (id)_symbolIconForHeaderStyle:(id)style configuration:(id)configuration;
- (id)headerFont;
- (id)symbolConfiguration;
- (id)title;
- (void)_animateDetailLabelAlpha:(double)alpha duration:(double)duration;
- (void)_createHeaderLabelIfNeeded;
- (void)_insertAndLayoutImageViewIfNeeded;
- (void)_layoutTopAssetContainer;
- (void)_updateConstraintsForDetailLabel;
- (void)_updateConstraintsForSubtitle;
- (void)_updateDetailLabel;
- (void)_updateHeaderLabelFont;
- (void)addAccessoryButton:(id)button;
- (void)extendedInitWithTitle:(id)title detailText:(id)text;
- (void)overrideSpansAllLines:(unint64_t)lines;
- (void)removeAccessoryButton;
- (void)removeAccessoryButtonFromSuperview;
- (void)removeDetailLabelFromSuperview;
- (void)setAppNameForIntroScreen:(id)screen;
- (void)setAttributedDetailText:(id)text;
- (void)setBadgeText:(id)text;
- (void)setDetailText:(id)text;
- (void)setDetailTextAccessibilityIdentifier:(id)identifier;
- (void)setDetailedTextHeader:(id)header detailedTextBody:(id)body;
- (void)setIcon:(id)icon accessibilityLabel:(id)label;
- (void)setIconAccessibilityIdentifier:(id)identifier;
- (void)setLanguage:(id)language;
- (void)setSubtitleText:(id)text;
- (void)setTemplateType:(unint64_t)type;
- (void)setTitle:(id)title;
- (void)setTitleAccessibilityIdentifier:(id)identifier;
- (void)setTitleHyphenationFactor:(float)factor;
- (void)setTitleStyle:(unint64_t)style;
- (void)setTitleTrailingSymbol:(id)symbol;
- (void)startSymbolAnimation;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBHeaderView

- (OBHeaderView)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  v15.receiver = self;
  v15.super_class = OBHeaderView;
  v11 = [(OBHeaderView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    if (iconCopy)
    {
      v13 = [(OBHeaderView *)v11 _createImageView:iconCopy withAnimatedSymbol:0];
      [(OBHeaderView *)v12 setImageView:v13];
    }

    [(OBHeaderView *)v12 extendedInitWithTitle:titleCopy detailText:textCopy];
  }

  return v12;
}

- (OBHeaderView)initWithTitle:(id)title icon:(id)icon
{
  titleCopy = title;
  iconCopy = icon;
  v14.receiver = self;
  v14.super_class = OBHeaderView;
  v8 = [(OBHeaderView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    if (iconCopy)
    {
      v10 = [(OBHeaderView *)v8 _createImageView:iconCopy withAnimatedSymbol:0];
      [(OBHeaderView *)v9 setImageView:v10];
    }

    v11 = &stru_1F2CE9518;
    if (titleCopy)
    {
      v11 = titleCopy;
    }

    v12 = v11;

    [(OBHeaderView *)v9 extendedInitWithTitle:v12 detailText:0];
    titleCopy = v12;
  }

  return v9;
}

- (void)extendedInitWithTitle:(id)title detailText:(id)text
{
  textCopy = text;
  titleCopy = title;
  [(OBHeaderView *)self _createHeaderLabelIfNeeded];
  headerLabel = [(OBHeaderView *)self headerLabel];
  [headerLabel setText:titleCopy];

  headerLabel2 = [(OBHeaderView *)self headerLabel];
  [(OBHeaderView *)self addSubview:headerLabel2];

  if ([textCopy length])
  {
    _createDetailLabelIfNeeded = [(OBHeaderView *)self _createDetailLabelIfNeeded];
    [(OBHeaderView *)self setDetailLabel:_createDetailLabelIfNeeded];

    detailLabel = [(OBHeaderView *)self detailLabel];
    [detailLabel setText:textCopy];
  }

  detailLabel2 = [(OBHeaderView *)self detailLabel];
  [(OBHeaderView *)self addSubview:detailLabel2];

  leftAnchor = [(OBHeaderView *)self leftAnchor];
  headerLabel3 = [(OBHeaderView *)self headerLabel];
  leftAnchor2 = [headerLabel3 leftAnchor];
  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [(OBHeaderView *)self setHeaderLeftEdgeConstraint:v15];

  headerLeftEdgeConstraint = [(OBHeaderView *)self headerLeftEdgeConstraint];
  [headerLeftEdgeConstraint setActive:1];

  rightAnchor = [(OBHeaderView *)self rightAnchor];
  headerLabel4 = [(OBHeaderView *)self headerLabel];
  rightAnchor2 = [headerLabel4 rightAnchor];
  v20 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [(OBHeaderView *)self setHeaderRightEdgeConstraint:v20];

  headerRightEdgeConstraint = [(OBHeaderView *)self headerRightEdgeConstraint];
  [headerRightEdgeConstraint setActive:1];

  [(OBHeaderView *)self _insertAndLayoutImageViewIfNeeded];
  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
}

- (void)_createHeaderLabelIfNeeded
{
  headerLabel = [(OBHeaderView *)self headerLabel];

  if (!headerLabel)
  {
    v4 = objc_alloc_init(OBTemplateLabel);
    [(OBHeaderView *)self setHeaderLabel:v4];

    headerLabel2 = [(OBHeaderView *)self headerLabel];
    [headerLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    headerLabel3 = [(OBHeaderView *)self headerLabel];
    [headerLabel3 setTextColor:labelColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    headerLabel4 = [(OBHeaderView *)self headerLabel];
    [headerLabel4 setBackgroundColor:clearColor];

    [(OBHeaderView *)self _updateHeaderLabelFont];
    headerLabel5 = [(OBHeaderView *)self headerLabel];
    [headerLabel5 setNumberOfLines:0];
  }
}

- (void)setAppNameForIntroScreen:(id)screen
{
  v35[3] = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  [(OBHeaderView *)self setUseIntroScreenLayout:1];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  headerLabel = [(OBHeaderView *)self headerLabel];
  [headerLabel setTextColor:tintColor];

  appNameLabel = [(OBHeaderView *)self appNameLabel];

  if (!appNameLabel)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(OBHeaderView *)self setAppNameLabel:v8];

    appNameLabel2 = [(OBHeaderView *)self appNameLabel];
    [appNameLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    appNameLabel3 = [(OBHeaderView *)self appNameLabel];
    [appNameLabel3 setTextColor:labelColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    appNameLabel4 = [(OBHeaderView *)self appNameLabel];
    [appNameLabel4 setBackgroundColor:clearColor];

    headerFont = [(OBHeaderView *)self headerFont];
    appNameLabel5 = [(OBHeaderView *)self appNameLabel];
    [appNameLabel5 setFont:headerFont];

    appNameLabel6 = [(OBHeaderView *)self appNameLabel];
    [appNameLabel6 setNumberOfLines:0];

    appNameLabel7 = [(OBHeaderView *)self appNameLabel];
    [(OBHeaderView *)self addSubview:appNameLabel7];

    v29 = MEMORY[0x1E696ACD8];
    appNameLabel8 = [(OBHeaderView *)self appNameLabel];
    leadingAnchor = [appNameLabel8 leadingAnchor];
    leadingAnchor2 = [(OBHeaderView *)self leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v31;
    appNameLabel9 = [(OBHeaderView *)self appNameLabel];
    trailingAnchor = [appNameLabel9 trailingAnchor];
    trailingAnchor2 = [(OBHeaderView *)self trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[1] = v19;
    appNameLabel10 = [(OBHeaderView *)self appNameLabel];
    topAnchor = [appNameLabel10 topAnchor];
    headerLabel2 = [(OBHeaderView *)self headerLabel];
    bottomAnchor = [headerLabel2 bottomAnchor];
    v24 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v35[2] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    [v29 activateConstraints:v25];

    [(OBHeaderView *)self _updateConstraintsForDetailLabel];
    [(OBHeaderView *)self _updateConstraintsForSubtitle];
    [(OBHeaderView *)self _insertAndLayoutImageViewIfNeeded];
  }

  appNameLabel11 = [(OBHeaderView *)self appNameLabel];
  [appNameLabel11 setText:screenCopy];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)startSymbolAnimation
{
  imageView = [(OBHeaderView *)self imageView];
  effect = [MEMORY[0x1E6982268] effect];
  options = [MEMORY[0x1E6982278] options];
  [imageView addSymbolEffect:effect options:options animated:1];
}

- (void)setIcon:(id)icon accessibilityLabel:(id)label
{
  iconCopy = icon;
  labelCopy = label;
  if (*&self->_animationView == 0)
  {
    [(OBHeaderView *)self _setImage:iconCopy accessibilityLabel:labelCopy withAnimatedSymbol:0];
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
  headerLabel = [(OBHeaderView *)self headerLabel];
  text = [headerLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    titleCopy = title;
    headerLabel = [(OBHeaderView *)self headerLabel];
    [headerLabel setText:titleCopy];
  }
}

- (void)setTitleTrailingSymbol:(id)symbol
{
  symbolCopy = symbol;
  headerLabel = [(OBHeaderView *)self headerLabel];
  [headerLabel setTitleTrailingSymbol:symbolCopy];
}

- (void)setDetailText:(id)text
{
  if (text)
  {
    textCopy = text;
    _createDetailLabelIfNeeded = [(OBHeaderView *)self _createDetailLabelIfNeeded];
    detailLabel = [(OBHeaderView *)self detailLabel];
    [detailLabel setText:textCopy];
  }
}

- (void)setAttributedDetailText:(id)text
{
  if (text)
  {
    textCopy = text;
    _createDetailLabelIfNeeded = [(OBHeaderView *)self _createDetailLabelIfNeeded];
    v6 = objc_alloc(MEMORY[0x1E696AD40]);
    string = [textCopy string];
    v8 = [v6 initWithString:string];

    v9 = [textCopy length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__OBHeaderView_setAttributedDetailText___block_invoke;
    v12[3] = &unk_1E7C157A0;
    v13 = v8;
    v10 = v8;
    [textCopy enumerateAttributesInRange:0 options:v9 usingBlock:{0, v12}];

    detailLabel = [(OBHeaderView *)self detailLabel];
    [detailLabel setAttributedText:v10];
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

- (void)setBadgeText:(id)text
{
  v58[5] = *MEMORY[0x1E69E9840];
  textCopy = text;
  badgeLabel = [(OBHeaderView *)self badgeLabel];

  if (badgeLabel)
  {
    badgeLabel2 = [(OBHeaderView *)self badgeLabel];
    [badgeLabel2 removeFromSuperview];

    [(OBHeaderView *)self setBadgeLabel:0];
  }

  if (textCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = textCopy;
    [v7 setText:textCopy];
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
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v7 setTextColor:whiteColor];

    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [v11 setColor:grayColor];

    v55 = v11;
    [v7 _setTextEncapsulation:v11];
    [(OBHeaderView *)self setBadgeLabel:v7];
    [(OBHeaderView *)self addSubview:v7];
    headerLabel = [(OBHeaderView *)self headerLabel];
    LODWORD(v15) = 1132068864;
    [headerLabel setContentHuggingPriority:0 forAxis:v15];

    headerLabel2 = [(OBHeaderView *)self headerLabel];
    LODWORD(v17) = 1144750080;
    [headerLabel2 setContentCompressionResistancePriority:0 forAxis:v17];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      headerLeftEdgeConstraint = [(OBHeaderView *)self headerLeftEdgeConstraint];

      if (headerLeftEdgeConstraint)
      {
        headerLeftEdgeConstraint2 = [(OBHeaderView *)self headerLeftEdgeConstraint];
        [headerLeftEdgeConstraint2 setActive:0];

        [(OBHeaderView *)self setHeaderLeftEdgeConstraint:0];
      }

      v50 = MEMORY[0x1E696ACD8];
      rightAnchor = [v7 rightAnchor];
      headerLabel3 = [(OBHeaderView *)self headerLabel];
      [headerLabel3 leftAnchor];
      v52 = v54 = rightAnchor;
      v51 = [rightAnchor constraintEqualToAnchor:-8.0 constant:?];
      v58[0] = v51;
      centerYAnchor = [v7 centerYAnchor];
      headerLabel4 = [(OBHeaderView *)self headerLabel];
      [headerLabel4 centerYAnchor];
      v47 = v49 = centerYAnchor;
      v46 = [centerYAnchor constraintEqualToAnchor:?];
      v58[1] = v46;
      leftAnchor = [v7 leftAnchor];
      leftAnchor2 = [(OBHeaderView *)self leftAnchor];
      v45 = leftAnchor;
      v43 = [leftAnchor constraintGreaterThanOrEqualToAnchor:?];
      v58[2] = v43;
      headerLabel5 = [(OBHeaderView *)self headerLabel];
      rightAnchor2 = [headerLabel5 rightAnchor];
      rightAnchor3 = [(OBHeaderView *)self rightAnchor];
      v28 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
      v58[3] = v28;
      headerLabel6 = [(OBHeaderView *)self headerLabel];
      leftAnchor3 = [headerLabel6 leftAnchor];
      rightAnchor4 = [v7 rightAnchor];
      v32 = [leftAnchor3 constraintGreaterThanOrEqualToAnchor:rightAnchor4 constant:8.0];
      v58[4] = v32;
      v33 = v58;
    }

    else
    {
      headerRightEdgeConstraint = [(OBHeaderView *)self headerRightEdgeConstraint];

      if (headerRightEdgeConstraint)
      {
        headerRightEdgeConstraint2 = [(OBHeaderView *)self headerRightEdgeConstraint];
        [headerRightEdgeConstraint2 setActive:0];

        [(OBHeaderView *)self setHeaderRightEdgeConstraint:0];
      }

      v50 = MEMORY[0x1E696ACD8];
      leftAnchor4 = [v7 leftAnchor];
      headerLabel3 = [(OBHeaderView *)self headerLabel];
      [headerLabel3 rightAnchor];
      v52 = v54 = leftAnchor4;
      v51 = [leftAnchor4 constraintEqualToAnchor:8.0 constant:?];
      v57[0] = v51;
      centerYAnchor2 = [v7 centerYAnchor];
      headerLabel4 = [(OBHeaderView *)self headerLabel];
      [headerLabel4 centerYAnchor];
      v47 = v49 = centerYAnchor2;
      v46 = [centerYAnchor2 constraintEqualToAnchor:?];
      v57[1] = v46;
      rightAnchor5 = [v7 rightAnchor];
      leftAnchor2 = [(OBHeaderView *)self rightAnchor];
      v45 = rightAnchor5;
      v43 = [rightAnchor5 constraintLessThanOrEqualToAnchor:?];
      v57[2] = v43;
      headerLabel5 = [(OBHeaderView *)self headerLabel];
      rightAnchor2 = [headerLabel5 leftAnchor];
      rightAnchor3 = [(OBHeaderView *)self leftAnchor];
      v28 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
      v57[3] = v28;
      headerLabel6 = [(OBHeaderView *)self headerLabel];
      leftAnchor3 = [headerLabel6 rightAnchor];
      rightAnchor4 = [v7 leftAnchor];
      v32 = [leftAnchor3 constraintLessThanOrEqualToAnchor:rightAnchor4 constant:-8.0];
      v57[4] = v32;
      v33 = v57;
    }

    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
    [v50 activateConstraints:v41];

    textCopy = v56;
  }

  else
  {
    headerLeftEdgeConstraint3 = [(OBHeaderView *)self headerLeftEdgeConstraint];
    [headerLeftEdgeConstraint3 setActive:1];

    headerRightEdgeConstraint3 = [(OBHeaderView *)self headerRightEdgeConstraint];
    [headerRightEdgeConstraint3 setActive:1];
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)overrideSpansAllLines:(unint64_t)lines
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = _OBLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    title = [(OBHeaderView *)self title];
    v9 = 134218242;
    linesCopy = lines;
    v11 = 2112;
    v12 = title;
    _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "Overriding spansAllLines: (%li), for label with title:%@", &v9, 0x16u);
  }

  detailLabel = [(OBHeaderView *)self detailLabel];
  [detailLabel overrideSpansAllLines:lines];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLanguage:(id)language
{
  languageCopy = language;
  headerLabel = [(OBHeaderView *)self headerLabel];
  _defaultAttributes = [headerLabel _defaultAttributes];
  v7 = [_defaultAttributes mutableCopy];

  [v7 setObject:languageCopy forKeyedSubscript:@"NSLanguage"];
  headerLabel2 = [(OBHeaderView *)self headerLabel];
  [headerLabel2 _setDefaultAttributes:v7];

  detailLabel = [(OBHeaderView *)self detailLabel];
  _defaultAttributes2 = [detailLabel _defaultAttributes];
  v12 = [_defaultAttributes2 mutableCopy];

  [v12 setObject:languageCopy forKeyedSubscript:@"NSLanguage"];
  detailLabel2 = [(OBHeaderView *)self detailLabel];
  [detailLabel2 _setDefaultAttributes:v12];
}

- (void)setDetailedTextHeader:(id)header detailedTextBody:(id)body
{
  if (header && body)
  {
    bodyCopy = body;
    headerCopy = header;
    _createDetailLabelIfNeeded = [(OBHeaderView *)self _createDetailLabelIfNeeded];
    detailLabel = [(OBHeaderView *)self detailLabel];
    [detailLabel setDetailedTextHeader:headerCopy detailedTextBody:bodyCopy];
  }
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  subtitleLabel = [(OBHeaderView *)self subtitleLabel];

  v5 = textCopy;
  if (!subtitleLabel)
  {
    v6 = objc_alloc_init(OBTemplateLabel);
    [(OBHeaderView *)self setSubtitleLabel:v6];

    subtitleLabel2 = [(OBHeaderView *)self subtitleLabel];
    [subtitleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    _subtitleFont = [(OBHeaderView *)self _subtitleFont];
    subtitleLabel3 = [(OBHeaderView *)self subtitleLabel];
    [subtitleLabel3 setFont:_subtitleFont];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    subtitleLabel4 = [(OBHeaderView *)self subtitleLabel];
    [subtitleLabel4 setTextColor:secondaryLabelColor];

    subtitleLabel5 = [(OBHeaderView *)self subtitleLabel];
    [subtitleLabel5 setNumberOfLines:0];

    if (self->_forceCenterAlignment)
    {
      subtitleLabel6 = [(OBHeaderView *)self subtitleLabel];
      [subtitleLabel6 setForceCenterAlignment:1];
    }

    subtitleLabel7 = [(OBHeaderView *)self subtitleLabel];
    [(OBHeaderView *)self addSubview:subtitleLabel7];

    v5 = textCopy;
  }

  v15 = [v5 length];
  subtitleLabel8 = [(OBHeaderView *)self subtitleLabel];
  v17 = subtitleLabel8;
  if (v15)
  {
    [subtitleLabel8 setText:textCopy];
  }

  else
  {
    [subtitleLabel8 removeFromSuperview];

    [(OBHeaderView *)self setSubtitleLabel:0];
  }

  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
  [(OBHeaderView *)self _updateConstraintsForSubtitle];
}

- (void)addAccessoryButton:(id)button
{
  v33[3] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  detailLabel = [(OBHeaderView *)self detailLabel];

  if (!detailLabel)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D930];
    v25 = @"Accessory button is not supported with no detail text.";
    goto LABEL_12;
  }

  accessoryButton = [(OBHeaderView *)self accessoryButton];

  if (accessoryButton)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D930];
    v25 = @"Only one accessory button is supported.";
LABEL_12:
    v26 = [v23 exceptionWithName:v24 reason:v25 userInfo:0];
    objc_exception_throw(v26);
  }

  if (+[OBFeatureFlags isNaturalUIEnabled](OBFeatureFlags, "isNaturalUIEnabled") && [buttonCopy displayInfoIcon])
  {
    [buttonCopy addInfoIcon];
  }

  [(OBHeaderView *)self setAccessoryButton:buttonCopy];
  underlineLinks = [(OBHeaderView *)self underlineLinks];
  accessoryButton2 = [(OBHeaderView *)self accessoryButton];
  [accessoryButton2 setUnderlineLinks:underlineLinks];

  [(OBHeaderView *)self addSubview:buttonCopy];
  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
  LODWORD(underlineLinks) = +[OBFeatureFlags isNaturalUIEnabled];
  v30 = MEMORY[0x1E696ACD8];
  leadingAnchor = [buttonCopy leadingAnchor];
  leadingAnchor2 = [(OBHeaderView *)self leadingAnchor];
  if (underlineLinks)
  {
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[0] = v11;
    trailingAnchor = [buttonCopy trailingAnchor];
    trailingAnchor2 = [(OBHeaderView *)self trailingAnchor];
    v29 = [trailingAnchor constraintLessThanOrEqualToAnchor:?];
    v33[1] = v29;
    bottomAnchor = [buttonCopy bottomAnchor];
    bottomAnchor2 = [(OBHeaderView *)self bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v33[2] = v15;
    bottomAnchor3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
    [v30 activateConstraints:bottomAnchor3];
  }

  else
  {
    v28 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v32[0] = v28;
    trailingAnchor3 = [buttonCopy trailingAnchor];
    trailingAnchor2 = [(OBHeaderView *)self trailingAnchor];
    v29 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:?];
    v32[1] = v29;
    bottomAnchor = [buttonCopy centerXAnchor];
    bottomAnchor2 = [(OBHeaderView *)self centerXAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[2] = v15;
    bottomAnchor3 = [buttonCopy bottomAnchor];
    bottomAnchor4 = [(OBHeaderView *)self bottomAnchor];
    [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
    v19 = v18 = leadingAnchor;
    v32[3] = v19;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    v21 = v20 = leadingAnchor2;
    [v30 activateConstraints:v21];

    leadingAnchor2 = v20;
    trailingAnchor = trailingAnchor3;

    leadingAnchor = v18;
    v11 = v28;
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = OBHeaderView;
  [(OBHeaderView *)&v8 traitCollectionDidChange:change];
  [(OBHeaderView *)self _updateHeaderLabelFont];
  _subtitleFont = [(OBHeaderView *)self _subtitleFont];
  subtitleLabel = [(OBHeaderView *)self subtitleLabel];
  [subtitleLabel setFont:_subtitleFont];

  _detailFont = [(OBHeaderView *)self _detailFont];
  detailLabel = [(OBHeaderView *)self detailLabel];
  [detailLabel setFont:_detailFont];
}

- (void)tintColorDidChange
{
  v11.receiver = self;
  v11.super_class = OBHeaderView;
  [(OBHeaderView *)&v11 tintColorDidChange];
  if ([(OBHeaderView *)self iconInheritsTint])
  {
    tintColor = [(OBHeaderView *)self tintColor];

    if (tintColor)
    {
      symbolName = [(OBHeaderView *)self symbolName];

      if (symbolName)
      {
        if (+[OBFeatureFlags isNaturalUIEnabled])
        {
          symbolName2 = [(OBHeaderView *)self symbolName];
          symbolConfiguration = [(OBHeaderView *)self symbolConfiguration];
          [(OBHeaderView *)self _symbolIconForHeaderStyle:symbolName2 configuration:symbolConfiguration];
        }

        else
        {
          symbolName2 = [(OBHeaderView *)self originalIconImage];
          symbolConfiguration = [(OBHeaderView *)self tintColor];
          [symbolName2 imageWithTintColor:symbolConfiguration renderingMode:2];
        }
        imageView2 = ;

        imageView = [(OBHeaderView *)self imageView];
        [imageView setImage:imageView2];
      }

      else
      {
        imageView2 = [(OBHeaderView *)self imageView];
        imageView = [(OBHeaderView *)self originalIconImage];
        tintColor2 = [(OBHeaderView *)self tintColor];
        v10 = [imageView _flatImageWithColor:tintColor2];
        [imageView2 setImage:v10];
      }
    }
  }
}

- (void)setTitleStyle:(unint64_t)style
{
  [(OBHeaderView *)self setHeaderStyle:style];

  [(OBHeaderView *)self _updateHeaderLabelFont];
}

- (id)headerFont
{
  _headerFontOverride = [(OBHeaderView *)self _headerFontOverride];
  v4 = _headerFontOverride;
  if (_headerFontOverride)
  {
    v5 = _headerFontOverride;
  }

  else
  {
    _headerTextStyle = [(OBHeaderView *)self _headerTextStyle];
    v7 = MEMORY[0x1E69DB880];
    traitCollection = [(OBHeaderView *)self traitCollection];
    v9 = [v7 preferredFontDescriptorWithTextStyle:_headerTextStyle compatibleWithTraitCollection:traitCollection];

    v10 = MEMORY[0x1E69DB878];
    v11 = [v9 fontDescriptorWithSymbolicTraits:2];
    v5 = [v10 fontWithDescriptor:v11 size:0.0];
  }

  return v5;
}

- (void)setTitleHyphenationFactor:(float)factor
{
  headerLabel = [(OBHeaderView *)self headerLabel];
  *&v4 = factor;
  [headerLabel _setHyphenationFactor:v4];
}

- (void)removeDetailLabelFromSuperview
{
  detailLabel = [(OBHeaderView *)self detailLabel];
  [detailLabel removeFromSuperview];

  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
}

- (void)removeAccessoryButtonFromSuperview
{
  accessoryButton = [(OBHeaderView *)self accessoryButton];
  [accessoryButton removeFromSuperview];

  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
}

- (void)removeAccessoryButton
{
  accessoryButton = [(OBHeaderView *)self accessoryButton];
  [accessoryButton removeFromSuperview];

  [(OBHeaderView *)self setAccessoryButton:0];

  [(OBHeaderView *)self _updateConstraintsForDetailLabel];
}

- (void)setIconAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageView = [(OBHeaderView *)self imageView];
  [imageView setAccessibilityIdentifier:identifierCopy];
}

- (void)setTitleAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  headerLabel = [(OBHeaderView *)self headerLabel];
  [headerLabel setAccessibilityIdentifier:identifierCopy];
}

- (void)setDetailTextAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  detailLabel = [(OBHeaderView *)self detailLabel];
  [detailLabel setAccessibilityIdentifier:identifierCopy];
}

- (void)_updateHeaderLabelFont
{
  headerFont = [(OBHeaderView *)self headerFont];
  headerLabel = [(OBHeaderView *)self headerLabel];
  [headerLabel setFont:headerFont];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  badgeLabel = [(OBHeaderView *)self badgeLabel];
  [badgeLabel setFont:v6];
}

- (void)_updateDetailLabel
{
  detailLabel = [(OBHeaderView *)self detailLabel];

  if (detailLabel)
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
    detailLabel2 = [(OBHeaderView *)self detailLabel];
    [detailLabel2 setTextColor:v5];
  }
}

- (id)_subtitleFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = MEMORY[0x1E69DB880];
  v4 = *MEMORY[0x1E69DDD00];
  traitCollection = [(OBHeaderView *)self traitCollection];
  v6 = [v3 preferredFontDescriptorWithTextStyle:v4 compatibleWithTraitCollection:traitCollection];
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
  traitCollection = [(OBHeaderView *)self traitCollection];
  v10 = [v7 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:traitCollection];
  v11 = [v6 fontWithDescriptor:v10 size:v3];

  return v11;
}

- (id)_createImageView:(id)view withAnimatedSymbol:(BOOL)symbol
{
  symbolCopy = symbol;
  viewCopy = view;
  [(OBHeaderView *)self setOriginalIconImage:viewCopy];
  v7 = [[OBImageView alloc] initWithImage:viewCopy];

  [(OBImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBImageView *)v7 setContentMode:1];
  symbolName = [(OBHeaderView *)self symbolName];

  if (symbolName && symbolCopy)
  {
    effect = [MEMORY[0x1E6982258] effect];
    options = [MEMORY[0x1E6982278] options];
    [(OBImageView *)v7 addSymbolEffect:effect options:options animated:0];
  }

  return v7;
}

- (void)_insertAndLayoutImageViewIfNeeded
{
  v59[2] = *MEMORY[0x1E69E9840];
  imageView = [(OBHeaderView *)self imageView];

  if (imageView)
  {
    v4 = MEMORY[0x1E696ACD8];
    imageViewConstraints = [(OBHeaderView *)self imageViewConstraints];
    [v4 deactivateConstraints:imageViewConstraints];

    if (!self->_topAssetContainer)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      topAssetContainer = self->_topAssetContainer;
      self->_topAssetContainer = v7;

      [(UIView *)self->_topAssetContainer setTranslatesAutoresizingMaskIntoConstraints:0];
      topAssetContainer = [(OBHeaderView *)self topAssetContainer];
      [(OBHeaderView *)self addSubview:topAssetContainer];
    }

    imageView2 = [(OBHeaderView *)self imageView];
    [(OBHeaderView *)self addSubview:imageView2];

    imageView3 = [(OBHeaderView *)self imageView];
    topAnchor = [imageView3 topAnchor];
    topAssetContainer2 = [(OBHeaderView *)self topAssetContainer];
    topAnchor2 = [topAssetContainer2 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[0] = v12;
    imageView4 = [(OBHeaderView *)self imageView];
    bottomAnchor = [imageView4 bottomAnchor];
    topAssetContainer3 = [(OBHeaderView *)self topAssetContainer];
    bottomAnchor2 = [topAssetContainer3 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    v19 = [v18 mutableCopy];

    centerXAnchor = [(OBHeaderView *)self centerXAnchor];
    imageView5 = [(OBHeaderView *)self imageView];
    centerXAnchor2 = [imageView5 centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    [v19 addObject:v23];
    if ([(OBHeaderView *)self allowFullWidthIcon])
    {
      imageView6 = [(OBHeaderView *)self imageView];
      leadingAnchor = [imageView6 leadingAnchor];
      topAssetContainer4 = [(OBHeaderView *)self topAssetContainer];
      leadingAnchor2 = [topAssetContainer4 leadingAnchor];
      v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v19 addObject:v28];

      imageView7 = [(OBHeaderView *)self imageView];
      trailingAnchor = [imageView7 trailingAnchor];
      topAssetContainer5 = [(OBHeaderView *)self topAssetContainer];
      trailingAnchor2 = [topAssetContainer5 trailingAnchor];
      v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    }

    else
    {
      if (!+[OBFeatureFlags isNaturalUIEnabled])
      {
        goto LABEL_10;
      }

      imageView8 = [(OBHeaderView *)self imageView];
      image = [imageView8 image];
      [image size];
      v38 = v37;

      if (v38 <= 0.0)
      {
LABEL_10:
        [(OBHeaderView *)self iconHeight];
        v48 = v47;
        imageView7 = [(OBHeaderView *)self imageView];
        trailingAnchor = [imageView7 widthAnchor];
        topAssetContainer5 = [trailingAnchor constraintEqualToConstant:v48];
        [v19 addObject:topAssetContainer5];
        goto LABEL_11;
      }

      imageView9 = [(OBHeaderView *)self imageView];
      image2 = [imageView9 image];
      [image2 size];
      v42 = v41;
      imageView10 = [(OBHeaderView *)self imageView];
      image3 = [imageView10 image];
      [image3 size];
      v46 = v42 / v45;

      imageView7 = [(OBHeaderView *)self imageView];
      trailingAnchor = [imageView7 widthAnchor];
      topAssetContainer5 = [(OBHeaderView *)self imageView];
      trailingAnchor2 = [topAssetContainer5 heightAnchor];
      v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 multiplier:v46];
    }

    v34 = v33;
    [v19 addObject:v33];

LABEL_11:
    imageView11 = [(OBHeaderView *)self imageView];
    heightAnchor = [imageView11 heightAnchor];
    [(OBHeaderView *)self iconHeight];
    v51 = [heightAnchor constraintEqualToConstant:?];
    [v19 addObject:v51];

    v52 = [v19 copy];
    [(OBHeaderView *)self setImageViewConstraints:v52];

    v53 = MEMORY[0x1E696ACD8];
    imageViewConstraints2 = [(OBHeaderView *)self imageViewConstraints];
    [v53 activateConstraints:imageViewConstraints2];
  }

  [(OBHeaderView *)self _layoutTopAssetContainer];
  v55 = *MEMORY[0x1E69E9840];
}

- (void)_layoutTopAssetContainer
{
  v39[5] = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  v4 = MEMORY[0x1E696ACD8];
  topAssetContainerConstraints = [(OBHeaderView *)self topAssetContainerConstraints];
  [v4 deactivateConstraints:topAssetContainerConstraints];

  topAssetContainer = [(OBHeaderView *)self topAssetContainer];

  topAnchor = [(OBHeaderView *)self topAnchor];
  if (topAssetContainer)
  {
    topAssetContainer2 = [(OBHeaderView *)self topAssetContainer];
    topAnchor2 = [topAssetContainer2 topAnchor];
    [(OBHeaderView *)self topPadding];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v8];
    v39[0] = v31;
    topAssetContainer3 = [(OBHeaderView *)self topAssetContainer];
    leadingAnchor = [topAssetContainer3 leadingAnchor];
    leadingAnchor2 = [(OBHeaderView *)self leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[1] = v34;
    topAssetContainer4 = [(OBHeaderView *)self topAssetContainer];
    trailingAnchor = [topAssetContainer4 trailingAnchor];
    trailingAnchor2 = [(OBHeaderView *)self trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[2] = v27;
    topAssetContainer5 = [(OBHeaderView *)self topAssetContainer];
    heightAnchor = [topAssetContainer5 heightAnchor];
    [(OBHeaderView *)self iconHeight];
    v10 = [heightAnchor constraintLessThanOrEqualToConstant:?];
    v39[3] = v10;
    topAssetContainer6 = [(OBHeaderView *)self topAssetContainer];
    bottomAnchor = [topAssetContainer6 bottomAnchor];
    headerLabel = [(OBHeaderView *)self headerLabel];
    topAnchor3 = [headerLabel topAnchor];
    [(OBHeaderView *)self iconToHeaderLabelPadding];
    v16 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-v15];
    v39[4] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:5];
    [(OBHeaderView *)self setTopAssetContainerConstraints:v17];

    v18 = v31;
    v19 = topAssetContainer3;

    headerLabel2 = topAssetContainer2;
    topAnchor4 = topAnchor2;

    v3 = 0x1E696A000;
  }

  else
  {
    headerLabel2 = [(OBHeaderView *)self headerLabel];
    topAnchor4 = [headerLabel2 topAnchor];
    [(OBHeaderView *)self topPadding];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor4 constant:-v22];
    v38 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    [(OBHeaderView *)self setTopAssetContainerConstraints:v19];
  }

  v23 = *(v3 + 3288);
  topAssetContainerConstraints2 = [(OBHeaderView *)self topAssetContainerConstraints];
  [v23 activateConstraints:topAssetContainerConstraints2];

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_createDetailLabelIfNeeded
{
  detailLabel = [(OBHeaderView *)self detailLabel];

  if (!detailLabel)
  {
    v4 = objc_alloc_init(OBTemplateHeaderDetailLabel);
    [(OBHeaderView *)self setDetailLabel:v4];

    detailLabel2 = [(OBHeaderView *)self detailLabel];
    [detailLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(OBHeaderView *)self _updateDetailLabel];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    detailLabel3 = [(OBHeaderView *)self detailLabel];
    [detailLabel3 setBackgroundColor:clearColor];

    _detailFont = [(OBHeaderView *)self _detailFont];
    detailLabel4 = [(OBHeaderView *)self detailLabel];
    [detailLabel4 setFont:_detailFont];

    detailLabel5 = [(OBHeaderView *)self detailLabel];
    [detailLabel5 setNumberOfLines:0];

    if (self->_forceCenterAlignment)
    {
      detailLabel6 = [(OBHeaderView *)self detailLabel];
      [detailLabel6 setForceCenterAlignment:1];
    }

    detailLabel7 = [(OBHeaderView *)self detailLabel];
    [(OBHeaderView *)self addSubview:detailLabel7];

    [(OBHeaderView *)self _updateConstraintsForDetailLabel];
  }

  return [(OBHeaderView *)self detailLabel];
}

- (void)_updateConstraintsForDetailLabel
{
  v38[4] = *MEMORY[0x1E69E9840];
  detailLabelConstraints = [(OBHeaderView *)self detailLabelConstraints];
  [(OBHeaderView *)self removeConstraints:detailLabelConstraints];

  detailLabel = [(OBHeaderView *)self detailLabel];
  superview = [detailLabel superview];

  if (superview == self)
  {
    accessoryButton = [(OBHeaderView *)self accessoryButton];

    if (accessoryButton)
    {
      detailLabel2 = [(OBHeaderView *)self detailLabel];
      bottomAnchor = [detailLabel2 bottomAnchor];
      accessoryButton2 = [(OBHeaderView *)self accessoryButton];
      topAnchor = [accessoryButton2 topAnchor];
      [(OBHeaderView *)self detailLabelToAccessoryButtonPadding];
      v14 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-v13];
    }

    else
    {
      detailLabel2 = [(OBHeaderView *)self bottomAnchor];
      bottomAnchor = [(OBHeaderView *)self detailLabel];
      accessoryButton2 = [bottomAnchor bottomAnchor];
      [(OBHeaderView *)self bottomPadding];
      v14 = [detailLabel2 constraintEqualToAnchor:accessoryButton2 constant:?];
    }

    subtitleLabel = [(OBHeaderView *)self subtitleLabel];
    if (!subtitleLabel)
    {
      if ([(OBHeaderView *)self useIntroScreenLayout])
      {
        [(OBHeaderView *)self appNameLabel];
      }

      else
      {
        [(OBHeaderView *)self headerLabel];
      }
      subtitleLabel = ;
    }

    [(OBHeaderView *)self headerLabelToDetailAndSubtitleLabelPadding];
    v22 = v21;
    leftAnchor = [(OBHeaderView *)self leftAnchor];
    detailLabel3 = [(OBHeaderView *)self detailLabel];
    leftAnchor2 = [detailLabel3 leftAnchor];
    v35 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v38[0] = v35;
    rightAnchor = [(OBHeaderView *)self rightAnchor];
    detailLabel4 = [(OBHeaderView *)self detailLabel];
    rightAnchor2 = [detailLabel4 rightAnchor];
    v31 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v38[1] = v31;
    bottomAnchor2 = [subtitleLabel bottomAnchor];
    detailLabel5 = [(OBHeaderView *)self detailLabel];
    topAnchor2 = [detailLabel5 topAnchor];
    v26 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:-v22];
    v38[2] = v26;
    v38[3] = v14;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    v27 = bottomAnchor3 = v14;
    [(OBHeaderView *)self setDetailLabelConstraints:v27];
  }

  else
  {
    subtitleLabel2 = [(OBHeaderView *)self subtitleLabel];

    if (subtitleLabel2)
    {
      subtitleLabel3 = [(OBHeaderView *)self subtitleLabel];
    }

    else
    {
      appNameLabel = [(OBHeaderView *)self appNameLabel];

      if (appNameLabel)
      {
        [(OBHeaderView *)self appNameLabel];
      }

      else
      {
        [(OBHeaderView *)self headerLabel];
      }
      subtitleLabel3 = ;
    }

    v17 = subtitleLabel3;
    bottomAnchor3 = [subtitleLabel3 bottomAnchor];

    subtitleLabel = [(OBHeaderView *)self bottomAnchor];
    [(OBHeaderView *)self bottomPadding];
    leftAnchor = [subtitleLabel constraintEqualToAnchor:bottomAnchor3 constant:?];
    v37 = leftAnchor;
    detailLabel3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    [(OBHeaderView *)self setDetailLabelConstraints:detailLabel3];
  }

  v28 = MEMORY[0x1E696ACD8];
  detailLabelConstraints2 = [(OBHeaderView *)self detailLabelConstraints];
  [v28 activateConstraints:detailLabelConstraints2];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_updateConstraintsForSubtitle
{
  v37[3] = *MEMORY[0x1E69E9840];
  subtitleLabel = [(OBHeaderView *)self subtitleLabel];

  if (!subtitleLabel)
  {
    goto LABEL_11;
  }

  subtitleLabelConstraints = [(OBHeaderView *)self subtitleLabelConstraints];
  [(OBHeaderView *)self removeConstraints:subtitleLabelConstraints];

  [(OBHeaderView *)self headerLabelToDetailAndSubtitleLabelPadding];
  v6 = v5;
  detailLabel = [(OBHeaderView *)self detailLabel];

  v8 = -v6;
  if (detailLabel)
  {
    subtitleLabel2 = [(OBHeaderView *)self subtitleLabel];
    bottomAnchor = [subtitleLabel2 bottomAnchor];
    detailLabel2 = [(OBHeaderView *)self detailLabel];
  }

  else
  {
    accessoryButton = [(OBHeaderView *)self accessoryButton];

    if (!accessoryButton)
    {
      subtitleLabel2 = [(OBHeaderView *)self bottomAnchor];
      bottomAnchor = [(OBHeaderView *)self subtitleLabel];
      v10BottomAnchor = [bottomAnchor bottomAnchor];
      [(OBHeaderView *)self bottomPadding];
      v15 = [subtitleLabel2 constraintEqualToAnchor:v10BottomAnchor constant:?];
      goto LABEL_7;
    }

    subtitleLabel2 = [(OBHeaderView *)self subtitleLabel];
    bottomAnchor = [subtitleLabel2 bottomAnchor];
    detailLabel2 = [(OBHeaderView *)self accessoryButton];
  }

  v10BottomAnchor = detailLabel2;
  topAnchor = [detailLabel2 topAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v8];

LABEL_7:
  leftAnchor = [(OBHeaderView *)self leftAnchor];
  subtitleLabel3 = [(OBHeaderView *)self subtitleLabel];
  leftAnchor2 = [subtitleLabel3 leftAnchor];
  v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v37[0] = v19;
  rightAnchor = [(OBHeaderView *)self rightAnchor];
  subtitleLabel4 = [(OBHeaderView *)self subtitleLabel];
  rightAnchor2 = [subtitleLabel4 rightAnchor];
  v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v37[1] = v23;
  v37[2] = v15;
  v35 = v15;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  [(OBHeaderView *)self setSubtitleLabelConstraints:v24];

  v25 = MEMORY[0x1E696ACD8];
  subtitleLabelConstraints2 = [(OBHeaderView *)self subtitleLabelConstraints];
  [v25 activateConstraints:subtitleLabelConstraints2];

  if ([(OBHeaderView *)self useIntroScreenLayout])
  {
    [(OBHeaderView *)self appNameLabel];
  }

  else
  {
    [(OBHeaderView *)self headerLabel];
  }
  v27 = ;
  bottomAnchor2 = [v27 bottomAnchor];

  v29 = MEMORY[0x1E696ACD8];
  subtitleLabel5 = [(OBHeaderView *)self subtitleLabel];
  topAnchor2 = [subtitleLabel5 topAnchor];
  v32 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:v8];
  v36 = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v29 activateConstraints:v33];

LABEL_11:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)setTemplateType:(unint64_t)type
{
  self->_templateType = type;
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
    templateType = [v4 templateType];

    result = 0.0;
    if ((templateType - 1) <= 9)
    {
      return dbl_1B4FFC2A8[templateType - 1];
    }
  }

  return result;
}

- (double)detailLabelToAccessoryButtonPadding
{
  v2 = +[OBDevice currentDevice];
  templateType = [v2 templateType];

  result = 0.0;
  if ((templateType - 1) <= 9)
  {
    return dbl_1B4FFC2A8[templateType - 1];
  }

  return result;
}

- (double)iconHeight
{
  templateType = [(OBHeaderView *)self templateType];
  if (templateType - 1 >= 3)
  {
    if (!templateType)
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
  templateType = [v2 templateType];

  result = 0.0;
  if ((templateType - 1) <= 9)
  {
    return dbl_1B4FFC2F8[templateType - 1];
  }

  return result;
}

- (id)symbolConfiguration
{
  v2 = +[OBDevice currentDevice];
  templateType = [v2 templateType];

  v4 = 0.0;
  v5 = -1;
  if (templateType > 0xA)
  {
    goto LABEL_7;
  }

  if (((1 << templateType) & 0x35E) != 0)
  {
    v6 = 0x4047000000000000;
LABEL_6:
    v4 = *&v6;
    v5 = 3;
    goto LABEL_7;
  }

  if (((1 << templateType) & 0xA0) != 0)
  {
    v6 = 0x4044000000000000;
    goto LABEL_6;
  }

  if (templateType == 10)
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

- (id)_symbolIconForHeaderStyle:(id)style configuration:(id)configuration
{
  v5 = MEMORY[0x1E69DCAB8];
  configurationCopy = configuration;
  v7 = [v5 _systemImageNamed:style];
  v8 = [v7 imageWithConfiguration:configurationCopy];

  return v8;
}

- (void)_animateDetailLabelAlpha:(double)alpha duration:(double)duration
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__OBHeaderView__animateDetailLabelAlpha_duration___block_invoke;
  v5[3] = &unk_1E7C157C8;
  v5[4] = self;
  *&v5[5] = alpha;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__OBHeaderView__animateDetailLabelAlpha_duration___block_invoke_2;
  v4[3] = &unk_1E7C157F0;
  v4[4] = self;
  *&v4[5] = alpha;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:duration];
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
  imageView = [(OBHeaderView *)self imageView];
  if (imageView)
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
    topAssetContainer = [(OBHeaderView *)self topAssetContainer];

    if (!topAssetContainer)
    {
      v16 = objc_alloc(MEMORY[0x1E69DD250]);
      v17 = [v16 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(OBHeaderView *)self setTopAssetContainer:v17];

      topAssetContainer2 = [(OBHeaderView *)self topAssetContainer];
      [topAssetContainer2 setTranslatesAutoresizingMaskIntoConstraints:0];

      topAssetContainer3 = [(OBHeaderView *)self topAssetContainer];
      [(OBHeaderView *)self addSubview:topAssetContainer3];
    }

    v20 = [OBAnimationView alloc];
    [(OBHeaderView *)self iconHeight];
    v22 = [(OBAnimationView *)v20 initWithFrame:0.0, 0.0, 0.0, v21];
    v23 = self->_animationView;
    self->_animationView = v22;

    [(OBAnimationView *)self->_animationView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAssetContainer4 = [(OBHeaderView *)self topAssetContainer];
    [topAssetContainer4 addSubview:self->_animationView];

    [(OBHeaderView *)self _layoutTopAssetContainer];
    v25 = self->_animationView;
    topAssetContainer5 = [(OBHeaderView *)self topAssetContainer];
    [(UIView *)v25 ob_pinToEdges:topAssetContainer5];

    animationView = self->_animationView;
  }

  v12 = animationView;
LABEL_7:

  return v12;
}

- (UIView)customIconContainerView
{
  imageView = [(OBHeaderView *)self imageView];
  if (imageView)
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
    topAssetContainer = [(OBHeaderView *)self topAssetContainer];

    if (topAssetContainer)
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

      topAssetContainer2 = [(OBHeaderView *)self topAssetContainer];
      [topAssetContainer2 setTranslatesAutoresizingMaskIntoConstraints:0];

      topAssetContainer3 = [(OBHeaderView *)self topAssetContainer];
      [(OBHeaderView *)self addSubview:topAssetContainer3];
    }

    v24 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v16, v17, v18, v19}];
    v25 = self->_customIconContainerView;
    self->_customIconContainerView = v24;

    [(UIView *)self->_customIconContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)self->_customIconContainerView layer];
    [layer setMasksToBounds:1];

    topAssetContainer4 = [(OBHeaderView *)self topAssetContainer];
    [topAssetContainer4 addSubview:self->_customIconContainerView];

    [(OBHeaderView *)self _layoutTopAssetContainer];
    heightAnchor = [(UIView *)self->_customIconContainerView heightAnchor];
    [(OBHeaderView *)self iconHeight];
    v29 = [heightAnchor constraintEqualToConstant:?];
    [v29 setActive:1];

    v30 = self->_customIconContainerView;
    topAssetContainer5 = [(OBHeaderView *)self topAssetContainer];
    [(UIView *)v30 ob_pinToEdges:topAssetContainer5];

    customIconContainerView = self->_customIconContainerView;
  }

  v12 = customIconContainerView;
LABEL_7:

  return v12;
}

- (id)_headerTextStyle
{
  templateType = [(OBHeaderView *)self templateType];
  v4 = MEMORY[0x1E69DDD58];
  if (templateType - 2 < 2)
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

  if (templateType == 1)
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

  if (templateType)
  {
    v10 = 0;
  }

  else
  {
    if (+[OBFeatureFlags isNaturalUIEnabled])
    {
      useIntroScreenLayout = [(OBHeaderView *)self useIntroScreenLayout];
      v6 = MEMORY[0x1E69DDDB8];
      if (!useIntroScreenLayout)
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
    templateType2 = [v11 templateType];

    if (templateType2 == 5)
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