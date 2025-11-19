@interface DBSmartWidgetRangeBasedView
- (BOOL)_wantsIconLayer;
- (DBSmartWidgetRangeBasedPrediction)prediction;
- (DBSmartWidgetRangeBasedView)initWithFrame:(CGRect)a3;
- (id)linearFocusItems;
- (void)_runWidgetPrimaryButtonAction;
- (void)_runWidgetSecondaryButtonAction;
- (void)_setAlertType:(int64_t)a3;
- (void)_traitEnvironmentDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateButtonViewConstraints;
- (void)_updateImageBorder;
- (void)_updateViews;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)predictionDidUpdate:(id)a3;
- (void)setSpecial:(id)a3;
- (void)widgetViewTapped:(id)a3;
@end

@implementation DBSmartWidgetRangeBasedView

- (DBSmartWidgetRangeBasedView)initWithFrame:(CGRect)a3
{
  v139[14] = *MEMORY[0x277D85DE8];
  v135.receiver = self;
  v135.super_class = DBSmartWidgetRangeBasedView;
  v3 = [(DBSmartWidgetView *)&v135 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(DBSmartWidgetRangeBasedView *)v3 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v11 layer];
    [v12 setAllowsGroupBlending:0];

    [(DBSmartWidgetRangeBasedView *)v4 addSubview:v11];
    v13 = objc_alloc_init(_TtC9DashBoard37DBSmartWidgetEffectCoordinatingButton);
    button = v4->_button;
    v4->_button = v13;

    [(DBSmartWidgetEffectCoordinatingButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button layer];
    [v15 setCornerCurve:*MEMORY[0x277CDA138]];

    v16 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button layer];
    [v16 setAllowsGroupBlending:0];

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
    v21 = [(UIImageView *)v4->_imageView layer];
    [v21 setAllowsGroupBlending:0];

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

    v26 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button widthAnchor];
    v27 = [v26 constraintEqualToConstant:40.0];
    buttonWidthAnchor = v4->_buttonWidthAnchor;
    v4->_buttonWidthAnchor = v27;

    v97 = MEMORY[0x277CCAAD0];
    v129 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button centerYAnchor];
    v126 = [v11 centerYAnchor];
    v123 = [v129 constraintEqualToAnchor:v126];
    v139[0] = v123;
    v121 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button centerXAnchor];
    v134 = v11;
    v119 = [v11 centerXAnchor];
    v117 = [v121 constraintEqualToAnchor:v119];
    v139[1] = v117;
    v139[2] = v4->_buttonWidthAnchor;
    v115 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button heightAnchor];
    v113 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button widthAnchor];
    v111 = [v115 constraintEqualToAnchor:v113];
    v139[3] = v111;
    v109 = [(DBIconLayerViewWithLegibility *)v4->_iconLayerView leadingAnchor];
    v107 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button leadingAnchor];
    v105 = [v109 constraintEqualToAnchor:v107];
    v139[4] = v105;
    v103 = [(DBIconLayerViewWithLegibility *)v4->_iconLayerView topAnchor];
    v101 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button topAnchor];
    v99 = [v103 constraintEqualToAnchor:v101];
    v139[5] = v99;
    v95 = [(DBIconLayerViewWithLegibility *)v4->_iconLayerView trailingAnchor];
    v93 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button trailingAnchor];
    v91 = [v95 constraintEqualToAnchor:v93];
    v139[6] = v91;
    v90 = [(DBIconLayerViewWithLegibility *)v4->_iconLayerView bottomAnchor];
    v89 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button bottomAnchor];
    v88 = [v90 constraintEqualToAnchor:v89];
    v139[7] = v88;
    v87 = [(UIImageView *)v4->_imageView leadingAnchor];
    v86 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button leadingAnchor];
    v85 = [v87 constraintEqualToAnchor:v86];
    v139[8] = v85;
    v84 = [(UIImageView *)v4->_imageView topAnchor];
    v83 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button topAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v139[9] = v82;
    v81 = [(UIImageView *)v4->_imageView trailingAnchor];
    v80 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button trailingAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v139[10] = v79;
    v78 = [(UIImageView *)v4->_imageView bottomAnchor];
    v29 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button bottomAnchor];
    v30 = [v78 constraintEqualToAnchor:v29];
    v139[11] = v30;
    v31 = [(UIImageView *)v4->_alertView bottomAnchor];
    v32 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:-5.0];
    v139[12] = v33;
    v34 = [(UIImageView *)v4->_alertView trailingAnchor];
    v35 = [(DBSmartWidgetEffectCoordinatingButton *)v4->_button trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v139[13] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:14];
    [v97 activateConstraints:v37];

    v38 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v38;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [MEMORY[0x277D75348] _labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v40];

    v41 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1280];
    [(UILabel *)v4->_titleLabel setFont:v41];

    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:1];
    [(DBSmartWidgetRangeBasedView *)v4 addSubview:v4->_titleLabel];
    v42 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    subTitleLabel = v4->_subTitleLabel;
    v4->_subTitleLabel = v42;

    [(UILabel *)v4->_subTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [MEMORY[0x277D75348] _carSystemPrimaryColor];
    [(UILabel *)v4->_subTitleLabel setTextColor:v44];

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
      v48 = [(UIButton *)v4->_actionButton titleLabel];
      v49 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v132 variant:1280];
      [v48 setFont:v49];

      v50 = [(UIButton *)v4->_actionButton titleLabel];
      [v50 setAdjustsFontForContentSizeCategory:1];

      [(UIButton *)v4->_actionButton _setTouchInsets:-5.0, -5.0, -5.0, -5.0];
      [(DBSmartWidgetRangeBasedView *)v4 addSubview:v4->_actionButton];
      [(UIButton *)v4->_actionButton setHidden:1];
      v51 = [(UILabel *)v4->_titleLabel trailingAnchor];
      v52 = [(UIButton *)v4->_actionButton leadingAnchor];
      v53 = -8.0;
    }

    else
    {
      v51 = [(UILabel *)v4->_titleLabel trailingAnchor];
      v52 = [(DBSmartWidgetRangeBasedView *)v4 trailingAnchor];
      v53 = -13.0;
    }

    v54 = [v51 constraintEqualToAnchor:v52 constant:v53];

    v106 = MEMORY[0x277CCAAD0];
    v130 = [v134 heightAnchor];
    v127 = [v130 constraintEqualToConstant:40.0];
    v138[0] = v127;
    v124 = [v134 centerYAnchor];
    v122 = [(DBSmartWidgetRangeBasedView *)v4 centerYAnchor];
    v120 = [v124 constraintEqualToAnchor:v122];
    v138[1] = v120;
    v118 = [v134 leadingAnchor];
    v116 = [(DBSmartWidgetRangeBasedView *)v4 leadingAnchor];
    v114 = [v118 constraintEqualToAnchor:v116 constant:12.0];
    v138[2] = v114;
    v112 = [v134 widthAnchor];
    v110 = [v134 heightAnchor];
    v108 = [v112 constraintEqualToAnchor:v110];
    v138[3] = v108;
    v104 = [(UILabel *)v4->_titleLabel firstBaselineAnchor];
    v102 = [v134 topAnchor];
    v100 = [v104 constraintEqualToAnchor:v102 constant:17.0];
    v138[4] = v100;
    v98 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v96 = [v134 trailingAnchor];
    v94 = [v98 constraintEqualToAnchor:v96 constant:8.0];
    v138[5] = v94;
    v138[6] = v54;
    v133 = v54;
    v92 = [(UILabel *)v4->_subTitleLabel firstBaselineAnchor];
    v55 = [(UILabel *)v4->_titleLabel lastBaselineAnchor];
    v56 = [v92 constraintEqualToAnchor:v55 constant:17.0];
    v138[7] = v56;
    v57 = [(UILabel *)v4->_subTitleLabel leadingAnchor];
    v58 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v138[8] = v59;
    v60 = [(UILabel *)v4->_subTitleLabel trailingAnchor];
    v61 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    v138[9] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:10];
    [v106 activateConstraints:v63];

    if (_os_feature_enabled_impl())
    {
      v64 = [(UIButton *)v4->_actionButton widthAnchor];
      v65 = [v64 constraintEqualToConstant:36.0];
      actionButtonWidthAnchor = v4->_actionButtonWidthAnchor;
      v4->_actionButtonWidthAnchor = v65;

      v125 = MEMORY[0x277CCAAD0];
      v137[0] = v4->_actionButtonWidthAnchor;
      v131 = [(UIButton *)v4->_actionButton heightAnchor];
      v128 = [(UIButton *)v4->_actionButton widthAnchor];
      v67 = [v131 constraintEqualToAnchor:v128];
      v137[1] = v67;
      v68 = [(UIButton *)v4->_actionButton trailingAnchor];
      v69 = [(DBSmartWidgetRangeBasedView *)v4 trailingAnchor];
      v70 = [v68 constraintEqualToAnchor:v69 constant:-13.0];
      v137[2] = v70;
      v71 = [(UIButton *)v4->_actionButton centerYAnchor];
      v72 = [(DBSmartWidgetRangeBasedView *)v4 centerYAnchor];
      v73 = [v71 constraintEqualToAnchor:v72];
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

- (void)_traitEnvironmentDidChange:(id)a3 previousTraitCollection:(id)a4
{
  [(DBSmartWidgetRangeBasedView *)self _updateImageBorder:a3];
  [(DBSmartWidgetRangeBasedView *)self _updateViews];
  v9 = [(DBSmartWidgetRangeBasedView *)self prediction];
  v5 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v6 = [v9 buttonCompositingFilterWithTraitCollection:v5];
  v7 = [(DBSmartWidgetRangeBasedView *)self button];
  v8 = [v7 layer];
  [v8 setCompositingFilter:v6];
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

  v4 = [(DBSmartWidgetRangeBasedView *)self prediction];
  v5 = [(DBSmartWidgetRangeBasedView *)self _wantsIconLayer];
  v6 = [(DBSmartWidgetRangeBasedView *)self iconLayerView];
  v7 = v6;
  if (v5)
  {
    [v6 setHidden:0];

    v8 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
    v9 = [v4 layerWithTraitCollection:v8];

    [(DBSmartWidgetRangeBasedView *)self updateTraitsIfNeeded];
    v10 = [(DBSmartWidgetRangeBasedView *)self iconLayerView];
    [v10 setIconLayer:v9 animated:1];
    goto LABEL_11;
  }

  [v6 setHidden:1];

  v11 = [(DBSmartWidgetRangeBasedView *)self button];
  v12 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v13 = [v4 backgroundColorWithTraitCollection:v12];
  [v11 configureWithBackgroundColor:v13];

  v14 = MEMORY[0x277D755B8];
  v15 = [v4 symbol];
  v16 = [v14 systemImageNamed:v15];
  v17 = [(DBSmartWidgetRangeBasedView *)self imageView];
  [v17 setImage:v16];

  v18 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v19 = [v4 tintColorWithTraitCollection:v18];
  v20 = [(DBSmartWidgetRangeBasedView *)self imageView];
  [v20 setTintColor:v19];

  v21 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v22 = [v4 buttonCompositingFilterWithTraitCollection:v21];
  v23 = [(DBSmartWidgetRangeBasedView *)self button];
  v24 = [v23 layer];
  [v24 setCompositingFilter:v22];

  v25 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  v26 = [v4 imageCompositingFilterWithTraitCollection:v25];
  v27 = [(DBSmartWidgetRangeBasedView *)self imageView];
  v28 = [v27 layer];
  [v28 setCompositingFilter:v26];

  v9 = objc_opt_new();
  v29 = [(DBSmartWidgetRangeBasedView *)self titleLabel];
  v30 = [v29 text];
  v31 = [v30 length];

  if (v31)
  {
    v32 = [(DBSmartWidgetRangeBasedView *)self titleLabel];
LABEL_9:
    v36 = v32;
    v37 = [v32 text];
    [v9 addObject:v37];

    goto LABEL_10;
  }

  v33 = [(DBSmartWidgetRangeBasedView *)self subTitleLabel];
  v34 = [v33 text];
  v35 = [v34 length];

  if (v35)
  {
    v32 = [(DBSmartWidgetRangeBasedView *)self subTitleLabel];
    goto LABEL_9;
  }

LABEL_10:
  v10 = [v9 copy];
  [(DBSmartWidgetEffectCoordinatingButton *)self->_button setAccessibilityUserInputLabels:v10];
LABEL_11:

  [v4 width];
  v39 = v38;
  v40 = [(DBSmartWidgetRangeBasedView *)self buttonWidthAnchor];
  [v40 setConstant:v39];

  [v4 cornerRadius];
  v42 = v41;
  v43 = [(DBSmartWidgetRangeBasedView *)self button];
  [v43 setCornerRadius:v42];

  -[DBSmartWidgetRangeBasedView _setAlertType:](self, "_setAlertType:", [v4 alert]);
  v44 = [v4 title];
  v45 = [(DBSmartWidgetRangeBasedView *)self titleLabel];
  [v45 setText:v44];

  v46 = [(DBSmartWidgetRangeBasedView *)self titleLabel];
  [v46 setAccessibilityIdentifier:@"SmartWidgetTitle"];

  v47 = [v4 subtitle];
  v48 = [(DBSmartWidgetRangeBasedView *)self subTitleLabel];
  [v48 setText:v47];

  v49 = [(DBSmartWidgetRangeBasedView *)self subTitleLabel];
  [v49 setAccessibilityIdentifier:@"SmartWidgetSubtitle"];

  v50 = [(DBSmartWidgetRangeBasedView *)self actionButton];

  if (v50)
  {
    v51 = [(DBSmartWidgetRangeBasedView *)self actionButton];
    [v51 addTarget:self action:sel__runWidgetSecondaryButtonAction forControlEvents:0x2000];

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

    v53 = [(DBSmartWidgetRangeBasedView *)self actionButton];
    [v53 setAccessibilityIdentifier:@"SmartWidgetButton"];
  }

  [(DBSmartWidgetRangeBasedView *)self _updateButtonViewConstraints];
  [(DBSmartWidgetRangeBasedView *)self _updateImageBorder];
}

- (void)_setAlertType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v5 = [(DBSmartWidgetRangeBasedView *)self alertView];
    [v5 setImage:v4];

    v6 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_31];
    v7 = [(DBSmartWidgetRangeBasedView *)self alertView];
    [v7 setTintColor:v6];

    v8 = [MEMORY[0x277D75348] blackColor];
    v9 = [v8 cgColor];
    v10 = [(DBSmartWidgetRangeBasedView *)self alertView];
    v11 = [v10 layer];
    [v11 setShadowColor:v9];

    v12 = [(DBSmartWidgetRangeBasedView *)self alertView];
    v13 = [v12 layer];
    LODWORD(v14) = 1050253722;
    [v13 setShadowOpacity:v14];

    v15 = [(DBSmartWidgetRangeBasedView *)self alertView];
    v16 = [v15 layer];
    [v16 setShadowOffset:{0.0, 2.0}];

    v18 = [(DBSmartWidgetRangeBasedView *)self alertView];
    v17 = [v18 layer];
    [v17 setShadowRadius:10.0];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v18 = [(DBSmartWidgetRangeBasedView *)self alertView];
    [v18 setImage:0];
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
  v3 = [(DBSmartWidgetRangeBasedView *)self prediction];

  if (v3)
  {
    v4 = [(DBSmartWidgetRangeBasedView *)self prediction];
    v5 = [v4 hasSecondaryAction];

    if (v5)
    {
      v6 = [(DBSmartWidgetRangeBasedView *)self actionButton];

      if (!v6)
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

      v7 = [(DBSmartWidgetRangeBasedView *)self superview];
      [v7 bounds];
      v9 = v8;

      v10 = [(DBSmartWidgetRangeBasedView *)self actionButtonWidthAnchor];
      v11 = v10;
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
      v10 = [(DBSmartWidgetRangeBasedView *)self actionButtonWidthAnchor];
      v11 = v10;
      v12 = 0.0;
    }

    [v10 setConstant:v12];

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
  v3 = [(DBSmartWidgetRangeBasedView *)self traitCollection];
  if ([v3 userInterfaceStyle] == 1)
  {
    v4 = [(DBSmartWidgetRangeBasedView *)self prediction];
    v5 = [v4 showImageBorder];

    if (v5)
    {
      v6 = [v13 layer];
      [v6 setBorderWidth:0.5];

      v7 = [MEMORY[0x277D75348] blackColor];
      v8 = [v7 colorWithAlphaComponent:0.0700000003];
      v9 = [v8 CGColor];
      v10 = [v13 layer];
      [v10 setBorderColor:v9];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = [v13 layer];
  [v11 setBorderWidth:0.0];

  v7 = [MEMORY[0x277D75348] clearColor];
  v12 = [v7 CGColor];
  v8 = [v13 layer];
  [v8 setBorderColor:v12];
LABEL_9:
}

- (void)_runWidgetPrimaryButtonAction
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 prediction];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "(RangeBasedView) Performing action: Primary %{public}@", &v4, 0xCu);
}

