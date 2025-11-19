@interface DBIconView
+ (BOOL)_iconLabelsRequireBackground;
+ (CGSize)maxLabelSizeForIconImageSize:(CGSize)a3;
+ (Class)defaultViewClassForAccessoryType:(int64_t)a3;
+ (UIEdgeInsets)minimumInterIconSpacing;
+ (double)_labelVerticalSizeOffset;
+ (double)maximumIconViewHeightForIconImageSize:(CGSize)a3;
+ (id)focusColorForTraitCollection:(id)a3;
+ (id)focusTextColorForTraitCollection:(id)a3;
+ (id)labelFontForTraitCollection:(id)a3;
+ (id)textColorForTraitCollection:(id)a3;
+ (void)_updateCharacteristicsWithTraitCollection:(id)a3;
- (CGRect)_frameForLabel;
- (CGRect)_frameForLabelHighlight;
- (DBIconView)initWithConfigurationOptions:(unint64_t)a3 listLayoutProvider:(id)a4;
- (double)effectiveBrightnessForControlState:(unint64_t)a3;
- (id)labelFont;
- (unint64_t)accessibilityTraits;
- (void)_configureIconImageView:(id)a3;
- (void)_refreshDropShadowWithIconImage:(id)a3;
- (void)_updateLabelAnimated:(BOOL)a3;
- (void)_wallpaperChanged:(id)a3;
- (void)cleanupAfterCrossfade;
- (void)configureLabelImageParametersBuilder:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setLabelHidden:(BOOL)a3;
- (void)setShadowHidden:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DBIconView

- (CGRect)_frameForLabelHighlight
{
  v20.receiver = self;
  v20.super_class = DBIconView;
  [(DBIconView *)&v20 _frameForLabelHighlight];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(DBIconView *)self iconContentScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v12 = v11;
  [objc_opt_class() maxLabelSizeForIconImageSize:{v13, v11}];
  Width = v14;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  if (Width >= CGRectGetWidth(v21))
  {
    v22.origin.x = v4;
    v22.origin.y = v6;
    v22.size.width = v8;
    v22.size.height = v10;
    Width = CGRectGetWidth(v22);
  }

  v16 = v12 + 4.0;
  v17 = v4;
  v18 = Width;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = DBIconView;
  [(DBIconView *)&v25 layoutSubviews];
  v3 = [(DBIconView *)self dropShadowView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(DBIconView *)self setDropShadowView:v5];

    v6 = [(DBIconView *)self dropShadowView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(DBIconView *)self dropShadowView];
    [(DBIconView *)self insertSubview:v7 atIndex:0];

    v8 = [(DBIconView *)self dropShadowView];
    [v8 setHidden:{-[DBIconView shadowHidden](self, "shadowHidden")}];

    v9 = [(DBIconView *)self iconImageSnapshot];
    [(DBIconView *)self _refreshDropShadowWithIconImage:v9];
  }

  [(DBIconView *)self _frameForLabelHighlight];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(DBIconView *)self labelLegibilityView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [(DBIconView *)self currentImageView];
  [v19 frame];
  v27 = CGRectInset(v26, -3.0, -3.0);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v24 = [(DBIconView *)self focusEffectView];
  [v24 setFrame:{x, y, width, height}];
}

