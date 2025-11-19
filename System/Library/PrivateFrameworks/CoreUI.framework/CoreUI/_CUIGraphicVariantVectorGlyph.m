@interface _CUIGraphicVariantVectorGlyph
- (BOOL)_containsWideGamutColor;
- (CGContext)_createBackgroundBitmapContextOfSize:(CGSize)a3 scale:(double)a4;
- (CGGradient)_createBackgroundGradientWithColors:(id)a3 useSCurve:(BOOL)a4 height:(double)a5;
- (CGImage)_createBackgroundImageOfSize:(CGSize)a3 scale:(double)a4;
- (CGImage)_imageWithDisplayScale:(double)a3 forTargetSize:(CGSize)a4;
- (CGImage)image;
- (CGImage)imageWithColorResolver:(id)a3;
- (CGImage)imageWithHierarchyColorResolver:(id)a3;
- (CGImage)imageWithPaletteColorResolver:(id)a3;
- (CGImage)imageWithPaletteColors:(id)a3;
- (CGImage)imageWithTintColor:(CGColor *)a3;
- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4;
- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4 withColorResolver:(id)a5;
- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4 withHierarchyColorResolver:(id)a5;
- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4 withPaletteColorResolver:(id)a5;
- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4 withPaletteColors:(id)a5;
- (CGImage)rasterizeImageWithTintColor:(CGColor *)a3 usingScaleFactor:(double)a4 forTargetSize:(CGSize)a5;
- (CGPath)CGPath;
- (CGPath)_createBackgroundShapeInRect:(CGRect)a3 scale:(double)a4;
- (CGRect)_backgroundShapeBoundsForTargetSize:(CGSize)a3 scale:(double)a4;
- (CGRect)alignmentRect;
- (CGRect)alignmentRectForTargetSize:(CGSize)a3 scale:(double)a4;
- (CGRect)alignmentRectUnrounded;
- (CGRect)contentBounds;
- (CGRect)contentBoundsUnrounded;
- (CGRect)interiorAlignmentRect;
- (CGRect)interiorAlignmentRectForTargetSize:(CGSize)a3 scale:(double)a4;
- (CGRect)interiorAlignmentRectUnrounded;
- (CGSize)_sizeOfBackgroundShape;
- (double)baselineOffset;
- (double)baselineOffsetUnrounded;
- (id)_createContentEffectsForTargetSize:(CGSize)a3 scale:(double *)a4 contentEffectStyle:(int64_t)a5;
- (id)_createShapeEffectsForTargetSize:(CGSize)a3 scale:(double *)a4;
- (id)_encapsulatedGlyphForTargetSize:(CGSize)a3 displayScale:(double)a4;
- (id)_initWithBaseGlyph:(id)a3 options:(id)a4;
- (id)_layerStackWithDisplayScale:(double)a3 forTargetSize:(CGSize)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)graphicVariantWithOptions:(id)a3;
- (id)layerStackWithDisplayScale:(double)a3;
- (id)layerStackWithDisplayScale:(double)a3 forTargetSize:(CGSize)a4 withPaletteColors:(id)a5;
- (id)layerStackWithDisplayScale:(double)a3 withColorResolver:(id)a4;
- (id)layerStackWithDisplayScale:(double)a3 withHierarchyColorResolver:(id)a4;
- (id)layerStackWithDisplayScale:(double)a3 withPaletteColorResolver:(id)a4;
- (id)layerStackWithDisplayScale:(double)a3 withPaletteColors:(id)a4;
- (id)layerStackWithDisplayScale:(double)a3 withTintColor:(CGColor *)a4;
- (void)_drawBackgroundShapeInContext:(CGContext *)a3 targetSize:(CGSize)a4 scale:(double)a5;
- (void)_drawShapePathInContext:(CGContext *)a3 targetSize:(CGSize)a4 scale:(double)a5 shapePath:(CGPath *)a6;
- (void)dealloc;
- (void)drawHierarchyLayerAtIndex:(unint64_t)a3 inContext:(CGContext *)a4 withColorResolver:(id)a5;
- (void)drawInContext:(CGContext *)a3;
- (void)drawInContext:(CGContext *)a3 withPaletteColors:(id)a4;
- (void)drawMulticolorLayerAtIndex:(unint64_t)a3 inContext:(CGContext *)a4 withColorResolver:(id)a5;
- (void)drawPaletteLayerAtIndex:(unint64_t)a3 inContext:(CGContext *)a4 withColorResolver:(id)a5;
- (void)drawWithTintColor:(CGColor *)a3 inContext:(CGContext *)a4;
@end

