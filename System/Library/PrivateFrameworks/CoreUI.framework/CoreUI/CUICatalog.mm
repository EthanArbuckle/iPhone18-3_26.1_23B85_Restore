@interface CUICatalog
+ (id)bestMatchUsingImages:(id)images scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(unint64_t)gamut layoutDirection:(unint64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0;
+ (id)bestMatchUsingObjects:(id)objects getAttributeValueUsing:(id)using scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut deploymentTarget:(int64_t)target layoutDirection:(int64_t)self0 sizeClassHorizontal:(int64_t)self1 sizeClassVertical:(int64_t)self2 memoryClass:(int64_t)self3 graphicsFeatureSetClass:(int64_t)self4 graphicsFallBackOrder:(id)self5 deviceSubtypeFallBackOrder:(id)self6 platform:(int64_t)self7;
+ (id)defaultUICatalogForBundle:(id)bundle;
- ($01BB1521EC52D44A8E7628F5261DCEC8)styledInsetsForStylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color scale:(double)scale;
- (BOOL)_doStyledQuartzDrawingInContext:(CGContext *)context inBounds:(CGRect)bounds stylePresetName:(id)name styleConfiguration:(id)configuration drawingHandler:(id)handler;
- (BOOL)_effectStyle:(unint64_t *)style state:(int64_t *)state presentationState:(int64_t *)presentationState value:(int64_t *)value resolution:(unint64_t *)resolution dimension1:(unint64_t *)dimension1 appearance:(int64_t *)appearance fromStyleConfiguration:(id)self0;
- (BOOL)canGetShapeEffectRenditionWithKey:(id)key;
- (BOOL)containsLookupForName:(id)name;
- (BOOL)copyVectorGlyphsWithNames:(id)names toFile:(id)file;
- (BOOL)drawGlyphs:(const unsigned __int16 *)glyphs atPositions:(const CGPoint *)positions inContext:(CGContext *)context withFont:(__CTFont *)font count:(unint64_t)count stylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)self0;
- (BOOL)fillStyledPath:(CGPath *)path inContext:(CGContext *)context stylePresetName:(id)name styleConfiguration:(id)configuration;
- (BOOL)fillStyledRect:(CGRect)rect inContext:(CGContext *)context stylePresetName:(id)name styleConfiguration:(id)configuration;
- (BOOL)hasStylePresetWithName:(id)name styleConfiguration:(id)configuration;
- (BOOL)strokeStyledPath:(CGPath *)path inContext:(CGContext *)context stylePresetName:(id)name styleConfiguration:(id)configuration;
- (CGColor)equivalentForegroundColorForStylePresetWithName:(id)name styleConfiguration:(id)configuration;
- (CGColor)equivalentForegroundColorForStylePresetWithName:(id)name styleConfiguration:(id)configuration baseForegroundColor:(CGColor *)color;
- (CGPDFDocument)pdfDocumentWithName:(id)name appearanceName:(id)appearanceName;
- (CUICatalog)init;
- (CUICatalog)initWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
- (CUICatalog)initWithName:(id)name fromBundle:(id)bundle error:(id *)error;
- (CUICatalog)initWithURL:(id)l error:(id *)error;
- (id)_appearancefallback_colorWithName:(id)name displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName;
- (id)_appearancefallback_gradientWithName:(id)name displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName;
- (id)_baseAtlasContentsKeyForName:(id)name;
- (id)_baseAtlasKeyForName:(id)name;
- (id)_baseColorKeyForName:(id)name;
- (id)_baseGradientKeyForName:(id)name;
- (id)_baseImageKeyForName:(id)name;
- (id)_baseKeyForName:(id)name;
- (id)_baseLayeredIconKeyForName:(id)name;
- (id)_baseModelForKeyForName:(id)name;
- (id)_baseMultisizeImageSetKeyForName:(id)name;
- (id)_baseRecognitionGroupImageSetKeyForName:(id)name;
- (id)_baseRecognitionObjectKeyForName:(id)name;
- (id)_baseStackKeyForName:(id)name;
- (id)_baseTextureKeyForName:(id)name;
- (id)_baseVectorGlyphForName:(id)name;
- (id)_baseVectorRenditionKey:(id)key;
- (id)_dataWithName:(id)name deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype memoryClass:(unint64_t)class graphicsClass:(unint64_t)graphicsClass appearanceIdentifier:(int64_t)identifier graphicsFallBackOrder:(id)order deviceSubtypeFallBackOrder:(id)self0;
- (id)_defaultLayerStackWithScaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical;
- (id)_defaultNamedAssetWithScaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical;
- (id)_imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 memoryClass:(unint64_t)self1 graphicsClass:(unint64_t)self2 appearanceIdentifier:(int64_t)self3 graphicsFallBackOrder:(id)self4 deviceSubtypeFallBackOrder:(id)self5 locale:(id)self6;
- (id)_layerStackWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical;
- (id)_modelWithName:(id)name;
- (id)_nameForAppearanceIdentifier:(int64_t)identifier;
- (id)_nameForLocalizationIdentifier:(int64_t)identifier;
- (id)_namedImageAtlasWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom displayGamut:(int64_t)gamut deviceSubtype:(unint64_t)subtype memoryClass:(unint64_t)class graphicsClass:(unint64_t)graphicsClass graphicsFallBackOrder:(id)self0 deviceSubtypeFallBackOrder:(id)self1;
- (id)_namedLookupWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceName:(id)self1 locale:(id)self2;
- (id)_namedTextureWithName:(id)name scaleFactor:(double)factor appearanceName:(id)appearanceName;
- (id)_namedTextureWithName:(id)name scaleFactor:(double)factor displayGamut:(int64_t)gamut appearanceName:(id)appearanceName;
- (id)_namedVectorImageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceIdentifier:(int64_t)self1 locale:(id)self2;
- (id)_private_resolvedRenditionKeyFromThemeRef:(void *)ref withBaseKey:(id)key scaleFactor:(uint64_t)factor deviceIdiom:(void *)idiom deviceSubtype:(uint64_t)subtype displayGamut:(uint64_t)gamut layoutDirection:(double)direction sizeClassHorizontal:(uint64_t)self0 sizeClassVertical:(uint64_t)self1 memoryClass:(uint64_t)self2 graphicsClass:(void *)self3 graphicsFallBackOrder:(void *)self4 deviceSubtypeFallBackOrder:(uint64_t)self5 localizationIdentifier:(uint64_t)self6 adjustRenditionKeyWithBlock:;
- (id)_recognitionImageWithName:(id)name;
- (id)_recognitionObjectWithName:(id)name;
- (id)_resolvedRenditionKeyForName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 memoryClass:(unint64_t)self1 graphicsClass:(unint64_t)self2 graphicsFallBackOrder:(id)self3 deviceSubtypeFallBackOrder:(id)self4 locale:(id)self5 withBaseKeySelector:(SEL)self6 adjustRenditionKeyWithBlock:(id)self7;
- (id)_resolvedRenditionKeyFromThemeRef:(unint64_t)ref withBaseKey:(id)key scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)self0 sizeClassVertical:(int64_t)self1 memoryClass:(unint64_t)self2 graphicsClass:(unint64_t)self3 graphicsFallBackOrder:(id)self4 deviceSubtypeFallBackOrder:(id)self5 locale:(id)self6 adjustRenditionKeyWithBlock:(id)self7;
- (id)allImageNames;
- (id)appearanceNames;
- (id)colorWithName:(id)name displayGamut:(int64_t)gamut appearanceName:(id)appearanceName;
- (id)colorWithName:(id)name displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName;
- (id)compositingFilterForStylePresetWithName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color;
- (id)copiedVectorGlyphsWithNames:(id)names outputFile:(id)file;
- (id)dataForVectorGlyphsWithNames:(id)names;
- (id)dataWithName:(id)name appearanceName:(id)appearanceName;
- (id)dataWithName:(id)name deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype memoryClass:(unint64_t)class graphicsClass:(unint64_t)graphicsClass appearanceIdentifier:(int64_t)identifier graphicsFallBackOrder:(id)order deviceSubtypeFallBackOrder:(id)self0;
- (id)defaultIconLayerStack;
- (id)defaultLayerStackWithScaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical;
- (id)defaultNamedAssetWithScaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical;
- (id)gradientWithName:(id)name displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName;
- (id)iconImageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 desiredSize:(CGSize)self1 appearanceName:(id)self2;
- (id)iconLayerStackWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(unint64_t)gamut appearanceName:(id)appearanceName locale:(id)locale;
- (id)imageByStylingImage:(CGImage *)image stylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color scale:(double)scale;
- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName;
- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceName:(id)self1 locale:(id)self2;
- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 memoryClass:(unint64_t)self1 graphicsClass:(unint64_t)self2 appearanceIdentifier:(int64_t)self3 graphicsFallBackOrder:(id)self4 deviceSubtypeFallBackOrder:(id)self5 locale:(id)self6;
- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical;
- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical appearanceName:(id)appearanceName;
- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom layoutDirection:(int64_t)direction locale:(id)locale adjustRenditionKeyWithBlock:(id)block;
- (id)imageWithName:(id)name scaleFactor:(double)factor locale:(id)locale;
- (id)imagesWithName:(id)name;
- (id)layerStackWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical;
- (id)localObjectCache;
- (id)lookupCache;
- (id)modelWithName:(id)name;
- (id)namedImageAtlasWithName:(id)name scaleFactor:(double)factor;
- (id)namedImageAtlasWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom;
- (id)namedImageAtlasWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom displayGamut:(int64_t)gamut deviceSubtype:(unint64_t)subtype memoryClass:(unint64_t)class graphicsClass:(unint64_t)graphicsClass graphicsFallBackOrder:(id)self0 deviceSubtypeFallBackOrder:(id)self1;
- (id)namedImageAtlasWithName:(id)name scaleFactor:(double)factor displayGamut:(unint64_t)gamut;
- (id)namedLookupWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceName:(id)self1 locale:(id)self2;
- (id)namedLookupWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical;
- (id)namedRecognitionGroupWithName:(id)name;
- (id)namedTextureWithName:(id)name scaleFactor:(double)factor appearanceName:(id)appearanceName;
- (id)namedTextureWithName:(id)name scaleFactor:(double)factor displayGamut:(int64_t)gamut appearanceName:(id)appearanceName;
- (id)namedVectorGlyphWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom layoutDirection:(int64_t)direction glyphContinuousSize:(double)size glyphContinuousWeight:(double)weight glyphPointSize:(double)pointSize appearanceName:(id)self0 locale:(id)self1;
- (id)namedVectorImageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceName:(id)self1 locale:(id)self2;
- (id)namedVectorImageWithName:(id)name scaleFactor:(double)factor displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction appearanceName:(id)appearanceName locale:(id)locale;
- (id)negativeCache;
- (id)newShapeEffectPresetForStylePresetName:(id)name styleConfiguration:(id)configuration;
- (id)newShapeEffectPresetWithRenditionKey:(id)key;
- (id)newShapeEffectStackForStylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color;
- (id)newTextEffectStackForStylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color;
- (id)parentNamedImageAtlasForImageNamed:(id)named scaleFactor:(double)factor displayGamut:(unint64_t)gamut;
- (id)parentNamedImageAtlastForImageNamed:(id)named scaleFactor:(double)factor;
- (id)renditionKeyForShapeEffectPresetForStylePresetName:(id)name styleConfiguration:(id)configuration;
- (id)renditionKeyForShapeEffectPresetWithStyleID:(unint64_t)d state:(int64_t)state presentationState:(int64_t)presentationState value:(int64_t)value resolution:(unint64_t)resolution dimension1:(unint64_t)dimension1;
- (id)renditionKeyForShapeEffectPresetWithStylePresetName:(id)name state:(int64_t)state presentationState:(int64_t)presentationState value:(int64_t)value resolution:(unint64_t)resolution dimension1:(unint64_t)dimension1 appearance:(int64_t)appearance;
- (id)textStyleWithName:(id)name deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical appearanceName:(id)appearanceName;
- (id)textStyleWithName:(id)name displayGamut:(int64_t)gamut appearanceName:(id)appearanceName;
- (int)blendModeForStylePresetWithName:(id)name styleConfiguration:(id)configuration;
- (int64_t)platform;
- (unint64_t)_storageRefForRendition:(id)rendition representsODRContent:(BOOL *)content;
- (void)_resolveInterpolationSourceRenditionKeysUltralight:(id *)ultralight regular:(id *)regular black:(id *)black forName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)self0 layoutDirection:(int64_t)self1 sizeClassHorizontal:(int64_t)self2 sizeClassVertical:(int64_t)self3 memoryClass:(unint64_t)self4 graphicsClass:(unint64_t)self5 graphicsFallBackOrder:(id)self6 deviceSubtypeFallBackOrder:(id)self7 appearanceIdentifier:(int64_t)self8 locale:(id)self9;
- (void)_resourceUnPinnedNotification:(id)notification;
- (void)_setPreferredLocalization:(id)localization;
- (void)_sharedSetup;
- (void)_vibrantColorMatrixBrightnessSaturationForColor:(CGColor *)color saturation:(double *)saturation brightness:(double *)brightness;
- (void)clearCachedImageResources;
- (void)dealloc;
- (void)enumerateNamedLookupsUsingBlock:(id)block;
- (void)finalizeNamedVectorGlyphLookupWithResult:(id)result name:(id)name glyphContinuousSize:(double)size glyphContinuousWeight:(double)weight pointSize:(double)pointSize;
- (void)preloadNamedAtlasWithScaleFactor:(double)factor andNames:(id)names completionHandler:(id)handler;
@end

@implementation CUICatalog