- (CGRect)_frameForLabel
{
  v16.receiver = self;
  v16.super_class = DBIconView;
  [(DBIconView *)&v16 _frameForLabel];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(DBIconView *)self iconContentScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v10 = v9 + 4.0;
  [objc_opt_class() _labelVerticalSizeOffset];
  v12 = v11 + v10;
  v13 = v4;
  v14 = v6;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

+ (BOOL)_iconLabelsRequireBackground
{
  v2 = [a1 environmentConfiguration];
  v3 = [v2 wallpaperPreferences];
  v4 = [v3 currentWallpaper];
  v5 = [v4 traits];
  v6 = [v5 iconLabelsRequireBackground];

  return v6;
}

- (id)labelFont
{
  v3 = objc_opt_class();
  v4 = [(DBIconView *)self traitCollection];
  v5 = [v3 labelFontForTraitCollection:v4];

  return v5;
}

+ (UIEdgeInsets)minimumInterIconSpacing
{
  v2 = 5.0;
  v3 = 5.0;
  v4 = 5.0;
  v5 = 5.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (double)_labelVerticalSizeOffset
{
  [_labelFont pointSize];
  v3 = v2 + -12.0;
  result = 0.0;
  if (v3 >= 0.0)
  {
    [_labelFont pointSize];
    return (v5 + -12.0) * 0.5;
  }

  return result;
}

- (DBIconView)initWithConfigurationOptions:(unint64_t)a3 listLayoutProvider:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = DBIconView;
  v4 = [(DBIconView *)&v19 initWithConfigurationOptions:a3 listLayoutProvider:a4];
  if (v4)
  {
    v5 = [objc_opt_class() environmentConfiguration];
    v6 = [v5 wallpaperPreferences];

    v7 = [DBIconLabelBackdropView alloc];
    v8 = [v6 currentWallpaper];
    v9 = [(DBIconLabelBackdropView *)v7 initWithWallpaper:v8];
    labelLegibilityView = v4->_labelLegibilityView;
    v4->_labelLegibilityView = v9;

    [(DBIconView *)v4 addSubview:v4->_labelLegibilityView];
    [(DBIconView *)v4 iconContentScale];
    [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
    v12 = v11 + 3.0 + 0.5;
    v13 = [objc_alloc(MEMORY[0x277CF90E8]) initWithCornerRadius:v12];
    focusEffectView = v4->_focusEffectView;
    v4->_focusEffectView = v13;

    [(CPUIFocusEffectView *)v4->_focusEffectView updateEffectWithCornerRadius:v12 strokeWidth:3.0];
    [(CPUIFocusEffectView *)v4->_focusEffectView setHidden:1];
    [(DBIconView *)v4 addSubview:v4->_focusEffectView];
    v20[0] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v16 = [(DBIconView *)v4 registerForTraitChanges:v15 withTarget:v4 action:sel__updateLabel];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v4 selector:sel__wallpaperChanged_ name:*MEMORY[0x277CF91E8] object:0];
  }

  return v4;
}

- (void)cleanupAfterCrossfade
{
  v5.receiver = self;
  v5.super_class = DBIconView;
  [(DBIconView *)&v5 cleanupAfterCrossfade];
  objc_opt_class();
  v3 = [(DBIconView *)self _iconImageView];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    [v4 cleanupMaskViewAfterCrossfade];
  }
}

+ (double)maximumIconViewHeightForIconImageSize:(CGSize)a3
{
  height = a3.height;
  [a1 minimumInterIconSpacing];
  v7 = height + v5 * 0.5 + v6 * 0.5;
  [a1 _labelHeight];
  return v8 + v7;
}

+ (Class)defaultViewClassForAccessoryType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = objc_opt_self();
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___DBIconView;
    v3 = objc_msgSendSuper2(&v5, sel_defaultViewClassForAccessoryType_);
  }

  return v3;
}

+ (CGSize)maxLabelSizeForIconImageSize:(CGSize)a3
{
  v4 = a3.width + 28.0;
  v5 = [a1 environmentConfiguration];
  [v5 currentSafeViewAreaFrame];
  Width = CGRectGetWidth(v15);

  if (Width > 400.0)
  {
    v7 = (Width + -400.0) / 15.0;
    v4 = v4 + floorf(v7);
  }

  [a1 minimumInterIconSpacing];
  v10 = fmin(v4, 110.0) + -8.0 - (v8 * 0.5 + v9 * 0.5);
  [a1 _labelHeight];
  v12 = v11;
  v13 = v10;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setLabelHidden:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = DBIconView;
  [(DBIconView *)&v6 setLabelHidden:?];
  v5 = [(DBIconView *)self labelLegibilityView];
  [v5 setHidden:v3];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v13 = a3;
  [(DBIconView *)self _updateLabel];
  v5 = [v13 nextFocusedItem];
  v6 = [(DBIconView *)self focusEffectView];
  [v6 setHidden:v5 != self];

  v7 = [(DBIconView *)self focusEffectView];
  v8 = [v7 superview];

  if (v8 != self)
  {
    v9 = [(DBIconView *)self focusEffectView];
    v10 = [(DBIconView *)self labelLegibilityView];
    [(DBIconView *)self insertSubview:v9 aboveSubview:v10];

    [(DBIconView *)self setNeedsLayout];
  }

  v11 = [v13 nextFocusedView];

  if (v11 == self)
  {
    v12 = [(DBIconView *)self superview];
    [v12 bringSubviewToFront:self];
  }
}