@implementation _CUIGraphicVariantVectorGlyph

- (id)_initWithBaseGlyph:(id)a3 options:(id)a4
{
  v8.receiver = self;
  v8.super_class = _CUIGraphicVariantVectorGlyph;
  v6 = -[CUINamedLookup initWithName:usingRenditionKey:fromTheme:](&v8, sel_initWithName_usingRenditionKey_fromTheme_, [a3 name], objc_msgSend(a3, "renditionKey"), objc_msgSend(a3, "storageRef"));
  if (v6)
  {
    -[CUINamedVectorGlyph _setUltralightInterpolationSource:](v6, "_setUltralightInterpolationSource:", [a3 _ultralightInterpolationSource]);
    -[CUINamedVectorGlyph _setBlackInterpolationSource:](v6, "_setBlackInterpolationSource:", [a3 _blackInterpolationSource]);
    [a3 pointSize];
    [(CUINamedVectorGlyph *)v6 _setPointSize:?];
    [a3 scale];
    [(CUINamedVectorGlyph *)v6 _setScale:?];
    -[CUINamedVectorGlyph _setCatalog:](v6, "_setCatalog:", [a3 _catalog]);
    [a3 fontMatchingScaleFactor];
    [(CUINamedVectorGlyph *)v6 setFontMatchingScaleFactor:?];
    [a3 glyphContinuousWeight];
    [(CUINamedVectorGlyph *)v6 _setGlyphWeight:?];
    [a3 glyphContinuousSize];
    [(CUINamedVectorGlyph *)v6 _setGlyphSize:?];
    -[CUINamedVectorGlyph _setFlippable:](v6, "_setFlippable:", [a3 isFlippable]);
    -[CUINamedVectorGlyph _setLayoutDirection:](v6, "_setLayoutDirection:", [a3 layoutDirection]);
    -[CUINamedVectorGlyph _setCanUsePathConcatenation:](v6, "_setCanUsePathConcatenation:", [a3 _canUsePathConcatenation]);
    -[CUINamedVectorGlyph _setImage:](v6, "_setImage:", [a3 _cgImageRef]);
    [a3 variableMinValue];
    [(CUINamedVectorGlyph *)v6 setVariableMinValue:?];
    [a3 variableMaxValue];
    [(CUINamedVectorGlyph *)v6 setVariableMaxValue:?];
    [(_CUIGraphicVariantVectorGlyph *)v6 setOptions:a4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(CUIVectorGlyphGraphicVariantOptions *)[(_CUIGraphicVariantVectorGlyph *)self options] copy];
  v6 = [[_CUIGraphicVariantVectorGlyph allocWithZone:?]options:"_initWithBaseGlyph:options:", self, v5];

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIGraphicVariantVectorGlyph;
  [(CUINamedVectorGlyph *)&v3 dealloc];
}

- (id)graphicVariantWithOptions:(id)a3
{
  if ([a3 isEqual:{-[_CUIGraphicVariantVectorGlyph options](self, "options")}])
  {
    v5 = self;

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _CUIGraphicVariantVectorGlyph;
    return [(CUINamedVectorGlyph *)&v7 graphicVariantWithOptions:a3];
  }
}

- (double)baselineOffsetUnrounded
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];
  v4 = v3 * 0.295410156;
  [(CUINamedVectorGlyph *)self glyphContinuousSize];
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:?];
  v6 = v5;
  [(CUINamedVectorGlyph *)self referencePointSize];
  return v4 - v6 * v7;
}

- (double)baselineOffset
{
  [(_CUIGraphicVariantVectorGlyph *)self baselineOffsetUnrounded];
  v4 = v3;
  [(CUINamedVectorGlyph *)self scale];
  return round(v4 * v5) / v5;
}

- (CGRect)alignmentRect
{
  [(_CUIGraphicVariantVectorGlyph *)self alignmentRectUnrounded];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CUINamedVectorGlyph *)self scale];
  v12 = round(v11 * v6) / v11;
  v13 = ceil(v11 * v8) / v11;
  v14 = ceil(v11 * v10) / v11;
  v15 = round(v11 * v4) / v11;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v15;
  return result;
}

