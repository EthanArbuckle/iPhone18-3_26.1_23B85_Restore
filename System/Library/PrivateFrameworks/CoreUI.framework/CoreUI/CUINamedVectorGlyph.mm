@interface CUINamedVectorGlyph
+ (CGColor)_derivedGradientColorFromColor:(CGColor *)color reverse:(BOOL *)reverse;
+ (CGGradient)_createAxialGradientWithColors:(id)colors useSCurve:(BOOL)curve height:(double)height;
+ (CGGradient)_createSCurveGradientWithStartColor:(CGColor *)color endColor:(CGColor *)endColor height:(double)height;
+ (CGPath)_createPathFromPoints:(id)points count:(SEL)count;
+ (id)_colorStyleNames;
+ (id)_layerHierarchyStyleNames;
+ (id)copyFromInstance:(id)instance;
+ (unsigned)_backgroundImageNamesAtom;
+ (unsigned)_drawReversesMotionGroupsAtom;
+ (unsigned)_hasImageFillsAtom;
+ (unsigned)_rotatesClockwiseAtom;
+ (unsigned)_variableColorContinuousAtom;
+ (unsigned)_variableValueModeAtom;
+ (unsigned)_wiggleAngleAtom;
+ (unsigned)_wiggleStyleAtom;
- (BOOL)_containsWideGamutColor;
- (BOOL)canBeInterpolatedWith:(id)with;
- (BOOL)containsNamedColorStyle:(id)style;
- (BOOL)containsNamedColorStyles;
- (BOOL)hasImageFills;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInterpolatable;
- (BOOL)isKnockoutEnabledForHierarchicalLayerAtIndex:(int64_t)index opacity:(double *)opacity;
- (BOOL)isKnockoutEnabledForMulticolorLayerAtIndex:(int64_t)index opacity:(double *)opacity;
- (CGImage)fillImageWithName:(id)name;
- (CGImage)image;
- (CGImage)imageWithColorResolver:(id)resolver;
- (CGImage)imageWithHierarchicalPrimaryColor:(CGColor *)color;
- (CGImage)imageWithHierarchyColorResolver:(id)resolver;
- (CGImage)imageWithPaletteColorResolver:(id)resolver;
- (CGImage)imageWithPaletteColors:(id)colors;
- (CGImage)imageWithTintColor:(CGColor *)color;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size hierarchicalPrimaryColor:(CGColor *)color;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withColorResolver:(id)resolver;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withHierarchyColorResolver:(id)resolver;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withPaletteColorResolver:(id)resolver;
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withPaletteColors:(id)colors;
- (CGImage)rasterizeImageWithTintColor:(CGColor *)color usingScaleFactor:(double)factor forTargetSize:(CGSize)size;
- (CGImageRef)_rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(double)size renderingMode:(double)mode colorResolver:;
- (CGPath)CGPath;
- (CGPath)_rawVisibleMonochromePath:(CGAffineTransform *)path;
- (CGPath)maskShape;
- (CGPoint)_getMetricCenterInRendition:(id)rendition;
- (CGPoint)_interpolatedAnchorWithWeight:(double)weight glyphSize:(double)size fromUltralight:(CGPoint)ultralight regular:(CGPoint)regular black:(CGPoint)black;
- (CGPoint)metricCenter;
- (CGPoint)rotationAnchor;
- (CGRect)alignmentRect;
- (CGRect)alignmentRectUnrounded;
- (CGRect)contentBounds;
- (CGRect)contentBoundsUnrounded;
- (CGSVGAttributeMap)attributesForLayerNamed:(id)named;
- (CGSVGAttributeMap)attributesForLayerNamed:(id)named inRendition:(id)rendition;
- (CGSVGAttributeMap)styleForLayerName:(id)name;
- (CGSVGDocument)referenceGlyph;
- (CGSVGNode)_getOutlineNodeForDocument:(CGSVGDocument *)document;
- (CGSize)_interpolatedCanvasSizeWithWeight:(double)weight glyphSize:(double)size fromUltralight:(CGSize)ultralight regular:(CGSize)regular black:(CGSize)black;
- (CGSize)referenceCanvasSize;
- (CUINamedVectorGlyph)initWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom pointSize:(double)size continuousWeight:(double)weight continuousSize:(double)continuousSize interpolatedFromRegular:(id)regular ultralight:(id)self0 black:(id)self1 fromCatalog:(id)self2 themeRef:(unint64_t)self3 locale:(id)self4;
- (CUINamedVectorGlyph)initWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom pointSize:(double)size fromCatalog:(id)catalog usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (CUINamedVectorGlyph)initWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom pointSize:(double)size fromCatalog:(id)catalog usingRenditionKey:(id)key themeRef:(unint64_t)ref locale:(id)self0;
- (__CFString)colorNameForRenderingStyle:(__CFString *)result;
- (const)_fillColorOfStyle:(uint64_t)style;
- (double)_interpolatedAlignmentRectInsetsWithWeight:(double)weight glyphSize:(double)size fromUltralight:(double)ultralight regular:(double)regular black:(double)black;
- (double)_interpolatedBaselineOffsetWithWeight:(double)weight glyphSize:(double)size fromUltralight:(double)ultralight regular:(double)regular black:(double)black;
- (double)_interpolatedStrokeWidthWithWeight:(double)weight glyphSize:(double)size fromUltralight:(double)ultralight regular:(double)regular black:(double)black;
- (double)_requestedPointSizeRatio;
- (double)baselineOffset;
- (double)baselineOffsetUnrounded;
- (double)capHeight;
- (double)capHeightUnrounded;
- (double)referencePointSize;
- (double)strokeWidthForLayerNamed:(id)named;
- (double)strokeWidthForLayerNamed:(id)named inRendition:(id)rendition;
- (float)templateVersion;
- (id)_assumeConcatenatedPathForLayerNamed:(void *)named inRendition:;
- (id)_blackRendition;
- (id)_createAttachmentStoreFromNodeNamed:(id)named inRendition:(id)rendition;
- (id)_createInterpolatedDrawAttachmentDataStoreWithWeight:(double)weight glyphSize:(double)size fromUltralight:(id)ultralight regular:(id)regular black:(id)black;
- (id)_createShapeGroupSubpaths;
- (id)_getAnchor:(id)anchor inRendition:(id)rendition;
- (id)_interpolatedPathWithWeight:(double)weight glyphSize:(double)size fromUltralightSmall:(id)small regularSmall:(id)regularSmall blackSmall:(id)blackSmall;
- (id)_layerNamesForRenderingMode:(int)mode inRendition:(id)rendition;
- (id)_partialLocale;
- (id)_performWithLockedRenditions:(id *)result;
- (id)_regularRendition;
- (id)_stylePrefixForRenderingMode:(int)mode;
- (id)_symbolDefaults;
- (id)_ultralightRendition;
- (id)containsNamedColorStyles;
- (id)copyWithContinuousWeight:(double)weight continuousSize:(double)size;
- (id)copyWithPointSize:(double)size;
- (id)copyWithPointSize:(double)size continuousWeight:(double)weight continuousSize:(double)continuousSize;
- (id)debugDescription;
- (id)edgeDefinitionTextureWithBufferAllocator:(id)allocator;
- (id)ensureBaseGlyph;
- (id)fillImageNames;
- (id)gradientTextureWithBufferAllocator:(id)allocator;
- (id)graphicVariantWithOptions:(id)options;
- (id)hierarchicalLayerThresholds;
- (id)hierarchicalLayers;
- (id)hierarchyLayers;
- (id)hierarchyLevels;
- (id)intWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom pointSize:(double)size weight:(int64_t)weight glyphSize:(int64_t)glyphSize interpolatedFromRegular:(id)regular ultralight:(id)self0 black:(id)self1 fromCatalog:(id)self2 themeRef:(unint64_t)self3;
- (id)knownAvailableVectorSizes;
- (id)makeLayerWithColorResolver:(id)resolver;
- (id)monochromeLayers;
- (id)multicolorColorNames;
- (id)multicolorLayerColorNames;
- (id)multicolorLayerThresholds;
- (id)multicolorLayers;
- (id)newEncapsulatedGlyphWithConfiguration:(id)configuration;
- (id)paletteLevels;
- (id)pathForLayerNamed:(id)named;
- (id)resolveAutomaticWithConfig:(id)config adjustX:(BOOL)x adjustY:(BOOL)y sizeAdjustment:(int64_t)adjustment;
- (id)resolveMetricCenterWithConfig:(id)config offsetX:(double)x offsetY:(double)y scaleFactor:(double)factor;
- (id)symbolDefaults;
- (id)templateLayerThresholds;
- (id)unsafeDrawAttachmentData;
- (int64_t)glyphSize;
- (int64_t)glyphWeight;
- (int64_t)preferredRenderingMode;
- (int64_t)resolvedFillStyle;
- (int64_t)resolvedVariableMode;
- (uint64_t)_imageForRenderingMode:(uint64_t)mode withColorResolver:;
- (uint64_t)_prepareShapeNode:(uint64_t)node atNodeIndex:(void *)index forRenderingStyle:(uint64_t)style withColorResolver:;
- (uint64_t)_setFillColor:(uint64_t)color ofStyle:;
- (unint64_t)hash;
- (unint64_t)numberOfHierarchyLayers;
- (unint64_t)numberOfMulticolorLayers;
- (unint64_t)numberOfTemplateLayers;
- (void)_drawInContext:(void *)result primaryColor:(uint64_t)color;
- (void)_drawInContext:(void *)result scaleFactor:targetSize:primaryColor:tertiaryColor:;
- (void)_legacy_drawHierarchicalLayerNamed:(id)named inContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size colorResolver:(id)resolver;
- (void)_legacy_drawMonochromeLayerNamed:(id)named inContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size onFillColor:(CGColor *)color offFillColor:(CGColor *)fillColor;
- (void)_legacy_drawMulticolorLayerNamed:(id)named inContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size colorResolver:(id)resolver;
- (void)_lookupCatalogImageForIdiom:(int64_t)idiom locale:(id)locale;
- (void)_setBlackInterpolationSource:(id)source;
- (void)_setCanUsePathConcatenation:(BOOL)concatenation;
- (void)_setFlippable:(BOOL)flippable;
- (void)_setImage:(CGImage *)image;
- (void)_setUltralightInterpolationSource:(id)source;
- (void)_unsafeComputeIfNeededDrawAttachmentData;
- (void)dealloc;
- (void)drawHierarchyLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver;
- (void)drawInContext:(CGContext *)context;
- (void)drawInContext:(CGContext *)context withPaletteColors:(id)colors;
- (void)drawMulticolorLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver;
- (void)drawPaletteLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver;
- (void)drawWithTintColor:(CGColor *)color inContext:(CGContext *)context;
- (void)hierarchicalLayerGroup;
- (void)monochromeLayerGroup;
- (void)multicolorLayerGroup;
- (void)setFontMatchingScaleFactor:(double)factor;
- (void)setRepresentsOnDemandContent:(BOOL)content;
@end

@implementation CUINamedVectorGlyph

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CUINamedVectorGlyph;
  v3 = (self->_layoutDirection << (self->_layoutDirection & 7)) + 83 * (((self->_glyphWeight * 1000.0) << ((self->_glyphWeight * 1000.0) & 7)) + 83 * (((self->_glyphSize * 1000.0) << ((self->_glyphSize * 1000.0) & 7)) + 83 * (((self->_lookedupScaleFactor * 1000.0) << ((self->_lookedupScaleFactor * 1000.0) & 7)) + 83 * (((self->_pointSize * 1000.0) << ((self->_pointSize * 1000.0) & 7)) + 83 * [(CUINamedLookup *)&v7 hash]))));
  variableMinValue = self->_variableMinValue;
  if (variableMinValue != INFINITY)
  {
    v3 = ((variableMinValue * 1000.0) << ((variableMinValue * 1000.0) & 7)) + 83 * v3;
  }

  variableMaxValue = self->_variableMaxValue;
  if (variableMaxValue != INFINITY)
  {
    v3 = ((variableMaxValue * 1000.0) << ((variableMaxValue * 1000.0) & 7)) + 83 * v3;
  }

  return (self->_fillStyle << (self->_fillStyle & 7)) + 83 * ((self->_variableMode << (self->_variableMode & 7)) + 83 * v3);
}

- (int64_t)preferredRenderingMode
{
  result = [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)_regularRendition
{
  lockedRenditions = self->_lockedRenditions;
  if (lockedRenditions)
  {
    return lockedRenditions->var0;
  }

  else
  {
    return [(CUINamedLookup *)self _rendition];
  }
}

- (CGImage)image
{
  cgImageRef = self->_cgImageRef;
  if (cgImageRef && self->_variableMinValue == INFINITY && self->_variableMaxValue == INFINITY)
  {
    goto LABEL_10;
  }

  v4 = [(CUINamedVectorGlyph *)&self->super.super.isa _imageForRenderingMode:0 withColorResolver:?];
  cgImageRef = v4;
  if (self->_variableMinValue == INFINITY && self->_variableMaxValue == INFINITY)
  {
    self->_cgImageRef = v4;
    if (!v4)
    {
      return cgImageRef;
    }
  }

  else
  {
    CFAutorelease(v4);
    if (!cgImageRef)
    {
      return cgImageRef;
    }
  }

  if (cgImageRef == self->_cgImageRef)
  {
LABEL_10:
    CGImageRetain(cgImageRef);
    CFAutorelease(cgImageRef);
  }

  return cgImageRef;
}

- (BOOL)containsNamedColorStyles
{
  if (self->_containsNamedColorStyles < 0)
  {
    _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];
    [_regularRendition vectorGlyphTemplateVersion];
    if (v4 >= 2.1)
    {
      containsMulticolorLayers = [_regularRendition containsMulticolorLayers];
      self->_containsNamedColorStyles = containsMulticolorLayers;
      if ((containsMulticolorLayers & 0x80000000) != 0)
      {
        [(CUINamedVectorGlyph *)&v7 containsNamedColorStyles];
      }
    }

    else
    {
      self->_containsNamedColorStyles = 0;
    }
  }

  return self->_containsNamedColorStyles == 1;
}

- (id)_ultralightRendition
{
  lockedRenditions = self->_lockedRenditions;
  if (lockedRenditions)
  {
    return lockedRenditions->var1;
  }

  else
  {
    return [(CUINamedLookup *)self->_ultralightInterpolationSource _rendition];
  }
}

- (id)knownAvailableVectorSizes
{
  _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];

  return [_regularRendition vectorGlyphAvailableSizes];
}

- (double)_requestedPointSizeRatio
{
  [(CUINamedVectorGlyph *)self pointSize];
  v4 = v3;
  [(CUINamedVectorGlyph *)self referencePointSize];
  v6 = v5 < 1.0 || v4 < 1.0;
  v7 = v4 / v5;
  if (v6)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  if (CUICurrentPlatform() == 4 && objc_loadWeak(&self->_catalog) && [objc_loadWeak(&self->_catalog) platform] != 4)
  {
    v8 = v8 * 0.94634;
  }

  [(CUINamedVectorGlyph *)self fontMatchingScaleFactor];
  return v8 * v9;
}

