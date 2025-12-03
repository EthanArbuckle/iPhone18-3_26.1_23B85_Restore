@interface DBSmartWidgetRangeBasedView
- (BOOL)_wantsIconLayer;
- (DBSmartWidgetRangeBasedPrediction)prediction;
- (DBSmartWidgetRangeBasedView)initWithFrame:(CGRect)frame;
- (id)linearFocusItems;
- (void)_runWidgetPrimaryButtonAction;
- (void)_runWidgetSecondaryButtonAction;
- (void)_setAlertType:(int64_t)type;
- (void)_traitEnvironmentDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateButtonViewConstraints;
- (void)_updateImageBorder;
- (void)_updateViews;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)predictionDidUpdate:(id)update;
- (void)setSpecial:(id)special;
- (void)widgetViewTapped:(id)tapped;
@end

@implementation DBSmartWidgetRangeBasedView

- (DBSmartWidgetRangeBasedView)initWithFrame:(CGRect)frame
{
  v139[14] = *MEMORY[0x277D85DE8];
  v135.receiver = self;
  v135.super_class = DBSmartWidgetRangeBasedView;
  v3 = [(DBSmartWidgetView *)&v135 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(DBSmartWidgetRangeBasedView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer2 = [v11 layer];
    [layer2 setAllowsGroupBlending:0];

    [(DBSmartWidgetRangeBasedView *)v4 addSubview:v11];
    v13 = objc_alloc_init(_TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton);
    button = v4->_button;
    v4->_button = v13;

    [(DBSmartWidgetEffectCoordinatingButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    layer3 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button layer];
    [layer3 setCornerCurve:*MEMORY[0x277CDA138]];

    layer4 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button layer];
    [layer4 setAllowsGroupBlending:0];

    [v11 addSubview:v4->_button];
    [(DBSmartWidgetEffectCoordinatingButton *)v4->_button addTarget:v4 action:sel__runWidgetPrimaryButtonAction forControlEvents:0x2000];
    [(DBSmartWidgetEffectCoordinatingButton *)v4->_button setAccessibilityIdentifier:@"SmartWidgetImageButton"];
    v17 = objc_alloc_init(_TtC9DashBoard29DBIconLayerViewWithLegibility);
    iconLayerView = v4->_iconLayerView;
    v4->_iconLayerView = v17;

    [(DBIconLayerViewWithLegibility *)v4->_iconLayerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:v4->_iconLayerView];
    v19 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    imageView = v4->_imageView;
    v4->_imageView = v19;

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_imageView setContentMode:4];
    layer5 = [(UIImageView *)v4->_imageView layer];
    [layer5 setAllowsGroupBlending:0];

    [v11 addSubview:v4->_imageView];
    v22 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
    [(UIImageView *)v4->_imageView setSymbolConfiguration:v22];

    v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    alertView = v4->_alertView;
    v4->_alertView = v23;

    [(UIImageView *)v4->_alertView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_alertView setContentMode:4];
    [v11 addSubview:v4->_alertView];
    v132 = *MEMORY[0x277D76938];
    v25 = [MEMORY[0x277D755D0] configurationWithTextStyle:?];
    [(UIImageView *)v4->_alertView setSymbolConfiguration:v25];

    widthAnchor = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button widthAnchor];
    v27 = [widthAnchor constraintEqualToConstant:40.0];
    buttonWidthAnchor = v4->_buttonWidthAnchor;
    v4->_buttonWidthAnchor = v27;

    v97 = MEMORY[0x277CCAAD0];
    centerYAnchor = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button centerYAnchor];
    centerYAnchor2 = [v11 centerYAnchor];
    v123 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v139[0] = v123;
    centerXAnchor = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button centerXAnchor];
    v134 = v11;
    centerXAnchor2 = [v11 centerXAnchor];
    v117 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v139[1] = v117;
    v139[2] = v4->_buttonWidthAnchor;
    heightAnchor = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button heightAnchor];
    widthAnchor2 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button widthAnchor];
    v111 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v139[3] = v111;
    leadingAnchor = [(DBIconLayerViewWithLegibility *)v4->_iconLayerView leadingAnchor];
    leadingAnchor2 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button leadingAnchor];
    v105 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v139[4] = v105;
    topAnchor = [(DBIconLayerViewWithLegibility *)v4->_iconLayerView topAnchor];
    topAnchor2 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button topAnchor];
    v99 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v139[5] = v99;
    trailingAnchor = [(DBIconLayerViewWithLegibility *)v4->_iconLayerView trailingAnchor];
    trailingAnchor2 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button trailingAnchor];
    v91 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v139[6] = v91;
    bottomAnchor = [(DBIconLayerViewWithLegibility *)v4->_iconLayerView bottomAnchor];
    bottomAnchor2 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button bottomAnchor];
    v88 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v139[7] = v88;
    leadingAnchor3 = [(UIImageView *)v4->_imageView leadingAnchor];
    leadingAnchor4 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button leadingAnchor];
    v85 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v139[8] = v85;
    topAnchor3 = [(UIImageView *)v4->_imageView topAnchor];
    topAnchor4 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button topAnchor];
    v82 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v139[9] = v82;
    trailingAnchor3 = [(UIImageView *)v4->_imageView trailingAnchor];
    trailingAnchor4 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button trailingAnchor];
    v79 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v139[10] = v79;
    bottomAnchor3 = [(UIImageView *)v4->_imageView bottomAnchor];
    bottomAnchor4 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button bottomAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v139[11] = v30;
    bottomAnchor5 = [(UIImageView *)v4->_alertView bottomAnchor];
    bottomAnchor6 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button bottomAnchor];
    v33 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-5.0];
    v139[12] = v33;
    trailingAnchor5 = [(UIImageView *)v4->_alertView trailingAnchor];
    trailingAnchor6 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button trailingAnchor];
    v36 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v139[13] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:14];
    [v97 activateConstraints:v37];

    v38 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v38;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:_labelColor];

    v41 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1280];
    [(UILabel *)v4->_titleLabel setFont:v41];

    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:1];
    [(DBSmartWidgetRangeBasedView *)v4 addSubview:v4->_titleLabel];
    v42 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    subTitleLabel = v4->_subTitleLabel;
    v4->_subTitleLabel = v42;

    [(UILabel *)v4->_subTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemPrimaryColor];
    [(UILabel *)v4->_subTitleLabel setTextColor:_carSystemPrimaryColor];

    v45 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v132 variant:256];
    [(UILabel *)v4->_subTitleLabel setFont:v45];

    [(UILabel *)v4->_subTitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_subTitleLabel setNumberOfLines:1];
    [(UILabel *)v4->_subTitleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_subTitleLabel setMinimumScaleFactor:0.85];
    [(DBSmartWidgetRangeBasedView *)v4 addSubview:v4->_subTitleLabel];
    if (_os_feature_enabled_impl())
    {
      v46 = [[_TtC9DashBoard30DBSmartWidgetActionGlassButton alloc] initWithSymbolName:@"phone.fill"];
      actionButton = v4->_actionButton;
      v4->_actionButton = &v46->super.super.super;

      [(UIButton *)v4->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
      titleLabel = [(UIButton *)v4->_actionButton titleLabel];
      v49 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v132 variant:1280];
      [titleLabel setFont:v49];

      titleLabel2 = [(UIButton *)v4->_actionButton titleLabel];
      [titleLabel2 setAdjustsFontForContentSizeCategory:1];

      [(UIButton *)v4->_actionButton _setTouchInsets:-5.0, -5.0, -5.0, -5.0];
      [(DBSmartWidgetRangeBasedView *)v4 addSubview:v4->_actionButton];
      [(UIButton *)v4->_actionButton setHidden:1];
      trailingAnchor7 = [(UILabel *)v4->_titleLabel trailingAnchor];
      leadingAnchor5 = [(UIButton *)v4->_actionButton leadingAnchor];
      v53 = -8.0;
    }

    else
    {
      trailingAnchor7 = [(UILabel *)v4->_titleLabel trailingAnchor];
      leadingAnchor5 = [(DBSmartWidgetRangeBasedView *)v4 trailingAnchor];
      v53 = -13.0;
    }

    v54 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor5 constant:v53];

    v106 = MEMORY[0x277CCAAD0];
    heightAnchor2 = [v134 heightAnchor];
    v127 = [heightAnchor2 constraintEqualToConstant:40.0];
    v138[0] = v127;
    centerYAnchor3 = [v134 centerYAnchor];
    centerYAnchor4 = [(DBSmartWidgetRangeBasedView *)v4 centerYAnchor];
    v120 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v138[1] = v120;
    leadingAnchor6 = [v134 leadingAnchor];
    leadingAnchor7 = [(DBSmartWidgetRangeBasedView *)v4 leadingAnchor];
    v114 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:12.0];
    v138[2] = v114;
    widthAnchor3 = [v134 widthAnchor];
    heightAnchor3 = [v134 heightAnchor];
    v108 = [widthAnchor3 constraintEqualToAnchor:heightAnchor3];
    v138[3] = v108;
    firstBaselineAnchor = [(UILabel *)v4->_titleLabel firstBaselineAnchor];
    topAnchor5 = [v134 topAnchor];
    v100 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor5 constant:17.0];
    v138[4] = v100;
    leadingAnchor8 = [(UILabel *)v4->_titleLabel leadingAnchor];
    trailingAnchor8 = [v134 trailingAnchor];
    v94 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor8 constant:8.0];
    v138[5] = v94;
    v138[6] = v54;
    v133 = v54;
    firstBaselineAnchor2 = [(UILabel *)v4->_subTitleLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    v56 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:17.0];
    v138[7] = v56;
    leadingAnchor9 = [(UILabel *)v4->_subTitleLabel leadingAnchor];
    leadingAnchor10 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v59 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v138[8] = v59;
    trailingAnchor9 = [(UILabel *)v4->_subTitleLabel trailingAnchor];
    trailingAnchor10 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v62 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v138[9] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:10];
    [v106 activateConstraints:v63];

    if (_os_feature_enabled_impl())
    {
      widthAnchor4 = [(UIButton *)v4->_actionButton widthAnchor];
      v65 = [widthAnchor4 constraintEqualToConstant:36.0];
      actionButtonWidthAnchor = v4->_actionButtonWidthAnchor;
      v4->_actionButtonWidthAnchor = v65;

      v125 = MEMORY[0x277CCAAD0];
      v137[0] = v4->_actionButtonWidthAnchor;
      heightAnchor4 = [(UIButton *)v4->_actionButton heightAnchor];
      widthAnchor5 = [(UIButton *)v4->_actionButton widthAnchor];
      v67 = [heightAnchor4 constraintEqualToAnchor:widthAnchor5];
      v137[1] = v67;
      trailingAnchor11 = [(UIButton *)v4->_actionButton trailingAnchor];
      trailingAnchor12 = [(DBSmartWidgetRangeBasedView *)v4 trailingAnchor];
      v70 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-13.0];
      v137[2] = v70;
      centerYAnchor5 = [(UIButton *)v4->_actionButton centerYAnchor];
      centerYAnchor6 = [(DBSmartWidgetRangeBasedView *)v4 centerYAnchor];
      v73 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      v137[3] = v73;
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:4];
      [v125 activateConstraints:v74];

      [(UIButton *)v4->_actionButton setCornerRadius:18.0];
    }

    v136 = objc_opt_class();
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
    v76 = [(DBSmartWidgetRangeBasedView *)v4 registerForTraitChanges:v75 withAction:sel__traitEnvironmentDidChange_previousTraitCollection_];
  }

  return v4;
}