- (CGRect)alignmentRectUnrounded
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  [_CUIGraphicVariantVectorGlyph alignmentRectForTargetSize:"alignmentRectForTargetSize:scale:" scale:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)alignmentRectForTargetSize:(CGSize)a3 scale:(double)a4
{
  [(_CUIGraphicVariantVectorGlyph *)self _backgroundShapeBoundsForTargetSize:a3.width scale:a3.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  CGAffineTransformMakeScale(&v13, a4, a4);
  v14.origin.x = v6;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v12;
  return CGRectApplyAffineTransform(v14, &v13);
}

- (CGRect)contentBoundsUnrounded
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];
  v3 = v2 + 0.13671875;
  v5 = v4 + 0.13671875;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)contentBounds
{
  [(_CUIGraphicVariantVectorGlyph *)self contentBoundsUnrounded];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CUINamedVectorGlyph *)self scale];
  v12 = ceil(v11 * v8) / v11;
  v13 = ceil(v11 * v10) / v11;
  v14 = v4;
  v15 = v6;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)interiorAlignmentRect
{
  [(_CUIGraphicVariantVectorGlyph *)self interiorAlignmentRectUnrounded];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CUINamedVectorGlyph *)self scale];
  v12 = round(v11 * v6) / v11;
  v13 = ceil(v11 * v8) / v11;
  v14 = ceil(v11 * v10) / v11;
  v15 = round(v11 * v4) / v11;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v15;
  return result;
}

- (CGRect)interiorAlignmentRectUnrounded
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  [_CUIGraphicVariantVectorGlyph interiorAlignmentRectForTargetSize:"interiorAlignmentRectForTargetSize:scale:" scale:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)interiorAlignmentRectForTargetSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  [(CUINamedVectorGlyph *)self scale];
  [-[_CUIGraphicVariantVectorGlyph _encapsulatedGlyphForTargetSize:displayScale:](self _encapsulatedGlyphForTargetSize:width displayScale:{height, v8), "encapsulatedAlignmentRect"}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  CGAffineTransformMakeScale(&v17, a4, a4);
  v18.origin.x = v10;
  v18.origin.y = v12;
  v18.size.width = v14;
  v18.size.height = v16;
  return CGRectApplyAffineTransform(v18, &v17);
}

- (BOOL)_containsWideGamutColor
{
  v11.receiver = self;
  v11.super_class = _CUIGraphicVariantVectorGlyph;
  v3 = [(CUINamedVectorGlyph *)&v11 _containsWideGamutColor];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __56___CUIGraphicVariantVectorGlyph__containsWideGamutColor__block_invoke;
  v6[3] = &unk_1E7249A08;
  v6[4] = &v7;
  [(NSArray *)[(CUIVectorGlyphGraphicVariantOptions *)[(_CUIGraphicVariantVectorGlyph *)self options] fillColors] enumerateObjectsUsingBlock:v6];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

- (CGPath)CGPath
{
  v32.receiver = self;
  v32.super_class = _CUIGraphicVariantVectorGlyph;
  v3 = [(CUINamedVectorGlyph *)&v32 CGPath];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];
  v9 = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundShapeInRect:0.0 scale:0.0, v7, v8, v6];
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, 0, v9);
  v31.receiver = self;
  v31.super_class = _CUIGraphicVariantVectorGlyph;
  [(CUINamedVectorGlyph *)&v31 alignmentRectUnrounded];
  v12 = v11;
  v30.receiver = self;
  v30.super_class = _CUIGraphicVariantVectorGlyph;
  [(CUINamedVectorGlyph *)&v30 contentBoundsUnrounded];
  v14 = v13;
  v16 = v15 - v12;
  v29.receiver = self;
  v29.super_class = _CUIGraphicVariantVectorGlyph;
  [(CUINamedVectorGlyph *)&v29 baselineOffsetUnrounded];
  v18 = v17;
  v28.receiver = self;
  v28.super_class = _CUIGraphicVariantVectorGlyph;
  [(CUINamedVectorGlyph *)&v28 capHeightUnrounded];
  v20 = v19;
  CGAffineTransformMakeScale(&v27, v6, v6);
  v33.origin.x = v16;
  v33.origin.y = v18;
  v33.size.width = v14;
  v33.size.height = v20;
  v34 = CGRectApplyAffineTransform(v33, &v27);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  BoundingBox = CGPathGetBoundingBox(v9);
  v25 = BoundingBox.size.width * 0.5 - (x + width * 0.5);
  v36 = CGPathGetBoundingBox(v9);
  memset(&v27, 0, sizeof(v27));
  CGAffineTransformMakeTranslation(&v27, v25, v36.size.height * 0.5 - (y + height * 0.5));
  CGPathAddPath(Mutable, &v27, v4);
  CGPathRelease(v9);
  CFAutorelease(Mutable);
  return Mutable;
}