- (double)baselineOffsetUnrounded
{
  if (self->_ultralightInterpolationSource && self->_blackInterpolationSource)
  {
    [(CUINamedVectorGlyph *)self glyphContinuousWeight];
    v4 = v3;
    [(CUINamedVectorGlyph *)self glyphContinuousSize];
    v6 = v5;
    [-[CUINamedVectorGlyph _ultralightRendition](self "_ultralightRendition")];
    v8 = v7;
    [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
    v10 = v9;
    [-[CUINamedVectorGlyph _blackRendition](self "_blackRendition")];
    [(CUINamedVectorGlyph *)self _interpolatedBaselineOffsetWithWeight:v4 glyphSize:v6 fromUltralight:v8 regular:v10 black:v11];
  }

  else
  {
    [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
  }

  v13 = v12;
  [(CUINamedVectorGlyph *)self _requestedPointSizeRatio];
  return v13 * v14;
}

- (CGRect)contentBounds
{
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x4010000000;
  v13[2] = "";
  v14 = 0u;
  v15 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __36__CUINamedVectorGlyph_contentBounds__block_invoke;
  v11[3] = &unk_1E7249940;
  v11[4] = self;
  v11[5] = &v12;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v11];
  [(CUINamedVectorGlyph *)v13 alignmentRectUnrounded:v16];
  v7 = *&v16[2];
  v8 = *&v16[3];
  v9 = *v16;
  v10 = *&v16[1];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

float64x2_t __36__CUINamedVectorGlyph_contentBounds__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  [*(a1 + 32) referenceCanvasSize];
  v51 = v9;
  v53 = v8;
  if (a3 && a4)
  {
    v10 = *(a1 + 32);
    [v10 glyphContinuousWeight];
    v57 = v11;
    [*(a1 + 32) glyphContinuousSize];
    v54 = v12;
    [a3 vectorGlyphAlignmentRectInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [a2 vectorGlyphAlignmentRectInsets];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [a4 vectorGlyphAlignmentRectInsets];
    [v10 _interpolatedAlignmentRectInsetsWithWeight:v57 glyphSize:v54 fromUltralight:v14 regular:v16 black:{v18, v20, v22, v24, v26, v28, v29, v30, v31, v32}];
  }

  else
  {
    [a2 vectorGlyphAlignmentRectInsets];
  }

  v48 = v35;
  v49 = v33;
  v55 = v36;
  v58 = v34;
  [*(a1 + 32) _requestedPointSizeRatio];
  v47 = v37;
  [*(a1 + 32) scale];
  v39 = v38;
  v41.f64[0] = v53;
  v40.f64[0] = v55;
  v40.f64[1] = v48;
  v41.f64[1] = v51;
  v42.f64[0] = v58;
  v42.f64[1] = v49;
  v43 = v42;
  v44 = v40;
  if (v47 > 0.0)
  {
    v56 = vmulq_n_f64(v40, v47);
    v59 = vmulq_n_f64(v43, v47);
    memset(&v60, 0, sizeof(v60));
    v50 = v41;
    v52 = v38;
    CGAffineTransformMakeScale(&v60, v47, v47);
    v39 = v52;
    v44 = v56;
    v43 = v59;
    v41 = vmlaq_n_f64(vmulq_laneq_f64(*&v60.c, v50, 1), *&v60.a, v53);
  }

  v45 = vdupq_lane_s64(v39, 0);
  *(*(*(a1 + 40) + 8) + 32) = CGPointZero;
  result = vaddq_f64(vdivq_f64(vrndaq_f64(vmulq_n_f64(v44, *&v39)), v45), vaddq_f64(vdivq_f64(vrndpq_f64(vmulq_n_f64(v41, *&v39)), v45), vdivq_f64(vrndaq_f64(vmulq_n_f64(v43, *&v39)), v45)));
  *(*(*(a1 + 40) + 8) + 48) = result;
  return result;
}

- (double)baselineOffset
{
  [(CUINamedVectorGlyph *)self baselineOffsetUnrounded];
  v4 = v3;
  [(CUINamedVectorGlyph *)self scale];
  return round(v4 * v5) / v5;
}

- (double)capHeight
{
  [(CUINamedVectorGlyph *)self capHeightUnrounded];
  v4 = v3;
  [(CUINamedVectorGlyph *)self scale];
  return round(v4 * v5) / v5;
}

- (double)capHeightUnrounded
{
  if (self->_ultralightInterpolationSource && self->_blackInterpolationSource)
  {
    [(CUINamedVectorGlyph *)self glyphContinuousWeight];
    v4 = v3;
    [(CUINamedVectorGlyph *)self glyphContinuousSize];
    v6 = v5;
    [-[CUINamedVectorGlyph _ultralightRendition](self "_ultralightRendition")];
    v8 = v7;
    [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
    v10 = v9;
    [-[CUINamedVectorGlyph _blackRendition](self "_blackRendition")];
    [(CUINamedVectorGlyph *)self _interpolatedCapHeightWithWeight:v4 glyphSize:v6 fromUltralight:v8 regular:v10 black:v11];
  }

  else
  {
    [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
  }

  v13 = v12;
  [(CUINamedVectorGlyph *)self _requestedPointSizeRatio];
  return v13 * v14;
}

- (CGRect)alignmentRect
{
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x4010000000;
  v13[2] = "";
  v14 = 0u;
  v15 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __36__CUINamedVectorGlyph_alignmentRect__block_invoke;
  v11[3] = &unk_1E7249940;
  v11[4] = self;
  v11[5] = &v12;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v11];
  [(CUINamedVectorGlyph *)v13 alignmentRectUnrounded:v16];
  v7 = *&v16[2];
  v8 = *&v16[3];
  v9 = *v16;
  v10 = *&v16[1];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

float64x2_t __36__CUINamedVectorGlyph_alignmentRect__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  [*(a1 + 32) referenceCanvasSize];
  v46 = v9;
  v48 = v8;
  if (a3 && a4)
  {
    v10 = *(a1 + 32);
    [v10 glyphContinuousWeight];
    v49 = v11;
    [*(a1 + 32) glyphContinuousSize];
    v43 = v12;
    [a3 vectorGlyphAlignmentRectInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [a2 vectorGlyphAlignmentRectInsets];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [a4 vectorGlyphAlignmentRectInsets];
    [v10 _interpolatedAlignmentRectInsetsWithWeight:v49 glyphSize:v43 fromUltralight:v14 regular:v16 black:{v18, v20, v22, v24, v26, v28, v29, v30, v31, v32}];
  }

  else
  {
    [a2 vectorGlyphAlignmentRectInsets];
  }

  v50 = v33;
  v44 = v34;
  [*(a1 + 32) _requestedPointSizeRatio];
  v42 = v35;
  [*(a1 + 32) scale];
  v37 = v36;
  v39.f64[0] = v48;
  v38.f64[0] = v50;
  v38.f64[1] = v44;
  v39.f64[1] = v46;
  if (v42 > 0.0)
  {
    v51 = vmulq_n_f64(v38, v42);
    memset(&v52, 0, sizeof(v52));
    v45 = v39;
    v47 = v36;
    CGAffineTransformMakeScale(&v52, v42, v42);
    v37 = v47;
    v38 = v51;
    v39 = vmlaq_n_f64(vmulq_laneq_f64(*&v52.c, v45, 1), *&v52.a, v48);
  }

  v40 = vdupq_lane_s64(v37, 0);
  *(*(*(a1 + 40) + 8) + 32) = vdivq_f64(vrndaq_f64(vmulq_n_f64(v38, *&v37)), v40);
  result = vdivq_f64(vrndpq_f64(vmulq_n_f64(v39, *&v37)), v40);
  *(*(*(a1 + 40) + 8) + 48) = result;
  return result;
}

- (double)referencePointSize
{
  _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];

  [_regularRendition vectorGlyphReferencePointSize];
  return result;
}

- (CGSize)referenceCanvasSize
{
  if (self->_ultralightInterpolationSource && self->_blackInterpolationSource)
  {
    [(CUINamedVectorGlyph *)self glyphContinuousWeight];
    v4 = v3;
    [(CUINamedVectorGlyph *)self glyphContinuousSize];
    v6 = v5;
    [-[CUINamedVectorGlyph _ultralightRendition](self "_ultralightRendition")];
    v8 = v7;
    v10 = v9;
    [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
    v12 = v11;
    v14 = v13;
    [-[CUINamedVectorGlyph _blackRendition](self "_blackRendition")];

    [(CUINamedVectorGlyph *)self _interpolatedCanvasSizeWithWeight:v4 glyphSize:v6 fromUltralight:v8 regular:v10 black:v12, v14, v15, v16];
  }

  else
  {
    _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];

    [_regularRendition canvasSize];
  }

  result.height = v18;
  result.width = v17;
  return result;
}

- (id)_blackRendition
{
  lockedRenditions = self->_lockedRenditions;
  if (lockedRenditions)
  {
    return lockedRenditions->var2;
  }

  else
  {
    return [(CUINamedLookup *)self->_blackInterpolationSource _rendition];
  }
}

- (float)templateVersion
{
  _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];

  [_regularRendition vectorGlyphTemplateVersion];
  return result;
}

- (void)monochromeLayerGroup
{
  if (result)
  {
    v2 = result;
    if (!result[19])
    {
      [objc_msgSend(result "_regularRendition")];
      [OUTLINED_FUNCTION_26() templateVersion];
      v4 = v3;
      CGSVGDocumentGetRootNode();
      if (v4 >= 5.0 && CGSVGNodeFindChildWithStringIdentifier())
      {
        _createShapeGroupSubpaths = [OUTLINED_FUNCTION_26() _createShapeGroupSubpaths];
        v2[19] = OUTLINED_FUNCTION_20([v2 _stylePrefixForRenderingMode:1]);
      }

      else
      {
        v6 = [v2 monochromeLayerNamesInRendition:{objc_msgSend(v2, "_regularRendition")}];
        if (v4 >= 4.0 && (v1 = v6, [v6 count]))
        {
          OUTLINED_FUNCTION_33();
          v2[19] = [v7 createLayerGroupWithLayerNames:? delegate:?];
        }

        else
        {
          [v2 pathForLayerNamed:0];
          [OUTLINED_FUNCTION_26() strokeWidthForLayerNamed:0];
          v9 = [[CUIVectorGlyphLayer alloc] _initWithName:@"monochrome-0" index:0 shape:v1 strokeWidth:0 attributes:0 style:v2 delegate:v8];
          v10 = v9;
          v2[19] = [[CUIVectorGlyphLayer alloc] _initWithName:@"root" index:0 sublayers:[NSArray arrayWithObjects:? count:?], 0, 0, v2];
        }
      }
    }

    return v2[19];
  }

  return result;
}

- (CGRect)alignmentRectUnrounded
{
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x4010000000;
  v13[2] = "";
  v14 = 0u;
  v15 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __45__CUINamedVectorGlyph_alignmentRectUnrounded__block_invoke;
  v11[3] = &unk_1E7249940;
  v11[4] = self;
  v11[5] = &v12;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v11];
  [(CUINamedVectorGlyph *)v13 alignmentRectUnrounded:v16];
  v7 = *&v16[2];
  v8 = *&v16[3];
  v9 = *v16;
  v10 = *&v16[1];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

CGAffineTransform *__45__CUINamedVectorGlyph_alignmentRectUnrounded__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  [*(a1 + 32) referenceCanvasSize];
  v43 = v9;
  v45 = v8;
  if (a3 && a4)
  {
    v10 = *(a1 + 32);
    [v10 glyphContinuousWeight];
    v42 = v11;
    [*(a1 + 32) glyphContinuousSize];
    v41 = v12;
    [a3 vectorGlyphAlignmentRectInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [a2 vectorGlyphAlignmentRectInsets];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [a4 vectorGlyphAlignmentRectInsets];
    [v10 _interpolatedAlignmentRectInsetsWithWeight:v42 glyphSize:v41 fromUltralight:v14 regular:v16 black:{v18, v20, v22, v24, v26, v28, v29, v30, v31, v32}];
  }

  else
  {
    [a2 vectorGlyphAlignmentRectInsets];
  }

  v35 = v33;
  v36 = v34;
  result = [*(a1 + 32) _requestedPointSizeRatio];
  v39.f64[0] = v45;
  v39.f64[1] = v43;
  if (v38 > 0.0)
  {
    v35 = v35 * v38;
    v36 = v36 * v38;
    memset(&v46, 0, sizeof(v46));
    v44 = v39;
    result = CGAffineTransformMakeScale(&v46, v38, v38);
    v39 = vmlaq_n_f64(vmulq_laneq_f64(*&v46.c, v44, 1), *&v46.a, v45);
  }

  v40 = *(*(a1 + 40) + 8);
  *(v40 + 32) = v35;
  *(v40 + 40) = v36;
  *(*(*(a1 + 40) + 8) + 48) = v39;
  return result;
}

- (CGPoint)metricCenter
{
  [(CUINamedVectorGlyph *)self _requestedPointSizeRatio];
  metricCenter = self->_metricCenter;
  v9 = v4;
  if (metricCenter)
  {
    [(NSValue *)metricCenter pointValue];
    v6 = v9 * v5;
    v8 = v9 * v7;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3010000000;
    v16 = 0;
    v17 = 0;
    v15 = "";
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __35__CUINamedVectorGlyph_metricCenter__block_invoke;
    v11[3] = &unk_1E7249940;
    v11[4] = self;
    v11[5] = &v12;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v11];
    self->_metricCenter = [NSValue valueWithPoint:v13[2].f64[0], v13[2].f64[1]];
    v10 = vmulq_n_f64(v13[2], v9);
    v13[2] = v10;
    _Block_object_dispose(&v12, 8);
    v8 = v10.f64[1];
    v6 = v10.f64[0];
  }

  result.y = v8;
  result.x = v6;
  return result;
}

id __35__CUINamedVectorGlyph_metricCenter__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) _getMetricCenterInRendition:a2];
  v9 = v8;
  v11 = v10;
  if (a3 && a4)
  {
    [*(a1 + 32) _getMetricCenterInRendition:a3];
    v13 = v12;
    v15 = v14;
    [*(a1 + 32) _getMetricCenterInRendition:a4];
    v17 = v16;
    v19 = v18;
    v20 = *(a1 + 32);
    [v20 glyphContinuousWeight];
    v22 = v21;
    [*(a1 + 32) glyphContinuousSize];
    result = [v20 _interpolatedAnchorWithWeight:v22 glyphSize:v23 fromUltralight:v13 regular:v15 black:{v9, v11, v17, v19}];
    v9 = v24;
    v11 = v25;
  }

  v26 = *(*(a1 + 40) + 8);
  *(v26 + 32) = v9;
  *(v26 + 40) = v11;
  return result;
}

- (CGPoint)rotationAnchor
{
  [(CUINamedVectorGlyph *)self _requestedPointSizeRatio];
  rotationAnchor = self->_rotationAnchor;
  v9 = v4;
  if (rotationAnchor)
  {
    [(NSValue *)rotationAnchor pointValue];
    v6 = v9 * v5;
    v8 = v9 * v7;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3010000000;
    v16 = 0;
    v17 = 0;
    v15 = "";
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __37__CUINamedVectorGlyph_rotationAnchor__block_invoke;
    v11[3] = &unk_1E7249940;
    v11[4] = self;
    v11[5] = &v12;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v11];
    self->_rotationAnchor = [NSValue valueWithPoint:v13[2].f64[0], v13[2].f64[1]];
    v10 = vmulq_n_f64(v13[2], v9);
    v13[2] = v10;
    _Block_object_dispose(&v12, 8);
    v8 = v10.f64[1];
    v6 = v10.f64[0];
  }

  result.y = v8;
  result.x = v6;
  return result;
}

id __37__CUINamedVectorGlyph_rotationAnchor__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a1 + 32) _getAnchor:@"ra" inRendition:a2];
  if (v8)
  {
    result = [v8 pointValue];
  }

  else
  {
    result = [*(a1 + 32) _getMetricCenterInRendition:a2];
  }

  v12 = v10;
  v13 = v11;
  if (a3 && a4)
  {
    v14 = [*(a1 + 32) _getAnchor:@"ra" inRendition:a3];
    v15 = [*(a1 + 32) _getAnchor:@"ra" inRendition:a4];
    if (v14)
    {
      [v14 pointValue];
    }

    else
    {
      [*(a1 + 32) _getMetricCenterInRendition:a3];
    }

    v18 = v16;
    v19 = v17;
    if (v15)
    {
      [v15 pointValue];
    }

    else
    {
      [*(a1 + 32) _getMetricCenterInRendition:a4];
    }

    v22 = v20;
    v23 = v21;
    v24 = *(a1 + 32);
    [v24 glyphContinuousWeight];
    v26 = v25;
    [*(a1 + 32) glyphContinuousSize];
    result = [v24 _interpolatedAnchorWithWeight:v26 glyphSize:v27 fromUltralight:v18 regular:v19 black:{v12, v13, v22, v23}];
    v12 = v28;
    v13 = v29;
  }

  v30 = *(*(a1 + 40) + 8);
  *(v30 + 32) = v12;
  *(v30 + 40) = v13;
  return result;
}

- (id)monochromeLayers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __39__CUINamedVectorGlyph_monochromeLayers__block_invoke;
  v4[3] = &unk_1E72499B8;
  v4[4] = self;
  v4[5] = &v5;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __39__CUINamedVectorGlyph_monochromeLayers__block_invoke(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_15(a1);
  [-[CUINamedVectorGlyph monochromeLayerGroup](v1) sublayers];
  OUTLINED_FUNCTION_24();
  *(v3 + 40) = v2;
}

- (void)multicolorLayerGroup
{
  if (result)
  {
    v1 = result;
    result = result[20];
    if (!result)
    {
      [objc_msgSend(v1 "_regularRendition")];
      [OUTLINED_FUNCTION_26() templateVersion];
      v3 = v2;
      CGSVGDocumentGetRootNode();
      if (v3 >= 5.0 && CGSVGNodeFindChildWithStringIdentifier())
      {
        _createShapeGroupSubpaths = [OUTLINED_FUNCTION_26() _createShapeGroupSubpaths];
        v1[20] = OUTLINED_FUNCTION_20([v1 _stylePrefixForRenderingMode:2]);

        return v1[20];
      }

      else
      {
        result = +[CUIVectorGlyphLayer createLayerGroupWithLayerNames:delegate:](CUIVectorGlyphMulticolorLayer, "createLayerGroupWithLayerNames:delegate:", [v1 _layerNamesForRenderingMode:2 inRendition:{objc_msgSend(v1, "_regularRendition")}], v1);
        v1[20] = result;
      }
    }
  }

  return result;
}

- (id)_symbolDefaults
{
  symbolDefaults = self->_symbolDefaults;
  if (!symbolDefaults)
  {
    [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
    if (CGSVGDocumentGetNamedStyle())
    {
      symbolDefaults = [NSMutableDictionary dictionaryWithCapacity:CGSVGAttributeMapGetCount()];
      CGSVGAttributeMapEnumerate();
      v4 = symbolDefaults;
    }

    else
    {
      v4 = objc_alloc_init(NSDictionary);
      symbolDefaults = v4;
    }

    self->_symbolDefaults = v4;
  }

  return symbolDefaults;
}

- (int64_t)resolvedVariableMode
{
  variableMode = self->_variableMode;
  if ((variableMode - 1) < 2)
  {
    return variableMode;
  }

  if (self->_lockedRenditions)
  {
    v5 = [(CUINamedVectorGlyph *)self _symbolDefaults:v2];
  }

  else
  {
    v5 = [(CUINamedVectorGlyph *)self symbolDefaults:v2];
  }

  v6 = [v5 objectForKeyedSubscript:CUIVectorGlyphDefaultsKeyVariableValueMode];
  if (!v6)
  {
    return 1;
  }

  return [v6 integerValue];
}

- (int64_t)resolvedFillStyle
{
  if (self->_fillStyle == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)symbolDefaults
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy_;
  symbolDefaults = self->_symbolDefaults;
  v9 = __Block_byref_object_dispose_;
  v10 = symbolDefaults;
  if (!symbolDefaults)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __37__CUINamedVectorGlyph_symbolDefaults__block_invoke;
    v4[3] = &unk_1E72499B8;
    v4[4] = self;
    v4[5] = &v5;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v4];
    symbolDefaults = v6[5];
  }

  _Block_object_dispose(&v5, 8);
  return symbolDefaults;
}

id __37__CUINamedVectorGlyph_symbolDefaults__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _symbolDefaults];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_cgImageRef);

  objc_storeWeak(&self->_catalog, 0);
  v3.receiver = self;
  v3.super_class = CUINamedVectorGlyph;
  [(CUINamedLookup *)&v3 dealloc];
}

void __38__CUINamedVectorGlyph__symbolDefaults__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if ([objc_opt_class() _wiggleStyleAtom] == a2)
  {
    v6 = CGSVGAttributeCopyString();
    if (!v6)
    {
      return;
    }

    v7 = v6;
    if (CFStringCompare(v6, @"linear", 0))
    {
      if (CFStringCompare(v7, @"clockwise", 0))
      {
        if (CFStringCompare(v7, @"counterClockwise", 0))
        {
LABEL_19:

          CFRelease(v7);
          return;
        }

        v8 = &unk_1F00F7BE0;
      }

      else
      {
        v8 = &unk_1F00F7BC8;
      }
    }

    else
    {
      v8 = &unk_1F00F7BB0;
    }

    v13 = *(a1 + 40);
    v14 = CUIVectorGlyphDefaultsKeyWiggleStyle;
LABEL_18:
    [v13 setObject:v8 forKeyedSubscript:v14];
    goto LABEL_19;
  }

  if ([objc_opt_class() _wiggleAngleAtom] == a2)
  {
    if (CGSVGAttributeGetFloat())
    {
      v9 = [NSNumber numberWithDouble:0.0];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:CUIVectorGlyphDefaultsKeyWiggleAngle];
    }

    return;
  }

  if ([objc_opt_class() _rotatesClockwiseAtom] == a2)
  {
    v10 = [NSNumber numberWithBool:CUISVGAttributeGetBoolean(a3)];
    v11 = *(a1 + 40);
    v12 = CUIVectorGlyphDefaultsKeyRotatesClockwise;
LABEL_24:

    [v11 setObject:v10 forKeyedSubscript:v12];
    return;
  }

  if ([objc_opt_class() _variableColorContinuousAtom] == a2)
  {
    v10 = [NSNumber numberWithBool:CUISVGAttributeGetBoolean(a3)];
    v11 = *(a1 + 40);
    v12 = CUIVectorGlyphDefaultsKeyVariableColorContinuous;
    goto LABEL_24;
  }

  if ([objc_opt_class() _hasImageFillsAtom] == a2)
  {
    v10 = [NSNumber numberWithBool:CUISVGAttributeGetBoolean(a3)];
    v11 = *(a1 + 40);
    v12 = CUIVectorGlyphDefaultsKeyHasImageFills;
    goto LABEL_24;
  }

  if ([objc_opt_class() _backgroundImageNamesAtom] == a2)
  {
    v20 = CGSVGAttributeCopyString();
    v15 = +[NSSet setWithArray:](NSSet, "setWithArray:", [v20 componentsSeparatedByCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}]);
    [*(a1 + 40) setObject:v15 forKeyedSubscript:CUIVectorGlyphDefaultsKeyFillImageNames];
  }

  else
  {
    if ([objc_opt_class() _variableValueModeAtom] == a2)
    {
      v16 = CGSVGAttributeCopyString();
      if (!v16)
      {
        return;
      }

      v7 = v16;
      if (CFStringCompare(v16, @"color", 0))
      {
        if (CFStringCompare(v7, @"draw", 0))
        {
          goto LABEL_19;
        }

        v8 = &unk_1F00F7BE0;
      }

      else
      {
        v8 = &unk_1F00F7BC8;
      }

      v13 = *(a1 + 40);
      v14 = CUIVectorGlyphDefaultsKeyVariableValueMode;
      goto LABEL_18;
    }

    if ([objc_opt_class() _drawReversesMotionGroupsAtom] == a2)
    {
      v10 = [NSNumber numberWithBool:CUISVGAttributeGetBoolean(a3)];
      v11 = *(a1 + 40);
      v12 = CUIVectorGlyphDefaultsKeyDrawReversesMotionGroups;
      goto LABEL_24;
    }

    v20 = CGSVGAttributeCopyString();
    if (!v20)
    {
      return;
    }

    v17 = CGSVGAtomCopyString();
    if (v17)
    {
      v18 = v17;
      if ([v17 hasPrefix:@"-sfsymbols-"])
      {
        v19 = [v18 substringFromIndex:{objc_msgSend(@"-sfsymbols-", "length")}];

        v18 = v19;
      }

      [*(a1 + 40) setObject:v20 forKeyedSubscript:{v18, v20}];
    }
  }
}

+ (unsigned)_wiggleStyleAtom
{
  if (_wiggleStyleAtom_onceToken != -1)
  {
    +[CUINamedVectorGlyph _wiggleStyleAtom];
  }

  return _wiggleStyleAtom_wiggleStyleAtom;
}

uint64_t __39__CUINamedVectorGlyph__wiggleStyleAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _wiggleStyleAtom_wiggleStyleAtom = result;
  return result;
}

+ (unsigned)_wiggleAngleAtom
{
  if (_wiggleAngleAtom_onceToken != -1)
  {
    +[CUINamedVectorGlyph _wiggleAngleAtom];
  }

  return _wiggleAngleAtom_wiggleAngleAtom;
}

uint64_t __39__CUINamedVectorGlyph__wiggleAngleAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _wiggleAngleAtom_wiggleAngleAtom = result;
  return result;
}

+ (unsigned)_rotatesClockwiseAtom
{
  if (_rotatesClockwiseAtom_onceToken != -1)
  {
    +[CUINamedVectorGlyph _rotatesClockwiseAtom];
  }

  return _rotatesClockwiseAtom_rotateDirectionAtom;
}

uint64_t __44__CUINamedVectorGlyph__rotatesClockwiseAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _rotatesClockwiseAtom_rotateDirectionAtom = result;
  return result;
}

+ (unsigned)_variableColorContinuousAtom
{
  if (_variableColorContinuousAtom_onceToken != -1)
  {
    +[CUINamedVectorGlyph _variableColorContinuousAtom];
  }

  return _variableColorContinuousAtom_variableColorLoopStyleAtom;
}

uint64_t __51__CUINamedVectorGlyph__variableColorContinuousAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _variableColorContinuousAtom_variableColorLoopStyleAtom = result;
  return result;
}

+ (unsigned)_hasImageFillsAtom
{
  if (_hasImageFillsAtom_onceToken != -1)
  {
    +[CUINamedVectorGlyph _hasImageFillsAtom];
  }

  return _hasImageFillsAtom_hasImageFillsAtom;
}

uint64_t __41__CUINamedVectorGlyph__hasImageFillsAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _hasImageFillsAtom_hasImageFillsAtom = result;
  return result;
}

+ (unsigned)_backgroundImageNamesAtom
{
  if (_backgroundImageNamesAtom_onceToken != -1)
  {
    +[CUINamedVectorGlyph _backgroundImageNamesAtom];
  }

  return _backgroundImageNamesAtom_backgroundImageNamesAtom;
}

uint64_t __48__CUINamedVectorGlyph__backgroundImageNamesAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _backgroundImageNamesAtom_backgroundImageNamesAtom = result;
  return result;
}

+ (unsigned)_variableValueModeAtom
{
  if (_variableValueModeAtom_onceToken != -1)
  {
    +[CUINamedVectorGlyph _variableValueModeAtom];
  }

  return _variableValueModeAtom_variableValueModeAtom;
}

uint64_t __45__CUINamedVectorGlyph__variableValueModeAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _variableValueModeAtom_variableValueModeAtom = result;
  return result;
}

+ (unsigned)_drawReversesMotionGroupsAtom
{
  if (_drawReversesMotionGroupsAtom_onceToken != -1)
  {
    +[CUINamedVectorGlyph _drawReversesMotionGroupsAtom];
  }

  return _drawReversesMotionGroupsAtom_drawReversesMotionGroupsAtom;
}