- (id)appearanceNames
{
  v2 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  appearances = [v2 appearances];
  if (!appearances || (result = [appearances allKeys]) == 0)
  {
    defaultAppearanceName = [v2 defaultAppearanceName];

    return [NSArray arrayWithObject:defaultAppearanceName];
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
    _themeStore = [(CUICatalog *)self _themeStore];
    _CUILog(3, "[CUICatalog clearCachedImageResources] on themestore '%@'", v5, v6, v7, v8, v9, v10, _themeStore);
    [_themeStore clearRenditionCache];
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

+ (id)defaultUICatalogForBundle:(id)bundle
{
  bundleCopy = bundle;
  if (bundle || (bundleCopy = +[NSBundle mainBundle]) != 0)
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
    v5[4] = bundleCopy;
    v5[5] = &v6;
    dispatch_sync(__cacheQueue, v5);
    bundleCopy = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  return bundleCopy;
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

+ (id)bestMatchUsingObjects:(id)objects getAttributeValueUsing:(id)using scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut deploymentTarget:(int64_t)target layoutDirection:(int64_t)self0 sizeClassHorizontal:(int64_t)self1 sizeClassVertical:(int64_t)self2 memoryClass:(int64_t)self3 graphicsFeatureSetClass:(int64_t)self4 graphicsFallBackOrder:(id)self5 deviceSubtypeFallBackOrder:(id)self6 platform:(int64_t)self7
{
  v21 = CUIMaxScaleForTargetPlatform(platform);
  v65 = [order count];
  v22 = [backOrder count];
  v23 = 0;
  v24 = 0;
  do
  {
    if (__memorySearchValues[v23] == class)
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
    gamutCopy = gamut;
    v25 = 4;
    if (__PAIR128__(vertical, horizontal) == 0)
    {
      v26 = 4;
    }

    else
    {
      v26 = 1;
    }

    v67 = v26;
    v27 = v21;
    if (direction == 4)
    {
      v25 = 5;
    }

    v62 = v25;
    v55 = v22 - 1;
    while (1)
    {
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      subtypeCopy = subtype;
      while (2)
      {
        setClassCopy2 = setClass;
        v30 = gamutCopy;
        idiomCopy8 = idiom;
LABEL_14:
        v32 = subtypeCopy;
        v59 = setClassCopy2;
        if (setClassCopy2)
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
          directionCopy5 = direction;
          verticalCopy7 = vertical;
          verticalCopy9 = horizontal;
          targetCopy4 = target;
          v37 = v30;
          idiomCopy6 = idiomCopy8;
          factorCopy2 = factor;
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
                    v73 = verticalCopy7;
                    v74 = verticalCopy9;
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v41 = [objects countByEnumeratingWithState:&v77 objects:v81 count:16];
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
                          objc_enumerationMutation(objects);
                        }

                        v45 = *(*(&v77 + 1) + 8 * v44);
                        if (factorCopy2 == (*(using + 2))(using, v45, 12) && (*(using + 2))(using, v45, 15) == idiomCopy6 && (*(using + 2))(using, v45, 16) == v32 && (*(using + 2))(using, v45, 24) == v37 && (*(using + 2))(using, v45, 25) == targetCopy4 && (*(using + 2))(using, v45, 4) == directionCopy5 && (*(using + 2))(using, v45, 20) == v74 && (*(using + 2))(using, v45, 21) == v73 && (*(using + 2))(using, v45, 23) == setClass && (*(using + 2))(using, v45, 22) == __memorySearchValues[v70])
                        {
                          return v45;
                        }

                        if (v42 == ++v44)
                        {
                          v42 = [objects countByEnumeratingWithState:&v77 objects:v81 count:16];
                          if (v42)
                          {
                            goto LABEL_25;
                          }

                          break;
                        }
                      }
                    }

                    verticalCopy9 = 0;
                    if (v71 == 1)
                    {
                      horizontalCopy9 = horizontal;
                      v40 = 2;
                      goto LABEL_45;
                    }

                    verticalCopy7 = vertical;
                    v40 = 3;
                  }

                  while (v71 == 2);
                  if (v71 != 3)
                  {
                    break;
                  }

                  verticalCopy9 = 0;
                  verticalCopy7 = 0;
                  v40 = 4;
                }

                idiomCopy8 = idiom;
                if (!idiom || idiomCopy6 != idiom)
                {
                  break;
                }

                idiomCopy6 = 0;
                verticalCopy7 = vertical;
                verticalCopy9 = horizontal;
                v40 = 1;
                if (__PAIR128__(vertical, horizontal) == 0)
                {
                  verticalCopy9 = v73;
                  horizontalCopy9 = v74;
                  v40 = 4;
                  goto LABEL_45;
                }
              }

              v30 = gamutCopy;
              if (gamutCopy && v37 == gamutCopy)
              {
                v37 = 0;
                verticalCopy9 = horizontal;
                if (__PAIR128__(vertical, horizontal) == 0)
                {
                  verticalCopy9 = v74;
                }

                verticalCopy7 = vertical;
                if (__PAIR128__(vertical, horizontal) == 0)
                {
                  verticalCopy7 = v73;
                }

                goto LABEL_76;
              }

              if (direction && directionCopy5)
              {
                v48 = v62;
                if (v64)
                {
                  v48 = 0;
                }

                directionCopy5 = v48;
                verticalCopy9 = horizontal;
                if (__PAIR128__(vertical, horizontal) == 0)
                {
                  verticalCopy9 = v74;
                }

                verticalCopy7 = vertical;
                if (__PAIR128__(vertical, horizontal) == 0)
                {
                  verticalCopy7 = v73;
                }

                v64 = 1;
                goto LABEL_75;
              }

              if (target && targetCopy4)
              {
                v64 = 0;
                directionCopy5 = direction;
                --targetCopy4;
                verticalCopy7 = vertical;
                verticalCopy9 = horizontal;
LABEL_75:
                v37 = gamutCopy;
LABEL_76:
                idiomCopy6 = idiom;
                goto LABEL_22;
              }

              v47 = factorCopy2 + v61;
              if ((v61 & 0x8000000000000000) == 0)
              {
                break;
              }

              v64 = 0;
              directionCopy5 = direction;
              verticalCopy7 = vertical;
              verticalCopy9 = horizontal;
              targetCopy4 = target;
              v37 = gamutCopy;
              idiomCopy6 = idiom;
              factorCopy2 = factor;
              v61 = 1;
              v40 = v67;
              if (v47 > 0.0)
              {
                v61 = -1;
                idiomCopy6 = idiom;
                verticalCopy9 = vertical;
                horizontalCopy9 = horizontal;
                directionCopy5 = direction;
                targetCopy4 = target;
                v37 = gamutCopy;
                goto LABEL_61;
              }
            }

            if (v47 > v27)
            {
              break;
            }

            v64 = 0;
            directionCopy5 = direction;
            verticalCopy9 = vertical;
            horizontalCopy9 = horizontal;
            targetCopy4 = target;
            v37 = gamutCopy;
            idiomCopy6 = idiom;
LABEL_61:
            factorCopy2 = v47;
            v40 = v67;
LABEL_45:
            verticalCopy7 = verticalCopy9;
            verticalCopy9 = horizontalCopy9;
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
                setClass = v59;
                idiomCopy8 = idiom;
                break;
              }

              v51 = v58 + 1;
            }

            v58 = v51;
            setClass = [objc_msgSend(order "objectAtIndex:"integerValue"")];
            idiomCopy8 = idiom;
            goto LABEL_21;
          }

          v49 = setClass | v65;
          setClass = 0;
          v50 = v49 == 0;
        }

        while (v59 && !v50);
        if (!subtype)
        {
          goto LABEL_96;
        }

        if (v57)
        {
          if (v56 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v56 = 0;
            v52 = [backOrder objectAtIndex:0];
          }

          else
          {
            if (v56 >= v55)
            {
              goto LABEL_96;
            }

            v52 = [backOrder objectAtIndex:++v56];
          }

          subtypeCopy = [v52 integerValue];
          continue;
        }

        break;
      }

      subtypeCopy = 0;
      setClassCopy2 = setClass;
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

+ (id)bestMatchUsingImages:(id)images scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(unint64_t)gamut layoutDirection:(unint64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0
{
  v18 = +[NSMutableArray array];
  if (idiom == 5)
  {
    CUIWatchSubTypeFallbackOrder(subtype, v18);
  }

  [v18 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 0)}];
  return [self bestMatchUsingObjects:images getAttributeValueUsing:&__block_literal_global_14 scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:0 deploymentTarget:factor layoutDirection:direction sizeClassHorizontal:horizontal sizeClassVertical:vertical memoryClass:0 graphicsFeatureSetClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:v18];
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

- (void)_setPreferredLocalization:(id)localization
{
  v5 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  keyFormat = [v5 keyFormat];
  if (localization)
  {
    self->_preferredLocalization = [v5 localizationIdentifierForName:localization];
LABEL_3:
    _CUILog(3, "[CUICatalog _setPreferredLocalization:] set it to '%@'", v13, v14, v15, v16, v17, v18, localization);
    return;
  }

  if (!keyFormat || !CUIRenditionKeyHasIdentifier(keyFormat, 13))
  {
    self->_preferredLocalization = 0;
    v24 = "[CUICatalog _setPreferredLocalization:] set it to unlocalized/base because there is no localized content present";
LABEL_10:

    _CUILog(3, v24, v7, v8, v9, v10, v11, v12, v26);
    return;
  }

  localizations = [v5 localizations];

  self->_assetCatalogLocalizations = [localizations allKeys];
  preferredLocalizations = [+[NSBundle mainBundle](NSBundle preferredLocalizations];
  v21 = [(NSArray *)+[NSBundle preferredLocalizationsFromArray:forPreferences:](NSBundle firstObject:self->_assetCatalogLocalizations];
  v22 = [NSLocale mostPreferredLanguageOf:self->_assetCatalogLocalizations withPreferredLanguages:preferredLocalizations forUsage:1 options:0];
  if (!v22)
  {
    self->_preferredLocalization = 0;
    v24 = "[CUICatalog _setPreferredLocalization:] set it to unlocalized/base";
    goto LABEL_10;
  }

  localization = v22;
  v23 = [+[NSLocale baseLanguageFromLanguage:](NSLocale baseLanguageFromLanguage:{v21), "isEqualToString:", +[NSLocale baseLanguageFromLanguage:](NSLocale, "baseLanguageFromLanguage:", v22)}];
  self->_preferredLocalization = [v5 localizationIdentifierForName:localization];
  if (v23)
  {
    goto LABEL_3;
  }

  _CUILog(3, "[CUICatalog _setPreferredLocalization:] set it to *'%@'", v13, v14, v15, v16, v17, v18, localization);
}

- (id)_nameForLocalizationIdentifier:(int64_t)identifier
{
  identifierCopy = identifier;
  v4 = _LookupStructuredThemeProvider(self->_storageRef, a2);

  return [v4 nameForLocalizationIdentifier:identifierCopy];
}

- (CUICatalog)initWithName:(id)name fromBundle:(id)bundle error:(id *)error
{
  v12.receiver = self;
  v12.super_class = CUICatalog;
  v8 = [(CUICatalog *)&v12 init];
  if (v8)
  {
    if (!bundle)
    {
      bundle = +[NSBundle mainBundle];
    }

    v9 = +[CUIThemeFacet themeNamed:forBundleIdentifier:error:](CUIThemeFacet, "themeNamed:forBundleIdentifier:error:", name, [bundle bundleIdentifier], error);
    v8->_storageRef = v9;
    if (v9)
    {
      *(v8 + 21) &= 0xF8000000;
      v8->_bundle = bundle;
      v8->_assetStoreName = [name copy];
      [(CUICatalog *)v8 _sharedSetup];
      v10 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v10 addObserver:v8 selector:sel__resourceUnPinnedNotification_ name:_NSBundleResourceRequestAssetPackUnpinnedNotification object:bundle];
    }

    else
    {
      v8->_storageRef = 0x7FFFFFFFFFFFFFFFLL;

      return 0;
    }
  }

  return v8;
}

- (CUICatalog)initWithURL:(id)l error:(id *)error
{
  v9.receiver = self;
  v9.super_class = CUICatalog;
  v6 = [(CUICatalog *)&v9 init];
  if (v6)
  {
    if ([l checkResourceIsReachableAndReturnError:error] && (*(v6 + 82) |= 1u, v6->_assetStoreName = objc_msgSend(objc_msgSend(objc_msgSend(l, "URLByDeletingPathExtension"), "lastPathComponent"), "copy"), v7 = +[CUIThemeFacet themeWithContentsOfURL:error:](CUIThemeFacet, "themeWithContentsOfURL:error:", l, error), (v6->_storageRef = v7) != 0))
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

- (CUICatalog)initWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  v12.receiver = self;
  v12.super_class = CUICatalog;
  v8 = [(CUICatalog *)&v12 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 82) |= 9u;
    v10 = [CUIThemeFacet themeWithBytes:bytes length:length error:error];
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

- (void)_resourceUnPinnedNotification:(id)notification
{
  if (self->_storageMapTable)
  {
    userInfo = [notification userInfo];
    v6 = [userInfo objectForKey:_NSBundleResourceRequestAssetPackNotificationAssetPackIDKey];
    v7 = NSMapGet(self->_storageMapTable, v6);
    if (v7)
    {
      v8 = v7;
      [objc_msgSend(notification "object")];
      _CUILog(3, "CoreUI: [CUICatalog _resourceUnPinnedNotification:] for themeRef '%d' (for bundle identifier '%@' and asset pack identifier '%@').", v9, v10, v11, v12, v13, v14, v8);
      [CUIThemeFacet themeUnregisterThemeRef:v8];
    }

    else
    {
      v15 = [objc_msgSend(notification "object")];
      _CUILog(3, "CoreUI: [CUICatalog _resourceUnPinnedNotification:] did not find themeRef for for bundle identifier '%@' and asset pack identifier '%@'.", v16, v17, v18, v19, v20, v21, v15);
    }

    storageMapTable = self->_storageMapTable;

    NSMapRemove(storageMapTable, v6);
  }
}

- (id)_recognitionImageWithName:(id)name
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
  _CUILog(3, "[CUICatalog _recognitionImageWithName:%@]", name, v3, v4, v5, v6, v7, name);
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:v10 deviceIdiom:v11 deviceSubtype:v12 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:v13 graphicsClass:v14 graphicsFallBackOrder:v15 deviceSubtypeFallBackOrder:v16 locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:0];
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
      v20 = [[CUINamedRecognitionImage alloc] initWithName:name usingRenditionKey:v18 fromTheme:v19];
      [(CUINamedLookup *)v20 setRepresentsOnDemandContent:v21];
      return v20;
    }
  }

  return result;
}

- (id)imageWithName:(id)name scaleFactor:(double)factor locale:(id)locale
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self imageWithName:name scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 appearanceName:0 locale:locale];
}

- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v11 = __getDeviceTraits___deviceSubtype;

  return [(CUICatalog *)self imageWithName:name scaleFactor:idiom deviceIdiom:v11 deviceSubtype:appearanceName appearanceName:factor];
}

- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self imageWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical];
}

- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical appearanceName:(id)appearanceName
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self imageWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical appearanceName:appearanceName];
}

- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceName:(id)self1 locale:(id)self2
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
  if (self && appearanceName)
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

  if (v17 == idiom && v18 == subtype)
  {
    return [(CUICatalog *)self imageWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:v19 graphicsClass:v20 appearanceIdentifier:v16 graphicsFallBackOrder:v21 deviceSubtypeFallBackOrder:v22 locale:locale];
  }

  v28 = v21;
  v29 = v20;
  v30 = v19;
  if (idiom == 5)
  {
    v31 = +[NSMutableArray array];
    CUIWatchSubTypeFallbackOrder(subtype, v31);
    [(NSArray *)v31 addObject:[NSNumber numberWithInt:0]];
  }

  else
  {
    v37 = [NSNumber numberWithInt:0];
    v31 = [NSArray arrayWithObjects:&v37 count:1];
  }

  return [(CUICatalog *)self imageWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:v30 graphicsClass:v29 appearanceIdentifier:v16 graphicsFallBackOrder:v28 deviceSubtypeFallBackOrder:v31 locale:locale];
}

- (id)_baseImageKeyForName:(id)name
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

- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom layoutDirection:(int64_t)direction locale:(id)locale adjustRenditionKeyWithBlock:(id)block
{
  v33 = 0;
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  _CUILog(3, "[CUICatalog imageWithName:%@]", v15, v16, v17, v18, v19, v20, name);
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v21 = __getDeviceTraits___deviceDisplayGamut;
  v22 = __getDeviceTraits___deviceMemoryClass;
  v23 = __getDeviceTraits___deviceGraphicsClass;
  v24 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  if (__getDeviceTraits___deviceIdiom == idiom)
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

  v27 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:v25 deviceSubtype:v21 displayGamut:direction layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 memoryClass:v22 graphicsClass:v23 graphicsFallBackOrder:v24 deviceSubtypeFallBackOrder:v26 locale:locale withBaseKeySelector:sel__baseImageKeyForName_ adjustRenditionKeyWithBlock:block];
  if (!v27 || (v28 = v27, [v27 themePart] == 220) || (v29 = -[CUICatalog _storageRefForRendition:representsODRContent:](self, "_storageRefForRendition:representsODRContent:", v28, &v33), v29 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v30 = 0;
  }

  else
  {
    v32 = [[CUINamedImage alloc] initWithName:name usingRenditionKey:v28 fromTheme:v29];
    [(CUINamedLookup *)v32 setRepresentsOnDemandContent:v33];
    v30 = v32;
  }

  kdebug_trace();
  return v30;
}

- (id)_imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 memoryClass:(unint64_t)self1 graphicsClass:(unint64_t)self2 appearanceIdentifier:(int64_t)self3 graphicsFallBackOrder:(id)self4 deviceSubtypeFallBackOrder:(id)self5 locale:(id)self6
{
  v29[0] = 0;
  _CUILog(3, "[CUICatalog _imageWithName:%@]", name, idiom, subtype, gamut, direction, horizontal, name);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __237__CUICatalog__imageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_appearanceIdentifier_graphicsFallBackOrder_deviceSubtypeFallBackOrder_locale___block_invoke;
  v28[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v28[4] = identifier;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:class graphicsClass:graphicsClass graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder locale:locale withBaseKeySelector:sel__baseImageKeyForName_ adjustRenditionKeyWithBlock:v28, class, graphicsClass, identifier, order, backOrder, locale];
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
      v23 = [[CUINamedImage alloc] initWithName:name usingRenditionKey:v21 fromTheme:v22];
      [(CUINamedLookup *)v23 setRepresentsOnDemandContent:v29[0]];
      return v23;
    }
  }

  return result;
}

- (id)imageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 memoryClass:(unint64_t)self1 graphicsClass:(unint64_t)self2 appearanceIdentifier:(int64_t)self3 graphicsFallBackOrder:(id)self4 deviceSubtypeFallBackOrder:(id)self5 locale:(id)self6
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v24 = [(CUICatalog *)self _imageWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:class graphicsClass:graphicsClass appearanceIdentifier:identifier graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder locale:locale];
  kdebug_trace();
  return v24;
}

- (id)iconImageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 desiredSize:(CGSize)self1 appearanceName:(id)self2
{
  height = size.height;
  width = size.width;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v97 = 0;
  v21 = __getDeviceTraits___deviceIdiom;
  v22 = __getDeviceTraits___deviceSubtype;
  obj = __getDeviceTraits___deviceSubtypeFallbackOrder;
  if (self && appearanceName)
  {
    v97 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  if (v21 != idiom || v22 != subtype)
  {
    if (idiom == 5)
    {
      v24 = +[NSMutableArray array];
      CUIWatchSubTypeFallbackOrder(subtype, v24);
      obj = v24;
      [(NSArray *)v24 addObject:[NSNumber numberWithInt:0]];
    }

    else
    {
      v110 = [NSNumber numberWithInt:0];
      obj = [NSArray arrayWithObjects:&v110 count:1];
    }
  }

  _CUILog(3, "[CUICatalog iconImageWithName:%@]", name, idiom, subtype, gamut, direction, horizontal, name);
  v25 = objc_alloc_init(NSMutableSet);
  appearanceName = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:obj locale:0 withBaseKeySelector:sel__baseMultisizeImageSetKeyForName_ adjustRenditionKeyWithBlock:0, *&width, *&height, appearanceName];
  if (!appearanceName)
  {
    goto LABEL_60;
  }

  v27 = appearanceName;
  v108 = 0;
  v28 = [(CUICatalog *)self _storageRefForRendition:appearanceName representsODRContent:&v108];
  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  v29 = v28;
  [v25 addObject:v27];
  v90 = [[CUINamedMultisizeImageSet alloc] initWithName:name usingRenditionKey:v27 fromTheme:v29];
  if (!v90)
  {
    goto LABEL_60;
  }

  selfCopy = self;
  idiomCopy = idiom;
  v93 = v27;
  if ([v27 themeSubtype])
  {
    v107[0] = _NSConcreteStackBlock;
    v107[1] = 3221225472;
    v107[2] = __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke;
    v107[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
    v107[4] = v97;
    v30 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:0 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:obj locale:0 withBaseKeySelector:sel__baseMultisizeImageSetKeyForName_ adjustRenditionKeyWithBlock:v107];
    if (v30 && ([v25 containsObject:v30] & 1) == 0)
    {
      [v25 addObject:v30];
      v89 = [[CUINamedMultisizeImageSet alloc] initWithName:name usingRenditionKey:v30 fromTheme:v29];
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

  gamutCopy = gamut;
  directionCopy = direction;
  themeIdiom = [v93 themeIdiom];
  v32 = 0;
  if (v30 && themeIdiom)
  {
    if ([v30 themeIdiom] && (v106[0] = _NSConcreteStackBlock, v106[1] = 3221225472, v106[2] = __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke_2, v106[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l, v106[4] = v97, (v33 = -[CUICatalog _resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:](self, "_resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:", name, 0, 0, 0, 0, 0, 1.0, 0, 0, 0, 0, 0, 0, sel__baseMultisizeImageSetKeyForName_, v106)) != 0) && (v34 = v33, (objc_msgSend(v25, "containsObject:", v33) & 1) == 0))
    {
      [v25 addObject:v34];
      v32 = [[CUINamedMultisizeImageSet alloc] initWithName:name usingRenditionKey:v34 fromTheme:v29];
    }

    else
    {
      v32 = 0;
    }
  }

  v94 = v29;
  v35 = v25;
  subtypeCopy = subtype;
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

        integerValue = [*(*(&v102 + 1) + 8 * i) integerValue];
        v101[0] = _NSConcreteStackBlock;
        v101[1] = 3221225472;
        v101[2] = __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke_3;
        v101[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
        v101[4] = v97;
        v42 = [(CUICatalog *)selfCopy _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:integerValue deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__baseMultisizeImageSetKeyForName_ adjustRenditionKeyWithBlock:v101];
        if (v42)
        {
          v43 = v42;
          if (([v35 containsObject:v42] & 1) == 0)
          {
            [v35 addObject:v43];
            v44 = [[CUINamedMultisizeImageSet alloc] initWithName:name usingRenditionKey:v43 fromTheme:v94];
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
    v51 = directionCopy;
    horizontalCopy = horizontal;
    v52 = gamutCopy;
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

      index = [v56 index];
      v53 = index;
      if (v54)
      {
        v60 = v51;
        v61 = horizontalCopy;
        v62 = index;
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
        horizontalCopy = v61;
        v51 = v60;
        v52 = gamutCopy;
      }

LABEL_51:
      v73 = v53;
      v74 = [v93 copy];
      [v74 setThemePart:220];
      storageRef = selfCopy->_storageRef;
      v100[0] = _NSConcreteStackBlock;
      v100[1] = 3221225472;
      v100[2] = __164__CUICatalog_iconImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_desiredSize_appearanceName___block_invoke_5;
      v100[3] = &__block_descriptor_48_e25_v16__0__CUIRenditionKey_8l;
      v100[4] = v73;
      v100[5] = v97;
      v76 = [(CUICatalog *)selfCopy _resolvedRenditionKeyFromThemeRef:storageRef withBaseKey:v74 scaleFactor:idiomCopy deviceIdiom:subtypeCopy deviceSubtype:v52 displayGamut:v51 layoutDirection:factor sizeClassHorizontal:horizontalCopy sizeClassVertical:vertical memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:obj locale:0 adjustRenditionKeyWithBlock:v100];

      if (v58 < width || v76 || v49 == 1)
      {
        break;
      }

      v77 = [v47 mutableCopy];
      [v77 removeObjectAtIndex:v54];
      v47 = v77;
      v49 = [v47 count];
      v78 = selfCopy;
      if (!v49)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v78 = selfCopy;
LABEL_57:
    [objc_msgSend(-[CUICatalog _themeStore](v78 "_themeStore")];
    _CUILog(4, "CoreUI: icon image with name '%@' has no sizes indexes at '%@'", v79, v80, v81, v82, v83, v84, name);
    v76 = 0;
  }

  v25 = v35;
  if (v76)
  {
    v85 = [(CUINamedImage *)[CUINamedMultisizeImage alloc] initWithName:name usingRenditionKey:v76 fromTheme:v94];
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

- (id)_dataWithName:(id)name deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype memoryClass:(unint64_t)class graphicsClass:(unint64_t)graphicsClass appearanceIdentifier:(int64_t)identifier graphicsFallBackOrder:(id)order deviceSubtypeFallBackOrder:(id)self0
{
  v23[0] = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __150__CUICatalog__dataWithName_deviceIdiom_deviceSubtype_memoryClass_graphicsClass_appearanceIdentifier_graphicsFallBackOrder_deviceSubtypeFallBackOrder___block_invoke;
  v22[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v22[4] = identifier;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:class graphicsClass:graphicsClass graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v22];
  if (result || (v21[0] = _NSConcreteStackBlock, v21[1] = 3221225472, v21[2] = __150__CUICatalog__dataWithName_deviceIdiom_deviceSubtype_memoryClass_graphicsClass_appearanceIdentifier_graphicsFallBackOrder_deviceSubtypeFallBackOrder___block_invoke_2, v21[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l, v21[4] = identifier, (result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:0.0 sizeClassVertical:0 memoryClass:class graphicsClass:graphicsClass graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v21]) != 0))
  {
    v18 = result;
    v19 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:v23];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v20 = [[CUINamedData alloc] initWithName:name usingRenditionKey:v18 fromTheme:v19];
      [(CUINamedLookup *)v20 setRepresentsOnDemandContent:v23[0]];
      return v20;
    }
  }

  return result;
}

- (id)dataWithName:(id)name deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype memoryClass:(unint64_t)class graphicsClass:(unint64_t)graphicsClass appearanceIdentifier:(int64_t)identifier graphicsFallBackOrder:(id)order deviceSubtypeFallBackOrder:(id)self0
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v17 = [(CUICatalog *)self _dataWithName:name deviceIdiom:idiom deviceSubtype:subtype memoryClass:class graphicsClass:graphicsClass appearanceIdentifier:identifier graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder];
  kdebug_trace();
  return v17;
}

- (id)dataWithName:(id)name appearanceName:(id)appearanceName
{
  v6 = 0;
  if (self && appearanceName)
  {
    v6 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self dataWithName:name deviceIdiom:__getDeviceTraits___deviceIdiom deviceSubtype:__getDeviceTraits___deviceSubtype memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass appearanceIdentifier:v6 graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder];
}

- (id)textStyleWithName:(id)name deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical appearanceName:(id)appearanceName
{
  v16 = 0;
  if (self && appearanceName)
  {
    v16 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __124__CUICatalog_textStyleWithName_deviceIdiom_deviceSubtype_displayGamut_sizeClassHorizontal_sizeClassVertical_appearanceName___block_invoke;
  v21[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v21[4] = v16;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:0 layoutDirection:horizontal sizeClassHorizontal:1.0 sizeClassVertical:vertical memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v21];
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
      return [[CUITextStyle alloc] initWithName:name usingRenditionKey:v18 fromTheme:v19];
    }
  }

  return result;
}

- (id)textStyleWithName:(id)name displayGamut:(int64_t)gamut appearanceName:(id)appearanceName
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v8 = __getDeviceTraits___deviceIdiom;
  v9 = __getDeviceTraits___deviceSubtype;

  return [(CUICatalog *)self textStyleWithName:name deviceIdiom:v8 deviceSubtype:v9 displayGamut:gamut sizeClassHorizontal:0 sizeClassVertical:0];
}

- (id)_namedImageAtlasWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom displayGamut:(int64_t)gamut deviceSubtype:(unint64_t)subtype memoryClass:(unint64_t)class graphicsClass:(unint64_t)graphicsClass graphicsFallBackOrder:(id)self0 deviceSubtypeFallBackOrder:(id)self1
{
  v24 = 0;
  result = [CUICatalog _resolvedRenditionKeyForName:"_resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:" scaleFactor:name deviceIdiom:idiom deviceSubtype:subtype displayGamut:factor layoutDirection:0 sizeClassHorizontal:class sizeClassVertical:graphicsClass memoryClass:order graphicsClass:backOrder graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:sel__baseAtlasKeyForName_ locale:0 withBaseKeySelector:? adjustRenditionKeyWithBlock:?];
  if (result || (result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:0.0 sizeClassVertical:0 memoryClass:class graphicsClass:graphicsClass graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder locale:0 withBaseKeySelector:sel__baseAtlasKeyForName_ adjustRenditionKeyWithBlock:0]) != 0)
  {
    v18 = result;
    nameCopy = name;
    v20 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:0 deviceIdiom:0 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__baseAtlasContentsKeyForName_ adjustRenditionKeyWithBlock:0];
    v21 = [(CUICatalog *)self _storageRefForRendition:v18 representsODRContent:&v24];
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v22 = [[CUINamedImageAtlas alloc] initWithName:nameCopy usingRenditionKey:v18 withContents:v20 contentsFromCatalog:self fromTheme:v21 withSourceThemeRef:[(CUICatalog *)self _themeRef]];
      [(CUINamedLookup *)v22 setRepresentsOnDemandContent:v24];
      return v22;
    }
  }

  return result;
}