- (void)configureLabelImageParametersBuilder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = DBIconView;
  [(DBIconView *)&v36 configureLabelImageParametersBuilder:v4];
  v5 = [(DBIconView *)self location];
  v6 = [v5 isEqualToString:*MEMORY[0x277D666D0]];

  if (v6)
  {
    [v4 setTextInsets:{4.0, 4.0, 2.0, 4.0}];
  }

  v7 = [(DBIconView *)self traitCollection];
  v8 = [v7 environmentInterfaceStyle];

  v9 = [(DBIconView *)self traitCollection];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __51__DBIconView_configureLabelImageParametersBuilder___block_invoke;
  v35[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  v35[4] = v8;
  v10 = [v9 traitCollectionByModifyingTraits:v35];

  v11 = [objc_opt_class() labelFontForTraitCollection:v10];
  [v4 setFont:v11];

  v12 = [objc_opt_class() textColorForTraitCollection:v10];
  [v4 setTextColor:v12];

  if ([(DBIconView *)self isFocused])
  {
    v13 = [objc_opt_class() focusTextColorForTraitCollection:v10];
    [v4 setTextColor:v13];
  }

  v14 = [(DBIconView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v14 scale];
    [v4 setScale:?];
  }

  v15 = [(DBIconView *)self labelLegibilityView];
  v16 = [v15 traitOverrides];
  [v16 setUserInterfaceStyle:v8];

  v17 = [objc_opt_class() environmentConfiguration];
  v18 = [v17 wallpaperPreferences];
  v19 = [v18 currentWallpaper];
  v20 = [(DBIconView *)self labelLegibilityView];
  [v20 setWallpaper:v19];

  v21 = [(DBIconView *)self isFocused];
  v22 = [(DBIconView *)self labelLegibilityView];
  [v22 setHighlighted:v21];

  [(DBIconView *)self _frameForLabelHighlight];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(DBIconView *)self labelLegibilityView];
  [v31 setFrame:{v24, v26, v28, v30}];

  v32 = [(DBIconView *)self focusEffectView];
  v33 = [v32 traitOverrides];
  [v33 setUserInterfaceStyle:v8];

  v34 = [(DBIconView *)self iconImageSnapshot];
  [(DBIconView *)self _refreshDropShadowWithIconImage:v34];
}

- (void)prepareForReuse
{
  v3 = [(DBIconView *)self focusEffectView];
  [v3 removeFromSuperview];

  v4.receiver = self;
  v4.super_class = DBIconView;
  [(DBIconView *)&v4 prepareForReuse];
  [(DBIconView *)self _updateLabel];
  [(DBIconView *)self _refreshDropShadowWithIconImage:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = DBIconView;
  [(DBIconView *)&v7 traitCollectionDidChange:a3];
  v4 = objc_opt_class();
  v5 = [(DBIconView *)self traitCollection];
  [v4 _updateCharacteristicsWithTraitCollection:v5];

  v6 = [(DBIconView *)self iconImageSnapshot];
  [(DBIconView *)self _refreshDropShadowWithIconImage:v6];

  [(DBIconView *)self _updateLabel];
}

- (void)_updateLabelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75C80] _currentTraitCollection];
  v6 = [(DBIconView *)self traitCollection];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v6];

  v7.receiver = self;
  v7.super_class = DBIconView;
  [(DBIconView *)&v7 _updateLabelAnimated:v3];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v5];
}

- (void)_configureIconImageView:(id)a3
{
  v5.receiver = self;
  v5.super_class = DBIconView;
  [(DBIconView *)&v5 _configureIconImageView:a3];
  v4 = [(DBIconView *)self iconImageSnapshot];
  [(DBIconView *)self _refreshDropShadowWithIconImage:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = DBIconView;
  [(DBIconView *)&v9 setHighlighted:?];
  [(CPUIFocusEffectView *)self->_focusEffectView setPressed:v3];
  objc_opt_class();
  v5 = [(DBIconView *)self _iconImageView];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [(DBIconView *)self isTouchDownInIcon]& v3;
    v8 = [v6 dimmingView];
    [v8 setHidden:v7 ^ 1u];
  }
}

- (double)effectiveBrightnessForControlState:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = DBIconView;
  [(DBIconView *)&v4 effectiveBrightnessForControlState:a3 & 0xFFFFFFFFFFFFFFFELL];
  return result;
}

