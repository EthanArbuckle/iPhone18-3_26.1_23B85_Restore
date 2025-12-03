@interface _CUIGraphicVariantVectorGlyph
- (BOOL)_containsWideGamutColor;
- (CGContext)_createBackgroundBitmapContextOfSize:(CGSize)size scale:(double)scale;
- (CGGradient)_createBackgroundGradientWithColors:(id)colors useSCurve:(BOOL)curve height:(double)height;
- (CGImage)_createBackgroundImageOfSize:(CGSize)size scale:(double)scale;
- (CGImage)_imageWithDisplayScale:(double)scale forTargetSize:(CGSize)size;
- (CGImage)image;
- (CGImage)imageWithColorResolver:(id)resolver;
- (CGImage)imageWithHierarchyColorResolver:(id)resolver;
- (CGImage)imageWithPaletteColorResolver:(id)resolver;
- (CGImage)imageWithPaletteColors:(id)colors;
- (CGImage)imageWithTintColor:(CGColor *)color;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withColorResolver:(id)resolver;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withHierarchyColorResolver:(id)resolver;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withPaletteColorResolver:(id)resolver;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withPaletteColors:(id)colors;
- (CGImage)rasterizeImageWithTintColor:(CGColor *)color usingScaleFactor:(double)factor forTargetSize:(CGSize)size;
- (CGPath)CGPath;
- (CGPath)_createBackgroundShapeInRect:(CGRect)rect scale:(double)scale;
- (CGRect)_backgroundShapeBoundsForTargetSize:(CGSize)size scale:(double)scale;
- (CGRect)alignmentRect;
- (CGRect)alignmentRectForTargetSize:(CGSize)size scale:(double)scale;
- (CGRect)alignmentRectUnrounded;
- (CGRect)contentBounds;
- (CGRect)contentBoundsUnrounded;
- (CGRect)interiorAlignmentRect;
- (CGRect)interiorAlignmentRectForTargetSize:(CGSize)size scale:(double)scale;
- (CGRect)interiorAlignmentRectUnrounded;
- (CGSize)_sizeOfBackgroundShape;
- (double)baselineOffset;
- (double)baselineOffsetUnrounded;
- (id)_createContentEffectsForTargetSize:(CGSize)size scale:(double *)scale contentEffectStyle:(int64_t)style;
- (id)_createShapeEffectsForTargetSize:(CGSize)size scale:(double *)scale;
- (id)_encapsulatedGlyphForTargetSize:(CGSize)size displayScale:(double)scale;
- (id)_initWithBaseGlyph:(id)glyph options:(id)options;
- (id)_layerStackWithDisplayScale:(double)scale forTargetSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)graphicVariantWithOptions:(id)options;
- (id)layerStackWithDisplayScale:(double)scale;
- (id)layerStackWithDisplayScale:(double)scale forTargetSize:(CGSize)size withPaletteColors:(id)colors;
- (id)layerStackWithDisplayScale:(double)scale withColorResolver:(id)resolver;
- (id)layerStackWithDisplayScale:(double)scale withHierarchyColorResolver:(id)resolver;
- (id)layerStackWithDisplayScale:(double)scale withPaletteColorResolver:(id)resolver;
- (id)layerStackWithDisplayScale:(double)scale withPaletteColors:(id)colors;
- (id)layerStackWithDisplayScale:(double)scale withTintColor:(CGColor *)color;
- (void)_drawBackgroundShapeInContext:(CGContext *)context targetSize:(CGSize)size scale:(double)scale;
- (void)_drawShapePathInContext:(CGContext *)context targetSize:(CGSize)size scale:(double)scale shapePath:(CGPath *)path;
- (void)dealloc;
- (void)drawHierarchyLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver;
- (void)drawInContext:(CGContext *)context;
- (void)drawInContext:(CGContext *)context withPaletteColors:(id)colors;
- (void)drawMulticolorLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver;
- (void)drawPaletteLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver;
- (void)drawWithTintColor:(CGColor *)color inContext:(CGContext *)context;
@end

@implementation _CUIGraphicVariantVectorGlyph

