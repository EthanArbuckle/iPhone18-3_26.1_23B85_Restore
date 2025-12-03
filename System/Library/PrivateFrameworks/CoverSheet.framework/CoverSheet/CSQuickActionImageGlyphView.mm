@interface CSQuickActionImageGlyphView
- (CSQuickActionImageGlyphView)initWithSystemImageName:(id)name selectedSystemImageName:(id)imageName symbolScaleValue:(double)value buttonDiameter:(double)diameter symbolOnColor:(id)color;
- (id)_systemImageWithName:(id)name;
- (id)_systemImageWithName:(id)name configuration:(id)configuration;
- (void)_updateImageAppearance;
- (void)_updateTint;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAppearance:(int64_t)appearance;
- (void)setSelected:(BOOL)selected;
@end

@implementation CSQuickActionImageGlyphView

- (CSQuickActionImageGlyphView)initWithSystemImageName:(id)name selectedSystemImageName:(id)imageName symbolScaleValue:(double)value buttonDiameter:(double)diameter symbolOnColor:(id)color
{
  nameCopy = name;
  imageNameCopy = imageName;
  colorCopy = color;
  v28.receiver = self;
  v28.super_class = CSQuickActionImageGlyphView;
  v16 = [(CSQuickActionImageGlyphView *)&v28 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v17 = v16;
  if (v16)
  {
    [(CSQuickActionImageGlyphView *)v16 setOpaque:0];
    [(CSQuickActionImageGlyphView *)v17 setContentMode:1];
    objc_storeStrong(&v17->_imageName, name);
    objc_storeStrong(&v17->_selectedImageName, imageName);
    v18 = [(CSQuickActionImageGlyphView *)v17 _systemImageWithName:nameCopy];
    image = v17->_image;
    v17->_image = v18;

    v20 = [(CSQuickActionImageGlyphView *)v17 _systemImageWithName:imageNameCopy];
    selectedImage = v17->_selectedImage;
    v17->_selectedImage = v20;

    [(CSQuickActionImageGlyphView *)v17 _updateImageAppearance];
    v17->_symbolScaleValue = value;
    v17->_buttonDiameter = diameter;
    v22 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v23 = [colorCopy resolvedColorWithTraitCollection:v22];
    onColor = v17->_onColor;
    v17->_onColor = v23;

    v25 = objc_alloc_init(MEMORY[0x277D65FF8]);
    miscellaneousSettings = v17->_miscellaneousSettings;
    v17->_miscellaneousSettings = v25;
  }

  return v17;
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_defaultsObserverToken invalidate];
  v3.receiver = self;
  v3.super_class = CSQuickActionImageGlyphView;
  [(CSQuickActionImageGlyphView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSQuickActionImageGlyphView;
  [(CSQuickActionImageGlyphView *)&v4 layoutSubviews];
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:3 scale:self->_buttonDiameter * self->_symbolScaleValue];
  [(CSQuickActionImageGlyphView *)self setPreferredSymbolConfiguration:v3];
}

- (void)_updateTint
{
  onColor = self->_onColor;
  if (onColor)
  {
    darkTextColor = onColor;
  }

  else
  {
    darkTextColor = [MEMORY[0x277D75348] darkTextColor];
  }

  v12 = darkTextColor;
  if (_UISolariumEnabled())
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;
  if ([(CSQuickActionImageGlyphView *)self isSelected])
  {
    v6 = v12;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = v7;
  if (!self->_selected)
  {
    appearance = self->_appearance;
    if (appearance == 2)
    {
      v10 = 0.25;
    }

    else
    {
      if (appearance != 1)
      {
        goto LABEL_16;
      }

      v10 = 0.5;
    }

    v11 = [(UIColor *)v7 colorWithAlphaComponent:v10];

    v8 = v11;
  }

LABEL_16:
  [(CSQuickActionImageGlyphView *)self setTintColor:v8];
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected || ([(CSQuickActionImageGlyphView *)self image], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_selected = selected;

    [(CSQuickActionImageGlyphView *)self _updateImageAppearance];
  }
}

- (void)setAppearance:(int64_t)appearance
{
  if (self->_appearance != appearance)
  {
    self->_appearance = appearance;
    [(CSQuickActionImageGlyphView *)self _updateImageAppearance];
  }
}

- (void)_updateImageAppearance
{
  if (!self->_selected || (image = self->_selectedImage) == 0)
  {
    image = self->_image;
  }

  [(CSQuickActionImageGlyphView *)self setImage:image];

  [(CSQuickActionImageGlyphView *)self _updateTint];
}

- (id)_systemImageWithName:(id)name
{
  nameCopy = name;
  preferredSymbolConfiguration = [(CSQuickActionImageGlyphView *)self preferredSymbolConfiguration];
  v6 = [(CSQuickActionImageGlyphView *)self _systemImageWithName:nameCopy configuration:preferredSymbolConfiguration];

  return v6;
}

- (id)_systemImageWithName:(id)name configuration:(id)configuration
{
  v4 = [MEMORY[0x277D755B8] systemImageNamed:name withConfiguration:configuration];
  _imageThatSuppressesAccessibilityHairlineThickening = [v4 _imageThatSuppressesAccessibilityHairlineThickening];

  return _imageThatSuppressesAccessibilityHairlineThickening;
}

@end