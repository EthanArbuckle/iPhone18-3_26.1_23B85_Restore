@interface CUICatalog
+ (id)bestMatchUsingImages:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(unint64_t)a7 layoutDirection:(unint64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10;
+ (id)bestMatchUsingObjects:(id)a3 getAttributeValueUsing:(id)a4 scaleFactor:(double)a5 deviceIdiom:(int64_t)a6 deviceSubtype:(unint64_t)a7 displayGamut:(int64_t)a8 deploymentTarget:(int64_t)a9 layoutDirection:(int64_t)a10 sizeClassHorizontal:(int64_t)a11 sizeClassVertical:(int64_t)a12 memoryClass:(int64_t)a13 graphicsFeatureSetClass:(int64_t)a14 graphicsFallBackOrder:(id)a15 deviceSubtypeFallBackOrder:(id)a16 platform:(int64_t)a17;
+ (id)defaultUICatalogForBundle:(id)a3;
- ($01BB1521EC52D44A8E7628F5261DCEC8)styledInsetsForStylePresetName:(id)a3 styleConfiguration:(id)a4 foregroundColor:(CGColor *)a5 scale:(double)a6;
- (BOOL)_doStyledQuartzDrawingInContext:(CGContext *)a3 inBounds:(CGRect)a4 stylePresetName:(id)a5 styleConfiguration:(id)a6 drawingHandler:(id)a7;
- (BOOL)_effectStyle:(unint64_t *)a3 state:(int64_t *)a4 presentationState:(int64_t *)a5 value:(int64_t *)a6 resolution:(unint64_t *)a7 dimension1:(unint64_t *)a8 appearance:(int64_t *)a9 fromStyleConfiguration:(id)a10;
- (BOOL)canGetShapeEffectRenditionWithKey:(id)a3;
- (BOOL)containsLookupForName:(id)a3;
- (BOOL)copyVectorGlyphsWithNames:(id)a3 toFile:(id)a4;
- (BOOL)drawGlyphs:(const unsigned __int16 *)a3 atPositions:(const CGPoint *)a4 inContext:(CGContext *)a5 withFont:(__CTFont *)a6 count:(unint64_t)a7 stylePresetName:(id)a8 styleConfiguration:(id)a9 foregroundColor:(CGColor *)a10;
- (BOOL)fillStyledPath:(CGPath *)a3 inContext:(CGContext *)a4 stylePresetName:(id)a5 styleConfiguration:(id)a6;
- (BOOL)fillStyledRect:(CGRect)a3 inContext:(CGContext *)a4 stylePresetName:(id)a5 styleConfiguration:(id)a6;
- (BOOL)hasStylePresetWithName:(id)a3 styleConfiguration:(id)a4;
- (BOOL)strokeStyledPath:(CGPath *)a3 inContext:(CGContext *)a4 stylePresetName:(id)a5 styleConfiguration:(id)a6;
- (CGColor)equivalentForegroundColorForStylePresetWithName:(id)a3 styleConfiguration:(id)a4;
- (CGColor)equivalentForegroundColorForStylePresetWithName:(id)a3 styleConfiguration:(id)a4 baseForegroundColor:(CGColor *)a5;
- (CGPDFDocument)pdfDocumentWithName:(id)a3 appearanceName:(id)a4;
- (CUICatalog)init;
- (CUICatalog)initWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (CUICatalog)initWithName:(id)a3 fromBundle:(id)a4 error:(id *)a5;
- (CUICatalog)initWithURL:(id)a3 error:(id *)a4;
- (id)_appearancefallback_colorWithName:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6;
- (id)_appearancefallback_gradientWithName:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6;
- (id)_baseAtlasContentsKeyForName:(id)a3;
- (id)_baseAtlasKeyForName:(id)a3;
- (id)_baseColorKeyForName:(id)a3;
- (id)_baseGradientKeyForName:(id)a3;
- (id)_baseImageKeyForName:(id)a3;
- (id)_baseKeyForName:(id)a3;
- (id)_baseLayeredIconKeyForName:(id)a3;
- (id)_baseModelForKeyForName:(id)a3;
- (id)_baseMultisizeImageSetKeyForName:(id)a3;
- (id)_baseRecognitionGroupImageSetKeyForName:(id)a3;
- (id)_baseRecognitionObjectKeyForName:(id)a3;
- (id)_baseStackKeyForName:(id)a3;
- (id)_baseTextureKeyForName:(id)a3;
- (id)_baseVectorGlyphForName:(id)a3;
- (id)_baseVectorRenditionKey:(id)a3;
- (id)_dataWithName:(id)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 memoryClass:(unint64_t)a6 graphicsClass:(unint64_t)a7 appearanceIdentifier:(int64_t)a8 graphicsFallBackOrder:(id)a9 deviceSubtypeFallBackOrder:(id)a10;
- (id)_defaultLayerStackWithScaleFactor:(double)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 sizeClassHorizontal:(int64_t)a6 sizeClassVertical:(int64_t)a7;
- (id)_defaultNamedAssetWithScaleFactor:(double)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 sizeClassHorizontal:(int64_t)a6 sizeClassVertical:(int64_t)a7;
- (id)_imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 memoryClass:(unint64_t)a11 graphicsClass:(unint64_t)a12 appearanceIdentifier:(int64_t)a13 graphicsFallBackOrder:(id)a14 deviceSubtypeFallBackOrder:(id)a15 locale:(id)a16;
- (id)_layerStackWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8;
- (id)_modelWithName:(id)a3;
- (id)_nameForAppearanceIdentifier:(int64_t)a3;
- (id)_nameForLocalizationIdentifier:(int64_t)a3;
- (id)_namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 displayGamut:(int64_t)a6 deviceSubtype:(unint64_t)a7 memoryClass:(unint64_t)a8 graphicsClass:(unint64_t)a9 graphicsFallBackOrder:(id)a10 deviceSubtypeFallBackOrder:(id)a11;
- (id)_namedLookupWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceName:(id)a11 locale:(id)a12;
- (id)_namedTextureWithName:(id)a3 scaleFactor:(double)a4 appearanceName:(id)a5;
- (id)_namedTextureWithName:(id)a3 scaleFactor:(double)a4 displayGamut:(int64_t)a5 appearanceName:(id)a6;
- (id)_namedVectorImageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceIdentifier:(int64_t)a11 locale:(id)a12;
- (id)_private_resolvedRenditionKeyFromThemeRef:(void *)a3 withBaseKey:(id)a4 scaleFactor:(uint64_t)a5 deviceIdiom:(void *)a6 deviceSubtype:(uint64_t)a7 displayGamut:(uint64_t)a8 layoutDirection:(double)a9 sizeClassHorizontal:(uint64_t)a10 sizeClassVertical:(uint64_t)a11 memoryClass:(uint64_t)a12 graphicsClass:(void *)a13 graphicsFallBackOrder:(void *)a14 deviceSubtypeFallBackOrder:(uint64_t)a15 localizationIdentifier:(uint64_t)a16 adjustRenditionKeyWithBlock:;
- (id)_recognitionImageWithName:(id)a3;
- (id)_recognitionObjectWithName:(id)a3;
- (id)_resolvedRenditionKeyForName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 memoryClass:(unint64_t)a11 graphicsClass:(unint64_t)a12 graphicsFallBackOrder:(id)a13 deviceSubtypeFallBackOrder:(id)a14 locale:(id)a15 withBaseKeySelector:(SEL)a16 adjustRenditionKeyWithBlock:(id)a17;
- (id)_resolvedRenditionKeyFromThemeRef:(unint64_t)a3 withBaseKey:(id)a4 scaleFactor:(double)a5 deviceIdiom:(int64_t)a6 deviceSubtype:(unint64_t)a7 displayGamut:(int64_t)a8 layoutDirection:(int64_t)a9 sizeClassHorizontal:(int64_t)a10 sizeClassVertical:(int64_t)a11 memoryClass:(unint64_t)a12 graphicsClass:(unint64_t)a13 graphicsFallBackOrder:(id)a14 deviceSubtypeFallBackOrder:(id)a15 locale:(id)a16 adjustRenditionKeyWithBlock:(id)a17;
- (id)allImageNames;
- (id)appearanceNames;
- (id)colorWithName:(id)a3 displayGamut:(int64_t)a4 appearanceName:(id)a5;
- (id)colorWithName:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6;
- (id)compositingFilterForStylePresetWithName:(id)a3 styleConfiguration:(id)a4 foregroundColor:(CGColor *)a5;
- (id)copiedVectorGlyphsWithNames:(id)a3 outputFile:(id)a4;
- (id)dataForVectorGlyphsWithNames:(id)a3;
- (id)dataWithName:(id)a3 appearanceName:(id)a4;
- (id)dataWithName:(id)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 memoryClass:(unint64_t)a6 graphicsClass:(unint64_t)a7 appearanceIdentifier:(int64_t)a8 graphicsFallBackOrder:(id)a9 deviceSubtypeFallBackOrder:(id)a10;
- (id)defaultIconLayerStack;
- (id)defaultLayerStackWithScaleFactor:(double)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 sizeClassHorizontal:(int64_t)a6 sizeClassVertical:(int64_t)a7;
- (id)defaultNamedAssetWithScaleFactor:(double)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 sizeClassHorizontal:(int64_t)a6 sizeClassVertical:(int64_t)a7;
- (id)gradientWithName:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6;
- (id)iconImageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 desiredSize:(CGSize)a11 appearanceName:(id)a12;
- (id)iconLayerStackWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(unint64_t)a7 appearanceName:(id)a8 locale:(id)a9;
- (id)imageByStylingImage:(CGImage *)a3 stylePresetName:(id)a4 styleConfiguration:(id)a5 foregroundColor:(CGColor *)a6 scale:(double)a7;
- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6;
- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceName:(id)a11 locale:(id)a12;
- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 memoryClass:(unint64_t)a11 graphicsClass:(unint64_t)a12 appearanceIdentifier:(int64_t)a13 graphicsFallBackOrder:(id)a14 deviceSubtypeFallBackOrder:(id)a15 locale:(id)a16;
- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8;
- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8 appearanceName:(id)a9;
- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 layoutDirection:(int64_t)a6 locale:(id)a7 adjustRenditionKeyWithBlock:(id)a8;
- (id)imageWithName:(id)a3 scaleFactor:(double)a4 locale:(id)a5;
- (id)imagesWithName:(id)a3;
- (id)layerStackWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8;
- (id)localObjectCache;
- (id)lookupCache;
- (id)modelWithName:(id)a3;
- (id)namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4;
- (id)namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5;
- (id)namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 displayGamut:(int64_t)a6 deviceSubtype:(unint64_t)a7 memoryClass:(unint64_t)a8 graphicsClass:(unint64_t)a9 graphicsFallBackOrder:(id)a10 deviceSubtypeFallBackOrder:(id)a11;
- (id)namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4 displayGamut:(unint64_t)a5;
- (id)namedLookupWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceName:(id)a11 locale:(id)a12;
- (id)namedLookupWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8;
- (id)namedRecognitionGroupWithName:(id)a3;
- (id)namedTextureWithName:(id)a3 scaleFactor:(double)a4 appearanceName:(id)a5;
- (id)namedTextureWithName:(id)a3 scaleFactor:(double)a4 displayGamut:(int64_t)a5 appearanceName:(id)a6;
- (id)namedVectorGlyphWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 layoutDirection:(int64_t)a6 glyphContinuousSize:(double)a7 glyphContinuousWeight:(double)a8 glyphPointSize:(double)a9 appearanceName:(id)a10 locale:(id)a11;
- (id)namedVectorImageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceName:(id)a11 locale:(id)a12;
- (id)namedVectorImageWithName:(id)a3 scaleFactor:(double)a4 displayGamut:(int64_t)a5 layoutDirection:(int64_t)a6 appearanceName:(id)a7 locale:(id)a8;
- (id)negativeCache;
- (id)newShapeEffectPresetForStylePresetName:(id)a3 styleConfiguration:(id)a4;
- (id)newShapeEffectPresetWithRenditionKey:(id)a3;
- (id)newShapeEffectStackForStylePresetName:(id)a3 styleConfiguration:(id)a4 foregroundColor:(CGColor *)a5;
- (id)newTextEffectStackForStylePresetName:(id)a3 styleConfiguration:(id)a4 foregroundColor:(CGColor *)a5;
- (id)parentNamedImageAtlasForImageNamed:(id)a3 scaleFactor:(double)a4 displayGamut:(unint64_t)a5;
- (id)parentNamedImageAtlastForImageNamed:(id)a3 scaleFactor:(double)a4;
- (id)renditionKeyForShapeEffectPresetForStylePresetName:(id)a3 styleConfiguration:(id)a4;
- (id)renditionKeyForShapeEffectPresetWithStyleID:(unint64_t)a3 state:(int64_t)a4 presentationState:(int64_t)a5 value:(int64_t)a6 resolution:(unint64_t)a7 dimension1:(unint64_t)a8;
- (id)renditionKeyForShapeEffectPresetWithStylePresetName:(id)a3 state:(int64_t)a4 presentationState:(int64_t)a5 value:(int64_t)a6 resolution:(unint64_t)a7 dimension1:(unint64_t)a8 appearance:(int64_t)a9;
- (id)textStyleWithName:(id)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 displayGamut:(int64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8 appearanceName:(id)a9;
- (id)textStyleWithName:(id)a3 displayGamut:(int64_t)a4 appearanceName:(id)a5;
- (int)blendModeForStylePresetWithName:(id)a3 styleConfiguration:(id)a4;
- (int64_t)platform;
- (unint64_t)_storageRefForRendition:(id)a3 representsODRContent:(BOOL *)a4;
- (void)_resolveInterpolationSourceRenditionKeysUltralight:(id *)a3 regular:(id *)a4 black:(id *)a5 forName:(id)a6 scaleFactor:(double)a7 deviceIdiom:(int64_t)a8 deviceSubtype:(unint64_t)a9 displayGamut:(int64_t)a10 layoutDirection:(int64_t)a11 sizeClassHorizontal:(int64_t)a12 sizeClassVertical:(int64_t)a13 memoryClass:(unint64_t)a14 graphicsClass:(unint64_t)a15 graphicsFallBackOrder:(id)a16 deviceSubtypeFallBackOrder:(id)a17 appearanceIdentifier:(int64_t)a18 locale:(id)a19;
- (void)_resourceUnPinnedNotification:(id)a3;
- (void)_setPreferredLocalization:(id)a3;
- (void)_sharedSetup;
- (void)_vibrantColorMatrixBrightnessSaturationForColor:(CGColor *)a3 saturation:(double *)a4 brightness:(double *)a5;
- (void)clearCachedImageResources;
- (void)dealloc;
- (void)enumerateNamedLookupsUsingBlock:(id)a3;
- (void)finalizeNamedVectorGlyphLookupWithResult:(id)a3 name:(id)a4 glyphContinuousSize:(double)a5 glyphContinuousWeight:(double)a6 pointSize:(double)a7;
- (void)preloadNamedAtlasWithScaleFactor:(double)a3 andNames:(id)a4 completionHandler:(id)a5;
@end

@implementation CUICatalog

- (id)appearanceNames
{
  v2 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  v3 = [v2 appearances];
  if (!v3 || (result = [v3 allKeys]) == 0)
  {
    v5 = [v2 defaultAppearanceName];

    return [NSArray arrayWithObject:v5];
  }

  return result;
}

- (void)_sharedSetup
{
  [(CUICatalog *)self lookupCache];
  [(CUICatalog *)self negativeCache];
  [(CUICatalog *)self localObjectCache];

  [(CUICatalog *)self _setPreferredLocalization:0];
}

- (id)negativeCache
{
  if ((*(self + 82) & 8) == 0 && !self->_negativeCache)
  {
    v3 = objc_alloc_init(NSCache);
    self->_negativeCache = v3;
    [(NSCache *)v3 setName:@"com.apple.coreui-negativecache"];
    [(NSCache *)self->_negativeCache setEvictsObjectsWithDiscardedContent:0];
    [(NSCache *)self->_negativeCache setCountLimit:100];
    [(NSCache *)self->_negativeCache setMinimumObjectCount:15];
  }

  return self->_negativeCache;
}

- (id)lookupCache
{
  if ((*(self + 82) & 8) == 0 && !self->_lookupCache)
  {
    v3 = objc_alloc_init(NSCache);
    self->_lookupCache = v3;
    [(NSCache *)v3 setName:@"com.apple.coreui-cache"];
    [(NSCache *)self->_lookupCache setEvictsObjectsWithDiscardedContent:0];
    [(NSCache *)self->_lookupCache setCountLimit:500];
    [(NSCache *)self->_lookupCache setMinimumObjectCount:75];
  }

  return self->_lookupCache;
}

- (id)localObjectCache
{
  if ((*(self + 82) & 8) == 0 && !self->_localObjectCache)
  {
    v3 = objc_alloc_init(NSCache);
    self->_localObjectCache = v3;
    [(NSCache *)v3 setName:@"com.apple.coreui-cuicache"];
    [(NSCache *)self->_localObjectCache setEvictsObjectsWithDiscardedContent:0];
    [(NSCache *)self->_localObjectCache setCountLimit:100];
    [(NSCache *)self->_localObjectCache setMinimumObjectCount:15];
  }

  return self->_localObjectCache;
}

- (id)defaultIconLayerStack
{
  v17 = 0;
  kdebug_trace();
  _CUILog(3, "[CUICatalog defaultIconLayerStack]", v3, v4, v5, v6, v7, v8, v15);
  v9 = -[CUICatalog _resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:](self, "_resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:", @"IGNORED_VALUE", 0, 0, 1, 0, 0, CUIMaxScaleForTargetPlatform([-[CUICatalog _themeStore](self "_themeStore")]), 0, 0, 0, 0, 0, 0, sel__defaultBaseLayeredIconKeyForName_, 0);
  if (v9 && (v10 = v9, v11 = [v9 themeScale], v12 = -[CUICatalog _storageRefForRendition:representsODRContent:](self, "_storageRefForRendition:representsODRContent:", v10, &v17), v12 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __35__CUICatalog_defaultIconLayerStack__block_invoke;
    v16[3] = &unk_1E7257EA8;
    v16[4] = self;
    v16[5] = v12;
    *&v16[6] = v11;
    v14 = [[CUINamedIconLayerStack alloc] initWithName:0 usingRenditionKey:v10 fromTheme:v12 resolvingWithBlock:v16];
    [(CUINamedLookup *)v14 setRepresentsOnDemandContent:v17];
    if (![(CUINamedIconLayerStack *)v14 _updateFromCatalog:self displayGamut:0 deviceIdiom:0 appearanceName:0])
    {

      v14 = 0;
    }

    kdebug_trace();
    return v14;
  }

  else
  {
    kdebug_trace();
    return 0;
  }
}

id __35__CUICatalog_defaultIconLayerStack__block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  if (a3 == -1.0)
  {
    a3 = *(a1 + 48);
  }

  return [v6 _resolvedRenditionKeyFromThemeRef:*(a1 + 40) withBaseKey:a2 scaleFactor:0 deviceIdiom:0 deviceSubtype:1 displayGamut:0 layoutDirection:a3 sizeClassHorizontal:0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 adjustRenditionKeyWithBlock:{0, v3, v4}];
}

- (int64_t)platform
{
  v2 = _LookupStructuredThemeProvider(self->_storageRef, a2);

  return [v2 deploymentPlatform];
}

- (void)dealloc
{
  if ((*(self + 82) & 1) == 0 && self->_storageRef != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 removeObserver:self name:_NSBundleResourceRequestAssetPackUnpinnedNotification object:self->_bundle];
  }

  [(CUICatalog *)self clearCachedImageResources];

  if (*(self + 82))
  {
    [CUIThemeFacet themeUnregisterThemeRef:self->_storageRef];
  }

  v4.receiver = self;
  v4.super_class = CUICatalog;
  [(CUICatalog *)&v4 dealloc];
}

- (void)clearCachedImageResources
{
  if (self->_storageRef != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(CUICatalog *)self _themeStore];
    _CUILog(3, "[CUICatalog clearCachedImageResources] on themestore '%@'", v5, v6, v7, v8, v9, v10, v4);
    [v4 clearRenditionCache];
    [(NSCache *)self->_lookupCache removeAllObjects];
    negativeCache = self->_negativeCache;

    [(NSCache *)negativeCache removeAllObjects];
  }
}

- (CUICatalog)init
{
  v4.receiver = self;
  v4.super_class = CUICatalog;
  v2 = [(CUICatalog *)&v4 init];
  [(CUICatalog *)v2 _sharedSetup];
  return v2;
}

+ (id)defaultUICatalogForBundle:(id)a3
{
  v3 = a3;
  if (a3 || (v3 = +[NSBundle mainBundle]) != 0)
  {
    if (__onceToken_1 != -1)
    {
      +[CUICatalog defaultUICatalogForBundle:];
    }

    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__4;
    v10 = __Block_byref_object_dispose__4;
    v11 = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __40__CUICatalog_defaultUICatalogForBundle___block_invoke_5;
    v5[3] = &unk_1E7257CF8;
    v5[4] = v3;
    v5[5] = &v6;
    dispatch_sync(__cacheQueue, v5);
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  return v3;
}

id __40__CUICatalog_defaultUICatalogForBundle___block_invoke()
{
  __cacheQueue = dispatch_queue_create("com.apple.CoreUI.UICatalog-cache", 0);
  result = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:0 capacity:0];
  __catalogCache_0 = result;
  return result;
}

CUICatalog *__40__CUICatalog_defaultUICatalogForBundle___block_invoke_5(uint64_t a1)
{
  result = [__catalogCache_0 objectForKey:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    result = [[CUICatalog alloc] initWithName:@"Assets" fromBundle:*(a1 + 32) error:0];
    *(*(*(a1 + 40) + 8) + 40) = result;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v3 = __catalogCache_0;

      return [v3 setObject:? forKey:?];
    }
  }

  return result;
}