- (id)_initWithBaseGlyph:(id)glyph options:(id)options
{
  v8.receiver = self;
  v8.super_class = _CUIGraphicVariantVectorGlyph;
  v6 = -[CUINamedLookup initWithName:usingRenditionKey:fromTheme:](&v8, sel_initWithName_usingRenditionKey_fromTheme_, [glyph name], objc_msgSend(glyph, "renditionKey"), objc_msgSend(glyph, "storageRef"));
  if (v6)
  {
    -[CUINamedVectorGlyph _setUltralightInterpolationSource:](v6, "_setUltralightInterpolationSource:", [glyph _ultralightInterpolationSource]);
    -[CUINamedVectorGlyph _setBlackInterpolationSource:](v6, "_setBlackInterpolationSource:", [glyph _blackInterpolationSource]);
    [glyph pointSize];
    [(CUINamedVectorGlyph *)v6 _setPointSize:?];
    [glyph scale];
    [(CUINamedVectorGlyph *)v6 _setScale:?];
    -[CUINamedVectorGlyph _setCatalog:](v6, "_setCatalog:", [glyph _catalog]);
    [glyph fontMatchingScaleFactor];
    [(CUINamedVectorGlyph *)v6 setFontMatchingScaleFactor:?];
    [glyph glyphContinuousWeight];
    [(CUINamedVectorGlyph *)v6 _setGlyphWeight:?];
    [glyph glyphContinuousSize];
    [(CUINamedVectorGlyph *)v6 _setGlyphSize:?];
    -[CUINamedVectorGlyph _setFlippable:](v6, "_setFlippable:", [glyph isFlippable]);
    -[CUINamedVectorGlyph _setLayoutDirection:](v6, "_setLayoutDirection:", [glyph layoutDirection]);
    -[CUINamedVectorGlyph _setCanUsePathConcatenation:](v6, "_setCanUsePathConcatenation:", [glyph _canUsePathConcatenation]);
    -[CUINamedVectorGlyph _setImage:](v6, "_setImage:", [glyph _cgImageRef]);
    [glyph variableMinValue];
    [(CUINamedVectorGlyph *)v6 setVariableMinValue:?];
    [glyph variableMaxValue];
    [(CUINamedVectorGlyph *)v6 setVariableMaxValue:?];
    [(_CUIGraphicVariantVectorGlyph *)v6 setOptions:options];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)graphicVariantWithOptions:(id)options
{
  if ([options isEqual:{-[_CUIGraphicVariantVectorGlyph options](self, "options")}])
  {
    selfCopy = self;

    return selfCopy;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _CUIGraphicVariantVectorGlyph;
    return [(CUINamedVectorGlyph *)&v7 graphicVariantWithOptions:options];
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

- (CGRect)alignmentRectForTargetSize:(CGSize)size scale:(double)scale
{
  [(_CUIGraphicVariantVectorGlyph *)self _backgroundShapeBoundsForTargetSize:size.width scale:size.height];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  CGAffineTransformMakeScale(&v13, scale, scale);
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

- (CGRect)interiorAlignmentRectForTargetSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  [(CUINamedVectorGlyph *)self scale];
  [-[_CUIGraphicVariantVectorGlyph _encapsulatedGlyphForTargetSize:displayScale:](self _encapsulatedGlyphForTargetSize:width displayScale:{height, v8), "encapsulatedAlignmentRect"}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  CGAffineTransformMakeScale(&v17, scale, scale);
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
  _containsWideGamutColor = [(CUINamedVectorGlyph *)&v11 _containsWideGamutColor];
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
  if (_containsWideGamutColor)
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
  cGPath = [(CUINamedVectorGlyph *)&v32 CGPath];
  if (!cGPath)
  {
    return 0;
  }

  v4 = cGPath;
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

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size
{
  v4 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:factor forTargetSize:size.width, size.height];
  CGImageRetain(v4);
  return v4;
}

- (void)drawInContext:(CGContext *)context
{
  image = [(_CUIGraphicVariantVectorGlyph *)self image];
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
  CGContextDrawImage(context, v17, image);
}

- (CGImage)imageWithColorResolver:(id)resolver
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:resolver forTargetSize:v6 withColorResolver:v7, v8];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withColorResolver:(id)resolver
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:resolver forTargetSize:factor multiColorResolver:size.width, size.height];
  CGImageRetain(v5);
  return v5;
}

- (void)drawMulticolorLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver
{
  v7 = [(_CUIGraphicVariantVectorGlyph *)self imageWithColorResolver:resolver];
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
  CGContextDrawImage(context, v19, v7);
  CGImageRelease(v7);
}

- (CGImage)imageWithHierarchyColorResolver:(id)resolver
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:resolver forTargetSize:v6 withHierarchyColorResolver:v7, v8];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withHierarchyColorResolver:(id)resolver
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:resolver forTargetSize:factor hierarchyColorResolver:size.width, size.height];
  CGImageRetain(v5);
  return v5;
}