- (void)_refreshDropShadowWithIconImage:(id)a3
{
  v4 = a3;
  v5 = [(DBIconView *)self dropShadowProvider];

  if (!v5)
  {
    v6 = objc_alloc_init(DBIconDropShadowProvider);
    [(DBIconView *)self setDropShadowProvider:v6];
  }

  v7 = [(DBIconView *)self dropShadowProvider];
  v8 = [v7 iconImage];

  if (v8 != v4)
  {
    v9 = [(DBIconView *)self dropShadowProvider];
    [v9 setIconImage:v4];
  }

  v10 = [(DBIconView *)self traitCollection];
  v11 = [v10 environmentInterfaceStyle];

  v12 = [(DBIconView *)self traitCollection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__DBIconView__refreshDropShadowWithIconImage___block_invoke;
  v20[3] = &unk_278F03280;
  v20[4] = self;
  v20[5] = v11;
  v13 = [v12 traitCollectionByModifyingTraits:v20];

  objc_initWeak(&location, self);
  v14 = [(DBIconView *)self dropShadowProvider];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__DBIconView__refreshDropShadowWithIconImage___block_invoke_2;
  v16[3] = &unk_278F032D0;
  objc_copyWeak(&v18, &location);
  v15 = v4;
  v17 = v15;
  [v14 imageForTraitCollection:v13 completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __46__DBIconView__refreshDropShadowWithIconImage___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([objc_opt_class() _iconLabelsRequireBackground])
  {
    v3 = 2;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  [v4 setUserInterfaceStyle:v3];
}

void __46__DBIconView__refreshDropShadowWithIconImage___block_invoke_2(uint64_t a1, CGImageRef image)
{
  CGImageRetain(image);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__DBIconView__refreshDropShadowWithIconImage___block_invoke_3;
  aBlock[3] = &unk_278F032A8;
  objc_copyWeak(v7, (a1 + 40));
  v7[1] = image;
  v6 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v4[2](v4);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }

  objc_destroyWeak(v7);
}

void __46__DBIconView__refreshDropShadowWithIconImage___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v29 = WeakRetained;
    Width = CGImageGetWidth(*(a1 + 48));
    Height = CGImageGetHeight(*(a1 + 48));
    [*(a1 + 32) scale];
    if (v5 > 0.0)
    {
      [*(a1 + 32) scale];
      v7 = Width / v6;
      [*(a1 + 32) scale];
      v9 = Height / v8;
      [v29 bounds];
      v11 = (v7 - v10) * -0.5;
      v12 = [v29 dropShadowView];
      [v12 setFrame:{v11, -8.0, v7, v9}];

      v13 = [v29 dropShadowView];
      v14 = [v13 layer];
      v15 = [v14 contents];

      v16 = [v29 dropShadowView];
      v17 = [v16 layer];
      [v17 setContents:*(a1 + 48)];

      if (!v15)
      {
        v18 = [v29 dropShadowView];
        v19 = [v18 layer];
        [v19 setOpacity:0.0];

        v20 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        v21 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
        [v20 setFromValue:v21];

        LODWORD(v22) = 1.0;
        v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
        [v20 setToValue:v23];

        [v20 setDuration:0.25];
        v24 = [v29 dropShadowView];
        v25 = [v24 layer];
        [v25 addAnimation:v20 forKey:@"opacity"];

        v26 = [v29 dropShadowView];
        v27 = [v26 layer];
        LODWORD(v28) = 1.0;
        [v27 setOpacity:v28];
      }
    }

    CGImageRelease(*(a1 + 48));
    WeakRetained = v29;
  }
}

- (void)_wallpaperChanged:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(DBIconView *)self traitCollection];
  [v4 _updateCharacteristicsWithTraitCollection:v5];

  v6 = [(DBIconView *)self iconImageSnapshot];
  [(DBIconView *)self _refreshDropShadowWithIconImage:v6];

  [(DBIconView *)self _updateLabel];
  v10 = [objc_opt_class() environmentConfiguration];
  v7 = [v10 wallpaperPreferences];
  v8 = [v7 currentWallpaper];
  v9 = [(DBIconView *)self labelLegibilityView];
  [v9 setWallpaper:v8];
}

+ (id)textColorForTraitCollection:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 labelColor];
  v6 = [v5 resolvedColorWithTraitCollection:v4];

  return v6;
}

+ (id)focusTextColorForTraitCollection:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 _carSystemFocusLabelColor];
  v6 = [v5 resolvedColorWithTraitCollection:v4];

  return v6;
}

+ (id)focusColorForTraitCollection:(id)a3
{
  if (focusColorForTraitCollection__onceToken != -1)
  {
    +[DBIconView focusColorForTraitCollection:];
  }

  v4 = focusColorForTraitCollection____focusColor;

  return v4;
}

uint64_t __43__DBIconView_focusColorForTraitCollection___block_invoke()
{
  v0 = [MEMORY[0x277D75348] _carSystemFocusColor];
  v1 = focusColorForTraitCollection____focusColor;
  focusColorForTraitCollection____focusColor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)labelFontForTraitCollection:(id)a3
{
  v4 = _labelFont;
  if (!_labelFont)
  {
    [a1 _updateCharacteristicsWithTraitCollection:a3];
    v4 = _labelFont;
  }

  return v4;
}

+ (void)_updateCharacteristicsWithTraitCollection:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:a3];
  v12 = *MEMORY[0x277D74430];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74418]];
  v13[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = *MEMORY[0x277D74380];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v3 fontDescriptorByAddingAttributes:v6];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  v9 = _labelFont;
  _labelFont = v8;
}

- (void)setShadowHidden:(BOOL)a3
{
  if (self->_shadowHidden != a3)
  {
    self->_shadowHidden = a3;
    v4 = [(DBIconView *)self dropShadowView];
    [v4 setHidden:self->_shadowHidden];
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DBIconView;
  return *MEMORY[0x277D76548] | [(DBIconView *)&v3 accessibilityTraits];
}

@end