- (CGImage)image
{
  [(CUINamedVectorGlyph *)self scale];
  v4 = v3;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];
  v7 = [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:v4 forTargetSize:v5, v6];

  return CFAutorelease(v7);
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4
{
  v4 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:a3 forTargetSize:a4.width, a4.height];
  CGImageRetain(v4);
  return v4;
}

- (void)drawInContext:(CGContext *)a3
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self image];
  [(_CUIGraphicVariantVectorGlyph *)self alignmentRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CUINamedVectorGlyph *)self scale];
  CGAffineTransformMakeScale(&v15, v14, v14);
  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  v17 = CGRectApplyAffineTransform(v16, &v15);
  CGContextDrawImage(a3, v17, v5);
}

- (CGImage)imageWithColorResolver:(id)a3
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:a3 forTargetSize:v6 withColorResolver:v7, v8];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4 withColorResolver:(id)a5
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:a5 forTargetSize:a3 multiColorResolver:a4.width, a4.height];
  CGImageRetain(v5);
  return v5;
}

- (void)drawMulticolorLayerAtIndex:(unint64_t)a3 inContext:(CGContext *)a4 withColorResolver:(id)a5
{
  v7 = [(_CUIGraphicVariantVectorGlyph *)self imageWithColorResolver:a5];
  [(_CUIGraphicVariantVectorGlyph *)self alignmentRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CUINamedVectorGlyph *)self scale];
  CGAffineTransformMakeScale(&v17, v16, v16);
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v19 = CGRectApplyAffineTransform(v18, &v17);
  CGContextDrawImage(a4, v19, v7);
  CGImageRelease(v7);
}

- (CGImage)imageWithHierarchyColorResolver:(id)a3
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:a3 forTargetSize:v6 withHierarchyColorResolver:v7, v8];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4 withHierarchyColorResolver:(id)a5
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:a5 forTargetSize:a3 hierarchyColorResolver:a4.width, a4.height];
  CGImageRetain(v5);
  return v5;
}

- (void)drawHierarchyLayerAtIndex:(unint64_t)a3 inContext:(CGContext *)a4 withColorResolver:(id)a5
{
  v7 = [(_CUIGraphicVariantVectorGlyph *)self imageWithHierarchyColorResolver:a5];
  [(_CUIGraphicVariantVectorGlyph *)self alignmentRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CUINamedVectorGlyph *)self scale];
  CGAffineTransformMakeScale(&v17, v16, v16);
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v19 = CGRectApplyAffineTransform(v18, &v17);
  CGContextDrawImage(a4, v19, v7);
  CGImageRelease(v7);
}

- (CGImage)imageWithPaletteColorResolver:(id)a3
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:a3 forTargetSize:v6 withPaletteColorResolver:v7, v8];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4 withPaletteColorResolver:(id)a5
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:a5 forTargetSize:a3 paletteColorResolver:a4.width, a4.height];
  CGImageRetain(v5);
  return v5;
}

- (void)drawPaletteLayerAtIndex:(unint64_t)a3 inContext:(CGContext *)a4 withColorResolver:(id)a5
{
  v7 = [(_CUIGraphicVariantVectorGlyph *)self imageWithPaletteColorResolver:a5];
  [(_CUIGraphicVariantVectorGlyph *)self alignmentRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CUINamedVectorGlyph *)self scale];
  CGAffineTransformMakeScale(&v17, v16, v16);
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v19 = CGRectApplyAffineTransform(v18, &v17);
  CGContextDrawImage(a4, v19, v7);
  CGImageRelease(v7);
}