- (id)namedImageAtlasWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom displayGamut:(int64_t)gamut deviceSubtype:(unint64_t)subtype memoryClass:(unint64_t)class graphicsClass:(unint64_t)graphicsClass graphicsFallBackOrder:(id)self0 deviceSubtypeFallBackOrder:(id)self1
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v19 = [(CUICatalog *)self _namedImageAtlasWithName:name scaleFactor:idiom deviceIdiom:gamut displayGamut:subtype deviceSubtype:class memoryClass:graphicsClass graphicsClass:factor graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder];
  kdebug_trace();
  return v19;
}

- (id)namedImageAtlasWithName:(id)name scaleFactor:(double)factor
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self namedImageAtlasWithName:name scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceDisplayGamut displayGamut:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceMemoryClass memoryClass:__getDeviceTraits___deviceGraphicsClass graphicsClass:factor graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder];
}

- (id)namedImageAtlasWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  if (__getDeviceTraits___deviceIdiom == idiom)
  {
    v9 = __getDeviceTraits___deviceSubtype;
  }

  else
  {
    v9 = 0;
  }

  return [(CUICatalog *)self namedImageAtlasWithName:name scaleFactor:idiom deviceIdiom:__getDeviceTraits___deviceDisplayGamut displayGamut:v9 deviceSubtype:__getDeviceTraits___deviceMemoryClass memoryClass:__getDeviceTraits___deviceGraphicsClass graphicsClass:factor graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder];
}

- (id)namedImageAtlasWithName:(id)name scaleFactor:(double)factor displayGamut:(unint64_t)gamut
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self namedImageAtlasWithName:name scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:gamut displayGamut:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceMemoryClass memoryClass:__getDeviceTraits___deviceGraphicsClass graphicsClass:factor graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder];
}

- (id)parentNamedImageAtlasForImageNamed:(id)named scaleFactor:(double)factor displayGamut:(unint64_t)gamut
{
  v16 = 0;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  result = [(CUICatalog *)self _resolvedRenditionKeyForName:named scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:gamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:0];
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

- (id)parentNamedImageAtlastForImageNamed:(id)named scaleFactor:(double)factor
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v7 = __getDeviceTraits___deviceDisplayGamut;

  return [(CUICatalog *)self parentNamedImageAtlasForImageNamed:named scaleFactor:v7 displayGamut:factor];
}

- (void)preloadNamedAtlasWithScaleFactor:(double)factor andNames:(id)names completionHandler:(id)handler
{
  global_queue = dispatch_get_global_queue(17, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__CUICatalog_preloadNamedAtlasWithScaleFactor_andNames_completionHandler___block_invoke;
  v10[3] = &unk_1E7257DA0;
  v10[4] = names;
  v10[5] = self;
  *&v10[7] = factor;
  v10[6] = handler;
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

- (id)_baseVectorGlyphForName:(id)name
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

- (void)_resolveInterpolationSourceRenditionKeysUltralight:(id *)ultralight regular:(id *)regular black:(id *)black forName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)self0 layoutDirection:(int64_t)self1 sizeClassHorizontal:(int64_t)self2 sizeClassVertical:(int64_t)self3 memoryClass:(unint64_t)self4 graphicsClass:(unint64_t)self5 graphicsFallBackOrder:(id)self6 deviceSubtypeFallBackOrder:(id)self7 appearanceIdentifier:(int64_t)self8 locale:(id)self9
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke;
  v29[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v29[4] = identifier;
  *ultralight = [CUICatalog _resolvedRenditionKeyForName:"_resolvedRenditionKeyForName:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:withBaseKeySelector:adjustRenditionKeyWithBlock:" scaleFactor:name deviceIdiom:idiom deviceSubtype:subtype displayGamut:vertical layoutDirection:class sizeClassHorizontal:graphicsClass sizeClassVertical:order memoryClass:backOrder graphicsClass:locale graphicsFallBackOrder:sel__baseVectorGlyphForName_ deviceSubtypeFallBackOrder:v29 locale:? withBaseKeySelector:? adjustRenditionKeyWithBlock:?];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke_2;
  v28[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v28[4] = identifier;
  *regular = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:class graphicsClass:graphicsClass graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder locale:locale withBaseKeySelector:sel__baseVectorGlyphForName_ adjustRenditionKeyWithBlock:v28];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __295__CUICatalog__resolveInterpolationSourceRenditionKeysUltralight_regular_black_forName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_memoryClass_graphicsClass_graphicsFallBackOrder_deviceSubtypeFallBackOrder_appearanceIdentifier_locale___block_invoke_3;
  v27[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v27[4] = identifier;
  *black = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:class graphicsClass:graphicsClass graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder locale:locale withBaseKeySelector:sel__baseVectorGlyphForName_ adjustRenditionKeyWithBlock:v27];
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

- (void)finalizeNamedVectorGlyphLookupWithResult:(id)result name:(id)name glyphContinuousSize:(double)size glyphContinuousWeight:(double)weight pointSize:(double)pointSize
{
  if (!result && [name length] == 2)
  {
    [name getCharacters:&v14];
    if ((v14 & 0xFC00) == 0xD800 && (v15 & 0xFC00) == 0xDC00 && ((v15 + (v14 << 10) + 2106368) & 0x3F0000) == 0x100000)
    {
      _CUILog(4, "CoreUI: Symbol asset lookup attempted with invalid name '%@'. Argument contains Unicode codepoint copied from SF Symbols app. Please use full symbol name instead!", v8, v9, v10, v11, v12, v13, name);
    }
  }

  kdebug_trace();
}

- (id)namedVectorGlyphWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom layoutDirection:(int64_t)direction glyphContinuousSize:(double)size glyphContinuousWeight:(double)weight glyphPointSize:(double)pointSize appearanceName:(id)self0 locale:(id)self1
{
  nameCopy = name;
  _CUILog(3, "[CUICatalog namedVectorGlyphWithName:%@]", name, idiom, direction, appearanceName, locale, v11, name);
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v20 = _LookupStructuredThemeProvider(self->_storageRef, v19);
  v21 = [(CUICatalog *)self _baseVectorGlyphForName:nameCopy];
  if (v21)
  {
    v22 = v21;
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && (v23 = [v20 aliasForName:nameCopy]) != 0)
  {
    v24 = v23;
    v22 = [(CUICatalog *)self _baseVectorGlyphForName:v23];
    nameCopy = v24;
  }

  else
  {
    v22 = 0;
  }

  v26 = [objc_msgSend(v20 "themeStore")];
  if (appearanceName)
  {
    v56 = [_LookupStructuredThemeProvider(self->_storageRef v25)];
  }

  else
  {
    v56 = 0;
  }

  v64 = 0;
  if (factor <= 0.0 || pointSize <= 0.0)
  {
    [objc_msgSend(-[CUICatalog _themeStore](self "_themeStore")];
    _CUILog(4, "CoreUI: [CUICatalog namedVectorGlyphWithName:scaleFactor:deviceIdiom:layoutDirection:glyphSize:glyphWeight:glyphPointSize:appearanceName:] '%@' called with scaleFactor == %f glyphPointSize == %f at '%@'", v30, v31, v32, v33, v34, v35, nameCopy);
    [(CUICatalog *)self finalizeNamedVectorGlyphLookupWithResult:0 name:nameCopy glyphContinuousSize:size glyphContinuousWeight:weight pointSize:pointSize];
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
    if (__getDeviceTraits___deviceIdiom == idiom)
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
    while (*&kCoreThemeContinuousGlyphSizes[v37] != size)
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
    while (*&kCoreThemeContinuousGlyphWeights[v39] != weight)
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
          v44 = [(CUICatalog *)self _resolvedRenditionKeyForName:nameCopy scaleFactor:idiom deviceIdiom:v28 deviceSubtype:v55 displayGamut:direction layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 memoryClass:v54 graphicsClass:v53 graphicsFallBackOrder:v27 deviceSubtypeFallBackOrder:v29 locale:locale withBaseKeySelector:v52 adjustRenditionKeyWithBlock:v63];
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
        [(CUICatalog *)self _resolveInterpolationSourceRenditionKeysUltralight:&v62 regular:&v61 black:&v60 forName:nameCopy scaleFactor:idiom deviceIdiom:v28 deviceSubtype:factor displayGamut:v55 layoutDirection:direction sizeClassHorizontal:0 sizeClassVertical:0 memoryClass:v54 graphicsClass:v53 graphicsFallBackOrder:v27 deviceSubtypeFallBackOrder:v29 appearanceIdentifier:v56 locale:locale];
        if (v62)
        {
          if (v61)
          {
            if (v60)
            {
              v46 = [CUINamedVectorGlyph alloc];
              v47 = [(CUINamedVectorGlyph *)v46 initWithName:nameCopy scaleFactor:idiom deviceIdiom:v61 pointSize:v62 continuousWeight:v60 continuousSize:self interpolatedFromRegular:factor ultralight:pointSize black:weight fromCatalog:size themeRef:v45 locale:locale];
              if (v47)
              {
                goto LABEL_52;
              }
            }
          }
        }

        if ((v42 & 1) == 0)
        {
          v38 = _snapToDiscreteSizeForSize(size);
          v40 = _snapToDiscreteWeightForWeight(weight);
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

    v47 = [[CUINamedVectorGlyph alloc] initWithName:nameCopy scaleFactor:idiom deviceIdiom:self pointSize:v48 fromCatalog:v49 usingRenditionKey:locale themeRef:factor locale:pointSize];
LABEL_52:
    v36 = v47;
    [(CUINamedVectorGlyph *)v47 setRepresentsOnDemandContent:v64];
    v50 = v36;
LABEL_53:
    [(CUICatalog *)self finalizeNamedVectorGlyphLookupWithResult:v36 name:nameCopy glyphContinuousSize:size glyphContinuousWeight:weight pointSize:pointSize];
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
  _themeStore = [(CUICatalog *)self _themeStore];

  return [_themeStore allImageNames];
}

- (id)imagesWithName:(id)name
{
  _themeStore = [(CUICatalog *)self _themeStore];

  return [_themeStore imagesWithName:name];
}

- (BOOL)containsLookupForName:(id)name
{
  if ([-[CUICatalog _themeStore](self "_themeStore")])
  {
    return 1;
  }

  v6 = [-[CUICatalog _themeStore](self "_themeStore")];
  v7 = [v6 indexOfObject:name];
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

- (void)enumerateNamedLookupsUsingBlock:(id)block
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
    v6[7] = block;
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

- (CGPDFDocument)pdfDocumentWithName:(id)name appearanceName:(id)appearanceName
{
  v6 = 0;
  v14 = 0;
  if (self && appearanceName)
  {
    v6 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __49__CUICatalog_pdfDocumentWithName_appearanceName___block_invoke;
  v13[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v13[4] = v6;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:0 deviceIdiom:0 deviceSubtype:0 displayGamut:0 layoutDirection:0 sizeClassHorizontal:0.0 sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:0 adjustRenditionKeyWithBlock:v13];
  if (result)
  {
    v8 = result;
    v9 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v14];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(CUICatalog *)self namedVectorImageWithName:name scaleFactor:1 displayGamut:0 layoutDirection:CUIMaxScaleForTargetPlatform([(CUICatalog *)self platform])];
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

- (id)namedVectorImageWithName:(id)name scaleFactor:(double)factor displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction appearanceName:(id)appearanceName locale:(id)locale
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self namedVectorImageWithName:name scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:gamut displayGamut:direction layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 appearanceName:appearanceName locale:locale];
}

- (id)_baseVectorRenditionKey:(id)key
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

- (id)_namedVectorImageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceIdentifier:(int64_t)self1 locale:(id)self2
{
  nameCopy = name;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v61 = 0;
  if (__getDeviceTraits___deviceIdiom == idiom && __getDeviceTraits___deviceSubtype == subtype)
  {
    v21 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  }

  else
  {
    v62 = [NSNumber numberWithInt:0];
    v21 = [NSArray arrayWithObjects:&v62 count:1];
  }

  _CUILog(3, "[CUICatalog _namedVectorImageWithName:%@]", name, idiom, subtype, gamut, direction, horizontal, nameCopy);
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = __173__CUICatalog__namedVectorImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_appearanceIdentifier_locale___block_invoke;
  v60[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v60[4] = identifier;
  directionCopy = direction;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:nameCopy scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:v21 locale:locale withBaseKeySelector:0 adjustRenditionKeyWithBlock:v60, identifier, v21];
  if (result)
  {
    v23 = result;
    gamutCopy = gamut;
    v24 = [(CUICatalog *)self _storageRefForRendition:result representsODRContent:&v61];
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v24;
      v56 = nameCopy;
      v30 = _LookupStructuredThemeProvider(self->_storageRef, v25);
      distilledInCoreUIVersion = [v30 distilledInCoreUIVersion];
      v31 = [v30 renditionWithKey:{objc_msgSend(v23, "keyList")}];
      if (factor == 0.0)
      {
        pixelFormat = [v31 pixelFormat];
        if (pixelFormat == 1398163232)
        {
          v33 = OBJC_CLASS___CUINamedVectorSVGImage_ptr;
        }

        else
        {
          if (pixelFormat != 1346651680)
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

      nameCopy = v56;
      if (distilledInCoreUIVersion >= 0x1E5 && ([v31 preservedVectorRepresentation] & 1) == 0)
      {
        _CUILog(3, "[CUICatalog _namedVectorImageWithName:%@] stopped]", v38, v39, v40, v41, v42, v43, v56);
        return 0;
      }
    }

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = __173__CUICatalog__namedVectorImageWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_appearanceIdentifier_locale___block_invoke_2;
    v59[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
    v59[4] = identifier;
    result = [(CUICatalog *)self _resolvedRenditionKeyForName:nameCopy scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamutCopy displayGamut:directionCopy layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:v21 locale:locale withBaseKeySelector:sel__baseVectorRenditionKey_ adjustRenditionKeyWithBlock:v59];
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
    pixelFormat2 = [v35 pixelFormat];
    if (pixelFormat2 == 1346651680)
    {
      v37 = CUINamedVectorPDFImage;
      goto LABEL_27;
    }

    if (pixelFormat2 == 1398163232)
    {
      v37 = CUINamedVectorSVGImage;
LABEL_27:
      v44 = [v37 alloc];
      v45 = nameCopy;
      v46 = v26;
      v47 = v34;
      goto LABEL_28;
    }

    [v35 pixelFormat];
    _CUILog(4, "CoreUI: namedVectorImage '%@' has unknown pixelformat '%d'", v49, v50, v51, v52, v53, v54, nameCopy);
LABEL_30:
    v48 = 0;
    goto LABEL_31;
  }

  return result;
}

- (id)namedVectorImageWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceName:(id)self1 locale:(id)self2
{
  v19 = 0;
  if (self && appearanceName)
  {
    v19 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  }

  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v20 = [(CUICatalog *)self _namedVectorImageWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical appearanceIdentifier:v19 locale:locale];
  kdebug_trace();
  return v20;
}

- (id)_baseStackKeyForName:(id)name
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

- (id)_layerStackWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical
{
  v26[0] = 0;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v15 = __getDeviceTraits___deviceDisplayGamut;
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__baseStackKeyForName_ adjustRenditionKeyWithBlock:0];
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
        *&v25[6] = factor;
        v25[7] = idiom;
        v25[8] = subtype;
        v25[9] = v15;
        v25[10] = horizontal;
        v25[11] = vertical;
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
        *&v24[6] = factor;
        v24[7] = idiom;
        v24[8] = subtype;
        v24[9] = v15;
        v24[10] = horizontal;
        v24[11] = vertical;
        v22 = v24;
      }

      v23 = [(CUINamedLayerStack *)v21 initWithName:name usingRenditionKey:v17 fromTheme:v20 resolvingWithBlock:v22];
      [(CUINamedLookup *)v23 setRepresentsOnDemandContent:v26[0]];
      return v23;
    }
  }

  return result;
}

- (id)layerStackWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v15 = [(CUICatalog *)self _layerStackWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:horizontal sizeClassHorizontal:vertical sizeClassVertical:factor];
  kdebug_trace();
  return v15;
}

- (id)_defaultLayerStackWithScaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical
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
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:@"IGNORED_VALUE" scaleFactor:idiom deviceIdiom:subtype deviceSubtype:v15 displayGamut:0 layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 locale:0 withBaseKeySelector:sel__defaultAssetRenditionKey_ adjustRenditionKeyWithBlock:0];
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
      *&v20[6] = factor;
      v20[7] = idiom;
      v20[8] = subtype;
      v20[9] = v15;
      v20[10] = horizontal;
      v20[11] = vertical;
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

- (id)defaultLayerStackWithScaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical
{
  kdebug_trace();
  v13 = [(CUICatalog *)self _defaultLayerStackWithScaleFactor:idiom deviceIdiom:subtype deviceSubtype:horizontal sizeClassHorizontal:vertical sizeClassVertical:factor];
  kdebug_trace();
  return v13;
}

- (id)_baseLayeredIconKeyForName:(id)name
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

- (id)iconLayerStackWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(unint64_t)gamut appearanceName:(id)appearanceName locale:(id)locale
{
  v31 = 0;
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  _CUILog(3, "[CUICatalog iconLayerStackWithName:%@]", v17, v18, v19, v20, v21, v22, name);
  v24 = 0;
  if (self && appearanceName)
  {
    v24 = [_LookupStructuredThemeProvider(self->_storageRef v23)];
  }

  v33 = [NSNumber numberWithInt:0];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __110__CUICatalog_iconLayerStackWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_appearanceName_locale___block_invoke;
  v30[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v30[4] = v24;
  v25 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:[NSArray arrayWithObjects:? count:?], locale, sel__baseLayeredIconKeyForName_, v30];
  if (!v25 && v24)
  {
    v32 = [NSNumber numberWithInt:0];
    v25 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:[NSArray arrayWithObjects:? count:?], locale, sel__baseLayeredIconKeyForName_, 0];
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
  v29[5] = locale;
  v29[6] = v26;
  *&v29[7] = factor;
  v29[8] = idiom;
  v29[9] = subtype;
  v29[10] = gamut;
  v29[11] = 5;
  v29[4] = self;
  v29[12] = v24;
  v27 = [[CUINamedIconLayerStack alloc] initWithName:name usingRenditionKey:v25 fromTheme:v26 resolvingWithBlock:v29];
  [(CUINamedLookup *)v27 setRepresentsOnDemandContent:v31];
  if (![(CUINamedIconLayerStack *)v27 _updateFromCatalog:self displayGamut:gamut deviceIdiom:idiom appearanceName:appearanceName])
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

- (id)_defaultNamedAssetWithScaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical
{
  v24 = 0;
  v25 = [NSNumber numberWithInt:0];
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:@"IGNORED_VALUE" scaleFactor:idiom deviceIdiom:subtype deviceSubtype:0 displayGamut:0 layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:0 graphicsClass:0 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:[NSArray arrayWithObjects:? count:?], 0, sel__defaultAssetRenditionKey_, 0];
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
      _rendition = [(CUINamedLookup *)v17 _rendition];
      type = [(CUIThemeRendition *)_rendition type];
      name = [(CUIThemeRendition *)_rendition name];
      if (type == 1002 || type == 1018)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = __112__CUICatalog__defaultNamedAssetWithScaleFactor_deviceIdiom_deviceSubtype_sizeClassHorizontal_sizeClassVertical___block_invoke;
        v23[3] = &unk_1E7257EF8;
        v23[4] = self;
        v23[5] = v16;
        *&v23[6] = factor;
        v23[7] = idiom;
        v23[8] = subtype;
        v23[9] = horizontal;
        v23[10] = vertical;
        v21 = [objc_alloc(objc_opt_class()) initWithName:name usingRenditionKey:v14 fromTheme:v16 resolvingWithBlock:v23];
      }

      else
      {
        v21 = [[CUINamedImage alloc] initWithName:name usingRenditionKey:v14 fromTheme:v16];
      }

      v22 = v21;

      [(CUINamedLookup *)v22 setRepresentsOnDemandContent:v24];
      return v22;
    }
  }

  return result;
}

- (id)defaultNamedAssetWithScaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical
{
  kdebug_trace();
  v13 = [(CUICatalog *)self _defaultNamedAssetWithScaleFactor:idiom deviceIdiom:subtype deviceSubtype:horizontal sizeClassHorizontal:vertical sizeClassVertical:factor];
  kdebug_trace();
  return v13;
}

- (id)namedLookupWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)vertical
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return [(CUICatalog *)self namedLookupWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical];
}

- (id)_namedLookupWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceName:(id)self1 locale:(id)self2
{
  v54 = 0;
  _CUILog(3, "[CUICatalog _namedLookupWithName:%@]", name, idiom, subtype, gamut, direction, horizontal, name);
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v19 = __getDeviceTraits___deviceMemoryClass;
  v20 = __getDeviceTraits___deviceGraphicsClass;
  v21 = __getDeviceTraits___deviceGraphicsFallbackOrder;
  if (__getDeviceTraits___deviceIdiom == idiom)
  {
    v49 = __getDeviceTraits___deviceSubtypeFallbackOrder;
  }

  else
  {
    v55 = [NSNumber numberWithInt:0];
    v49 = [NSArray arrayWithObjects:&v55 count:1];
    _CUILog(3, "[CUICatalog _namedLookupWithName]: '%@' using deviceSubtype=%lu and universal subtype fallback instead [%s:%d]", v22, v23, v24, v25, v26, v27, name);
  }

  v28 = 0;
  if (self && appearanceName)
  {
    v28 = [_LookupStructuredThemeProvider(self->_storageRef v18)];
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = __162__CUICatalog__namedLookupWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_appearanceName_locale___block_invoke;
  v53[3] = &__block_descriptor_40_e25_v16__0__CUIRenditionKey_8l;
  v53[4] = v28;
  appearanceName = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:v19 graphicsClass:v20 graphicsFallBackOrder:v21 deviceSubtypeFallBackOrder:v49 locale:locale withBaseKeySelector:0 adjustRenditionKeyWithBlock:v53, appearanceName];
  if (!appearanceName)
  {
    goto LABEL_12;
  }

  v36 = appearanceName;
  v37 = [(CUICatalog *)self _storageRefForRendition:appearanceName representsODRContent:&v54];
  if (v37 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _CUILog(4, "CoreUI: [CUICatalog _namedLookupWithName]: Cannot find themeRef while resolving key for name '%@' with subtype %u. [%s:%d]", v38, v39, v40, v41, v42, v43, name);
LABEL_12:
    _CUILog(3, "CoreUI: [CUICatalog _namedLookupWithName]: Cannot resolve key for name '%@' with subtype %u. [%s:%d]", v30, v31, v32, v33, v34, v35, name);
    return 0;
  }

  v45 = v37;
  v46 = [[CUINamedImage alloc] initWithName:name usingRenditionKey:v36 fromTheme:v37];
  type = [(CUIThemeRendition *)[(CUINamedLookup *)v46 _rendition] type];
  if (type == 1002 || type == 1018)
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = __162__CUICatalog__namedLookupWithName_scaleFactor_deviceIdiom_deviceSubtype_displayGamut_layoutDirection_sizeClassHorizontal_sizeClassVertical_appearanceName_locale___block_invoke_3;
    v52[3] = &unk_1E7257F20;
    *&v52[8] = factor;
    v52[9] = idiom;
    v52[10] = subtype;
    v52[11] = gamut;
    v52[12] = direction;
    v52[13] = horizontal;
    v52[14] = vertical;
    v52[4] = self;
    v52[5] = v49;
    v52[6] = locale;
    v52[7] = v45;
    v48 = [objc_alloc(objc_opt_class()) initWithName:name usingRenditionKey:v36 fromTheme:v45 resolvingWithBlock:v52];

    v46 = v48;
  }

  [(CUINamedLookup *)v46 setRepresentsOnDemandContent:v54];
  return v46;
}

- (id)namedLookupWithName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 appearanceName:(id)self1 locale:(id)self2
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v20 = [(CUICatalog *)self _namedLookupWithName:name scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical appearanceName:appearanceName locale:locale];
  kdebug_trace();
  return v20;
}

- (id)_baseTextureKeyForName:(id)name
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

- (id)_namedTextureWithName:(id)name scaleFactor:(double)factor appearanceName:(id)appearanceName
{
  v20 = 0;
  _CUILog(3, "[CUICatalog _namedTextureWithName:%@]", name, appearanceName, v5, v6, v7, v8, name);
  v14 = 0;
  if (self && appearanceName)
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
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:sel__baseTextureKeyForName_ adjustRenditionKeyWithBlock:v19];
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
      v18 = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:name usingRenditionKey:v16 fromTheme:v17];
      [(CUINamedLookup *)v18 setRepresentsOnDemandContent:v20];
      return v18;
    }
  }

  return result;
}

- (id)namedTextureWithName:(id)name scaleFactor:(double)factor appearanceName:(id)appearanceName
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v9 = [(CUICatalog *)self _namedTextureWithName:name scaleFactor:appearanceName appearanceName:factor];
  kdebug_trace();
  return v9;
}

- (id)_namedTextureWithName:(id)name scaleFactor:(double)factor displayGamut:(int64_t)gamut appearanceName:(id)appearanceName
{
  v21 = 0;
  _CUILog(3, "[CUICatalog _namedTextureWithName:%@]", name, gamut, appearanceName, v6, v7, v8, name);
  v15 = 0;
  if (self && appearanceName)
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
  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:gamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:factor sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:sel__baseTextureKeyForName_ adjustRenditionKeyWithBlock:v20];
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
      v19 = [(CUINamedLookup *)[CUINamedTexture alloc] initWithName:name usingRenditionKey:v17 fromTheme:v18];
      [(CUINamedLookup *)v19 setRepresentsOnDemandContent:v21];
      return v19;
    }
  }

  return result;
}

- (id)namedTextureWithName:(id)name scaleFactor:(double)factor displayGamut:(int64_t)gamut appearanceName:(id)appearanceName
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v11 = [(CUICatalog *)self _namedTextureWithName:name scaleFactor:gamut displayGamut:appearanceName appearanceName:factor];
  kdebug_trace();
  return v11;
}

- (id)_baseColorKeyForName:(id)name
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

- (id)colorWithName:(id)name displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName
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
  _CUILog(3, "[CUICatalog colorWithName:%@]", v11, v12, v13, v14, v15, v16, name);
  v22 = 0;
  v37 = 0;
  if (self && appearanceName)
  {
    v22 = [_LookupStructuredThemeProvider(self->_storageRef v21)];
  }

  if (v17 != idiom)
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
  v23 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:v18 deviceSubtype:gamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:v35 graphicsClass:v34 graphicsFallBackOrder:v19 deviceSubtypeFallBackOrder:v20 locale:0 withBaseKeySelector:sel__baseColorKeyForName_ adjustRenditionKeyWithBlock:v36];
  if (v23)
  {
    v24 = v23;
    localObjectCache = [(CUICatalog *)self localObjectCache];
    v26 = [(CUICatalog *)self _storageRefForRendition:v24 representsODRContent:&v37];
    v28 = [_LookupStructuredThemeProvider(v26 v27)];
    v29 = [localObjectCache objectForKey:v28];
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
    v32 = [[CUINamedColor alloc] initWithName:name usingRenditionKey:v24 fromTheme:v26];
    v30 = v32;
    if (v32)
    {
      [(CUINamedLookup *)v32 setRepresentsOnDemandContent:v37];
      [localObjectCache setObject:v30 forKey:v28];
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

- (id)colorWithName:(id)name displayGamut:(int64_t)gamut appearanceName:(id)appearanceName
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v9 = __getDeviceTraits___deviceIdiom;

  return [(CUICatalog *)self colorWithName:name displayGamut:gamut deviceIdiom:v9 appearanceName:appearanceName];
}

- (id)_baseGradientKeyForName:(id)name
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

- (id)gradientWithName:(id)name displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName
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
  _CUILog(3, "[CUICatalog gradientithName:%@]", v11, v12, v13, v14, v15, v16, name);
  v22 = 0;
  v29 = 0;
  if (self && appearanceName)
  {
    v22 = [_LookupStructuredThemeProvider(self->_storageRef v21)];
  }

  if (v17 != idiom)
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
  v23 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:idiom deviceIdiom:v18 deviceSubtype:gamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:v27 graphicsClass:v26 graphicsFallBackOrder:v19 deviceSubtypeFallBackOrder:v20 locale:0 withBaseKeySelector:sel__baseGradientKeyForName_ adjustRenditionKeyWithBlock:v28];
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = [[CUINamedGradient alloc] initWithName:name usingRenditionKey:v23 fromTheme:[(CUICatalog *)self _storageRefForRendition:v23 representsODRContent:&v29]];
  [(CUINamedLookup *)v24 setRepresentsOnDemandContent:v29];
  if (![(CUINamedGradient *)v24 _updateFromCatalog:self displayGamut:gamut deviceIdiom:idiom appearanceName:appearanceName])
  {

LABEL_11:
    v24 = 0;
  }

  kdebug_trace();
  return v24;
}

- (id)_baseModelForKeyForName:(id)name
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

