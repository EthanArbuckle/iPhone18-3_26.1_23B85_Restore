@interface _EMKGlyphRenderingAttributes
- (_EMKGlyphRenderingAttributes)initWithColor:(id)a3 shadowColor:(id)a4 scale:(double)a5;
- (_EMKGlyphRenderingAttributes)initWithValuesFromRippler:(id)a3 timeIndex:(unint64_t)a4 glyphIndex:(unint64_t)a5 numberOfGlyphs:(unint64_t)a6;
- (id)shadowIfNeededForFontPointSize:(double)a3;
- (void)_applyInContext:(CGContext *)a3 fontPointSize:(double)a4;
@end

@implementation _EMKGlyphRenderingAttributes

- (_EMKGlyphRenderingAttributes)initWithColor:(id)a3 shadowColor:(id)a4 scale:(double)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _EMKGlyphRenderingAttributes;
  v10 = [(_EMKGlyphRenderingAttributes *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    color = v10->_color;
    v10->_color = v11;

    v13 = [v9 copy];
    shadowColor = v10->_shadowColor;
    v10->_shadowColor = v13;

    v10->_scale = a5;
  }

  return v10;
}

- (_EMKGlyphRenderingAttributes)initWithValuesFromRippler:(id)a3 timeIndex:(unint64_t)a4 glyphIndex:(unint64_t)a5 numberOfGlyphs:(unint64_t)a6
{
  v10 = a3;
  v11 = [v10 currentColorForGlyphIndex:a5 numberOfGlyphs:a6 timeIndex:a4];
  v12 = [v10 currentShadowColorForGlyphIndex:a5 numberOfGlyphs:a6 timeIndex:a4];
  [v10 currentScaleForGlyphIndex:a5 numberOfGlyphs:a6 timeIndex:a4];
  v14 = v13;

  v15 = [(_EMKGlyphRenderingAttributes *)self initWithColor:v11 shadowColor:v12 scale:v14];
  return v15;
}

- (void)_applyInContext:(CGContext *)a3 fontPointSize:(double)a4
{
  v14 = [(_EMKGlyphRenderingAttributes *)self color];
  [(_EMKGlyphRenderingAttributes *)self scale];
  v8 = v7 * a4;
  CGContextSetFontSize(a3, v8);
  v9 = v14;
  ColorSpace = CGColorGetColorSpace([v14 CGColor]);
  CGContextSetStrokeColorSpace(a3, ColorSpace);
  CGContextSetFillColorSpace(a3, ColorSpace);
  v11 = v14;
  CGContextSetStrokeColorWithColor(a3, [v14 CGColor]);
  v12 = v14;
  CGContextSetFillColorWithColor(a3, [v14 CGColor]);
  v13 = [(_EMKGlyphRenderingAttributes *)self shadowIfNeededForFontPointSize:v8];
  [v13 applyToGraphicsContext_emk:a3];
}

- (id)shadowIfNeededForFontPointSize:(double)a3
{
  if (a3 >= 22.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D74258]);
    [v4 setShadowOffset:{0.25, 0.0}];
    [v4 setShadowBlurRadius:0.0];
    v5 = [(_EMKGlyphRenderingAttributes *)self shadowColor];
    [v4 setShadowColor:v5];
  }

  return v4;
}

@end