uint64_t __52__CUINamedVectorGlyph__drawReversesMotionGroupsAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _drawReversesMotionGroupsAtom_drawReversesMotionGroupsAtom = result;
  return result;
}

- (unint64_t)numberOfHierarchyLayers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v3 >= 3.0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __46__CUINamedVectorGlyph_numberOfHierarchyLayers__block_invoke;
    v6[3] = &unk_1E7249940;
    v6[4] = self;
    v6[5] = &v7;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v6];
    v4 = v8[3];
  }

  else
  {
    v4 = 1;
    v8[3] = 1;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)hierarchicalLayerGroup
{
  if (result)
  {
    v1 = result;
    result = result[21];
    if (!result)
    {
      [objc_msgSend(v1 "_regularRendition")];
      [OUTLINED_FUNCTION_26() templateVersion];
      v3 = v2;
      CGSVGDocumentGetRootNode();
      if (v3 >= 5.0 && CGSVGNodeFindChildWithStringIdentifier())
      {
        _createShapeGroupSubpaths = [OUTLINED_FUNCTION_26() _createShapeGroupSubpaths];
        v1[21] = OUTLINED_FUNCTION_20([v1 _stylePrefixForRenderingMode:3]);

        return v1[21];
      }

      else
      {
        result = +[CUIVectorGlyphLayer createLayerGroupWithLayerNames:delegate:](CUIVectorGlyphHierarchicalLayer, "createLayerGroupWithLayerNames:delegate:", [v1 _layerNamesForRenderingMode:3 inRendition:{objc_msgSend(v1, "_regularRendition")}], v1);
        v1[21] = result;
      }
    }
  }

  return result;
}

id __46__CUINamedVectorGlyph_numberOfHierarchyLayers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    v4 = [-[CUINamedVectorGlyph hierarchicalLayerGroup](v3) sublayers];
  }

  else
  {
    v4 = [v3 _layerNamesForRenderingMode:3 inRendition:a2];
  }

  result = [v4 count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)hierarchicalLayers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __41__CUINamedVectorGlyph_hierarchicalLayers__block_invoke;
  v4[3] = &unk_1E72499B8;
  v4[4] = self;
  v4[5] = &v5;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __41__CUINamedVectorGlyph_hierarchicalLayers__block_invoke(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_15(a1);
  [-[CUINamedVectorGlyph hierarchicalLayerGroup](v1) sublayers];
  OUTLINED_FUNCTION_24();
  *(v3 + 40) = v2;
}

+ (id)_layerHierarchyStyleNames
{
  if (_layerHierarchyStyleNames_onceToken != -1)
  {
    +[CUINamedVectorGlyph _layerHierarchyStyleNames];
  }

  return _layerHierarchyStyleNames_layerHierarchyStyleNames;
}

void *__48__CUINamedVectorGlyph__layerHierarchyStyleNames__block_invoke()
{
  result = &unk_1F00F7E40;
  _layerHierarchyStyleNames_layerHierarchyStyleNames = result;
  return result;
}

- (id)debugDescription
{
  glyphWeight = [(CUINamedVectorGlyph *)self glyphWeight];
  v4 = 0;
  if (glyphWeight > 4)
  {
    if (glyphWeight <= 6)
    {
      if (glyphWeight == 5)
      {
        v4 = @"Medium";
      }

      else
      {
        v4 = @"Semibold";
      }
    }

    else
    {
      switch(glyphWeight)
      {
        case 7:
          v4 = @"Bold";
          break;
        case 8:
          v4 = @"Heavy";
          break;
        case 9:
          v4 = @"Black";
          break;
      }
    }
  }

  else if (glyphWeight <= 1)
  {
    if (glyphWeight)
    {
      if (glyphWeight == 1)
      {
        v4 = @"Ultralight";
      }
    }

    else
    {
      [(CUINamedVectorGlyph *)self glyphContinuousWeight];
      v4 = [NSString stringWithFormat:@"%f", v5];
    }
  }

  else if (glyphWeight == 2)
  {
    v4 = @"Thin";
  }

  else if (glyphWeight == 3)
  {
    v4 = @"Light";
  }

  else
  {
    v4 = @"Regular";
  }

  glyphSize = [(CUINamedVectorGlyph *)self glyphSize];
  v7 = 0;
  if (glyphSize > 1)
  {
    if (glyphSize == 2)
    {
      v7 = @"Medium";
    }

    else if (glyphSize == 3)
    {
      v7 = @"Large";
    }
  }

  else if (glyphSize)
  {
    if (glyphSize == 1)
    {
      v7 = @"Small";
    }
  }

  else
  {
    [(CUINamedVectorGlyph *)self glyphContinuousSize];
    v7 = [NSString stringWithFormat:@"%f", v8];
  }

  [(CUINamedVectorGlyph *)self alignmentRect];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v21);
  v10 = objc_opt_class();
  name = [(CUINamedLookup *)self name];
  lookedupScaleFactor = self->_lookedupScaleFactor;
  pointSize = self->_pointSize;
  [(CUINamedVectorGlyph *)self baselineOffset];
  dictionaryRepresentation = [NSString stringWithFormat:@"<%@: %p> '%@' @%dx, %.0f-points, %@ weight, %@ size, baseline offset = %.2f, alignment rect = %@", v10, self, name, lookedupScaleFactor, *&pointSize, v4, v7, v14, DictionaryRepresentation];
  [(CUINamedVectorGlyph *)self variableMinValue];
  if (v16 != INFINITY)
  {
    [(CUINamedVectorGlyph *)self variableMinValue];
    dictionaryRepresentation = [(NSString *)dictionaryRepresentation stringByAppendingFormat:@", variable min = %f", v17];
  }

  [(CUINamedVectorGlyph *)self variableMaxValue];
  if (v18 != INFINITY)
  {
    [(CUINamedVectorGlyph *)self variableMaxValue];
    dictionaryRepresentation = [(NSString *)dictionaryRepresentation stringByAppendingFormat:@", variable max = %f", v19];
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return dictionaryRepresentation;
}

- (int64_t)glyphWeight
{
  v2 = 0;
  while (*&kCoreThemeContinuousGlyphWeights[v2] != self->_glyphWeight)
  {
    if (++v2 == 9)
    {
      return 0;
    }
  }

  return kCoreThemeDiscreteGlyphWeights[v2];
}

- (int64_t)glyphSize
{
  v2 = 0;
  while (*&kCoreThemeContinuousGlyphSizes[v2] != self->_glyphSize)
  {
    if (++v2 == 3)
    {
      return 0;
    }
  }

  return kCoreThemeDiscreteGlyphSizes[v2];
}

- (id)multicolorLayers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __39__CUINamedVectorGlyph_multicolorLayers__block_invoke;
  v4[3] = &unk_1E72499B8;
  v4[4] = self;
  v4[5] = &v5;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __39__CUINamedVectorGlyph_multicolorLayers__block_invoke(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_15(a1);
  [-[CUINamedVectorGlyph multicolorLayerGroup](v1) sublayers];
  OUTLINED_FUNCTION_24();
  *(v3 + 40) = v2;
}

- (id)_partialLocale
{
  result = [(CUINamedLookup *)self localization];
  if (result)
  {
    v4 = [objc_loadWeak(&self->_catalog) _nameForLocalizationIdentifier:result];

    return [NSLocale localeWithLocaleIdentifier:v4];
  }

  return result;
}

- (CUINamedVectorGlyph)initWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom pointSize:(double)size continuousWeight:(double)weight continuousSize:(double)continuousSize interpolatedFromRegular:(id)regular ultralight:(id)self0 black:(id)self1 fromCatalog:(id)self2 themeRef:(unint64_t)self3 locale:(id)self4
{
  if (!regular || !ultralight || !black)
  {

    return 0;
  }

  v27.receiver = self;
  v27.super_class = CUINamedVectorGlyph;
  v23 = [(CUINamedLookup *)&v27 initWithName:name usingRenditionKey:regular fromTheme:ref];
  if (!v23)
  {
    return v23;
  }

  v23->_ultralightInterpolationSource = [[CUINamedLookup alloc] initWithName:name usingRenditionKey:ultralight fromTheme:ref];
  v23->_blackInterpolationSource = [[CUINamedLookup alloc] initWithName:name usingRenditionKey:black fromTheme:ref];
  if (![(CUIThemeRendition *)[(CUINamedLookup *)v23 _rendition] isInterpolatable]|| ![(CUIThemeRendition *)[(CUINamedLookup *)v23->_ultralightInterpolationSource _rendition] isInterpolatable]|| ![(CUIThemeRendition *)[(CUINamedLookup *)v23->_blackInterpolationSource _rendition] isInterpolatable])
  {

    return 0;
  }

  *(v23 + 112) |= 4u;
  v23->_pointSize = size;
  v23->_lookedupScaleFactor = factor;
  v23->_lookedupLocale = locale;
  objc_storeWeak(&v23->_catalog, catalog);
  v23->_fontMatchingScaleFactor = 1.0;
  v23->_containsNamedColorStyles = -1;
  v23->_glyphWeight = weight;
  v23->_glyphSize = continuousSize;
  v23->_variableMinValue = INFINITY;
  v23->_variableMaxValue = INFINITY;
  v23->_variableMode = 0;
  v23->_fillStyle = 0;
  [(CUINamedVectorGlyph *)v23 _lookupCatalogImageForIdiom:idiom locale:locale];
  if ([(CUIThemeRendition *)[(CUINamedLookup *)v23 _rendition] isFlippable])
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  *(v23 + 112) = *(v23 + 112) & 0xFD | v24;
  v23->_layoutDirection = [(CUIRenditionKey *)[(CUINamedLookup *)v23 renditionKey] themeDirection];
  if ((*(v23 + 112) & 2) == 0 && [_LookupStructuredThemeProvider(ref v25)])
  {
    *(v23 + 112) |= 2u;
    v23->_layoutDirection = 5;
  }

  return v23;
}

- (id)intWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom pointSize:(double)size weight:(int64_t)weight glyphSize:(int64_t)glyphSize interpolatedFromRegular:(id)regular ultralight:(id)self0 black:(id)self1 fromCatalog:(id)self2 themeRef:(unint64_t)self3
{
  if (weight > 9)
  {
    v13 = -0.8;
  }

  else
  {
    v13 = dbl_18E020CE8[weight];
  }

  v14 = 1.0;
  if (glyphSize <= 3)
  {
    v14 = dbl_18E020D38[glyphSize];
  }

  return [(CUINamedVectorGlyph *)self initWithName:name scaleFactor:idiom deviceIdiom:regular pointSize:ultralight continuousWeight:black continuousSize:catalog interpolatedFromRegular:factor ultralight:size black:v13 fromCatalog:v14 themeRef:?];
}

- (CUINamedVectorGlyph)initWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom pointSize:(double)size fromCatalog:(id)catalog usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  _partialLocale = [(CUINamedVectorGlyph *)self _partialLocale];

  return [(CUINamedVectorGlyph *)self initWithName:name scaleFactor:idiom deviceIdiom:catalog pointSize:key fromCatalog:theme usingRenditionKey:_partialLocale themeRef:factor locale:size];
}

- (CUINamedVectorGlyph)initWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom pointSize:(double)size fromCatalog:(id)catalog usingRenditionKey:(id)key themeRef:(unint64_t)ref locale:(id)self0
{
  v29.receiver = self;
  v29.super_class = CUINamedVectorGlyph;
  v18 = [(CUINamedLookup *)&v29 initWithName:name usingRenditionKey:key fromTheme:ref];
  v19 = v18;
  if (v18)
  {
    v18->_pointSize = size;
    v18->_lookedupScaleFactor = factor;
    v18->_lookedupLocale = locale;
    objc_storeWeak(&v19->_catalog, catalog);
    v19->_fontMatchingScaleFactor = 1.0;
    v19->_containsNamedColorStyles = -1;
    themeGlyphWeight = [key themeGlyphWeight];
    if (themeGlyphWeight > 9)
    {
      v21 = -0.8;
    }

    else
    {
      v21 = dbl_18E020CE8[themeGlyphWeight];
    }

    v19->_glyphWeight = v21;
    themeGlyphSize = [key themeGlyphSize];
    v23 = 1.0;
    if (themeGlyphSize <= 3)
    {
      v23 = dbl_18E020D38[themeGlyphSize];
    }

    v19->_glyphSize = v23;
    v19->_variableMinValue = INFINITY;
    v19->_variableMaxValue = INFINITY;
    v19->_variableMode = 0;
    v19->_fillStyle = 0;
    _rendition = [(CUINamedLookup *)v19 _rendition];
    if ([(CUIThemeRendition *)_rendition isInterpolatable])
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    *(v19 + 112) = *(v19 + 112) & 0xFB | v25;
    [(CUINamedVectorGlyph *)v19 _lookupCatalogImageForIdiom:idiom locale:locale];
    if ([(CUIThemeRendition *)_rendition isFlippable])
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    *(v19 + 112) = *(v19 + 112) & 0xFD | v26;
    v19->_layoutDirection = [(CUIRenditionKey *)[(CUINamedLookup *)v19 renditionKey] themeDirection];
    if ((*(v19 + 112) & 2) == 0 && [_LookupStructuredThemeProvider(ref v27)])
    {
      *(v19 + 112) |= 2u;
      v19->_layoutDirection = 5;
    }
  }

  return v19;
}

+ (id)copyFromInstance:(id)instance
{
  v4 = -[CUINamedLookup initWithName:usingRenditionKey:fromTheme:]([CUINamedVectorGlyph alloc], "initWithName:usingRenditionKey:fromTheme:", [instance name], objc_msgSend(instance, "renditionKey"), objc_msgSend(instance, "storageRef"));
  if (v4)
  {
    if (*(instance + 17))
    {
      v4->_ultralightInterpolationSource = -[CUINamedLookup initWithName:usingRenditionKey:fromTheme:]([CUINamedLookup alloc], "initWithName:usingRenditionKey:fromTheme:", [*(instance + 17) name], objc_msgSend(*(instance + 17), "renditionKey"), objc_msgSend(*(instance + 17), "storageRef"));
    }

    if (*(instance + 18))
    {
      v4->_blackInterpolationSource = -[CUINamedLookup initWithName:usingRenditionKey:fromTheme:]([CUINamedLookup alloc], "initWithName:usingRenditionKey:fromTheme:", [*(instance + 18) name], objc_msgSend(*(instance + 18), "renditionKey"), objc_msgSend(*(instance + 18), "storageRef"));
    }

    [instance pointSize];
    [(CUINamedVectorGlyph *)v4 _setPointSize:?];
    [instance scale];
    [(CUINamedVectorGlyph *)v4 _setScale:?];
    -[CUINamedVectorGlyph _setCatalog:](v4, "_setCatalog:", [instance _catalog]);
    [instance fontMatchingScaleFactor];
    [(CUINamedVectorGlyph *)v4 setFontMatchingScaleFactor:?];
    [instance glyphContinuousWeight];
    [(CUINamedVectorGlyph *)v4 _setGlyphWeight:?];
    [instance glyphContinuousSize];
    [(CUINamedVectorGlyph *)v4 _setGlyphSize:?];
    -[CUINamedVectorGlyph _setFlippable:](v4, "_setFlippable:", [instance isFlippable]);
    -[CUINamedVectorGlyph _setLayoutDirection:](v4, "_setLayoutDirection:", [instance layoutDirection]);
    -[CUINamedVectorGlyph _setCanUsePathConcatenation:](v4, "_setCanUsePathConcatenation:", [instance _canUsePathConcatenation]);
    [(CUINamedVectorGlyph *)v4 _setContainsNamedColorStyles:*(instance + 57)];
    v5 = *(instance + 10);
    if (v5)
    {
      v4->_cgImageRef = CGImageRetain(v5);
      v4->_lookedupScaleFactor = *(instance + 8);
    }

    v4->_lookedupLocale = *(instance + 9);
    [instance variableMinValue];
    [(CUINamedVectorGlyph *)v4 setVariableMinValue:?];
    [instance variableMaxValue];
    [(CUINamedVectorGlyph *)v4 setVariableMaxValue:?];
    -[CUINamedVectorGlyph setVariableMode:](v4, "setVariableMode:", [instance variableMode]);
    -[CUINamedVectorGlyph setFillStyle:](v4, "setFillStyle:", [instance fillStyle]);
  }

  return v4;
}

- (id)copyWithPointSize:(double)size
{
  if (size <= 0.0)
  {
    return 0;
  }

  v4 = [(CUINamedVectorGlyph *)self copy];
  v5 = v4;
  if (v4)
  {
    [v4 _setPointSize:size];
    [v5 _setImage:0];
  }

  return v5;
}

- (id)copyWithContinuousWeight:(double)weight continuousSize:(double)size
{
  [(CUINamedVectorGlyph *)self pointSize];

  return [CUINamedVectorGlyph copyWithPointSize:"copyWithPointSize:continuousWeight:continuousSize:" continuousWeight:? continuousSize:?];
}

- (id)copyWithPointSize:(double)size continuousWeight:(double)weight continuousSize:(double)continuousSize
{
  if (size <= 0.0)
  {
    return 0;
  }

  if (self->_glyphWeight == weight && self->_glyphSize == continuousSize)
  {

    return [(CUINamedVectorGlyph *)self copyWithPointSize:size];
  }

  Weak = objc_loadWeak(&self->_catalog);
  if (!Weak)
  {
    return 0;
  }

  v11 = Weak;
  name = [(CUINamedLookup *)self name];
  [(CUINamedVectorGlyph *)self scale];
  v14 = [v11 namedVectorGlyphWithName:name scaleFactor:-[CUINamedLookup idiom](self deviceIdiom:"idiom") layoutDirection:-[CUINamedVectorGlyph layoutDirection](self glyphContinuousSize:"layoutDirection") glyphContinuousWeight:-[CUINamedLookup appearance](self glyphPointSize:"appearance") appearanceName:-[CUINamedVectorGlyph requestedLocale](self locale:{"requestedLocale"), v13, continuousSize, weight, size}];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  [(CUINamedVectorGlyph *)self variableMinValue];
  [v15 setVariableMinValue:?];
  [(CUINamedVectorGlyph *)self variableMaxValue];
  [v15 setVariableMaxValue:?];
  [v15 setVariableMode:{-[CUINamedVectorGlyph variableMode](self, "variableMode")}];
  [v15 setFillStyle:{-[CUINamedVectorGlyph fillStyle](self, "fillStyle")}];

  return v15;
}

- (void)_lookupCatalogImageForIdiom:(int64_t)idiom locale:(id)locale
{
  if (!self->_cgImageRef && objc_loadWeak(&self->_catalog))
  {
    name = [(CUINamedLookup *)self name];
    layoutDirection = [(CUINamedVectorGlyph *)self layoutDirection];
    knownAvailableVectorSizes = [(CUINamedVectorGlyph *)self knownAvailableVectorSizes];
    v8 = [knownAvailableVectorSizes count];
    v9 = v8;
    v10 = 0;
    while (*&kCoreThemeContinuousGlyphWeights[v10] != self->_glyphWeight)
    {
      if (++v10 == 9)
      {
        v11 = 0;
        goto LABEL_9;
      }
    }

    v11 = kCoreThemeDiscreteGlyphWeights[v10];
LABEL_9:
    v12 = 0;
    while (*&kCoreThemeContinuousGlyphSizes[v12] != self->_glyphSize)
    {
      if (++v12 == 3)
      {
        return;
      }
    }

    if (v11 && v8 >= 1)
    {
      v13 = 0;
      v20 = kCoreThemeDiscreteGlyphSizes[v12];
      while (1)
      {
        [objc_msgSend(knownAvailableVectorSizes objectAtIndex:{v13), "floatValue"}];
        if (self->_pointSize == v14)
        {
          break;
        }

        if (v9 == ++v13)
        {
          return;
        }
      }

      Weak = objc_loadWeak(&self->_catalog);
      lookedupScaleFactor = self->_lookedupScaleFactor;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __58__CUINamedVectorGlyph__lookupCatalogImageForIdiom_locale___block_invoke;
      v23[3] = &unk_1E7249918;
      v23[4] = self;
      v23[5] = v13;
      v23[6] = v20;
      v23[7] = v11;
      v17 = [Weak imageWithName:name scaleFactor:idiom deviceIdiom:layoutDirection layoutDirection:locale locale:v23 adjustRenditionKeyWithBlock:lookedupScaleFactor];
      v18 = CGImageRetain([v17 image]);
      self->_cgImageRef = v18;
      if (v18)
      {
        [v17 scale];
        self->_lookedupScaleFactor = v19;
      }
    }
  }
}

id __58__CUINamedVectorGlyph__lookupCatalogImageForIdiom_locale___block_invoke(uint64_t a1, void *a2)
{
  [a2 setThemeDimension2:*(a1 + 40)];
  [a2 setThemeAppearance:{objc_msgSend(*(a1 + 32), "appearanceIdentifier")}];
  [a2 setThemeGlyphSize:*(a1 + 48)];
  v4 = *(a1 + 56);

  return [a2 setThemeGlyphWeight:v4];
}

- (BOOL)isEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = CUINamedVectorGlyph;
  v5 = [(CUINamedLookup *)&v7 isEqual:?];
  if (v5)
  {
    LOBYTE(v5) = vabdd_f64(self->_pointSize, *(equal + 7)) < 2.22044605e-16 && vabdd_f64(self->_lookedupScaleFactor, *(equal + 8)) < 2.22044605e-16 && self->_glyphSize == *(equal + 15) && self->_glyphWeight == *(equal + 16) && self->_layoutDirection == *(equal + 13) && self->_variableMinValue == *(equal + 26) && self->_variableMaxValue == *(equal + 27) && self->_variableMode == *(equal + 29) && self->_fillStyle == *(equal + 30);
  }

  return v5;
}

