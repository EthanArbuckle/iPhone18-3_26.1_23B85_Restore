@interface HUBannerView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HUBannerView)initWithFrame:(CGRect)frame;
- (HUBannerViewDelegate)delegate;
- (NSString)description;
- (void)_dismissButtonTapped:(id)tapped;
- (void)_footerViewTapped:(id)tapped;
- (void)_subclass_updateConstraints;
- (void)layoutOptionsDidChange;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setLayoutOptions:(id)options;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUBannerView

- (HUBannerView)initWithFrame:(CGRect)frame
{
  v50.receiver = self;
  v50.super_class = HUBannerView;
  v3 = [(HUBannerView *)&v50 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUBannerView *)v3 setClipsToBounds:1];
    tableCellGroupedBackgroundColor = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
    [(HUBannerView *)v4 setBackgroundColor:tableCellGroupedBackgroundColor];

    v6 = [MEMORY[0x277D75220] buttonWithType:7];
    dismissButton = v4->_dismissButton;
    v4->_dismissButton = v6;

    [(UIButton *)v4->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_dismissButton setContentMode:1];
    [(UIButton *)v4->_dismissButton setHidden:1];
    [(UIButton *)v4->_dismissButton addTarget:v4 action:sel__dismissButtonTapped_ forControlEvents:64];
    [(HUBannerView *)v4 addSubview:v4->_dismissButton];
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v13;

    [(UIImageView *)v4->_iconImageView setContentMode:4];
    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUBannerView *)v4 addSubview:v4->_iconImageView];
    v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v9, v10, v11, v12}];
    supplementaryIconImageView = v4->_supplementaryIconImageView;
    v4->_supplementaryIconImageView = v15;

    [(UIImageView *)v4->_supplementaryIconImageView setContentMode:4];
    [(UIImageView *)v4->_supplementaryIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView addSubview:v4->_supplementaryIconImageView];
    v17 = [objc_alloc(MEMORY[0x277D180D0]) initWithFrame:1 contentMode:{v9, v10, v11, v12}];
    iconView = v4->_iconView;
    v4->_iconView = v17;

    [(HUIconView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUBannerView *)v4 addSubview:v4->_iconView];
    v19 = [objc_alloc(MEMORY[0x277D180D0]) initWithFrame:1 contentMode:{v9, v10, v11, v12}];
    supplementaryIconView = v4->_supplementaryIconView;
    v4->_supplementaryIconView = v19;

    [(HUIconView *)v4->_supplementaryIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIconView *)v4->_iconView addSubview:v4->_supplementaryIconView];
    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v21;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(HUBannerView *)v4 addSubview:v4->_titleLabel];
    v23 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v23;

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:systemGrayColor];

    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
    [(HUBannerView *)v4 addSubview:v4->_descriptionLabel];
    v26 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    lineView = v4->_lineView;
    v4->_lineView = v26;

    tableSeparatorLightColor = [MEMORY[0x277D75348] tableSeparatorLightColor];
    [(UIView *)v4->_lineView setBackgroundColor:tableSeparatorLightColor];
    [(UIView *)v4->_lineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUBannerView *)v4 addSubview:v4->_lineView];
    v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
    footerView = v4->_footerView;
    v4->_footerView = v29;

    v31 = v4->_footerView;
    backgroundColor = [(HUBannerView *)v4 backgroundColor];
    [(UIView *)v31 setBackgroundColor:backgroundColor];

    [(UIView *)v4->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    layoutOptions = [(HUBannerView *)v4 layoutOptions];
    [layoutOptions cellCornerRadius];
    v35 = v34;
    layer = [(UIView *)v4->_footerView layer];
    [layer setCornerRadius:v35];

    layer2 = [(UIView *)v4->_footerView layer];
    [layer2 setMaskedCorners:12];

    [(HUBannerView *)v4 addSubview:v4->_footerView];
    v38 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    footerViewLabel = v4->_footerViewLabel;
    v4->_footerViewLabel = v38;

    [(UILabel *)v4->_footerViewLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_footerViewLabel setAdjustsFontForContentSizeCategory:1];
    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    [(UILabel *)v4->_footerViewLabel setTextColor:hf_keyColor];

    [(UIView *)v4->_footerView addSubview:v4->_footerViewLabel];
    v41 = objc_alloc_init(MEMORY[0x277D75220]);
    continueButton = v4->_continueButton;
    v4->_continueButton = v41;

    [(UIButton *)v4->_continueButton setHidden:1];
    v43 = v4->_continueButton;
    v44 = HUCommonImageNamed();
    imageFlippedForRightToLeftLayoutDirection = [v44 imageFlippedForRightToLeftLayoutDirection];
    [(UIButton *)v43 setImage:imageFlippedForRightToLeftLayoutDirection forState:0];

    v46 = v4->_continueButton;
    tableSeparatorLightColor2 = [MEMORY[0x277D75348] tableSeparatorLightColor];
    [(UIButton *)v46 setTintColor:tableSeparatorLightColor2];

    [(UIButton *)v4->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_footerView addSubview:v4->_continueButton];
    v48 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel__footerViewTapped_];
    [v48 setDelegate:v4];
    [(UIView *)v4->_footerView addGestureRecognizer:v48];
  }

  return v4;
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, options);
    [(HUBannerView *)self layoutOptionsDidChange];
  }
}