- (CGImage)imageWithPaletteColors:(id)a3
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:a3 forTargetSize:v6 withPaletteColors:v7, v8];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4 withPaletteColors:(id)a5
{
  height = a4.height;
  width = a4.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __96___CUIGraphicVariantVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColors___block_invoke;
  v12[3] = &unk_1E724A508;
  v12[5] = [a5 count];
  v12[6] = [-[CUINamedVectorGlyph hierarchyLayers](self "hierarchyLayers")];
  v12[4] = a5;
  v10 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:v12 forTargetSize:a3 paletteColorResolver:width, height];
  CGImageRetain(v10);
  return v10;
}

- (void)drawInContext:(CGContext *)a3 withPaletteColors:(id)a4
{
  v6 = [(_CUIGraphicVariantVectorGlyph *)self imageWithPaletteColors:a4];
  [(_CUIGraphicVariantVectorGlyph *)self alignmentRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CUINamedVectorGlyph *)self scale];
  CGAffineTransformMakeScale(&v16, v15, v15);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  v18 = CGRectApplyAffineTransform(v17, &v16);
  CGContextDrawImage(a3, v18, v6);
  CGImageRelease(v6);
}

- (CGImage)imageWithTintColor:(CGColor *)a3
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageWithTintColor:a3 usingScaleFactor:v6 forTargetSize:v7, v8];
}

- (CGImage)rasterizeImageWithTintColor:(CGColor *)a3 usingScaleFactor:(double)a4 forTargetSize:(CGSize)a5
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:a3 forTargetSize:a4 withTintColor:a5.width, a5.height];
  CGImageRetain(v5);
  return v5;
}

- (void)drawWithTintColor:(CGColor *)a3 inContext:(CGContext *)a4
{
  v6 = [(_CUIGraphicVariantVectorGlyph *)self imageWithTintColor:a3];
  [(_CUIGraphicVariantVectorGlyph *)self alignmentRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CUINamedVectorGlyph *)self scale];
  CGAffineTransformMakeScale(&v16, v15, v15);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  v18 = CGRectApplyAffineTransform(v17, &v16);
  CGContextDrawImage(a4, v18, v6);
  CGImageRelease(v6);
}

- (CGSize)_sizeOfBackgroundShape
{
  v3 = [(_CUIGraphicVariantVectorGlyph *)self options];
  [(CUINamedVectorGlyph *)self pointSize];
  v5 = v4 + v4 * 0.1 * 2.0;
  [(CUINamedVectorGlyph *)self glyphContinuousSize];
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:?];
  v7 = v5 * v6;
  v8 = [(CUIVectorGlyphGraphicVariantOptions *)v3 shape];
  if (v8 == 2)
  {
    v10 = v7 + v7 * 0.1725 * 2.0;
  }

  else
  {
    if (v8)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v7;
    }

    if (v8 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v8 != 1)
    {
      v7 = v9;
    }
  }

  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGContext)_createBackgroundBitmapContextOfSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  if ([(_CUIGraphicVariantVectorGlyph *)self _containsWideGamutColor])
  {
    v7 = 4097;
    v8 = 16;
    DisplayP3 = _CUIColorSpaceGetDisplayP3();
  }

  else
  {
    v7 = 8193;
    v8 = 8;
    DisplayP3 = _CUIColorSpaceGetSRGB();
  }

  v12 = DisplayP3;
  v13 = vcvtpd_u64_f64(width * a4);
  v14 = vcvtpd_u64_f64(height * a4);

  return CUICGBitmapContextCreate(v13, v14, v8, 0, v12, v7, v10, v11);
}

- (CGImage)_createBackgroundImageOfSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  result = [_CUIGraphicVariantVectorGlyph _createBackgroundBitmapContextOfSize:"_createBackgroundBitmapContextOfSize:scale:" scale:?];
  if (result)
  {
    v9 = result;
    [(_CUIGraphicVariantVectorGlyph *)self _drawBackgroundShapeInContext:result targetSize:width scale:height, a4];
    Image = CGBitmapContextCreateImage(v9);
    CFRelease(v9);
    return Image;
  }

  return result;
}