- (void)_traitEnvironmentDidChange:(id)change previousTraitCollection:(id)collection
{
  [(DBSmartWidgetRangeBasedView *)self _updateImageBorder:change];
  [(DBSmartWidgetRangeBasedView *)self _updateViews];
  prediction = [(DBSmartWidgetRangeBasedView *)self prediction];
  traitCollection = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v6 = [prediction buttonCompositingFilterWithTraitCollection:traitCollection];
  button = [(DBSmartWidgetRangeBasedView *)self button];
  layer = [button layer];
  [layer setCompositingFilter:v6];
}

- (void)_updateViews
{
  v54.receiver = self;
  v54.super_class = DBSmartWidgetRangeBasedView;
  [(DBSmartWidgetView *)&v54 _updateViews];
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetRangeBasedView *)v3 _updateViews];
  }

  prediction = [(DBSmartWidgetRangeBasedView *)self prediction];
  _wantsIconLayer = [(DBSmartWidgetRangeBasedView *)self _wantsIconLayer];
  iconLayerView = [(DBSmartWidgetRangeBasedView *)self iconLayerView];
  v7 = iconLayerView;
  if (_wantsIconLayer)
  {
    [iconLayerView setHidden:0];

    traitCollection = [(DBSmartWidgetRangeBasedView *)self traitCollection];
    v9 = [prediction layerWithTraitCollection:traitCollection];

    [(DBSmartWidgetRangeBasedView *)self updateTraitsIfNeeded];
    iconLayerView2 = [(DBSmartWidgetRangeBasedView *)self iconLayerView];
    [iconLayerView2 setIconLayer:v9 animated:1];
    goto LABEL_11;
  }

  [iconLayerView setHidden:1];

  button = [(DBSmartWidgetRangeBasedView *)self button];
  traitCollection2 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v13 = [prediction backgroundColorWithTraitCollection:traitCollection2];
  [button configureWithBackgroundColor:v13];

  v14 = MEMORY[0x277D755B8];
  symbol = [prediction symbol];
  v16 = [v14 systemImageNamed:symbol];
  imageView = [(DBSmartWidgetRangeBasedView *)self imageView];
  [imageView setImage:v16];

  traitCollection3 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v19 = [prediction tintColorWithTraitCollection:traitCollection3];
  imageView2 = [(DBSmartWidgetRangeBasedView *)self imageView];
  [imageView2 setTintColor:v19];

  traitCollection4 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v22 = [prediction buttonCompositingFilterWithTraitCollection:traitCollection4];
  button2 = [(DBSmartWidgetRangeBasedView *)self button];
  layer = [button2 layer];
  [layer setCompositingFilter:v22];

  traitCollection5 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v26 = [prediction imageCompositingFilterWithTraitCollection:traitCollection5];
  imageView3 = [(DBSmartWidgetRangeBasedView *)self imageView];
  layer2 = [imageView3 layer];
  [layer2 setCompositingFilter:v26];

  v9 = objc_opt_new();
  titleLabel = [(DBSmartWidgetRangeBasedView *)self titleLabel];
  text = [titleLabel text];
  v31 = [text length];

  if (v31)
  {
    titleLabel2 = [(DBSmartWidgetRangeBasedView *)self titleLabel];
LABEL_9:
    v36 = titleLabel2;
    text2 = [titleLabel2 text];
    [v9 addObject:text2];

    goto LABEL_10;
  }

  subTitleLabel = [(DBSmartWidgetRangeBasedView *)self subTitleLabel];
  text3 = [subTitleLabel text];
  v35 = [text3 length];

  if (v35)
  {
    titleLabel2 = [(DBSmartWidgetRangeBasedView *)self subTitleLabel];
    goto LABEL_9;
  }

