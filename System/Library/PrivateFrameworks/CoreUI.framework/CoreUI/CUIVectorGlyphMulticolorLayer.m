@interface CUIVectorGlyphMulticolorLayer
- (BOOL)needsWideGamut;
- (CGImage)createImageUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 variableMinValue:(double)a5 variableMaxValue:(double)a6 colorResolver:(id)a7;
- (id)debugDescription;
- (void)_readCSSAttributes:(CGSVGAttributeMap *)a3 styleAttributes:(CGSVGAttributeMap *)a4;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 scaleFactor:(double)a4 targetSize:(CGSize)a5 variableMinValue:(double)a6 variableMaxValue:(double)a7 colorResolver:(id)a8;
@end

@implementation CUIVectorGlyphMulticolorLayer

- (void)_readCSSAttributes:(CGSVGAttributeMap *)a3 styleAttributes:(CGSVGAttributeMap *)a4
{
  v15.receiver = self;
  v15.super_class = CUIVectorGlyphMulticolorLayer;
  [(CUIVectorGlyphLayer *)&v15 _readCSSAttributes:a3 styleAttributes:?];
  v6 = [objc_opt_class() _fillColorFromStyle:a4];
  v7 = [objc_opt_class() _strokeColorFromStyle:a4];
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

  v11 = [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _symbolDefaults];
  if ([objc_msgSend(v11 objectForKeyedSubscript:{CUIVectorGlyphDefaultsKeyFillImageNames), "containsObject:", v9}] && (v12 = -[CUIVectorGlyhLayerDelegate fillImageWithName:](-[CUIVectorGlyphLayer delegate](self, "delegate"), "fillImageWithName:", v9)) != 0)
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
  v4 = [(CUIVectorGlyphMulticolorLayer *)self fillColorName];
  v5 = @"<unspecified>";
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unspecified>";
  }

  v7 = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
  v8 = [(CUIVectorGlyphMulticolorLayer *)self strokeColorName];
  if (v8)
  {
    v5 = v8;
  }

  return [v3 stringByAppendingFormat:@" fill color name=%@ fill color=%@ stroke color name=%@ stroke color=%@", v6, v7, v5, -[CUIVectorGlyphMulticolorLayer strokeColor](self, "strokeColor")];
}

- (BOOL)needsWideGamut
{
  v2 = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
  if (v2)
  {
    ColorSpace = CGColorGetColorSpace(v2);

    LOBYTE(v2) = CGColorSpaceIsWideGamutRGB(ColorSpace);
  }

  return v2;
}

- (void)drawInContext:(CGContext *)a3 scaleFactor:(double)a4 targetSize:(CGSize)a5 variableMinValue:(double)a6 variableMaxValue:(double)a7 colorResolver:(id)a8
{
  height = a5.height;
  width = a5.width;
  if ([(NSArray *)[(CUIVectorGlyphLayer *)self sublayers] count]|| [(CUIVectorGlyphLayer *)self referenceShape])
  {
    v16 = [(CUIVectorGlyphMulticolorLayer *)self fillColor];
    if (a8)
    {
      v17 = (*(a8 + 2))(a8, [(CUIVectorGlyphMulticolorLayer *)self fillColorName], v16);
      if (v17)
      {
        v16 = v17;
      }
    }

    if (self->_fillImage)
    {
      CGContextBeginTransparencyLayer(a3, 0);
    }

    v19.receiver = self;
    v19.super_class = CUIVectorGlyphMulticolorLayer;
    [(CUIVectorGlyphLayer *)&v19 drawInContext:a3 scaleFactor:v16 targetSize:0 variableMinValue:a4 variableMaxValue:width onFillColor:height offFillColor:a6, a7];
    if (self->_fillImage)
    {
      CGContextSaveGState(a3);
      CGContextSetBlendMode(a3, kCGBlendModeSourceIn);
      v20.origin.x = 0.0;
      v20.origin.y = 0.0;
      v20.size.width = width * a4;
      v20.size.height = height * a4;
      CGContextDrawImage(a3, v20, self->_fillImage);
      CGContextRestoreGState(a3);
      CGContextEndTransparencyLayer(a3);
    }
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __118__CUIVectorGlyphMulticolorLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_colorResolver___block_invoke;
    v18[3] = &unk_1E7249B60;
    v18[4] = a8;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawMulticolorLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:a3 scaleFactor:v18 targetSize:a4 colorResolver:width, height];
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

- (CGImage)createImageUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 variableMinValue:(double)a5 variableMaxValue:(double)a6 colorResolver:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a4.width * a3;
  v15 = a4.height * a3;
  SRGB = _CUIColorSpaceGetSRGB();
  v19 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 8193, v17, v18);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = [(CUIVectorGlyphLayer *)self sublayers];
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v20);
        }

        [*(*(&v27 + 1) + 8 * v24) drawInContext:v19 scaleFactor:a7 targetSize:a3 variableMinValue:width variableMaxValue:height colorResolver:{a5, a6}];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  Image = CGBitmapContextCreateImage(v19);
  CGContextRelease(v19);
  return Image;
}

@end