- (void)_setUltralightInterpolationSource:(id)source
{
  if (self->_ultralightInterpolationSource != source)
  {
    sourceCopy = source;

    self->_ultralightInterpolationSource = source;
  }
}

- (void)_setBlackInterpolationSource:(id)source
{
  if (self->_blackInterpolationSource != source)
  {
    sourceCopy = source;

    self->_blackInterpolationSource = source;
  }
}

- (void)_setCanUsePathConcatenation:(BOOL)concatenation
{
  if (concatenation)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 112) = *(self + 112) & 0xFB | v3;
}

- (void)_setImage:(CGImage *)image
{
  if (self->_cgImageRef != image)
  {
    CGImageRetain(image);
    CGImageRelease(self->_cgImageRef);
    self->_cgImageRef = image;
  }
}

- (void)setRepresentsOnDemandContent:(BOOL)content
{
  contentCopy = content;
  v5.receiver = self;
  v5.super_class = CUINamedVectorGlyph;
  [(CUINamedLookup *)&v5 setRepresentsOnDemandContent:?];
  [(CUINamedLookup *)self->_ultralightInterpolationSource setRepresentsOnDemandContent:contentCopy];
  [(CUINamedLookup *)self->_blackInterpolationSource setRepresentsOnDemandContent:contentCopy];
}

- (CGSVGDocument)referenceGlyph
{
  _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];

  return [_regularRendition svgDocument];
}

- (BOOL)isInterpolatable
{
  _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];

  return [_regularRendition isInterpolatable];
}

- (BOOL)canBeInterpolatedWith:(id)with
{
  if (self == with)
  {
    LOBYTE(isInterpolatable) = 1;
  }

  else
  {
    objc_opt_self();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (Weak = objc_loadWeak(&self->_catalog), Weak == [with _catalog]))
    {
      isInterpolatable = -[NSString isEqual:](-[CUINamedLookup name](self, "name"), "isEqual:", [with name]);
      if (isInterpolatable)
      {
        isInterpolatable = [(CUINamedVectorGlyph *)self isInterpolatable];
        if (isInterpolatable)
        {

          LOBYTE(isInterpolatable) = [with isInterpolatable];
        }
      }
    }

    else
    {
      LOBYTE(isInterpolatable) = 0;
    }
  }

  return isInterpolatable;
}

- (void)_setFlippable:(BOOL)flippable
{
  if (flippable)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 112) = *(self + 112) & 0xFD | v3;
}

- (CGRect)contentBoundsUnrounded
{
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x4010000000;
  v13[2] = "";
  v14 = 0u;
  v15 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __45__CUINamedVectorGlyph_contentBoundsUnrounded__block_invoke;
  v11[3] = &unk_1E7249940;
  v11[4] = self;
  v11[5] = &v12;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v11];
  [(CUINamedVectorGlyph *)v13 alignmentRectUnrounded:v16];
  v7 = *&v16[2];
  v8 = *&v16[3];
  v9 = *v16;
  v10 = *&v16[1];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

double __45__CUINamedVectorGlyph_contentBoundsUnrounded__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  [*(a1 + 32) referenceCanvasSize];
  v9 = v8;
  v11 = v10;
  if (a3 && a4)
  {
    v12 = *(a1 + 32);
    [v12 glyphContinuousWeight];
    v48 = v13;
    [*(a1 + 32) glyphContinuousSize];
    v47 = v14;
    [a3 vectorGlyphAlignmentRectInsets];
    v45 = v16;
    v46 = v15;
    v18 = v17;
    v20 = v19;
    [a2 vectorGlyphAlignmentRectInsets];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [a4 vectorGlyphAlignmentRectInsets];
    [v12 _interpolatedAlignmentRectInsetsWithWeight:v48 glyphSize:v47 fromUltralight:v46 regular:v45 black:{v18, v20, v22, v24, v26, v28, v29, v30, v31, v32}];
  }

  else
  {
    [a2 vectorGlyphAlignmentRectInsets];
  }

  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  [*(a1 + 32) _requestedPointSizeRatio];
  if (v41 > 0.0)
  {
    v37 = v37 * v41;
    v38 = v38 * v41;
    v39 = v39 * v41;
    v40 = v40 * v41;
    memset(&v49, 0, sizeof(v49));
    CGAffineTransformMakeScale(&v49, v41, v41);
    v42 = v11 * v49.c;
    v11 = v11 * v49.d + v49.b * v9;
    v9 = v42 + v49.a * v9;
  }

  *(*(*(a1 + 40) + 8) + 32) = CGPointZero;
  result = v40 + v9 + v38;
  v44 = *(*(a1 + 40) + 8);
  *(v44 + 48) = result;
  *(v44 + 56) = v39 + v11 + v37;
  return result;
}

- (void)setFontMatchingScaleFactor:(double)factor
{
  if (self->_fontMatchingScaleFactor != factor)
  {
    self->_fontMatchingScaleFactor = factor;
    CGImageRelease(self->_cgImageRef);
    self->_cgImageRef = 0;
  }
}

- (BOOL)_containsWideGamutColor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if ([(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey] themeDisplayGamut])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __46__CUINamedVectorGlyph__containsWideGamutColor__block_invoke;
    v5[3] = &unk_1E7249968;
    v5[4] = &v6;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v5];
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __46__CUINamedVectorGlyph__containsWideGamutColor__block_invoke(uint64_t a1, void *a2)
{
  [a2 svgDocument];
  result = CGSVGDocumentContainsWideGamutContent();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)_getAnchor:(id)anchor inRendition:(id)rendition
{
  [rendition svgDocument];
  CGSVGDocumentGetRootNode();
  result = CGSVGNodeFindChildWithStringIdentifier();
  if (result)
  {
    v6 = CGPointZero;
    CGSVGShapeNodeGetCircleGeometry();
    [rendition canvasSize];
    return [NSValue valueWithPoint:v6.x];
  }

  return result;
}

- (id)_createAttachmentStoreFromNodeNamed:(id)named inRendition:(id)rendition
{
  [rendition svgDocument];
  CGSVGDocumentGetRootNode();
  ChildWithStringIdentifier = CGSVGNodeFindChildWithStringIdentifier();
  if (ChildWithStringIdentifier)
  {
    v6 = [[CUIVectorGlyphDrawAttachmentDataStore alloc] initWithSVGNode:ChildWithStringIdentifier];
    [(CUIVectorGlyphManagedPointArray *)[(CUIVectorGlyphDrawAttachmentDataStore *)v6 anchors] rawArray];
    if (v7)
    {
      v8 = v7;
      [rendition canvasSize];
      __B[1] = v9;
      v14 = -v10;
      __B[0] = -1.0;
      rawArray = [(CUIVectorGlyphManagedPointArray *)[(CUIVectorGlyphDrawAttachmentDataStore *)v6 anchors] rawArray];
      vDSP_vsaddD(rawArray + 1, 2, &v14, rawArray + 1, 2, v8);
      vDSP_vsmulD(rawArray + 1, 2, __B, rawArray + 1, 2, v8);
    }

    return v6;
  }

  else
  {

    return objc_alloc_init(CUIVectorGlyphDrawAttachmentDataStore);
  }
}

- (CGPoint)_getMetricCenterInRendition:(id)rendition
{
  [rendition vectorGlyphAlignmentRectInsets];
  v5 = v4;
  v7 = v6;
  [rendition canvasSize];
  v9 = v8;
  [rendition vectorGlyphCapLine];
  v10 = (v7 + v5 + v9) * 0.5 - v5;
  v12 = v11 * 0.5;
  [rendition vectorGlyphBaseline];
  v14 = v12 + v13;
  v15 = v10;
  result.y = v14;
  result.x = v15;
  return result;
}

- (id)unsafeDrawAttachmentData
{
  [(CUINamedVectorGlyph *)self _requestedPointSizeRatio];
  v4 = v3;
  [(CUINamedVectorGlyph *)self _unsafeComputeIfNeededDrawAttachmentData];
  v5 = [(CUIVectorGlyphDrawAttachmentDataStore *)self->_drawAttachmentData copyApplyingScaleFactor:v4];

  return v5;
}

- (void)_unsafeComputeIfNeededDrawAttachmentData
{
  if (!self->_drawAttachmentData)
  {
    _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];
    _ultralightRendition = [(CUINamedVectorGlyph *)self _ultralightRendition];
    _blackRendition = [(CUINamedVectorGlyph *)self _blackRendition];
    v6 = [(CUINamedVectorGlyph *)self _createAttachmentStoreFromNodeNamed:@"da" inRendition:_regularRendition];
    v7 = v6;
    if (_ultralightRendition && _blackRendition)
    {
      v8 = [(CUINamedVectorGlyph *)self _createAttachmentStoreFromNodeNamed:@"da" inRendition:_ultralightRendition];
      v12 = [(CUINamedVectorGlyph *)self _createAttachmentStoreFromNodeNamed:@"da" inRendition:_blackRendition];
      [(CUINamedVectorGlyph *)self glyphContinuousWeight];
      v10 = v9;
      [(CUINamedVectorGlyph *)self glyphContinuousSize];
      self->_drawAttachmentData = [(CUINamedVectorGlyph *)self _createInterpolatedDrawAttachmentDataStoreWithWeight:v8 glyphSize:v7 fromUltralight:v12 regular:v10 black:v11];
    }

    else
    {
      self->_drawAttachmentData = v6;
    }
  }
}

- (id)fillImageNames
{
  v3 = +[NSSet set];
  if (![(CUINamedVectorGlyph *)self hasImageFills])
  {
    return v3;
  }

  symbolDefaults = [(CUINamedVectorGlyph *)self symbolDefaults];
  v5 = CUIVectorGlyphDefaultsKeyFillImageNames;

  return [symbolDefaults objectForKeyedSubscript:v5];
}

- (CGImage)fillImageWithName:(id)name
{
  fillImageNames = [(CUINamedVectorGlyph *)self fillImageNames];
  v6 = fillImageNames;
  if (!name)
  {
    name = [fillImageNames anyObject];
  }

  if (!-[CUINamedVectorGlyph hasImageFills](self, "hasImageFills") || ![v6 containsObject:name] || !objc_loadWeak(&self->_catalog))
  {
    return 0;
  }

  lookedupScaleFactor = self->_lookedupScaleFactor;
  idiom = [(CUINamedLookup *)self idiom];
  localization = [(CUINamedLookup *)self localization];
  layoutDirection = [(CUINamedVectorGlyph *)self layoutDirection];
  if (localization)
  {
    localization = +[NSLocale localeWithLocaleIdentifier:](NSLocale, "localeWithLocaleIdentifier:", [objc_loadWeak(&self->_catalog) _nameForLocalizationIdentifier:localization]);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __41__CUINamedVectorGlyph_fillImageWithName___block_invoke;
  v14[3] = &unk_1E7249990;
  v14[4] = self;
  v11 = [objc_loadWeak(&self->_catalog) imageWithName:name scaleFactor:idiom deviceIdiom:layoutDirection layoutDirection:localization locale:v14 adjustRenditionKeyWithBlock:lookedupScaleFactor];
  if (!v11)
  {
    return 0;
  }

  v12 = CGImageRetain([v11 image]);
  CFAutorelease(v12);
  return v12;
}

id __41__CUINamedVectorGlyph_fillImageWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) appearanceIdentifier];

  return [a2 setThemeAppearance:v3];
}

- (BOOL)hasImageFills
{
  symbolDefaults = [(CUINamedVectorGlyph *)self symbolDefaults];
  v3 = [symbolDefaults objectForKeyedSubscript:CUIVectorGlyphDefaultsKeyHasImageFills];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (unint64_t)numberOfTemplateLayers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v3 >= 3.0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __45__CUINamedVectorGlyph_numberOfTemplateLayers__block_invoke;
    v6[3] = &unk_1E72499B8;
    v6[4] = self;
    v6[5] = &v7;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v6];
    v4 = v8[3];
  }

  else
  {
    v4 = 1;
    v8[3] = 1;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

id __45__CUINamedVectorGlyph_numberOfTemplateLayers__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(*(a1 + 32) monochromeLayerNamesInRendition:{a2), "count"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(v4 + 24) = v5;
  return result;
}

- (id)templateLayerThresholds
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = +[NSMutableArray array];
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v3 >= 4.0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __46__CUINamedVectorGlyph_templateLayerThresholds__block_invoke;
    v8[3] = &unk_1E7249940;
    v8[4] = self;
    v8[5] = &v9;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v8];
  }

  v4 = [v10[5] count];
  v5 = v10[5];
  if (v4)
  {
    [v5 sortUsingSelector:sel_compare_];
  }

  else
  {
    [v5 addObject:&unk_1F00F7E08];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __46__CUINamedVectorGlyph_templateLayerThresholds__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    v4 = [-[CUINamedVectorGlyph monochromeLayerGroup](v3) sublayers];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = __46__CUINamedVectorGlyph_templateLayerThresholds__block_invoke_2;
    v15 = &unk_1E7249A08;
    v16 = *(a1 + 40);
    v5 = &v12;
  }

  else
  {
    v4 = [v3 monochromeLayerNamesInRendition:a2];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = __46__CUINamedVectorGlyph_templateLayerThresholds__block_invoke_3;
    v10 = &unk_1E7249A08;
    v11 = *(a1 + 40);
    v5 = &v7;
  }

  return [v4 enumerateObjectsUsingBlock:{v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
}

id __46__CUINamedVectorGlyph_templateLayerThresholds__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  [a2 valueThreshold];
  v3 = [NSNumber numberWithDouble:?];

  return [v2 addObject:v3];
}

- (uint64_t)_imageForRenderingMode:(uint64_t)mode withColorResolver:
{
  if (!self)
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __64__CUINamedVectorGlyph__imageForRenderingMode_withColorResolver___block_invoke;
  v5[3] = &unk_1E7249D60;
  v6 = a2;
  v5[4] = self;
  v5[5] = mode;
  v5[6] = &v7;
  [(CUINamedVectorGlyph *)self _performWithLockedRenditions:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __68__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize___block_invoke;
  v6[3] = &unk_1E7249A50;
  v6[4] = self;
  v6[5] = &v8;
  *&v6[6] = factor;
  sizeCopy = size;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

CGImageRef __68__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize___block_invoke(uint64_t a1)
{
  result = [(CUINamedVectorGlyph *)*(a1 + 32) _rasterizeImageUsingScaleFactor:*(a1 + 48) forTargetSize:*(a1 + 56) renderingMode:*(a1 + 64) colorResolver:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CGImage)imageWithTintColor:(CGColor *)color
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __42__CUINamedVectorGlyph_imageWithTintColor___block_invoke;
  v4[3] = &__block_descriptor_40_e74___CGColor__56__0__NSString_8__CGColor__16Q24Q32q40__CUIVectorGlyphLayer_48l;
  v4[4] = color;
  return [(CUINamedVectorGlyph *)&self->super.super.isa _imageForRenderingMode:v4 withColorResolver:?];
}

- (CGImage)rasterizeImageWithTintColor:(CGColor *)color usingScaleFactor:(double)factor forTargetSize:(CGSize)size
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __82__CUINamedVectorGlyph_rasterizeImageWithTintColor_usingScaleFactor_forTargetSize___block_invoke;
  v7[3] = &unk_1E7249AC0;
  v7[4] = self;
  v7[5] = &v10;
  *&v7[6] = factor;
  sizeCopy = size;
  colorCopy = color;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v7];
  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

- (void)_drawInContext:(void *)result primaryColor:(uint64_t)color
{
  if (result && color)
  {
    v2 = result;
    [result referenceCanvasSize];
    [v2 scale];
    [v2 _requestedPointSizeRatio];
    name = [v2 name];
    _CUILog(3, "[CUINamedVectorGlyph (%@)]", v4, v5, v6, v7, v8, v9, name);

    return [CUINamedVectorGlyph _drawInContext:v2 scaleFactor:? targetSize:? primaryColor:? tertiaryColor:?];
  }

  return result;
}

- (CGPath)CGPath
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __29__CUINamedVectorGlyph_CGPath__block_invoke;
  v4[3] = &unk_1E7249940;
  v4[4] = self;
  v4[5] = &v5;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__29__CUINamedVectorGlyph_CGPath__block_invoke(void *result)
{
  if ((*(result[4] + 112) & 4) != 0)
  {
    v1 = result;
    Mutable = CGPathCreateMutable();
    v15 = v1;
    v3 = [-[CUINamedVectorGlyph monochromeLayerGroup](v1[4]) sublayers];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          if ([objc_msgSend(v8 "sublayers")])
          {
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            v9 = [v8 sublayers];
            v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v17;
              do
              {
                for (j = 0; j != v11; j = j + 1)
                {
                  if (*v17 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v16 + 1) + 8 * j);
                  if ([v14 shape])
                  {
                    CGPathAddPath(Mutable, 0, [v14 shape]);
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
              }

              while (v11);
            }
          }

          else if ([v8 shape])
          {
            CGPathAddPath(Mutable, 0, [v8 shape]);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v5);
    }

    *(*(v15[5] + 8) + 24) = Mutable;
    return CFAutorelease(Mutable);
  }

  return result;
}

- (CGPath)_rawVisibleMonochromePath:(CGAffineTransform *)path
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __49__CUINamedVectorGlyph__rawVisibleMonochromePath___block_invoke;
  v5[3] = &unk_1E7249B10;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = path;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v5];
  Mutable = v7[3];
  if (!Mutable)
  {
    Mutable = CGPathCreateMutable();
  }

  _Block_object_dispose(&v6, 8);
  return Mutable;
}

+ (CGPath)_createPathFromPoints:(id)points count:(SEL)count
{
  v4 = v3;
  v5 = v2;
  Mutable = CGPathCreateMutable();
  v7 = Mutable;
  if (v4 >= 2)
  {
    v9 = *v5;
    v8 = v5 + 1;
    CGPathMoveToPoint(Mutable, 0, *&v9, *(&v9 + 1));
    v10 = v4 - 1;
    do
    {
      v11 = *v8++;
      CGPathAddLineToPoint(v7, 0, *&v11, *(&v11 + 1));
      --v10;
    }

    while (v10);
    CGPathCloseSubpath(v7);
  }

  return v7;
}

- (CGPath)maskShape
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __32__CUINamedVectorGlyph_maskShape__block_invoke;
  v4[3] = &unk_1E7249940;
  v4[4] = self;
  v4[5] = &v5;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __32__CUINamedVectorGlyph_maskShape__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 112) & 4) != 0)
  {
    v34 = a1;
    v3 = [-[CUINamedVectorGlyph monochromeLayerGroup](v2) sublayers];
    v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v3;
    v5 = [v3 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v5)
    {
      v39 = *v59;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v59 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v58 + 1) + 8 * i);
          if ([v7 isEraserLayer])
          {
            [v7 opacity];
            v9 = v8 < 2.22044605e-16;
          }

          else
          {
            v9 = 0;
          }

          if ([objc_msgSend(v7 "sublayers")])
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v10 = [v7 sublayers];
            v11 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
            if (v11)
            {
              v12 = *v55;
              do
              {
                for (j = 0; j != v11; j = j + 1)
                {
                  if (*v55 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v14 = *(*(&v54 + 1) + 8 * j);
                  if ([v14 isEraserLayer])
                  {
                    [v14 opacity];
                    v16 = v15 < 2.22044605e-16;
                  }

                  else
                  {
                    v16 = 0;
                  }

                  if (v16 == v9)
                  {
                    v17 = [v14 shape];
                    if (v17)
                    {
                      v18 = CUICreateSubpathArrayFromCGPath(v17);
                      [v4 addObjectsFromArray:v18];
                    }
                  }
                }

                v11 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
              }

              while (v11);
            }
          }

          else if ((v9 & 1) == 0)
          {
            v19 = [v7 shape];
            if (v19)
            {
              v20 = CUICreateSubpathArrayFromCGPath(v19);
              [v4 addObjectsFromArray:v20];
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v5);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v36 = [v4 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v36)
    {
      obja = 0;
      v35 = *v51;
      do
      {
        v21 = 0;
        do
        {
          if (*v51 != v35)
          {
            v22 = v21;
            objc_enumerationMutation(v4);
            v21 = v22;
          }

          v40 = v21;
          v23 = *(*(&v50 + 1) + 8 * v21);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v24 = [v4 countByEnumeratingWithState:&v46 objects:v62 count:16];
          if (v24)
          {
            v25 = *v47;
            do
            {
              for (k = 0; k != v24; k = k + 1)
              {
                if (*v47 != v25)
                {
                  objc_enumerationMutation(v4);
                }

                v27 = *(*(&v46 + 1) + 8 * k);
                if (v23 != v27)
                {
                  v42 = 0;
                  v43 = &v42;
                  v44 = 0x2020000000;
                  v45 = 0;
                  BoundingBox = CGPathGetBoundingBox(v23);
                  x = BoundingBox.origin.x;
                  y = BoundingBox.origin.y;
                  width = BoundingBox.size.width;
                  height = BoundingBox.size.height;
                  v67 = CGPathGetBoundingBox(v27);
                  v68.origin.x = x;
                  v68.origin.y = y;
                  v68.size.width = width;
                  v68.size.height = height;
                  if (CGRectContainsRect(v67, v68))
                  {
                    block[0] = _NSConcreteStackBlock;
                    block[1] = 3221225472;
                    block[2] = __32__CUINamedVectorGlyph_maskShape__block_invoke_2;
                    block[3] = &unk_1E7249B38;
                    block[4] = &v42;
                    block[5] = v27;
                    CGPathApplyWithBlock(v23, block);
                    v32 = *(v43 + 24);
                    _Block_object_dispose(&v42, 8);
                    if ((v32 & 1) == 0)
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    *(v43 + 24) = 1;
                    _Block_object_dispose(&v42, 8);
                  }
                }
              }

              v24 = [v4 countByEnumeratingWithState:&v46 objects:v62 count:16];
            }

            while (v24);
          }

          if (obja)
          {
            CopyByUnioningPath = CGPathCreateCopyByUnioningPath(obja, v23, 0);
            CGPathRelease(obja);
            obja = CopyByUnioningPath;
          }

          else
          {
            obja = CGPathRetain(v23);
          }

LABEL_50:
          v21 = v40 + 1;
        }

        while ((v40 + 1) != v36);
        v36 = [v4 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v36);
      if (obja)
      {
        *(*(*(v34 + 40) + 8) + 24) = obja;
        CFAutorelease(obja);
      }
    }
  }
}