- (id)_modelWithName:(id)name
{
  v9 = 0;
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  result = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:sel__baseModelForKeyForName_ adjustRenditionKeyWithBlock:0];
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
      v8 = [[CUINamedModel alloc] initWithName:name usingRenditionKey:v6 fromTheme:v7];
    }

    return v8;
  }

  return result;
}

- (id)modelWithName:(id)name
{
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  v5 = [(CUICatalog *)self _modelWithName:name];
  kdebug_trace();
  return v5;
}

- (id)_baseRecognitionGroupImageSetKeyForName:(id)name
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

- (id)namedRecognitionGroupWithName:(id)name
{
  v10 = 0;
  CUIRenditionKeyValueForAttribute([-[CUICatalog _themeStore](self "_themeStore")], 17);
  kdebug_trace();
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  v5 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:__getDeviceTraits___deviceIdiom deviceIdiom:__getDeviceTraits___deviceSubtype deviceSubtype:__getDeviceTraits___deviceDisplayGamut displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:__getDeviceTraits___deviceMemoryClass graphicsClass:__getDeviceTraits___deviceGraphicsClass graphicsFallBackOrder:__getDeviceTraits___deviceGraphicsFallbackOrder deviceSubtypeFallBackOrder:__getDeviceTraits___deviceSubtypeFallbackOrder locale:0 withBaseKeySelector:sel__baseRecognitionGroupImageSetKeyForName_ adjustRenditionKeyWithBlock:0];
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
      v8 = [[CUINamedRecognitionGroup alloc] initWithName:name contentsFromCatalog:self usingRenditionKey:v6 fromTheme:v7];
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

- (id)_baseRecognitionObjectKeyForName:(id)name
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

- (id)_recognitionObjectWithName:(id)name
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
  _CUILog(3, "[CUICatalog _recognitionObjectWithName:%@]", v5, v6, v7, v8, v9, v10, name);
  v18 = [(CUICatalog *)self _resolvedRenditionKeyForName:name scaleFactor:v11 deviceIdiom:v12 deviceSubtype:v13 displayGamut:0 layoutDirection:0 sizeClassHorizontal:1.0 sizeClassVertical:0 memoryClass:v14 graphicsClass:v15 graphicsFallBackOrder:v16 deviceSubtypeFallBackOrder:v17 locale:0 withBaseKeySelector:sel__baseRecognitionObjectKeyForName_ adjustRenditionKeyWithBlock:0];
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
      v21 = [[CUINamedRecognitionObject alloc] initWithName:name usingRenditionKey:v19 fromTheme:v20];
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

