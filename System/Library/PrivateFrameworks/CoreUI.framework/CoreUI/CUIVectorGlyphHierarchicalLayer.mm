@interface CUIVectorGlyphHierarchicalLayer
- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue hierarchicalColorResolver:(id)CopyWithAlpha;
- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue paletteColorResolver:(id)CopyWithAlpha;
- (id)debugDescription;
- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes;
- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue hierarchicalColorResolver:(id)resolver;
- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue paletteColorResolver:(id)resolver;
@end

@implementation CUIVectorGlyphHierarchicalLayer

- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes
{
  v8.receiver = self;
  v8.super_class = CUIVectorGlyphHierarchicalLayer;
  [(CUIVectorGlyphLayer *)&v8 _readCSSAttributes:attributes styleAttributes:styleAttributes];
  v5 = [objc_opt_class() _colorNameForRenderingStyle:{-[CUIVectorGlyphLayer name](self, "name")}];
  v6 = [objc_msgSend(objc_opt_class() "_layerHierarchyStyleNames")];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  self->_hierarchyLevel = v7;
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = CUIVectorGlyphHierarchicalLayer;
  return [-[CUIVectorGlyphLayer debugDescription](&v3 debugDescription)];
}

- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue hierarchicalColorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v18 = v17;
  index = [(CUIVectorGlyphLayer *)self index];
  hierarchyLevel = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack();
  if (isEraserLayer && v18 < 2.22044605e-16)
  {
    SRGBBlack = _CUIColorGetSRGBClear();
    CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBBlack, 0.7);
    CFAutorelease(CopyWithAlpha);
  }

  else if (resolver)
  {
    SRGBBlack = (*(resolver + 2))(resolver, index, hierarchyLevel);
    CopyWithAlpha = (*(resolver + 2))(resolver, index, 2);
  }

  else
  {
    CopyWithAlpha = 0;
  }

  if ([(NSArray *)[(CUIVectorGlyphLayer *)self sublayers] count]|| [(CUIVectorGlyphLayer *)self referenceShape])
  {
    v24.receiver = self;
    v24.super_class = CUIVectorGlyphHierarchicalLayer;
    [(CUIVectorGlyphLayer *)&v24 drawInContext:context scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:value, maxValue];
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __132__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_hierarchicalColorResolver___block_invoke;
    v23[3] = &unk_1E7249B60;
    v23[4] = resolver;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawHierarchicalLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:context scaleFactor:v23 targetSize:factor colorResolver:width, height];
  }
}

uint64_t __132__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_hierarchicalColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue hierarchicalColorResolver:(id)CopyWithAlpha
{
  height = size.height;
  width = size.width;
  v14 = size.width * factor;
  v15 = size.height * factor;
  SRGB = _CUIColorSpaceGetSRGB();
  v19 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 8193, v17, v18);
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v22 = v21;
  index = [(CUIVectorGlyphLayer *)self index];
  hierarchyLevel = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack();
  if (isEraserLayer && v22 < 2.22044605e-16)
  {
    SRGBBlack = _CUIColorGetSRGBClear();
    CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBBlack, 0.7);
    CFAutorelease(CopyWithAlpha);
  }

  else if (CopyWithAlpha)
  {
    SRGBBlack = (*(CopyWithAlpha + 2))(CopyWithAlpha, index, hierarchyLevel);
    CopyWithAlpha = (*(CopyWithAlpha + 2))(CopyWithAlpha, index, 2);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  sublayers = [(CUIVectorGlyphLayer *)self sublayers];
  v27 = [(NSArray *)sublayers countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v33 + 1) + 8 * i) drawInContext:v19 scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:{value, maxValue}];
      }

      v28 = [(NSArray *)sublayers countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v28);
  }

  Image = CGBitmapContextCreateImage(v19);
  CGContextRelease(v19);
  return Image;
}

- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue paletteColorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v18 = v17;
  index = [(CUIVectorGlyphLayer *)self index];
  hierarchyLevel = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack();
  if (isEraserLayer && v18 < 2.22044605e-16)
  {
    SRGBClear = _CUIColorGetSRGBClear();
    SRGBBlack = SRGBClear;
    v23 = 0.7;
  }

  else
  {
    if (!resolver)
    {
      CopyWithAlpha = 0;
      goto LABEL_7;
    }

    SRGBBlack = (*(resolver + 2))(resolver, index, hierarchyLevel);
    v23 = CGColorGetAlpha(SRGBBlack) * 0.3;
    SRGBClear = SRGBBlack;
  }

  CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBClear, v23);
  CFAutorelease(CopyWithAlpha);
LABEL_7:
  if ([(NSArray *)[(CUIVectorGlyphLayer *)self sublayers] count]|| [(CUIVectorGlyphLayer *)self referenceShape])
  {
    v26.receiver = self;
    v26.super_class = CUIVectorGlyphHierarchicalLayer;
    [(CUIVectorGlyphLayer *)&v26 drawInContext:context scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:value, maxValue];
  }

  else
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __127__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_paletteColorResolver___block_invoke;
    v25[3] = &unk_1E7249B60;
    v25[4] = resolver;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawHierarchicalLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:context scaleFactor:v25 targetSize:factor colorResolver:width, height];
  }
}

uint64_t __127__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_paletteColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue paletteColorResolver:(id)CopyWithAlpha
{
  height = size.height;
  width = size.width;
  v14 = size.width * factor;
  v15 = size.height * factor;
  SRGB = _CUIColorSpaceGetSRGB();
  v19 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 8193, v17, v18);
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v22 = v21;
  index = [(CUIVectorGlyphLayer *)self index];
  hierarchyLevel = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack();
  if (isEraserLayer && v22 < 2.22044605e-16)
  {
    SRGBClear = _CUIColorGetSRGBClear();
    SRGBBlack = SRGBClear;
    v27 = 0.7;
  }

  else
  {
    if (!CopyWithAlpha)
    {
      goto LABEL_7;
    }

    SRGBBlack = (*(CopyWithAlpha + 2))(CopyWithAlpha, index, hierarchyLevel);
    v27 = CGColorGetAlpha(SRGBBlack) * 0.3;
    SRGBClear = SRGBBlack;
  }

  CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBClear, v27);
  CFAutorelease(CopyWithAlpha);
LABEL_7:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  sublayers = [(CUIVectorGlyphLayer *)self sublayers];
  v29 = [(NSArray *)sublayers countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v35 + 1) + 8 * i) drawInContext:v19 scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:{value, maxValue}];
      }

      v30 = [(NSArray *)sublayers countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v30);
  }

  Image = CGBitmapContextCreateImage(v19);
  CGContextRelease(v19);
  return Image;
}

@end