- (CGPath)_createBackgroundShapeInRect:(CGRect)a3 scale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(_CUIGraphicVariantVectorGlyph *)self options];
  v10 = [(CUIVectorGlyphGraphicVariantOptions *)v9 shape];
  CGAffineTransformMakeScale(&v18, a4, a4);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  v21 = CGRectIntegral(v20);
  v11 = v21.origin.x;
  v12 = v21.origin.y;
  v13 = v21.size.width;
  v14 = v21.size.height;
  if (v10 == 2 || v10 == 1)
  {
    v16 = v21.size.height * 0.5;
    return _CUICreateNewContinuousRoundedRect(v11, v12, v13, v14, fmax(v16, 0.0));
  }

  if (!v10)
  {
    [(CUIVectorGlyphGraphicVariantOptions *)v9 roundedRectCornerRadius];
    v16 = v13 * v15;
    return _CUICreateNewContinuousRoundedRect(v11, v12, v13, v14, fmax(v16, 0.0));
  }

  return 0;
}

- (CGGradient)_createBackgroundGradientWithColors:(id)a3 useSCurve:(BOOL)a4 height:(double)a5
{
  v6 = a4;
  v8 = objc_opt_class();

  return [v8 _createAxialGradientWithColors:a3 useSCurve:v6 height:a5];
}

- (CGRect)_backgroundShapeBoundsForTargetSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(CUIVectorGlyphGraphicVariantOptions *)[(_CUIGraphicVariantVectorGlyph *)self options] shapeEffect];
  v8 = 0.0;
  if (v7 == 1)
  {
    v9 = 0.8046875;
    if (height * a4 < 256.0)
    {
      v9 = 0.8125;
    }

    v10 = 0.833;
    if (height * a4 >= 64.0)
    {
      v10 = v9;
    }

    v11 = CUIEdgeInsetsMake((height - height * v10) * 0.5, (height - height * v10) * 0.5, (height - height * v10) * 0.5, (height - height * v10) * 0.5);
    v15 = CUIEdgeInsetsInsetRect(0.0, 0.0, width, height, v11, v12, v13, v14);
    width = v16;
    height = v17;
  }

  else
  {
    v15 = 0.0;
  }

  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v8;
  result.origin.x = v15;
  return result;
}

- (void)_drawShapePathInContext:(CGContext *)a3 targetSize:(CGSize)a4 scale:(double)a5 shapePath:(CGPath *)a6
{
  height = a4.height;
  width = a4.width;
  v12 = [(_CUIGraphicVariantVectorGlyph *)self options];
  v13 = [(CUIVectorGlyphGraphicVariantOptions *)v12 fill];
  v14 = [(CUIVectorGlyphGraphicVariantOptions *)v12 fillColors];
  v15 = v14;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v20 = height * a5;
      v19 = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundGradientWithColors:v14 useSCurve:0 height:v20];
      CGContextAddPath(a3, a6);
      CGContextClip(a3);
      v23.x = width * a5 * 0.5;
      v23.y = v20 * 0.5;
      v25.x = v23.x;
      v25.y = v20 * 0.5;
      CGContextDrawRadialGradient(a3, v19, v23, v20 * 0.5, v25, 0.0, 3u);
      goto LABEL_14;
    }

    if (v13 != 3)
    {
      return;
    }

    v16 = height * a5;
    v17 = self;
    v18 = 1;
LABEL_8:
    v19 = [(_CUIGraphicVariantVectorGlyph *)v17 _createBackgroundGradientWithColors:v15 useSCurve:v18 height:v16];
    CGContextAddPath(a3, a6);
    CGContextClip(a3);
    v22.x = width * a5 * 0.5;
    v22.y = 0.0;
    v24.x = v22.x;
    v24.y = v16;
    CGContextDrawLinearGradient(a3, v19, v22, v24, 3u);
LABEL_14:

    CGGradientRelease(v19);
    return;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      return;
    }

    v16 = height * a5;
    v17 = self;
    v18 = 0;
    goto LABEL_8;
  }

  CGContextSetFillColorWithColor(a3, [(NSArray *)v14 objectAtIndex:0]);
  CGContextAddPath(a3, a6);

  CGContextFillPath(a3);
}