LABEL_10:
  iconLayerView2 = [v9 copy];
  [(DBSmartWidgetEffectCoordinatingButton *)self->_button setAccessibilityUserInputLabels:iconLayerView2];
LABEL_11:

  [prediction width];
  v39 = v38;
  buttonWidthAnchor = [(DBSmartWidgetRangeBasedView *)self buttonWidthAnchor];
  [buttonWidthAnchor setConstant:v39];

  [prediction cornerRadius];
  v42 = v41;
  button3 = [(DBSmartWidgetRangeBasedView *)self button];
  [button3 setCornerRadius:v42];

  -[DBSmartWidgetRangeBasedView _setAlertType:](self, "_setAlertType:", [prediction alert]);
  title = [prediction title];
  titleLabel3 = [(DBSmartWidgetRangeBasedView *)self titleLabel];
  [titleLabel3 setText:title];

  titleLabel4 = [(DBSmartWidgetRangeBasedView *)self titleLabel];
  [titleLabel4 setAccessibilityIdentifier:@"SmartWidgetTitle"];

  subtitle = [prediction subtitle];
  subTitleLabel2 = [(DBSmartWidgetRangeBasedView *)self subTitleLabel];
  [subTitleLabel2 setText:subtitle];

  subTitleLabel3 = [(DBSmartWidgetRangeBasedView *)self subTitleLabel];
  [subTitleLabel3 setAccessibilityIdentifier:@"SmartWidgetSubtitle"];

  actionButton = [(DBSmartWidgetRangeBasedView *)self actionButton];

  if (actionButton)
  {
    actionButton2 = [(DBSmartWidgetRangeBasedView *)self actionButton];
    [actionButton2 addTarget:self action:sel__runWidgetSecondaryButtonAction forControlEvents:0x2000];

    if ([(DBSmartWidgetRangeBasedView *)self isFocused])
    {
      [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    }

    else
    {
      [MEMORY[0x277D75348] _labelColor];
    }
    v52 = ;
    [(DBSmartWidgetRangeBasedView *)self setTintColor:v52];

    actionButton3 = [(DBSmartWidgetRangeBasedView *)self actionButton];
    [actionButton3 setAccessibilityIdentifier:@"SmartWidgetButton"];
  }

  [(DBSmartWidgetRangeBasedView *)self _updateButtonViewConstraints];
  [(DBSmartWidgetRangeBasedView *)self _updateImageBorder];
}