+ (id)bestMatchUsingObjects:(id)a3 getAttributeValueUsing:(id)a4 scaleFactor:(double)a5 deviceIdiom:(int64_t)a6 deviceSubtype:(unint64_t)a7 displayGamut:(int64_t)a8 deploymentTarget:(int64_t)a9 layoutDirection:(int64_t)a10 sizeClassHorizontal:(int64_t)a11 sizeClassVertical:(int64_t)a12 memoryClass:(int64_t)a13 graphicsFeatureSetClass:(int64_t)a14 graphicsFallBackOrder:(id)a15 deviceSubtypeFallBackOrder:(id)a16 platform:(int64_t)a17
{
  v21 = CUIMaxScaleForTargetPlatform(a17);
  v65 = [a15 count];
  v22 = [a16 count];
  v23 = 0;
  v24 = 0;
  do
  {
    if (__memorySearchValues[v23] == a13)
    {
      v24 = v23;
    }

    ++v23;
  }

  while (v23 != 10);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v70 = v24;
    v57 = v22;
    v68 = a8;
    v25 = 4;
    if (__PAIR128__(a12, a11) == 0)
    {
      v26 = 4;
    }

    else
    {
      v26 = 1;
    }

    v67 = v26;
    v27 = v21;
    if (a10 == 4)
    {
      v25 = 5;
    }

    v62 = v25;
    v55 = v22 - 1;
    while (1)
    {
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      v28 = a7;
      while (2)
      {
        v29 = a14;
        v30 = v68;
        v31 = a6;
LABEL_14:
        v32 = v28;
        v59 = v29;
        if (v29)
        {
          v33 = v65 == 0;
        }

        else
        {
          v33 = 1;
        }

        v34 = v33;
        v60 = v34;
        v58 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
LABEL_21:
          v64 = 0;
          v61 = -1;
          v75 = a10;
          v36 = a12;
          v35 = a11;
          v76 = a9;
          v37 = v30;
          v38 = v31;
          v39 = a5;
LABEL_22:
          v40 = v67;
          while (1)
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  do
                  {
                    v71 = v40;
                    v73 = v36;
                    v74 = v35;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v41 = [a3 countByEnumeratingWithState:&v77 objects:v81 count:16];
                    if (v41)
                    {
                      v42 = v41;
                      v43 = *v78;
LABEL_25:
                      v44 = 0;
                      while (1)
                      {
                        if (*v78 != v43)
                        {
                          objc_enumerationMutation(a3);
                        }

                        v45 = *(*(&v77 + 1) + 8 * v44);
                        if (v39 == (*(a4 + 2))(a4, v45, 12) && (*(a4 + 2))(a4, v45, 15) == v38 && (*(a4 + 2))(a4, v45, 16) == v32 && (*(a4 + 2))(a4, v45, 24) == v37 && (*(a4 + 2))(a4, v45, 25) == v76 && (*(a4 + 2))(a4, v45, 4) == v75 && (*(a4 + 2))(a4, v45, 20) == v74 && (*(a4 + 2))(a4, v45, 21) == v73 && (*(a4 + 2))(a4, v45, 23) == a14 && (*(a4 + 2))(a4, v45, 22) == __memorySearchValues[v70])
                        {
                          return v45;
                        }

                        if (v42 == ++v44)
                        {
                          v42 = [a3 countByEnumeratingWithState:&v77 objects:v81 count:16];
                          if (v42)
                          {
                            goto LABEL_25;
                          }

                          break;
                        }
                      }
                    }

                    v35 = 0;
                    if (v71 == 1)
                    {
                      v46 = a11;
                      v40 = 2;
                      goto LABEL_45;
                    }

                    v36 = a12;
                    v40 = 3;
                  }

                  while (v71 == 2);
                  if (v71 != 3)
                  {
                    break;
                  }

                  v35 = 0;
                  v36 = 0;
                  v40 = 4;
                }

                v31 = a6;
                if (!a6 || v38 != a6)
                {
                  break;
                }

                v38 = 0;
                v36 = a12;
                v35 = a11;
                v40 = 1;
                if (__PAIR128__(a12, a11) == 0)
                {
                  v35 = v73;
                  v46 = v74;
                  v40 = 4;
                  goto LABEL_45;
                }
              }

              v30 = v68;
              if (v68 && v37 == v68)
              {
                v37 = 0;
                v35 = a11;
                if (__PAIR128__(a12, a11) == 0)
                {
                  v35 = v74;
                }

                v36 = a12;
                if (__PAIR128__(a12, a11) == 0)
                {
                  v36 = v73;
                }

                goto LABEL_76;
              }

              if (a10 && v75)
              {
                v48 = v62;
                if (v64)
                {
                  v48 = 0;
                }

                v75 = v48;
                v35 = a11;
                if (__PAIR128__(a12, a11) == 0)
                {
                  v35 = v74;
                }

                v36 = a12;
                if (__PAIR128__(a12, a11) == 0)
                {
                  v36 = v73;
                }

                v64 = 1;
                goto LABEL_75;
              }

              if (a9 && v76)
              {
                v64 = 0;
                v75 = a10;
                --v76;
                v36 = a12;
                v35 = a11;
LABEL_75:
                v37 = v68;
LABEL_76:
                v38 = a6;
                goto LABEL_22;
              }

              v47 = v39 + v61;
              if ((v61 & 0x8000000000000000) == 0)
              {
                break;
              }

              v64 = 0;
              v75 = a10;
              v36 = a12;
              v35 = a11;
              v76 = a9;
              v37 = v68;
              v38 = a6;
              v39 = a5;
              v61 = 1;
              v40 = v67;
              if (v47 > 0.0)
              {
                v61 = -1;
                v38 = a6;
                v35 = a12;
                v46 = a11;
                v75 = a10;
                v76 = a9;
                v37 = v68;
                goto LABEL_61;
              }
            }

            if (v47 > v27)
            {
              break;
            }

            v64 = 0;
            v75 = a10;
            v35 = a12;
            v46 = a11;
            v76 = a9;
            v37 = v68;
            v38 = a6;
LABEL_61:
            v39 = v47;
            v40 = v67;
LABEL_45:
            v36 = v35;
            v35 = v46;
          }

          if ((v60 & 1) == 0)
          {
            if (v58 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v51 = 0;
            }

            else
            {
              if (v58 >= v65 - 1)
              {
                a14 = v59;
                v31 = a6;
                break;
              }

              v51 = v58 + 1;
            }

            v58 = v51;
            a14 = [objc_msgSend(a15 "objectAtIndex:"integerValue"")];
            v31 = a6;
            goto LABEL_21;
          }

          v49 = a14 | v65;
          a14 = 0;
          v50 = v49 == 0;
        }

        while (v59 && !v50);
        if (!a7)
        {
          goto LABEL_96;
        }

        if (v57)
        {
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v56 = 0;
            v52 = [a16 objectAtIndex:0];
          }

          else
          {
            if (v56 >= v55)
            {
              goto LABEL_96;
            }

            v52 = [a16 objectAtIndex:++v56];
          }

          v28 = [v52 integerValue];
          continue;
        }

        break;
      }

      v28 = 0;
      v29 = a14;
      if (v32)
      {
        goto LABEL_14;
      }

LABEL_96:
      v45 = 0;
      if (v70-- <= 0)
      {
        return v45;
      }
    }
  }

  return 0;
}

+ (id)bestMatchUsingImages:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(unint64_t)a7 layoutDirection:(unint64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10
{
  v18 = +[NSMutableArray array];
  if (a5 == 5)
  {
    CUIWatchSubTypeFallbackOrder(a6, v18);
  }

  [v18 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 0)}];
  return [a1 bestMatchUsingObjects:a3 getAttributeValueUsing:&__block_literal_global_14 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:0 deploymentTarget:a4 layoutDirection:a8 sizeClassHorizontal:a9 sizeClassVertical:a10 memoryClass:0 graphicsFeatureSetClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:v18];
}

id __140__CUICatalog_bestMatchUsingImages_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical___block_invoke(uint64_t a1, void *a2, int a3)
{
  result = 0;
  if (a3 > 20)
  {
    if (a3 > 22)
    {
      if (a3 == 23)
      {

        return [a2 graphicsClass];
      }

      else if (a3 == 24)
      {

        return [a2 displayGamut];
      }
    }

    else if (a3 == 21)
    {

      return [a2 sizeClassVertical];
    }

    else
    {

      return [a2 memoryClass];
    }
  }

  else if (a3 > 15)
  {
    if (a3 == 16)
    {

      return [a2 subtype];
    }

    else if (a3 == 20)
    {

      return [a2 sizeClassHorizontal];
    }
  }

  else if (a3 == 12)
  {
    [a2 scale];
    return v6;
  }

  else if (a3 == 15)
  {

    return [a2 idiom];
  }

  return result;
}

- (void)_setPreferredLocalization:(id)a3
{
  v5 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  v6 = [v5 keyFormat];
  if (a3)
  {
    self->_preferredLocalization = [v5 localizationIdentifierForName:a3];
LABEL_3:
    _CUILog(3, "[CUICatalog _setPreferredLocalization:] set it to '%@'", v13, v14, v15, v16, v17, v18, a3);
    return;
  }

  if (!v6 || !CUIRenditionKeyHasIdentifier(v6, 13))
  {
    self->_preferredLocalization = 0;
    v24 = "[CUICatalog _setPreferredLocalization:] set it to unlocalized/base because there is no localized content present";
LABEL_10:

    _CUILog(3, v24, v7, v8, v9, v10, v11, v12, v26);
    return;
  }

  v19 = [v5 localizations];

  self->_assetCatalogLocalizations = [v19 allKeys];
  v20 = [+[NSBundle mainBundle](NSBundle preferredLocalizations];
  v21 = [(NSArray *)+[NSBundle preferredLocalizationsFromArray:forPreferences:](NSBundle firstObject:self->_assetCatalogLocalizations];
  v22 = [NSLocale mostPreferredLanguageOf:self->_assetCatalogLocalizations withPreferredLanguages:v20 forUsage:1 options:0];
  if (!v22)
  {
    self->_preferredLocalization = 0;
    v24 = "[CUICatalog _setPreferredLocalization:] set it to unlocalized/base";
    goto LABEL_10;
  }

  a3 = v22;
  v23 = [+[NSLocale baseLanguageFromLanguage:](NSLocale baseLanguageFromLanguage:{v21), "isEqualToString:", +[NSLocale baseLanguageFromLanguage:](NSLocale, "baseLanguageFromLanguage:", v22)}];
  self->_preferredLocalization = [v5 localizationIdentifierForName:a3];
  if (v23)
  {
    goto LABEL_3;
  }

  _CUILog(3, "[CUICatalog _setPreferredLocalization:] set it to *'%@'", v13, v14, v15, v16, v17, v18, a3);
}

- (id)_nameForLocalizationIdentifier:(int64_t)a3
{
  v3 = a3;
  v4 = _LookupStructuredThemeProvider(self->_storageRef, a2);

  return [v4 nameForLocalizationIdentifier:v3];
}

- (CUICatalog)initWithName:(id)a3 fromBundle:(id)a4 error:(id *)a5
{
  v12.receiver = self;
  v12.super_class = CUICatalog;
  v8 = [(CUICatalog *)&v12 init];
  if (v8)
  {
    if (!a4)
    {
      a4 = +[NSBundle mainBundle];
    }

    v9 = +[CUIThemeFacet themeNamed:forBundleIdentifier:error:](CUIThemeFacet, "themeNamed:forBundleIdentifier:error:", a3, [a4 bundleIdentifier], a5);
    v8->_storageRef = v9;
    if (v9)
    {
      *(v8 + 21) &= 0xF8000000;
      v8->_bundle = a4;
      v8->_assetStoreName = [a3 copy];
      [(CUICatalog *)v8 _sharedSetup];
      v10 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v10 addObserver:v8 selector:sel__resourceUnPinnedNotification_ name:_NSBundleResourceRequestAssetPackUnpinnedNotification object:a4];
    }

    else
    {
      v8->_storageRef = 0x7FFFFFFFFFFFFFFFLL;

      return 0;
    }
  }

  return v8;
}

- (CUICatalog)initWithURL:(id)a3 error:(id *)a4
{
  v9.receiver = self;
  v9.super_class = CUICatalog;
  v6 = [(CUICatalog *)&v9 init];
  if (v6)
  {
    if ([a3 checkResourceIsReachableAndReturnError:a4] && (*(v6 + 82) |= 1u, v6->_assetStoreName = objc_msgSend(objc_msgSend(objc_msgSend(a3, "URLByDeletingPathExtension"), "lastPathComponent"), "copy"), v7 = +[CUIThemeFacet themeWithContentsOfURL:error:](CUIThemeFacet, "themeWithContentsOfURL:error:", a3, a4), (v6->_storageRef = v7) != 0))
    {
      [(CUICatalog *)v6 _sharedSetup];
    }

    else
    {
      v6->_storageRef = 0x7FFFFFFFFFFFFFFFLL;

      return 0;
    }
  }

  return v6;
}

- (CUICatalog)initWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v12.receiver = self;
  v12.super_class = CUICatalog;
  v8 = [(CUICatalog *)&v12 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 82) |= 9u;
    v10 = [CUIThemeFacet themeWithBytes:a3 length:a4 error:a5];
    v9->_storageRef = v10;
    if (v10)
    {
      [(CUICatalog *)v9 _sharedSetup];
    }

    else
    {
      v9->_storageRef = 0x7FFFFFFFFFFFFFFFLL;

      return 0;
    }
  }

  return v9;
}

- (void)_resourceUnPinnedNotification:(id)a3
{
  if (self->_storageMapTable)
  {
    v5 = [a3 userInfo];
    v6 = [v5 objectForKey:_NSBundleResourceRequestAssetPackNotificationAssetPackIDKey];
    v7 = NSMapGet(self->_storageMapTable, v6);
    if (v7)
    {
      v8 = v7;
      [objc_msgSend(a3 "object")];
      _CUILog(3, "CoreUI: [CUICatalog _resourceUnPinnedNotification:] for themeRef '%d' (for bundle identifier '%@' and asset pack identifier '%@').", v9, v10, v11, v12, v13, v14, v8);
      [CUIThemeFacet themeUnregisterThemeRef:v8];
    }

    else
    {
      v15 = [objc_msgSend(a3 "object")];
      _CUILog(3, "CoreUI: [CUICatalog _resourceUnPinnedNotification:] did not find themeRef for for bundle identifier '%@' and asset pack identifier '%@'.", v16, v17, v18, v19, v20, v21, v15);
    }

    storageMapTable = self->_storageMapTable;

    NSMapRemove(storageMapTable, v6);
  }
}

- (id)_recognitionImageWithName:(id)a3
{
  v21 = 0;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v10 = __getDeviceTraits___deviceIdiom;
  v11 = __getDeviceTraits___deviceSubtype;
  v12 = __getDeviceTraits___deviceDisplayGamut;
  v13 = __getDeviceTraits___deviceMemoryClass;
  v14 = __getDeviceTraits___deviceGraphicsClass;
  v15 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  v16 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  _CUILog(3, "[CUICatalog _recognitionImageWithName:%@]", a3, v3, v4, v5, v6, v7, a3);
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:v10 deviceIdiom:v11 deviceSubtype:v12 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:v13 graphicsClass:v14 graphicsFallBackOrder:v15 deviceSubtypeFallBackOrder:v16 locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:0];
  if (result)
  {
    v18 = result;
    if ([result themePart] == 220)
    {
      return 0;
    }

    v19 = [(CUICatalog *)self _storageRefForRendition:v18 representsODRContent:&v21];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v20 = [[CUINamedRecognitionImage alloc] initWithName:a3 usingRenditionKey:v18 fromTheme:v19];
      [(CUINamedLookup *)v20 setRepresentsOnDemandContent:v21];
      return v20;
    }
  }

  return result;
}

- (id)imageWithName:(id)a3 scaleFactor:(double)a4 locale:(id)a5
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self imageWithName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 appearanceName:0 locale:a5];
}

- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v11 = __getDeviceTraits___deviceSubtype;

  return [(CUICatalog *)self imageWithName:a3 scaleFactor:a5 deviceIdiom:v11 deviceSubtype:a6 appearanceName:a4];
}

- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self imageWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:a7 sizeClassHorizontal:a4 sizeClassVertical:a8];
}

- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8 appearanceName:(id)a9
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self imageWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:a7 sizeClassHorizontal:a4 sizeClassVertical:a8 appearanceName:a9];
}

- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceName:(id)a11 locale:(id)a12
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v16 = 0;
  v17 = __getDeviceTraits___deviceIdiom;
  v18 = __getDeviceTraits___deviceSubtype;
  v19 = __getDeviceTraits___deviceMemoryClass;
  v20 = __getDeviceTraits___deviceGraphicsClass;
  v21 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  v22 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  if (self && a11)
  {
    v23 = __getDeviceTraits___deviceMemoryClass;
    v24 = __getDeviceTraits___deviceGraphicsClass;
    v25 = __getDeviceTraits___deviceGraphicsFallbackOrder;
    v26 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
    v21 = v25;
    v20 = v24;
    v19 = v23;
    v16 = v26;
  }

  if (v17 == a5 && v18 == a6)
  {
    return [(CUICatalog *)self imageWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:a8 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 memoryClass:v19 graphicsClass:v20 appearanceIdentifier:v16 graphicsFallBackOrder:v21 deviceSubtypeFallBackOrder:v22 locale:a12];
  }

  v28 = v21;
  v29 = v20;
  v30 = v19;
  if (a5 == 5)
  {
    v31 = +[NSMutableArray array];
    CUIWatchSubTypeFallbackOrder(a6, v31);
    [(NSArray *)v31 addObject:[NSNumber numberWithInt:0]];
  }

  else
  {
    v37 = [NSNumber numberWithInt:0];
    v31 = [NSArray arrayWithObjects:&v37 count:1];
  }

  return [(CUICatalog *)self imageWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:a8 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 memoryClass:v30 graphicsClass:v29 appearanceIdentifier:v16 graphicsFallBackOrder:v28 deviceSubtypeFallBackOrder:v31 locale:a12];
}

- (id)_baseImageKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:181];

    return v4;
  }

  return result;
}

- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 layoutDirection:(int64_t)a6 locale:(id)a7 adjustRenditionKeyWithBlock:(id)a8
{
  v33 = 0;
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  _CUILog(3, "[CUICatalog imageWithName:%@]", v15, v16, v17, v18, v19, v20, a3);
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v21 = __getDeviceTraits___deviceDisplayGamut;
  v22 = __getDeviceTraits___deviceMemoryClass;
  v23 = __getDeviceTraits___deviceGraphicsClass;
  v24 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  if (__getDeviceTraits___deviceIdiom == a5)
  {
    v25 = __getDeviceTraits___deviceSubtype;
    v26 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  }

  else
  {
    v34 = [NSNumber numberWithInt:0];
    v26 = [NSArray arrayWithObjects:&v34 count:1];
    v25 = 0;
  }

  v27 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:v25 deviceSubtype:v21 displayGamut:a6 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 memoryClass:v22 graphicsClass:v23 graphicsFallBackOrder:v24 deviceSubtypeFallBackOrder:v26 locale:a7 withBaseKeySelector:sel__baseImageKeyForName_ adjustRenditionKeyWithBlock:a8];
  if (!v27 || (v28 = v27, [v27 themePart] == 220) || (v29 = -[CUICatalog _storageRefForRendition:representsODRContent:](self, "_storageRefForRendition:representsODRContent:", v28, &v33), v29 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v30 = 0;
  }

  else
  {
    v32 = [[CUINamedImage alloc] initWithName:a3 usingRenditionKey:v28 fromTheme:v29];
    [(CUINamedLookup *)v32 setRepresentsOnDemandContent:v33];
    v30 = v32;
  }

  kdebug_trace();
  return v30;
}

- (id)_imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 memoryClass:(unint64_t)a11 graphicsClass:(unint64_t)a12 appearanceIdentifier:(int64_t)a13 graphicsFallBackOrder:(id)a14 deviceSubtypeFallBackOrder:(id)a15 locale:(id)a16
{
  v29[0] = 0;
  _CUILog(3, "[CUICatalog _imageWithName:%@]", a3, a5, a6, a7, a8, a9, a3);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __237__CUICatalog__imageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_appearanceIdentifier_graphicsFallBackOrder_deviceSubtypeFallBackOrder_locale___block_invoke;
  v28[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v28[4] = a13;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:a8 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 memoryClass:a11 graphicsClass:a12 graphicsFallBackOrder:a14 deviceSubtypeFallBackOrder:a15 locale:a16 withBaseKeySelector:sel__baseImageKeyForName_ adjustRenditionKeyWithBlock:v28, a11, a12, a13, a14, a15, a16];
  if (result)
  {
    v21 = result;
    if ([result themePart] == 220)
    {
      return 0;
    }

    v22 = [(CUICatalog *)self _storageRefForRendition:v21 representsODRContent:v29];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v23 = [[CUINamedImage alloc] initWithName:a3 usingRenditionKey:v21 fromTheme:v22];
      [(CUINamedLookup *)v23 setRepresentsOnDemandContent:v29[0]];
      return v23;
    }
  }

  return result;
}

- (id)imageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 memoryClass:(unint64_t)a11 graphicsClass:(unint64_t)a12 appearanceIdentifier:(int64_t)a13 graphicsFallBackOrder:(id)a14 deviceSubtypeFallBackOrder:(id)a15 locale:(id)a16
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v24 = [(CUICatalog *)self _imageWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:a8 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 memoryClass:a11 graphicsClass:a12 appearanceIdentifier:a13 graphicsFallBackOrder:a14 deviceSubtypeFallBackOrder:a15 locale:a16];
  kdebug_trace();
  return v24;
}