- (unint64_t)_storageRefForRendition:(id)rendition representsODRContent:(BOOL *)content
{
  *content = 0;
  if (!rendition)
  {
    return self->_storageRef;
  }

  v48 = 0;
  v6 = [_LookupStructuredThemeProvider(self->_storageRef a2)];
  if ([v6 type] != 1001)
  {
    return self->_storageRef;
  }

  *content = 1;
  assetPackIdentifier = [v6 assetPackIdentifier];
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

  v10 = NSMapGet(storageMapTable, assetPackIdentifier);
  if (!v10)
  {
    if (([assetPackIdentifier hasPrefix:@"/"] & 1) != 0 || objc_msgSend(assetPackIdentifier, "hasPrefix:", @"./"))
    {
      if ([assetPackIdentifier hasPrefix:@"./"])
      {
        v11 = +[CUIThemeFacet themeWithContentsOfURL:error:](CUIThemeFacet, "themeWithContentsOfURL:error:", -[NSBundle URLForResource:withExtension:](self->_bundle, "URLForResource:withExtension:", [objc_msgSend(assetPackIdentifier substringFromIndex:{2), "stringByDeletingPathExtension"}], @"car"), &v48);
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v19 = [[NSURL alloc] initFileURLWithPath:assetPackIdentifier isDirectory:0];
        v11 = [CUIThemeFacet themeWithContentsOfURL:v19 error:&v48];

        if (!v11)
        {
LABEL_15:
          _CUILog(4, "CoreUI: can't open asset pack '%@' contents of asset pack will be ignored error:'%@'", v13, v14, v15, v16, v17, v18, assetPackIdentifier);
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    else
    {
      v20 = [NSBundleResourceRequest _assetPackBundleForBundle:self->_bundle withAssetPackID:assetPackIdentifier];
      if (!v20)
      {
        if (self->_bundle)
        {
          _CUILog(4, "CoreUI: can't locate asset pack '%@' for bundle '%@' contents of asset pack will be ignored", v21, v22, v23, v24, v25, v26, assetPackIdentifier);
        }

        else
        {
          [objc_msgSend(-[CUICatalog _themeStore](self "_themeStore")];
          _CUILog(4, "CoreUI: can't locate asset pack '%@' because CUICatalog was initialized with a path of '%@' instead of a bundle contents of asset pack will be ignored", v40, v41, v42, v43, v44, v45, assetPackIdentifier);
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
        _CUILog(4, "CoreUI: can't open asset pack '%@' for bundle '%@' contents of asset pack will be ignored error:'%@'", v34, v35, v36, v37, v38, v39, assetPackIdentifier);
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    NSMapInsert(self->_storageMapTable, assetPackIdentifier, v11);
    return v11;
  }

  return v10;
}

- (id)_baseKeyForName:(id)name
{
  result = [-[CUICatalog _themeStore](self "_themeStore")];
  if (result)
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:result];

    return v4;
  }

  return result;
}

- (id)_baseAtlasKeyForName:(id)name
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

- (id)_baseAtlasContentsKeyForName:(id)name
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

- (id)_baseMultisizeImageSetKeyForName:(id)name
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

- (id)_nameForAppearanceIdentifier:(int64_t)identifier
{
  identifierCopy = identifier;
  v4 = _LookupStructuredThemeProvider(self->_storageRef, a2);

  return [v4 nameForAppearanceIdentifier:identifierCopy];
}

- (id)_resolvedRenditionKeyForName:(id)name scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)horizontal sizeClassVertical:(int64_t)self0 memoryClass:(unint64_t)self1 graphicsClass:(unint64_t)self2 graphicsFallBackOrder:(id)self3 deviceSubtypeFallBackOrder:(id)self4 locale:(id)self5 withBaseKeySelector:(SEL)self6 adjustRenditionKeyWithBlock:(id)self7
{
  _CUILog(3, "[CUICatalog _resolvedRenditionKeyForName:%@] [%s:%d]", name, idiom, subtype, gamut, direction, horizontal, name);
  if (!name || ![name length])
  {
    subtypeCopy = name;
    v29 = "CUICatalog: Invalid asset name supplied: '%@'";
    goto LABEL_7;
  }

  if (!idiom && subtype)
  {
    subtypeCopy = subtype;
    v29 = "CUICatalog: Invalid Request: requesting subtype %d without specifying idiom for asset named: '%@'";
LABEL_7:
    _CUILog(4, v29, v23, v24, v25, v26, v27, v28, subtypeCopy);
    return 0;
  }

  if (selector)
  {
    v31 = [(CUICatalog *)self performSelector:selector withObject:name];
  }

  else
  {
    v31 = [(CUICatalog *)self _baseKeyForName:name];
  }

  if (!v31)
  {
    _CUILog(3, "[CUICatalog _resolvedRenditionKeyForName:] Cannot resolve base key for bogus name '%@'.", v32, 0, v33, v34, v35, v36, name);
    return 0;
  }

  storageRef = self->_storageRef;
  factorCopy = 0.0;
  if (factor > 0.0)
  {
    factorCopy = factor;
  }

  return [CUICatalog _resolvedRenditionKeyFromThemeRef:"_resolvedRenditionKeyFromThemeRef:withBaseKey:scaleFactor:deviceIdiom:deviceSubtype:displayGamut:layoutDirection:sizeClassHorizontal:sizeClassVertical:memoryClass:graphicsClass:graphicsFallBackOrder:deviceSubtypeFallBackOrder:locale:adjustRenditionKeyWithBlock:" withBaseKey:storageRef scaleFactor:v31 deviceIdiom:idiom deviceSubtype:subtype displayGamut:gamut layoutDirection:direction sizeClassHorizontal:factorCopy sizeClassVertical:? memoryClass:? graphicsClass:? graphicsFallBackOrder:? deviceSubtypeFallBackOrder:? locale:? adjustRenditionKeyWithBlock:?];
}

- (id)_resolvedRenditionKeyFromThemeRef:(unint64_t)ref withBaseKey:(id)key scaleFactor:(double)factor deviceIdiom:(int64_t)idiom deviceSubtype:(unint64_t)subtype displayGamut:(int64_t)gamut layoutDirection:(int64_t)direction sizeClassHorizontal:(int64_t)self0 sizeClassVertical:(int64_t)self1 memoryClass:(unint64_t)self2 graphicsClass:(unint64_t)self3 graphicsFallBackOrder:(id)self4 deviceSubtypeFallBackOrder:(id)self5 locale:(id)self6 adjustRenditionKeyWithBlock:(id)self7
{
  v25 = _LookupStructuredThemeProvider(ref, a2);
  v35 = [objc_msgSend(v25 "themeStore")];
  languageCode = [locale languageCode];
  if (!locale || !languageCode)
  {
    preferredLocalization = self->_preferredLocalization;
    if (locale && !languageCode)
    {
      _CUILog(4, "CoreUI: passed in NSLocale %p has a language code of NULL assuming localization identifier %d", 0, v27, v28, v29, v30, v31, locale);
    }

LABEL_10:
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_12:
      if (preferredLocalization)
      {
        if (([v35 attributePresent:13 withValue:preferredLocalization] & 0x80000000) == 0)
        {
          result = [(CUICatalog *)self _private_resolvedRenditionKeyFromThemeRef:ref withBaseKey:key scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:class graphicsClass:graphicsClass graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder localizationIdentifier:preferredLocalization adjustRenditionKeyWithBlock:block];
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

  v32 = [NSLocale mostPreferredLanguageOf:self->_assetCatalogLocalizations withPreferredLanguages:[NSArray arrayWithObject:languageCode] forUsage:1 options:0];
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
  if (([v25 localizationWorkaroundForKeyList:objc_msgSend(key withLocale:{"keyList"), locale}] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:

  return [(CUICatalog *)self _private_resolvedRenditionKeyFromThemeRef:ref withBaseKey:key scaleFactor:idiom deviceIdiom:subtype deviceSubtype:gamut displayGamut:direction layoutDirection:horizontal sizeClassHorizontal:factor sizeClassVertical:vertical memoryClass:class graphicsClass:graphicsClass graphicsFallBackOrder:order deviceSubtypeFallBackOrder:backOrder localizationIdentifier:0 adjustRenditionKeyWithBlock:block];
}

- (id)newShapeEffectPresetWithRenditionKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  _themeStore = [(CUICatalog *)self _themeStore];
  keyList = [key keyList];
  v7 = [_themeStore copyLookupKeySignatureForKey:keyList];
  localObjectCache = [(CUICatalog *)self localObjectCache];
  v9 = [localObjectCache objectForKey:v7];
  if (!v9)
  {
    v9 = [_themeStore renditionWithKey:keyList];
    if (v9)
    {
      v11 = v9;
      if ([v9 type] == 7)
      {
        effectPreset = [v11 effectPreset];
        [localObjectCache setObject:effectPreset forKey:v7];
        v9 = effectPreset;
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

- (BOOL)canGetShapeEffectRenditionWithKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  _themeStore = [(CUICatalog *)self _themeStore];
  keyList = [key keyList];

  return [_themeStore canGetRenditionWithKey:keyList];
}

- (id)renditionKeyForShapeEffectPresetWithStyleID:(unint64_t)d state:(int64_t)state presentationState:(int64_t)presentationState value:(int64_t)value resolution:(unint64_t)resolution dimension1:(unint64_t)dimension1
{
  dimension1Copy = dimension1;
  if (value == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (value == 2);
  }

  if (d == 4 && (value - 1) <= 1 && [_LookupStructuredThemeProvider(self->_storageRef a2)] < 0x1F2)
  {
    v13 = 0;
  }

  if ((state - 1) > 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_18E024AE0[state - 1];
  }

  if (presentationState == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (presentationState == 2);
  }

  v16 = CUICreateRenditionKeyWithShapeEffectState(d, v14, v15, v13, resolution, dimension1Copy);

  return v16;
}

- (id)renditionKeyForShapeEffectPresetWithStylePresetName:(id)name state:(int64_t)state presentationState:(int64_t)presentationState value:(int64_t)value resolution:(unint64_t)resolution dimension1:(unint64_t)dimension1 appearance:(int64_t)appearance
{
  _themeStore = [(CUICatalog *)self _themeStore];
  v17 = [_themeStore renditionKeyForName:name];
  if (!v17)
  {
    objc_exception_throw([NSException exceptionWithName:NSInvalidArgumentException reason:[NSString stringWithFormat:@"Unknown style preset name '%@'" userInfo:name], 0]);
  }

  v18 = v17;
  v19 = [[CUIRenditionKey alloc] initWithKeyList:v17];
  if ([_themeStore authoredWithSchemaVersion] >= 2)
  {
    if (resolution == 1)
    {
      v20 = 179;
    }

    else
    {
      v20 = 178;
    }

    [(CUIRenditionKey *)v19 setThemePart:v20];
  }

  [(CUIRenditionKey *)v19 setThemeState:state];
  [(CUIRenditionKey *)v19 setThemePresentationState:presentationState];
  [(CUIRenditionKey *)v19 setThemeValue:value];
  [(CUIRenditionKey *)v19 setThemeDimension1:dimension1];
  [(CUIRenditionKey *)v19 setThemeAppearance:appearance];
  if (resolution == 144)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  [(CUIRenditionKey *)v19 setThemeScale:v21];
  v22 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (resolution == 1 && (v22 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemePart:178];
  }

  v23 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (state && (v23 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemeState:0];
  }

  v24 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (presentationState && (v24 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemePresentationState:0];
  }

  v25 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (value && (v25 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemeValue:0];
  }

  v26 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (dimension1 && (v26 & 1) == 0)
  {
    [(CUIRenditionKey *)v19 setThemeDimension1:0];
  }

  v27 = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v19];
  if (appearance && (v27 & 1) == 0)
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

- (BOOL)_effectStyle:(unint64_t *)style state:(int64_t *)state presentationState:(int64_t *)presentationState value:(int64_t *)value resolution:(unint64_t *)resolution dimension1:(unint64_t *)dimension1 appearance:(int64_t *)appearance fromStyleConfiguration:(id)self0
{
  if (configuration)
  {
    *state = [configuration state];
    *presentationState = 0;
    value = [configuration value];
  }

  else
  {
    value = 0;
    *state = 0;
    *presentationState = 0;
  }

  *value = value;
  *style = 5;
  *dimension1 = [configuration dimension1];
  if (*value == 1)
  {
    v17 = *style;
    if (*style)
    {
      goto LABEL_9;
    }

    if ([-[CUICatalog _themeStore](self "_themeStore")] <= 4)
    {
      *value = 0;
    }
  }

  v17 = *style;
LABEL_9:
  v18 = *value;
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
    *value = v17;
  }

LABEL_15:
  useSimplifiedEffect = [configuration useSimplifiedEffect];
  v20 = 72;
  if (useSimplifiedEffect)
  {
    v20 = 1;
  }

  *resolution = v20;
  if ([configuration appearanceName])
  {
    appearanceName = [configuration appearanceName];
    v23 = 0;
    if (self && appearanceName)
    {
      v23 = [_LookupStructuredThemeProvider(self->_storageRef v22)];
    }
  }

  else
  {
    v23 = 0;
  }

  *appearance = v23;
  return 1;
}

- (id)renditionKeyForShapeEffectPresetForStylePresetName:(id)name styleConfiguration:(id)configuration
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  [(CUICatalog *)self _effectStyle:&v10 state:&v13 presentationState:&v12 value:&v11 resolution:&v9 dimension1:&v8 appearance:&v7 fromStyleConfiguration:configuration];
  if (name)
  {
    return [(CUICatalog *)self renditionKeyForShapeEffectPresetWithStylePresetName:name state:v13 presentationState:v12 value:v11 resolution:v9 dimension1:v8 appearance:v7];
  }

  else
  {
    return [(CUICatalog *)self renditionKeyForShapeEffectPresetWithStyleID:v10 state:v13 presentationState:v12 value:v11 resolution:v9 dimension1:v8];
  }
}

- (id)newShapeEffectPresetForStylePresetName:(id)name styleConfiguration:(id)configuration
{
  _CUILog(3, "[CUICatalog newShapeEffectPresetForStylePresetName:%@]", name, configuration, v4, v5, v6, v7, name);
  result = [(CUICatalog *)self renditionKeyForShapeEffectPresetForStylePresetName:name styleConfiguration:configuration];
  if (result)
  {

    return [(CUICatalog *)self newShapeEffectPresetWithRenditionKey:result];
  }

  return result;
}

- (id)newTextEffectStackForStylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color
{
  v7 = [(CUICatalog *)self newShapeEffectPresetForStylePresetName:name styleConfiguration:?];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [[CUITextEffectStack alloc] initWithEffectPreset:v7];

  if (v9)
  {
    [configuration effectScale];
    if (v10 > 0.0)
    {
      [configuration effectScale];
      [(CUIShapeEffectStack *)v9 scaleEffectParametersBy:?];
    }

    if (color)
    {
      if (([configuration shouldIgnoreForegroundColor] & 1) == 0)
      {
        -[CUIShapeEffectStack applyCustomForegroundColor:tintEffectColors:](v9, "applyCustomForegroundColor:tintEffectColors:", color, [configuration foregroundColorShouldTintEffects]);
      }

      [configuration brightnessMultiplier];
      if (v11 > 0.0)
      {
        [configuration brightnessMultiplier];
        [(CUIShapeEffectStack *)v9 scaleBrightnessOfEffectColorsByAmount:0 onlyTintableColors:?];
      }

      if ([configuration colorTemperature] >= 0x3E8 && objc_msgSend(configuration, "colorTemperature") <= 0x9C40)
      {
        -[CUIShapeEffectStack adjustEffectColorsToTemperature:onlyTintableColors:](v9, "adjustEffectColorsToTemperature:onlyTintableColors:", [configuration colorTemperature], 0);
      }

      if ([configuration shouldRespectOutputBlending])
      {
        [(CUIShapeEffectStack *)v9 updateOutputBlendingWithInteriorFillHeuristic];
      }
    }
  }

  return v9;
}

- (id)newShapeEffectStackForStylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color
{
  v7 = [(CUICatalog *)self newShapeEffectPresetForStylePresetName:name styleConfiguration:?];
  v8 = [[CUIShapeEffectStack alloc] initWithEffectPreset:v7];

  [configuration effectScale];
  if (v9 > 0.0)
  {
    [configuration effectScale];
    [(CUIShapeEffectStack *)v8 scaleEffectParametersBy:?];
  }

  if (color && ([configuration shouldIgnoreForegroundColor] & 1) == 0)
  {
    -[CUIShapeEffectStack applyCustomForegroundColor:tintEffectColors:](v8, "applyCustomForegroundColor:tintEffectColors:", color, [configuration foregroundColorShouldTintEffects]);
  }

  return v8;
}

- (BOOL)drawGlyphs:(const unsigned __int16 *)glyphs atPositions:(const CGPoint *)positions inContext:(CGContext *)context withFont:(__CTFont *)font count:(unint64_t)count stylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)self0
{
  v10 = off_1F00D3970(self, a2, glyphs, positions, context, font, count, name);
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

  if (configuration)
  {
    v24 = [configuration copy];
  }

  else
  {
    v24 = objc_alloc_init(CUIStyleEffectConfiguration);
  }

  v25 = v24;
  -[CUIStyleEffectConfiguration setUseSimplifiedEffect:](v24, "setUseSimplifiedEffect:", [configuration useSimplifiedEffect]);
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
  v35 = [v23 newTextEffectStackForStylePresetName:v12 styleConfiguration:v25 foregroundColor:color];

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

- (BOOL)_doStyledQuartzDrawingInContext:(CGContext *)context inBounds:(CGRect)bounds stylePresetName:(id)name styleConfiguration:(id)configuration drawingHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  ClipBoundingBox = CGContextGetClipBoundingBox(context);
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

  v20 = _CUIEffectiveScaleForContext(context);
  if (configuration)
  {
    v21 = [configuration copy];
  }

  else
  {
    v21 = objc_alloc_init(CUIStyleEffectConfiguration);
  }

  v22 = v21;
  -[CUIStyleEffectConfiguration setUseSimplifiedEffect:](v21, "setUseSimplifiedEffect:", [configuration useSimplifiedEffect]);
  [(CUIStyleEffectConfiguration *)v22 setUseSimplifiedEffect:_CUIDebugUseSimplifiedTextEffects() & [(CUIStyleEffectConfiguration *)v22 useSimplifiedEffect]];
  v23 = [(CUICatalog *)self newTextEffectStackForStylePresetName:name styleConfiguration:v22 foregroundColor:CGContextGetFillColorAsColor()];

  if (v23)
  {
    [v23 drawUsingQuartz:handler inContext:context inBounds:v16 atScale:{v17, v18, v19, v20}];

    return 1;
  }

  return 0;
}

- (BOOL)strokeStyledPath:(CGPath *)path inContext:(CGContext *)context stylePresetName:(id)name styleConfiguration:(id)configuration
{
  if (!context)
  {
    return 0;
  }

  if (path)
  {
    CGContextBeginPath(context);
    CGContextAddPath(context, path);
  }

  CGContextReplacePathWithStrokedPath(context);

  return [(CUICatalog *)self fillStyledPath:0 inContext:context stylePresetName:name styleConfiguration:configuration];
}

- (BOOL)fillStyledPath:(CGPath *)path inContext:(CGContext *)context stylePresetName:(id)name styleConfiguration:(id)configuration
{
  if (context)
  {
    if (path)
    {
      CGContextBeginPath(context);
      CGContextAddPath(context, path);
    }

    v11 = CGContextCopyPath(context);
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
        v21 = CGContextConvertRectToDeviceSpace(context, v20);
        v22 = CGRectIntegral(v21);
        v23 = CGContextConvertRectToUserSpace(context, v22);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = __74__CUICatalog_fillStyledPath_inContext_stylePresetName_styleConfiguration___block_invoke;
        v18[3] = &__block_descriptor_48_e20_v16__0__CGContext__8l;
        v18[4] = v11;
        v18[5] = context;
        v16 = [(CUICatalog *)self _doStyledQuartzDrawingInContext:context inBounds:name stylePresetName:configuration styleConfiguration:v18 drawingHandler:v23.origin.x, v23.origin.y, v23.size.width, v23.size.height];
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

- (BOOL)fillStyledRect:(CGRect)rect inContext:(CGContext *)context stylePresetName:(id)name styleConfiguration:(id)configuration
{
  if (!context)
  {
    return 0;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
    return 0;
  }

  CGContextBeginPath(context);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextAddRect(context, v16);

  return [(CUICatalog *)self fillStyledPath:0 inContext:context stylePresetName:name styleConfiguration:configuration];
}

- (BOOL)hasStylePresetWithName:(id)name styleConfiguration:(id)configuration
{
  if (name)
  {
    v6 = [(CUICatalog *)self _themeStore:name];
    v7 = [v6 renditionKeyForName:name];
    if (v7)
    {
      CUIRenditionKeyCopy(v9, v7, 0x16u);
      CUIRenditionKeySetValueForAttribute(v9, 12, 1, 0x16u);
      LOBYTE(v7) = [objc_msgSend(v6 renditionWithKey:{v9), "type"}] == 7;
    }
  }

  else
  {
    v7 = [(CUICatalog *)self renditionKeyForShapeEffectPresetForStylePresetName:0 styleConfiguration:configuration];
    if (v7)
    {

      LOBYTE(v7) = [(CUICatalog *)self canGetShapeEffectRenditionWithKey:v7];
    }
  }

  return v7;
}

- (CGColor)equivalentForegroundColorForStylePresetWithName:(id)name styleConfiguration:(id)configuration
{
  foregroundColorShouldTintEffects = [configuration foregroundColorShouldTintEffects];
  [configuration setForegroundColorShouldTintEffects:0];
  v8 = [(CUICatalog *)self equivalentForegroundColorForStylePresetWithName:name styleConfiguration:configuration baseForegroundColor:0];
  [configuration setForegroundColorShouldTintEffects:foregroundColorShouldTintEffects];
  return v8;
}

- (CGColor)equivalentForegroundColorForStylePresetWithName:(id)name styleConfiguration:(id)configuration baseForegroundColor:(CGColor *)color
{
  if ([configuration useSimplifiedEffect])
  {
    v9 = [(CUICatalog *)self newTextEffectStackForStylePresetName:name styleConfiguration:configuration foregroundColor:color];
  }

  else
  {
    v9 = [(CUICatalog *)self newShapeEffectStackForStylePresetName:name styleConfiguration:configuration foregroundColor:color];
  }

  v10 = v9;
  if (([v9 expressableByColorFillCheckingOutputBlending:{objc_msgSend(configuration, "shouldRespectOutputBlending")}] & 1) == 0)
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

- (int)blendModeForStylePresetWithName:(id)name styleConfiguration:(id)configuration
{
  v4 = [(CUICatalog *)self newShapeEffectPresetForStylePresetName:name styleConfiguration:configuration];
  if (v4)
  {
    v5 = v4;
    v6 = 1852797549;
    effectCount = [v4 effectCount];
    if (effectCount)
    {
      v8 = effectCount;
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

- (void)_vibrantColorMatrixBrightnessSaturationForColor:(CGColor *)color saturation:(double *)saturation brightness:(double *)brightness
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

  Components = CGColorGetComponents(color);
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
    if (!brightness)
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
    intValue = [v24 intValue];
    v26 = intValue;
    if (v23 == v21 || intValue > v22)
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
    intValue2 = [v29 intValue];
    v31 = [-[NSDictionary objectForKey:](self->_vibrantColorMatrixTints objectForKey:{v29), "intValue"}];
  }

  else
  {
    v31 = 0;
    intValue2 = 0x7FFFFFFF;
  }

  if (v26 - v22 <= (v22 - intValue2))
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
  if (brightness)
  {
LABEL_11:
    *brightness = v27;
  }

LABEL_12:
  if (saturation)
  {
    *saturation = v19;
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

- (id)compositingFilterForStylePresetWithName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color
{
  v8 = [(CUICatalog *)self newShapeEffectPresetForStylePresetName:name styleConfiguration:?];
  v9 = v8;
  if (v8)
  {
    selfCopy = self;
    v10 = 1852797549;
    effectCount = [v8 effectCount];
    if (effectCount)
    {
      v12 = effectCount;
      configurationCopy = configuration;
      colorCopy = color;
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
      configuration = configurationCopy;
      color = colorCopy;
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
      if (color && [configuration foregroundColorShouldTintEffects])
      {
        v21 = (v14 + v15 + v20) / 255.0 / 3.0;
        v22 = v21 + v21;
        SRGB = _CUIColorSpaceGetSRGB();
        if (CGColorGetColorSpace(color) == SRGB)
        {
          CopyByMatchingToColorSpace = CGColorRetain(color);
        }

        else
        {
          CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(SRGB, kCGRenderingIntentDefault, color, 0);
        }

        v25 = CopyByMatchingToColorSpace;
        *&v30[0] = 0;
        v31 = 0.0;
        [(CUICatalog *)selfCopy _vibrantColorMatrixBrightnessSaturationForColor:CopyByMatchingToColorSpace saturation:v30 brightness:&v31];
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

- ($01BB1521EC52D44A8E7628F5261DCEC8)styledInsetsForStylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color scale:(double)scale
{
  v7 = [(CUICatalog *)self newShapeEffectStackForStylePresetName:name styleConfiguration:configuration foregroundColor:color];
  if (v7)
  {
    v8 = v7;
    [v7 effectInsetsWithScale:scale];
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

- (id)imageByStylingImage:(CGImage *)image stylePresetName:(id)name styleConfiguration:(id)configuration foregroundColor:(CGColor *)color scale:(double)scale
{
  v9 = [(CUICatalog *)self newShapeEffectStackForStylePresetName:name styleConfiguration:configuration foregroundColor:color];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v9 newFlattenedImageFromShapeCGImage:image withScale:objc_msgSend(objc_opt_class() ciContext:{"sharedCIContext"), scale}];
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

- (id)dataForVectorGlyphsWithNames:(id)names
{
  v38 = 0;
  v39[0] = NSTemporaryDirectory();
  globallyUniqueString = [+[NSProcessInfo processInfo](NSProcessInfo globallyUniqueString];
  v39[1] = [NSString stringWithFormat:@"coreui-vectorgylphs-%@"];
  v5 = [[NSURL fileURLWithPathComponents:?], "URLByAppendingPathExtension:", @"car"];
  v6 = [(CUICatalog *)self copiedVectorGlyphsWithNames:names outputFile:v5];
  if (!v6)
  {
    v28 = "-[CUICatalog copyVectorGlyphsWithNames:: failed";
    goto LABEL_10;
  }

  if (([v6 writeToDiskAndCompact:1] & 1) == 0)
  {
    path = [(NSURL *)v5 path];
    _CUILog(4, "failed to write copied vector images to file %@", v30, v31, v32, v33, v34, v35, path);
    if ([+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
    {
      return 0;
    }

    globallyUniqueString = [(NSURL *)v5 path];
    v28 = "failed to delete tmp file at %@: %@";
LABEL_10:
    _CUILog(4, v28, v7, v8, v9, v10, v11, v12, globallyUniqueString);
    return 0;
  }

  v13 = [NSData dataWithContentsOfURL:v5 options:0 error:&v38];
  if (!v13)
  {
    path2 = [(NSURL *)v5 path];
    _CUILog(4, "dataForVectorGlyphsWithNames: Got error reading from tmpFile %@: %@", v15, v16, v17, v18, v19, v20, path2);
  }

  if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
  {
    path3 = [(NSURL *)v5 path];
    _CUILog(4, "failed to delete tmp file at %@: %@", v22, v23, v24, v25, v26, v27, path3);
  }

  return v13;
}

- (BOOL)copyVectorGlyphsWithNames:(id)names toFile:(id)file
{
  v4 = [(CUICatalog *)self copiedVectorGlyphsWithNames:names outputFile:file];

  return [v4 writeToDiskAndCompact:1];
}

- (id)copiedVectorGlyphsWithNames:(id)names outputFile:(id)file
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v6 = _LookupStructuredThemeProvider(self->_storageRef, a2);
  v7 = -[CUIMutableCommonAssetStorage initWithPath:]([CUIMutableCommonAssetStorage alloc], "initWithPath:", [file path]);
  v8 = objc_alloc_init(NSMutableString);
  [v8 appendString:@"-[CUICatalog copiedVectorGlyphsWithNames:outputFile: '"];
  [v8 appendString:{objc_msgSend(objc_msgSend(v6, "themeStore"), "path")}];
  [v8 appendString:@"']"];
  qword_1ED4EBC50 = [v8 UTF8String];

  if (objc_opt_respondsToSelector())
  {
    themeStore = [v6 themeStore];
    keyFormat = [v6 keyFormat];
    [(CUIMutableCommonAssetStorage *)v7 setThinningArguments:@"Copied VectorGlyphs"];
    [(CUIMutableCommonAssetStorage *)v7 setKeyFormatData:[NSData dataWithBytes:keyFormat length:4 * (keyFormat[2] + 3)]];
    -[CUIMutableCommonAssetStorage setKeySemantics:](v7, "setKeySemantics:", [themeStore keySemantics]);
    -[CUIMutableCommonAssetStorage setDeploymentPlatform:](v7, "setDeploymentPlatform:", [themeStore deploymentPlatformString]);
    -[CUIMutableCommonAssetStorage setDeploymentPlatformVersion:](v7, "setDeploymentPlatformVersion:", [themeStore deploymentPlatformVersion]);
    -[CUIMutableCommonAssetStorage setSchemaVersion:](v7, "setSchemaVersion:", [themeStore schemaVersion]);
    -[CUIMutableCommonAssetStorage setStorageVersion:](v7, "setStorageVersion:", [themeStore storageVersion]);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = [objc_msgSend(themeStore "appearances")];
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

          -[CUIMutableCommonAssetStorage setAppearanceIdentifier:forName:](v7, "setAppearanceIdentifier:forName:", [themeStore appearanceIdentifierForName:*(*(&v48 + 1) + 8 * i)], *(*(&v48 + 1) + 8 * i));
        }

        v18 = [v17 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v18);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = [objc_msgSend(themeStore "localizations")];
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

          -[CUIMutableCommonAssetStorage setLocalizationIdentifier:forName:](v7, "setLocalizationIdentifier:forName:", [themeStore localizationIdentifierForName:*(*(&v44 + 1) + 8 * j)], *(*(&v44 + 1) + 8 * j));
        }

        v22 = [v21 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v22);
    }

    v38 = keyFormat;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = [names countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v25)
    {
      v26 = *v41;
      do
      {
        for (k = 0; k != v25; k = k + 1)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(names);
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

        v25 = [names countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v25);
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __53__CUICatalog_copiedVectorGlyphsWithNames_outputFile___block_invoke;
    v39[3] = &unk_1E7257F90;
    v39[4] = themeStore;
    v39[5] = names;
    v39[6] = v7;
    v39[7] = v6;
    v39[10] = 0;
    v39[11] = v38;
    v39[8] = &v52;
    v39[9] = 0;
    [themeStore enumerateKeysAndObjectsUsingBlock:v39];
  }

  else
  {
    _CUILog(4, "CoreUI: copiedVectorGlyphsWithNames:outputFile: failed to open store '%@'", v9, v10, v11, v12, v13, v14, names);
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

- (id)_appearancefallback_gradientWithName:(id)name displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName
{
  result = [CUICatalog gradientWithName:"gradientWithName:displayGamut:deviceIdiom:appearanceName:" displayGamut:? deviceIdiom:? appearanceName:?];
  if (!result)
  {
    result = [appearanceName length];
    if (result)
    {

      return [(CUICatalog *)self gradientWithName:name displayGamut:gamut deviceIdiom:idiom appearanceName:0];
    }
  }

  return result;
}

- (id)_appearancefallback_colorWithName:(id)name displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)appearanceName
{
  result = [CUICatalog colorWithName:"colorWithName:displayGamut:deviceIdiom:appearanceName:" displayGamut:? deviceIdiom:? appearanceName:?];
  if (!result)
  {
    result = [appearanceName length];
    if (result)
    {

      return [(CUICatalog *)self colorWithName:name displayGamut:gamut deviceIdiom:idiom appearanceName:0];
    }
  }

  return result;
}

- (id)_private_resolvedRenditionKeyFromThemeRef:(void *)ref withBaseKey:(id)key scaleFactor:(uint64_t)factor deviceIdiom:(void *)idiom deviceSubtype:(uint64_t)subtype displayGamut:(uint64_t)gamut layoutDirection:(double)direction sizeClassHorizontal:(uint64_t)self0 sizeClassVertical:(uint64_t)self1 memoryClass:(uint64_t)self2 graphicsClass:(void *)self3 graphicsFallBackOrder:(void *)self4 deviceSubtypeFallBackOrder:(uint64_t)self5 localizationIdentifier:(uint64_t)self6 adjustRenditionKeyWithBlock:
{
  factorCopy = factor;
  if (!self)
  {
    return 0;
  }

  horizontalCopy = horizontal;
  v90 = 0;
  v91 = 0;
  v73 = CUIMaxScaleForTargetPlatform([self platform]);
  v23 = CUICurrentDeploymentVersionForTargetPlatform();
  v24 = [graphicsClass count];
  v74 = [order count];
  [+[CUIRuntimeStatistics sharedRuntimeStatistics](CUIRuntimeStatistics "sharedRuntimeStatistics")];
  classCopy = class;
  v83 = v24;
  if (class && !v24)
  {
    _CUILog(4, "[CUICatalog _resolvedRenditionKeyFromThemeRef:...] got passed a graphicsClass '%d' but No graphicsFallbacks ignoring the graphicsClass", v25, v26, v27, v28, v29, v30, class);
    classCopy = 0;
  }

  CUIValidateIdiomSubtypes(key, &factorCopy, v25, v26, v27, v28, v29, v30);
  v32 = 0;
  directionCopy = direction;
  v78 = factorCopy;
  v92 = v23;
  while (__memorySearchValues[v32] != vertical)
  {
    if (++v32 == 10)
    {
      v32 = 0;
      break;
    }
  }

  v33 = _LookupStructuredThemeProvider(a2, v31);
  v34 = [ref copy];
  [v34 setThemeMemoryClass:__memorySearchValues[v32]];
  [v34 setThemeScale:directionCopy];
  [v34 setThemeIdiom:key];
  [v34 setThemeSubtype:v78];
  [v34 setThemeDisplayGamut:idiom];
  [v34 setThemeDeploymentTarget:v92];
  [v34 setThemeDirection:subtype];
  [v34 setThemeSizeClassHorizontal:gamut];
  [v34 setThemeSizeClassVertical:horizontal];
  [v34 setThemeGraphicsClass:classCopy];
  [v34 setThemeLocalization:backOrder];
  if (identifier)
  {
    (*(identifier + 16))();
  }

  [v34 keyList];
  v35 = [OUTLINED_FUNCTION_3_3() copyLookupKeySignatureForKey:?];

  lookupCache = [self lookupCache];
  negativeCache = [self negativeCache];
  v38 = [lookupCache objectForKey:v35];
  if (v38)
  {
    v39 = v38;

    return v39;
  }

  v72 = lookupCache;
  if ([negativeCache objectForKey:v35])
  {

    return 0;
  }

  v69 = negativeCache;
  v71 = v35;
  v77 = [v33 renditionInfoForIdentifier:{objc_msgSend(ref, "themeIdentifier")}];
  if (!v77)
  {
    subtypeCopy2 = subtype;
    v40 = classCopy;
    v41 = v78;
    idiomCopy2 = idiom;
    if (v32 < 0)
    {
      goto LABEL_139;
    }

    goto LABEL_48;
  }

  v40 = classCopy;
  v41 = v78;
  idiomCopy2 = idiom;
  if (v78 && ![v77 diverseContentPresentForAttribute:16])
  {
    v41 = 0;
  }

  if (gamut && ![v77 diverseContentPresentForAttribute:20])
  {
    gamut = 0;
  }

  if (horizontal && ![v77 diverseContentPresentForAttribute:21])
  {
    horizontalCopy = 0;
  }

  if (idiom && ![v77 diverseContentPresentForAttribute:24])
  {
    idiomCopy2 = 0;
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

  if (classCopy && ![v77 diverseContentPresentForAttribute:23])
  {
    v40 = 0;
  }

  if (!subtype)
  {
    subtypeCopy2 = 0;
    if (v32 < 0)
    {
      goto LABEL_139;
    }

    goto LABEL_48;
  }

  v44 = [v77 diverseContentPresentForAttribute:4];
  subtypeCopy2 = subtype;
  if (!v44)
  {
    subtypeCopy2 = 0;
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
LABEL_48:
    v79 = v41;
    v88 = v40;
    v45 = 0;
    v46 = horizontalCopy | gamut;
    v47 = 4;
    if (horizontalCopy | gamut)
    {
      v48 = 1;
    }

    else
    {
      v48 = 4;
    }

    v76 = v48;
    v86 = subtypeCopy2;
    if (subtypeCopy2 == 4)
    {
      v47 = 5;
    }

    v70 = v47;
    directionCopy2 = direction;
    while (1)
    {
      v90 = 0x7FFFFFFFFFFFFFFFLL;
      v49 = v79;
      while (2)
      {
        v50 = v49;
        OUTLINED_FUNCTION_7_2();
        v80 = __memorySearchValues[v32];
        [ref setThemeMemoryClass:?];
        v82 = v50;
        [ref setThemeSubtype:v50];
        [ref setThemeGraphicsClass:v88];
        [ref setThemeScale:directionCopy];
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_1_4();
        [ref setThemeLocalization:backOrder];
        if (identifier)
        {
          (*(identifier + 16))();
        }

        v91 = 0x7FFFFFFFFFFFFFFFLL;
        while (2)
        {
          [ref keyList];
          if ([OUTLINED_FUNCTION_3_3() canGetRenditionWithKey:?])
          {
LABEL_59:
            v51 = v45;
LABEL_60:
            if (!ref)
            {
              v52 = 1;
              v45 = v51;
              goto LABEL_62;
            }

            v39 = [ref copy];
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
                [ref keyList];
                if ([OUTLINED_FUNCTION_3_3() canGetRenditionWithKey:?])
                {
                  goto LABEL_59;
                }
              }

              if (key && [ref themeIdiom] == key)
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

              if (idiomCopy2 && [ref themeDisplayGamut] == idiomCopy2)
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

              if (!v86 || ![ref themeDirection])
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

              [ref setThemeDirection:v56];
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
              [ref keyList];
              if ([OUTLINED_FUNCTION_3_3() canGetRenditionWithKey:?])
              {
                goto LABEL_59;
              }
            }

            if (v92 && [ref themeDeploymentTarget])
            {
              themeDeploymentTarget = [ref themeDeploymentTarget];
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

              --themeDeploymentTarget;
              [v77 decrementValue:&themeDeploymentTarget forAttribute:25];
              [ref setThemeDeploymentTarget:themeDeploymentTarget];
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
            directionCopy3 = v75 + directionCopy2;
            if (v75 < 0)
            {
              v58 = directionCopy3 < 1;
              if (directionCopy3 < 1)
              {
                directionCopy3 = direction;
              }

              v59 = 1;
              if (!v58)
              {
                v59 = -1;
              }

              v75 = v59;
              goto LABEL_116;
            }

            if (directionCopy3 > v73)
            {
              break;
            }

LABEL_116:
            directionCopy2 = directionCopy3;
            [ref setThemeScale:?];
            [ref keyList];
            v60 = [OUTLINED_FUNCTION_3_3() canGetRenditionWithKey:?];
            v45 = 0;
            v51 = 0;
            if (v60)
            {
              goto LABEL_60;
            }
          }

          directionCopy2 += v75;
          v52 = 0;
          v45 = 0;
LABEL_62:
          OUTLINED_FUNCTION_7_2();
          [ref setThemeMemoryClass:v80];
          [ref setThemeSubtype:v82];
          [ref setThemeGraphicsClass:v88];
          [ref setThemeScale:directionCopy];
          OUTLINED_FUNCTION_4_3();
          OUTLINED_FUNCTION_5_2();
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_1_4();
          [ref setThemeLocalization:backOrder];
          if (identifier)
          {
            (*(identifier + 16))();
          }

          if (v88)
          {
            if (v83)
            {
              if (v91 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v53 = 0;
                v91 = 0;
                graphicsClassCopy2 = graphicsClass;
                goto LABEL_122;
              }

              if (v91 < (v83 - 1))
              {
                ++v91;
                graphicsClassCopy2 = graphicsClass;
                [v77 incrementIndex:&v91 inValues:graphicsClass forAttribute:23];
                v53 = v91;
LABEL_122:
                v61 = [objc_msgSend(graphicsClassCopy2 objectAtIndex:{v53), "integerValue"}];
LABEL_123:
                [ref setThemeGraphicsClass:v61];
                continue;
              }
            }

            else if ([ref themeGraphicsClass])
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
              orderCopy2 = order;
LABEL_132:
              v49 = [objc_msgSend(orderCopy2 objectAtIndex:{v62), "integerValue"}];
              continue;
            }

            if (v90 < (v74 - 1))
            {
              ++v90;
              orderCopy2 = order;
              [v77 incrementIndex:&v90 inValues:order forAttribute:16];
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
        if (!ref)
        {
          v64 = 1;
        }

        if ((v64 & 1) == 0)
        {
          v39 = [ref copy];
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