- (void)_setAlertType:(int64_t)type
{
  if (type == 1)
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    alertView = [(DBSmartWidgetRangeBasedView *)self alertView];
    [alertView setImage:v4];

    v6 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_31];
    alertView2 = [(DBSmartWidgetRangeBasedView *)self alertView];
    [alertView2 setTintColor:v6];

    blackColor = [MEMORY[0x277D75348] blackColor];
    cgColor = [blackColor cgColor];
    alertView3 = [(DBSmartWidgetRangeBasedView *)self alertView];
    layer = [alertView3 layer];
    [layer setShadowColor:cgColor];

    alertView4 = [(DBSmartWidgetRangeBasedView *)self alertView];
    layer2 = [alertView4 layer];
    LODWORD(v14) = 1050253722;
    [layer2 setShadowOpacity:v14];

    alertView5 = [(DBSmartWidgetRangeBasedView *)self alertView];
    layer3 = [alertView5 layer];
    [layer3 setShadowOffset:{0.0, 2.0}];

    alertView6 = [(DBSmartWidgetRangeBasedView *)self alertView];
    layer4 = [alertView6 layer];
    [layer4 setShadowRadius:10.0];
  }

  else
  {
    if (type)
    {
      return;
    }

    alertView6 = [(DBSmartWidgetRangeBasedView *)self alertView];
    [alertView6 setImage:0];
  }
}