- (id)iconImageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 desiredSize:(CGSize)a11 appearanceName:(id)a12
{
  height = a11.height;
  width = a11.width;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v97 = 0;
  v21 = __getDeviceTraits___deviceIdiom;
  v22 = __getDeviceTraits___deviceSubtype;
  obj = __getDeviceTraits___deviceSubtypeFallbackOrder;
  if (self && a12)
  {
    v97 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  if (v21 != a5 || v22 != a6)
  {
    if (a5 == 5)
    {
      v24 = +[NSMutableArray array];
      CUIWatchSubTypeFallbackOrder(a6, v24);
      obj = v24;
      [(NSArray *)v24 addObject:[NSNumber numberWithInt:0]];
    }

    else
    {
      v110 = [NSNumber numberWithInt:0];
      obj = [NSArray arrayWithObjects:&v110 count:1];
    }
  }

  _CUILog(3, "[CUICatalog iconImageWithName:%@]", a3, a5, a6, a7, a8, a9, a3);
  v25 = objc_alloc_init(NSMutableSet);
  v26 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:obj locale:0 withBaseKeySelector:sel__baseMultisizeImageSetKeyForName_ adjustRenditionKeyWithBlock:0, *&width, *&height, a12];
  if (!v26)
  {
    goto LABEL_60;
  }

  v27 = v26;
  v108 = 0;
  v28 = [(CUICatalog *)self _storageRefForRendition:v26 representsODRContent:&v108];
  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  v29 = v28;
  [v25 addObject:v27];
  v90 = [[CUINamedMultisizeImageSet alloc] initWithName:a3 usingRenditionKey:v27 fromTheme:v29];
  if (!v90)
  {
    goto LABEL_60;
  }

  v98 = self;
  v96 = a5;
  v93 = v27;
  if ([v27 themeSubtype])
  {
    v107[0] = _NSConcreteStackBlock;
    v107[1] = 3221225472;
    v107[2] = __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke;
    v107[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
    v107[4] = v97;
    v30 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:0 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:obj locale:0 withBaseKeySelector:sel__baseMultisizeImageSetKeyForName_ adjustRenditionKeyWithBlock:v107];
    if (v30 && ([v25 containsObject:v30] & 1) == 0)
    {
      [v25 addObject:v30];
      v89 = [[CUINamedMultisizeImageSet alloc] initWithName:a3 usingRenditionKey:v30 fromTheme:v29];
    }

    else
    {
      v89 = 0;
    }
  }

  else
  {
    v89 = 0;
    v30 = 0;
  }

  v91 = a7;
  v87 = a8;
  v31 = [v93 themeIdiom];
  v32 = 0;
  if (v30 && v31)
  {
    if ([v30 themeIdiom] && (v106[0] = _NSConcreteStackBlock, v106[1] = 3221225472, v106[2] = __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke_2, v106[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l, v106[4] = v97, (v33 = -[CUICatalog _resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:](self, "_resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:", a3, 0, 0, 0, 0, 0, 1.0, 0, 0, 0, 0, 0, 0, sel__baseMultisizeImageSetKeyForName_, v106)) != 0) && (v34 = v33, (objc_msgSend(v25, "containsObject:", v33) & 1) == 0))
    {
      [v25 addObject:v34];
      v32 = [[CUINamedMultisizeImageSet alloc] initWithName:a3 usingRenditionKey:v34 fromTheme:v29];
    }

    else
    {
      v32 = 0;
    }
  }

  v94 = v29;
  v35 = v25;
  v92 = a6;
  v36 = [NSMutableArray arrayWithArray:[(CUINamedMultisizeImageSet *)v90 sizeIndexes]];
  [(NSMutableArray *)v36 addObjectsFromArray:[(CUINamedMultisizeImageSet *)v89 sizeIndexes]];
  v88 = v32;
  [(NSMutableArray *)v36 addObjectsFromArray:[(CUINamedMultisizeImageSet *)v32 sizeIndexes]];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v37 = [(NSArray *)obj countByEnumeratingWithState:&v102 objects:v109 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v103;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v103 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = [*(*(&v102 + 1) + 8 * i) integerValue];
        v101[0] = _NSConcreteStackBlock;
        v101[1] = 3221225472;
        v101[2] = __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke_3;
        v101[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
        v101[4] = v97;
        v42 = [(CUICatalog *)v98 _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:v41 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__baseMultisizeImageSetKeyForName_ adjustRenditionKeyWithBlock:v101];
        if (v42)
        {
          v43 = v42;
          if (([v35 containsObject:v42] & 1) == 0)
          {
            [v35 addObject:v43];
            v44 = [[CUINamedMultisizeImageSet alloc] initWithName:a3 usingRenditionKey:v43 fromTheme:v94];
            [(NSMutableArray *)v36 addObjectsFromArray:[(CUINamedMultisizeImageSet *)v44 sizeIndexes]];
          }
        }
      }

      v38 = [(NSArray *)obj countByEnumeratingWithState:&v102 objects:v109 count:16];
    }

    while (v38);
  }

  v45 = CGSizeZero.width;
  v46 = CGSizeZero.height;
  v47 = [(NSMutableArray *)v36 sortedArrayUsingComparator:&__block_literal_global_45];
  v48 = [v47 count];
  if (v48)
  {
    v49 = v48;
    v51 = v87;
    v50 = a9;
    v52 = v91;
    while (1)
    {
      width = width;
      v53 = [objc_msgSend(v47 objectAtIndex:{v49 - 1), "index"}];
      v54 = 0;
      v55 = -1;
      while (1)
      {
        v56 = [v47 objectAtIndex:v54];
        [v56 size];
        v58 = v57;
        if (v57 >= width)
        {
          break;
        }

        ++v54;
        ++v55;
        if (v49 == v54)
        {
          v54 = v49;
          goto LABEL_51;
        }
      }

      v59 = [v56 index];
      v53 = v59;
      if (v54)
      {
        v60 = v51;
        v61 = v50;
        v62 = v59;
        v63 = [v47 objectAtIndex:v54];
        while ((v55 & 0x80000000) == 0)
        {
          v64 = [v47 objectAtIndex:v55];
          [v64 size];
          v66 = v65;
          [v63 size];
          if (v66 == v67)
          {
            [v64 size];
            v69 = v68;
            [v63 size];
            --v55;
            if (v69 == v70)
            {
              continue;
            }
          }

          [v64 size];
          v45 = v71;
          v46 = v72;
          break;
        }

        v53 = v62;
        v50 = v61;
        v51 = v60;
        v52 = v91;
      }

LABEL_51:
      v73 = v53;
      v74 = [v93 copy];
      [v74 setThemePart:220];
      storageRef = v98->_storageRef;
      v100[0] = _NSConcreteStackBlock;
      v100[1] = 3221225472;
      v100[2] = __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke_5;
      v100[3] = &__block_descriptor_48_e25_v16__0__CUIRenditionKey_8l;
      v100[4] = v73;
      v100[5] = v97;
      v76 = [(CUICatalog *)v98 _resolvedRenditionKeyFromThemeRef:storageRef withBaseKey:v74 scaleFactor:v96 deviceIdiom:v92 deviceSubtype:v52 displayGamut:v51 layoutDirection:a4 sizeClassHorizontal:v50 sizeClassVertical:a10 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:obj locale:0 adjustRenditionKeyWithBlock:v100];

      if (v58 < width || v76 || v49 == 1)
      {
        break;
      }

      v77 = [v47 mutableCopy];
      [v77 removeObjectAtIndex:v54];
      v47 = v77;
      v49 = [v47 count];
      v78 = v98;
      if (!v49)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v78 = v98;
LABEL_57:
    [objc_msgSend(-[CUICatalog _themeStore](v78 "_themeStore")];
    _CUILog(4, "CoreUI: icon image with name '%@' has no sizes indexes at '%@'", v79, v80, v81, v82, v83, v84, a3);
    v76 = 0;
  }

  v25 = v35;
  if (v76)
  {
    v85 = [(CUINamedImage *)[CUINamedMultisizeImage alloc] initWithName:a3 usingRenditionKey:v76 fromTheme:v94];
    [(CUINamedLookup *)v85 setRepresentsOnDemandContent:v108];
    [(CUINamedMultisizeImage *)v85 setNextSizeSmaller:v45, v46];
  }

  else
  {
LABEL_60:
    v85 = 0;
  }

  return v85;
}

uint64_t __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  [a2 size];
  v6 = v5;
  [a2 size];
  v8 = v6 * v7;
  [a3 size];
  v10 = v9;
  [a3 size];
  if (v8 < v10 * v11)
  {
    return -1;
  }

  if (v8 > v10 * v11)
  {
    return 1;
  }

  v13 = [a2 subtype];
  if (v13 < [a3 subtype])
  {
    return 1;
  }

  v14 = [a2 subtype];
  if (v14 > [a3 subtype])
  {
    return -1;
  }

  v15 = [a2 idiom];
  if (v15 < [a3 idiom])
  {
    return 1;
  }

  v16 = [a2 idiom];
  if (v16 <= [a3 idiom])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

id __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke_5(uint64_t a1, void *a2)
{
  [a2 setThemeDimension2:*(a1 + 32)];
  v4 = *(a1 + 40);

  return [a2 setThemeAppearance:v4];
}

- (id)_dataWithName:(id)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 memoryClass:(unint64_t)a6 graphicsClass:(unint64_t)a7 appearanceIdentifier:(int64_t)a8 graphicsFallBackOrder:(id)a9 deviceSubtypeFallBackOrder:(id)a10
{
  v23[0] = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __150__CUICatalog__dataWithName_deviceIdiom_deviceSubtype_memoryClass_graphicsClass_appearanceIdentifier_graphicsFallBackOrder_deviceSubtypeFallBackOrder___block_invoke;
  v22[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v22[4] = a8;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a4 deviceIdiom:a5 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:a6 graphicsClass:a7 graphicsFallBackOrder:a9 deviceSubtypeFallBackOrder:a10 locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v22];
  if (result || (v21[0] = _NSConcreteStackBlock, v21[1] = 3221225472, v21[2] = __150__CUICatalog__dataWithName_deviceIdiom_deviceSubtype_memoryClass_graphicsClass_appearanceIdentifier_graphicsFallBackOrder_deviceSubtypeFallBackOrder___block_invoke_2, v21[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l, v21[4] = a8, (result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a4 deviceIdiom:a5 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:0.0 sizeClassVertical:0 memoryClass:a6 graphicsClass:a7 graphicsFallBackOrder:a9 deviceSubtypeFallBackOrder:a10 locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v21]) != 0))
  {
    v18 = result;
    v19 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:v23];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v20 = [[CUINamedData alloc] initWithName:a3 usingRenditionKey:v18 fromTheme:v19];
      [(CUINamedLookup *)v20 setRepresentsOnDemandContent:v23[0]];
      return v20;
    }
  }

  return result;
}

- (id)dataWithName:(id)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 memoryClass:(unint64_t)a6 graphicsClass:(unint64_t)a7 appearanceIdentifier:(int64_t)a8 graphicsFallBackOrder:(id)a9 deviceSubtypeFallBackOrder:(id)a10
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v17 = [(CUICatalog *)self _dataWithName:a3 deviceIdiom:a4 deviceSubtype:a5 memoryClass:a6 graphicsClass:a7 appearanceIdentifier:a8 graphicsFallBackOrder:a9 deviceSubtypeFallBackOrder:a10];
  kdebug_trace();
  return v17;
}

- (id)dataWithName:(id)a3 appearanceName:(id)a4
{
  v6 = 0;
  if (self && a4)
  {
    v6 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self dataWithName:a3 deviceIdiom:__getDeviceTraits___deviceIdiom deviceSubtype:__getDeviceTraits___deviceSubtype memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass appearanceIdentifier:v6 graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder];
}

- (id)textStyleWithName:(id)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 displayGamut:(int64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8 appearanceName:(id)a9
{
  v16 = 0;
  if (self && a9)
  {
    v16 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __124__CUICatalog_textStyleWithName_deviceIdiom_deviceSubtype_displayGamut_sizeClassHorizontal_sizeClassVertical_appearanceName___block_invoke;
  v21[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v21[4] = v16;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a4 deviceIdiom:a5 deviceSubtype:a6 displayGamut:0 layoutDirection:a7 sizeClassHorizontal:1.0 sizeClassVertical:a8 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v21];
  if (result)
  {
    v18 = result;
    v20 = 0;
    v19 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v20];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return [[CUITextStyle alloc] initWithName:a3 usingRenditionKey:v18 fromTheme:v19];
    }
  }

  return result;
}

- (id)textStyleWithName:(id)a3 displayGamut:(int64_t)a4 appearanceName:(id)a5
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v8 = __getDeviceTraits___deviceIdiom;
  v9 = __getDeviceTraits___deviceSubtype;

  return [(CUICatalog *)self textStyleWithName:a3 deviceIdiom:v8 deviceSubtype:v9 displayGamut:a4 sizeClassHorizontal:0 sizeClassVertical:0];
}

- (id)_namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 displayGamut:(int64_t)a6 deviceSubtype:(unint64_t)a7 memoryClass:(unint64_t)a8 graphicsClass:(unint64_t)a9 graphicsFallBackOrder:(id)a10 deviceSubtypeFallBackOrder:(id)a11
{
  v24 = 0;
  result = [CUICatalog _resolvedRenditionKeyForName:"_resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:" scaleFactor:a3 deviceIdiom:a5 deviceSubtype:a7 displayGamut:a4 layoutDirection:0 sizeClassHorizontal:a8 sizeClassVertical:a9 memoryClass:a10 graphicsClass:a11 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:sel__baseAtlasKeyForName_ locale:0 withBaseKeySelector:? adjustRenditionKeyWithBlock:?];
  if (result || (result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:a7 deviceSubtype:a6 displayGamut:0 layoutDirection:0 sizeClassHorizontal:0.0 sizeClassVertical:0 memoryClass:a8 graphicsClass:a9 graphicsFallBackOrder:a10 deviceSubtypeFallBackOrder:a11 locale:0 withBaseKeySelector:sel__baseAtlasKeyForName_ adjustRenditionKeyWithBlock:0]) != 0)
  {
    v18 = result;
    v19 = a3;
    v20 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:0 deviceIdiom:0 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__baseAtlasContentsKeyForName_ adjustRenditionKeyWithBlock:0];
    v21 = [(CUICatalog *)self _storageRefForRendition:v18 representsODRContent:&v24];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v22 = [[CUINamedImageAtlas alloc] initWithName:v19 usingRenditionKey:v18 withContents:v20 contentsFromCatalog:self fromTheme:v21 withSourceThemeRef:[(CUICatalog *)self _themeRef]];
      [(CUINamedLookup *)v22 setRepresentsOnDemandContent:v24];
      return v22;
    }
  }

  return result;
}

- (id)namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 displayGamut:(int64_t)a6 deviceSubtype:(unint64_t)a7 memoryClass:(unint64_t)a8 graphicsClass:(unint64_t)a9 graphicsFallBackOrder:(id)a10 deviceSubtypeFallBackOrder:(id)a11
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v19 = [(CUICatalog *)self _namedImageAtlasWithName:a3 scaleFactor:a5 deviceIdiom:a6 displayGamut:a7 deviceSubtype:a8 memoryClass:a9 graphicsClass:a4 graphicsFallBackOrder:a10 deviceSubtypeFallBackOrder:a11];
  kdebug_trace();
  return v19;
}

- (id)namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self namedImageAtlasWithName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceDisplayGamut displayGamut:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceMemoryClass memoryClass:__getDeviceTraits___deviceGraphicsClass graphicsClass:a4 graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder];
}

- (id)namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  if (__getDeviceTraits___deviceIdiom == a5)
  {
    v9 = __getDeviceTraits___deviceSubtype;
  }

  else
  {
    v9 = 0;
  }

  return [(CUICatalog *)self namedImageAtlasWithName:a3 scaleFactor:a5 deviceIdiom:__getDeviceTraits___deviceDisplayGamut displayGamut:v9 deviceSubtype:__getDeviceTraits___deviceMemoryClass memoryClass:__getDeviceTraits___deviceGraphicsClass graphicsClass:a4 graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder];
}

- (id)namedImageAtlasWithName:(id)a3 scaleFactor:(double)a4 displayGamut:(unint64_t)a5
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self namedImageAtlasWithName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:a5 displayGamut:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceMemoryClass memoryClass:__getDeviceTraits___deviceGraphicsClass graphicsClass:a4 graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder];
}

- (id)parentNamedImageAtlasForImageNamed:(id)a3 scaleFactor:(double)a4 displayGamut:(unint64_t)a5
{
  v16 = 0;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:a5 displayGamut:0 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:0];
  if (result)
  {
    v10 = result;
    v11 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v16];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && (v13 = _LookupStructuredThemeProvider(v11, v12), v14 = [v13 renditionWithKey:objc_msgSend(v10 usingKeySignature:{"keyList"), 0}], objc_msgSend(v14, "isInternalLink")) && (v15 = objc_msgSend(v14, "linkingToRendition"), objc_msgSend(v15, "themeElement") == 9) && objc_msgSend(v15, "themePart") == 181)
    {
      return [v13 renditionNameForKeyList:{objc_msgSend(v15, "keyList")}];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)parentNamedImageAtlastForImageNamed:(id)a3 scaleFactor:(double)a4
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v7 = __getDeviceTraits___deviceDisplayGamut;

  return [(CUICatalog *)self parentNamedImageAtlasForImageNamed:a3 scaleFactor:v7 displayGamut:a4];
}

- (void)preloadNamedAtlasWithScaleFactor:(double)a3 andNames:(id)a4 completionHandler:(id)a5
{
  global_queue = dispatch_get_global_queue(17, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__CUICatalog_preloadNamedAtlasWithScaleFactor_andNames_completionHandler___block_invoke;
  v10[3] = &unk_1E7257DA0;
  v10[4] = a4;
  v10[5] = self;
  *&v10[7] = a3;
  v10[6] = a5;
  dispatch_async(global_queue, v10);
}

void __74__CUICatalog_preloadNamedAtlasWithScaleFactor_andNames_completionHandler___block_invoke(uint64_t a1)
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v2 = __getDeviceTraits___deviceIdiom;
  v27 = __getDeviceTraits___deviceDisplayGamut;
  v28 = __getDeviceTraits___deviceSubtype;
  v25 = __getDeviceTraits___deviceGraphicsClass;
  v26 = __getDeviceTraits___deviceMemoryClass;
  v23 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  v24 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  v3 = objc_alloc_init(NSMutableArray);
  v20 = objc_alloc_init(NSMutableArray);
  callBacks.version = 0;
  callBacks.retain = __blockSetRetain;
  callBacks.copyDescription = 0;
  callBacks.equal = 0;
  callBacks.release = __blockSetRelease;
  v39 = kCGImageBlockFormatRequest;
  v40 = kCGImageBlockFormatBGRx8;
  [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v4 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &callBacks);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v29 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v29)
  {
    v22 = *v32;
    v18 = v2;
    v19 = v3;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = [*(a1 + 40) _resolvedRenditionKeyForName:v6 scaleFactor:v2 deviceIdiom:v28 deviceSubtype:v27 displayGamut:0 layoutDirection:0 sizeClassHorizontal:*(a1 + 56) sizeClassVertical:0 memoryClass:v26 graphicsClass:v25 graphicsFallBackOrder:v24 deviceSubtypeFallBackOrder:v23 locale:0 withBaseKeySelector:sel__baseAtlasKeyForName_ adjustRenditionKeyWithBlock:0];
        if (v7 && (v8 = v7, v30 = 0, v9 = [*(a1 + 40) _resolvedRenditionKeyForName:v6 scaleFactor:0 deviceIdiom:0 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__baseAtlasContentsKeyForName_ adjustRenditionKeyWithBlock:0], v10 = objc_msgSend(*(a1 + 40), "_storageRefForRendition:representsODRContent:", v8, &v30), v10 != 0x7FFFFFFFFFFFFFFFLL))
        {
          v11 = -[CUINamedImageAtlas initWithName:usingRenditionKey:withContents:contentsFromCatalog:fromTheme:withSourceThemeRef:]([CUINamedImageAtlas alloc], "initWithName:usingRenditionKey:withContents:contentsFromCatalog:fromTheme:withSourceThemeRef:", v6, v8, v9, *(a1 + 40), v10, [*(a1 + 40) _themeRef]);
          [(CUINamedLookup *)v11 setRepresentsOnDemandContent:v30];
          v12 = [(CUINamedImageAtlas *)v11 images];
          Count = CFArrayGetCount(v12);
          if (Count >= 1)
          {
            v14 = Count;
            for (j = 0; j != v14; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v12, j);
              if (CGImageGetImageProvider())
              {
                CGImageGetWidth(ValueAtIndex);
                CGImageGetHeight(ValueAtIndex);
                v17 = CGImageProviderCopyImageBlockSetWithOptions();
                CFArrayAppendValue(v4, v17);
                CGImageBlockSetRelease();
              }
            }
          }

          [v20 addObject:v11];

          v2 = v18;
          v3 = v19;
        }

        else
        {
          [v3 addObject:v6];
        }
      }

      v29 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v29);
  }

  if ([v3 count])
  {
    v36 = @"missing keys";
    v37 = v3;
    [NSError errorWithDomain:@"AssetCatalog" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1]];
  }

  (*(*(a1 + 48) + 16))();
  CFAutorelease(v4);
}

- (id)_baseVectorGlyphForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:59];

    return v4;
  }

  return result;
}

