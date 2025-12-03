@interface MUCirclePlatterView
+ (id)defaultPlatterView;
- (MUCirclePlatterView)initWithFrame:(CGRect)frame;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)setGlyph:(id)glyph;
- (void)setGlyphColor:(id)color;
- (void)setGlyphFont:(id)font;
- (void)setHighlighted:(BOOL)highlighted;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateGlyph;
@end

@implementation MUCirclePlatterView

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUCirclePlatterView;
  [(MUCirclePlatterView *)&v5 touchesCancelled:cancelled withEvent:event];
  [(MUCirclePlatterView *)self setHighlighted:0];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUCirclePlatterView;
  [(MUCirclePlatterView *)&v5 touchesEnded:ended withEvent:event];
  [(MUCirclePlatterView *)self setHighlighted:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUCirclePlatterView;
  [(MUCirclePlatterView *)&v5 touchesBegan:began withEvent:event];
  [(MUCirclePlatterView *)self setHighlighted:1];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
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
  mk_theme = [(MUCirclePlatterView *)self mk_theme];
  v5 = mk_theme;
  if (highlighted)
  {
    [mk_theme buttonHighlightedColor];
  }

  else
  {
    [mk_theme buttonNormalColor];
  }
  v6 = ;

  contentView = [(MKVibrantView *)self->_platterView contentView];
  [contentView setBackgroundColor:v6];
}

- (void)setGlyphColor:(id)color
{
  colorCopy = color;
  if (self->_glyphColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_glyphColor, color);
    [(MUCirclePlatterView *)self updateGlyph];
    colorCopy = v6;
  }
}

- (void)setGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (([(NSString *)self->_glyph isEqual:?]& 1) == 0)
  {
    v4 = [glyphCopy copy];
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
    mk_theme = [(MUCirclePlatterView *)self mk_theme];
    tintColor = [mk_theme tintColor];

    v3 = tintColor;
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

- (void)setGlyphFont:(id)font
{
  fontCopy = font;
  if (self->_glyphFont != fontCopy)
  {
    v7 = fontCopy;
    objc_storeStrong(&self->_glyphFont, font);
    v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:v7];
    [(UIImageView *)self->_glyphImageView setPreferredSymbolConfiguration:v6];

    fontCopy = v7;
  }
}

- (MUCirclePlatterView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MUCirclePlatterView;
  v3 = [(MUCirclePlatterView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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