- (void)_drawBackgroundShapeInContext:(CGContext *)a3 targetSize:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v10 = [(_CUIGraphicVariantVectorGlyph *)self options];
  [(CUIVectorGlyphGraphicVariantOptions *)v10 borderWidth];
  v12 = v11 / a5;
  [(_CUIGraphicVariantVectorGlyph *)self _backgroundShapeBoundsForTargetSize:width scale:height, a5];
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  if (v12 > 0.0)
  {
    *&v13 = CGRectInset(*&v13, v12, v12);
  }

  v21 = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundShapeInRect:v13 scale:v14, v15, v16, a5];
  CGContextSaveGState(a3);
  [(_CUIGraphicVariantVectorGlyph *)self _drawShapePathInContext:a3 targetSize:v21 scale:width shapePath:height, a5];
  if (v12 > 0.0)
  {
    CGContextSaveGState(a3);
    CGContextResetClip(a3);
    v51.origin.x = v17;
    v51.origin.y = v18;
    v51.size.width = v19;
    v51.size.height = v20;
    v52 = CGRectInset(v51, v12 + 0.5, v12 + 0.5);
    v22 = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundShapeInRect:v52.origin.x scale:v52.origin.y, v52.size.width, v52.size.height, a5];
    v23 = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundShapeInRect:v17 scale:v18, v19, v20, a5];
    Mutable = CGPathCreateMutable();
    CGPathAddPath(Mutable, 0, v22);
    CGPathAddPath(Mutable, 0, v23);
    CGContextAddPath(a3, Mutable);
    CGContextSetFillColorWithColor(a3, [(CUIVectorGlyphGraphicVariantOptions *)v10 borderColor]);
    CGContextEOFillPath(a3);
    CGPathRelease(Mutable);
    CGPathRelease(v22);
    CGPathRelease(v23);
    CGContextRestoreGState(a3);
  }

  CGContextRestoreGState(a3);
  if (_CUIDebugShowGraphicVariantMetrics())
  {
    [(_CUIGraphicVariantVectorGlyph *)self interiorAlignmentRectForTargetSize:width scale:height, a5];
    v47 = v26;
    v48 = v25;
    v45 = v28;
    v46 = v27;
    [(_CUIGraphicVariantVectorGlyph *)self alignmentRectForTargetSize:width scale:height, a5];
    v49 = v29;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [(CUIVectorGlyphGraphicVariantOptions *)v10 shapeEffect];
    CGContextSaveGState(a3);
    CGContextSetBlendMode(a3, kCGBlendModeCopy);
    CGContextSetLineWidth(a3, 1.0);
    CGContextSetShouldAntialias(a3, 0);
    CGContextMoveToPoint(a3, 0.0, height * 0.5 * a5);
    CGContextAddLineToPoint(a3, width * a5, height * 0.5 * a5);
    v36 = width * 0.5 * a5;
    CGContextMoveToPoint(a3, v36, 0.0);
    CGContextAddLineToPoint(a3, v36, height * a5);
    SRGB = CGColorCreateSRGB(1.0, 0.0, 1.0, 1.0);
    CGContextSetStrokeColorWithColor(a3, SRGB);
    CGContextStrokePath(a3);
    CGColorRelease(SRGB);
    v53.origin.y = v47;
    v53.origin.x = v48;
    v53.size.height = v45;
    v53.size.width = v46;
    CGContextAddRect(a3, v53);
    v38 = CGColorCreateSRGB(1.0, 1.0, 0.0, 1.0);
    CGContextSetStrokeColorWithColor(a3, v38);
    CGContextStrokePath(a3);
    CGColorRelease(v38);
    ClipBoundingBox = CGContextGetClipBoundingBox(a3);
    v54.origin.x = v49;
    v54.origin.y = v31;
    v54.size.width = v33;
    v54.size.height = v35;
    v39 = CGRectEqualToRect(v54, ClipBoundingBox);
    if (v39)
    {
      v40 = v33 + -1.0;
    }

    else
    {
      v40 = v33;
    }

    if (v39)
    {
      v41 = v35 + -1.0;
    }

    else
    {
      v41 = v35;
    }

    v42 = v49;
    v43 = v31;
    CGContextAddRect(a3, *(&v40 - 2));
    v44 = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
    CGContextSetStrokeColorWithColor(a3, v44);
    CGContextStrokePath(a3);
    CGColorRelease(v44);
    CGContextRestoreGState(a3);
  }

  CGPathRelease(v21);
}