- (void)_resolveInterpolationSourceRenditionKeysUltralight:(id *)a3 regular:(id *)a4 black:(id *)a5 forName:(id)a6 scaleFactor:(double)a7 deviceIdiom:(int64_t)a8 deviceSubtype:(unint64_t)a9 displayGamut:(int64_t)a10 layoutDirection:(int64_t)a11 sizeClassHorizontal:(int64_t)a12 sizeClassVertical:(int64_t)a13 memoryClass:(unint64_t)a14 graphicsClass:(unint64_t)a15 graphicsFallBackOrder:(id)a16 deviceSubtypeFallBackOrder:(id)a17 appearanceIdentifier:(int64_t)a18 locale:(id)a19
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke;
  v29[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v29[4] = a18;
  *a3 = [CUICatalog _resolvedRenditionKeyForName:"_resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:" scaleFactor:a6 deviceIdiom:a8 deviceSubtype:a9 displayGamut:a13 layoutDirection:a14 sizeClassHorizontal:a15 sizeClassVertical:a16 memoryClass:a17 graphicsClass:a19 graphicsFallBackOrder:sel__baseVectorGlyphForName_ deviceSubtypeFallBackOrder:v29 locale:? withBaseKeySelector:? adjustRenditionKeyWithBlock:?];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke_2;
  v28[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v28[4] = a18;
  *a4 = [(CUICatalog *)self _resolvedRenditionKeyForName:a6 scaleFactor:a8 deviceIdiom:a9 deviceSubtype:a10 displayGamut:a11 layoutDirection:a12 sizeClassHorizontal:a7 sizeClassVertical:a13 memoryClass:a14 graphicsClass:a15 graphicsFallBackOrder:a16 deviceSubtypeFallBackOrder:a17 locale:a19 withBaseKeySelector:sel__baseVectorGlyphForName_ adjustRenditionKeyWithBlock:v28];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke_3;
  v27[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v27[4] = a18;
  *a5 = [(CUICatalog *)self _resolvedRenditionKeyForName:a6 scaleFactor:a8 deviceIdiom:a9 deviceSubtype:a10 displayGamut:a11 layoutDirection:a12 sizeClassHorizontal:a7 sizeClassVertical:a13 memoryClass:a14 graphicsClass:a15 graphicsFallBackOrder:a16 deviceSubtypeFallBackOrder:a17 locale:a19 withBaseKeySelector:sel__baseVectorGlyphForName_ adjustRenditionKeyWithBlock:v27];
}

id __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke(uint64_t a1, void *a2)
{
  [a2 setThemeAppearance:*(a1 + 32)];
  [a2 setThemeGlyphSize:1];

  return [a2 setThemeGlyphWeight:1];
}

id __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setThemeAppearance:*(a1 + 32)];
  [a2 setThemeGlyphSize:1];

  return [a2 setThemeGlyphWeight:4];
}

id __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 setThemeAppearance:*(a1 + 32)];
  [a2 setThemeGlyphSize:1];

  return [a2 setThemeGlyphWeight:9];
}

- (void)finalizeNamedVectorGlyphLookupWithResult:(id)a3 name:(id)a4 glyphContinuousSize:(double)a5 glyphContinuousWeight:(double)a6 pointSize:(double)a7
{
  if (!a3 && [a4 length] == 2)
  {
    [a4 getCharacters:&v14];
    if ((v14 & 0xFC00) == 0xD800 && (v15 & 0xFC00) == 0xDC00 && ((v15 + (v14 << 10) + 2106368) & 0x3F0000) == 0x100000)
    {
      _CUILog(4, "CoreUI: Symbol asset lookup attempted with invalid name '%@'. Argument contains Unicode codepoint copied from SF Symbols app. Please use full symbol name instead!", v8, v9, v10, v11, v12, v13, a4);
    }
  }

  kdebug_trace();
}

- (id)namedVectorGlyphWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 layoutDirection:(int64_t)a6 glyphContinuousSize:(double)a7 glyphContinuousWeight:(double)a8 glyphPointSize:(double)a9 appearanceName:(id)a10 locale:(id)a11
{
  v17 = a3;
  _CUILog(3, "[CUICatalog namedVectorGlyphWithName:%@]", a3, a5, a6, a10, a11, v11, a3);
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v20 = _LookupStructuredThemeProvider(self->_storageRef, v19);
  v21 = [(CUICatalog *)self _baseVectorGlyphForName:v17];
  if (v21)
  {
    v22 = v21;
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && (v23 = [v20 aliasForName:v17]) != 0)
  {
    v24 = v23;
    v22 = [(CUICatalog *)self _baseVectorGlyphForName:v23];
    v17 = v24;
  }

  else
  {
    v22 = 0;
  }

  v26 = [objc_msgSend(v20 "themeStore")];
  if (a10)
  {
    v56 = [_LookupStructuredThemeProvider(self->_storageRef v25)];
  }

  else
  {
    v56 = 0;
  }

  v64 = 0;
  if (a4 <= 0.0 || a9 <= 0.0)
  {
    [objc_msgSend(-[CUICatalog _themeStore](self "_themeStore")];
    _CUILog(4, "CoreUI: [CUICatalog namedVectorGlyphWithName:scaleFactor:deviceIdiom:layoutDirection:glyphSize:glyphWeight:glyphPointSize:appearanceName:] '%@' called with scaleFactor == %f glyphPointSize == %f at '%@'", v30, v31, v32, v33, v34, v35, v17);
    [(CUICatalog *)self finalizeNamedVectorGlyphLookupWithResult:0 name:v17 glyphContinuousSize:a7 glyphContinuousWeight:a8 pointSize:a9];
    return 0;
  }

  else
  {
    if (__getDeviceTraits___getDeviceTraits_once != -1)
    {
      [CUICatalog _recognitionImageWithName:];
    }

    v54 = __getDeviceTraits___deviceMemoryClass;
    v55 = __getDeviceTraits___deviceDisplayGamut;
    v53 = __getDeviceTraits___deviceGraphicsClass;
    v27 = __getDeviceTraits___deviceGraphicsFallbackOrder;
    if (__getDeviceTraits___deviceIdiom == a5)
    {
      v28 = __getDeviceTraits___deviceSubtype;
      v29 = __getDeviceTraits___deviceSubtypeFallbackOrder;
    }

    else
    {
      v65 = [NSNumber numberWithInt:0];
      v29 = [NSArray arrayWithObjects:&v65 count:1];
      v28 = 0;
    }

    v37 = 0;
    while (*&kCoreThemeContinuousGlyphSizes[v37] != a7)
    {
      if (++v37 == 3)
      {
        v38 = 0;
        goto LABEL_23;
      }
    }

    v38 = kCoreThemeDiscreteGlyphSizes[v37];
LABEL_23:
    v39 = 0;
    while (*&kCoreThemeContinuousGlyphWeights[v39] != a8)
    {
      if (++v39 == 9)
      {
        v40 = 0;
        goto LABEL_28;
      }
    }

    v40 = kCoreThemeDiscreteGlyphWeights[v39];
LABEL_28:
    if (v40)
    {
      v41 = v38 == 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = !v41;
    v43 = off_1E7258000;
LABEL_35:
    v52 = v43[317];
    while (1)
    {
      if (v42)
      {
        if ([v26 containsVectorGlyphWithWeight:v40 size:v38])
        {
          v63[0] = _NSConcreteStackBlock;
          v63[1] = 3221225472;
          v63[2] = __158__CUICatalog_namedVectorGlyphWithName_scaleFactor_deviceIdiom_layoutDirection_glyphContinuousSize_glyphContinuousWeight_glyphPointSize_appearanceName_locale___block_invoke;
          v63[3] = &__block_descriptor_56_e25_v16__0__CUIRenditionKey_8l;
          v63[4] = v56;
          v63[5] = v38;
          v63[6] = v40;
          v44 = [(CUICatalog *)self _resolvedRenditionKeyForName:v17 scaleFactor:a5 deviceIdiom:v28 deviceSubtype:v55 displayGamut:a6 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 memoryClass:v54 graphicsClass:v53 graphicsFallBackOrder:v27 deviceSubtypeFallBackOrder:v29 locale:a11 withBaseKeySelector:v52 adjustRenditionKeyWithBlock:v63];
          if (v44)
          {
            break;
          }
        }
      }

      if ([v26 containsVectorGlyphInterpolationSources])
      {
        v45 = [(CUICatalog *)self _storageRefForRendition:0 representsODRContent:&v64];
        v61 = 0;
        v62 = 0;
        v60 = 0;
        [(CUICatalog *)self _resolveInterpolationSourceRenditionKeysUltralight:&v62 regular:&v61 black:&v60 forName:v17 scaleFactor:a5 deviceIdiom:v28 deviceSubtype:a4 displayGamut:v55 layoutDirection:a6 sizeClassHorizontal:0 sizeClassVertical:0 memoryClass:v54 graphicsClass:v53 graphicsFallBackOrder:v27 deviceSubtypeFallBackOrder:v29 appearanceIdentifier:v56 locale:a11];
        if (v62)
        {
          if (v61)
          {
            if (v60)
            {
              v46 = [CUINamedVectorGlyph alloc];
              v47 = [(CUINamedVectorGlyph *)v46 initWithName:v17 scaleFactor:a5 deviceIdiom:v61 pointSize:v62 continuousWeight:v60 continuousSize:self interpolatedFromRegular:a4 ultralight:a9 black:a8 fromCatalog:a7 themeRef:v45 locale:a11];
              if (v47)
              {
                goto LABEL_52;
              }
            }
          }
        }

        if ((v42 & 1) == 0)
        {
          v38 = _snapToDiscreteSizeForSize(a7);
          v40 = _snapToDiscreteWeightForWeight(a8);
          v42 = 1;
          v43 = off_1E7258000;
          goto LABEL_35;
        }
      }

      v41 = v40 == 4;
      v40 = 4;
      if (v41)
      {
        goto LABEL_50;
      }
    }

    v48 = v44;
    v49 = [(CUICatalog *)self _storageRefForRendition:v44 representsODRContent:&v64];
    if (v49 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_50:
      v36 = 0;
      goto LABEL_53;
    }

    v47 = [[CUINamedVectorGlyph alloc] initWithName:v17 scaleFactor:a5 deviceIdiom:self pointSize:v48 fromCatalog:v49 usingRenditionKey:a11 themeRef:a4 locale:a9];
LABEL_52:
    v36 = v47;
    [(CUINamedVectorGlyph *)v47 setRepresentsOnDemandContent:v64];
    v50 = v36;
LABEL_53:
    [(CUICatalog *)self finalizeNamedVectorGlyphLookupWithResult:v36 name:v17 glyphContinuousSize:a7 glyphContinuousWeight:a8 pointSize:a9];
  }

  return v36;
}

id __158__CUICatalog_namedVectorGlyphWithName_scaleFactor_deviceIdiom_layoutDirection_glyphContinuousSize_glyphContinuousWeight_glyphPointSize_appearanceName_locale___block_invoke(void *a1, void *a2)
{
  [a2 setThemeAppearance:a1[4]];
  [a2 setThemeGlyphSize:a1[5]];
  v4 = a1[6];

  return [a2 setThemeGlyphWeight:v4];
}

- (id)allImageNames
{
  v2 = [(CUICatalog *)self _themeStore];

  return [v2 allImageNames];
}

- (id)imagesWithName:(id)a3
{
  v4 = [(CUICatalog *)self _themeStore];

  return [v4 imagesWithName:a3];
}

- (BOOL)containsLookupForName:(id)a3
{
  if ([-[CUICatalog _themeStore](self "_themeStore")])
  {
    return 1;
  }

  v6 = [-[CUICatalog _themeStore](self "_themeStore")];
  v7 = [v6 indexOfObject:a3];
  if (v6)
  {
    v8 = v7 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  return !v8;
}

- (void)enumerateNamedLookupsUsingBlock:(id)a3
{
  v5 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  if (objc_opt_respondsToSelector())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke;
    v6[3] = &unk_1E7257E58;
    v6[4] = v5;
    v6[6] = self;
    v6[7] = a3;
    [objc_msgSend(v5 "themeStore")];
  }
}

void __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = -[CUIThemeRendition initWithCSIData:forKey:version:]([CUIThemeRendition alloc], "initWithCSIData:forKey:version:", a3, a2, [*(a1 + 32) distilledInCoreUIVersion]);
  v6 = [[CUIRenditionKey alloc] initWithKeyList:a2];
  v7 = [*(a1 + 40) renditionNameForKeyList:a2];
  if (![v7 length])
  {
    v7 = [(CUIThemeRendition *)v5 name];
  }

  v8 = [(CUIThemeRendition *)v5 type];
  switch(v8)
  {
    case 0x3E8uLL:
      if ([(CUIThemeRendition *)v5 unslicedImage])
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    case 0x3E9uLL:
    case 0x3EBuLL:
    case 0x3EDuLL:
    case 0x3EEuLL:
    case 0x3EFuLL:
    case 0x3F0uLL:
    case 0x3F4uLL:
    case 0x3F8uLL:
    case 0x3FCuLL:
      goto LABEL_11;
    case 0x3EAuLL:
      v12 = [CUINamedLayerStack alloc];
      v16 = *(a1 + 48);
      v14 = *(v16 + 8);
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke_2;
      v33 = &unk_1E7257DE8;
      v34 = v16;
      v35 = a2;
      v15 = &v30;
      goto LABEL_27;
    case 0x3ECuLL:
      if (!CUIRenditionKeyValueForAttribute(a2, 17))
      {
        goto LABEL_7;
      }

      v9 = CUINamedImageAtlas;
      goto LABEL_8;
    case 0x3F1uLL:
      v9 = CUINamedColor;
      goto LABEL_8;
    case 0x3F2uLL:
      v9 = CUINamedMultisizeImageSet;
      goto LABEL_8;
    case 0x3F3uLL:
      v9 = CUINamedModel;
      goto LABEL_8;
    case 0x3F5uLL:
      v9 = CUINamedRecognitionGroup;
      goto LABEL_8;
    case 0x3F6uLL:
      v9 = CUINamedRecognitionObject;
      goto LABEL_8;
    case 0x3F7uLL:
      v9 = CUITextStyle;
      goto LABEL_8;
    case 0x3F9uLL:
      v9 = CUINamedVectorGlyph;
      goto LABEL_8;
    case 0x3FAuLL:
      v12 = [CUINamedSolidLayerStack alloc];
      v17 = *(a1 + 48);
      v14 = *(v17 + 8);
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke_3;
      v27 = &unk_1E7257DE8;
      v28 = v17;
      v29 = a2;
      v15 = &v24;
      goto LABEL_27;
    case 0x3FBuLL:
      v12 = [CUINamedIconLayerStack alloc];
      v13 = *(a1 + 48);
      v14 = *(v13 + 8);
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke_4;
      v21 = &unk_1E7257E30;
      v22 = v13;
      v23 = a2;
      v15 = &v18;
LABEL_27:
      v10 = [(CUINamedLayerStack *)v12 initWithName:v7 usingRenditionKey:v6 fromTheme:v14 resolvingWithBlock:v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35];
      goto LABEL_9;
    case 0x3FDuLL:
      v9 = CUINamedGradient;
      goto LABEL_8;
    default:
      if (v8 >= 6)
      {
        if (v8 != 9)
        {
          goto LABEL_11;
        }

LABEL_13:
        v9 = CUINamedData;
      }

      else
      {
LABEL_7:
        v9 = CUINamedImage;
      }

LABEL_8:
      v10 = [[v9 alloc] initWithName:v7 usingRenditionKey:v6 fromTheme:*(*(a1 + 48) + 8)];
LABEL_9:
      v11 = v10;
      if (v10)
      {
        (*(*(a1 + 56) + 16))();
      }

LABEL_11:

      return;
  }
}

id __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[1];
  v6 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 12);
  v7 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 15);
  v8 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 16);
  v9 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 24);
  v10 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 4);
  v11 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 20);
  return [v4 _resolvedRenditionKeyFromThemeRef:v5 withBaseKey:a2 scaleFactor:v7 deviceIdiom:v8 deviceSubtype:v9 displayGamut:v10 layoutDirection:v6 sizeClassHorizontal:v11 sizeClassVertical:CUIRenditionKeyValueForAttribute(*(a1 + 40) memoryClass:21) graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 adjustRenditionKeyWithBlock:{0, 0}];
}

id __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4[1];
  v6 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 12);
  v7 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 15);
  v8 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 16);
  v9 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 24);
  v10 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 4);
  v11 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 20);
  return [v4 _resolvedRenditionKeyFromThemeRef:v5 withBaseKey:a2 scaleFactor:v7 deviceIdiom:v8 deviceSubtype:v9 displayGamut:v10 layoutDirection:v6 sizeClassHorizontal:v11 sizeClassVertical:CUIRenditionKeyValueForAttribute(*(a1 + 40) memoryClass:21) graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 adjustRenditionKeyWithBlock:{0, 0}];
}

id __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke_4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 12);
  if (a3 == -1.0)
  {
    a3 = v6;
  }

  v7 = *(a1 + 32);
  v8 = v7[1];
  v9 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 15);
  v10 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 16);
  v11 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 24);
  v12 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 4);
  v13 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 20);
  v14 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 21);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke_5;
  v23[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v23[4] = *(a1 + 40);
  result = [v7 _resolvedRenditionKeyFromThemeRef:v8 withBaseKey:a2 scaleFactor:v9 deviceIdiom:v10 deviceSubtype:v11 displayGamut:v12 layoutDirection:a3 sizeClassHorizontal:v13 sizeClassVertical:v14 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 adjustRenditionKeyWithBlock:v23];
  if (!result)
  {
    v16 = *(a1 + 32);
    v17 = v16[1];
    v18 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 15);
    v19 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 16);
    v20 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 24);
    v21 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 4);
    v22 = CUIRenditionKeyValueForAttribute(*(a1 + 40), 20);
    return [v16 _resolvedRenditionKeyFromThemeRef:v17 withBaseKey:a2 scaleFactor:v18 deviceIdiom:v19 deviceSubtype:v20 displayGamut:v21 layoutDirection:a3 sizeClassHorizontal:v22 sizeClassVertical:CUIRenditionKeyValueForAttribute(*(a1 + 40) memoryClass:21) graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 adjustRenditionKeyWithBlock:{0, &__block_literal_global_81}];
  }

  return result;
}

id __46__CUICatalog_enumerateNamedLookupsUsingBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = CUIRenditionKeyValueForAttribute(*(a1 + 32), 7);

  return [a2 setThemeAppearance:v3];
}

- (CGPDFDocument)pdfDocumentWithName:(id)a3 appearanceName:(id)a4
{
  v6 = 0;
  v14 = 0;
  if (self && a4)
  {
    v6 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __49__CUICatalog_pdfDocumentWithName_appearanceName___block_invoke;
  v13[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v13[4] = v6;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:0 deviceIdiom:0 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:0.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v13];
  if (result)
  {
    v8 = result;
    v9 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v14];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(CUICatalog *)self namedVectorImageWithName:a3 scaleFactor:1 displayGamut:0 layoutDirection:CUIMaxScaleForTargetPlatform([(CUICatalog *)self platform])];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v12 = _LookupStructuredThemeProvider(v9, v10);
      if (-[CGPDFDocument themeScale](v8, "themeScale") >= 2 && ([v12 canGetRenditionWithKey:{-[CGPDFDocument keyList](v8, "keyList")}] & 1) == 0)
      {
        [(CGPDFDocument *)v8 setThemeScale:0];
      }

      v11 = [v12 renditionWithKey:{-[CGPDFDocument keyList](v8, "keyList")}];
      if ([v11 pixelFormat] != 1346651680)
      {
        return 0;
      }
    }

    return [v11 pdfDocument];
  }

  return result;
}

- (id)namedVectorImageWithName:(id)a3 scaleFactor:(double)a4 displayGamut:(int64_t)a5 layoutDirection:(int64_t)a6 appearanceName:(id)a7 locale:(id)a8
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self namedVectorImageWithName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:a5 displayGamut:a6 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 appearanceName:a7 locale:a8];
}

- (id)_baseVectorRenditionKey:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:42];

    return v4;
  }

  return result;
}

- (id)_namedVectorImageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceIdentifier:(int64_t)a11 locale:(id)a12
{
  v18 = a3;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v61 = 0;
  if (__getDeviceTraits___deviceIdiom == a5 && __getDeviceTraits___deviceSubtype == a6)
  {
    v21 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  }

  else
  {
    v62 = [NSNumber numberWithInt:0];
    v21 = [NSArray arrayWithObjects:&v62 count:1];
  }

  _CUILog(3, "[CUICatalog _namedVectorImageWithName:%@]", a3, a5, a6, a7, a8, a9, v18);
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = __173__CUICatalog__namedVectorImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_appearanceIdentifier_locale___block_invoke;
  v60[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v60[4] = a11;
  v58 = a8;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:v18 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:a8 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:v21 locale:a12 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v60, a11, v21];
  if (result)
  {
    v23 = result;
    v57 = a7;
    v24 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v61];
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v24;
      v56 = v18;
      v30 = _LookupStructuredThemeProvider(self->_storageRef, v25);
      v55 = [v30 distilledInCoreUIVersion];
      v31 = [v30 renditionWithKey:{objc_msgSend(v23, "keyList")}];
      if (a4 == 0.0)
      {
        v32 = [v31 pixelFormat];
        if (v32 == 1398163232)
        {
          v33 = OBJC_CLASS___CUINamedVectorSVGImage_ptr;
        }

        else
        {
          if (v32 != 1346651680)
          {
            goto LABEL_30;
          }

          v33 = OBJC_CLASS___CUINamedVectorPDFImage_ptr;
        }

        v44 = objc_alloc(*v33);
        v45 = v56;
        v46 = v23;
        v47 = v29;
LABEL_28:
        v48 = [v44 initWithName:v45 usingRenditionKey:v46 fromTheme:v47];
LABEL_31:
        [v48 setRepresentsOnDemandContent:v61];
        return v48;
      }

      v18 = v56;
      if (v55 >= 0x1E5 && ([v31 preservedVectorRepresentation] & 1) == 0)
      {
        _CUILog(3, "[CUICatalog _namedVectorImageWithName:%@] stopped]", v38, v39, v40, v41, v42, v43, v56);
        return 0;
      }
    }

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = __173__CUICatalog__namedVectorImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_appearanceIdentifier_locale___block_invoke_2;
    v59[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
    v59[4] = a11;
    result = [(CUICatalog *)self _resolvedRenditionKeyForName:v18 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:v57 displayGamut:v58 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:v21 locale:a12 withBaseKeySelector:sel__baseVectorRenditionKey_ adjustRenditionKeyWithBlock:v59];
    if (!result)
    {
      return result;
    }

    v26 = result;
    v27 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v61];
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v34 = v27;
    v35 = [_LookupStructuredThemeProvider(v27 v28)];
    v36 = [v35 pixelFormat];
    if (v36 == 1346651680)
    {
      v37 = CUINamedVectorPDFImage;
      goto LABEL_27;
    }

    if (v36 == 1398163232)
    {
      v37 = CUINamedVectorSVGImage;
LABEL_27:
      v44 = [v37 alloc];
      v45 = v18;
      v46 = v26;
      v47 = v34;
      goto LABEL_28;
    }

    [v35 pixelFormat];
    _CUILog(4, "CoreUI: namedVectorImage '%@' has unknown pixelformat '%d'", v49, v50, v51, v52, v53, v54, v18);