id __45__DBSmartWidgetRangeBasedView__setAlertType___block_invoke()
{
  v0 = [MEMORY[0x277D75348] systemYellowColor];
  v1 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  return v2;
}

- (void)_updateButtonViewConstraints
{
  prediction = [(DBSmartWidgetRangeBasedView *)self prediction];

  if (prediction)
  {
    prediction2 = [(DBSmartWidgetRangeBasedView *)self prediction];
    hasSecondaryAction = [prediction2 hasSecondaryAction];

    if (hasSecondaryAction)
    {
      actionButton = [(DBSmartWidgetRangeBasedView *)self actionButton];

      if (!actionButton)
      {
LABEL_9:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __59__DBSmartWidgetRangeBasedView__updateButtonViewConstraints__block_invoke;
        block[3] = &unk_278F01580;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
        return;
      }

      superview = [(DBSmartWidgetRangeBasedView *)self superview];
      [superview bounds];
      v9 = v8;

      actionButtonWidthAnchor = [(DBSmartWidgetRangeBasedView *)self actionButtonWidthAnchor];
      v11 = actionButtonWidthAnchor;
      if (v9 >= 200.0)
      {
        v12 = 36.0;
      }

      else
      {
        v12 = 0.0;
      }
    }

    else
    {
      actionButtonWidthAnchor = [(DBSmartWidgetRangeBasedView *)self actionButtonWidthAnchor];
      v11 = actionButtonWidthAnchor;
      v12 = 0.0;
    }

    [actionButtonWidthAnchor setConstant:v12];

    goto LABEL_9;
  }
}

uint64_t __59__DBSmartWidgetRangeBasedView__updateButtonViewConstraints__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__DBSmartWidgetRangeBasedView__updateButtonViewConstraints__block_invoke_2;
  v2[3] = &unk_278F01580;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.3];
}

void __59__DBSmartWidgetRangeBasedView__updateButtonViewConstraints__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) button];
  [v2 layoutIfNeeded];

  v3 = [*(a1 + 32) actionButton];

  if (v3)
  {
    v4 = [*(a1 + 32) actionButton];
    [v4 layoutIfNeeded];

    v5 = [*(a1 + 32) actionButton];
    [v5 setNeedsDisplay];
  }
}

- (void)_updateImageBorder
{
  if ([(DBSmartWidgetRangeBasedView *)self _wantsIconLayer])
  {
    [(DBSmartWidgetRangeBasedView *)self iconLayerView];
  }

  else
  {
    [(DBSmartWidgetRangeBasedView *)self button];
  }
  v13 = ;
  traitCollection = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    prediction = [(DBSmartWidgetRangeBasedView *)self prediction];
    showImageBorder = [prediction showImageBorder];

    if (showImageBorder)
    {
      layer = [v13 layer];
      [layer setBorderWidth:0.5];

      blackColor = [MEMORY[0x277D75348] blackColor];
      layer4 = [blackColor colorWithAlphaComponent:0.0700000003];
      cGColor = [layer4 CGColor];
      layer2 = [v13 layer];
      [layer2 setBorderColor:cGColor];

      goto LABEL_9;
    }
  }

  else
  {
  }

  layer3 = [v13 layer];
  [layer3 setBorderWidth:0.0];

  blackColor = [MEMORY[0x277D75348] clearColor];
  cGColor2 = [blackColor CGColor];
  layer4 = [v13 layer];
  [layer4 setBorderColor:cGColor2];