- (id)_createContentEffectsForTargetSize:(CGSize)a3 scale:(double *)a4 contentEffectStyle:(int64_t)a5
{
  height = a3.height;
  if (a3.height >= 0.0)
  {
    if (a5 > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E724A528[a5];
    }
  }

  else
  {
    v7 = @"CUIVectorGlyphGraphicVariantContentEffectNone";
  }

  v8 = [CUIDesignLibraryCompositeCatalog compositeCatalogForDesignSystem:0 colorScheme:0 contrast:0 styling:0 error:0, a3.width];
  if (!v8)
  {
    return 0;
  }

  v9 = [v8 shapeEffectPresetWithName:v7 error:0];
  if (v9)
  {
    v10 = [[CUIShapeEffectStack alloc] initWithEffectPreset:v9];
    v9 = v10;
    if (v10)
    {
      v11 = height * *a4;
      v12 = 1.0;
      if (v11 > 32.0)
      {
        v12 = v11 / 992.0 * 10.0;
      }

      [(CUIShapeEffectStack *)v10 scaleEffectParametersBy:v12];
      *a4 = v12;
    }
  }

  return v9;
}

- (id)_createShapeEffectsForTargetSize:(CGSize)a3 scale:(double *)a4
{
  height = a3.height;
  if ([(CUIVectorGlyphGraphicVariantOptions *)[(_CUIGraphicVariantVectorGlyph *)self options] shapeEffect]!= 1)
  {
    return 0;
  }

  v6 = [CUIDesignLibraryCompositeCatalog compositeCatalogForDesignSystem:0 colorScheme:0 contrast:0 styling:0 error:0];
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 shapeEffectPresetWithName:@"CUIVectorGlyphGraphicVariantShapeEffectDropShadow" error:0];
  if (v7)
  {
    v8 = [[CUIShapeEffectStack alloc] initWithEffectPreset:v7];
    v7 = v8;
    if (v8)
    {
      v9 = height * *a4;
      v10 = 1.0;
      if (v9 > 32.0)
      {
        v10 = v9 / 992.0 * 10.0;
      }

      [(CUIShapeEffectStack *)v8 scaleEffectParametersBy:v10];
      *a4 = v10;
    }
  }

  return v7;
}

- (id)layerStackWithDisplayScale:(double)a3
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:a3 forTargetSize:v5, v6];
}

- (id)layerStackWithDisplayScale:(double)a3 withColorResolver:(id)a4
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:a4 forTargetSize:a3 multiColorResolver:v7, v8];
}

- (id)layerStackWithDisplayScale:(double)a3 withPaletteColorResolver:(id)a4
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:a4 forTargetSize:a3 paletteColorResolver:v7, v8];
}

- (id)layerStackWithDisplayScale:(double)a3 withPaletteColors:(id)a4
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self layerStackWithDisplayScale:a4 forTargetSize:a3 withPaletteColors:v7, v8];
}

- (id)layerStackWithDisplayScale:(double)a3 forTargetSize:(CGSize)a4 withPaletteColors:(id)a5
{
  height = a4.height;
  width = a4.width;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __92___CUIGraphicVariantVectorGlyph_layerStackWithDisplayScale_forTargetSize_withPaletteColors___block_invoke;
  v11[3] = &unk_1E724A508;
  v11[5] = [a5 count];
  v11[6] = [-[CUINamedVectorGlyph hierarchyLayers](self "hierarchyLayers")];
  v11[4] = a5;
  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:v11 forTargetSize:a3 paletteColorResolver:width, height];
}

- (id)layerStackWithDisplayScale:(double)a3 withHierarchyColorResolver:(id)a4
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:a4 forTargetSize:a3 hierarchyColorResolver:v7, v8];
}

- (id)layerStackWithDisplayScale:(double)a3 withTintColor:(CGColor *)a4
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:a4 forTargetSize:a3 withTintColor:v7, v8];
}

- (id)_layerStackWithDisplayScale:(double)a3 forTargetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = self;
  v8 = sub_18DFFDEA4(a3, width, height);

  return v8;
}

- (CGImage)_imageWithDisplayScale:(double)a3 forTargetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = self;
  sub_18DFFE920(0, 0, 4u, a3, width, height);
  v9 = v8;

  return v9;
}

- (id)_encapsulatedGlyphForTargetSize:(CGSize)a3 displayScale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  [(_CUIGraphicVariantVectorGlyph *)v7 _backgroundShapeBoundsForTargetSize:width scale:height, a4];
  x = v16.origin.x;
  y = v16.origin.y;
  v10 = v16.size.width;
  v11 = v16.size.height;
  v12 = CGRectGetWidth(v16);
  v13 = sub_18DFFF390(1, x, y, v10, v11, width, height, v12 / width);

  return v13;
}

@end