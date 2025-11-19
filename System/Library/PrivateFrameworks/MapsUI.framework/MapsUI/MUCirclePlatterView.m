@interface MUCirclePlatterView
+ (id)defaultPlatterView;
- (MUCirclePlatterView)initWithFrame:(CGRect)a3;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)setGlyph:(id)a3;
- (void)setGlyphColor:(id)a3;
- (void)setGlyphFont:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateGlyph;
@end

@implementation MUCirclePlatterView

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUCirclePlatterView;
  [(MUCirclePlatterView *)&v5 touchesCancelled:a3 withEvent:a4];
  [(MUCirclePlatterView *)self setHighlighted:0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUCirclePlatterView;
  [(MUCirclePlatterView *)&v5 touchesEnded:a3 withEvent:a4];
  [(MUCirclePlatterView *)self setHighlighted:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUCirclePlatterView;
  [(MUCirclePlatterView *)&v5 touchesBegan:a3 withEvent:a4];
  [(MUCirclePlatterView *)self setHighlighted:1];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(MUCirclePlatterView *)self infoCardThemeChanged];
  }
}

- (void)infoCardThemeChanged
{
  v8.receiver = self;
  v8.super_class = MUCirclePlatterView;
  [(MUCirclePlatterView *)&v8 infoCardThemeChanged];
  [(MUCirclePlatterView *)self updateGlyph];
  highlighted = self->_highlighted;
  v4 = [(MUCirclePlatterView *)self mk_theme];
  v5 = v4;
  if (highlighted)
  {
    [v4 buttonHighlightedColor];
  }

  else
  {
    [v4 buttonNormalColor];
  }
  v6 = ;

  v7 = [(MKVibrantView *)self->_platterView contentView];
  [v7 setBackgroundColor:v6];
}

- (void)setGlyphColor:(id)a3
{
  v5 = a3;
  if (self->_glyphColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_glyphColor, a3);
    [(MUCirclePlatterView *)self updateGlyph];
    v5 = v6;
  }
}

- (void)setGlyph:(id)a3
{
  v7 = a3;
  if (([(NSString *)self->_glyph isEqual:?]& 1) == 0)
  {
    v4 = [v7 copy];
    glyph = self->_glyph;
    self->_glyph = v4;

    v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:self->_glyph];
    [(UIImageView *)self->_glyphImageView setImage:v6];
  }
}

- (void)updateGlyph
{
  v3 = self->_glyphColor;
  if (!v3)
  {
    v4 = [(MUCirclePlatterView *)self mk_theme];
    v5 = [v4 tintColor];

    v3 = v5;
  }

  v6 = v3;
  [(UIImageView *)self->_glyphImageView setTintColor:v3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUCirclePlatterView;
  [(MUCirclePlatterView *)&v4 layoutSubviews];
  [(MUCirclePlatterView *)self bounds];
  [(MKVibrantView *)self->_platterView setFrame:?];
  [(MUCirclePlatterView *)self bounds];
  [(UIImageView *)self->_glyphImageView setFrame:?];
  [(MUCirclePlatterView *)self bounds];
  v3 = CGRectGetWidth(v5) * 0.5;
  [(MKVibrantView *)self->_platterView _setCornerRadius:v3];
  [(MUCirclePlatterView *)self _setCornerRadius:v3];
}

- (void)setGlyphFont:(id)a3
{
  v5 = a3;
  if (self->_glyphFont != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_glyphFont, a3);
    v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:v7];
    [(UIImageView *)self->_glyphImageView setPreferredSymbolConfiguration:v6];

    v5 = v7;
  }
}

- (MUCirclePlatterView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MUCirclePlatterView;
  v3 = [(MUCirclePlatterView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696F430]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    platterView = v3->_platterView;
    v3->_platterView = v5;

    [(MKVibrantView *)v3->_platterView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(MUCirclePlatterView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    glyphImageView = v3->_glyphImageView;
    v3->_glyphImageView = v8;

    [(UIImageView *)v3->_glyphImageView setContentMode:4];
    v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:16.0];
    [(UIImageView *)v3->_glyphImageView setPreferredSymbolConfiguration:v10];

    [(MUCirclePlatterView *)v3 addSubview:v3->_platterView];
    [(MUCirclePlatterView *)v3 addSubview:v3->_glyphImageView];
    [(MUCirclePlatterView *)v3 infoCardThemeChanged];
  }

  return v3;
}

+ (id)defaultPlatterView
{
  v2 = [MUCirclePlatterView alloc];
  v3 = [(MUCirclePlatterView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (MapKitIdiomIsMacCatalyst())
  {
    [(MUCirclePlatterView *)v3 setShowPlatterBackground:0];
  }

  return v3;
}

@end