uint64_t __32__CUINamedVectorGlyph_maskShape__block_invoke_2(uint64_t result, int *a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 < 2)
  {
    v5 = *(a2 + 1);
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = 16;
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      v4 = 32;
    }

    v5 = (*(a2 + 1) + v4);
  }

  result = CGPathContainsPoint(*(result + 40), 0, *v5, 0);
  if ((result & 1) == 0)
  {
    *(*(*(v2 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (unint64_t)numberOfMulticolorLayers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v3 >= 2.1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __47__CUINamedVectorGlyph_numberOfMulticolorLayers__block_invoke;
    v6[3] = &unk_1E72499B8;
    v6[4] = self;
    v6[5] = &v7;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v6];
    v4 = v8[3];
  }

  else
  {
    v4 = 1;
    v8[3] = 1;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)multicolorLayerThresholds
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = +[NSMutableArray array];
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v3 >= 4.0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __48__CUINamedVectorGlyph_multicolorLayerThresholds__block_invoke;
    v8[3] = &unk_1E7249940;
    v8[4] = self;
    v8[5] = &v9;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v8];
  }

  v4 = [v10[5] count];
  v5 = v10[5];
  if (v4)
  {
    [v5 sortUsingSelector:sel_compare_];
  }

  else
  {
    [v5 addObject:&unk_1F00F7E08];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __48__CUINamedVectorGlyph_multicolorLayerThresholds__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    v4 = [-[CUINamedVectorGlyph multicolorLayerGroup](v3) sublayers];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = __48__CUINamedVectorGlyph_multicolorLayerThresholds__block_invoke_2;
    v15 = &unk_1E7249A08;
    v16 = *(a1 + 40);
    v5 = &v12;
  }

  else
  {
    v4 = [v3 _layerNamesForRenderingMode:2 inRendition:a2];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = __48__CUINamedVectorGlyph_multicolorLayerThresholds__block_invoke_3;
    v10 = &unk_1E7249A08;
    v11 = *(a1 + 40);
    v5 = &v7;
  }

  return [v4 enumerateObjectsUsingBlock:{v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
}

id __48__CUINamedVectorGlyph_multicolorLayerThresholds__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  [a2 valueThreshold];
  v3 = [NSNumber numberWithDouble:?];

  return [v2 addObject:v3];
}

- (CGImage)imageWithColorResolver:(id)resolver
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __46__CUINamedVectorGlyph_imageWithColorResolver___block_invoke;
  v4[3] = &unk_1E7249B60;
  v4[4] = resolver;
  return [(CUINamedVectorGlyph *)&self->super.super.isa _imageForRenderingMode:v4 withColorResolver:?];
}

uint64_t __46__CUINamedVectorGlyph_imageWithColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withColorResolver:(id)resolver
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __86__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withColorResolver___block_invoke;
  v7[3] = &unk_1E7249B88;
  v7[5] = resolver;
  v7[6] = &v9;
  *&v7[7] = factor;
  sizeCopy = size;
  v7[4] = self;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v7];
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __86__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withColorResolver___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (id)makeLayerWithColorResolver:(id)resolver
{
  v3 = [(CUINamedVectorGlyph *)self imageWithColorResolver:resolver];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = +[CALayer layer];
  [(CALayer *)v5 setContents:v4];
  Width = CGImageGetWidth(v4);
  [(CALayer *)v5 setBounds:0.0, 0.0, Width, CGImageGetHeight(v4)];
  CGImageRelease(v4);
  return v5;
}

id __47__CUINamedVectorGlyph_containsNamedColorStyles__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    v4 = [-[CUINamedVectorGlyph multicolorLayerGroup](v3) sublayers];
  }

  else
  {
    v4 = [v3 _layerNamesForRenderingMode:2 inRendition:a2];
  }

  result = [v4 count];
  *(*(a1 + 32) + 114) = result != 0;
  return result;
}

- (BOOL)containsNamedColorStyle:(id)style
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v5 >= 2.1 && [(CUINamedVectorGlyph *)self containsNamedColorStyles])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __47__CUINamedVectorGlyph_containsNamedColorStyle___block_invoke;
    v8[3] = &unk_1E7249C00;
    v8[4] = self;
    v8[5] = style;
    v8[6] = &v9;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v8];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __47__CUINamedVectorGlyph_containsNamedColorStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    __47__CUINamedVectorGlyph_containsNamedColorStyle___block_invoke_cold_1(v3, &v13);
    v4 = v13;
  }

  else
  {
    v4 = [v3 _layerNamesForRenderingMode:2 inRendition:a2];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        result = [(__CFString *)[(CUINamedVectorGlyph *)*(a1 + 32) colorNameForRenderingStyle:?] isEqualToString:*(a1 + 40)];
        if (result)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          return result;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)multicolorColorNames
{
  v1 = OUTLINED_FUNCTION_1(self);
  v2 = OUTLINED_FUNCTION_30(v1, COERCE_DOUBLE(3221225472));
  return OUTLINED_FUNCTION_13(v2, v3, v4, v5);
}

id __43__CUINamedVectorGlyph_multicolorColorNames__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    __47__CUINamedVectorGlyph_containsNamedColorStyle___block_invoke_cold_1(v3, &v13);
    v4 = v13;
  }

  else
  {
    v4 = [v3 _layerNamesForRenderingMode:2 inRendition:a2];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) addObject:{-[CUINamedVectorGlyph colorNameForRenderingStyle:](*(a1 + 32), *(*(&v9 + 1) + 8 * v8))}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (id)multicolorLayerColorNames
{
  v1 = OUTLINED_FUNCTION_1(self);
  v2 = OUTLINED_FUNCTION_30(v1, COERCE_DOUBLE(3221225472));
  return OUTLINED_FUNCTION_13(v2, v3, v4, v5);
}

id __48__CUINamedVectorGlyph_multicolorLayerColorNames__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    __47__CUINamedVectorGlyph_containsNamedColorStyle___block_invoke_cold_1(v3, &v13);
    v4 = v13;
  }

  else
  {
    v4 = [v3 _layerNamesForRenderingMode:2 inRendition:a2];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) addObject:{-[CUINamedVectorGlyph colorNameForRenderingStyle:](*(a1 + 32), *(*(&v9 + 1) + 8 * v8))}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)isKnockoutEnabledForMulticolorLayerAtIndex:(int64_t)index opacity:(double *)opacity
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v7 >= 2.1)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __74__CUINamedVectorGlyph_isKnockoutEnabledForMulticolorLayerAtIndex_opacity___block_invoke;
    v10[3] = &unk_1E7249C50;
    v10[4] = self;
    v10[5] = &v11;
    v10[6] = index;
    v10[7] = opacity;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v10];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

_BYTE *__74__CUINamedVectorGlyph_isKnockoutEnabledForMulticolorLayerAtIndex_opacity___block_invoke(uint64_t a1)
{
  [*(a1 + 32) variableMinValue];
  v3 = v2;
  [*(a1 + 32) variableMaxValue];
  result = *(a1 + 32);
  v6 = 1.0;
  if ((result[112] & 4) == 0)
  {
    goto LABEL_2;
  }

  v8 = v4;
  v9 = [objc_msgSend(-[CUINamedVectorGlyph multicolorLayerGroup](result) "sublayers")];
  v10 = [v9 isEraserLayer];
  [v9 opacity];
  v6 = v11;
  result = [v9 valueThreshold];
  if (v10)
  {
    v13 = v6 < 2.22044605e-16;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = v8 == INFINITY && v3 == INFINITY;
  if (v14 || v12 == INFINITY)
  {
    goto LABEL_30;
  }

  v16 = v12 <= v8;
  if (v12 <= 0.0)
  {
    v16 = v12 < v8;
  }

  if (v8 == INFINITY)
  {
    v16 = 1;
  }

  v17 = v12 >= v3 || v3 == INFINITY;
  v6 = 0.0;
  if (!v17 || !v16)
  {
    v6 = 0.7;
  }

  else
  {
LABEL_30:
    if (!v10)
    {
      goto LABEL_2;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_2:
  v7 = *(a1 + 56);
  if (v7)
  {
    *v7 = v6;
  }

  return result;
}

- (id)hierarchicalLayerThresholds
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = +[NSMutableArray array];
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v3 >= 4.0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __50__CUINamedVectorGlyph_hierarchicalLayerThresholds__block_invoke;
    v8[3] = &unk_1E7249940;
    v8[4] = self;
    v8[5] = &v9;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v8];
  }

  v4 = [v10[5] count];
  v5 = v10[5];
  if (v4)
  {
    [v5 sortUsingSelector:sel_compare_];
  }

  else
  {
    [v5 addObject:&unk_1F00F7E08];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __50__CUINamedVectorGlyph_hierarchicalLayerThresholds__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    return __50__CUINamedVectorGlyph_hierarchicalLayerThresholds__block_invoke_cold_1(v3, &v7, a1);
  }

  v4 = [v3 _layerNamesForRenderingMode:3 inRendition:a2];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __50__CUINamedVectorGlyph_hierarchicalLayerThresholds__block_invoke_3;
  v6[3] = &unk_1E7249A08;
  v6[4] = *(a1 + 40);
  return [v4 enumerateObjectsUsingBlock:v6];
}

id __50__CUINamedVectorGlyph_hierarchicalLayerThresholds__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  [a2 valueThreshold];
  v3 = [NSNumber numberWithDouble:?];

  return [v2 addObject:v3];
}

- (id)hierarchyLayers
{
  v1 = OUTLINED_FUNCTION_1(self);
  v2 = OUTLINED_FUNCTION_30(v1, COERCE_DOUBLE(3221225472));
  return OUTLINED_FUNCTION_13(v2, v3, v4, v5);
}

- (id)hierarchyLevels
{
  v1 = OUTLINED_FUNCTION_1(self);
  v2 = OUTLINED_FUNCTION_30(v1, COERCE_DOUBLE(3221225472));
  return OUTLINED_FUNCTION_13(v2, v3, v4, v5);
}

- (CGImage)imageWithHierarchyColorResolver:(id)resolver
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __55__CUINamedVectorGlyph_imageWithHierarchyColorResolver___block_invoke;
  v4[3] = &unk_1E7249B60;
  v4[4] = resolver;
  return [(CUINamedVectorGlyph *)&self->super.super.isa _imageForRenderingMode:v4 withColorResolver:?];
}

uint64_t __55__CUINamedVectorGlyph_imageWithHierarchyColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withHierarchyColorResolver:(id)resolver
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __95__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withHierarchyColorResolver___block_invoke;
  v7[3] = &unk_1E7249B88;
  v7[5] = resolver;
  v7[6] = &v9;
  *&v7[7] = factor;
  sizeCopy = size;
  v7[4] = self;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v7];
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __95__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withHierarchyColorResolver___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)imageWithHierarchicalPrimaryColor:(CGColor *)color
{
  if (color)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __57__CUINamedVectorGlyph_imageWithHierarchicalPrimaryColor___block_invoke;
    v5[3] = &__block_descriptor_56_e21___CGColor__24__0Q8Q16l;
    v5[4] = color;
    v5[5] = 4;
    v5[6] = CGColorGetAlpha(color);
    return [(CUINamedVectorGlyph *)self imageWithHierarchyColorResolver:v5];
  }

  else
  {
    [CUINamedVectorGlyph imageWithHierarchicalPrimaryColor:];
    return 0;
  }
}

CFTypeRef __57__CUINamedVectorGlyph_imageWithHierarchicalPrimaryColor___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = CFRetain(*(a1 + 32));
  v6 = *(a1 + 40) - 1;
  if (v6 >= a3)
  {
    v6 = a3;
  }

  if (v6)
  {
    CopyWithAlpha = CGColorCreateCopyWithAlpha(*(a1 + 32), CUIVectorGlyphHierarchicalColorOpacities[v6] * *(a1 + 48));
    CFRelease(*(a1 + 32));
  }

  else
  {
    CopyWithAlpha = v5;
  }

  return CFAutorelease(CopyWithAlpha);
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size hierarchicalPrimaryColor:(CGColor *)color
{
  if (color)
  {
    height = size.height;
    width = size.width;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __93__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_hierarchicalPrimaryColor___block_invoke;
    v10[3] = &__block_descriptor_56_e21___CGColor__24__0Q8Q16l;
    v10[4] = color;
    v10[5] = 4;
    v10[6] = CGColorGetAlpha(color);
    return [(CUINamedVectorGlyph *)self rasterizeImageUsingScaleFactor:v10 forTargetSize:factor withHierarchyColorResolver:width, height];
  }

  else
  {
    [CUINamedVectorGlyph rasterizeImageUsingScaleFactor:forTargetSize:hierarchicalPrimaryColor:];
    return 0;
  }
}

CFTypeRef __93__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_hierarchicalPrimaryColor___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = CFRetain(*(a1 + 32));
  v6 = *(a1 + 40) - 1;
  if (v6 >= a3)
  {
    v6 = a3;
  }

  if (v6)
  {
    CopyWithAlpha = CGColorCreateCopyWithAlpha(*(a1 + 32), CUIVectorGlyphHierarchicalColorOpacities[v6] * *(a1 + 48));
    CFRelease(*(a1 + 32));
  }

  else
  {
    CopyWithAlpha = v5;
  }

  return CFAutorelease(CopyWithAlpha);
}

- (BOOL)isKnockoutEnabledForHierarchicalLayerAtIndex:(int64_t)index opacity:(double *)opacity
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (opacity)
  {
    *opacity = 1.0;
  }

  [(CUINamedVectorGlyph *)self templateVersion];
  if (v7 >= 3.0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __76__CUINamedVectorGlyph_isKnockoutEnabledForHierarchicalLayerAtIndex_opacity___block_invoke;
    v10[3] = &unk_1E7249C50;
    v10[4] = self;
    v10[5] = &v11;
    v10[6] = index;
    v10[7] = opacity;
    [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v10];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)paletteLevels
{
  v1 = OUTLINED_FUNCTION_1(self);
  v2 = OUTLINED_FUNCTION_30(v1, COERCE_DOUBLE(3221225472));
  return OUTLINED_FUNCTION_13(v2, v3, v4, v5);
}

id __36__CUINamedVectorGlyph_paletteLevels__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 112) & 4) != 0)
  {
    __36__CUINamedVectorGlyph_paletteLevels__block_invoke_cold_1(v3, &v14);
    v4 = v14;
  }

  else
  {
    v4 = [v3 _layerNamesForRenderingMode:3 inRendition:a2];
  }

  v5 = [objc_opt_class() _layerHierarchyStyleNames];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(v5, "indexOfObject:", -[CUINamedVectorGlyph colorNameForRenderingStyle:](*(a1 + 32), *(*(&v10 + 1) + 8 * v9))))}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (CGImage)imageWithPaletteColorResolver:(id)resolver
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __53__CUINamedVectorGlyph_imageWithPaletteColorResolver___block_invoke;
  v4[3] = &unk_1E7249B60;
  v4[4] = resolver;
  return [(CUINamedVectorGlyph *)&self->super.super.isa _imageForRenderingMode:v4 withColorResolver:?];
}

uint64_t __53__CUINamedVectorGlyph_imageWithPaletteColorResolver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withPaletteColorResolver:(id)resolver
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __93__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColorResolver___block_invoke;
  v7[3] = &unk_1E7249B88;
  v7[5] = resolver;
  v7[6] = &v9;
  *&v7[7] = factor;
  sizeCopy = size;
  v7[4] = self;
  [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v7];
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __93__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColorResolver___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return a3;
  }

  return result;
}

- (CGImage)imageWithPaletteColors:(id)colors
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (colors)
  {
    v5 = [colors count];
    if (v5 == 1)
    {
      [(CUINamedVectorGlyph *)self referenceCanvasSize];
      v7 = v6;
      v9 = v8;
      [(CUINamedVectorGlyph *)self scale];
      v11 = v10;
      [(CUINamedVectorGlyph *)self _requestedPointSizeRatio];
      v17[1] = 3221225472;
      v17[0] = _NSConcreteStackBlock;
      v17[2] = __46__CUINamedVectorGlyph_imageWithPaletteColors___block_invoke;
      v17[3] = &unk_1E7249CC0;
      v17[5] = colors;
      v17[6] = &v18;
      *&v17[7] = v11 * v12;
      v17[8] = v7;
      v17[9] = v9;
      v17[4] = self;
      [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v17];
    }

    else
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __46__CUINamedVectorGlyph_imageWithPaletteColors___block_invoke_3;
      v16[3] = &unk_1E7249CE8;
      v16[4] = colors;
      v16[5] = v5;
      v13 = [(CUINamedVectorGlyph *)self imageWithPaletteColorResolver:v16];
      v19[3] = v13;
    }
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CUINamedVectorGlyph.m" description:2390, @"Invalid parameter not satisfying: %@", @"colors"];
  }

  v14 = v19[3];
  _Block_object_dispose(&v18, 8);
  return v14;
}

id __46__CUINamedVectorGlyph_imageWithPaletteColors___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  if (*(v4 + 8) <= a3)
  {
    return [v3 lastObject];
  }

  else
  {
    return [v3 objectAtIndex:?];
  }
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size withPaletteColors:(id)colors
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (colors)
  {
    height = size.height;
    width = size.width;
    v10 = [colors count];
    if (v10 == 1)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __86__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColors___block_invoke;
      v15[3] = &unk_1E7249CC0;
      v15[5] = colors;
      v15[6] = &v16;
      *&v15[7] = factor;
      *&v15[8] = width;
      *&v15[9] = height;
      v15[4] = self;
      [(CUINamedVectorGlyph *)&self->super.super.isa _performWithLockedRenditions:v15];
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __86__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColors___block_invoke_3;
      v14[3] = &unk_1E7249CE8;
      v14[4] = colors;
      v14[5] = v10;
      height = [(CUINamedVectorGlyph *)self rasterizeImageUsingScaleFactor:v14 forTargetSize:factor withPaletteColorResolver:width, height];
      v17[3] = height;
    }
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CUINamedVectorGlyph.m" description:2419, @"Invalid parameter not satisfying: %@", @"colors"];
  }

  v12 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v12;
}

id __86__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColors___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  if (*(v4 + 8) <= a3)
  {
    return [v3 lastObject];
  }

  else
  {
    return [v3 objectAtIndex:?];
  }
}

- (void)drawInContext:(CGContext *)context withPaletteColors:(id)colors
{
  if (colors)
  {
    numberOfHierarchyLayers = [(CUINamedVectorGlyph *)self numberOfHierarchyLayers];
    v8 = [colors count];
    if (v8 == 1)
    {
      [(CUINamedVectorGlyph *)self drawInContext:v12 withPaletteColors:context, colors];
    }

    else if (numberOfHierarchyLayers)
    {
      v9 = v8;
      for (i = 0; i != numberOfHierarchyLayers; ++i)
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = __55__CUINamedVectorGlyph_drawInContext_withPaletteColors___block_invoke_2;
        v11[3] = &unk_1E7249CE8;
        v11[4] = colors;
        v11[5] = v9;
        [(CUINamedVectorGlyph *)self drawPaletteLayerAtIndex:i inContext:context withColorResolver:v11];
      }
    }
  }

  else
  {
    [CUINamedVectorGlyph drawInContext:withPaletteColors:];
  }
}

id __55__CUINamedVectorGlyph_drawInContext_withPaletteColors___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  if (*(v4 + 8) <= a3)
  {
    return [v3 lastObject];
  }

  else
  {
    return [v3 objectAtIndex:?];
  }
}

- (id)graphicVariantWithOptions:(id)options
{
  if (([options _areValid] & 1) == 0)
  {
    [CUINamedVectorGlyph graphicVariantWithOptions:];
  }

  v5 = [[_CUIGraphicVariantVectorGlyph alloc] _initWithBaseGlyph:self options:options];

  return v5;
}