- (void)updateConstraints
{
  [(HUBannerView *)self _subclass_updateConstraints];
  v3.receiver = self;
  v3.super_class = HUBannerView;
  [(HUBannerView *)&v3 updateConstraints];
}

- (void)_subclass_updateConstraints
{
  layoutConstraints = [(HUBannerView *)self layoutConstraints];

  if (!layoutConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    objc_opt_class();
    layoutOptions = [(HUBannerView *)self layoutOptions];
    if (objc_opt_isKindOfClass())
    {
      v6 = layoutOptions;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    dismissButton = [(HUBannerView *)self dismissButton];
    topAnchor = [dismissButton topAnchor];
    topAnchor2 = [(HUBannerView *)self topAnchor];
    if (v7)
    {
      [v7 dismissButtonTopInset];
      v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
      [array addObject:v11];

      dismissButton2 = [(HUBannerView *)self dismissButton];
      trailingAnchor = [dismissButton2 trailingAnchor];
      trailingAnchor2 = [(HUBannerView *)self trailingAnchor];
      [v7 dismissButtonTrailingInset];
      v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v15];
      [array addObject:v16];

      dismissButton3 = [(HUBannerView *)self dismissButton];
      heightAnchor = [dismissButton3 heightAnchor];
      [v7 dismissButtonHeightAndWidth];
      v19 = [heightAnchor constraintEqualToConstant:?];
      [array addObject:v19];

      dismissButton4 = [(HUBannerView *)self dismissButton];
      widthAnchor = [dismissButton4 widthAnchor];
      [v7 dismissButtonHeightAndWidth];
      widthAnchor2 = widthAnchor;
    }

    else
    {
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [array addObject:v24];

      dismissButton5 = [(HUBannerView *)self dismissButton];
      trailingAnchor3 = [dismissButton5 trailingAnchor];
      trailingAnchor4 = [(HUBannerView *)self trailingAnchor];
      v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [array addObject:v28];

      dismissButton6 = [(HUBannerView *)self dismissButton];
      heightAnchor2 = [dismissButton6 heightAnchor];
      v31 = [heightAnchor2 constraintEqualToConstant:0.0];
      [array addObject:v31];

      dismissButton4 = [(HUBannerView *)self dismissButton];
      widthAnchor2 = [dismissButton4 widthAnchor];
      widthAnchor = widthAnchor2;
      v22 = 0.0;
    }

    v32 = [widthAnchor2 constraintEqualToConstant:v22];
    [array addObject:v32];

    iconView = [(HUBannerView *)self iconView];
    leadingAnchor = [iconView leadingAnchor];
    leadingAnchor2 = [(HUBannerView *)self leadingAnchor];
    layoutOptions2 = [(HUBannerView *)self layoutOptions];
    [layoutOptions2 leadingInset];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    [array addObject:v37];

    iconImageView = [(HUBannerView *)self iconImageView];
    leadingAnchor3 = [iconImageView leadingAnchor];
    iconView2 = [(HUBannerView *)self iconView];
    leadingAnchor4 = [iconView2 leadingAnchor];
    v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v42];

    iconView3 = [(HUBannerView *)self iconView];
    topAnchor3 = [iconView3 topAnchor];
    topAnchor4 = [(HUBannerView *)self topAnchor];
    layoutOptions3 = [(HUBannerView *)self layoutOptions];
    [layoutOptions3 titleTopInset];
    v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
    [array addObject:v47];

    iconImageView2 = [(HUBannerView *)self iconImageView];
    topAnchor5 = [iconImageView2 topAnchor];
    iconView4 = [(HUBannerView *)self iconView];
    topAnchor6 = [iconView4 topAnchor];
    layoutOptions5 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [array addObject:layoutOptions5];

    iconView5 = [(HUBannerView *)self iconView];
    heightAnchor3 = [iconView5 heightAnchor];
    layoutOptions4 = [(HUBannerView *)self layoutOptions];
    [layoutOptions4 iconHeight];
    v56 = [heightAnchor3 constraintEqualToConstant:?];
    [array addObject:v56];

    iconImageView3 = [(HUBannerView *)self iconImageView];
    heightAnchor4 = [iconImageView3 heightAnchor];
    iconImageView4 = [(HUBannerView *)self iconImageView];
    image = [iconImageView4 image];
    if (image)
    {
      layoutOptions5 = [(HUBannerView *)self layoutOptions];
      [layoutOptions5 iconHeight];
    }

    else
    {
      v61 = 0.0;
    }

    v62 = [heightAnchor4 constraintEqualToConstant:v61];
    [array addObject:v62];

    if (image)
    {
    }

    iconView6 = [(HUBannerView *)self iconView];
    widthAnchor3 = [iconView6 widthAnchor];
    iconView7 = [(HUBannerView *)self iconView];
    heightAnchor5 = [iconView7 heightAnchor];
    v67 = [widthAnchor3 constraintEqualToAnchor:heightAnchor5];
    [array addObject:v67];

    iconImageView5 = [(HUBannerView *)self iconImageView];
    widthAnchor4 = [iconImageView5 widthAnchor];
    iconImageView6 = [(HUBannerView *)self iconImageView];
    heightAnchor6 = [iconImageView6 heightAnchor];
    v72 = [widthAnchor4 constraintEqualToAnchor:heightAnchor6];
    [array addObject:v72];

    objc_opt_class();
    item = [(HUBannerView *)self item];
    latestResults = [item latestResults];
    v75 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F38]];
    if (objc_opt_isKindOfClass())
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    v77 = v76;

    v238 = v77;
    if (v77)
    {
      [v77 floatValue];
      v79 = v78;
    }

    else
    {
      v79 = 1.0;
    }

    supplementaryIconView = [(HUBannerView *)self supplementaryIconView];
    widthAnchor5 = [supplementaryIconView widthAnchor];
    iconView8 = [(HUBannerView *)self iconView];
    widthAnchor6 = [iconView8 widthAnchor];
    v84 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    [array addObject:v84];

    supplementaryIconView2 = [(HUBannerView *)self supplementaryIconView];
    heightAnchor7 = [supplementaryIconView2 heightAnchor];
    iconView9 = [(HUBannerView *)self iconView];
    heightAnchor8 = [iconView9 heightAnchor];
    v89 = [heightAnchor7 constraintEqualToAnchor:heightAnchor8 multiplier:v79];
    [array addObject:v89];

    supplementaryIconView3 = [(HUBannerView *)self supplementaryIconView];
    bottomAnchor = [supplementaryIconView3 bottomAnchor];
    iconView10 = [(HUBannerView *)self iconView];
    bottomAnchor2 = [iconView10 bottomAnchor];
    v94 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v94];

    supplementaryIconImageView = [(HUBannerView *)self supplementaryIconImageView];
    widthAnchor7 = [supplementaryIconImageView widthAnchor];
    iconImageView7 = [(HUBannerView *)self iconImageView];
    widthAnchor8 = [iconImageView7 widthAnchor];
    v99 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];
    [array addObject:v99];

    supplementaryIconImageView2 = [(HUBannerView *)self supplementaryIconImageView];
    heightAnchor9 = [supplementaryIconImageView2 heightAnchor];
    iconImageView8 = [(HUBannerView *)self iconImageView];
    heightAnchor10 = [iconImageView8 heightAnchor];
    v104 = [heightAnchor9 constraintEqualToAnchor:heightAnchor10 multiplier:v79];
    [array addObject:v104];

    supplementaryIconImageView3 = [(HUBannerView *)self supplementaryIconImageView];
    bottomAnchor3 = [supplementaryIconImageView3 bottomAnchor];
    iconImageView9 = [(HUBannerView *)self iconImageView];
    bottomAnchor4 = [iconImageView9 bottomAnchor];
    v109 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v109];

    traitCollection = [(HUBannerView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v112 = *MEMORY[0x277D767F8];

    titleLabel = [(HUBannerView *)self titleLabel];
    topAnchor7 = [titleLabel topAnchor];
    if (preferredContentSizeCategory >= v112)
    {
      iconView11 = [(HUBannerView *)self iconView];
      bottomAnchor5 = [iconView11 bottomAnchor];
      layoutOptions6 = [(HUBannerView *)self layoutOptions];
      [layoutOptions6 verticalSpacingForLipElements];
      v127 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:?];
      [array addObject:v127];

      titleLabel2 = [(HUBannerView *)self titleLabel];
      leadingAnchor5 = [titleLabel2 leadingAnchor];
      leadingAnchor6 = [(HUBannerView *)self leadingAnchor];
      layoutOptions7 = [(HUBannerView *)self layoutOptions];
      [layoutOptions7 leadingInset];
      layoutOptions9 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
      [array addObject:layoutOptions9];
    }

    else
    {
      topAnchor8 = [(HUBannerView *)self topAnchor];
      layoutOptions8 = [(HUBannerView *)self layoutOptions];
      [layoutOptions8 titleTopInset];
      v117 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:?];
      [array addObject:v117];

      titleLabel2 = [(HUBannerView *)self titleLabel];
      leadingAnchor5 = [titleLabel2 leadingAnchor];
      leadingAnchor6 = [(HUBannerView *)self iconView];
      layoutOptions7 = [leadingAnchor6 trailingAnchor];
      layoutOptions9 = [(HUBannerView *)self layoutOptions];
      [layoutOptions9 horizontalItemSpacing];
      v123 = [leadingAnchor5 constraintEqualToAnchor:layoutOptions7 constant:?];
      [array addObject:v123];
    }

    titleLabel3 = [(HUBannerView *)self titleLabel];
    trailingAnchor5 = [titleLabel3 trailingAnchor];
    trailingAnchor6 = [(HUBannerView *)self trailingAnchor];
    layoutOptions10 = [(HUBannerView *)self layoutOptions];
    [layoutOptions10 trailingInset];
    v133 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v132];
    [array addObject:v133];

    descriptionLabel = [(HUBannerView *)self descriptionLabel];
    topAnchor9 = [descriptionLabel topAnchor];
    titleLabel4 = [(HUBannerView *)self titleLabel];
    bottomAnchor6 = [titleLabel4 bottomAnchor];
    layoutOptions11 = [(HUBannerView *)self layoutOptions];
    [layoutOptions11 verticalLabelSpacing];
    v139 = [topAnchor9 constraintEqualToAnchor:bottomAnchor6 constant:?];
    [array addObject:v139];

    traitCollection2 = [(HUBannerView *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];

    descriptionLabel2 = [(HUBannerView *)self descriptionLabel];
    leadingAnchor7 = [descriptionLabel2 leadingAnchor];
    if (preferredContentSizeCategory2 >= v112)
    {
      leadingAnchor8 = [(HUBannerView *)self leadingAnchor];
      layoutOptions12 = [(HUBannerView *)self layoutOptions];
      [layoutOptions12 leadingInset];
      layoutOptions13 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:?];
      [array addObject:layoutOptions13];
    }

    else
    {
      leadingAnchor8 = [(HUBannerView *)self iconView];
      layoutOptions12 = [leadingAnchor8 trailingAnchor];
      layoutOptions13 = [(HUBannerView *)self layoutOptions];
      [layoutOptions13 horizontalItemSpacing];
      v147 = [leadingAnchor7 constraintEqualToAnchor:layoutOptions12 constant:?];
      [array addObject:v147];
    }

    descriptionLabel3 = [(HUBannerView *)self descriptionLabel];
    trailingAnchor7 = [descriptionLabel3 trailingAnchor];
    trailingAnchor8 = [(HUBannerView *)self trailingAnchor];
    layoutOptions14 = [(HUBannerView *)self layoutOptions];
    [layoutOptions14 trailingInset];
    v153 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v152];
    [array addObject:v153];

    lineView = [(HUBannerView *)self lineView];
    if ([lineView isHidden])
    {
      footerView = [(HUBannerView *)self footerView];
      isHidden = [footerView isHidden];

      if (isHidden)
      {
        descriptionLabel4 = [(HUBannerView *)self descriptionLabel];
        bottomAnchor7 = [descriptionLabel4 bottomAnchor];
        bottomAnchor8 = [(HUBannerView *)self bottomAnchor];
        layoutOptions15 = [(HUBannerView *)self layoutOptions];
        [layoutOptions15 verticalSpacingForLineView];
        v162 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v161];
        goto LABEL_34;
      }
    }

    else
    {
    }

    lineView2 = [(HUBannerView *)self lineView];
    topAnchor10 = [lineView2 topAnchor];
    descriptionLabel5 = [(HUBannerView *)self descriptionLabel];
    bottomAnchor9 = [descriptionLabel5 bottomAnchor];
    layoutOptions16 = [(HUBannerView *)self layoutOptions];
    [layoutOptions16 verticalSpacingForLineView];
    v168 = [topAnchor10 constraintEqualToAnchor:bottomAnchor9 constant:?];
    [array addObject:v168];

    lineView3 = [(HUBannerView *)self lineView];
    leadingAnchor9 = [lineView3 leadingAnchor];
    descriptionLabel6 = [(HUBannerView *)self descriptionLabel];
    leadingAnchor10 = [descriptionLabel6 leadingAnchor];
    v173 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    [array addObject:v173];

    lineView4 = [(HUBannerView *)self lineView];
    trailingAnchor9 = [lineView4 trailingAnchor];
    trailingAnchor10 = [(HUBannerView *)self trailingAnchor];
    v177 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [array addObject:v177];

    lineView5 = [(HUBannerView *)self lineView];
    heightAnchor11 = [lineView5 heightAnchor];
    v180 = [heightAnchor11 constraintEqualToConstant:1.0];
    [array addObject:v180];

    footerView2 = [(HUBannerView *)self footerView];
    topAnchor11 = [footerView2 topAnchor];
    lineView6 = [(HUBannerView *)self lineView];
    bottomAnchor10 = [lineView6 bottomAnchor];
    v185 = [topAnchor11 constraintEqualToAnchor:bottomAnchor10];
    [array addObject:v185];

    footerView3 = [(HUBannerView *)self footerView];
    leadingAnchor11 = [footerView3 leadingAnchor];
    leadingAnchor12 = [(HUBannerView *)self leadingAnchor];
    v189 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [array addObject:v189];

    footerView4 = [(HUBannerView *)self footerView];
    trailingAnchor11 = [footerView4 trailingAnchor];
    trailingAnchor12 = [(HUBannerView *)self trailingAnchor];
    v193 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    [array addObject:v193];

    footerView5 = [(HUBannerView *)self footerView];
    bottomAnchor11 = [footerView5 bottomAnchor];
    bottomAnchor12 = [(HUBannerView *)self bottomAnchor];
    v197 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    [array addObject:v197];

    footerViewLabel = [(HUBannerView *)self footerViewLabel];
    topAnchor12 = [footerViewLabel topAnchor];
    footerView6 = [(HUBannerView *)self footerView];
    topAnchor13 = [footerView6 topAnchor];
    layoutOptions17 = [(HUBannerView *)self layoutOptions];
    [layoutOptions17 verticalSpacingForLipElements];
    v203 = [topAnchor12 constraintEqualToAnchor:topAnchor13 constant:?];
    [array addObject:v203];

    footerViewLabel2 = [(HUBannerView *)self footerViewLabel];
    leadingAnchor13 = [footerViewLabel2 leadingAnchor];
    descriptionLabel7 = [(HUBannerView *)self descriptionLabel];
    leadingAnchor14 = [descriptionLabel7 leadingAnchor];
    v208 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    [array addObject:v208];

    footerViewLabel3 = [(HUBannerView *)self footerViewLabel];
    trailingAnchor13 = [footerViewLabel3 trailingAnchor];
    continueButton = [(HUBannerView *)self continueButton];
    if ([continueButton isHidden])
    {
      footerView7 = [(HUBannerView *)self footerView];
      [footerView7 trailingAnchor];
    }

    else
    {
      footerView7 = [(HUBannerView *)self continueButton];
      [footerView7 leadingAnchor];
    }
    v213 = ;
    layoutOptions18 = [(HUBannerView *)self layoutOptions];
    [layoutOptions18 trailingInset];
    v216 = [trailingAnchor13 constraintLessThanOrEqualToAnchor:v213 constant:-v215];
    [array addObject:v216];

    footerViewLabel4 = [(HUBannerView *)self footerViewLabel];
    bottomAnchor13 = [footerViewLabel4 bottomAnchor];
    footerView8 = [(HUBannerView *)self footerView];
    bottomAnchor14 = [footerView8 bottomAnchor];
    layoutOptions19 = [(HUBannerView *)self layoutOptions];
    [layoutOptions19 verticalSpacingForLipElements];
    v223 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14 constant:-v222];
    [array addObject:v223];

    continueButton2 = [(HUBannerView *)self continueButton];
    LOBYTE(footerViewLabel4) = [continueButton2 isHidden];

    if (footerViewLabel4)
    {
      goto LABEL_35;
    }

    continueButton3 = [(HUBannerView *)self continueButton];
    centerXAnchor = [continueButton3 centerXAnchor];
    footerViewLabel5 = [(HUBannerView *)self footerViewLabel];
    centerXAnchor2 = [footerViewLabel5 centerXAnchor];
    v229 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v229];

    continueButton4 = [(HUBannerView *)self continueButton];
    trailingAnchor14 = [continueButton4 trailingAnchor];
    footerView9 = [(HUBannerView *)self footerView];
    trailingAnchor15 = [footerView9 trailingAnchor];
    layoutOptions20 = [(HUBannerView *)self layoutOptions];
    [layoutOptions20 trailingInset];
    v236 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:-v235];
    [array addObject:v236];

    descriptionLabel4 = [(HUBannerView *)self continueButton];
    bottomAnchor7 = [descriptionLabel4 centerYAnchor];
    bottomAnchor8 = [(HUBannerView *)self footerView];
    layoutOptions15 = [bottomAnchor8 centerYAnchor];
    v162 = [bottomAnchor7 constraintEqualToAnchor:layoutOptions15];