- (void)drawHierarchyLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver
{
  v7 = [(_CUIGraphicVariantVectorGlyph *)self imageWithHierarchyColorResolver:resolver];
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
  CGContextDrawImage(context, v19, v7);
  CGImageRelease(v7);
}

- (CGImage)imageWithPaletteColorResolver:(id)resolver
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:resolver forTargetSize:v6 withPaletteColorResolver:v7, v8];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withPaletteColorResolver:(id)resolver
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:resolver forTargetSize:factor paletteColorResolver:size.width, size.height];
  CGImageRetain(v5);
  return v5;
}

- (void)drawPaletteLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver
{
  v7 = [(_CUIGraphicVariantVectorGlyph *)self imageWithPaletteColorResolver:resolver];
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
  CGContextDrawImage(context, v19, v7);
  CGImageRelease(v7);
}

- (CGImage)imageWithPaletteColors:(id)colors
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageUsingScaleFactor:colors forTargetSize:v6 withPaletteColors:v7, v8];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withPaletteColors:(id)colors
{
  height = size.height;
  width = size.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __96___CUIGraphicVariantVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColors___block_invoke;
  v12[3] = &unk_1E724A508;
  v12[5] = [colors count];
  v12[6] = [-[CUINamedVectorGlyph hierarchyLayers](self "hierarchyLayers")];
  v12[4] = colors;
  height = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:v12 forTargetSize:factor paletteColorResolver:width, height];
  CGImageRetain(height);
  return height;
}

- (void)drawInContext:(CGContext *)context withPaletteColors:(id)colors
{
  v6 = [(_CUIGraphicVariantVectorGlyph *)self imageWithPaletteColors:colors];
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
  CGContextDrawImage(context, v18, v6);
  CGImageRelease(v6);
}

- (CGImage)imageWithTintColor:(CGColor *)color
{
  [(CUINamedVectorGlyph *)self scale];
  v6 = v5;
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self rasterizeImageWithTintColor:color usingScaleFactor:v6 forTargetSize:v7, v8];
}

- (CGImage)rasterizeImageWithTintColor:(CGColor *)color usingScaleFactor:(double)factor forTargetSize:(CGSize)size
{
  v5 = [(_CUIGraphicVariantVectorGlyph *)self _imageWithDisplayScale:color forTargetSize:factor withTintColor:size.width, size.height];
  CGImageRetain(v5);
  return v5;
}

- (void)drawWithTintColor:(CGColor *)color inContext:(CGContext *)context
{
  v6 = [(_CUIGraphicVariantVectorGlyph *)self imageWithTintColor:color];
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
  CGContextDrawImage(context, v18, v6);
  CGImageRelease(v6);
}

- (CGSize)_sizeOfBackgroundShape
{
  options = [(_CUIGraphicVariantVectorGlyph *)self options];
  [(CUINamedVectorGlyph *)self pointSize];
  v5 = v4 + v4 * 0.1 * 2.0;
  [(CUINamedVectorGlyph *)self glyphContinuousSize];
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:?];
  v7 = v5 * v6;
  shape = [(CUIVectorGlyphGraphicVariantOptions *)options shape];
  if (shape == 2)
  {
    v10 = v7 + v7 * 0.1725 * 2.0;
  }

  else
  {
    if (shape)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v7;
    }

    if (shape == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (shape != 1)
    {
      v7 = v9;
    }
  }

  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGContext)_createBackgroundBitmapContextOfSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
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
  v13 = vcvtpd_u64_f64(width * scale);
  v14 = vcvtpd_u64_f64(height * scale);

  return CUICGBitmapContextCreate(v13, v14, v8, 0, v12, v7, v10, v11);
}