CGImageRef __64__CUINamedVectorGlyph__imageForRenderingMode_withColorResolver___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4[17] && v4[18])
  {
    v5 = [v4 name];
    v6 = [*(a1 + 32) keySignature];
    [*(a1 + 32) glyphContinuousWeight];
    v8 = v7;
    [*(a1 + 32) glyphContinuousSize];
    v10 = [NSString stringWithFormat:@"interpolatedsymbol-%@-%@-%f-%f", v5, v6, v8, v9];
  }

  else
  {
    v10 = [v4 keySignature];
  }

  v11 = v10;
  [*(a1 + 32) scale];
  v13 = v12;
  [*(a1 + 32) pointSize];
  v15 = v14;
  [*(a1 + 32) fontMatchingScaleFactor];
  v17 = v16;
  v18 = *(a1 + 56);
  [*(a1 + 32) variableMinValue];
  v20 = v19;
  [*(a1 + 32) variableMaxValue];
  v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%.0f-%.1f-%.1f-%d-%f-%f-%ld-%ld", v11, v13, v15, v17, v18, v20, v21, [*(a1 + 32) variableMode], objc_msgSend(*(a1 + 32), "fillStyle"));
  v23 = *(a1 + 56);
  if ((v23 - 3) < 2)
  {
    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = [v27 _layerNamesForRenderingMode:3 inRendition:a2];
    }

    else
    {
      v28 = 0;
    }

    v29 = [v28 count];
    v30 = [objc_opt_class() _layerHierarchyStyleNames];
    if (!v29)
    {
      SRGBBlack = _CUIColorGetSRGBBlack();
      v26 = (*(*(a1 + 40) + 16))(*(a1 + 40), [v30 firstObject], SRGBBlack, 0, 0, -1, 0);
      goto LABEL_23;
    }

    for (i = 0; i != v29; ++i)
    {
      v32 = -[CUINamedVectorGlyph colorNameForRenderingStyle:](*(a1 + 32), [v28 objectAtIndex:i]);
      v33 = [v30 indexOfObject:v32];
      v34 = *(a1 + 40);
      v35 = _CUIColorGetSRGBBlack();
      v36 = (*(v34 + 16))(v34, v32, v35, i, v33, -1, 0);
      v37 = _CUICreateStringWithColor(v36);
      v22 = [(NSString *)v22 stringByAppendingFormat:@"-%@", v37];
      CFRelease(v37);
    }
  }

  else if (v23 == 2)
  {
    v38 = *(a1 + 32);
    if (v38)
    {
      v39 = [v38 _layerNamesForRenderingMode:2 inRendition:a2];
    }

    else
    {
      v39 = 0;
    }

    v40 = [v39 count];
    if (v40)
    {
      v41 = v40;
      for (j = 0; j != v41; ++j)
      {
        v43 = -[CUINamedVectorGlyph colorNameForRenderingStyle:](*(a1 + 32), [v39 objectAtIndex:j]);
        v44 = *(a1 + 40);
        v45 = _CUIColorGetSRGBBlack();
        v46 = (*(v44 + 16))(v44, v43, v45, j, j, -1, 0);
        v47 = _CUICreateStringWithColor(v46);
        v22 = [(NSString *)v22 stringByAppendingFormat:@"-%@", v47];
        CFRelease(v47);
      }
    }
  }

  else if (v23 == 1)
  {
    v24 = *(a1 + 40);
    if (v24)
    {
      v25 = _CUIColorGetSRGBBlack();
      v26 = (*(v24 + 16))(v24, @"primary", v25, 0, 0, -1, 0);
LABEL_23:
      v49 = _CUICreateStringWithColor(v26);
      v22 = [(NSString *)v22 stringByAppendingFormat:@"-%@", v49];
      CFRelease(v49);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(objc_loadWeak((*(a1 + 32) + 96)) "localObjectCache")];
  v50 = *(*(*(a1 + 48) + 8) + 24);
  if (v50 && (v51 = CFGetTypeID(v50), v51 == CGImageGetTypeID()))
  {
    result = CGImageRetain(*(*(*(a1 + 48) + 8) + 24));
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  else
  {
    v53 = [objc_msgSend(objc_loadWeak((*(a1 + 32) + 96)) "_themeStore")];
    CUIRenditionKeyValueForAttribute(v53, 17);
    [*(a1 + 32) pointSize];
    [*(a1 + 32) glyphContinuousSize];
    [*(a1 + 32) glyphContinuousWeight];
    kdebug_trace();
    [*(a1 + 32) referenceCanvasSize];
    v55 = v54;
    v57 = v56;
    [*(a1 + 32) scale];
    v59 = v58;
    [*(a1 + 32) _requestedPointSizeRatio];
    *(*(*(a1 + 48) + 8) + 24) = [(CUINamedVectorGlyph *)*(a1 + 32) _rasterizeImageUsingScaleFactor:v59 * v60 forTargetSize:v55 renderingMode:v57 colorResolver:?];
    v61 = *(*(*(a1 + 48) + 8) + 24);
    v68 = [*(a1 + 32) name];
    if (v61)
    {
      [*(a1 + 32) pointSize];
      _CUILog(3, "[CUINamedVectorGlyph (%@)] pointsize:%f", v69, v70, v71, v72, v73, v74, v68);
      [objc_msgSend(objc_loadWeak((*(a1 + 32) + 96)) "localObjectCache")];
    }

    else
    {
      _CUILog(4, "CoreUI: %s counldn't create vector glyph image with name %@", v62, v63, v64, v65, v66, v67, "[CUINamedVectorGlyph _imageForRenderingMode:withColorResolver:]_block_invoke");
    }

    return kdebug_trace();
  }

  return result;
}

uint64_t __64__CUINamedVectorGlyph__imageForRenderingMode_withColorResolver___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 40))
  {
    return a3;
  }

  [*(a1 + 32) templateVersion];
  if (v5 < 2.1 && *(a1 + 48) != 1)
  {
    return a3;
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

uint64_t __93__CUINamedVectorGlyph__drawHierarchicalLayersInContext_scaleFactor_targetSize_colorResolver___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  SRGBBlack = _CUIColorGetSRGBBlack();
  v8 = a1[6];
  v9 = a1[4];
  v10 = *(v6 + 16);

  return v10(v6, 0, SRGBBlack, a2, a3, v8, v9);
}

uint64_t __88__CUINamedVectorGlyph__drawPaletteLayersInContext_scaleFactor_targetSize_colorResolver___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  SRGBBlack = _CUIColorGetSRGBBlack();
  v8 = a1[6];
  v9 = a1[4];
  v10 = *(v6 + 16);

  return v10(v6, 0, SRGBBlack, a2, a3, v8, v9);
}

- (const)_fillColorOfStyle:(uint64_t)style
{
  v2 = 0;
  if (style && a2)
  {
    if (CGSVGAttributeMapGetAttribute())
    {
      v2 = 0;
      if (CGSVGAttributeGetPaint())
      {
        CGSVGPaintGetColor();
        CGColor = CGSVGColorCreateCGColor();
        v2 = CGColor;
        if (CGColor)
        {
          CFAutorelease(CGColor);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (uint64_t)_setFillColor:(uint64_t)color ofStyle:
{
  if (result && color)
  {
    if (a2)
    {
      SRGB = _CUIColorSpaceGetSRGB();
      DisplayP3 = _CUIColorSpaceGetDisplayP3();
      ExtendedRangeSRGB = _CUIColorSpaceGetExtendedRangeSRGB();
      ColorSpace = CGColorGetColorSpace(a2);
      if (ColorSpace == SRGB || ColorSpace == ExtendedRangeSRGB || ColorSpace == DisplayP3)
      {
        CopyByMatchingToColorSpace = CGColorRetain(a2);
      }

      else
      {
        CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(SRGB, kCGRenderingIntentDefault, a2, 0);
      }

      v9 = CopyByMatchingToColorSpace;
      CGColorGetComponents(CopyByMatchingToColorSpace);
      CGSVGColorCreateRGBA();
      CGColorRelease(v9);
      CGSVGAttributeCreateWithColor();
      CGSVGAttributeMapSetAttribute();
      return CGSVGAttributeRelease();
    }

    else
    {

      return _CGSVGAttributeMapRemoveAttribute(color, 18);
    }
  }

  return result;
}

- (void)_legacy_drawMonochromeLayerNamed:(id)named inContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size onFillColor:(CGColor *)color offFillColor:(CGColor *)fillColor
{
  v10 = size.width * factor;
  v11 = size.height * factor;
  [(CUINamedVectorGlyph *)self referenceCanvasSize:named];
  v13 = v12;
  v15 = v14;
  CGContextSaveGState(context);
  CGContextScaleCTM(context, v10 / v13, v11 / v15);
  [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
  CGContextDrawSVGDocument();

  CGContextRestoreGState(context);
}

- (void)_legacy_drawMulticolorLayerNamed:(id)named inContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size colorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  if ([-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")])
  {
    CGSVGDocumentGetRootNode();
    CGSVGNodeGetChildAtIndex();
    ChildCount = CGSVGNodeGetChildCount();
    [(CUINamedVectorGlyph *)self referenceCanvasSize];
    v16 = v15;
    v18 = v17;
    CGContextSaveGState(context);
    CGContextScaleCTM(context, width * factor / v16, height * factor / v18);
    if (ChildCount)
    {
      for (i = 0; i != ChildCount; ++i)
      {
        ChildAtIndex = CGSVGNodeGetChildAtIndex();
        if (CGSVGNodeGetType() == 2 && CGSVGNodeFindAttribute())
        {
          v21 = CGSVGAttributeCopyString();
          if ([v21 containsString:named])
          {
            if (resolver)
            {
              [(CUINamedVectorGlyph *)self _prepareShapeNode:i atNodeIndex:named forRenderingStyle:resolver withColorResolver:?];
            }

            CGContextDrawSVGNode();
          }
        }
      }
    }

    CGContextRestoreGState(context);
  }
}

- (void)_legacy_drawHierarchicalLayerNamed:(id)named inContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size colorResolver:(id)resolver
{
  height = size.height;
  width = size.width;
  if ((*(self + 112) & 4) != 0)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __105__CUINamedVectorGlyph__legacy_drawHierarchicalLayerNamed_inContext_scaleFactor_targetSize_colorResolver___block_invoke;
    v27[3] = &unk_1E7249DD8;
    v27[4] = named;
    v27[5] = &v28;
    [objc_msgSend(-[CUINamedVectorGlyph hierarchicalLayerGroup](self) "sublayers")];
    v22 = v29[5];
    if (v22)
    {
      [(CUINamedVectorGlyph *)self variableMinValue];
      v24 = v23;
      [(CUINamedVectorGlyph *)self variableMaxValue];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = __105__CUINamedVectorGlyph__legacy_drawHierarchicalLayerNamed_inContext_scaleFactor_targetSize_colorResolver___block_invoke_2;
      v26[3] = &unk_1E7249E00;
      v26[4] = resolver;
      v26[5] = &v28;
      [v22 drawInContext:context scaleFactor:v26 targetSize:factor variableMinValue:width variableMaxValue:height hierarchicalColorResolver:{v24, v25}];
    }

    _Block_object_dispose(&v28, 8);
  }

  else if ([-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")])
  {
    CGSVGDocumentGetRootNode();
    CGSVGNodeGetChildAtIndex();
    ChildCount = CGSVGNodeGetChildCount();
    [(CUINamedVectorGlyph *)self referenceCanvasSize];
    v16 = v15;
    v18 = v17;
    CGContextSaveGState(context);
    CGContextScaleCTM(context, width * factor / v16, height * factor / v18);
    if (ChildCount)
    {
      for (i = 0; i != ChildCount; ++i)
      {
        ChildAtIndex = CGSVGNodeGetChildAtIndex();
        if (CGSVGNodeGetType() == 2 && CGSVGNodeFindAttribute())
        {
          v21 = CGSVGAttributeCopyString();
          if ([v21 containsString:named])
          {
            if (resolver)
            {
              [(CUINamedVectorGlyph *)self _prepareShapeNode:i atNodeIndex:named forRenderingStyle:resolver withColorResolver:?];
            }

            CGContextDrawSVGNode();
          }
        }
      }
    }

    CGContextRestoreGState(context);
  }
}

id __105__CUINamedVectorGlyph__legacy_drawHierarchicalLayerNamed_inContext_scaleFactor_targetSize_colorResolver___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 "name")];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

uint64_t __105__CUINamedVectorGlyph__legacy_drawHierarchicalLayerNamed_inContext_scaleFactor_targetSize_colorResolver___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  SRGBBlack = _CUIColorGetSRGBBlack();
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = *(v6 + 16);

  return v9(v6, 0, SRGBBlack, a2, a3, -1, v8);
}

- (CGSVGNode)_getOutlineNodeForDocument:(CGSVGDocument *)document
{
  RootNode = CGSVGDocumentGetRootNode();
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v5 < 5.0)
  {
    return RootNode;
  }

  return CGSVGNodeFindChildWithStringIdentifier();
}

- (id)_createShapeGroupSubpaths
{
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v3 < 5.0)
  {
    return 0;
  }

  v5 = -[CUINamedVectorGlyph _getOutlineNodeForDocument:](self, "_getOutlineNodeForDocument:", [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")]);
  v6 = v5;
  if (self->_ultralightInterpolationSource && self->_blackInterpolationSource)
  {
    v7 = [objc_msgSend(objc_loadWeak(&self->_catalog) "_themeStore")];
    CUIRenditionKeyValueForAttribute(v7, 17);
    [(CUINamedVectorGlyph *)self pointSize];
    [(CUINamedVectorGlyph *)self glyphContinuousSize];
    [(CUINamedVectorGlyph *)self glyphContinuousWeight];
    kdebug_trace();
    v8 = [-[CUINamedVectorGlyph _ultralightRendition](self "_ultralightRendition")];
    v9 = [-[CUINamedVectorGlyph _blackRendition](self "_blackRendition")];
    v10 = [(CUINamedVectorGlyph *)self _getOutlineNodeForDocument:v8];
    v11 = [(CUINamedVectorGlyph *)self _getOutlineNodeForDocument:v9];
    v21 = *&CGAffineTransformIdentity.c;
    v23 = *&CGAffineTransformIdentity.a;
    v22 = v23;
    v24 = v21;
    v25 = *&CGAffineTransformIdentity.tx;
    v20 = v25;
    v12 = CUICreatePathFromSVGNode(v10, &v23);
    v23 = v22;
    v24 = v21;
    v25 = v20;
    v13 = CUICreatePathFromSVGNode(v6, &v23);
    v23 = v22;
    v24 = v21;
    v25 = v20;
    v14 = CUICreatePathFromSVGNode(v11, &v23);
    [(CUINamedVectorGlyph *)self glyphContinuousWeight];
    v16 = v15;
    [(CUINamedVectorGlyph *)self glyphContinuousSize];
    v18 = [(CUINamedVectorGlyph *)self _interpolatedPathWithWeight:v12 glyphSize:v13 fromUltralightSmall:v14 regularSmall:v16 blackSmall:v17];

    createSubpaths = [v18 createSubpaths];
    kdebug_trace();
    return createSubpaths;
  }

  return CUICreateSubpathsFromSVGNode(v5);
}

+ (id)_colorStyleNames
{
  if (_colorStyleNames_onceToken != -1)
  {
    +[CUINamedVectorGlyph _colorStyleNames];
  }

  return _colorStyleNames_colorStyleNames;
}

void *__39__CUINamedVectorGlyph__colorStyleNames__block_invoke()
{
  result = &unk_1F00F7E28;
  _colorStyleNames_colorStyleNames = result;
  return result;
}

- (id)_stylePrefixForRenderingMode:(int)mode
{
  if ((mode - 1) > 3)
  {
    return &stru_1F00D74D0;
  }

  else
  {
    return off_1E7249E90[mode - 1];
  }
}

- (id)_layerNamesForRenderingMode:(int)mode inRendition:(id)rendition
{
  v5 = *&mode;
  v7 = objc_alloc_init(NSMutableOrderedSet);
  [(CUINamedVectorGlyph *)self templateVersion];
  v9 = v8 >= 5.0;
  [rendition svgDocument];
  CGSVGDocumentGetRootNode();
  v11[6] = _NSConcreteStackBlock;
  v11[7] = 3221225472;
  v11[8] = __63__CUINamedVectorGlyph__layerNamesForRenderingMode_inRendition___block_invoke;
  v11[9] = &unk_1E7249E48;
  v14 = v9;
  v12 = [(CUINamedVectorGlyph *)self _stylePrefixForRenderingMode:v5];
  v13 = v7;
  CGSVGNodeEnumerate();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __63__CUINamedVectorGlyph__layerNamesForRenderingMode_inRendition___block_invoke_2;
  v11[3] = &unk_1E7249E70;
  v11[4] = v12;
  v11[5] = [v7 count];
  [v7 sortUsingComparator:v11];
  return v7;
}

void __63__CUINamedVectorGlyph__layerNamesForRenderingMode_inRendition___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    Type = CGSVGNodeGetType();
    if (Type == 2 || Type == 1 && (*(a1 + 48) & 1) != 0)
    {
      if (CGSVGNodeFindAttribute())
      {
        v5 = CGSVGAttributeCopyString();
        v6 = [v5 componentsSeparatedByString:@" "];
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v13;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v13 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v12 + 1) + 8 * i);
              if ([v11 hasPrefix:*(a1 + 32)])
              {
                [*(a1 + 40) addObject:v11];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          }

          while (v8);
        }
      }
    }
  }
}

uint64_t __63__CUINamedVectorGlyph__layerNamesForRenderingMode_inRendition___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40) <= 9uLL || ((v6 = [a2 rangeOfString:*(a1 + 32)], v8 = v7, v9 = objc_msgSend(a3, "rangeOfString:", *(a1 + 32)), v6 != 0x7FFFFFFFFFFFFFFFLL) ? (v11 = v9 == 0x7FFFFFFFFFFFFFFFLL) : (v11 = 1), v11))
  {

    return [a2 compare:a3];
  }

  else
  {
    v13 = v9;
    v14 = v10;
    v15 = [a2 stringByReplacingCharactersInRange:v6 withString:{v8, &stru_1F00D74D0}];
    v16 = [a3 stringByReplacingCharactersInRange:v13 withString:{v14, &stru_1F00D74D0}];
    v17 = [v15 integerValue];
    v18 = [v16 integerValue];
    if (v17 < v18)
    {
      return -1;
    }

    else
    {
      return v17 > v18;
    }
  }
}

