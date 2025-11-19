@interface LAUIPearlGlyphViewAutoLayoutWrapper
- (LAUIPearlGlyphViewAutoLayoutWrapper)initWithGlyphView:(id)a3;
- (void)layoutSubviews;
@end

@implementation LAUIPearlGlyphViewAutoLayoutWrapper

- (LAUIPearlGlyphViewAutoLayoutWrapper)initWithGlyphView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAUIPearlGlyphViewAutoLayoutWrapper;
  v6 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_glyphView, a3);
    if (v7->_glyphView)
    {
      [(LAUIPearlGlyphViewAutoLayoutWrapper *)v7 addSubview:?];
    }
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LAUIPearlGlyphViewAutoLayoutWrapper;
  [(LAUIPearlGlyphViewAutoLayoutWrapper *)&v3 layoutSubviews];
  if (self->_glyphView)
  {
    [(LAUIPearlGlyphViewAutoLayoutWrapper *)self frame];
    [(LAUIPearlGlyphView *)self->_glyphView setFrame:0.0, 0.0];
  }
}

@end