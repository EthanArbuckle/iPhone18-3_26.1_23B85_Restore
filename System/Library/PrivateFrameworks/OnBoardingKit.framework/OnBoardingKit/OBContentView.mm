@interface OBContentView
- (BOOL)_colorIsDefault:(id)default;
- (OBContentView)initWithFrame:(CGRect)frame aboveHeaderLayout:(BOOL)layout;
- (UIColor)darkColor;
- (UIColor)lightColor;
- (UIView)bleedView;
- (id)_defaultColorForCurrentTraitCollection;
- (void)setBackgroundColor:(id)color;
- (void)setBleedView:(id)view;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBContentView

- (OBContentView)initWithFrame:(CGRect)frame aboveHeaderLayout:(BOOL)layout
{
  layoutCopy = layout;
  v10.receiver = self;
  v10.super_class = OBContentView;
  v5 = [(OBContentView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_aboveHeaderLayout = layoutCopy;
    v5->_customizedBackgroundColor = 0;
    if (layoutCopy)
    {
      _defaultColorForCurrentTraitCollection = [(OBContentView *)v5 _defaultColorForCurrentTraitCollection];
      v9.receiver = v6;
      v9.super_class = OBContentView;
      [(OBContentView *)&v9 setBackgroundColor:_defaultColorForCurrentTraitCollection];
    }
  }

  return v6;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  [(OBContentView *)self setCustomizedBackgroundColor:1];
  v6.receiver = self;
  v6.super_class = OBContentView;
  [(OBContentView *)&v6 setBackgroundColor:colorCopy];
  bleedView = [(OBContentView *)self bleedView];
  [bleedView setBackgroundColor:colorCopy];
}

- (void)setBleedView:(id)view
{
  objc_storeWeak(&self->_bleedView, view);
  backgroundColor = [(OBContentView *)self backgroundColor];
  WeakRetained = objc_loadWeakRetained(&self->_bleedView);
  [WeakRetained setBackgroundColor:backgroundColor];
}

- (UIColor)darkColor
{
  darkColor = self->_darkColor;
  if (!darkColor)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v5 = self->_darkColor;
    self->_darkColor = secondarySystemBackgroundColor;

    darkColor = self->_darkColor;
  }

  return darkColor;
}

- (UIColor)lightColor
{
  lightColor = self->_lightColor;
  if (!lightColor)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v5 = self->_lightColor;
    self->_lightColor = secondarySystemBackgroundColor;

    lightColor = self->_lightColor;
  }

  return lightColor;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = OBContentView;
  [(OBContentView *)&v8 traitCollectionDidChange:change];
  if (![(OBContentView *)self customizedBackgroundColor])
  {
    if ([(OBContentView *)self aboveHeaderLayout])
    {
      _defaultColorForCurrentTraitCollection = [(OBContentView *)self _defaultColorForCurrentTraitCollection];
      v7.receiver = self;
      v7.super_class = OBContentView;
      [(OBContentView *)&v7 setBackgroundColor:_defaultColorForCurrentTraitCollection];

      _defaultColorForCurrentTraitCollection2 = [(OBContentView *)self _defaultColorForCurrentTraitCollection];
      bleedView = [(OBContentView *)self bleedView];
      [bleedView setBackgroundColor:_defaultColorForCurrentTraitCollection2];
    }
  }
}

- (id)_defaultColorForCurrentTraitCollection
{
  traitCollection = [(OBContentView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    [(OBContentView *)self darkColor];
  }

  else
  {
    [(OBContentView *)self lightColor];
  }
  v5 = ;

  return v5;
}

- (BOOL)_colorIsDefault:(id)default
{
  defaultCopy = default;
  defaultCopy2 = default;
  cGColor = [defaultCopy2 CGColor];
  darkColor = [(OBContentView *)self darkColor];
  LOBYTE(cGColor) = CGColorEqualToColor(cGColor, [darkColor CGColor]);

  cGColor2 = [defaultCopy2 CGColor];
  lightColor = [(OBContentView *)self lightColor];
  LOBYTE(self) = CGColorEqualToColor(cGColor2, [lightColor CGColor]);

  return (cGColor | self) & 1;
}

- (UIView)bleedView
{
  WeakRetained = objc_loadWeakRetained(&self->_bleedView);

  return WeakRetained;
}

@end