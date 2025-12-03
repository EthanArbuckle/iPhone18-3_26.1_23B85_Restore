@interface DBIconView
+ (BOOL)_iconLabelsRequireBackground;
+ (CGSize)maxLabelSizeForIconImageSize:(CGSize)size;
+ (Class)defaultViewClassForAccessoryType:(int64_t)type;
+ (UIEdgeInsets)minimumInterIconSpacing;
+ (double)_labelVerticalSizeOffset;
+ (double)maximumIconViewHeightForIconImageSize:(CGSize)size;
+ (id)focusColorForTraitCollection:(id)collection;
+ (id)focusTextColorForTraitCollection:(id)collection;
+ (id)labelFontForTraitCollection:(id)collection;
+ (id)textColorForTraitCollection:(id)collection;
+ (void)_updateCharacteristicsWithTraitCollection:(id)collection;
- (CGRect)_frameForLabel;
- (CGRect)_frameForLabelHighlight;
- (DBIconView)initWithConfigurationOptions:(unint64_t)options listLayoutProvider:(id)provider;
- (double)effectiveBrightnessForControlState:(unint64_t)state;
- (id)labelFont;
- (unint64_t)accessibilityTraits;
- (void)_configureIconImageView:(id)view;
- (void)_refreshDropShadowWithIconImage:(id)image;
- (void)_updateLabelAnimated:(BOOL)animated;
- (void)_wallpaperChanged:(id)changed;
- (void)cleanupAfterCrossfade;
- (void)configureLabelImageParametersBuilder:(id)builder;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLabelHidden:(BOOL)hidden;
- (void)setShadowHidden:(BOOL)hidden;
- (void)traitCollectionDidChange:(id)change;
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
  dropShadowView = [(DBIconView *)self dropShadowView];

  if (!dropShadowView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(DBIconView *)self setDropShadowView:v5];

    dropShadowView2 = [(DBIconView *)self dropShadowView];
    [dropShadowView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    dropShadowView3 = [(DBIconView *)self dropShadowView];
    [(DBIconView *)self insertSubview:dropShadowView3 atIndex:0];

    dropShadowView4 = [(DBIconView *)self dropShadowView];
    [dropShadowView4 setHidden:{-[DBIconView shadowHidden](self, "shadowHidden")}];

    iconImageSnapshot = [(DBIconView *)self iconImageSnapshot];
    [(DBIconView *)self _refreshDropShadowWithIconImage:iconImageSnapshot];
  }

  [(DBIconView *)self _frameForLabelHighlight];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  labelLegibilityView = [(DBIconView *)self labelLegibilityView];
  [labelLegibilityView setFrame:{v11, v13, v15, v17}];

  currentImageView = [(DBIconView *)self currentImageView];
  [currentImageView frame];
  v27 = CGRectInset(v26, -3.0, -3.0);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  focusEffectView = [(DBIconView *)self focusEffectView];
  [focusEffectView setFrame:{x, y, width, height}];
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
  environmentConfiguration = [self environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];
  traits = [currentWallpaper traits];
  iconLabelsRequireBackground = [traits iconLabelsRequireBackground];

  return iconLabelsRequireBackground;
}

- (id)labelFont
{
  v3 = objc_opt_class();
  traitCollection = [(DBIconView *)self traitCollection];
  v5 = [v3 labelFontForTraitCollection:traitCollection];

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

- (DBIconView)initWithConfigurationOptions:(unint64_t)options listLayoutProvider:(id)provider
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = DBIconView;
  v4 = [(DBIconView *)&v19 initWithConfigurationOptions:options listLayoutProvider:provider];
  if (v4)
  {
    environmentConfiguration = [objc_opt_class() environmentConfiguration];
    wallpaperPreferences = [environmentConfiguration wallpaperPreferences];

    v7 = [DBIconLabelBackdropView alloc];
    currentWallpaper = [wallpaperPreferences currentWallpaper];
    v9 = [(DBIconLabelBackdropView *)v7 initWithWallpaper:currentWallpaper];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__wallpaperChanged_ name:*MEMORY[0x277CF91E8] object:0];
  }

  return v4;
}