- (CGImage)_createBackgroundImageOfSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  result = [_CUIGraphicVariantVectorGlyph _createBackgroundBitmapContextOfSize:"_createBackgroundBitmapContextOfSize:scale:" scale:?];
  if (result)
  {
    v9 = result;
    [(_CUIGraphicVariantVectorGlyph *)self _drawBackgroundShapeInContext:result targetSize:width scale:height, scale];
    Image = CGBitmapContextCreateImage(v9);
    CFRelease(v9);
    return Image;
  }

  return result;
}

- (CGPath)_createBackgroundShapeInRect:(CGRect)rect scale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  options = [(_CUIGraphicVariantVectorGlyph *)self options];
  shape = [(CUIVectorGlyphGraphicVariantOptions *)options shape];
  CGAffineTransformMakeScale(&v18, scale, scale);
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
  if (shape == 2 || shape == 1)
  {
    v16 = v21.size.height * 0.5;
    return _CUICreateNewContinuousRoundedRect(v11, v12, v13, v14, fmax(v16, 0.0));
  }

  if (!shape)
  {
    [(CUIVectorGlyphGraphicVariantOptions *)options roundedRectCornerRadius];
    v16 = v13 * v15;
    return _CUICreateNewContinuousRoundedRect(v11, v12, v13, v14, fmax(v16, 0.0));
  }

  return 0;
}

- (CGGradient)_createBackgroundGradientWithColors:(id)colors useSCurve:(BOOL)curve height:(double)height
{
  curveCopy = curve;
  v8 = objc_opt_class();

  return [v8 _createAxialGradientWithColors:colors useSCurve:curveCopy height:height];
}

- (CGRect)_backgroundShapeBoundsForTargetSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  shapeEffect = [(CUIVectorGlyphGraphicVariantOptions *)[(_CUIGraphicVariantVectorGlyph *)self options] shapeEffect];
  v8 = 0.0;
  if (shapeEffect == 1)
  {
    v9 = 0.8046875;
    if (height * scale < 256.0)
    {
      v9 = 0.8125;
    }

    v10 = 0.833;
    if (height * scale >= 64.0)
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

- (void)_drawShapePathInContext:(CGContext *)context targetSize:(CGSize)size scale:(double)scale shapePath:(CGPath *)path
{
  height = size.height;
  width = size.width;
  options = [(_CUIGraphicVariantVectorGlyph *)self options];
  fill = [(CUIVectorGlyphGraphicVariantOptions *)options fill];
  fillColors = [(CUIVectorGlyphGraphicVariantOptions *)options fillColors];
  v15 = fillColors;
  if (fill > 1)
  {
    if (fill == 2)
    {
      v20 = height * scale;
      v19 = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundGradientWithColors:fillColors useSCurve:0 height:v20];
      CGContextAddPath(context, path);
      CGContextClip(context);
      v23.x = width * scale * 0.5;
      v23.y = v20 * 0.5;
      v25.x = v23.x;
      v25.y = v20 * 0.5;
      CGContextDrawRadialGradient(context, v19, v23, v20 * 0.5, v25, 0.0, 3u);
      goto LABEL_14;
    }

    if (fill != 3)
    {
      return;
    }

    v16 = height * scale;
    selfCopy2 = self;
    v18 = 1;
LABEL_8:
    v19 = [(_CUIGraphicVariantVectorGlyph *)selfCopy2 _createBackgroundGradientWithColors:v15 useSCurve:v18 height:v16];
    CGContextAddPath(context, path);
    CGContextClip(context);
    v22.x = width * scale * 0.5;
    v22.y = 0.0;
    v24.x = v22.x;
    v24.y = v16;
    CGContextDrawLinearGradient(context, v19, v22, v24, 3u);
LABEL_14:

    CGGradientRelease(v19);
    return;
  }

  if (fill)
  {
    if (fill != 1)
    {
      return;
    }

    v16 = height * scale;
    selfCopy2 = self;
    v18 = 0;
    goto LABEL_8;
  }

  CGContextSetFillColorWithColor(context, [(NSArray *)fillColors objectAtIndex:0]);
  CGContextAddPath(context, path);

  CGContextFillPath(context);
}