LABEL_9:
}

- (void)_runWidgetPrimaryButtonAction
{
  v6 = *MEMORY[0x277D85DE8];
  prediction = [self prediction];
  v4 = 138543362;
  v5 = prediction;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "(RangeBasedView) Performing action: Primary %{public}@", &v4, 0xCu);
}

- (void)_runWidgetSecondaryButtonAction
{
  v11 = *MEMORY[0x277D85DE8];
  prediction = [self prediction];
  if ([prediction hasSecondaryAction])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  prediction2 = [self prediction];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = prediction2;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "(RangeBasedView) Performing action: Secondary %{public}@ %{public}@", &v7, 0x16u);
}

- (BOOL)_wantsIconLayer
{
  prediction = [(DBSmartWidgetRangeBasedView *)self prediction];
  wantsIconLayer = [prediction wantsIconLayer];

  return wantsIconLayer;
}

- (DBSmartWidgetRangeBasedPrediction)prediction
{
  v4.receiver = self;
  v4.super_class = DBSmartWidgetRangeBasedView;
  prediction = [(DBSmartWidgetView *)&v4 prediction];

  return prediction;
}

- (void)setSpecial:(id)special
{
  v3.receiver = self;
  v3.super_class = DBSmartWidgetRangeBasedView;
  [(DBSmartWidgetView *)&v3 setPrediction:special];
}

- (void)predictionDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = DBSmartWidgetRangeBasedView;
  [(DBSmartWidgetView *)&v4 predictionDidUpdate:update];
  [(DBSmartWidgetRangeBasedView *)self _updateViews];
}

- (void)didMoveToWindow
{
  [(DBSmartWidgetRangeBasedView *)self _updateButtonViewConstraints];

  [(DBSmartWidgetRangeBasedView *)self _updateImageBorder];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = DBSmartWidgetRangeBasedView;
  [(DBSmartWidgetRangeBasedView *)&v13 layoutSubviews];
  [(DBSmartWidgetRangeBasedView *)self bounds];
  if (v3 != *MEMORY[0x277CBF3A8] || v4 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = v3;
    actionButton = [(DBSmartWidgetRangeBasedView *)self actionButton];

    if (actionButton)
    {
      prediction = [(DBSmartWidgetRangeBasedView *)self prediction];
      hasSecondaryAction = [prediction hasSecondaryAction];

      if (hasSecondaryAction)
      {
        actionButton2 = [(DBSmartWidgetRangeBasedView *)self actionButton];
        v11 = actionButton2;
        if (v6 >= 200.0)
        {
          v12 = 0;
LABEL_11:
          [actionButton2 setHidden:v12];

          return;
        }
      }

      else
      {
        actionButton2 = [(DBSmartWidgetRangeBasedView *)self actionButton];
        v11 = actionButton2;
      }

      v12 = 1;
      goto LABEL_11;
    }
  }
}

- (void)widgetViewTapped:(id)tapped
{
  tappedCopy = tapped;
  if ((!_os_feature_enabled_impl() || ([(UIButton *)self->_actionButton isFocused]& 1) == 0) && ([(DBSmartWidgetEffectCoordinatingButton *)self->_button isFocused]& 1) == 0)
  {
    tappedCopy[2]();
  }
}

- (id)linearFocusItems
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    prediction = [(DBSmartWidgetRangeBasedView *)self prediction];
    if ([prediction hasSecondaryAction] && (-[DBSmartWidgetRangeBasedView actionButton](self, "actionButton"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      actionButton = [(DBSmartWidgetRangeBasedView *)self actionButton];
      isHidden = [actionButton isHidden];

      if ((isHidden & 1) == 0)
      {
        button = [(DBSmartWidgetRangeBasedView *)self button];
        v13[0] = button;
        actionButton2 = [(DBSmartWidgetRangeBasedView *)self actionButton];
        v13[1] = actionButton2;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  button = [(DBSmartWidgetRangeBasedView *)self button];
  v12 = button;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
LABEL_8:

  return v10;
}

@end