LABEL_30:
    v48 = 0;
    goto LABEL_31;
  }

  return result;
}

- (id)namedVectorImageWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceName:(id)a11 locale:(id)a12
{
  v19 = 0;
  if (self && a11)
  {
    v19 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v20 = [(CUICatalog *)self _namedVectorImageWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:a8 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 appearanceIdentifier:v19 locale:a12];
  kdebug_trace();
  return v20;
}

- (id)_baseStackKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:181];

    return v4;
  }

  return result;
}

- (id)_layerStackWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8
{
  v26[0] = 0;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v15 = __getDeviceTraits___deviceDisplayGamut;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:a7 sizeClassHorizontal:a4 sizeClassVertical:a8 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__baseStackKeyForName_ adjustRenditionKeyWithBlock:0];
  if (result)
  {
    v17 = result;
    v18 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:v26];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v20 = v18;
      if ([objc_msgSend(_LookupStructuredThemeProvider(self->_storageRef v19)] == 1002)
      {
        v21 = [CUINamedLayerStack alloc];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = __110__CUICatalog__layerStackWithName_scaleFactor_deviceIdiom_deviceSubtype_sizeClassHorizontal_sizeClassVertical___block_invoke;
        v25[3] = &unk_1E7257E80;
        v25[4] = self;
        v25[5] = v20;
        *&v25[6] = a4;
        v25[7] = a5;
        v25[8] = a6;
        v25[9] = v15;
        v25[10] = a7;
        v25[11] = a8;
        v22 = v25;
      }

      else
      {
        v21 = [CUINamedSolidLayerStack alloc];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = __110__CUICatalog__layerStackWithName_scaleFactor_deviceIdiom_deviceSubtype_sizeClassHorizontal_sizeClassVertical___block_invoke_2;
        v24[3] = &unk_1E7257E80;
        v24[4] = self;
        v24[5] = v20;
        *&v24[6] = a4;
        v24[7] = a5;
        v24[8] = a6;
        v24[9] = v15;
        v24[10] = a7;
        v24[11] = a8;
        v22 = v24;
      }

      v23 = [(CUINamedLayerStack *)v21 initWithName:a3 usingRenditionKey:v17 fromTheme:v20 resolvingWithBlock:v22];
      [(CUINamedLookup *)v23 setRepresentsOnDemandContent:v26[0]];
      return v23;
    }
  }

  return result;
}

- (id)layerStackWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v15 = [(CUICatalog *)self _layerStackWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 sizeClassHorizontal:a8 sizeClassVertical:a4];
  kdebug_trace();
  return v15;
}

- (id)_defaultLayerStackWithScaleFactor:(double)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 sizeClassHorizontal:(int64_t)a6 sizeClassVertical:(int64_t)a7
{
  v21 = 0;
  v13 = *(self + 82) & 6;
  if ((*(self + 82) & 6) == 0)
  {
    v14 = [objc_msgSend(_LookupStructuredThemeProvider(self->_storageRef a2)];
    if (CUIRenditionKeyHasIdentifier(v14, 24))
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    *(self + 82) = *(self + 82) & 0xF9 | v13;
  }

  v15 = v13 == 4;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:@"IGNORED_VALUE" scaleFactor:a4 deviceIdiom:a5 deviceSubtype:v15 displayGamut:0 layoutDirection:a6 sizeClassHorizontal:a3 sizeClassVertical:a7 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__defaultAssetRenditionKey_ adjustRenditionKeyWithBlock:0];
  if (result)
  {
    v17 = result;
    v18 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v21];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = __112__CUICatalog__defaultLayerStackWithScaleFactor_deviceIdiom_deviceSubtype_sizeClassHorizontal_sizeClassVertical___block_invoke;
      v20[3] = &unk_1E7257E80;
      v20[4] = self;
      v20[5] = v18;
      *&v20[6] = a3;
      v20[7] = a4;
      v20[8] = a5;
      v20[9] = v15;
      v20[10] = a6;
      v20[11] = a7;
      v19 = [[CUINamedLayerStack alloc] initWithName:0 usingRenditionKey:v17 fromTheme:v18 resolvingWithBlock:v20];
      [(CUINamedLookup *)v19 setRepresentsOnDemandContent:v21];
      return v19;
    }
  }

  return result;
}

id __112__CUICatalog__defaultLayerStackWithScaleFactor_deviceIdiom_deviceSubtype_sizeClassHorizontal_sizeClassVertical___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _resolvedRenditionKeyFromThemeRef:*(a1 + 40) withBaseKey:a2 scaleFactor:*(a1 + 56) deviceIdiom:*(a1 + 64) deviceSubtype:*(a1 + 72) displayGamut:0 layoutDirection:*(a1 + 48) sizeClassHorizontal:*(a1 + 80) sizeClassVertical:*(a1 + 88) memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 adjustRenditionKeyWithBlock:0];
  }

  else
  {
    return 0;
  }
}

- (id)defaultLayerStackWithScaleFactor:(double)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 sizeClassHorizontal:(int64_t)a6 sizeClassVertical:(int64_t)a7
{
  kdebug_trace();
  v13 = [(CUICatalog *)self _defaultLayerStackWithScaleFactor:a4 deviceIdiom:a5 deviceSubtype:a6 sizeClassHorizontal:a7 sizeClassVertical:a3];
  kdebug_trace();
  return v13;
}

- (id)_baseLayeredIconKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:245];

    return v4;
  }

  return result;
}

- (id)iconLayerStackWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(unint64_t)a7 appearanceName:(id)a8 locale:(id)a9
{
  v31 = 0;
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  _CUILog(3, "[CUICatalog iconLayerStackWithName:%@]", v17, v18, v19, v20, v21, v22, a3);
  v24 = 0;
  if (self && a8)
  {
    v24 = [_LookupStructuredThemeProvider(self->_storageRef v23)];
  }

  v33 = [NSNumber numberWithInt:0];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __110__CUICatalog_iconLayerStackWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_appearanceName_locale___block_invoke;
  v30[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v30[4] = v24;
  v25 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:0 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:[NSArray arrayWithObjects:? count:?], a9, sel__baseLayeredIconKeyForName_, v30];
  if (!v25 && v24)
  {
    v32 = [NSNumber numberWithInt:0];
    v25 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:0 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:[NSArray arrayWithObjects:? count:?], a9, sel__baseLayeredIconKeyForName_, 0];
  }

  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = [(CUICatalog *)self _storageRefForRendition:v25 representsODRContent:&v31];
  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __110__CUICatalog_iconLayerStackWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_appearanceName_locale___block_invoke_2;
  v29[3] = &unk_1E7257ED0;
  v29[5] = a9;
  v29[6] = v26;
  *&v29[7] = a4;
  v29[8] = a5;
  v29[9] = a6;
  v29[10] = a7;
  v29[11] = 5;
  v29[4] = self;
  v29[12] = v24;
  v27 = [[CUINamedIconLayerStack alloc] initWithName:a3 usingRenditionKey:v25 fromTheme:v26 resolvingWithBlock:v29];
  [(CUINamedLookup *)v27 setRepresentsOnDemandContent:v31];
  if (![(CUINamedIconLayerStack *)v27 _updateFromCatalog:self displayGamut:a7 deviceIdiom:a5 appearanceName:a8])
  {

LABEL_11:
    v27 = 0;
  }

  kdebug_trace();
  return v27;
}

id __110__CUICatalog_iconLayerStackWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_appearanceName_locale___block_invoke_2(double *a1, uint64_t a2, double a3)
{
  v3 = a3;
  v6 = *(a1 + 4);
  v7 = *(a1 + 6);
  v8 = a3;
  if (a3 == -1.0)
  {
    v8 = a1[7];
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = *(a1 + 10);
  v12 = *(a1 + 11);
  v24 = [NSNumber numberWithInt:0];
  v13 = [NSArray arrayWithObjects:&v24 count:1];
  v14 = *(a1 + 5);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __110__CUICatalog_iconLayerStackWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_appearanceName_locale___block_invoke_3;
  v22[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  *&v22[4] = a1[12];
  result = [v6 _resolvedRenditionKeyFromThemeRef:v7 withBaseKey:a2 scaleFactor:v9 deviceIdiom:v10 deviceSubtype:v11 displayGamut:v12 layoutDirection:v8 sizeClassHorizontal:0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:v13 locale:v14 adjustRenditionKeyWithBlock:v22];
  if (!result)
  {
    v16 = *(a1 + 4);
    v17 = *(a1 + 6);
    if (v3 == -1.0)
    {
      v3 = a1[7];
    }

    v18 = *(a1 + 8);
    v19 = *(a1 + 9);
    v20 = *(a1 + 10);
    v21 = *(a1 + 11);
    v23 = [NSNumber numberWithInt:0];
    return [v16 _resolvedRenditionKeyFromThemeRef:v17 withBaseKey:a2 scaleFactor:v18 deviceIdiom:v19 deviceSubtype:v20 displayGamut:v21 layoutDirection:v3 sizeClassHorizontal:0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:+[NSArray arrayWithObjects:count:](NSArray locale:"arrayWithObjects:count:" adjustRenditionKeyWithBlock:{&v23, 1), *(a1 + 5), &__block_literal_global_110}];
  }

  return result;
}

- (id)_defaultNamedAssetWithScaleFactor:(double)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 sizeClassHorizontal:(int64_t)a6 sizeClassVertical:(int64_t)a7
{
  v24 = 0;
  v25 = [NSNumber numberWithInt:0];
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:@"IGNORED_VALUE" scaleFactor:a4 deviceIdiom:a5 deviceSubtype:0 displayGamut:0 layoutDirection:a6 sizeClassHorizontal:a3 sizeClassVertical:a7 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:[NSArray arrayWithObjects:? count:?], 0, sel__defaultAssetRenditionKey_, 0];
  if (result)
  {
    v14 = result;
    v15 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v24];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v16 = v15;
      v17 = [[CUINamedLookup alloc] initWithName:0 usingRenditionKey:v14 fromTheme:v15];
      v18 = [(CUINamedLookup *)v17 _rendition];
      v19 = [(CUIThemeRendition *)v18 type];
      v20 = [(CUIThemeRendition *)v18 name];
      if (v19 == 1002 || v19 == 1018)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = __112__CUICatalog__defaultNamedAssetWithScaleFactor_deviceIdiom_deviceSubtype_sizeClassHorizontal_sizeClassVertical___block_invoke;
        v23[3] = &unk_1E7257EF8;
        v23[4] = self;
        v23[5] = v16;
        *&v23[6] = a3;
        v23[7] = a4;
        v23[8] = a5;
        v23[9] = a6;
        v23[10] = a7;
        v21 = [objc_alloc(objc_opt_class()) initWithName:v20 usingRenditionKey:v14 fromTheme:v16 resolvingWithBlock:v23];
      }

      else
      {
        v21 = [[CUINamedImage alloc] initWithName:v20 usingRenditionKey:v14 fromTheme:v16];
      }

      v22 = v21;

      [(CUINamedLookup *)v22 setRepresentsOnDemandContent:v24];
      return v22;
    }
  }

  return result;
}

- (id)defaultNamedAssetWithScaleFactor:(double)a3 deviceIdiom:(int64_t)a4 deviceSubtype:(unint64_t)a5 sizeClassHorizontal:(int64_t)a6 sizeClassVertical:(int64_t)a7
{
  kdebug_trace();
  v13 = [(CUICatalog *)self _defaultNamedAssetWithScaleFactor:a4 deviceIdiom:a5 deviceSubtype:a6 sizeClassHorizontal:a7 sizeClassVertical:a3];
  kdebug_trace();
  return v13;
}

- (id)namedLookupWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 sizeClassHorizontal:(int64_t)a7 sizeClassVertical:(int64_t)a8
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self namedLookupWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:a7 sizeClassHorizontal:a4 sizeClassVertical:a8];
}

- (id)_namedLookupWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceName:(id)a11 locale:(id)a12
{
  v54 = 0;
  _CUILog(3, "[CUICatalog _namedLookupWithName:%@]", a3, a5, a6, a7, a8, a9, a3);
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v19 = __getDeviceTraits___deviceMemoryClass;
  v20 = __getDeviceTraits___deviceGraphicsClass;
  v21 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  if (__getDeviceTraits___deviceIdiom == a5)
  {
    v49 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  }

  else
  {
    v55 = [NSNumber numberWithInt:0];
    v49 = [NSArray arrayWithObjects:&v55 count:1];
    _CUILog(3, "[CUICatalog _namedLookupWithName]: '%@' using deviceSubtype=%lu and universal subtype fallback instead [%s:%d]", v22, v23, v24, v25, v26, v27, a3);
  }

  v28 = 0;
  if (self && a11)
  {
    v28 = [_LookupStructuredThemeProvider(self->_storageRef v18)];
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = __162__CUICatalog__namedLookupWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_appearanceName_locale___block_invoke;
  v53[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v53[4] = v28;
  v29 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:a8 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 memoryClass:v19 graphicsClass:v20 graphicsFallBackOrder:v21 deviceSubtypeFallBackOrder:v49 locale:a12 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v53, a11];
  if (!v29)
  {
    goto LABEL_12;
  }

  v36 = v29;
  v37 = [(CUICatalog *)self _storageRefForRendition:v29 representsODRContent:&v54];
  if (v37 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _CUILog(4, "CoreUI: [CUICatalog _namedLookupWithName]: Cannot find themeRef while resolving key for name '%@' with subtype %u. [%s:%d]", v38, v39, v40, v41, v42, v43, a3);
LABEL_12:
    _CUILog(3, "CoreUI: [CUICatalog _namedLookupWithName]: Cannot resolve key for name '%@' with subtype %u. [%s:%d]", v30, v31, v32, v33, v34, v35, a3);
    return 0;
  }

  v45 = v37;
  v46 = [[CUINamedImage alloc] initWithName:a3 usingRenditionKey:v36 fromTheme:v37];
  v47 = [(CUIThemeRendition *)[(CUINamedLookup *)v46 _rendition] type];
  if (v47 == 1002 || v47 == 1018)
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = __162__CUICatalog__namedLookupWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_appearanceName_locale___block_invoke_3;
    v52[3] = &unk_1E7257F20;
    *&v52[8] = a4;
    v52[9] = a5;
    v52[10] = a6;
    v52[11] = a7;
    v52[12] = a8;
    v52[13] = a9;
    v52[14] = a10;
    v52[4] = self;
    v52[5] = v49;
    v52[6] = a12;
    v52[7] = v45;
    v48 = [objc_alloc(objc_opt_class()) initWithName:a3 usingRenditionKey:v36 fromTheme:v45 resolvingWithBlock:v52];

    v46 = v48;
  }

  [(CUINamedLookup *)v46 setRepresentsOnDemandContent:v54];
  return v46;
}

- (id)namedLookupWithName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 appearanceName:(id)a11 locale:(id)a12
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v20 = [(CUICatalog *)self _namedLookupWithName:a3 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:a7 displayGamut:a8 layoutDirection:a9 sizeClassHorizontal:a4 sizeClassVertical:a10 appearanceName:a11 locale:a12];
  kdebug_trace();
  return v20;
}

- (id)_baseTextureKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:41];
    [(CUIRenditionKey *)v4 setThemePart:0];

    return v4;
  }

  return result;
}

- (id)_namedTextureWithName:(id)a3 scaleFactor:(double)a4 appearanceName:(id)a5
{
  v20 = 0;
  _CUILog(3, "[CUICatalog _namedTextureWithName:%@]", a3, a5, v5, v6, v7, v8, a3);
  v14 = 0;
  if (self && a5)
  {
    v14 = [_LookupStructuredThemeProvider(self->_storageRef v13)];
  }

  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __63__CUICatalog__namedTextureWithName_scaleFactor_appearanceName___block_invoke;
  v19[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v19[4] = v14;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:sel__baseTextureKeyForName_ adjustRenditionKeyWithBlock:v19];
  if (result)
  {
    v16 = result;
    v17 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v20];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v18 = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:a3 usingRenditionKey:v16 fromTheme:v17];
      [(CUINamedLookup *)v18 setRepresentsOnDemandContent:v20];
      return v18;
    }
  }

  return result;
}

- (id)namedTextureWithName:(id)a3 scaleFactor:(double)a4 appearanceName:(id)a5
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v9 = [(CUICatalog *)self _namedTextureWithName:a3 scaleFactor:a5 appearanceName:a4];
  kdebug_trace();
  return v9;
}

- (id)_namedTextureWithName:(id)a3 scaleFactor:(double)a4 displayGamut:(int64_t)a5 appearanceName:(id)a6
{
  v21 = 0;
  _CUILog(3, "[CUICatalog _namedTextureWithName:%@]", a3, a5, a6, v6, v7, v8, a3);
  v15 = 0;
  if (self && a6)
  {
    v15 = [_LookupStructuredThemeProvider(self->_storageRef v14)];
  }

  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __76__CUICatalog__namedTextureWithName_scaleFactor_displayGamut_appearanceName___block_invoke;
  v20[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v20[4] = v15;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:a5 displayGamut:0 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:sel__baseTextureKeyForName_ adjustRenditionKeyWithBlock:v20];
  if (result)
  {
    v17 = result;
    v18 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v21];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v19 = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:a3 usingRenditionKey:v17 fromTheme:v18];
      [(CUINamedLookup *)v19 setRepresentsOnDemandContent:v21];
      return v19;
    }
  }

  return result;
}

- (id)namedTextureWithName:(id)a3 scaleFactor:(double)a4 displayGamut:(int64_t)a5 appearanceName:(id)a6
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v11 = [(CUICatalog *)self _namedTextureWithName:a3 scaleFactor:a5 displayGamut:a6 appearanceName:a4];
  kdebug_trace();
  return v11;
}

- (id)_baseColorKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:217];

    return v4;
  }

  return result;
}

- (id)colorWithName:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v17 = __getDeviceTraits___deviceIdiom;
  v18 = __getDeviceTraits___deviceSubtype;
  v34 = __getDeviceTraits___deviceGraphicsClass;
  v35 = __getDeviceTraits___deviceMemoryClass;
  v19 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  v20 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  _CUILog(3, "[CUICatalog colorWithName:%@]", v11, v12, v13, v14, v15, v16, a3);
  v22 = 0;
  v37 = 0;
  if (self && a6)
  {
    v22 = [_LookupStructuredThemeProvider(self->_storageRef v21)];
  }

  if (v17 != a5)
  {
    v38 = [NSNumber numberWithInt:0];
    v20 = [NSArray arrayWithObjects:&v38 count:1];
    v18 = 0;
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __68__CUICatalog_colorWithName_displayGamut_deviceIdiom_appearanceName___block_invoke;
  v36[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v36[4] = v22;
  v23 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:v18 deviceSubtype:a4 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:v35 graphicsClass:v34 graphicsFallBackOrder:v19 deviceSubtypeFallBackOrder:v20 locale:0 withBaseKeySelector:sel__baseColorKeyForName_ adjustRenditionKeyWithBlock:v36];
  if (v23)
  {
    v24 = v23;
    v25 = [(CUICatalog *)self localObjectCache];
    v26 = [(CUICatalog *)self _storageRefForRendition:v24 representsODRContent:&v37];
    v28 = [_LookupStructuredThemeProvider(v26 v27)];
    v29 = [v25 objectForKey:v28];
    v30 = v29;
    if (colorWithName_displayGamut_deviceIdiom_appearanceName____onceToken == -1)
    {
      if (!v29)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [CUICatalog colorWithName:displayGamut:deviceIdiom:appearanceName:];
      if (!v30)
      {
        goto LABEL_15;
      }
    }

    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
LABEL_17:

      goto LABEL_18;
    }

LABEL_15:
    v32 = [[CUINamedColor alloc] initWithName:a3 usingRenditionKey:v24 fromTheme:v26];
    v30 = v32;
    if (v32)
    {
      [(CUINamedLookup *)v32 setRepresentsOnDemandContent:v37];
      [v25 setObject:v30 forKey:v28];
    }

    goto LABEL_17;
  }

  v30 = 0;
LABEL_18:
  kdebug_trace();
  return v30;
}

uint64_t __68__CUICatalog_colorWithName_displayGamut_deviceIdiom_appearanceName___block_invoke_2()
{
  result = objc_opt_class();
  colorWithName_displayGamut_deviceIdiom_appearanceName____colorClass = result;
  return result;
}

- (id)colorWithName:(id)a3 displayGamut:(int64_t)a4 appearanceName:(id)a5
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v9 = __getDeviceTraits___deviceIdiom;

  return [(CUICatalog *)self colorWithName:a3 displayGamut:a4 deviceIdiom:v9 appearanceName:a5];
}

- (id)_baseGradientKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:247];

    return v4;
  }

  return result;
}

