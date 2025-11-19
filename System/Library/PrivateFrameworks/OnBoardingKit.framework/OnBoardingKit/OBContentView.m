@interface OBContentView
- (BOOL)_colorIsDefault:(id)a3;
- (OBContentView)initWithFrame:(CGRect)a3 aboveHeaderLayout:(BOOL)a4;
- (UIColor)darkColor;
- (UIColor)lightColor;
- (UIView)bleedView;
- (id)_defaultColorForCurrentTraitCollection;
- (void)setBackgroundColor:(id)a3;
- (void)setBleedView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBContentView

- (OBContentView)initWithFrame:(CGRect)a3 aboveHeaderLayout:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = OBContentView;
  v5 = [(OBContentView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_aboveHeaderLayout = v4;
    v5->_customizedBackgroundColor = 0;
    if (v4)
    {
      v7 = [(OBContentView *)v5 _defaultColorForCurrentTraitCollection];
      v9.receiver = v6;
      v9.super_class = OBContentView;
      [(OBContentView *)&v9 setBackgroundColor:v7];
    }
  }

  return v6;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  [(OBContentView *)self setCustomizedBackgroundColor:1];
  v6.receiver = self;
  v6.super_class = OBContentView;
  [(OBContentView *)&v6 setBackgroundColor:v4];
  v5 = [(OBContentView *)self bleedView];
  [v5 setBackgroundColor:v4];
}

- (void)setBleedView:(id)a3
{
  objc_storeWeak(&self->_bleedView, a3);
  v5 = [(OBContentView *)self backgroundColor];
  WeakRetained = objc_loadWeakRetained(&self->_bleedView);
  [WeakRetained setBackgroundColor:v5];
}

- (UIColor)darkColor
{
  darkColor = self->_darkColor;
  if (!darkColor)
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v5 = self->_darkColor;
    self->_darkColor = v4;

    darkColor = self->_darkColor;
  }

  return darkColor;
}

- (UIColor)lightColor
{
  lightColor = self->_lightColor;
  if (!lightColor)
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v5 = self->_lightColor;
    self->_lightColor = v4;

    lightColor = self->_lightColor;
  }

  return lightColor;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = OBContentView;
  [(OBContentView *)&v8 traitCollectionDidChange:a3];
  if (![(OBContentView *)self customizedBackgroundColor])
  {
    if ([(OBContentView *)self aboveHeaderLayout])
    {
      v4 = [(OBContentView *)self _defaultColorForCurrentTraitCollection];
      v7.receiver = self;
      v7.super_class = OBContentView;
      [(OBContentView *)&v7 setBackgroundColor:v4];

      v5 = [(OBContentView *)self _defaultColorForCurrentTraitCollection];
      v6 = [(OBContentView *)self bleedView];
      [v6 setBackgroundColor:v5];
    }
  }
}

- (id)_defaultColorForCurrentTraitCollection
{
  v3 = [(OBContentView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
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

- (BOOL)_colorIsDefault:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 CGColor];
  v8 = [(OBContentView *)self darkColor];
  LOBYTE(v7) = CGColorEqualToColor(v7, [v8 CGColor]);

  v9 = [v6 CGColor];
  v10 = [(OBContentView *)self lightColor];
  LOBYTE(self) = CGColorEqualToColor(v9, [v10 CGColor]);

  return (v7 | self) & 1;
}

- (UIView)bleedView
{
  WeakRetained = objc_loadWeakRetained(&self->_bleedView);

  return WeakRetained;
}

@end