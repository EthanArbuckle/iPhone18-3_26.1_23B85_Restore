@interface CSQuickActionImageGlyphView
- (CSQuickActionImageGlyphView)initWithSystemImageName:(id)a3 selectedSystemImageName:(id)a4 symbolScaleValue:(double)a5 buttonDiameter:(double)a6 symbolOnColor:(id)a7;
- (id)_systemImageWithName:(id)a3;
- (id)_systemImageWithName:(id)a3 configuration:(id)a4;
- (void)_updateImageAppearance;
- (void)_updateTint;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAppearance:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation CSQuickActionImageGlyphView

- (CSQuickActionImageGlyphView)initWithSystemImageName:(id)a3 selectedSystemImageName:(id)a4 symbolScaleValue:(double)a5 buttonDiameter:(double)a6 symbolOnColor:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = CSQuickActionImageGlyphView;
  v16 = [(CSQuickActionImageGlyphView *)&v28 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v17 = v16;
  if (v16)
  {
    [(CSQuickActionImageGlyphView *)v16 setOpaque:0];
    [(CSQuickActionImageGlyphView *)v17 setContentMode:1];
    objc_storeStrong(&v17->_imageName, a3);
    objc_storeStrong(&v17->_selectedImageName, a4);
    v18 = [(CSQuickActionImageGlyphView *)v17 _systemImageWithName:v13];
    image = v17->_image;
    v17->_image = v18;

    v20 = [(CSQuickActionImageGlyphView *)v17 _systemImageWithName:v14];
    selectedImage = v17->_selectedImage;
    v17->_selectedImage = v20;

    [(CSQuickActionImageGlyphView *)v17 _updateImageAppearance];
    v17->_symbolScaleValue = a5;
    v17->_buttonDiameter = a6;
    v22 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v23 = [v15 resolvedColorWithTraitCollection:v22];
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
    v4 = onColor;
  }

  else
  {
    v4 = [MEMORY[0x277D75348] darkTextColor];
  }

  v12 = v4;
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

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3 || ([(CSQuickActionImageGlyphView *)self image], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_selected = a3;

    [(CSQuickActionImageGlyphView *)self _updateImageAppearance];
  }
}

- (void)setAppearance:(int64_t)a3
{
  if (self->_appearance != a3)
  {
    self->_appearance = a3;
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

- (id)_systemImageWithName:(id)a3
{
  v4 = a3;
  v5 = [(CSQuickActionImageGlyphView *)self preferredSymbolConfiguration];
  v6 = [(CSQuickActionImageGlyphView *)self _systemImageWithName:v4 configuration:v5];

  return v6;
}

- (id)_systemImageWithName:(id)a3 configuration:(id)a4
{
  v4 = [MEMORY[0x277D755B8] systemImageNamed:a3 withConfiguration:a4];
  v5 = [v4 _imageThatSuppressesAccessibilityHairlineThickening];

  return v5;
}

@end