LABEL_34:
    v237 = v162;
    [array addObject:v162];

LABEL_35:
    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(HUBannerView *)self setLayoutConstraints:array];
  }

  v239.receiver = self;
  v239.super_class = HUBannerView;
  [(HUBannerView *)&v239 updateConstraints];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(HUBannerView *)self disableHighlighting])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__HUBannerView_setHighlighted_animated___block_invoke;
    v9[3] = &unk_277DB7EE0;
    v9[4] = self;
    highlightedCopy = highlighted;
    v7 = _Block_copy(v9);
    v8 = v7;
    if (animatedCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.15];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

void __40__HUBannerView_setHighlighted_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [MEMORY[0x277D75348] systemLightGrayColor];
  }

  else
  {
    [*(a1 + 32) backgroundColor];
  }
  v3 = ;
  v2 = [*(a1 + 32) footerView];
  [v2 setBackgroundColor:v3];
}

- (void)layoutOptionsDidChange
{
  layoutOptions = [(HUBannerView *)self layoutOptions];
  font = [layoutOptions font];
  titleLabel = [(HUBannerView *)self titleLabel];
  [titleLabel setFont:font];

  layoutOptions2 = [(HUBannerView *)self layoutOptions];
  descriptionFont = [layoutOptions2 descriptionFont];
  descriptionLabel = [(HUBannerView *)self descriptionLabel];
  [descriptionLabel setFont:descriptionFont];

  layoutOptions3 = [(HUBannerView *)self layoutOptions];
  [layoutOptions3 cellCornerRadius];
  [(HUBannerView *)self _setContinuousCornerRadius:?];

  layoutOptions4 = [(HUBannerView *)self layoutOptions];
  [layoutOptions4 cellCornerRadius];
  v12 = v11;
  footerView = [(HUBannerView *)self footerView];
  layer = [footerView layer];
  [layer setCornerRadius:v12];

  layoutOptions5 = [(HUBannerView *)self layoutOptions];
  footerViewLabelFont = [layoutOptions5 footerViewLabelFont];
  footerViewLabel = [(HUBannerView *)self footerViewLabel];
  [footerViewLabel setFont:footerViewLabelFont];

  layoutConstraints = [(HUBannerView *)self layoutConstraints];

  if (layoutConstraints)
  {
    v19 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(HUBannerView *)self layoutConstraints];
    [v19 deactivateConstraints:layoutConstraints2];
  }

  [(HUBannerView *)self setLayoutConstraints:0];

  [(HUBannerView *)self setNeedsUpdateConstraints];
}

