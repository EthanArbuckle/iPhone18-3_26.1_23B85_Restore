@interface _EMKGlyphRenderingAttributes
- (_EMKGlyphRenderingAttributes)initWithColor:(id)color shadowColor:(id)shadowColor scale:(double)scale;
- (_EMKGlyphRenderingAttributes)initWithValuesFromRippler:(id)rippler timeIndex:(unint64_t)index glyphIndex:(unint64_t)glyphIndex numberOfGlyphs:(unint64_t)glyphs;
- (id)shadowIfNeededForFontPointSize:(double)size;
- (void)_applyInContext:(CGContext *)context fontPointSize:(double)size;
@end

@implementation _EMKGlyphRenderingAttributes

- (_EMKGlyphRenderingAttributes)initWithColor:(id)color shadowColor:(id)shadowColor scale:(double)scale
{
  colorCopy = color;
  shadowColorCopy = shadowColor;
  v16.receiver = self;
  v16.super_class = _EMKGlyphRenderingAttributes;
  v10 = [(_EMKGlyphRenderingAttributes *)&v16 init];
  if (v10)
  {
    v11 = [colorCopy copy];
    color = v10->_color;
    v10->_color = v11;

    v13 = [shadowColorCopy copy];
    shadowColor = v10->_shadowColor;
    v10->_shadowColor = v13;

    v10->_scale = scale;
  }

  return v10;
}

- (_EMKGlyphRenderingAttributes)initWithValuesFromRippler:(id)rippler timeIndex:(unint64_t)index glyphIndex:(unint64_t)glyphIndex numberOfGlyphs:(unint64_t)glyphs
{
  ripplerCopy = rippler;
  v11 = [ripplerCopy currentColorForGlyphIndex:glyphIndex numberOfGlyphs:glyphs timeIndex:index];
  v12 = [ripplerCopy currentShadowColorForGlyphIndex:glyphIndex numberOfGlyphs:glyphs timeIndex:index];
  [ripplerCopy currentScaleForGlyphIndex:glyphIndex numberOfGlyphs:glyphs timeIndex:index];
  v14 = v13;

  v15 = [(_EMKGlyphRenderingAttributes *)self initWithColor:v11 shadowColor:v12 scale:v14];
  return v15;
}

- (void)_applyInContext:(CGContext *)context fontPointSize:(double)size
{
  color = [(_EMKGlyphRenderingAttributes *)self color];
  [(_EMKGlyphRenderingAttributes *)self scale];
  v8 = v7 * size;
  CGContextSetFontSize(context, v8);
  v9 = color;
  ColorSpace = CGColorGetColorSpace([color CGColor]);
  CGContextSetStrokeColorSpace(context, ColorSpace);
  CGContextSetFillColorSpace(context, ColorSpace);
  v11 = color;
  CGContextSetStrokeColorWithColor(context, [color CGColor]);
  v12 = color;
  CGContextSetFillColorWithColor(context, [color CGColor]);
  v13 = [(_EMKGlyphRenderingAttributes *)self shadowIfNeededForFontPointSize:v8];
  [v13 applyToGraphicsContext_emk:context];
}

- (id)shadowIfNeededForFontPointSize:(double)size
{
  if (size >= 22.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D74258]);
    [v4 setShadowOffset:{0.25, 0.0}];
    [v4 setShadowBlurRadius:0.0];
    shadowColor = [(_EMKGlyphRenderingAttributes *)self shadowColor];
    [v4 setShadowColor:shadowColor];
  }

  return v4;
}

@end