- (void)_drawBackgroundShapeInContext:(CGContext *)context targetSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  options = [(_CUIGraphicVariantVectorGlyph *)self options];
  [(CUIVectorGlyphGraphicVariantOptions *)options borderWidth];
  v12 = v11 / scale;
  [(_CUIGraphicVariantVectorGlyph *)self _backgroundShapeBoundsForTargetSize:width scale:height, scale];
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  if (v12 > 0.0)
  {
    *&v13 = CGRectInset(*&v13, v12, v12);
  }

  scale = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundShapeInRect:v13 scale:v14, v15, v16, scale];
  CGContextSaveGState(context);
  [(_CUIGraphicVariantVectorGlyph *)self _drawShapePathInContext:context targetSize:scale scale:width shapePath:height, scale];
  if (v12 > 0.0)
  {
    CGContextSaveGState(context);
    CGContextResetClip(context);
    v51.origin.x = v17;
    v51.origin.y = v18;
    v51.size.width = v19;
    v51.size.height = v20;
    v52 = CGRectInset(v51, v12 + 0.5, v12 + 0.5);
    scale2 = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundShapeInRect:v52.origin.x scale:v52.origin.y, v52.size.width, v52.size.height, scale];
    scale3 = [(_CUIGraphicVariantVectorGlyph *)self _createBackgroundShapeInRect:v17 scale:v18, v19, v20, scale];
    Mutable = CGPathCreateMutable();
    CGPathAddPath(Mutable, 0, scale2);
    CGPathAddPath(Mutable, 0, scale3);
    CGContextAddPath(context, Mutable);
    CGContextSetFillColorWithColor(context, [(CUIVectorGlyphGraphicVariantOptions *)options borderColor]);
    CGContextEOFillPath(context);
    CGPathRelease(Mutable);
    CGPathRelease(scale2);
    CGPathRelease(scale3);
    CGContextRestoreGState(context);
  }

  CGContextRestoreGState(context);
  if (_CUIDebugShowGraphicVariantMetrics())
  {
    [(_CUIGraphicVariantVectorGlyph *)self interiorAlignmentRectForTargetSize:width scale:height, scale];
    v47 = v26;
    v48 = v25;
    v45 = v28;
    v46 = v27;
    [(_CUIGraphicVariantVectorGlyph *)self alignmentRectForTargetSize:width scale:height, scale];
    v49 = v29;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [(CUIVectorGlyphGraphicVariantOptions *)options shapeEffect];
    CGContextSaveGState(context);
    CGContextSetBlendMode(context, kCGBlendModeCopy);
    CGContextSetLineWidth(context, 1.0);
    CGContextSetShouldAntialias(context, 0);
    CGContextMoveToPoint(context, 0.0, height * 0.5 * scale);
    CGContextAddLineToPoint(context, width * scale, height * 0.5 * scale);
    v36 = width * 0.5 * scale;
    CGContextMoveToPoint(context, v36, 0.0);
    CGContextAddLineToPoint(context, v36, height * scale);
    SRGB = CGColorCreateSRGB(1.0, 0.0, 1.0, 1.0);
    CGContextSetStrokeColorWithColor(context, SRGB);
    CGContextStrokePath(context);
    CGColorRelease(SRGB);
    v53.origin.y = v47;
    v53.origin.x = v48;
    v53.size.height = v45;
    v53.size.width = v46;
    CGContextAddRect(context, v53);
    v38 = CGColorCreateSRGB(1.0, 1.0, 0.0, 1.0);
    CGContextSetStrokeColorWithColor(context, v38);
    CGContextStrokePath(context);
    CGColorRelease(v38);
    ClipBoundingBox = CGContextGetClipBoundingBox(context);
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
    CGContextAddRect(context, *(&v40 - 2));
    v44 = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
    CGContextSetStrokeColorWithColor(context, v44);
    CGContextStrokePath(context);
    CGColorRelease(v44);
    CGContextRestoreGState(context);
  }

  CGPathRelease(scale);
}

