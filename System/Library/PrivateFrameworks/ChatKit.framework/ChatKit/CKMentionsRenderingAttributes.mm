@interface CKMentionsRenderingAttributes
+ (id)newWithValuesFromRippler:(id)rippler timeIndex:(unint64_t)index glyphIndex:(unint64_t)glyphIndex glyphCount:(unint64_t)count;
- (CKMentionsRenderingAttributes)initWithColor:(id)color shadowColor:(id)shadowColor scale:(double)scale;
- (CKMentionsRenderingAttributes)initWithValuesFromRippler:(id)rippler timeIndex:(unint64_t)index glyphIndex:(unint64_t)glyphIndex glyphCount:(unint64_t)count;
- (void)_applyInContext:(CGContext *)context fontPointSize:(double)size getAdjustedFontSize:(double *)fontSize;
@end

@implementation CKMentionsRenderingAttributes

- (void)_applyInContext:(CGContext *)context fontPointSize:(double)size getAdjustedFontSize:(double *)fontSize
{
  [(CKMentionsRenderingAttributes *)self scale];
  v10 = v9 * size;
  CGContextSetFontSize(context, v10);
  color = [(CKMentionsRenderingAttributes *)self color];
  v11 = color;
  ColorSpace = CGColorGetColorSpace([color CGColor]);
  CGContextSetStrokeColorSpace(context, ColorSpace);
  CGContextSetFillColorSpace(context, ColorSpace);
  v13 = color;
  CGContextSetStrokeColorWithColor(context, [color CGColor]);
  v14 = color;
  CGContextSetFillColorWithColor(context, [color CGColor]);
  if (fontSize)
  {
    *fontSize = v10;
  }
}

- (CKMentionsRenderingAttributes)initWithColor:(id)color shadowColor:(id)shadowColor scale:(double)scale
{
  colorCopy = color;
  shadowColorCopy = shadowColor;
  v16.receiver = self;
  v16.super_class = CKMentionsRenderingAttributes;
  v10 = [(CKMentionsRenderingAttributes *)&v16 init];
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

- (CKMentionsRenderingAttributes)initWithValuesFromRippler:(id)rippler timeIndex:(unint64_t)index glyphIndex:(unint64_t)glyphIndex glyphCount:(unint64_t)count
{
  ripplerCopy = rippler;
  v11 = [ripplerCopy currentColorForGlyphIndex:glyphIndex numberOfGlyphs:count timeIndex:index];
  v12 = [ripplerCopy currentShadowColorForGlyphIndex:glyphIndex numberOfGlyphs:count timeIndex:index];
  [ripplerCopy currentScaleForGlyphIndex:glyphIndex numberOfGlyphs:count timeIndex:index];
  v14 = v13;

  v15 = [(CKMentionsRenderingAttributes *)self initWithColor:v11 shadowColor:v12 scale:v14];
  return v15;
}

+ (id)newWithValuesFromRippler:(id)rippler timeIndex:(unint64_t)index glyphIndex:(unint64_t)glyphIndex glyphCount:(unint64_t)count
{
  ripplerCopy = rippler;
  v11 = [[self alloc] initWithValuesFromRippler:ripplerCopy timeIndex:index glyphIndex:glyphIndex glyphCount:count];

  return v11;
}

@end