- (void)prepareForReuse
{
  layoutOptions = [(HUBannerView *)self layoutOptions];
  font = [layoutOptions font];
  titleLabel = [(HUBannerView *)self titleLabel];
  [titleLabel setFont:font];

  layoutOptions2 = [(HUBannerView *)self layoutOptions];
  descriptionFont = [layoutOptions2 descriptionFont];
  descriptionLabel = [(HUBannerView *)self descriptionLabel];
  [descriptionLabel setFont:descriptionFont];

  layoutOptions3 = [(HUBannerView *)self layoutOptions];
  footerViewLabelFont = [layoutOptions3 footerViewLabelFont];
  footerViewLabel = [(HUBannerView *)self footerViewLabel];
  [footerViewLabel setFont:footerViewLabelFont];

  iconImageView = [(HUBannerView *)self iconImageView];
  [iconImageView setImage:0];

  iconView = [(HUBannerView *)self iconView];
  [iconView updateWithIconDescriptor:0 displayStyle:1 animated:0];

  supplementaryIconImageView = [(HUBannerView *)self supplementaryIconImageView];
  [supplementaryIconImageView setImage:0];

  supplementaryIconView = [(HUBannerView *)self supplementaryIconView];
  [supplementaryIconView updateWithIconDescriptor:0 displayStyle:1 animated:0];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v82[2] = *MEMORY[0x277D85DE8];
  item = [(HUBannerView *)self item];
  latestResults = [item latestResults];

  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  titleLabel = [(HUBannerView *)self titleLabel];
  [titleLabel setText:v7];

  layoutOptions = [(HUBannerView *)self layoutOptions];
  maxNumberOfTitleLines = [layoutOptions maxNumberOfTitleLines];
  titleLabel2 = [(HUBannerView *)self titleLabel];
  [titleLabel2 setNumberOfLines:maxNumberOfTitleLines];

  titleLabel3 = [(HUBannerView *)self titleLabel];
  [titleLabel3 sizeToFit];

  v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  v81[0] = *MEMORY[0x277D740A8];
  descriptionLabel = [(HUBannerView *)self descriptionLabel];
  font = [descriptionLabel font];
  v82[0] = font;
  v81[1] = *MEMORY[0x277D740C0];
  descriptionLabel2 = [(HUBannerView *)self descriptionLabel];
  textColor = [descriptionLabel2 textColor];
  v82[1] = textColor;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];

  if ([v13 prefersDynamicString])
  {
    descriptionLabel3 = [(HUBannerView *)self descriptionLabel];
    [descriptionLabel3 bounds];
    descriptionLabel5 = [v13 dynamicStringForSize:v18 attributes:{v20, v21}];
    descriptionLabel4 = [(HUBannerView *)self descriptionLabel];
    [descriptionLabel4 setAttributedText:descriptionLabel5];
  }

  else
  {
    descriptionLabel3 = [v13 stringWithAttributes:v18];
    descriptionLabel5 = [(HUBannerView *)self descriptionLabel];
    [descriptionLabel5 setAttributedText:descriptionLabel3];
  }

  layoutOptions2 = [(HUBannerView *)self layoutOptions];
  maxNumberOfDescriptionLines = [layoutOptions2 maxNumberOfDescriptionLines];
  descriptionLabel6 = [(HUBannerView *)self descriptionLabel];
  [descriptionLabel6 setNumberOfLines:maxNumberOfDescriptionLines];

  descriptionLabel7 = [(HUBannerView *)self descriptionLabel];
  [descriptionLabel7 sizeToFit];

  v28 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
  footerViewLabel = [(HUBannerView *)self footerViewLabel];
  [footerViewLabel setText:v28];

  footerViewLabel2 = [(HUBannerView *)self footerViewLabel];
  [footerViewLabel2 setAccessibilityIdentifier:@"Home.Banners.Cells.Footer.Text"];

  v31 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DF0]];
  if (v31)
  {
    footerViewLabel3 = [(HUBannerView *)self footerViewLabel];
    [footerViewLabel3 setTextColor:v31];
  }

  item2 = [(HUBannerView *)self item];
  latestResults2 = [item2 latestResults];
  v35 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E98]];

  v80 = v18;
  if (v35)
  {
    iconImageView = [(HUBannerView *)self iconImageView];
    [iconImageView setContentMode:1];

    iconImageView2 = [(HUBannerView *)self iconImageView];
    [iconImageView2 setImage:v35];

    iconImageView3 = [(HUBannerView *)self iconImageView];
    [iconImageView3 setHidden:0];

    iconView = [(HUBannerView *)self iconView];
    [iconView setHidden:1];

    item3 = [(HUBannerView *)self item];
    latestResults3 = [item3 latestResults];
    v42 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13F58]];

    if (v42)
    {
      iconImageView4 = [(HUBannerView *)self iconImageView];
      [iconImageView4 setTintColor:v42];
    }

    item4 = [(HUBannerView *)self item];
    latestResults4 = [item4 latestResults];
    v46 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13F40]];

    supplementaryIconImageView = [(HUBannerView *)self supplementaryIconImageView];
    v48 = supplementaryIconImageView;
    if (v46)
    {
      [supplementaryIconImageView setContentMode:1];

      supplementaryIconImageView2 = [(HUBannerView *)self supplementaryIconImageView];
      [supplementaryIconImageView2 setImage:v46];

      if (v42)
      {
        supplementaryIconImageView3 = [(HUBannerView *)self supplementaryIconImageView];
        [supplementaryIconImageView3 setTintColor:v42];
      }

      supplementaryIconImageView = [(HUBannerView *)self supplementaryIconImageView];
      v48 = supplementaryIconImageView;
      v51 = 0;
    }

    else
    {
      v51 = 1;
    }
  }

  else
  {
    item5 = [(HUBannerView *)self item];
    latestResults5 = [item5 latestResults];
    v42 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13E88]];

    objc_opt_class();
    v79 = animationCopy;
    if (objc_opt_isKindOfClass())
    {
      v54 = MEMORY[0x277D14440];
      v55 = v42;
      v56 = [v54 alloc];
      [v55 packageIdentifier];
      v58 = v57 = animationCopy;

      iconView3 = [v56 initWithPackageIdentifier:v58 state:*MEMORY[0x277D13758]];
      iconView2 = [(HUBannerView *)self iconView];
      [iconView2 updateWithIconDescriptor:iconView3 displayStyle:1 animated:v57];
    }

    else
    {
      iconView3 = [(HUBannerView *)self iconView];
      [iconView3 updateWithIconDescriptor:v42 displayStyle:1 animated:animationCopy];
    }

    iconView4 = [(HUBannerView *)self iconView];
    [iconView4 setHidden:0];

    iconImageView5 = [(HUBannerView *)self iconImageView];
    [iconImageView5 setHidden:1];

    item6 = [(HUBannerView *)self item];
    latestResults6 = [item6 latestResults];
    v46 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13F30]];

    if (v46)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = MEMORY[0x277D14440];
        v66 = v42;
        v67 = [v65 alloc];
        packageIdentifier = [v66 packageIdentifier];

        supplementaryIconView2 = [v67 initWithPackageIdentifier:packageIdentifier state:*MEMORY[0x277D13758]];
        supplementaryIconView = [(HUBannerView *)self supplementaryIconView];
        [supplementaryIconView updateWithIconDescriptor:supplementaryIconView2 displayStyle:1 animated:v79];
      }

      else
      {
        supplementaryIconView2 = [(HUBannerView *)self supplementaryIconView];
        [supplementaryIconView2 updateWithIconDescriptor:v46 displayStyle:1 animated:v79];
      }
    }

    supplementaryIconImageView = [(HUBannerView *)self supplementaryIconView];
    v48 = supplementaryIconImageView;
    v51 = v46 == 0;
  }

  [supplementaryIconImageView setHidden:v51];

  footerViewLabel4 = [(HUBannerView *)self footerViewLabel];
  text = [footerViewLabel4 text];
  lineView = [(HUBannerView *)self lineView];
  [lineView setHidden:text == 0];

  footerViewLabel5 = [(HUBannerView *)self footerViewLabel];
  text2 = [footerViewLabel5 text];
  footerView = [(HUBannerView *)self footerView];
  [footerView setHidden:text2 == 0];

  footerViewLabel6 = [(HUBannerView *)self footerViewLabel];
  [footerViewLabel6 setNumberOfLines:0];

  footerViewLabel7 = [(HUBannerView *)self footerViewLabel];
  [footerViewLabel7 setLineBreakMode:0];

  [(HUBannerView *)self setNeedsUpdateConstraints];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  titleLabel = [(HUBannerView *)self titleLabel];
  text = [titleLabel text];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 appendString:text withName:v7];

  build = [v3 build];

  return build;
}