- (id)_createContentEffectsForTargetSize:(CGSize)size scale:(double *)scale contentEffectStyle:(int64_t)style
{
  height = size.height;
  if (size.height >= 0.0)
  {
    if (style > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E724A528[style];
    }
  }

  else
  {
    v7 = @"CUIVectorGlyphGraphicVariantContentEffectNone";
  }

  v8 = [CUIDesignLibraryCompositeCatalog compositeCatalogForDesignSystem:0 colorScheme:0 contrast:0 styling:0 error:0, size.width];
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
      v11 = height * *scale;
      v12 = 1.0;
      if (v11 > 32.0)
      {
        v12 = v11 / 992.0 * 10.0;
      }

      [(CUIShapeEffectStack *)v10 scaleEffectParametersBy:v12];
      *scale = v12;
    }
  }

  return v9;
}

- (id)_createShapeEffectsForTargetSize:(CGSize)size scale:(double *)scale
{
  height = size.height;
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
      v9 = height * *scale;
      v10 = 1.0;
      if (v9 > 32.0)
      {
        v10 = v9 / 992.0 * 10.0;
      }

      [(CUIShapeEffectStack *)v8 scaleEffectParametersBy:v10];
      *scale = v10;
    }
  }

  return v7;
}

- (id)layerStackWithDisplayScale:(double)scale
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:scale forTargetSize:v5, v6];
}

- (id)layerStackWithDisplayScale:(double)scale withColorResolver:(id)resolver
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:resolver forTargetSize:scale multiColorResolver:v7, v8];
}

- (id)layerStackWithDisplayScale:(double)scale withPaletteColorResolver:(id)resolver
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:resolver forTargetSize:scale paletteColorResolver:v7, v8];
}

- (id)layerStackWithDisplayScale:(double)scale withPaletteColors:(id)colors
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self layerStackWithDisplayScale:colors forTargetSize:scale withPaletteColors:v7, v8];
}

- (id)layerStackWithDisplayScale:(double)scale forTargetSize:(CGSize)size withPaletteColors:(id)colors
{
  height = size.height;
  width = size.width;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __92___CUIGraphicVariantVectorGlyph_layerStackWithDisplayScale_forTargetSize_withPaletteColors___block_invoke;
  v11[3] = &unk_1E724A508;
  v11[5] = [colors count];
  v11[6] = [-[CUINamedVectorGlyph hierarchyLayers](self "hierarchyLayers")];
  v11[4] = colors;
  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:v11 forTargetSize:scale paletteColorResolver:width, height];
}

- (id)layerStackWithDisplayScale:(double)scale withHierarchyColorResolver:(id)resolver
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:resolver forTargetSize:scale hierarchyColorResolver:v7, v8];
}

- (id)layerStackWithDisplayScale:(double)scale withTintColor:(CGColor *)color
{
  [(_CUIGraphicVariantVectorGlyph *)self _sizeOfBackgroundShape];

  return [(_CUIGraphicVariantVectorGlyph *)self _layerStackWithDisplayScale:color forTargetSize:scale withTintColor:v7, v8];
}

- (id)_layerStackWithDisplayScale:(double)scale forTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v8 = sub_18DFFDEA4(scale, width, height);

  return v8;
}

- (CGImage)_imageWithDisplayScale:(double)scale forTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_18DFFE920(0, 0, 4u, scale, width, height);
  v9 = v8;

  return v9;
}

- (id)_encapsulatedGlyphForTargetSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  [(_CUIGraphicVariantVectorGlyph *)selfCopy _backgroundShapeBoundsForTargetSize:width scale:height, scale];
  x = v16.origin.x;
  y = v16.origin.y;
  v10 = v16.size.width;
  v11 = v16.size.height;
  v12 = CGRectGetWidth(v16);
  v13 = sub_18DFFF390(1, x, y, v10, v11, width, height, v12 / width);

  return v13;
}

@end