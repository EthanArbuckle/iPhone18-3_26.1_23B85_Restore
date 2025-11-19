@interface CKMentionsRenderingAttributes
+ (id)newWithValuesFromRippler:(id)a3 timeIndex:(unint64_t)a4 glyphIndex:(unint64_t)a5 glyphCount:(unint64_t)a6;
- (CKMentionsRenderingAttributes)initWithColor:(id)a3 shadowColor:(id)a4 scale:(double)a5;
- (CKMentionsRenderingAttributes)initWithValuesFromRippler:(id)a3 timeIndex:(unint64_t)a4 glyphIndex:(unint64_t)a5 glyphCount:(unint64_t)a6;
- (void)_applyInContext:(CGContext *)a3 fontPointSize:(double)a4 getAdjustedFontSize:(double *)a5;
@end

@implementation CKMentionsRenderingAttributes

- (void)_applyInContext:(CGContext *)a3 fontPointSize:(double)a4 getAdjustedFontSize:(double *)a5
{
  [(CKMentionsRenderingAttributes *)self scale];
  v10 = v9 * a4;
  CGContextSetFontSize(a3, v10);
  v15 = [(CKMentionsRenderingAttributes *)self color];
  v11 = v15;
  ColorSpace = CGColorGetColorSpace([v15 CGColor]);
  CGContextSetStrokeColorSpace(a3, ColorSpace);
  CGContextSetFillColorSpace(a3, ColorSpace);
  v13 = v15;
  CGContextSetStrokeColorWithColor(a3, [v15 CGColor]);
  v14 = v15;
  CGContextSetFillColorWithColor(a3, [v15 CGColor]);
  if (a5)
  {
    *a5 = v10;
  }
}

- (CKMentionsRenderingAttributes)initWithColor:(id)a3 shadowColor:(id)a4 scale:(double)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CKMentionsRenderingAttributes;
  v10 = [(CKMentionsRenderingAttributes *)&v16 init];
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

- (CKMentionsRenderingAttributes)initWithValuesFromRippler:(id)a3 timeIndex:(unint64_t)a4 glyphIndex:(unint64_t)a5 glyphCount:(unint64_t)a6
{
  v10 = a3;
  v11 = [v10 currentColorForGlyphIndex:a5 numberOfGlyphs:a6 timeIndex:a4];
  v12 = [v10 currentShadowColorForGlyphIndex:a5 numberOfGlyphs:a6 timeIndex:a4];
  [v10 currentScaleForGlyphIndex:a5 numberOfGlyphs:a6 timeIndex:a4];
  v14 = v13;

  v15 = [(CKMentionsRenderingAttributes *)self initWithColor:v11 shadowColor:v12 scale:v14];
  return v15;
}

+ (id)newWithValuesFromRippler:(id)a3 timeIndex:(unint64_t)a4 glyphIndex:(unint64_t)a5 glyphCount:(unint64_t)a6
{
  v10 = a3;
  v11 = [[a1 alloc] initWithValuesFromRippler:v10 timeIndex:a4 glyphIndex:a5 glyphCount:a6];

  return v11;
}

@end