@interface CSQuickActionControlGlyphView
- (CSQuickActionControlGlyphView)initWithControlInstance:(id)instance symbolScaleValue:(double)value;
- (void)_updateAppearance;
- (void)_updateControlConfigurationColorSchemeWithTraitCollection:(id)collection previousTraitCollection:(id)traitCollection;
- (void)layoutSubviews;
- (void)setAppearance:(int64_t)appearance;
- (void)setSelected:(BOOL)selected;
@end

@implementation CSQuickActionControlGlyphView

- (CSQuickActionControlGlyphView)initWithControlInstance:(id)instance symbolScaleValue:(double)value
{
  v19[2] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v18.receiver = self;
  v18.super_class = CSQuickActionControlGlyphView;
  v8 = [(CSQuickActionControlGlyphView *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlInstance, instance);
    iconView = [(CHUISControlInstance *)v9->_controlInstance iconView];
    iconView = v9->_iconView;
    v9->_iconView = iconView;

    if (_UISolariumEnabled())
    {
      v12 = objc_opt_self();
      v19[0] = v12;
      v13 = objc_opt_self();
      v19[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v15 = [(CSQuickActionControlGlyphView *)v9 registerForTraitChanges:v14 withHandler:&__block_literal_global_23];

      traitCollection = [(CSQuickActionControlGlyphView *)v9 traitCollection];
      v9->_cachedInterfaceStyle = 0;
      [(CSQuickActionControlGlyphView *)v9 _updateControlConfigurationColorSchemeWithTraitCollection:traitCollection previousTraitCollection:0];
    }

    else
    {
      [(CHUISControlIconView *)v9->_iconView setOverrideUserInterfaceStyle:1];
    }

    [(CSQuickActionControlGlyphView *)v9 addSubview:v9->_iconView];
    [(CSQuickActionControlGlyphView *)v9 _updateAppearance];
    v9->_symbolScaleValue = value;
  }

  return v9;
}

void __74__CSQuickActionControlGlyphView_initWithControlInstance_symbolScaleValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 traitCollection];
  [v5 _updateControlConfigurationColorSchemeWithTraitCollection:v6 previousTraitCollection:v4];
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(CSQuickActionControlGlyphView *)self _updateAppearance];
  }
}

- (void)setAppearance:(int64_t)appearance
{
  if (self->_appearance != appearance)
  {
    self->_appearance = appearance;
    [(CSQuickActionControlGlyphView *)self _updateAppearance];
  }
}

- (void)_updateAppearance
{
  appearance = self->_appearance;
  v4 = 1.0;
  if (appearance == 1)
  {
    v4 = 0.5;
  }

  if (appearance == 2)
  {
    v4 = 0.25;
  }

  [(CHUISControlIconView *)self->_iconView setAlpha:v4];
  if (_UISolariumEnabled())
  {
    iconView = self->_iconView;
    if (self->_selected)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }

    [(CHUISControlIconView *)iconView setStyle:v6];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CSQuickActionControlGlyphView;
  [(CSQuickActionControlGlyphView *)&v6 layoutSubviews];
  [(CSQuickActionControlGlyphView *)self bounds];
  v4 = v3;
  [(CHUISControlIconView *)self->_iconView setFrame:?];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:v4 * self->_symbolScaleValue weight:*MEMORY[0x277D74420]];
  [(CHUISControlIconView *)self->_iconView setFont:v5];
}

- (void)_updateControlConfigurationColorSchemeWithTraitCollection:(id)collection previousTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  if ([collectionCopy _backlightLuminance] == 2)
  {
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    if (userInterfaceStyle != self->_cachedInterfaceStyle)
    {
      self->_cachedInterfaceStyle = userInterfaceStyle;
      controlInstance = self->_controlInstance;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __115__CSQuickActionControlGlyphView__updateControlConfigurationColorSchemeWithTraitCollection_previousTraitCollection___block_invoke;
      v8[3] = &unk_27838DB08;
      v8[4] = self;
      [(CHUISControlInstance *)controlInstance modifyConfiguration:v8];
    }
  }
}

uint64_t __115__CSQuickActionControlGlyphView__updateControlConfigurationColorSchemeWithTraitCollection_previousTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 432) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [a2 setPreferredColorScheme:v2];
}

@end