- (void)cleanupAfterCrossfade
{
  v5.receiver = self;
  v5.super_class = DBIconView;
  [(DBIconView *)&v5 cleanupAfterCrossfade];
  objc_opt_class();
  _iconImageView = [(DBIconView *)self _iconImageView];
  if (_iconImageView && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = _iconImageView;
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

+ (double)maximumIconViewHeightForIconImageSize:(CGSize)size
{
  height = size.height;
  [self minimumInterIconSpacing];
  v7 = height + v5 * 0.5 + v6 * 0.5;
  [self _labelHeight];
  return v8 + v7;
}

+ (Class)defaultViewClassForAccessoryType:(int64_t)type
{
  if (type == 1)
  {
    v3 = objc_opt_self();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___DBIconView;
    v3 = objc_msgSendSuper2(&v5, sel_defaultViewClassForAccessoryType_);
  }

  return v3;
}

+ (CGSize)maxLabelSizeForIconImageSize:(CGSize)size
{
  v4 = size.width + 28.0;
  environmentConfiguration = [self environmentConfiguration];
  [environmentConfiguration currentSafeViewAreaFrame];
  Width = CGRectGetWidth(v15);

  if (Width > 400.0)
  {
    v7 = (Width + -400.0) / 15.0;
    v4 = v4 + floorf(v7);
  }

  [self minimumInterIconSpacing];
  v10 = fmin(v4, 110.0) + -8.0 - (v8 * 0.5 + v9 * 0.5);
  [self _labelHeight];
  v12 = v11;
  v13 = v10;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setLabelHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v6.receiver = self;
  v6.super_class = DBIconView;
  [(DBIconView *)&v6 setLabelHidden:?];
  labelLegibilityView = [(DBIconView *)self labelLegibilityView];
  [labelLegibilityView setHidden:hiddenCopy];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  [(DBIconView *)self _updateLabel];
  nextFocusedItem = [contextCopy nextFocusedItem];
  focusEffectView = [(DBIconView *)self focusEffectView];
  [focusEffectView setHidden:nextFocusedItem != self];

  focusEffectView2 = [(DBIconView *)self focusEffectView];
  superview = [focusEffectView2 superview];

  if (superview != self)
  {
    focusEffectView3 = [(DBIconView *)self focusEffectView];
    labelLegibilityView = [(DBIconView *)self labelLegibilityView];
    [(DBIconView *)self insertSubview:focusEffectView3 aboveSubview:labelLegibilityView];

    [(DBIconView *)self setNeedsLayout];
  }

  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    superview2 = [(DBIconView *)self superview];
    [superview2 bringSubviewToFront:self];
  }
}

- (void)configureLabelImageParametersBuilder:(id)builder
{
  builderCopy = builder;
  v36.receiver = self;
  v36.super_class = DBIconView;
  [(DBIconView *)&v36 configureLabelImageParametersBuilder:builderCopy];
  location = [(DBIconView *)self location];
  v6 = [location isEqualToString:*MEMORY[0x277D666D0]];

  if (v6)
  {
    [builderCopy setTextInsets:{4.0, 4.0, 2.0, 4.0}];
  }

  traitCollection = [(DBIconView *)self traitCollection];
  environmentInterfaceStyle = [traitCollection environmentInterfaceStyle];

  traitCollection2 = [(DBIconView *)self traitCollection];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __51__DBIconView_configureLabelImageParametersBuilder___block_invoke;
  v35[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  v35[4] = environmentInterfaceStyle;
  v10 = [traitCollection2 traitCollectionByModifyingTraits:v35];

  v11 = [objc_opt_class() labelFontForTraitCollection:v10];
  [builderCopy setFont:v11];

  v12 = [objc_opt_class() textColorForTraitCollection:v10];
  [builderCopy setTextColor:v12];

  if ([(DBIconView *)self isFocused])
  {
    v13 = [objc_opt_class() focusTextColorForTraitCollection:v10];
    [builderCopy setTextColor:v13];
  }

  delegate = [(DBIconView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate scale];
    [builderCopy setScale:?];
  }

  labelLegibilityView = [(DBIconView *)self labelLegibilityView];
  traitOverrides = [labelLegibilityView traitOverrides];
  [traitOverrides setUserInterfaceStyle:environmentInterfaceStyle];

  environmentConfiguration = [objc_opt_class() environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];
  labelLegibilityView2 = [(DBIconView *)self labelLegibilityView];
  [labelLegibilityView2 setWallpaper:currentWallpaper];

  isFocused = [(DBIconView *)self isFocused];
  labelLegibilityView3 = [(DBIconView *)self labelLegibilityView];
  [labelLegibilityView3 setHighlighted:isFocused];

  [(DBIconView *)self _frameForLabelHighlight];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  labelLegibilityView4 = [(DBIconView *)self labelLegibilityView];
  [labelLegibilityView4 setFrame:{v24, v26, v28, v30}];

  focusEffectView = [(DBIconView *)self focusEffectView];
  traitOverrides2 = [focusEffectView traitOverrides];
  [traitOverrides2 setUserInterfaceStyle:environmentInterfaceStyle];

  iconImageSnapshot = [(DBIconView *)self iconImageSnapshot];
  [(DBIconView *)self _refreshDropShadowWithIconImage:iconImageSnapshot];
}

- (void)prepareForReuse
{
  focusEffectView = [(DBIconView *)self focusEffectView];
  [focusEffectView removeFromSuperview];

  v4.receiver = self;
  v4.super_class = DBIconView;
  [(DBIconView *)&v4 prepareForReuse];
  [(DBIconView *)self _updateLabel];
  [(DBIconView *)self _refreshDropShadowWithIconImage:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = DBIconView;
  [(DBIconView *)&v7 traitCollectionDidChange:change];
  v4 = objc_opt_class();
  traitCollection = [(DBIconView *)self traitCollection];
  [v4 _updateCharacteristicsWithTraitCollection:traitCollection];

  iconImageSnapshot = [(DBIconView *)self iconImageSnapshot];
  [(DBIconView *)self _refreshDropShadowWithIconImage:iconImageSnapshot];

  [(DBIconView *)self _updateLabel];
}

- (void)_updateLabelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  traitCollection = [(DBIconView *)self traitCollection];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:traitCollection];

  v7.receiver = self;
  v7.super_class = DBIconView;
  [(DBIconView *)&v7 _updateLabelAnimated:animatedCopy];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:_currentTraitCollection];
}

