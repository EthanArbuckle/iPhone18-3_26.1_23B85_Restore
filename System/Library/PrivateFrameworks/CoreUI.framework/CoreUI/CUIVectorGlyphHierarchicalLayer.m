@interface CUIVectorGlyphHierarchicalLayer
- (CGImage)createImageUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 variableMinValue:(double)a5 variableMaxValue:(double)a6 hierarchicalColorResolver:(id)CopyWithAlpha;
- (CGImage)createImageUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 variableMinValue:(double)a5 variableMaxValue:(double)a6 paletteColorResolver:(id)CopyWithAlpha;
- (id)debugDescription;
- (void)_readCSSAttributes:(CGSVGAttributeMap *)a3 styleAttributes:(CGSVGAttributeMap *)a4;
- (void)drawInContext:(CGContext *)a3 scaleFactor:(double)a4 targetSize:(CGSize)a5 variableMinValue:(double)a6 variableMaxValue:(double)a7 hierarchicalColorResolver:(id)a8;
- (void)drawInContext:(CGContext *)a3 scaleFactor:(double)a4 targetSize:(CGSize)a5 variableMinValue:(double)a6 variableMaxValue:(double)a7 paletteColorResolver:(id)a8;
@end

@implementation CUIVectorGlyphHierarchicalLayer

- (void)_readCSSAttributes:(CGSVGAttributeMap *)a3 styleAttributes:(CGSVGAttributeMap *)a4
{
  v8.receiver = self;
  v8.super_class = CUIVectorGlyphHierarchicalLayer;
  [(CUIVectorGlyphLayer *)&v8 _readCSSAttributes:a3 styleAttributes:a4];
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

- (void)drawInContext:(CGContext *)a3 scaleFactor:(double)a4 targetSize:(CGSize)a5 variableMinValue:(double)a6 variableMaxValue:(double)a7 hierarchicalColorResolver:(id)a8
{
  height = a5.height;
  width = a5.width;
  v16 = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v18 = v17;
  v19 = [(CUIVectorGlyphLayer *)self index];
  v20 = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack();
  if (v16 && v18 < 2.22044605e-16)
  {
    SRGBBlack = _CUIColorGetSRGBClear();
    CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBBlack, 0.7);
    CFAutorelease(CopyWithAlpha);
  }

  else if (a8)
  {
    SRGBBlack = (*(a8 + 2))(a8, v19, v20);
    CopyWithAlpha = (*(a8 + 2))(a8, v19, 2);
  }

  else
  {
    CopyWithAlpha = 0;
  }

  if ([(NSArray *)[(CUIVectorGlyphLayer *)self sublayers] count]|| [(CUIVectorGlyphLayer *)self referenceShape])
  {
    v24.receiver = self;
    v24.super_class = CUIVectorGlyphHierarchicalLayer;
    [(CUIVectorGlyphLayer *)&v24 drawInContext:a3 scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:a4 variableMaxValue:width onFillColor:height offFillColor:a6, a7];
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __132__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_hierarchicalColorResolver___block_invoke;
    v23[3] = &unk_1E7249B60;
    v23[4] = a8;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawHierarchicalLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:a3 scaleFactor:v23 targetSize:a4 colorResolver:width, height];
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

- (CGImage)createImageUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 variableMinValue:(double)a5 variableMaxValue:(double)a6 hierarchicalColorResolver:(id)CopyWithAlpha
{
  height = a4.height;
  width = a4.width;
  v14 = a4.width * a3;
  v15 = a4.height * a3;
  SRGB = _CUIColorSpaceGetSRGB();
  v19 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 8193, v17, v18);
  v20 = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v22 = v21;
  v23 = [(CUIVectorGlyphLayer *)self index];
  v24 = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack();
  if (v20 && v22 < 2.22044605e-16)
  {
    SRGBBlack = _CUIColorGetSRGBClear();
    CopyWithAlpha = CGColorCreateCopyWithAlpha(SRGBBlack, 0.7);
    CFAutorelease(CopyWithAlpha);
  }

  else if (CopyWithAlpha)
  {
    SRGBBlack = (*(CopyWithAlpha + 2))(CopyWithAlpha, v23, v24);
    CopyWithAlpha = (*(CopyWithAlpha + 2))(CopyWithAlpha, v23, 2);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = [(CUIVectorGlyphLayer *)self sublayers];
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v26);
        }

        [*(*(&v33 + 1) + 8 * i) drawInContext:v19 scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:a3 variableMaxValue:width onFillColor:height offFillColor:{a5, a6}];
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v28);
  }

  Image = CGBitmapContextCreateImage(v19);
  CGContextRelease(v19);
  return Image;
}

- (void)drawInContext:(CGContext *)a3 scaleFactor:(double)a4 targetSize:(CGSize)a5 variableMinValue:(double)a6 variableMaxValue:(double)a7 paletteColorResolver:(id)a8
{
  height = a5.height;
  width = a5.width;
  v16 = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v18 = v17;
  v19 = [(CUIVectorGlyphLayer *)self index];
  v20 = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack();
  if (v16 && v18 < 2.22044605e-16)
  {
    SRGBClear = _CUIColorGetSRGBClear();
    SRGBBlack = SRGBClear;
    v23 = 0.7;
  }

  else
  {
    if (!a8)
    {
      CopyWithAlpha = 0;
      goto LABEL_7;
    }

    SRGBBlack = (*(a8 + 2))(a8, v19, v20);
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
    [(CUIVectorGlyphLayer *)&v26 drawInContext:a3 scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:a4 variableMaxValue:width onFillColor:height offFillColor:a6, a7];
  }

  else
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __127__CUIVectorGlyphHierarchicalLayer_drawInContext_scaleFactor_targetSize_variableMinValue_variableMaxValue_paletteColorResolver___block_invoke;
    v25[3] = &unk_1E7249B60;
    v25[4] = a8;
    [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] _legacy_drawHierarchicalLayerNamed:[(CUIVectorGlyphLayer *)self name] inContext:a3 scaleFactor:v25 targetSize:a4 colorResolver:width, height];
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

- (CGImage)createImageUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 variableMinValue:(double)a5 variableMaxValue:(double)a6 paletteColorResolver:(id)CopyWithAlpha
{
  height = a4.height;
  width = a4.width;
  v14 = a4.width * a3;
  v15 = a4.height * a3;
  SRGB = _CUIColorSpaceGetSRGB();
  v19 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v14), vcvtpd_u64_f64(v15), 8uLL, 0, SRGB, 8193, v17, v18);
  v20 = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v22 = v21;
  v23 = [(CUIVectorGlyphLayer *)self index];
  v24 = [(CUIVectorGlyphHierarchicalLayer *)self hierarchyLevel];
  SRGBBlack = _CUIColorGetSRGBBlack();
  if (v20 && v22 < 2.22044605e-16)
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

    SRGBBlack = (*(CopyWithAlpha + 2))(CopyWithAlpha, v23, v24);
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
  v28 = [(CUIVectorGlyphLayer *)self sublayers];
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v28);
        }

        [*(*(&v35 + 1) + 8 * i) drawInContext:v19 scaleFactor:SRGBBlack targetSize:CopyWithAlpha variableMinValue:a3 variableMaxValue:width onFillColor:height offFillColor:{a5, a6}];
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v30);
  }

  Image = CGBitmapContextCreateImage(v19);
  CGContextRelease(v19);
  return Image;
}

@end