- (id)_assumeConcatenatedPathForLayerNamed:(void *)named inRendition:
{
  result = 0;
  if (self && named)
  {
    [named svgDocument];
    CGSVGDocumentGetRootNode();
    CGSVGNodeGetChildAtIndex();
    ChildCount = CGSVGNodeGetChildCount();
    v7 = +[NSMutableArray array];
    if (ChildCount)
    {
      for (i = 0; i != ChildCount; ++i)
      {
        ChildAtIndex = CGSVGNodeGetChildAtIndex();
        if (CGSVGNodeGetType() == 2 && CGSVGNodeFindAttribute())
        {
          v10 = CGSVGAttributeCopyString();
          if ([objc_msgSend(v10 componentsSeparatedByString:{@" ", "containsObject:", a2}])
          {
            v11 = *&CGAffineTransformIdentity.c;
            v13[0] = *&CGAffineTransformIdentity.a;
            v13[1] = v11;
            v13[2] = *&CGAffineTransformIdentity.tx;
            v12 = CUICreatePathFromSVGNode(ChildAtIndex, v13);
            [v7 addObject:v12];
          }
        }
      }
    }

    return [CUIVectorGlyphPath createConcatenatingPaths:v7];
  }

  return result;
}

- (id)pathForLayerNamed:(id)named
{
  if ((*(self + 112) & 4) != 0)
  {
    if (self->_ultralightInterpolationSource && self->_blackInterpolationSource)
    {
      v6 = [objc_msgSend(objc_loadWeak(&self->_catalog) "_themeStore")];
      CUIRenditionKeyValueForAttribute(v6, 17);
      [(CUINamedVectorGlyph *)self pointSize];
      [(CUINamedVectorGlyph *)self glyphContinuousSize];
      [(CUINamedVectorGlyph *)self glyphContinuousWeight];
      kdebug_trace();
      if ([named length])
      {
        _ultralightRendition = [(CUINamedVectorGlyph *)self _ultralightRendition];
        if ((*(self + 112) & 4) != 0)
        {
          v8 = [(CUINamedVectorGlyph *)self _assumeConcatenatedPathForLayerNamed:named inRendition:_ultralightRendition];
        }

        else
        {
          v8 = 0;
        }

        _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];
        if ((*(self + 112) & 4) != 0)
        {
          v28 = [(CUINamedVectorGlyph *)self _assumeConcatenatedPathForLayerNamed:named inRendition:_regularRendition];
        }

        else
        {
          v28 = 0;
        }

        _blackRendition = [(CUINamedVectorGlyph *)self _blackRendition];
        if ((*(self + 112) & 4) != 0)
        {
          v30 = [(CUINamedVectorGlyph *)self _assumeConcatenatedPathForLayerNamed:named inRendition:_blackRendition];
        }

        else
        {
          v30 = 0;
        }

        [(CUINamedVectorGlyph *)self glyphContinuousWeight];
        v32 = v31;
        [(CUINamedVectorGlyph *)self glyphContinuousSize];
        v24 = [(CUINamedVectorGlyph *)self _interpolatedPathWithWeight:v8 glyphSize:v28 fromUltralightSmall:v30 regularSmall:v32 blackSmall:v33];
LABEL_28:
        kdebug_trace();
        return v24;
      }

      v11 = 1;
LABEL_15:
      v12 = -[CUINamedVectorGlyph _getOutlineNodeForDocument:](self, "_getOutlineNodeForDocument:", [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")]);
      v13 = *&CGAffineTransformIdentity.c;
      v36 = *&CGAffineTransformIdentity.a;
      v37 = *&CGAffineTransformIdentity.a;
      v34 = *&CGAffineTransformIdentity.tx;
      v35 = v13;
      v38 = v13;
      v39 = v34;
      v14 = CUICreatePathFromSVGNode(v12, &v37);
      v5 = v14;
      if (!v11)
      {
        if (v14)
        {
          v26 = v14;
        }

        return v5;
      }

      v15 = [-[CUINamedVectorGlyph _ultralightRendition](self "_ultralightRendition")];
      v16 = [-[CUINamedVectorGlyph _blackRendition](self "_blackRendition")];
      v17 = [(CUINamedVectorGlyph *)self _getOutlineNodeForDocument:v15];
      v18 = [(CUINamedVectorGlyph *)self _getOutlineNodeForDocument:v16];
      v37 = v36;
      v38 = v35;
      v39 = v34;
      v19 = CUICreatePathFromSVGNode(v17, &v37);
      v37 = v36;
      v38 = v35;
      v39 = v34;
      v20 = CUICreatePathFromSVGNode(v18, &v37);
      [(CUINamedVectorGlyph *)self glyphContinuousWeight];
      v22 = v21;
      [(CUINamedVectorGlyph *)self glyphContinuousSize];
      v24 = [(CUINamedVectorGlyph *)self _interpolatedPathWithWeight:v19 glyphSize:v5 fromUltralightSmall:v20 regularSmall:v22 blackSmall:v23];

      if (v5)
      {
        v25 = v5;
      }

      goto LABEL_28;
    }
  }

  else
  {
    [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
    CGSVGDocumentGetRootNode();
    if ((CUISVGNodeCanBeRepresentedAsPath() & 1) == 0)
    {
      return 0;
    }
  }

  if (![named length])
  {
    v11 = 0;
    goto LABEL_15;
  }

  _regularRendition2 = [(CUINamedVectorGlyph *)self _regularRendition];

  return [(CUINamedVectorGlyph *)self _assumeConcatenatedPathForLayerNamed:named inRendition:_regularRendition2];
}

- (CGSVGAttributeMap)styleForLayerName:(id)name
{
  if (!name)
  {
    return 0;
  }

  [-[CUINamedVectorGlyph _regularRendition](self "_regularRendition")];
  [@"." stringByAppendingString:name];

  return CGSVGDocumentGetNamedStyle();
}

- (double)strokeWidthForLayerNamed:(id)named inRendition:(id)rendition
{
  if ([(CUINamedVectorGlyph *)self attributesForLayerNamed:named inRendition:rendition]&& CGSVGAttributeMapGetAttribute())
  {
    CGSVGAttributeGetFloat();
  }

  return 0.0;
}

- (double)strokeWidthForLayerNamed:(id)named
{
  [(CUINamedVectorGlyph *)self templateVersion];
  if (v5 < 6.0)
  {
    return 0.0;
  }

  if ((*(self + 112) & 4) != 0 && self->_ultralightInterpolationSource && self->_blackInterpolationSource)
  {
    [(CUINamedVectorGlyph *)self strokeWidthForLayerNamed:named inRendition:[(CUINamedVectorGlyph *)self _ultralightRendition]];
    v8 = v7;
    [(CUINamedVectorGlyph *)self strokeWidthForLayerNamed:named inRendition:[(CUINamedVectorGlyph *)self _regularRendition]];
    v10 = v9;
    [(CUINamedVectorGlyph *)self strokeWidthForLayerNamed:named inRendition:[(CUINamedVectorGlyph *)self _blackRendition]];
    v12 = v11;
    [(CUINamedVectorGlyph *)self glyphContinuousWeight];
    v14 = v13;
    [(CUINamedVectorGlyph *)self glyphContinuousSize];

    [(CUINamedVectorGlyph *)self _interpolatedStrokeWidthWithWeight:v14 glyphSize:v15 fromUltralight:v8 regular:v10 black:v12];
  }

  else
  {
    _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];

    [(CUINamedVectorGlyph *)self strokeWidthForLayerNamed:named inRendition:_regularRendition];
  }

  return result;
}

- (CGSVGAttributeMap)attributesForLayerNamed:(id)named inRendition:(id)rendition
{
  [rendition svgDocument];
  if (named)
  {
    [(CUINamedVectorGlyph *)self templateVersion];
    v7 = v6;
    CGSVGDocumentGetRootNode();
    if (v7 >= 5.0 && CGSVGNodeFindChildWithStringIdentifier())
    {
      ChildCount = CGSVGNodeGetChildCount();
      if (ChildCount)
      {
        v9 = ChildCount;
        for (i = 0; i != v9; ++i)
        {
          CGSVGNodeGetChildAtIndex();
          if (CGSVGNodeFindAttribute())
          {
            v11 = CGSVGAttributeCopyString();
            if ([v11 containsString:named])
            {
              AttributeMap = CGSVGNodeGetAttributeMap();

              if (AttributeMap)
              {
                return AttributeMap;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    else
    {
      CGSVGNodeGetChildAtIndex();
      v13 = CGSVGNodeGetChildCount();
      if (v13)
      {
        v14 = v13;
        for (j = 0; j != v14; ++j)
        {
          CGSVGNodeGetChildAtIndex();
          if (CGSVGNodeFindAttribute())
          {
            v16 = CGSVGAttributeCopyString();
            if ([v16 containsString:named])
            {
              AttributeMap = CGSVGNodeGetAttributeMap();

              if (AttributeMap)
              {
                return AttributeMap;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    return 0;
  }

  else
  {
    CGSVGDocumentGetRootNode();
    CGSVGNodeGetChildAtIndex();

    return CGSVGNodeGetAttributeMap();
  }
}

- (CGSVGAttributeMap)attributesForLayerNamed:(id)named
{
  _regularRendition = [(CUINamedVectorGlyph *)self _regularRendition];

  return [(CUINamedVectorGlyph *)self attributesForLayerNamed:named inRendition:_regularRendition];
}

+ (CGColor)_derivedGradientColorFromColor:(CGColor *)color reverse:(BOOL *)reverse
{
  GenericLab = _CUIColorSpaceGetGenericLab();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(GenericLab, kCGRenderingIntentDefault, color, 0);
  v38 = *CGColorGetComponents(CopyByMatchingToColorSpace) / 100.0;
  CGColorRelease(CopyByMatchingToColorSpace);
  *reverse = 0;
  v8 = 0.2;
  v9 = 0.2;
  if (v38 > 0.25)
  {
    v9 = 0.25;
    if (v38 > 0.7)
    {
      if (v38 <= 0.82)
      {
        v9 = 0.34;
      }

      else
      {
        *reverse = 1;
        v9 = -0.11;
      }
    }
  }

  v37 = v9;
  v10 = CGColorGetComponents(color);
  v11 = *v10;
  v12 = v10[2];
  v41 = *(v10 + 3);
  v13 = fmin(v11.f64[0], fmin(v11.f64[1], v12));
  v14 = fmax(v11.f64[0], fmax(v11.f64[1], v12));
  v15 = 0.2;
  if (vabdd_f64(v13, v38) > 2.22044605e-16)
  {
    v16 = v13 - v38;
    v17 = (v13 - v38) * 0.2;
    v18 = 1.0 - v13;
    v19 = -v13;
    if (v17 > 0.0)
    {
      v19 = v18;
    }

    v15 = fmax(fmin(v19 / v16, 0.2), 0.0);
  }

  if (vabdd_f64(v14, v38) > 2.22044605e-16)
  {
    v20 = v14 - v38;
    v21 = (v14 - v38) * 0.2;
    v22 = 1.0 - v14;
    v23 = -v14;
    if (v21 > 0.0)
    {
      v23 = v22;
    }

    v8 = fmax(fmin(v23 / v20, 0.2), 0.0);
  }

  v24 = fmin(v15, v8);
  v25 = v12 + (v12 - v38) * v24;
  v26 = vmlaq_n_f64(v11, vsubq_f64(v11, vdupq_lane_s64(*&v38, 0)), v24);
  __asm { FMOV            V2.2D, #1.0 }

  v32 = vdup_n_s32(v37 < 0.0);
  v33.i64[0] = v32.u32[0];
  v33.i64[1] = v32.u32[1];
  *components = vmlaq_n_f64(v26, vbslq_s8(vcltzq_s64(vshlq_n_s64(v33, 0x3FuLL)), v26, vsubq_f64(_Q2, v26)), v37);
  v34 = 1.0 - v25;
  if (_NF)
  {
    v34 = v25;
  }

  v40 = v25 + v37 * v34;
  ExtendedRangeSRGB = _CUIColorSpaceGetExtendedRangeSRGB();
  return CGColorCreate(ExtendedRangeSRGB, components);
}

+ (CGGradient)_createAxialGradientWithColors:(id)colors useSCurve:(BOOL)curve height:(double)height
{
  curveCopy = curve;
  v9 = [colors count];
  ExtendedRangeSRGB = _CUIColorSpaceGetExtendedRangeSRGB();
  if (v9 == 2)
  {
    firstObject = [colors firstObject];
    lastObject = [colors lastObject];
    GrayGamma2_2 = _CUIColorSpaceGetGrayGamma2_2();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(GrayGamma2_2, kCGRenderingIntentRelativeColorimetric, firstObject, 0);
    v17 = *CGColorGetComponents(CopyByMatchingToColorSpace);
    CGColorRelease(CopyByMatchingToColorSpace);
    v18 = _CUIColorSpaceGetGrayGamma2_2();
    v19 = CGColorCreateCopyByMatchingToColorSpace(v18, kCGRenderingIntentRelativeColorimetric, lastObject, 0);
    v20 = *CGColorGetComponents(v19);
    CGColorRelease(v19);
    if (v17 <= v20)
    {
      v21 = lastObject;
    }

    else
    {
      v21 = firstObject;
    }

    if (v17 <= v20)
    {
      v22 = firstObject;
    }

    else
    {
      v22 = lastObject;
    }

    if (!curveCopy)
    {
      v33 = 0;
      *locations = xmmword_18E020B68;
      v30[0] = v22;
      v30[1] = v21;
      return CGGradientCreateWithColors(0, [NSArray arrayWithObjects:v30 count:2], locations);
    }

    return [self _createSCurveGradientWithStartColor:v22 endColor:v21 height:height];
  }

  else
  {
    if (v9 == 1)
    {
      v11 = ExtendedRangeSRGB;
      firstObject2 = [colors firstObject];
      CGColorGetColorSpace(firstObject2);
      if (CGColorSpaceEqualToColorSpace())
      {
        CGColorRetain(firstObject2);
      }

      else
      {
        firstObject2 = CGColorCreateCopyByMatchingToColorSpace(v11, kCGRenderingIntentRelativeColorimetric, firstObject2, 0);
      }

      v29 = 0;
      v24 = [CUINamedVectorGlyph _derivedGradientColorFromColor:firstObject2 reverse:&v29];
      if (v29)
      {
        v25 = firstObject2;
      }

      else
      {
        v25 = v24;
      }

      if (v29)
      {
        firstObject2 = v24;
      }

      if (curveCopy)
      {
        v26 = [self _createSCurveGradientWithStartColor:firstObject2 endColor:v25 height:height];
      }

      else
      {
        v33 = 0x3FF0000000000000;
        *locations = xmmword_18E020B50;
        v27 = _CUIColorSpaceGetExtendedRangeSRGB();
        v31[0] = firstObject2;
        v31[1] = firstObject2;
        v31[2] = v25;
        v26 = CGGradientCreateWithColors(v27, [NSArray arrayWithObjects:v31 count:3], locations);
      }

      v28 = v26;
      CGColorRelease(firstObject2);
      CGColorRelease(v25);
      return v28;
    }

    return CGGradientCreateWithColors(0, colors, 0);
  }
}

+ (CGGradient)_createSCurveGradientWithStartColor:(CGColor *)color endColor:(CGColor *)endColor height:(double)height
{
  SRGB = _CUIColorSpaceGetSRGB();
  v8 = 0;
  if (color && endColor)
  {
    v9 = [CAMediaTimingFunction alloc];
    LODWORD(v10) = 1046631210;
    LODWORD(v11) = 1000812293;
    LODWORD(v12) = 1062073097;
    LODWORD(v13) = 1.0;
    v14 = [v9 initWithControlPoints:v10 :v11 :v12 :v13];
    v15 = (height * 5.0);
    v16 = CGColorGetComponents(color);
    v17 = CGColorGetComponents(endColor);
    v18 = objc_opt_new();
    v33 = &v33;
    v20 = (&v33 - ((8 * v15 + 15) & 0xFFFFFFFF0));
    if (v15 >= 1)
    {
      for (i = 0; v15 != i; ++i)
      {
        v22 = i / v15;
        *&v19 = v22;
        [v14 _solveForInput:{v19, v33}];
        if (v23 >= 1.0)
        {
          v30 = v18;
          colorCopy = endColor;
        }

        else
        {
          if (v23 > 0.0)
          {
            v24 = v23;
            v25 = (1.0 - v23);
            v26 = vmlaq_n_f64(vmulq_n_f64(*v17, v24), *v16, v25);
            v27 = vmlaq_n_f64(vmulq_n_f64(v17[1], v24), v16[1], v25);
            *components = v26;
            v36 = v27;
            v28 = CGColorCreate(SRGB, components);
            if (v28)
            {
              v29 = v28;
              [v18 addObject:v28];
              v20[i] = v22;
              CGColorRelease(v29);
            }

            continue;
          }

          v30 = v18;
          colorCopy = color;
        }

        [v30 addObject:colorCopy];
        v19 = v22;
        v20[i] = v22;
      }
    }

    v8 = CGGradientCreateWithColors(0, v18, v20);
  }

  return v8;
}

- (id)edgeDefinitionTextureWithBufferAllocator:(id)allocator
{
  CUICurrentPlatform();
  [(CUINamedVectorGlyph *)self image];
  v4 = CUICreateSDFEdgeTextureFromImage();

  return v4;
}

- (id)gradientTextureWithBufferAllocator:(id)allocator
{
  CUICurrentPlatform();
  [(CUINamedVectorGlyph *)self image];
  v4 = CUICreateSDFGradientTextureFromImage();

  return v4;
}

- (id)_interpolatedPathWithWeight:(double)weight glyphSize:(double)size fromUltralightSmall:(id)small regularSmall:(id)regularSmall blackSmall:(id)blackSmall
{
  v7 = 0;
  if (small && regularSmall && blackSmall)
  {
    v14 = [CUIVectorGlyphMutator alloc];
    [(CUINamedVectorGlyph *)self referencePointSize];
    v15 = [(CUIVectorGlyphMutator *)v14 initWithPointSize:regularSmall regular:small ultralight:blackSmall black:?];
    [CUIVectorGlyphMutator transformForGlyphContinuousSize:size];
    [CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:weight glyphContinuousSize:size];
    v7 = [CUIVectorGlyphMutator pathForScalars:v15 andTransform:"pathForScalars:andTransform:"];
  }

  return v7;
}

- (double)_interpolatedBaselineOffsetWithWeight:(double)weight glyphSize:(double)size fromUltralight:(double)ultralight regular:(double)regular black:(double)black
{
  [CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:weight glyphContinuousSize:?];
  v13 = v12;
  v15 = v14;
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:size];
  v17 = v16;
  v19 = v18;
  [(CUINamedVectorGlyph *)self referencePointSize];
  return (regular + (ultralight - regular) * v13 + (black - regular) * v15) * v17 - v19 * v20;
}

- (CGSize)_interpolatedCanvasSizeWithWeight:(double)weight glyphSize:(double)size fromUltralight:(CGSize)ultralight regular:(CGSize)regular black:(CGSize)black
{
  height = black.height;
  width = black.width;
  v8 = regular.height;
  v9 = regular.width;
  v10 = ultralight.height;
  v11 = ultralight.width;
  [CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:weight glyphContinuousSize:?];
  v14 = v13;
  v16 = v15;
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:size];
  v18 = (v8 + (v10 - v8) * v14 + (height - v8) * v16) * v17;
  v19 = (v9 + (v11 - v9) * v14 + (width - v9) * v16) * v17;
  result.height = v18;
  result.width = v19;
  return result;
}

- (double)_interpolatedAlignmentRectInsetsWithWeight:(double)weight glyphSize:(double)size fromUltralight:(double)ultralight regular:(double)regular black:(double)black
{
  [CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:self glyphContinuousSize:a2];
  v18 = v17;
  v20 = v19;
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:a2];
  return (a9 + (weight - a9) * v18 + (a13 - a9) * v20) * v21;
}

- (double)_interpolatedStrokeWidthWithWeight:(double)weight glyphSize:(double)size fromUltralight:(double)ultralight regular:(double)regular black:(double)black
{
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:size];
  v13 = v12;
  [CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:weight glyphContinuousSize:size];
  return v13 * (regular + (ultralight - regular) * v14 + (black - regular) * v15);
}

- (CGPoint)_interpolatedAnchorWithWeight:(double)weight glyphSize:(double)size fromUltralight:(CGPoint)ultralight regular:(CGPoint)regular black:(CGPoint)black
{
  y = black.y;
  x = black.x;
  v8 = regular.y;
  v9 = regular.x;
  v10 = ultralight.y;
  v11 = ultralight.x;
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:size];
  v15 = v14;
  [CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:weight glyphContinuousSize:size];
  v18 = v9 + (x - v9) * v16 + (v11 - v9) * v17;
  v19 = v8 + (y - v8) * v16 + (v10 - v8) * v17;
  v20 = v15 * v18;
  v21 = v15 * v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (id)_createInterpolatedDrawAttachmentDataStoreWithWeight:(double)weight glyphSize:(double)size fromUltralight:(id)ultralight regular:(id)regular black:(id)black
{
  if (!ultralight || !regular || !black)
  {
    v12 = objc_alloc_init(CUIVectorGlyphDrawAttachmentDataStore);
  }

  v13 = +[CUIVectorGlyphMutator createFloatDeltasFrom:to:](CUIVectorGlyphMutator, "createFloatDeltasFrom:to:", [regular data], objc_msgSend(ultralight, "data"));
  v14 = +[CUIVectorGlyphMutator createFloatDeltasFrom:to:](CUIVectorGlyphMutator, "createFloatDeltasFrom:to:", [regular data], objc_msgSend(black, "data"));
  [CUIVectorGlyphMutator scalarsForGlyphContinuousWeight:weight glyphContinuousSize:size];
  v16 = v15;
  v18 = v17;
  v19 = +[CUIVectorGlyphMutator createInterpolatedFloatsFromFloats:ultralightDeltas:blackDeltas:withScalars:](CUIVectorGlyphMutator, "createInterpolatedFloatsFromFloats:ultralightDeltas:blackDeltas:withScalars:", [regular data], v13, v14, v15, v17);

  v20 = [objc_msgSend(regular "anchors")];
  v22 = v21;
  v23 = [objc_msgSend(ultralight "anchors")];
  v25 = [CUIVectorGlyphMutator deltaArrayFrom:v20 to:v22, v23, v24];
  v27 = v26;
  v28 = [objc_msgSend(regular "anchors")];
  v30 = v29;
  v31 = [objc_msgSend(black "anchors")];
  v33 = [CUIVectorGlyphMutator deltaArrayFrom:v28 to:v30, v31, v32];
  v35 = v34;
  v36 = [objc_msgSend(regular "anchors")];
  v38 = [CUIVectorGlyphMutator createInterpolatedPointsFromPoints:v36 ultralightDeltas:v37 blackDeltas:v25 withScalars:v27, v33, v35, v16, v18];
  v40 = v39;
  free(v25);
  free(v33);
  [CUIVectorGlyphMutator transformForGlyphContinuousSize:size];
  v44[0] = v41;
  v44[1] = v42;
  vDSP_vsmulD(v38, 1, v44, v38, 1, 2 * v40);
  return [[CUIVectorGlyphDrawAttachmentDataStore alloc] initAdoptingData:v19 anchors:[CUIVectorGlyphManagedPointArray createManagedPointArrayWrapping:v38, v40]];
}

- (id)newEncapsulatedGlyphWithConfiguration:(id)configuration
{
  v5 = configuration + OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing;
  swift_beginAccess();
  if (v5[40])
  {
    v6 = [(CUINamedVectorGlyph *)self resolveAutomaticWithConfig:configuration adjustX:*(v5 + 2) & 1 adjustY:(*(v5 + 2) >> 8) & 1 sizeAdjustment:*(v5 + 3)];
  }

  else
  {
    v6 = [(CUINamedVectorGlyph *)self resolveMetricCenterWithConfig:configuration offsetX:*(v5 + 2) offsetY:*(v5 + 3) scaleFactor:*(v5 + 4)];
  }

  return v6;
}

- (id)ensureBaseGlyph
{
  selfCopy = self;
  v3 = sub_18E000A4C();

  return v3;
}

- (id)resolveMetricCenterWithConfig:(id)config offsetX:(double)x offsetY:(double)y scaleFactor:(double)factor
{
  configCopy = config;
  selfCopy = self;
  v11 = sub_18E000B5C(configCopy, x, y);

  return v11;
}

- (id)resolveAutomaticWithConfig:(id)config adjustX:(BOOL)x adjustY:(BOOL)y sizeAdjustment:(int64_t)adjustment
{
  yCopy = y;
  xCopy = x;
  configCopy = config;
  selfCopy = self;
  sub_18E001344(configCopy, xCopy, yCopy, adjustment);
}

- (id)_performWithLockedRenditions:(id *)result
{
  if (result)
  {
    v3 = result;
    [result lock];
    _rendition = [v3 _rendition];
    v10 = _rendition;
    [_rendition lock];
    v5 = _rendition;
    _rendition2 = [v3[17] _rendition];
    v11 = _rendition2;
    [_rendition2 lock];
    v7 = _rendition2;
    _rendition3 = [v3[18] _rendition];
    v12 = _rendition3;
    [_rendition3 lock];
    v9 = _rendition3;
    v3[28] = &v10;
    (*(a2 + 16))(a2, _rendition, _rendition2, _rendition3);
    v3[28] = 0;
    [v10 unlock];

    [v11 unlock];
    [v12 unlock];

    return [v3 unlock];
  }

  return result;
}

- (CGImageRef)_rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(double)size renderingMode:(double)mode colorResolver:
{
  if (!self)
  {
    return 0;
  }

  if (factor == 0.0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__rasterizeImageUsingScaleFactor_forTargetSize_renderingMode_colorResolver_ file:self lineNumber:@"CUINamedVectorGlyph.m" description:2595, @"Invalid parameter not satisfying: %@", @"scale"];
  }

  if (size <= 0.0 || mode <= 0.0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__rasterizeImageUsingScaleFactor_forTargetSize_renderingMode_colorResolver_ file:self lineNumber:@"CUINamedVectorGlyph.m" description:2596, @"Invalid parameter not satisfying: %@", @"targetSizeInPoints.width>0 && targetSizeInPoints.height>0"];
  }

  name = [self name];
  _CUILog(3, "[CUINamedVectorGlyph (%@)]", v12, v13, v14, v15, v16, v17, name);
  [self referenceCanvasSize];
  [objc_msgSend(self "_regularRendition")];
  if ([objc_msgSend(self "renditionKey")])
  {
    CGSVGDocumentContainsWideGamutContent();
    OUTLINED_FUNCTION_40();
    if (v18)
    {
      v19 = 4097;
      v20 = 16;
      DisplayP3 = _CUIColorSpaceGetDisplayP3();
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_40();
  }

  v19 = 8193;
  v20 = 8;
  DisplayP3 = _CUIColorSpaceGetSRGB();
LABEL_11:
  v24 = CUICGBitmapContextCreate(v6, v5, v20, 0, DisplayP3, v19, v22, v23);
  if (!v24)
  {
    _CUILog(4, "CoreUI: %s couldn't create bitmapContext for (%fx%f) colorSpace:'%@' [svgsize:%fx%f scale:%f bpc:%zd bpp:%zd bitmapInfo:%d]", v25, v26, v27, v28, v29, v30, "[CUINamedVectorGlyph _rasterizeImageUsingScaleFactor:forTargetSize:renderingMode:colorResolver:]");
    return 0;
  }

  v31 = v24;
  switch(a2)
  {
    case 1:
      _CUIColorGetSRGBBlack();
      OUTLINED_FUNCTION_18();
      v40();
      v41 = OUTLINED_FUNCTION_28();
      [CUINamedVectorGlyph _drawInContext:v41 scaleFactor:? targetSize:? primaryColor:? tertiaryColor:?];
      break;
    case 2:
      v32 = OUTLINED_FUNCTION_10();
      [v33 _drawMulticolorLayersInContext:v32 scaleFactor:? targetSize:? colorResolver:?];
      break;
    case 3:
      v37 = OUTLINED_FUNCTION_10();
      [v38 _drawHierarchicalLayersInContext:v37 scaleFactor:? targetSize:? colorResolver:?];
      break;
    case 4:
      v35 = OUTLINED_FUNCTION_10();
      [v36 _drawPaletteLayersInContext:v35 scaleFactor:? targetSize:? colorResolver:?];
      break;
    default:
      break;
  }

  Image = CGBitmapContextCreateImage(v31);
  CFRelease(v31);
  return Image;
}

- (void)drawInContext:(CGContext *)context
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_39();
  v5[2] = __37__CUINamedVectorGlyph_drawInContext___block_invoke;
  v5[3] = &unk_1E7249A78;
  v5[4] = v3;
  v5[5] = v4;
  [(CUINamedVectorGlyph *)v3 _performWithLockedRenditions:v5];
}

void *__37__CUINamedVectorGlyph_drawInContext___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result[5];
    _CUIColorGetSRGBBlack();

    return [CUINamedVectorGlyph _drawInContext:v1 primaryColor:v2];
  }

  return result;
}

void __82__CUINamedVectorGlyph_rasterizeImageWithTintColor_usingScaleFactor_forTargetSize___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_29();
  [(CUINamedVectorGlyph *)v2 _rasterizeImageUsingScaleFactor:v1[6] forTargetSize:v1[7] renderingMode:v1[8] colorResolver:?];
  OUTLINED_FUNCTION_24();
  *(v4 + 24) = v3;
}

- (void)drawWithTintColor:(CGColor *)color inContext:(CGContext *)context
{
  OUTLINED_FUNCTION_0();
  v8 = 3221225472;
  v9 = __51__CUINamedVectorGlyph_drawWithTintColor_inContext___block_invoke;
  v10 = &unk_1E7249AE8;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  [(CUINamedVectorGlyph *)v4 _performWithLockedRenditions:v7];
}

void __49__CUINamedVectorGlyph__rawVisibleMonochromePath___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_15(a1);
  [-[CUINamedVectorGlyph monochromeLayerGroup](v2) _visibleCompoundShape:*(v1 + 48)];
  OUTLINED_FUNCTION_24();
  *(v4 + 24) = v3;
}

void __47__CUINamedVectorGlyph_numberOfMulticolorLayers__block_invoke(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_15(a1);
  if (v1)
  {
    v1 = [v1 _layerNamesForRenderingMode:2 inRendition:v2];
  }

  [v1 count];
  OUTLINED_FUNCTION_24();
  *(v4 + 24) = v3;
}

uint64_t __86__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withColorResolver___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_3();
  v5 = [(CUINamedVectorGlyph *)v2 _rasterizeImageUsingScaleFactor:v1 forTargetSize:v3 renderingMode:v4 colorResolver:?];
  return OUTLINED_FUNCTION_12(v5);
}

- (void)drawMulticolorLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, __78__CUINamedVectorGlyph_drawMulticolorLayerAtIndex_inContext_withColorResolver___block_invoke, &unk_1E7249BB0, v15, v16, v17, v18);
}

void __78__CUINamedVectorGlyph_drawMulticolorLayerAtIndex_inContext_withColorResolver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 < [objc_msgSend(-[CUINamedVectorGlyph multicolorLayerGroup](*(a1 + 32)) "sublayers")])
  {
    [*(a1 + 32) referenceCanvasSize];
    [*(a1 + 32) scale];
    [*(a1 + 32) _requestedPointSizeRatio];
    [objc_msgSend(-[CUINamedVectorGlyph multicolorLayerGroup](*(a1 + 32)) "sublayers")];
    OUTLINED_FUNCTION_37();
    [*(a1 + 32) variableMaxValue];
    OUTLINED_FUNCTION_41();

    [v3 drawInContext:? scaleFactor:? targetSize:? variableMinValue:? variableMaxValue:? colorResolver:?];
  }

  else
  {
    OUTLINED_FUNCTION_41();
  }
}