- (void)_dismissButtonTapped:(id)tapped
{
  v13 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2080;
    v12 = "[HUBannerView _dismissButtonTapped:]";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped dismiss button", &v9, 0x16u);
  }

  delegate = [(HUBannerView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HUBannerView *)self delegate];
    [delegate2 bannerView:self dismissButtonTapped:tappedCopy];
  }
}

- (void)_footerViewTapped:(id)tapped
{
  v15 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2080;
    v12 = "[HUBannerView _footerViewTapped:]";
    v13 = 2112;
    v14 = tappedCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped footer view %@", &v9, 0x20u);
  }

  delegate = [(HUBannerView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HUBannerView *)self delegate];
    [delegate2 bannerView:self footerViewTapped:tappedCopy];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  footerView = [(HUBannerView *)self footerView];
  if (view == footerView)
  {
    delegate = [(HUBannerView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return 0;
    }

    delegate2 = [(HUBannerView *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return 1;
    }

    view = [(HUBannerView *)self delegate];
    footerView = [(HUBannerView *)self footerView];
    v7 = [view bannerView:self shouldReceiveFooterViewTaps:footerView];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  traitCollection = [(HUBannerView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v12 = *MEMORY[0x277D767F8];

  layoutOptions = [(HUBannerView *)self layoutOptions];
  [layoutOptions leadingInset];
  v15 = v14;
  layoutOptions2 = [(HUBannerView *)self layoutOptions];
  v17 = layoutOptions2;
  if (preferredContentSizeCategory >= v12)
  {
    [layoutOptions2 trailingInset];
    v25 = v15 + v26;
  }

  else
  {
    [layoutOptions2 iconWidth];
    v19 = v15 + v18;
    layoutOptions3 = [(HUBannerView *)self layoutOptions];
    [layoutOptions3 horizontalItemSpacing];
    v22 = v19 + v21;
    layoutOptions4 = [(HUBannerView *)self layoutOptions];
    [layoutOptions4 trailingInset];
    v25 = v22 + v24;
  }

  v27 = width - v25;
  titleLabel = [(HUBannerView *)self titleLabel];
  *&v29 = priority;
  *&v30 = fittingPriority;
  [titleLabel systemLayoutSizeFittingSize:v27 withHorizontalFittingPriority:height verticalFittingPriority:{v29, v30}];
  v32 = v31;

  layoutOptions5 = [(HUBannerView *)self layoutOptions];
  [layoutOptions5 verticalLabelSpacing];
  v35 = ceil(v32) + 0.0 + v34;

  descriptionLabel = [(HUBannerView *)self descriptionLabel];
  *&v37 = priority;
  *&v38 = fittingPriority;
  [descriptionLabel systemLayoutSizeFittingSize:v27 withHorizontalFittingPriority:height verticalFittingPriority:{v37, v38}];
  v40 = v39;

  v41 = v35 + ceil(v40);
  if (preferredContentSizeCategory < v12)
  {
    footerViewLabel = [(HUBannerView *)self footerViewLabel];
    text = [footerViewLabel text];
    if ([text length])
    {
    }

    else
    {
      layoutOptions6 = [(HUBannerView *)self layoutOptions];
      [layoutOptions6 iconHeight];
      v46 = v45;

      if (v46 <= v41)
      {
        goto LABEL_10;
      }

      footerViewLabel = [(HUBannerView *)self layoutOptions];
      [footerViewLabel iconHeight];
      v41 = v47;
    }
  }

LABEL_10:
  layoutOptions7 = [(HUBannerView *)self layoutOptions];
  [layoutOptions7 titleTopInset];
  v50 = v41 + v49;

  if (preferredContentSizeCategory >= v12)
  {
    layoutOptions8 = [(HUBannerView *)self layoutOptions];
    [layoutOptions8 iconHeight];
    v53 = v52;
    layoutOptions9 = [(HUBannerView *)self layoutOptions];
    [layoutOptions9 verticalSpacingForLipElements];
    v50 = v50 + v53 + v55;
  }

  footerViewLabel2 = [(HUBannerView *)self footerViewLabel];
  text2 = [footerViewLabel2 text];
  v58 = [text2 length];

  if (v58)
  {
    layoutOptions10 = [(HUBannerView *)self layoutOptions];
    [layoutOptions10 verticalSpacingForLineView];
    v61 = v50 + v60 + 1.0;

    footerViewLabel3 = [(HUBannerView *)self footerViewLabel];
    *&v63 = priority;
    *&v64 = fittingPriority;
    [footerViewLabel3 systemLayoutSizeFittingSize:v27 withHorizontalFittingPriority:height verticalFittingPriority:{v63, v64}];
    v66 = v65;

    layoutOptions11 = [(HUBannerView *)self layoutOptions];
    [layoutOptions11 verticalSpacingForLipElements];
    v50 = v61 + ceil(v66) + v68 * 2.0;
LABEL_14:

    goto LABEL_17;
  }

  if (preferredContentSizeCategory < v12)
  {
    layoutOptions12 = [(HUBannerView *)self layoutOptions];
    [layoutOptions12 iconHeight];
    v71 = v70;

    if (v41 >= v71)
    {
      layoutOptions11 = [(HUBannerView *)self layoutOptions];
      [layoutOptions11 verticalSpacingForLineView];
      v50 = v50 + v74 + 1.0;
      goto LABEL_14;
    }
  }

LABEL_17:
  v72 = width;
  v73 = v50;
  result.height = v73;
  result.width = v72;
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  v8 = interaction - 3;
  if ((interaction - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    v10 = [mEMORY[0x277D148E8] openURL:lCopy];
  }

  return v8 < 0xFFFFFFFFFFFFFFFELL;
}

- (HUBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end