- (void)_configureIconImageView:(id)view
{
  v5.receiver = self;
  v5.super_class = DBIconView;
  [(DBIconView *)&v5 _configureIconImageView:view];
  iconImageSnapshot = [(DBIconView *)self iconImageSnapshot];
  [(DBIconView *)self _refreshDropShadowWithIconImage:iconImageSnapshot];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = DBIconView;
  [(DBIconView *)&v9 setHighlighted:?];
  [(CPUIFocusEffectView *)self->_focusEffectView setPressed:highlightedCopy];
  objc_opt_class();
  _iconImageView = [(DBIconView *)self _iconImageView];
  if (_iconImageView && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = _iconImageView;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [(DBIconView *)self isTouchDownInIcon]& highlightedCopy;
    dimmingView = [v6 dimmingView];
    [dimmingView setHidden:v7 ^ 1u];
  }
}

- (double)effectiveBrightnessForControlState:(unint64_t)state
{
  v4.receiver = self;
  v4.super_class = DBIconView;
  [(DBIconView *)&v4 effectiveBrightnessForControlState:state & 0xFFFFFFFFFFFFFFFELL];
  return result;
}

- (void)_refreshDropShadowWithIconImage:(id)image
{
  imageCopy = image;
  dropShadowProvider = [(DBIconView *)self dropShadowProvider];

  if (!dropShadowProvider)
  {
    v6 = objc_alloc_init(DBIconDropShadowProvider);
    [(DBIconView *)self setDropShadowProvider:v6];
  }

  dropShadowProvider2 = [(DBIconView *)self dropShadowProvider];
  iconImage = [dropShadowProvider2 iconImage];

  if (iconImage != imageCopy)
  {
    dropShadowProvider3 = [(DBIconView *)self dropShadowProvider];
    [dropShadowProvider3 setIconImage:imageCopy];
  }

  traitCollection = [(DBIconView *)self traitCollection];
  environmentInterfaceStyle = [traitCollection environmentInterfaceStyle];

  traitCollection2 = [(DBIconView *)self traitCollection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__DBIconView__refreshDropShadowWithIconImage___block_invoke;
  v20[3] = &unk_278F03280;
  v20[4] = self;
  v20[5] = environmentInterfaceStyle;
  v13 = [traitCollection2 traitCollectionByModifyingTraits:v20];

  objc_initWeak(&location, self);
  dropShadowProvider4 = [(DBIconView *)self dropShadowProvider];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__DBIconView__refreshDropShadowWithIconImage___block_invoke_2;
  v16[3] = &unk_278F032D0;
  objc_copyWeak(&v18, &location);
  v15 = imageCopy;
  v17 = v15;
  [dropShadowProvider4 imageForTraitCollection:v13 completion:v16];

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

- (void)_wallpaperChanged:(id)changed
{
  v4 = objc_opt_class();
  traitCollection = [(DBIconView *)self traitCollection];
  [v4 _updateCharacteristicsWithTraitCollection:traitCollection];

  iconImageSnapshot = [(DBIconView *)self iconImageSnapshot];
  [(DBIconView *)self _refreshDropShadowWithIconImage:iconImageSnapshot];

  [(DBIconView *)self _updateLabel];
  environmentConfiguration = [objc_opt_class() environmentConfiguration];
  wallpaperPreferences = [environmentConfiguration wallpaperPreferences];
  currentWallpaper = [wallpaperPreferences currentWallpaper];
  labelLegibilityView = [(DBIconView *)self labelLegibilityView];
  [labelLegibilityView setWallpaper:currentWallpaper];
}

+ (id)textColorForTraitCollection:(id)collection
{
  v3 = MEMORY[0x277D75348];
  collectionCopy = collection;
  labelColor = [v3 labelColor];
  v6 = [labelColor resolvedColorWithTraitCollection:collectionCopy];

  return v6;
}

+ (id)focusTextColorForTraitCollection:(id)collection
{
  v3 = MEMORY[0x277D75348];
  collectionCopy = collection;
  _carSystemFocusLabelColor = [v3 _carSystemFocusLabelColor];
  v6 = [_carSystemFocusLabelColor resolvedColorWithTraitCollection:collectionCopy];

  return v6;
}

+ (id)focusColorForTraitCollection:(id)collection
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

+ (id)labelFontForTraitCollection:(id)collection
{
  v4 = _labelFont;
  if (!_labelFont)
  {
    [self _updateCharacteristicsWithTraitCollection:collection];
    v4 = _labelFont;
  }

  return v4;
}

+ (void)_updateCharacteristicsWithTraitCollection:(id)collection
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:collection];
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

- (void)setShadowHidden:(BOOL)hidden
{
  if (self->_shadowHidden != hidden)
  {
    self->_shadowHidden = hidden;
    dropShadowView = [(DBIconView *)self dropShadowView];
    [dropShadowView setHidden:self->_shadowHidden];
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DBIconView;
  return *MEMORY[0x277D76548] | [(DBIconView *)&v3 accessibilityTraits];
}

@end