- (__CFString)colorNameForRenderingStyle:(__CFString *)result
{
  if (result)
  {
    v3 = [a2 rangeOfString:@":"];
    if (v4 == 1 && (v5 = v3 + 1, v3 + 1 < [a2 length] - 1))
    {

      return [a2 substringFromIndex:v5];
    }

    else
    {
      return &stru_1F00D74D0;
    }
  }

  return result;
}

id __38__CUINamedVectorGlyph_hierarchyLayers__block_invoke(uint64_t a1)
{
  v5 = [-[CUINamedVectorGlyph hierarchicalLayerGroup](*(a1 + 32)) sublayers];
  [*(a1 + 32) variableMinValue];
  v7 = v6;
  v8 = [*(a1 + 32) variableMaxValue];
  v10 = v9;
  result = OUTLINED_FUNCTION_16(v8, v11, v12, v13, v14, v15, v16, v17, 0, 0, 0, 0, 0, 0, 0, 0, v44, v46);
  if (result)
  {
    OUTLINED_FUNCTION_25();
    if (v10 == v3)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1;
    }

    do
    {
      v21 = 0;
      do
      {
        if (*v38 != v2)
        {
          objc_enumerationMutation(v5);
        }

        v22 = *(v37 + 8 * v21);
        v23 = [v22 hierarchyLevel];
        if (v20)
        {
          [v22 valueThreshold];
          if (v24 == v3)
          {
            goto LABEL_17;
          }

          v25 = v7 == v3;
          if (v24 >= v7)
          {
            v25 = 1;
          }

          v26 = v24 <= v10;
          if (v24 <= 0.0)
          {
            v26 = v24 < v10;
          }

          if (v10 == v3)
          {
            v26 = 1;
          }

          if (v25 && v26)
          {
LABEL_17:
            v27 = 0;
          }

          else
          {
            v27 = 2;
          }
        }

        else
        {
          v27 = v23;
        }

        v28 = [*(a1 + 40) addIndex:v27];
        v21 = v21 + 1;
      }

      while (v1 != v21);
      result = OUTLINED_FUNCTION_16(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v45, v47);
      v1 = result;
    }

    while (result);
  }

  return result;
}

id __38__CUINamedVectorGlyph_hierarchyLevels__block_invoke(uint64_t a1)
{
  v5 = [-[CUINamedVectorGlyph hierarchicalLayerGroup](*(a1 + 32)) sublayers];
  [*(a1 + 32) variableMinValue];
  v7 = v6;
  v8 = [*(a1 + 32) variableMaxValue];
  v10 = v9;
  result = OUTLINED_FUNCTION_16(v8, v11, v12, v13, v14, v15, v16, v17, 0, 0, 0, 0, 0, 0, 0, 0, v44, v46);
  if (result)
  {
    OUTLINED_FUNCTION_25();
    if (v10 == v3)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1;
    }

    do
    {
      v21 = 0;
      do
      {
        if (*v38 != v2)
        {
          objc_enumerationMutation(v5);
        }

        v22 = *(v37 + 8 * v21);
        v23 = [v22 hierarchyLevel];
        if (v20)
        {
          [v22 valueThreshold];
          if (v24 == v3)
          {
            goto LABEL_17;
          }

          v25 = v7 == v3;
          if (v24 >= v7)
          {
            v25 = 1;
          }

          v26 = v24 <= v10;
          if (v24 <= 0.0)
          {
            v26 = v24 < v10;
          }

          if (v10 == v3)
          {
            v26 = 1;
          }

          if (v25 && v26)
          {
LABEL_17:
            v27 = 0;
          }

          else
          {
            v27 = 2;
          }
        }

        else
        {
          v27 = v23;
        }

        v28 = [*(a1 + 40) addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v27)}];
        v21 = v21 + 1;
      }

      while (v1 != v21);
      result = OUTLINED_FUNCTION_16(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v45, v47);
      v1 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __95__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withHierarchyColorResolver___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_3();
  v5 = [(CUINamedVectorGlyph *)v2 _rasterizeImageUsingScaleFactor:v1 forTargetSize:v3 renderingMode:v4 colorResolver:?];
  return OUTLINED_FUNCTION_12(v5);
}

- (void)drawHierarchyLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, __77__CUINamedVectorGlyph_drawHierarchyLayerAtIndex_inContext_withColorResolver___block_invoke, &unk_1E7249BB0, v15, v16, v17, v18);
}

void __77__CUINamedVectorGlyph_drawHierarchyLayerAtIndex_inContext_withColorResolver___block_invoke(uint64_t a1)
{
  [OUTLINED_FUNCTION_15(a1) referenceCanvasSize];
  [*(v1 + 32) scale];
  [*(v1 + 32) _requestedPointSizeRatio];
  v2 = *(v1 + 48);
  if (v2 < [objc_msgSend(-[CUINamedVectorGlyph hierarchicalLayerGroup](*(v1 + 32)) "sublayers")])
  {
    [objc_msgSend(-[CUINamedVectorGlyph hierarchicalLayerGroup](*(v1 + 32)) "sublayers")];
    OUTLINED_FUNCTION_37();
    [*(v1 + 32) variableMaxValue];
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_41();

    [v3 drawInContext:? scaleFactor:? targetSize:? variableMinValue:? variableMaxValue:? hierarchicalColorResolver:?];
  }

  else if (*(v1 + 48))
  {
    OUTLINED_FUNCTION_41();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_34();
    v6(v5);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_41();

    [CUINamedVectorGlyph _drawInContext:v7 scaleFactor:? targetSize:? primaryColor:? tertiaryColor:?];
  }
}

- (void)_drawInContext:(void *)result scaleFactor:targetSize:primaryColor:tertiaryColor:
{
  if (result)
  {
    v1 = result;
    [result variableMinValue];
    [v1 variableMaxValue];
    if (([-[CUINamedVectorGlyph monochromeLayerGroup](v1) supportsVariableDraw] & 1) == 0)
    {
      [v1 resolvedVariableMode];
    }

    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    sublayers = [-[CUINamedVectorGlyph monochromeLayerGroup](v1) sublayers];
    result = [sublayers countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v8;
      do
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(sublayers);
          }

          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_42();
          [v6 drawInContext:? scaleFactor:? targetSize:? variableMinValue:? variableMaxValue:? onFillColor:? offFillColor:?];
          ++v5;
        }

        while (v3 != v5);
        result = [sublayers countByEnumeratingWithState:&v7 objects:v11 count:16];
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

void __76__CUINamedVectorGlyph_isKnockoutEnabledForHierarchicalLayerAtIndex_opacity___block_invoke(uint64_t a1)
{
  [OUTLINED_FUNCTION_15(a1) variableMinValue];
  v3 = v2;
  [*(v1 + 32) variableMaxValue];
  v5 = v4;
  v6 = [objc_msgSend(-[CUINamedVectorGlyph hierarchicalLayerGroup](*(v1 + 32)) "sublayers")];
  v7 = [v6 isEraserLayer];
  [v6 opacity];
  v9 = v8;
  if (v7)
  {
    v10 = v8 < 2.22044605e-16;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && (v3 != INFINITY || v5 != INFINITY))
  {
    [v6 valueThreshold];
    if (v12 != INFINITY)
    {
      v13 = v3 == INFINITY;
      if (v12 >= v3)
      {
        v13 = 1;
      }

      v14 = v12 <= v5;
      if (v12 <= 0.0)
      {
        v14 = v12 < v5;
      }

      if (v5 == INFINITY)
      {
        v14 = 1;
      }

      if (v13 && v14)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 0.7;
      }
    }
  }

  if (v7)
  {
    OUTLINED_FUNCTION_24();
    *(v15 + 24) = 1;
  }

  v16 = *(v1 + 56);
  if (v16)
  {
    *v16 = v9;
  }

  OUTLINED_FUNCTION_41();
}

uint64_t __93__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColorResolver___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_3();
  v5 = [(CUINamedVectorGlyph *)v2 _rasterizeImageUsingScaleFactor:v1 forTargetSize:v3 renderingMode:v4 colorResolver:?];
  return OUTLINED_FUNCTION_12(v5);
}

- (void)drawPaletteLayerAtIndex:(unint64_t)index inContext:(CGContext *)context withColorResolver:(id)resolver
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, __75__CUINamedVectorGlyph_drawPaletteLayerAtIndex_inContext_withColorResolver___block_invoke, &unk_1E7249BB0, v15, v16, v17, v18);
}

void __75__CUINamedVectorGlyph_drawPaletteLayerAtIndex_inContext_withColorResolver___block_invoke(uint64_t a1)
{
  [OUTLINED_FUNCTION_15(a1) referenceCanvasSize];
  [*(v1 + 32) scale];
  [*(v1 + 32) _requestedPointSizeRatio];
  v2 = *(v1 + 48);
  if (v2 < [objc_msgSend(-[CUINamedVectorGlyph hierarchicalLayerGroup](*(v1 + 32)) "sublayers")])
  {
    [objc_msgSend(-[CUINamedVectorGlyph hierarchicalLayerGroup](*(v1 + 32)) "sublayers")];
    OUTLINED_FUNCTION_37();
    [*(v1 + 32) variableMaxValue];
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_41();

    [v3 drawInContext:? scaleFactor:? targetSize:? variableMinValue:? variableMaxValue:? paletteColorResolver:?];
  }

  else if (*(v1 + 48))
  {
    OUTLINED_FUNCTION_41();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_34();
    v6(v5);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_41();

    [CUINamedVectorGlyph _drawInContext:v7 scaleFactor:? targetSize:? primaryColor:? tertiaryColor:?];
  }
}

uint64_t __46__CUINamedVectorGlyph_imageWithPaletteColors___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_3();
  v5 = [(CUINamedVectorGlyph *)v2 _rasterizeImageUsingScaleFactor:v1 forTargetSize:v3 renderingMode:v4 colorResolver:?];
  return OUTLINED_FUNCTION_12(v5);
}

uint64_t __86__CUINamedVectorGlyph_rasterizeImageUsingScaleFactor_forTargetSize_withPaletteColors___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_15(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_3();
  v5 = [(CUINamedVectorGlyph *)v2 _rasterizeImageUsingScaleFactor:v1 forTargetSize:v3 renderingMode:v4 colorResolver:?];
  return OUTLINED_FUNCTION_12(v5);
}

void *__55__CUINamedVectorGlyph_drawInContext_withPaletteColors___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) firstObject];

  return [CUINamedVectorGlyph _drawInContext:v1 scaleFactor:? targetSize:? primaryColor:? tertiaryColor:?];
}

- (uint64_t)_prepareShapeNode:(uint64_t)node atNodeIndex:(void *)index forRenderingStyle:(uint64_t)style withColorResolver:
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  result = CGSVGNodeGetType();
  if (result != 2)
  {
    return result;
  }

  AttributeMap = CGSVGNodeGetAttributeMap();
  v10 = [(CUINamedVectorGlyph *)v8 _fillColorOfStyle:?];
  v11 = [index rangeOfString:@":"];
  if (v12 == 1 && (v13 = v11 + 1, v11 + 1 < [index length] - 1))
  {
    v14 = [index substringFromIndex:v13];
  }

  else
  {
    v14 = &stru_1F00D74D0;
  }

  v15 = [objc_msgSend(objc_opt_class() "_layerHierarchyStyleNames")];
  if ([(__CFString *)v14 isEqualToString:@"white"])
  {
    SRGBWhite = _CUIColorGetSRGBWhite();
LABEL_12:
    v10 = SRGBWhite;
    goto LABEL_13;
  }

  if ([(__CFString *)v14 isEqualToString:@"black"])
  {
    SRGBWhite = _CUIColorGetSRGBBlack();
    goto LABEL_12;
  }

LABEL_13:
  v17 = (*(style + 16))(style, v14, v10, node, v15, -1, 0);

  return [(CUINamedVectorGlyph *)v8 _setFillColor:v17 ofStyle:AttributeMap];
}

- (id)containsNamedColorStyles
{
  v1 = OUTLINED_FUNCTION_1(self);
  v2 = OUTLINED_FUNCTION_30(v1, COERCE_DOUBLE(3221225472));
  v2[2] = __47__CUINamedVectorGlyph_containsNamedColorStyles__block_invoke;
  v2[3] = &unk_1E7249BD8;
  v2[4] = v3;
  return [(CUINamedVectorGlyph *)v3 _performWithLockedRenditions:v4];
}

id __47__CUINamedVectorGlyph_containsNamedColorStyle___block_invoke_cold_1(void *a1, void *a2)
{
  [objc_msgSend(objc_msgSend(-[CUINamedVectorGlyph multicolorLayerGroup](a1) "sublayers")];
  result = [OUTLINED_FUNCTION_28() orderedSetWithArray:?];
  *a2 = result;
  return result;
}

id __50__CUINamedVectorGlyph_hierarchicalLayerThresholds__block_invoke_cold_1(void *a1, void ***a2, uint64_t a3)
{
  v5 = [-[CUINamedVectorGlyph hierarchicalLayerGroup](a1) sublayers];
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = __50__CUINamedVectorGlyph_hierarchicalLayerThresholds__block_invoke_2;
  a2[3] = &unk_1E7249A08;
  a2[4] = *(a3 + 40);
  return [v5 enumerateObjectsUsingBlock:a2];
}

- (id)imageWithHierarchicalPrimaryColor:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  OUTLINED_FUNCTION_33();
  return [v0 handleFailureInMethod:@"primaryColor" object:? file:? lineNumber:? description:?];
}

- (id)rasterizeImageUsingScaleFactor:forTargetSize:hierarchicalPrimaryColor:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  OUTLINED_FUNCTION_33();
  return [v0 handleFailureInMethod:@"primaryColor" object:? file:? lineNumber:? description:?];
}

id __36__CUINamedVectorGlyph_paletteLevels__block_invoke_cold_1(void *a1, void *a2)
{
  [objc_msgSend(objc_msgSend(-[CUINamedVectorGlyph hierarchicalLayerGroup](a1) "sublayers")];
  result = [OUTLINED_FUNCTION_28() orderedSetWithArray:?];
  *a2 = result;
  return result;
}

- (void)drawInContext:(uint64_t)a3 withPaletteColors:(uint64_t)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 referenceCanvasSize];
  v9 = v8;
  v11 = v10;
  [a1 scale];
  v13 = v12;
  [a1 _requestedPointSizeRatio];
  *(a2 + 8) = 3221225472;
  *a2 = _NSConcreteStackBlock;
  *(a2 + 16) = __55__CUINamedVectorGlyph_drawInContext_withPaletteColors___block_invoke;
  *(a2 + 24) = &unk_1E7249D10;
  *(a2 + 40) = a4;
  *(a2 + 48) = a3;
  *(a2 + 56) = v13 * v14;
  *(a2 + 64) = v9;
  *(a2 + 72) = v11;
  *(a2 + 32) = a1;
  [(CUINamedVectorGlyph *)a1 _performWithLockedRenditions:a2];
  OUTLINED_FUNCTION_41();
}

- (id)drawInContext:withPaletteColors:.cold.2()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  OUTLINED_FUNCTION_33();
  return [v0 handleFailureInMethod:@"colors" object:? file:? lineNumber:? description:?];
}

- (id)graphicVariantWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  OUTLINED_FUNCTION_33();
  return [v0 handleFailureInMethod:@"[options _areValid]" object:? file:? lineNumber:? description:?];
}

@end