- (id)gradientWithName:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v17 = __getDeviceTraits___deviceIdiom;
  v18 = __getDeviceTraits___deviceSubtype;
  v26 = __getDeviceTraits___deviceGraphicsClass;
  v27 = __getDeviceTraits___deviceMemoryClass;
  v19 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  v20 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  _CUILog(3, "[CUICatalog gradientithName:%@]", v11, v12, v13, v14, v15, v16, a3);
  v22 = 0;
  v29 = 0;
  if (self && a6)
  {
    v22 = [_LookupStructuredThemeProvider(self->_storageRef v21)];
  }

  if (v17 != a5)
  {
    v30 = [NSNumber numberWithInt:0];
    v20 = [NSArray arrayWithObjects:&v30 count:1];
    v18 = 0;
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __71__CUICatalog_gradientWithName_displayGamut_deviceIdiom_appearanceName___block_invoke;
  v28[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v28[4] = v22;
  v23 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:a5 deviceIdiom:v18 deviceSubtype:a4 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:v27 graphicsClass:v26 graphicsFallBackOrder:v19 deviceSubtypeFallBackOrder:v20 locale:0 withBaseKeySelector:sel__baseGradientKeyForName_ adjustRenditionKeyWithBlock:v28];
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = [[CUINamedGradient alloc] initWithName:a3 usingRenditionKey:v23 fromTheme:[(CUICatalog *)self _storageRefForRendition:v23 representsODRContent:&v29]];
  [(CUINamedLookup *)v24 setRepresentsOnDemandContent:v29];
  if (![(CUINamedGradient *)v24 _updateFromCatalog:self displayGamut:a4 deviceIdiom:a5 appearanceName:a6])
  {

LABEL_11:
    v24 = 0;
  }

  kdebug_trace();
  return v24;
}

- (id)_baseModelForKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:164];
    [(CUIRenditionKey *)v4 setThemePart:60];

    return v4;
  }

  return result;
}

- (id)_modelWithName:(id)a3
{
  v9 = 0;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  result = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:sel__baseModelForKeyForName_ adjustRenditionKeyWithBlock:0];
  if (result)
  {
    v6 = result;
    v7 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v9];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = [[CUINamedModel alloc] initWithName:a3 usingRenditionKey:v6 fromTheme:v7];
    }

    return v8;
  }

  return result;
}

- (id)modelWithName:(id)a3
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v5 = [(CUICatalog *)self _modelWithName:a3];
  kdebug_trace();
  return v5;
}

- (id)_baseRecognitionGroupImageSetKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:206];

    return v4;
  }

  return result;
}

- (id)namedRecognitionGroupWithName:(id)a3
{
  v10 = 0;
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v5 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:sel__baseRecognitionGroupImageSetKeyForName_ adjustRenditionKeyWithBlock:0];
  if (v5)
  {
    v6 = v5;
    v7 = [(CUICatalog *)self _storageRefForRendition:v5 representsODRContent:&v10];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = [[CUINamedRecognitionGroup alloc] initWithName:a3 contentsFromCatalog:self usingRenditionKey:v6 fromTheme:v7];
    }

    kdebug_trace();
    return v8;
  }

  else
  {
    kdebug_trace();
    return 0;
  }
}

- (id)_baseRecognitionObjectKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:207];

    return v4;
  }

  return result;
}

- (id)_recognitionObjectWithName:(id)a3
{
  v23 = 0;
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v11 = __getDeviceTraits___deviceIdiom;
  v12 = __getDeviceTraits___deviceSubtype;
  v13 = __getDeviceTraits___deviceDisplayGamut;
  v14 = __getDeviceTraits___deviceMemoryClass;
  v15 = __getDeviceTraits___deviceGraphicsClass;
  v16 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  v17 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  _CUILog(3, "[CUICatalog _recognitionObjectWithName:%@]", v5, v6, v7, v8, v9, v10, a3);
  v18 = [(CUICatalog *)self _resolvedRenditionKeyForName:a3 scaleFactor:v11 deviceIdiom:v12 deviceSubtype:v13 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:v14 graphicsClass:v15 graphicsFallBackOrder:v16 deviceSubtypeFallBackOrder:v17 locale:0 withBaseKeySelector:sel__baseRecognitionObjectKeyForName_ adjustRenditionKeyWithBlock:0];
  if (v18)
  {
    v19 = v18;
    v20 = [(CUICatalog *)self _storageRefForRendition:v18 representsODRContent:&v23];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0;
    }

    else
    {
      v21 = [[CUINamedRecognitionObject alloc] initWithName:a3 usingRenditionKey:v19 fromTheme:v20];
    }

    kdebug_trace();
    return v21;
  }

  else
  {
    kdebug_trace();
    return 0;
  }
}

- (unint64_t)_storageRefForRendition:(id)a3 representsODRContent:(BOOL *)a4
{
  *a4 = 0;
  if (!a3)
  {
    return self->_storageRef;
  }

  v48 = 0;
  v6 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  if ([v6 type] != 1001)
  {
    return self->_storageRef;
  }

  *a4 = 1;
  v7 = [v6 assetPackIdentifier];
  storageMapTable = self->_storageMapTable;
  if (!storageMapTable)
  {
    v9 = *&NSObjectMapKeyCallBacks.retain;
    *&keyCallBacks.hash = *&NSObjectMapKeyCallBacks.hash;
    *&keyCallBacks.retain = v9;
    *&keyCallBacks.describe = *&NSObjectMapKeyCallBacks.describe;
    valueCallBacks = NSIntegerMapValueCallBacks;
    storageMapTable = NSCreateMapTable(&keyCallBacks, &valueCallBacks, 2uLL);
    self->_storageMapTable = storageMapTable;
  }

  v10 = NSMapGet(storageMapTable, v7);
  if (!v10)
  {
    if (([v7 hasPrefix:@"/"] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"./"))
    {
      if ([v7 hasPrefix:@"./"])
      {
        v11 = +[CUIThemeFacet themeWithContentsOfURL:error:](CUIThemeFacet, "themeWithContentsOfURL:error:", -[NSBundle URLForResource:withExtension:](self->_bundle, "URLForResource:withExtension:", [objc_msgSend(v7 substringFromIndex:{2), "stringByDeletingPathExtension"}], @"car"), &v48);
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v19 = [[NSURL alloc] initFileURLWithPath:v7 isDirectory:0];
        v11 = [CUIThemeFacet themeWithContentsOfURL:v19 error:&v48];

        if (!v11)
        {
LABEL_15:
          _CUILog(4, "CoreUI: can't open asset pack '%@' contents of asset pack will be ignored error:'%@'", v13, v14, v15, v16, v17, v18, v7);
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    else
    {
      v20 = [NSBundleResourceRequest _assetPackBundleForBundle:self->_bundle withAssetPackID:v7];
      if (!v20)
      {
        if (self->_bundle)
        {
          _CUILog(4, "CoreUI: can't locate asset pack '%@' for bundle '%@' contents of asset pack will be ignored", v21, v22, v23, v24, v25, v26, v7);
        }

        else
        {
          [objc_msgSend(-[CUICatalog _themeStore](self "_themeStore")];
          _CUILog(4, "CoreUI: can't locate asset pack '%@' because CUICatalog was initialized with a path of '%@' instead of a bundle contents of asset pack will be ignored", v40, v41, v42, v43, v44, v45, v7);
        }

        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v27 = [v20 URLForResource:self->_assetStoreName withExtension:@"car"];
      if (!v27)
      {
        _CUILog(4, "CoreUI: can't locate '%@.car' in asset pack '%@' for bundle '%@' contents of asset pack will be ignored", v28, v29, v30, v31, v32, v33, self->_assetStoreName);
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v11 = [CUIThemeFacet themeWithContentsOfURL:v27 error:&v48];
      if (!v11)
      {
        _CUILog(4, "CoreUI: can't open asset pack '%@' for bundle '%@' contents of asset pack will be ignored error:'%@'", v34, v35, v36, v37, v38, v39, v7);
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    NSMapInsert(self->_storageMapTable, v7, v11);
    return v11;
  }

  return v10;
}

- (id)_baseKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];

    return v4;
  }

  return result;
}

- (id)_baseAtlasKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:9];
    [(CUIRenditionKey *)v4 setThemePart:181];

    return v4;
  }

  return result;
}

- (id)_baseAtlasContentsKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:9];
    [(CUIRenditionKey *)v4 setThemePart:127];

    return v4;
  }

  return result;
}

- (id)_baseMultisizeImageSetKeyForName:(id)a3
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];
    [(CUIRenditionKey *)v4 setThemeElement:85];
    [(CUIRenditionKey *)v4 setThemePart:218];

    return v4;
  }

  return result;
}

- (id)_nameForAppearanceIdentifier:(int64_t)a3
{
  v3 = a3;
  v4 = _LookupStructuredThemeProvider(self->_storageRef, a2);

  return [v4 nameForAppearanceIdentifier:v3];
}

- (id)_resolvedRenditionKeyForName:(id)a3 scaleFactor:(double)a4 deviceIdiom:(int64_t)a5 deviceSubtype:(unint64_t)a6 displayGamut:(int64_t)a7 layoutDirection:(int64_t)a8 sizeClassHorizontal:(int64_t)a9 sizeClassVertical:(int64_t)a10 memoryClass:(unint64_t)a11 graphicsClass:(unint64_t)a12 graphicsFallBackOrder:(id)a13 deviceSubtypeFallBackOrder:(id)a14 locale:(id)a15 withBaseKeySelector:(SEL)a16 adjustRenditionKeyWithBlock:(id)a17
{
  _CUILog(3, "[CUICatalog _resolvedRenditionKeyForName:%@] [%s:%d]", a3, a5, a6, a7, a8, a9, a3);
  if (!a3 || ![a3 length])
  {
    v39 = a3;
    v29 = "CUICatalog: Invalid asset name supplied: '%@'";
    goto LABEL_7;
  }

  if (!a5 && a6)
  {
    v39 = a6;
    v29 = "CUICatalog: Invalid Request: requesting subtype %d without specifying idiom for asset named: '%@'";
LABEL_7:
    _CUILog(4, v29, v23, v24, v25, v26, v27, v28, v39);
    return 0;
  }

  if (a16)
  {
    v31 = [(CUICatalog *)self performSelector:a16 withObject:a3];
  }

  else
  {
    v31 = [(CUICatalog *)self _baseKeyForName:a3];
  }

  if (!v31)
  {
    _CUILog(3, "[CUICatalog _resolvedRenditionKeyForName:] Cannot resolve base key for bogus name '%@'.", v32, 0, v33, v34, v35, v36, a3);
    return 0;
  }

  storageRef = self->_storageRef;
  v38 = 0.0;
  if (a4 > 0.0)
  {
    v38 = a4;
  }

  return [CUICatalog _resolvedRenditionKeyFromThemeRef:"_resolvedRenditionKeyFromThemeRef:withBaseKey:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:adjustRenditionKeyWithBlock:" withBaseKey:storageRef scaleFactor:v31 deviceIdiom:a5 deviceSubtype:a6 displayGamut:a7 layoutDirection:a8 sizeClassHorizontal:v38 sizeClassVertical:? memoryClass:? graphicsClass:? graphicsFallBackOrder:? deviceSubtypeFallBackOrder:? locale:? adjustRenditionKeyWithBlock:?];
}

- (id)_resolvedRenditionKeyFromThemeRef:(unint64_t)a3 withBaseKey:(id)a4 scaleFactor:(double)a5 deviceIdiom:(int64_t)a6 deviceSubtype:(unint64_t)a7 displayGamut:(int64_t)a8 layoutDirection:(int64_t)a9 sizeClassHorizontal:(int64_t)a10 sizeClassVertical:(int64_t)a11 memoryClass:(unint64_t)a12 graphicsClass:(unint64_t)a13 graphicsFallBackOrder:(id)a14 deviceSubtypeFallBackOrder:(id)a15 locale:(id)a16 adjustRenditionKeyWithBlock:(id)a17
{
  v25 = _LookupStructuredThemeProvider(a3, a2);
  v35 = [objc_msgSend(v25 "themeStore")];
  v26 = [a16 languageCode];
  if (!a16 || !v26)
  {
    preferredLocalization = self->_preferredLocalization;
    if (a16 && !v26)
    {
      _CUILog(4, "CoreUI: passed in NSLocale %p has a language code of NULL assuming localization identifier %d", 0, v27, v28, v29, v30, v31, a16);
    }

LABEL_10:
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_12:
      if (preferredLocalization)
      {
        if (([v35 attributePresent:13 withValue:preferredLocalization] & 0x80000000) == 0)
        {
          result = [(CUICatalog *)self _private_resolvedRenditionKeyFromThemeRef:a3 withBaseKey:a4 scaleFactor:a6 deviceIdiom:a7 deviceSubtype:a8 displayGamut:a9 layoutDirection:a10 sizeClassHorizontal:a5 sizeClassVertical:a11 memoryClass:a12 graphicsClass:a13 graphicsFallBackOrder:a14 deviceSubtypeFallBackOrder:a15 localizationIdentifier:preferredLocalization adjustRenditionKeyWithBlock:a17];
          if (result)
          {
            return result;
          }
        }
      }

      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v32 = [NSLocale mostPreferredLanguageOf:self->_assetCatalogLocalizations withPreferredLanguages:[NSArray arrayWithObject:v26] forUsage:1 options:0];
  if (v32)
  {
    preferredLocalization = [v25 localizationIdentifierForName:v32];
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_15;
  }

  preferredLocalization = 0;
LABEL_11:
  if (([v25 localizationWorkaroundForKeyList:objc_msgSend(a4 withLocale:{"keyList"), a16}] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:

  return [(CUICatalog *)self _private_resolvedRenditionKeyFromThemeRef:a3 withBaseKey:a4 scaleFactor:a6 deviceIdiom:a7 deviceSubtype:a8 displayGamut:a9 layoutDirection:a10 sizeClassHorizontal:a5 sizeClassVertical:a11 memoryClass:a12 graphicsClass:a13 graphicsFallBackOrder:a14 deviceSubtypeFallBackOrder:a15 localizationIdentifier:0 adjustRenditionKeyWithBlock:a17];
}

- (id)newShapeEffectPresetWithRenditionKey:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [(CUICatalog *)self _themeStore];
  v6 = [a3 keyList];
  v7 = [v5 copyLookupKeySignatureForKey:v6];
  v8 = [(CUICatalog *)self localObjectCache];
  v9 = [v8 objectForKey:v7];
  if (!v9)
  {
    v9 = [v5 renditionWithKey:v6];
    if (v9)
    {
      v11 = v9;
      if ([v9 type] == 7)
      {
        v13 = [v11 effectPreset];
        [v8 setObject:v13 forKey:v7];
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  v12 = v9;

  return v12;
}

- (BOOL)canGetShapeEffectRenditionWithKey:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(CUICatalog *)self _themeStore];
  v5 = [a3 keyList];

  return [v4 canGetRenditionWithKey:v5];
}

- (id)renditionKeyForShapeEffectPresetWithStyleID:(unint64_t)a3 state:(int64_t)a4 presentationState:(int64_t)a5 value:(int64_t)a6 resolution:(unint64_t)a7 dimension1:(unint64_t)a8
{
  v8 = a8;
  if (a6 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (a6 == 2);
  }

  if (a3 == 4 && (a6 - 1) <= 1 && [_LookupStructuredThemeProvider(self->_storageRef a2)] < 0x1F2)
  {
    v13 = 0;
  }

  if ((a4 - 1) > 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_18E024AE0[a4 - 1];
  }

  if (a5 == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (a5 == 2);
  }

  v16 = CUICreateRenditionKeyWithShapeEffectState(a3, v14, v15, v13, a7, v8);

  return v16;
}

- (id)renditionKeyForShapeEffectPresetWithStylePresetName:(id)a3 state:(int64_t)a4 presentationState:(int64_t)a5 value:(int64_t)a6 resolution:(unint64_t)a7 dimension1:(unint64_t)a8 appearance:(int64_t)a9
{
  v16 = [(CUICatalog *)self _themeStore];
  v17 = [v16 renditionKeyForName:a3];
  if (!v17)
  {
    objc_exception_throw([NSException exceptionWithName:NSInvalidArgumentException reason:[NSString stringWithFormat:@"Unknown style preset name '%@'" userInfo:a3], 0]);
  }

  v18 = v17;
  v19 = [[CUIRenditionKey alloc] initWithKeyList:v17];
  if ([v16 authoredWithSchemaVersion] >= 2)
  {
    if (a7 == 1)
    {
      v20 = 179;
    }

    else
    {
      v20 = 178;
    }

    [(CUIRenditionKey *)v19 setThemePart:v20];
  }

  [(CUIRenditionKey *)v19 setThemeState:a4];
  [(CUIRenditionKey *)v19 setThemePresentationState:a5];
  [(CUIRenditionKey *)v19 setThemeValue:a6];
  [(CUIRenditionKey *)v19 setThemeDimension1:a8];
  [(CUIRenditionKey *)v19 setThemeAppearance:a9];
  if (a7 == 144)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  [(CUIRenditionKey *)v19 setThemeScale:v21];
  v22 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (a7 == 1 && (v22 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemePart:178];
  }

  v23 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (a4 && (v23 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemeState:0];
  }

  v24 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (a5 && (v24 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemePresentationState:0];
  }

  v25 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (a6 && (v25 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemeValue:0];
  }

  v26 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (a8 && (v26 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemeDimension1:0];
  }

  v27 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (a9 && (v27 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemeAppearance:0];
  }

  if (![(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19])
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v28 = CUIRenditionKeyValueForAttribute(v18, 1);
    CUIRenditionKeySetValueForAttribute(v33, 1, v28, 0x16u);
    v29 = CUIRenditionKeyValueForAttribute(v18, 2);
    CUIRenditionKeySetValueForAttribute(v33, 2, v29, 0x16u);
    v30 = CUIRenditionKeyValueForAttribute(v18, 17);
    CUIRenditionKeySetValueForAttribute(v33, 17, v30, 0x16u);
    v31 = [[CUIRenditionKey alloc] initWithKeyList:v33];

    v19 = v31;
  }

  return v19;
}

- (BOOL)_effectStyle:(unint64_t *)a3 state:(int64_t *)a4 presentationState:(int64_t *)a5 value:(int64_t *)a6 resolution:(unint64_t *)a7 dimension1:(unint64_t *)a8 appearance:(int64_t *)a9 fromStyleConfiguration:(id)a10
{
  if (a10)
  {
    *a4 = [a10 state];
    *a5 = 0;
    v16 = [a10 value];
  }

  else
  {
    v16 = 0;
    *a4 = 0;
    *a5 = 0;
  }

  *a6 = v16;
  *a3 = 5;
  *a8 = [a10 dimension1];
  if (*a6 == 1)
  {
    v17 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }

    if ([-[CUICatalog _themeStore](self "_themeStore")] <= 4)
    {
      *a6 = 0;
    }
  }

  v17 = *a3;
LABEL_9:
  v18 = *a6;
  if (v17 == 4)
  {
    if (v18 != 2)
    {
      goto LABEL_15;
    }

    v17 = 0;
    goto LABEL_14;
  }

  if (v18 == 2 && v17 == 1)
  {
LABEL_14:
    *a6 = v17;
  }

LABEL_15:
  v19 = [a10 useSimplifiedEffect];
  v20 = 72;
  if (v19)
  {
    v20 = 1;
  }

  *a7 = v20;
  if ([a10 appearanceName])
  {
    v21 = [a10 appearanceName];
    v23 = 0;
    if (self && v21)
    {
      v23 = [_LookupStructuredThemeProvider(self->_storageRef v22)];
    }
  }

  else
  {
    v23 = 0;
  }

  *a9 = v23;
  return 1;
}

- (id)renditionKeyForShapeEffectPresetForStylePresetName:(id)a3 styleConfiguration:(id)a4
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  [(CUICatalog *)self _effectStyle:&v10 state:&v13 presentationState:&v12 value:&v11 resolution:&v9 dimension1:&v8 appearance:&v7 fromStyleConfiguration:a4];
  if (a3)
  {
    return [(CUICatalog *)self renditionKeyForShapeEffectPresetWithStylePresetName:a3 state:v13 presentationState:v12 value:v11 resolution:v9 dimension1:v8 appearance:v7];
  }

  else
  {
    return [(CUICatalog *)self renditionKeyForShapeEffectPresetWithStyleID:v10 state:v13 presentationState:v12 value:v11 resolution:v9 dimension1:v8];
  }
}

- (id)newShapeEffectPresetForStylePresetName:(id)a3 styleConfiguration:(id)a4
{
  _CUILog(3, "[CUICatalog newShapeEffectPresetForStylePresetName:%@]", a3, a4, v4, v5, v6, v7, a3);
  result = [(CUICatalog *)self renditionKeyForShapeEffectPresetForStylePresetName:a3 styleConfiguration:a4];
  if (result)
  {

    return [(CUICatalog *)self newShapeEffectPresetWithRenditionKey:result];
  }

  return result;
}

- (id)newTextEffectStackForStylePresetName:(id)a3 styleConfiguration:(id)a4 foregroundColor:(CGColor *)a5
{
  v7 = [(CUICatalog *)self newShapeEffectPresetForStylePresetName:a3 styleConfiguration:?];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [[CUITextEffectStack alloc] initWithEffectPreset:v7];

  if (v9)
  {
    [a4 effectScale];
    if (v10 > 0.0)
    {
      [a4 effectScale];
      [(CUIShapeEffectStack *)v9 scaleEffectParametersBy:?];
    }

    if (a5)
    {
      if (([a4 shouldIgnoreForegroundColor] & 1) == 0)
      {
        -[CUIShapeEffectStack applyCustomForegroundColor:tintEffectColors:](v9, "applyCustomForegroundColor:tintEffectColors:", a5, [a4 foregroundColorShouldTintEffects]);
      }

      [a4 brightnessMultiplier];
      if (v11 > 0.0)
      {
        [a4 brightnessMultiplier];
        [(CUIShapeEffectStack *)v9 scaleBrightnessOfEffectColorsByAmount:0 onlyTintableColors:?];
      }

      if ([a4 colorTemperature] >= 0x3E8 && objc_msgSend(a4, "colorTemperature") <= 0x9C40)
      {
        -[CUIShapeEffectStack adjustEffectColorsToTemperature:onlyTintableColors:](v9, "adjustEffectColorsToTemperature:onlyTintableColors:", [a4 colorTemperature], 0);
      }

      if ([a4 shouldRespectOutputBlending])
      {
        [(CUIShapeEffectStack *)v9 updateOutputBlendingWithInteriorFillHeuristic];
      }
    }
  }

  return v9;
}

- (id)newShapeEffectStackForStylePresetName:(id)a3 styleConfiguration:(id)a4 foregroundColor:(CGColor *)a5
{
  v7 = [(CUICatalog *)self newShapeEffectPresetForStylePresetName:a3 styleConfiguration:?];
  v8 = [[CUIShapeEffectStack alloc] initWithEffectPreset:v7];

  [a4 effectScale];
  if (v9 > 0.0)
  {
    [a4 effectScale];
    [(CUIShapeEffectStack *)v8 scaleEffectParametersBy:?];
  }

  if (a5 && ([a4 shouldIgnoreForegroundColor] & 1) == 0)
  {
    -[CUIShapeEffectStack applyCustomForegroundColor:tintEffectColors:](v8, "applyCustomForegroundColor:tintEffectColors:", a5, [a4 foregroundColorShouldTintEffects]);
  }

  return v8;
}

- (BOOL)drawGlyphs:(const unsigned __int16 *)a3 atPositions:(const CGPoint *)a4 inContext:(CGContext *)a5 withFont:(__CTFont *)a6 count:(unint64_t)a7 stylePresetName:(id)a8 styleConfiguration:(id)a9 foregroundColor:(CGColor *)a10
{
  v10 = off_1F00D3970(self, a2, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v10;
  kdebug_trace();
  if (!v14)
  {
    goto LABEL_11;
  }

  if (a9)
  {
    v24 = [a9 copy];
  }

  else
  {
    v24 = objc_alloc_init(CUIStyleEffectConfiguration);
  }

  v25 = v24;
  -[CUIStyleEffectConfiguration setUseSimplifiedEffect:](v24, "setUseSimplifiedEffect:", [a9 useSimplifiedEffect]);
  [(CUIStyleEffectConfiguration *)v25 setUseSimplifiedEffect:_CUIDebugUseSimplifiedTextEffects() & [(CUIStyleEffectConfiguration *)v25 useSimplifiedEffect]];
  if (![(CUIStyleEffectConfiguration *)v25 useSimplifiedEffect])
  {
    if (v14 < 0x81)
    {
      v37 = &v64;
    }

    else
    {
      v37 = malloc_type_calloc(v14, 0x20uLL, 0x1000040E0EAB150uLL);
      if (!v37)
      {
        goto LABEL_21;
      }
    }

    BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v16, kCTFontOrientationDefault, v22, v37, v14);
    x = BoundingRectsForGlyphs.origin.x;
    y = BoundingRectsForGlyphs.origin.y;
    width = BoundingRectsForGlyphs.size.width;
    height = BoundingRectsForGlyphs.size.height;
    if (CGRectGetHeight(BoundingRectsForGlyphs) != 0.0)
    {
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      if (CGRectGetWidth(v68) != 0.0)
      {
        v58 = v23;
        v59 = v12;
        v43 = 0;
        v60 = v20;
        v61 = 0;
        v44 = 0;
        p_width = &v37->size.width;
        v46 = 0.0;
        v47 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
        do
        {
          v50 = *(p_width - 2);
          v69.origin.y = *(p_width - 1);
          v51 = *p_width;
          v69.size.height = p_width[1];
          v69.origin.x = v50;
          v69.size.width = *p_width;
          if (CGRectIsNull(v69))
          {
            goto LABEL_30;
          }

          if (v50 + *v20 < v49 + v47)
          {
            v44 = v43;
            v49 = *v20;
            v47 = v50;
          }

          v52 = v50 + v51;
          if (v50 + v51 + *v20 <= v48 + v46)
          {
LABEL_30:
            v52 = v46;
          }

          else
          {
            v61 = v43;
            v48 = *v20;
          }

          ++v43;
          v20 += 2;
          p_width += 4;
          v46 = v52;
        }

        while (v14 != v43);
        memset(&v63, 0, sizeof(v63));
        CGContextGetTextMatrix(&v63, v18);
        v53 = v63.c * 0.0 + v63.a * (v48 - v49);
        v20 = v60;
        v54 = v37[v61].size.width + v37[v61].origin.x;
        if (v54 > 0.0)
        {
          v53 = v53 + v54;
        }

        v55 = v37[v44].origin.x;
        if (v55 >= 0.0)
        {
          v56 = 0.0;
        }

        else
        {
          v56 = -v55;
        }

        v70.size.width = v53 + v56;
        v57 = &v60[2 * v44];
        v70.origin.x = *v57 - v56;
        v70.origin.y = y + v57[1];
        v62 = v63;
        v70.size.height = height;
        v71 = CGRectApplyAffineTransform(v70, &v62);
        v72 = NSIntegralRectWithOptions(v71, 0xF00uLL);
        v26 = v72.origin.x;
        v27 = v72.origin.y;
        v28 = v72.size.width;
        v29 = v72.size.height;
        if (v14 >= 0x81)
        {
          free(v37);
        }

        v23 = v58;
        v12 = v59;
        goto LABEL_7;
      }
    }

    if (v14 >= 0x81)
    {
      free(v37);
    }

LABEL_21:

    kdebug_trace();
    return 1;
  }

  v26 = CGRectInfinite.origin.x;
  v27 = CGRectInfinite.origin.y;
  v28 = CGRectInfinite.size.width;
  v29 = CGRectInfinite.size.height;
LABEL_7:
  ClipBoundingBox = CGContextGetClipBoundingBox(v18);
  v65.origin.x = v26;
  v65.origin.y = v27;
  v65.size.width = v28;
  v65.size.height = v29;
  v66 = CGRectIntersection(v65, ClipBoundingBox);
  if (v66.size.height == 0.0 || (v30 = v66.size.width, v66.size.width == 0.0))
  {

    v36 = 1;
    kdebug_trace();
    return v36;
  }

  v31 = v66.origin.x;
  v32 = v66.origin.y;
  v33 = v66.size.height;
  v34 = _CUIEffectiveScaleForContext(v18);
  v35 = [v23 newTextEffectStackForStylePresetName:v12 styleConfiguration:v25 foregroundColor:a10];

  if (!v35)
  {
    kdebug_trace();
    return 0;
  }

  [v35 drawGlyphs:v22 inContext:v18 usingFont:v16 atPositions:v20 count:v14 lineHeight:0.0 inBounds:v31 atScale:{v32, v30, v33, v34}];

LABEL_11:
  v36 = 1;
  kdebug_trace();
  return v36;
}

- (BOOL)_doStyledQuartzDrawingInContext:(CGContext *)a3 inBounds:(CGRect)a4 stylePresetName:(id)a5 styleConfiguration:(id)a6 drawingHandler:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v26 = CGRectIntersection(v25, ClipBoundingBox);
  v16 = v26.origin.x;
  v17 = v26.origin.y;
  v18 = v26.size.width;
  v19 = v26.size.height;
  if (v26.size.height == 0.0 && v26.size.width == 0.0)
  {
    return 1;
  }

  v20 = _CUIEffectiveScaleForContext(a3);
  if (a6)
  {
    v21 = [a6 copy];
  }

  else
  {
    v21 = objc_alloc_init(CUIStyleEffectConfiguration);
  }

  v22 = v21;
  -[CUIStyleEffectConfiguration setUseSimplifiedEffect:](v21, "setUseSimplifiedEffect:", [a6 useSimplifiedEffect]);
  [(CUIStyleEffectConfiguration *)v22 setUseSimplifiedEffect:_CUIDebugUseSimplifiedTextEffects() & [(CUIStyleEffectConfiguration *)v22 useSimplifiedEffect]];
  v23 = [(CUICatalog *)self newTextEffectStackForStylePresetName:a5 styleConfiguration:v22 foregroundColor:CGContextGetFillColorAsColor()];

  if (v23)
  {
    [v23 drawUsingQuartz:a7 inContext:a3 inBounds:v16 atScale:{v17, v18, v19, v20}];

    return 1;
  }

  return 0;
}

