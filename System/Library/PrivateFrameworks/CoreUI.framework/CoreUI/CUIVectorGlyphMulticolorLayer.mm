@interface CUIVectorGlyphMulticolorLayer
- (BOOL)needsWideGamut;
- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue colorResolver:(id)resolver;
- (id)debugDescription;
- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue colorResolver:(id)resolver;
@end

@implementation CUIVectorGlyphMulticolorLayer

- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes
{
  v15.receiver = self;
  v15.super_class = CUIVectorGlyphMulticolorLayer;
  [(CUIVectorGlyphLayer *)&v15 _readCSSAttributes:attributes styleAttributes:?];
  v6 = [objc_opt_class() _fillColorFromStyle:styleAttributes];
  v7 = [objc_opt_class() _strokeColorFromStyle:styleAttributes];
  v8 = [objc_opt_class() _colorNameForRenderingStyle:{-[CUIVectorGlyphLayer name](self, "name")}];
  v9 = v8;
  if (!v6)
  {
    if ([v8 isEqualToString:@"white"])
    {
      SRGBWhite = _CUIColorGetSRGBWhite();
    }

    else
    {
      SRGBWhite = _CUIColorGetSRGBBlack();
    }

    v6 = SRGBWhite;
  }

  _symbolDefaults = [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _symbolDefaults];
  if ([objc_msgSend(_symbolDefaults objectForKeyedSubscript:{CUIVectorGlyphDefaultsKeyFillImageNames), "containsObject:", v9}] && (v12 = -[CUIVectorGlyhLayerDelegate fillImageWithName:](-[CUIVectorGlyphLayer delegate](self, "delegate"), "fillImageWithName:", v9)) != 0)
  {
    v13 = CGImageRetain(v12);
    v14 = &OBJC_IVAR___CUIVectorGlyphMulticolorLayer__fillImage;
  }

  else
  {
    self->_fillColor = CGColorCreateCopy(v6);
    self->_fillColorName = [v9 copy];
    self->_strokeColor = CGColorCreateCopy(v7);
    v13 = [v9 copy];
    v14 = &OBJC_IVAR___CUIVectorGlyphMulticolorLayer__strokeColorName;
  }

  *(&self->super.super.isa + *v14) = v13;
}

- (void)dealloc
{
  fillColor = self->_fillColor;
  if (fillColor)
  {
    CGColorRelease(fillColor);
  }

  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    CGColorRelease(strokeColor);
  }

  fillImage = self->_fillImage;
  if (fillImage)
  {
    CGImageRelease(fillImage);
  }

  v6.receiver = self;
  v6.super_class = CUIVectorGlyphMulticolorLayer;
  [(CUIVectorGlyphLayer *)&v6 dealloc];
}

- (id)debugDescription
{
  v10.receiver = self;
  v10.super_class = CUIVectorGlyphMulticolorLayer;
  v3 = [(CUIVectorGlyphLayer *)&v10 debugDescription];
  fillColorName = [(CUIVectorGlyphMulticolorLayer *)self fillColorName];
  v5 = @"<unspecified>";
  if (fillColorName)
  {
    v6 = fillColorName;
  }

  else
  {
    v6 = @"<unspecified>";
  }

  fillColor = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
  strokeColorName = [(CUIVectorGlyphMulticolorLayer *)self strokeColorName];
  if (strokeColorName)
  {
    v5 = strokeColorName;
  }

  return [v3 stringByAppendingFormat:@" fill color name=%@ fill color=%@ stroke color name=%@ stroke color=%@", v6, fillColor, v5, -[CUIVectorGlyphMulticolorLayer strokeColor](self, "strokeColor")];
}

- (BOOL)needsWideGamut
{
  fillColor = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
  if (fillColor)
  {
    ColorSpace = CGColorGetColorSpace(fillColor);

    LOBYTE(fillColor) = CGColorSpaceIsWideGamutRGB(ColorSpace);
  }

  return fillColor;
}

- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue colorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  if ([(NSArray *)[(CUIVectorGlyphLayer *)self sublayers] count]|| [(CUIVectorGlyphLayer *)self referenceShape])
  {
    fillColor = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
    if (resolver)
    {
      v17 = (*(resolver + 2))(resolver, [(CUIVectorGlyphMulticolorLayer *)self fillColorName], fillColor);
      if (v17)
      {
        fillColor = v17;
      }
    }

    if (self->_fillImage)
    {
      CGContextBeginTransparencyLayer(context, 0);
    }

    v19.receiver = self;
    v19.super_class = CUIVectorGlyphMulticolorLayer;
    [(CUIVectorGlyphLayer *)&v19 drawInContext:context scaleFactor:fillColor targetSize:0 variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:value, maxValue];
    if (self->_fillImage)
    {
      CGContextSaveGState(context);
      CGContextSetBlendMode(context, kCGBlendModeSourceIn);
      v20.origin.x = 0.0;
      v20.origin.y = 0.0;
      v20.size.width = width * factor;
      v20.size.height = height * factor;
      CGContextDrawImage(context, v20, self->_fillImage);
      CGContextRestoreGState(context);
      CGContextEndTransparencyLayer(context);
    }
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __118__CUIVectorGlyphMulticolorLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_colorResolver___block_invoke;
    v18[3] = &unk_1E7249B60;
    v18[4] = resolver;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawMulticolorLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:context scaleFactor:v18 targetSize:factor colorResolver:width, height];
  }
}

uint64_t __118__CUIVectorGlyphMulticolorLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_colorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!*(a1 + 32))
  {
    return a3;
  }

  return result;
}

- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue colorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  v14 = size.width * factor;
  v15 = size.height * factor;
  SRGB = _CUIColorSpaceGetSRGB();
  v19 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 8193, v17, v18);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  sublayers = [(CUIVectorGlyphLayer *)self sublayers];
  v21 = [(NSArray *)sublayers countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v27 + 1) + 8 * v24) drawInContext:v19 scaleFactor:resolver targetSize:factor variableMinValue:width variableMaxValue:height colorResolver:{value, maxValue}];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSArray *)sublayers countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  Image = CGBitmapContextCreateImage(v19);
  CGContextRelease(v19);
  return Image;
}

@end