- (void)_runWidgetSecondaryButtonAction
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 prediction];
  if ([v4 hasSecondaryAction])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [a1 prediction];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "(RangeBasedView) Performing action: Secondary %{public}@ %{public}@", &v7, 0x16u);
}

- (BOOL)_wantsIconLayer
{
  v2 = [(DBSmartWidgetRangeBasedView *)self prediction];
  v3 = [v2 wantsIconLayer];

  return v3;
}

- (DBSmartWidgetRangeBasedPrediction)prediction
{
  v4.receiver = self;
  v4.super_class = DBSmartWidgetRangeBasedView;
  v2 = [(DBSmartWidgetView *)&v4 prediction];

  return v2;
}

- (void)setSpecial:(id)a3
{
  v3.receiver = self;
  v3.super_class = DBSmartWidgetRangeBasedView;
  [(DBSmartWidgetView *)&v3 setPrediction:a3];
}

- (void)predictionDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = DBSmartWidgetRangeBasedView;
  [(DBSmartWidgetView *)&v4 predictionDidUpdate:a3];
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
    v7 = [(DBSmartWidgetRangeBasedView *)self actionButton];

    if (v7)
    {
      v8 = [(DBSmartWidgetRangeBasedView *)self prediction];
      v9 = [v8 hasSecondaryAction];

      if (v9)
      {
        v10 = [(DBSmartWidgetRangeBasedView *)self actionButton];
        v11 = v10;
        if (v6 >= 200.0)
        {
          v12 = 0;
LABEL_11:
          [v10 setHidden:v12];

          return;
        }
      }

      else
      {
        v10 = [(DBSmartWidgetRangeBasedView *)self actionButton];
        v11 = v10;
      }

      v12 = 1;
      goto LABEL_11;
    }
  }
}

- (void)widgetViewTapped:(id)a3
{
  v4 = a3;
  if ((!_os_feature_enabled_impl() || ([(UIButton *)self->_actionButton isFocused]& 1) == 0) && ([(DBSmartWidgetEffectCoordinatingButton *)self->_button isFocused]& 1) == 0)
  {
    v4[2]();
  }
}

- (id)linearFocusItems
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v3 = [(DBSmartWidgetRangeBasedView *)self prediction];
    if ([v3 hasSecondaryAction] && (-[DBSmartWidgetRangeBasedView actionButton](self, "actionButton"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v6 = [(DBSmartWidgetRangeBasedView *)self actionButton];
      v7 = [v6 isHidden];

      if ((v7 & 1) == 0)
      {
        v8 = [(DBSmartWidgetRangeBasedView *)self button];
        v13[0] = v8;
        v9 = [(DBSmartWidgetRangeBasedView *)self actionButton];
        v13[1] = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v8 = [(DBSmartWidgetRangeBasedView *)self button];
  v12 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
LABEL_8:

  return v10;
}

@end