- (BOOL)strokeStyledPath:(CGPath *)a3 inContext:(CGContext *)a4 stylePresetName:(id)a5 styleConfiguration:(id)a6
{
  if (!a4)
  {
    return 0;
  }

  if (a3)
  {
    CGContextBeginPath(a4);
    CGContextAddPath(a4, a3);
  }

  CGContextReplacePathWithStrokedPath(a4);

  return [(CUICatalog *)self fillStyledPath:0 inContext:a4 stylePresetName:a5 styleConfiguration:a6];
}

- (BOOL)fillStyledPath:(CGPath *)a3 inContext:(CGContext *)a4 stylePresetName:(id)a5 styleConfiguration:(id)a6
{
  if (a4)
  {
    if (a3)
    {
      CGContextBeginPath(a4);
      CGContextAddPath(a4, a3);
    }

    v11 = CGContextCopyPath(a4);
    BoundingBox = CGPathGetBoundingBox(v11);
    if (v11)
    {
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      if (!CGRectIsEmpty(BoundingBox))
      {
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        v21 = CGContextConvertRectToDeviceSpace(a4, v20);
        v22 = CGRectIntegral(v21);
        v23 = CGContextConvertRectToUserSpace(a4, v22);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = __74__CUICatalog_fillStyledPath_inContext_stylePresetName_styleConfiguration___block_invoke;
        v18[3] = &__block_descriptor_48_e20_v16__0__CGContext__8l;
        v18[4] = v11;
        v18[5] = a4;
        v16 = [(CUICatalog *)self _doStyledQuartzDrawingInContext:a4 inBounds:a5 stylePresetName:a6 styleConfiguration:v18 drawingHandler:v23.origin.x, v23.origin.y, v23.size.width, v23.size.height];
        CGPathRelease(v11);
        return v16;
      }
    }

    CGPathRelease(v11);
  }

  return 0;
}

void __74__CUICatalog_fillStyledPath_inContext_stylePresetName_styleConfiguration___block_invoke(uint64_t a1, CGContextRef c)
{
  v4 = CGContextCopyPath(c);
  if (*(a1 + 32) != v4)
  {
    CGContextBeginPath(*(a1 + 40));
    CGContextAddPath(c, *(a1 + 32));
  }

  CGContextFillPath(c);

  CGPathRelease(v4);
}

- (BOOL)fillStyledRect:(CGRect)a3 inContext:(CGContext *)a4 stylePresetName:(id)a5 styleConfiguration:(id)a6
{
  if (!a4)
  {
    return 0;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    return 0;
  }

  CGContextBeginPath(a4);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextAddRect(a4, v16);

  return [(CUICatalog *)self fillStyledPath:0 inContext:a4 stylePresetName:a5 styleConfiguration:a6];
}

- (BOOL)hasStylePresetWithName:(id)a3 styleConfiguration:(id)a4
{
  if (a3)
  {
    v6 = [(CUICatalog *)self _themeStore:a3];
    v7 = [v6 renditionKeyForName:a3];
    if (v7)
    {
      CUIRenditionKeyCopy(v9, v7, 0x16u);
      CUIRenditionKeySetValueForAttribute(v9, 12, 1, 0x16u);
      LOBYTE(v7) = [objc_msgSend(v6 renditionWithKey:{v9), "type"}] == 7;
    }
  }

  else
  {
    v7 = [(CUICatalog *)self renditionKeyForShapeEffectPresetForStylePresetName:0 styleConfiguration:a4];
    if (v7)
    {

      LOBYTE(v7) = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v7];
    }
  }

  return v7;
}

- (CGColor)equivalentForegroundColorForStylePresetWithName:(id)a3 styleConfiguration:(id)a4
{
  v7 = [a4 foregroundColorShouldTintEffects];
  [a4 setForegroundColorShouldTintEffects:0];
  v8 = [(CUICatalog *)self equivalentForegroundColorForStylePresetWithName:a3 styleConfiguration:a4 baseForegroundColor:0];
  [a4 setForegroundColorShouldTintEffects:v7];
  return v8;
}

- (CGColor)equivalentForegroundColorForStylePresetWithName:(id)a3 styleConfiguration:(id)a4 baseForegroundColor:(CGColor *)a5
{
  if ([a4 useSimplifiedEffect])
  {
    v9 = [(CUICatalog *)self newTextEffectStackForStylePresetName:a3 styleConfiguration:a4 foregroundColor:a5];
  }

  else
  {
    v9 = [(CUICatalog *)self newShapeEffectStackForStylePresetName:a3 styleConfiguration:a4 foregroundColor:a5];
  }

  v10 = v9;
  if (([v9 expressableByColorFillCheckingOutputBlending:{objc_msgSend(a4, "shouldRespectOutputBlending")}] & 1) == 0)
  {

    return 0;
  }

  v11 = [v10 newColorByProcessingColor:0];

  if (!v11)
  {
    return 0;
  }

  return CFAutorelease(v11);
}

- (int)blendModeForStylePresetWithName:(id)a3 styleConfiguration:(id)a4
{
  v4 = [(CUICatalog *)self newShapeEffectPresetForStylePresetName:a3 styleConfiguration:a4];
  if (v4)
  {
    v5 = v4;
    v6 = 1852797549;
    v7 = [v4 effectCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [v5 effectTypeAtIndex:i];
        v11 = v10;
        if (v10 == 1198678372 || v10 == 1131375730)
        {
          v6 = [v5 valueForParameter:7 inEffectAtIndex:i];
        }

        if (v11 == 1131375730)
        {
          break;
        }

        if (v11 == 1198678372)
        {
          break;
        }
      }
    }

    LODWORD(v4) = [CUIShapeEffectPreset cgBlendModeFromCUIEffectBlendMode:v6];
  }

  return v4;
}

