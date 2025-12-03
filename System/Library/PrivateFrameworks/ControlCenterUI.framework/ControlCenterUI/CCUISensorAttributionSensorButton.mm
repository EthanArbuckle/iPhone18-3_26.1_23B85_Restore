@interface CCUISensorAttributionSensorButton
- (CCUISensorAttributionSensorButton)initWithSensorActivityData:(id)data;
- (CGRect)cachedExpandedRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_indicatorWidth;
- (id)_fontForTitleLabel;
- (void)_enableUserInteractionForLargeContentViewerIfNeeded;
- (void)_layoutDescriptionLabel;
- (void)_layoutIndicatorView;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation CCUISensorAttributionSensorButton

- (CCUISensorAttributionSensorButton)initWithSensorActivityData:(id)data
{
  v51[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v50.receiver = self;
  v50.super_class = CCUISensorAttributionSensorButton;
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [(CCUISensorAttributionSensorButton *)&v50 initWithFrame:*MEMORY[0x277CBF3A0], v8, v9, v10];
  if (v11)
  {
    if (!dataCopy)
    {
      [(CCUISensorAttributionSensorButton *)a2 initWithSensorActivityData:v11];
    }

    traitCollection = [(CCUISensorAttributionSensorButton *)v11 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    objc_storeStrong(&v11->_sensorActivityData, data);
    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    descriptionLabel = v11->_descriptionLabel;
    v11->_descriptionLabel = v15;

    v17 = v11->_descriptionLabel;
    _fontForTitleLabel = [(CCUISensorAttributionSensorButton *)v11 _fontForTitleLabel];
    [(UILabel *)v17 setFont:_fontForTitleLabel];

    v19 = v11->_descriptionLabel;
    if (IsAccessibilityCategory)
    {
      [(UILabel *)v19 setAdjustsFontForContentSizeCategory:1];
      [(UILabel *)v11->_descriptionLabel setNumberOfLines:0];
    }

    else
    {
      [(UILabel *)v19 setAdjustsFontSizeToFitWidth:1];
    }

    [(UILabel *)v11->_descriptionLabel setMinimumScaleFactor:0.5];
    v20 = v11->_descriptionLabel;
    v21 = CCUILocalizedDescriptionForSensorActivityData(dataCopy);
    [(UILabel *)v20 setText:v21];

    v22 = v11->_descriptionLabel;
    v23 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UILabel *)v22 setTextColor:v23];

    layer = [(UILabel *)v11->_descriptionLabel layer];
    v25 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    [layer setCompositingFilter:v25];

    layer2 = [(UILabel *)v11->_descriptionLabel layer];
    [layer2 setAllowsGroupBlending:0];

    [(CCUISensorAttributionSensorButton *)v11 addSubview:v11->_descriptionLabel];
    v27 = CCUIImageForSensorType([(CCUISensorActivityData *)v11->_sensorActivityData sensorType]);
    v28 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v27];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [v28 setTintColor:systemWhiteColor];

    CGAffineTransformMakeScale(&v49, 0.5, 0.5);
    [v28 setTransform:&v49];
    v30 = objc_alloc(MEMORY[0x277D755E8]);
    v31 = CCUIPlainCircleImage();
    v32 = [v30 initWithImage:v31];

    v33 = CCUIIndicatorColorForSensorType([(CCUISensorActivityData *)v11->_sensorActivityData sensorType]);
    [v32 setTintColor:v33];

    v34 = objc_alloc(MEMORY[0x277D75D18]);
    [v32 bounds];
    v35 = [v34 initWithFrame:?];
    indicatorView = v11->_indicatorView;
    v11->_indicatorView = v35;

    [(UIView *)v11->_indicatorView addSubview:v32];
    [(UIView *)v11->_indicatorView addSubview:v28];
    [(UIView *)v11->_indicatorView sendSubviewToBack:v32];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    layer3 = [(UIView *)v11->_indicatorView layer];
    [mainScreen scale];
    [layer3 setRasterizationScale:?];

    layer4 = [(UIView *)v11->_indicatorView layer];
    [layer4 setShouldRasterize:1];

    [v28 frame];
    [v32 bounds];
    UIRectCenteredRect();
    [v28 setFrame:?];
    v40 = MEMORY[0x277CCACA8];
    v41 = CCUIIdentifierForSensorType([dataCopy sensorType]);
    bundleIdentifier = [dataCopy bundleIdentifier];
    v43 = [v40 stringWithFormat:@"%@-activity-data-button-%@", v41, bundleIdentifier];
    [(CCUISensorAttributionSensorButton *)v11 setAccessibilityIdentifier:v43];

    layer5 = [(CCUISensorAttributionSensorButton *)v11 layer];
    [layer5 setAllowsGroupBlending:0];

    [(CCUISensorAttributionSensorButton *)v11 addSubview:v11->_indicatorView];
    v45 = objc_opt_self();
    v51[0] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    v47 = [(CCUISensorAttributionSensorButton *)v11 registerForTraitChanges:v46 withAction:sel__enableUserInteractionForLargeContentViewerIfNeeded];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  traitCollection = [(CCUISensorAttributionSensorButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(CCUISensorAttributionSensorButton *)self _indicatorWidth];
  v10 = v9;
  [(UILabel *)self->_descriptionLabel sizeThatFits:width - v9 + -4.0, height];
  v12 = v11;
  v14 = v13;
  font = [(UILabel *)self->_descriptionLabel font];
  [font lineHeight];
  v17 = v14 / v16;

  v18 = v17 > 1.5 && IsAccessibilityCategory;
  [(UIView *)self->_indicatorView frame];
  v19 = CGRectGetHeight(v23);
  if (v14 >= v19)
  {
    v19 = v14;
  }

  if (height < v19 != v18)
  {
    v20 = height;
  }

  else
  {
    v20 = v19;
  }

  v21 = v10 + v12 + 4.0;
  result.height = v20;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CCUISensorAttributionSensorButton;
  [(CCUISensorAttributionSensorButton *)&v3 layoutSubviews];
  [(CCUISensorAttributionSensorButton *)self _layoutIndicatorView];
  [(CCUISensorAttributionSensorButton *)self _layoutDescriptionLabel];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CCUISensorAttributionSensorButton;
  [(CCUISensorAttributionSensorButton *)&v3 didMoveToWindow];
  [(CCUISensorAttributionSensorButton *)self _enableUserInteractionForLargeContentViewerIfNeeded];
}

- (void)_layoutIndicatorView
{
  indicatorView = self->_indicatorView;
  if (indicatorView)
  {
    [(UIView *)indicatorView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(CCUISensorAttributionSensorButton *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    if ([mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1)
    {
      v23.origin.x = v13;
      v23.origin.y = v15;
      v23.size.width = v17;
      v23.size.height = v19;
      CGRectGetMaxX(v23);
      v24.origin.x = v5;
      v24.origin.y = v7;
      v24.size.width = v9;
      v24.size.height = v11;
      CGRectGetWidth(v24);
    }

    UIRectCenteredYInRect();
    v21 = self->_indicatorView;

    [(UIView *)v21 setFrame:?];
  }
}

- (void)_layoutDescriptionLabel
{
  descriptionLabel = self->_descriptionLabel;
  if (descriptionLabel)
  {
    [(UILabel *)descriptionLabel frame];
    [(CCUISensorAttributionSensorButton *)self bounds];
    v5 = v4;
    v7 = v6;
    [(CCUISensorAttributionSensorButton *)self _indicatorWidth];
    [(UILabel *)self->_descriptionLabel sizeThatFits:v5 - v8 + -4.0, v7];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    if ([mEMORY[0x277D75128] userInterfaceLayoutDirection] != 1)
    {
      [(CCUISensorAttributionSensorButton *)self _indicatorWidth];
    }

    UIRectCenteredYInRect();
    v10 = self->_descriptionLabel;

    [(UILabel *)v10 setFrame:?];
  }
}

- (double)_indicatorWidth
{
  [(UIView *)self->_indicatorView frame];

  return CGRectGetWidth(*&v2);
}

- (id)_fontForTitleLabel
{
  defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
  v3 = [defaultFontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:1];

  return v3;
}

- (void)_enableUserInteractionForLargeContentViewerIfNeeded
{
  traitCollection = [(CCUISensorAttributionSensorButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(CCUISensorAttributionSensorButton *)self setUserInteractionEnabled:IsAccessibilityCategory];
}

- (CGRect)cachedExpandedRect
{
  x = self->_cachedExpandedRect.origin.x;
  y = self->_cachedExpandedRect.origin.y;
  width = self->_cachedExpandedRect.size.width;
  height = self->_cachedExpandedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithSensorActivityData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CCUISensorAttributionSensorButton.m" lineNumber:36 description:@"Need a nonnil sensorActivityData"];
}

@end