- (void)_vibrantColorMatrixBrightnessSaturationForColor:(CGColor *)a3 saturation:(double *)a4 brightness:(double *)a5
{
  if (!self->_vibrantColorMatrixTints)
  {
    if (_vibrantColorMatrixBrightnessSaturationForColor_saturation_brightness__onceToken != -1)
    {
      [CUICatalog _vibrantColorMatrixBrightnessSaturationForColor:saturation:brightness:];
    }

    v9 = [NSMutableDictionary alloc];
    v10 = [v9 initWithCapacity:{objc_msgSend(_vibrantColorMatrixBrightnessSaturationForColor_saturation_brightness__colorNamesTintNames, "count")}];
    v12 = _LookupStructuredThemeProvider(self->_storageRef, v11);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __84__CUICatalog__vibrantColorMatrixBrightnessSaturationForColor_saturation_brightness___block_invoke_2;
    v36[3] = &unk_1E7257F68;
    v36[4] = v12;
    v36[5] = v10;
    [_vibrantColorMatrixBrightnessSaturationForColor_saturation_brightness__colorNamesTintNames enumerateKeysAndObjectsUsingBlock:v36];
    self->_vibrantColorMatrixTints = v10;
  }

  Components = CGColorGetComponents(a3);
  v34 = 0.0;
  v35 = 0.0;
  v33 = 0.0;
  v14 = -[NSArray sortedArrayUsingSelector:]([(NSDictionary *)self->_vibrantColorMatrixTints allKeys:_CUIRGBToHSB(&v35], "sortedArrayUsingSelector:", sel_compare_);
  v16 = v34;
  v15 = v35;
  v17 = v33;
  v18 = [(NSArray *)v14 count];
  v19 = 1.0;
  if (!v18)
  {
LABEL_10:
    v27 = 1.0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v20 = v18;
  v21 = 0;
  v22 = ((v16 * 255.0) << 8) | ((v15 * 360.0) << 16) | (v17 * 255.0);
  v23 = v18 - 1;
  while (1)
  {
    v24 = [(NSArray *)v14 objectAtIndex:v21];
    v25 = [v24 intValue];
    v26 = v25;
    if (v23 == v21 || v25 > v22)
    {
      break;
    }

    if (v20 == ++v21)
    {
      goto LABEL_10;
    }
  }

  v28 = [-[NSDictionary objectForKey:](self->_vibrantColorMatrixTints objectForKey:{v24), "intValue"}];
  if (v21)
  {
    v29 = [(NSArray *)v14 objectAtIndex:v21 - 1];
    v30 = [v29 intValue];
    v31 = [-[NSDictionary objectForKey:](self->_vibrantColorMatrixTints objectForKey:{v29), "intValue"}];
  }

  else
  {
    v31 = 0;
    v30 = 0x7FFFFFFF;
  }

  if (v26 - v22 <= (v22 - v30))
  {
    v32 = v28;
  }

  else
  {
    v32 = v31;
  }

  if (!v21)
  {
    v32 = v28;
  }

  v19 = HIBYTE(v32) / 255.0 + HIBYTE(v32) / 255.0;
  v27 = v32 / 255.0 + v32 / 255.0;
  if (a5)
  {
LABEL_11:
    *a5 = v27;
  }

LABEL_12:
  if (a4)
  {
    *a4 = v19;
  }
}

id __84__CUICatalog__vibrantColorMatrixBrightnessSaturationForColor_saturation_brightness___block_invoke()
{
  result = [[NSDictionary alloc] initWithObjectsAndKeys:{@"privateVibrantMatrixTintRedColor", @"systemRedColor", @"privateVibrantMatrixTintOrangeColor", @"systemOrangeColor", @"privateVibrantMatrixTintYellowColor", @"systemYellowColor", @"privateVibrantMatrixTintGreenColor", @"systemGreenColor", @"privateVibrantMatrixTintTealColor", @"systemTealColor", @"privateVibrantMatrixTintBlueColor", @"systemBlueColor", @"privateVibrantMatrixTintIndigoColor", @"systemIndigoColor", @"privateVibrantMatrixTintPurpleColor", @"systemPurpleColor", @"privateVibrantMatrixTintPinkColor", @"systemPinkColor", @"privateVibrantMatrixTintBrownColor", @"systemBrownColor", 0}];
  _vibrantColorMatrixBrightnessSaturationForColor_saturation_brightness__colorNamesTintNames = result;
  return result;
}

id __84__CUICatalog__vibrantColorMatrixBrightnessSaturationForColor_saturation_brightness___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v5 = [*(a1 + 32) getPhysicalColor:&v16 withName:a2];
  result = [*(a1 + 32) getPhysicalColor:&v14 withName:a3];
  if (v5)
  {
    v7 = result == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v12 = 0.0;
    v13 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    _CUIRGBToHSB(&v13, &v12, &v11, BYTE2(v17) / 255.0, BYTE1(v17) / 255.0, v17 / 255.0);
    _CUIRGBToHSB(&v10, &v9, &v8, BYTE2(v15) / 255.0, BYTE1(v15) / 255.0, v15 / 255.0);
    return [*(a1 + 40) setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", ((v9 * 255.0) << 8) | ((v10 * 360.0) << 16) | (v8 * 255.0)), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ((v12 * 255.0) << 8) | ((v13 * 360.0) << 16) | (v11 * 255.0))}];
  }

  return result;
}

- (id)compositingFilterForStylePresetWithName:(id)a3 styleConfiguration:(id)a4 foregroundColor:(CGColor *)a5
{
  v8 = [(CUICatalog *)self newShapeEffectPresetForStylePresetName:a3 styleConfiguration:?];
  v9 = v8;
  if (v8)
  {
    v27 = self;
    v10 = 1852797549;
    v11 = [v8 effectCount];
    if (v11)
    {
      v12 = v11;
      v28 = a4;
      v29 = a5;
      v13 = 0;
      LOBYTE(v14) = 0;
      LOBYTE(v15) = 0;
      for (i = 0; i != v12; ++i)
      {
        v17 = [v9 effectTypeAtIndex:i];
        v18 = v17;
        if (v17 == 1198678372 || v17 == 1131375730)
        {
          v10 = [v9 valueForParameter:7 inEffectAtIndex:i];
          v19 = [v9 valueForParameter:0 inEffectAtIndex:i];
          v13 = v19;
          v14 = v19 >> 8;
          v15 = v19 >> 16;
        }

        if (v18 == 1131375730)
        {
          break;
        }

        if (v18 == 1198678372)
        {
          break;
        }
      }

      v20 = v13;
      LODWORD(v14) = v14;
      LODWORD(v15) = v15;
      a4 = v28;
      a5 = v29;
    }

    else
    {
      LODWORD(v15) = 0;
      LODWORD(v14) = 0;
      v20 = 0;
    }

    v9 = [CUIShapeEffectPreset caFilterFromCUIEffectBlendMode:v10];
    if (v9 && (v10 == 1986229103 || v10 == 1986227573))
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      if (a5 && [a4 foregroundColorShouldTintEffects])
      {
        v21 = (v14 + v15 + v20) / 255.0 / 3.0;
        v22 = v21 + v21;
        SRGB = _CUIColorSpaceGetSRGB();
        if (CGColorGetColorSpace(a5) == SRGB)
        {
          CopyByMatchingToColorSpace = CGColorRetain(a5);
        }

        else
        {
          CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(SRGB, kCGRenderingIntentDefault, a5, 0);
        }

        v25 = CopyByMatchingToColorSpace;
        *&v30[0] = 0;
        v31 = 0.0;
        [(CUICatalog *)v27 _vibrantColorMatrixBrightnessSaturationForColor:CopyByMatchingToColorSpace saturation:v30 brightness:&v31];
        v31 = v22 * v31;
        [CUIShapeEffectPreset vibrantColorMatrixOptionsWithColor:v25 saturation:*v30 brightness:?];
        CGColorRelease(v25);
      }

      else
      {
        +[CUIShapeEffectPreset monochromeVibrantColorMatrixOptions];
      }

      v30[4] = v36;
      v30[5] = v37;
      v30[6] = v38;
      v30[0] = v32;
      v30[1] = v33;
      v30[2] = v34;
      v30[3] = v35;
      [CUIShapeEffectPreset configureVibrantColorMatrixFilter:v9 withOptions:v30];
    }
  }

  return v9;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)styledInsetsForStylePresetName:(id)a3 styleConfiguration:(id)a4 foregroundColor:(CGColor *)a5 scale:(double)a6
{
  v7 = [(CUICatalog *)self newShapeEffectStackForStylePresetName:a3 styleConfiguration:a4 foregroundColor:a5];
  if (v7)
  {
    v8 = v7;
    [v7 effectInsetsWithScale:a6];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.var3 = v20;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (id)imageByStylingImage:(CGImage *)a3 stylePresetName:(id)a4 styleConfiguration:(id)a5 foregroundColor:(CGColor *)a6 scale:(double)a7
{
  v9 = [(CUICatalog *)self newShapeEffectStackForStylePresetName:a4 styleConfiguration:a5 foregroundColor:a6];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v9 newFlattenedImageFromShapeCGImage:a3 withScale:objc_msgSend(objc_opt_class() ciContext:{"sharedCIContext"), a7}];
  if (v11)
  {
    v12 = v11;
    v13 = [CUIImage imageWithCGImage:v11];
    CGImageRelease(v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dataForVectorGlyphsWithNames:(id)a3
{
  v38 = 0;
  v39[0] = NSTemporaryDirectory();
  v37 = [+[NSProcessInfo processInfo](NSProcessInfo globallyUniqueString];
  v39[1] = [NSString stringWithFormat:@"coreui-vectorgylphs-%@"];
  v5 = [[NSURL fileURLWithPathComponents:?], "URLByAppendingPathExtension:", @"car"];
  v6 = [(CUICatalog *)self copiedVectorGlyphsWithNames:a3 outputFile:v5];
  if (!v6)
  {
    v28 = "-[CUICatalog copyVectorGlyphsWithNames:: failed";
    goto LABEL_10;
  }

  if (([v6 writeToDiskAndCompact:1] & 1) == 0)
  {
    v29 = [(NSURL *)v5 path];
    _CUILog(4, "failed to write copied vector images to file %@", v30, v31, v32, v33, v34, v35, v29);
    if ([+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
    {
      return 0;
    }

    v37 = [(NSURL *)v5 path];
    v28 = "failed to delete tmp file at %@: %@";
LABEL_10:
    _CUILog(4, v28, v7, v8, v9, v10, v11, v12, v37);
    return 0;
  }

  v13 = [NSData dataWithContentsOfURL:v5 options:0 error:&v38];
  if (!v13)
  {
    v14 = [(NSURL *)v5 path];
    _CUILog(4, "dataForVectorGlyphsWithNames: Got error reading from tmpFile %@: %@", v15, v16, v17, v18, v19, v20, v14);
  }

  if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
  {
    v21 = [(NSURL *)v5 path];
    _CUILog(4, "failed to delete tmp file at %@: %@", v22, v23, v24, v25, v26, v27, v21);
  }

  return v13;
}

- (BOOL)copyVectorGlyphsWithNames:(id)a3 toFile:(id)a4
{
  v4 = [(CUICatalog *)self copiedVectorGlyphsWithNames:a3 outputFile:a4];

  return [v4 writeToDiskAndCompact:1];
}

- (id)copiedVectorGlyphsWithNames:(id)a3 outputFile:(id)a4
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v6 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  v7 = -[CUIMutableCommonAssetStorage initWithPath:]([CUIMutableCommonAssetStorage alloc], "initWithPath:", [a4 path]);
  v8 = objc_alloc_init(NSMutableString);
  [v8 appendString:@"-[CUICatalog copiedVectorGlyphsWithNames:outputFile: '"];
  [v8 appendString:{objc_msgSend(objc_msgSend(v6, "themeStore"), "path")}];
  [v8 appendString:@"']"];
  qword_1ED4EBC50 = [v8 UTF8String];

  if (objc_opt_respondsToSelector())
  {
    v15 = [v6 themeStore];
    v16 = [v6 keyFormat];
    [(CUIMutableCommonAssetStorage *)v7 setThinningArguments:@"Copied VectorGlyphs"];
    [(CUIMutableCommonAssetStorage *)v7 setKeyFormatData:[NSData dataWithBytes:v16 length:4 * (v16[2] + 3)]];
    -[CUIMutableCommonAssetStorage setKeySemantics:](v7, "setKeySemantics:", [v15 keySemantics]);
    -[CUIMutableCommonAssetStorage setDeploymentPlatform:](v7, "setDeploymentPlatform:", [v15 deploymentPlatformString]);
    -[CUIMutableCommonAssetStorage setDeploymentPlatformVersion:](v7, "setDeploymentPlatformVersion:", [v15 deploymentPlatformVersion]);
    -[CUIMutableCommonAssetStorage setSchemaVersion:](v7, "setSchemaVersion:", [v15 schemaVersion]);
    -[CUIMutableCommonAssetStorage setStorageVersion:](v7, "setStorageVersion:", [v15 storageVersion]);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = [objc_msgSend(v15 "appearances")];
    v18 = [v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v18)
    {
      v19 = *v49;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(v17);
          }

          -[CUIMutableCommonAssetStorage setAppearanceIdentifier:forName:](v7, "setAppearanceIdentifier:forName:", [v15 appearanceIdentifierForName:*(*(&v48 + 1) + 8 * i)], *(*(&v48 + 1) + 8 * i));
        }

        v18 = [v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v18);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = [objc_msgSend(v15 "localizations")];
    v22 = [v21 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v22)
    {
      v23 = *v45;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v45 != v23)
          {
            objc_enumerationMutation(v21);
          }

          -[CUIMutableCommonAssetStorage setLocalizationIdentifier:forName:](v7, "setLocalizationIdentifier:forName:", [v15 localizationIdentifierForName:*(*(&v44 + 1) + 8 * j)], *(*(&v44 + 1) + 8 * j));
        }

        v22 = [v21 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v22);
    }

    v38 = v16;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = [a3 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v25)
    {
      v26 = *v41;
      do
      {
        for (k = 0; k != v25; k = k + 1)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(a3);
          }

          v28 = *(*(&v40 + 1) + 8 * k);
          v35 = [v6 renditionKeyForName:v28];
          if (v35)
          {
            -[CUIMutableCommonAssetStorage setRenditionKey:hotSpot:forName:](v7, "setRenditionKey:hotSpot:forName:", v35, [v28 UTF8String], 0.0, 0.0);
          }

          else
          {
            _CUILog(4, "CoreUI: copiedVectorGlyphsWithNames:outputFile: failed to find vector glyph with name '%@'", v29, v30, v31, v32, v33, v34, v28);
          }
        }

        v25 = [a3 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v25);
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __53__CUICatalog_copiedVectorGlyphsWithNames_outputFile___block_invoke;
    v39[3] = &unk_1E7257F90;
    v39[4] = v15;
    v39[5] = a3;
    v39[6] = v7;
    v39[7] = v6;
    v39[10] = 0;
    v39[11] = v38;
    v39[8] = &v52;
    v39[9] = 0;
    [v15 enumerateKeysAndObjectsUsingBlock:v39];
  }

  else
  {
    _CUILog(4, "CoreUI: copiedVectorGlyphsWithNames:outputFile: failed to open store '%@'", v9, v10, v11, v12, v13, v14, a3);
  }

  [(CUIMutableCommonAssetStorage *)v7 setRenditionCount:*(v53 + 6)];

  v36 = v7;
  _Block_object_dispose(&v52, 8);
  return v36;
}

unsigned __int16 *__53__CUICatalog_copiedVectorGlyphsWithNames_outputFile___block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  result = CUIRenditionKeyValueForAttribute(a2, 2);
  if (result == 59)
  {
    v7 = [*(a1 + 32) renditionNameForKeyBaseList:a2];
    result = [*(a1 + 40) containsObject:v7];
    if (result)
    {
      [*(a1 + 48) setRenditionKey:objc_msgSend(*(a1 + 56) hotSpot:"renditionKeyForName:" forName:{v7), objc_msgSend(v7, "UTF8String"), *(a1 + 72), *(a1 + 80)}];
      memset(v8, 0, 42);
      CUIFillCARKeyArrayForRenditionKey(v8, a2, *(a1 + 88));
      result = [*(a1 + 48) setAsset:a3 forKey:v8 withLength:2 * *(*(a1 + 88) + 8)];
      ++*(*(*(a1 + 64) + 8) + 24);
    }
  }

  return result;
}

- (id)_appearancefallback_gradientWithName:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6
{
  result = [CUICatalog gradientWithName:"gradientWithName:displayGamut:deviceIdiom:appearanceName:" displayGamut:? deviceIdiom:? appearanceName:?];
  if (!result)
  {
    result = [a6 length];
    if (result)
    {

      return [(CUICatalog *)self gradientWithName:a3 displayGamut:a4 deviceIdiom:a5 appearanceName:0];
    }
  }

  return result;
}

- (id)_appearancefallback_colorWithName:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6
{
  result = [CUICatalog colorWithName:"colorWithName:displayGamut:deviceIdiom:appearanceName:" displayGamut:? deviceIdiom:? appearanceName:?];
  if (!result)
  {
    result = [a6 length];
    if (result)
    {

      return [(CUICatalog *)self colorWithName:a3 displayGamut:a4 deviceIdiom:a5 appearanceName:0];
    }
  }

  return result;
}

- (id)_private_resolvedRenditionKeyFromThemeRef:(void *)a3 withBaseKey:(id)a4 scaleFactor:(uint64_t)a5 deviceIdiom:(void *)a6 deviceSubtype:(uint64_t)a7 displayGamut:(uint64_t)a8 layoutDirection:(double)a9 sizeClassHorizontal:(uint64_t)a10 sizeClassVertical:(uint64_t)a11 memoryClass:(uint64_t)a12 graphicsClass:(void *)a13 graphicsFallBackOrder:(void *)a14 deviceSubtypeFallBackOrder:(uint64_t)a15 localizationIdentifier:(uint64_t)a16 adjustRenditionKeyWithBlock:
{
  v93 = a5;
  if (!a1)
  {
    return 0;
  }

  v22 = a10;
  v90 = 0;
  v91 = 0;
  v73 = CUIMaxScaleForTargetPlatform([a1 platform]);
  v23 = CUICurrentDeploymentVersionForTargetPlatform();
  v24 = [a13 count];
  v74 = [a14 count];
  [+[CUIRuntimeStatistics sharedRuntimeStatistics](CUIRuntimeStatistics "sharedRuntimeStatistics")];
  v87 = a12;
  v83 = v24;
  if (a12 && !v24)
  {
    _CUILog(4, "[CUICatalog _resolvedRenditionKeyFromThemeRef:...] got passed a graphicsClass '%d' but No graphicsFallbacks ignoring the graphicsClass", v25, v26, v27, v28, v29, v30, a12);
    v87 = 0;
  }

  CUIValidateIdiomSubtypes(a4, &v93, v25, v26, v27, v28, v29, v30);
  v32 = 0;
  v84 = a9;
  v78 = v93;
  v92 = v23;
  while (__memorySearchValues[v32] != a11)
  {
    if (++v32 == 10)
    {
      v32 = 0;
      break;
    }
  }

  v33 = _LookupStructuredThemeProvider(a2, v31);
  v34 = [a3 copy];
  [v34 setThemeMemoryClass:__memorySearchValues[v32]];
  [v34 setThemeScale:v84];
  [v34 setThemeIdiom:a4];
  [v34 setThemeSubtype:v78];
  [v34 setThemeDisplayGamut:a6];
  [v34 setThemeDeploymentTarget:v92];
  [v34 setThemeDirection:a7];
  [v34 setThemeSizeClassHorizontal:a8];
  [v34 setThemeSizeClassVertical:a10];
  [v34 setThemeGraphicsClass:v87];
  [v34 setThemeLocalization:a15];
  if (a16)
  {
    (*(a16 + 16))();
  }

  [v34 keyList];
  v35 = [OUTLINED_FUNCTION_3_3() copyLookupKeySignatureForKey:?];

  v36 = [a1 lookupCache];
  v37 = [a1 negativeCache];
  v38 = [v36 objectForKey:v35];
  if (v38)
  {
    v39 = v38;

    return v39;
  }

  v72 = v36;
  if ([v37 objectForKey:v35])
  {

    return 0;
  }

  v69 = v37;
  v71 = v35;
  v77 = [v33 renditionInfoForIdentifier:{objc_msgSend(a3, "themeIdentifier")}];
  if (!v77)
  {
    v43 = a7;
    v40 = v87;
    v41 = v78;
    v42 = a6;
    if (v32 < 0)
    {
      goto LABEL_139;
    }

    goto LABEL_48;
  }

  v40 = v87;
  v41 = v78;
  v42 = a6;
  if (v78 && ![v77 diverseContentPresentForAttribute:16])
  {
    v41 = 0;
  }

  if (a8 && ![v77 diverseContentPresentForAttribute:20])
  {
    a8 = 0;
  }

  if (a10 && ![v77 diverseContentPresentForAttribute:21])
  {
    v22 = 0;
  }

  if (a6 && ![v77 diverseContentPresentForAttribute:24])
  {
    v42 = 0;
  }

  if (v92)
  {
    if ([v77 diverseContentPresentForAttribute:25])
    {
      if (![v77 attributePresent:25 withValue:v92])
      {
        --v92;
        [v77 decrementValue:&v92 forAttribute:25];
      }
    }

    else
    {
      v92 = 0;
    }
  }

  if (v32 && ![v77 diverseContentPresentForAttribute:22])
  {
    v32 = 0;
  }

  if (v87 && ![v77 diverseContentPresentForAttribute:23])
  {
    v40 = 0;
  }

  if (!a7)
  {
    v43 = 0;
    if (v32 < 0)
    {
      goto LABEL_139;
    }

    goto LABEL_48;
  }

  v44 = [v77 diverseContentPresentForAttribute:4];
  v43 = a7;
  if (!v44)
  {
    v43 = 0;
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
LABEL_48:
    v79 = v41;
    v88 = v40;
    v45 = 0;
    v46 = v22 | a8;
    v47 = 4;
    if (v22 | a8)
    {
      v48 = 1;
    }

    else
    {
      v48 = 4;
    }

    v76 = v48;
    v86 = v43;
    if (v43 == 4)
    {
      v47 = 5;
    }

    v70 = v47;
    v68 = a9;
    while (1)
    {
      v90 = 0x7FFFFFFFFFFFFFFFLL;
      v49 = v79;
      while (2)
      {
        v50 = v49;
        OUTLINED_FUNCTION_7_2();
        v80 = __memorySearchValues[v32];
        [a3 setThemeMemoryClass:?];
        v82 = v50;
        [a3 setThemeSubtype:v50];
        [a3 setThemeGraphicsClass:v88];
        [a3 setThemeScale:v84];
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_1_4();
        [a3 setThemeLocalization:a15];
        if (a16)
        {
          (*(a16 + 16))();
        }

        v91 = 0x7FFFFFFFFFFFFFFFLL;
        while (2)
        {
          [a3 keyList];
          if ([OUTLINED_FUNCTION_3_3() canGetRenditionWithKey:?])
          {
LABEL_59:
            v51 = v45;
LABEL_60:
            if (!a3)
            {
              v52 = 1;
              v45 = v51;
              goto LABEL_62;
            }

            v39 = [a3 copy];
            [v72 setObject:v39 forKey:v71];

            v66 = v39;
            return v39;
          }

          v75 = -1;
          v55 = v76;
          while (1)
          {
            while (1)
            {
              while (1)
              {
                if (v55 == 3)
                {
                  [OUTLINED_FUNCTION_0_5() setThemeSizeClassVertical:?];
                  [OUTLINED_FUNCTION_0_5() setThemeSizeClassHorizontal:?];
LABEL_75:
                  v55 = 4;
                  goto LABEL_86;
                }

                if (v55 == 2)
                {
                  OUTLINED_FUNCTION_1_4();
                  [OUTLINED_FUNCTION_0_5() setThemeSizeClassHorizontal:?];
                  v55 = 3;
                  goto LABEL_86;
                }

                if (v55 != 1)
                {
                  break;
                }

                [OUTLINED_FUNCTION_0_5() setThemeSizeClassVertical:?];
                OUTLINED_FUNCTION_2_3();
                v55 = 2;
LABEL_86:
                [a3 keyList];
                if ([OUTLINED_FUNCTION_3_3() canGetRenditionWithKey:?])
                {
                  goto LABEL_59;
                }
              }

              if (a4 && [a3 themeIdiom] == a4)
              {
                [OUTLINED_FUNCTION_0_5() setThemeIdiom:?];
                if (v46)
                {
                  OUTLINED_FUNCTION_1_4();
                  OUTLINED_FUNCTION_2_3();
                  v55 = 1;
                  goto LABEL_86;
                }

                goto LABEL_75;
              }

              if (v42 && [a3 themeDisplayGamut] == v42)
              {
                [OUTLINED_FUNCTION_0_5() setThemeDisplayGamut:?];
                if (v46)
                {
                  OUTLINED_FUNCTION_1_4();
                  OUTLINED_FUNCTION_2_3();
                  v55 = 1;
                }

                else
                {
                  v55 = 4;
                }

                OUTLINED_FUNCTION_4_3();
                goto LABEL_86;
              }

              if (!v86 || ![a3 themeDirection])
              {
                break;
              }

              if (v45)
              {
                v56 = 0;
              }

              else
              {
                v56 = v70;
              }

              [a3 setThemeDirection:v56];
              if (v46)
              {
                OUTLINED_FUNCTION_1_4();
                OUTLINED_FUNCTION_2_3();
                v55 = 1;
              }

              else
              {
                v55 = 4;
              }

              OUTLINED_FUNCTION_4_3();
              OUTLINED_FUNCTION_5_2();
              v45 = 1;
LABEL_103:
              [a3 keyList];
              if ([OUTLINED_FUNCTION_3_3() canGetRenditionWithKey:?])
              {
                goto LABEL_59;
              }
            }

            if (v92 && [a3 themeDeploymentTarget])
            {
              v89 = [a3 themeDeploymentTarget];
              OUTLINED_FUNCTION_4_3();
              OUTLINED_FUNCTION_5_2();
              OUTLINED_FUNCTION_6_1();
              if (v46)
              {
                OUTLINED_FUNCTION_1_4();
                OUTLINED_FUNCTION_2_3();
                v55 = 1;
              }

              else
              {
                v55 = 4;
              }

              --v89;
              [v77 decrementValue:&v89 forAttribute:25];
              [a3 setThemeDeploymentTarget:v89];
              v45 = 0;
              goto LABEL_103;
            }

            OUTLINED_FUNCTION_4_3();
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_6_1();
            if (v46)
            {
              OUTLINED_FUNCTION_1_4();
              OUTLINED_FUNCTION_2_3();
              v55 = 1;
            }

            else
            {
              v55 = 4;
            }

            OUTLINED_FUNCTION_7_2();
            v57 = v75 + v68;
            if (v75 < 0)
            {
              v58 = v57 < 1;
              if (v57 < 1)
              {
                v57 = a9;
              }

              v59 = 1;
              if (!v58)
              {
                v59 = -1;
              }

              v75 = v59;
              goto LABEL_116;
            }

            if (v57 > v73)
            {
              break;
            }

LABEL_116:
            v68 = v57;
            [a3 setThemeScale:?];
            [a3 keyList];
            v60 = [OUTLINED_FUNCTION_3_3() canGetRenditionWithKey:?];
            v45 = 0;
            v51 = 0;
            if (v60)
            {
              goto LABEL_60;
            }
          }

          v68 += v75;
          v52 = 0;
          v45 = 0;
LABEL_62:
          OUTLINED_FUNCTION_7_2();
          [a3 setThemeMemoryClass:v80];
          [a3 setThemeSubtype:v82];
          [a3 setThemeGraphicsClass:v88];
          [a3 setThemeScale:v84];
          OUTLINED_FUNCTION_4_3();
          OUTLINED_FUNCTION_5_2();
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_1_4();
          [a3 setThemeLocalization:a15];
          if (a16)
          {
            (*(a16 + 16))();
          }

          if (v88)
          {
            if (v83)
            {
              if (v91 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v53 = 0;
                v91 = 0;
                v54 = a13;
                goto LABEL_122;
              }

              if (v91 < (v83 - 1))
              {
                ++v91;
                v54 = a13;
                [v77 incrementIndex:&v91 inValues:a13 forAttribute:23];
                v53 = v91;
LABEL_122:
                v61 = [objc_msgSend(v54 objectAtIndex:{v53), "integerValue"}];
LABEL_123:
                [a3 setThemeGraphicsClass:v61];
                continue;
              }
            }

            else if ([a3 themeGraphicsClass])
            {
              v61 = 0;
              goto LABEL_123;
            }
          }

          break;
        }

        if (v79)
        {
          if (v74)
          {
            if (v90 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v62 = 0;
              v90 = 0;
              v63 = a14;
LABEL_132:
              v49 = [objc_msgSend(v63 objectAtIndex:{v62), "integerValue"}];
              continue;
            }

            if (v90 < (v74 - 1))
            {
              ++v90;
              v63 = a14;
              [v77 incrementIndex:&v90 inValues:a14 forAttribute:16];
              v62 = v90;
              goto LABEL_132;
            }
          }

          else
          {
            v49 = 0;
            if (v82)
            {
              continue;
            }
          }
        }

        break;
      }

      v58 = v32-- <= 0;
      if (v58)
      {
        v64 = v52 ^ 1;
        if (!a3)
        {
          v64 = 1;
        }

        if ((v64 & 1) == 0)
        {
          v39 = [a3 copy];
          [v72 setObject:v39 forKey:v71];
          v65 = v39;
          if (v39)
          {
            goto LABEL_140;
          }
        }

        break;
      }
    }
  }

LABEL_139:
  [v69 setObject:v71 forKey:v71];
  v39 = 0;
LABEL_140:

  return v39;
}

@end