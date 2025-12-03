@interface CUIThemeFacet
+ (BOOL)assetExistsForRenditionKey:(id)key fromTheme:(unint64_t)theme;
+ (id)_bundleIdentifierForThemeRef:(unint64_t)ref;
+ (id)_facetWithKeyList:(const _renditionkeytoken *)list andRenditionKeyClass:(Class)class orRenditionKey:(id)key fromTheme:(unint64_t)theme;
+ (id)cursorFacetWithName:(id)name fromTheme:(unint64_t)theme;
+ (id)facetWithElement:(int64_t)element part:(int64_t)part dimension1:(int64_t)dimension1 dimension2:(int64_t)dimension2 fromTheme:(unint64_t)theme;
+ (unint64_t)themeNamed:(id)named forBundleIdentifier:(id)identifier error:(id *)error;
+ (unint64_t)themeWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
+ (unint64_t)themeWithContentsOfURL:(id)l error:(id *)error;
+ (void)_invalidateArtworkCaches;
+ (void)initialize;
+ (void)themeUnregisterThemeRef:(unint64_t)ref;
- (BOOL)_canGetRenditionForKey:(id)key withDrawingLayer:(int64_t)layer;
- (BOOL)_isButtonGlyph;
- (BOOL)hasValueSlices;
- (BOOL)hitTestAtPoint:(CGPoint)point inFrame:(CGRect)frame owner:(id)owner userInfo:(id)info;
- (BOOL)isTintable;
- (BOOL)isValidButtonImageSource;
- (CGImage)copyLayerImageContentsAndCenter:(CGRect *)center renditionKey:(id)key;
- (CGPoint)_hotSpot;
- (CGSize)_thumbnailSizeForRendition:(id)rendition;
- (CGSize)imageSize;
- (CGSize)sizeForSegmentOfType:(int)type;
- (CGSize)thumbnailSize;
- (CGSize)topLeftCapSize;
- (CUIImage)_imageForRenditionFromKey:(int)key withSize:(CGFloat)size isMask:(CGFloat)mask;
- (CUIThemeFacet)init;
- (CUIThemeFacet)initWithCoder:(id)coder;
- (CUIThemeFacet)initWithRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (NSString)description;
- (__n128)_initWithRenditionKey:(uint64_t)key;
- (char)isValidButtonImageSourceForSize:(char *)result;
- (double)alphaWithKeyAdjustment:(id)adjustment;
- (id)_approximateRenditionForRenditionKey:(uint64_t)key;
- (id)_makeLayerFromCAPackageData;
- (id)_rendition;
- (id)_renditionForSpecificKey:(id)key;
- (id)_themeStore;
- (id)blendModeAsCAFilterStringWithKeyAjustment:(id)ajustment;
- (id)displayName;
- (id)gradientWithKeyAdjustment:(id)adjustment angle:(double *)angle style:(unint64_t *)style;
- (id)highlightWithSize:(CGSize)size keyAdjustment:(id)adjustment;
- (id)imageForSlice:(int64_t)slice withKeyAdjustment:(id)adjustment;
- (id)imageForSliceIndex:(int64_t)index;
- (id)imageForState:(int64_t)state;
- (id)imageForState:(int64_t)state value:(int64_t)value;
- (id)imageForState:(int64_t)state value:(int64_t)value size:(unint64_t)size;
- (id)imageWithSize:(CGSize)size keyAdjustment:(id)adjustment;
- (id)makeLayer;
- (id)maskForSlice:(int64_t)slice withKeyAdjustment:(id)adjustment;
- (id)maskWithSize:(CGSize)size keyAdjustment:(id)adjustment;
- (id)properties;
- (id)renditionKey;
- (id)renditionMetricsWithKeyAdjustment:(id)adjustment;
- (id)renditionSliceInformationForRect:(CGRect)rect keyAdjustment:(id)adjustment;
- (id)themeRendition;
- (id)thumbnail;
- (int)blendModeWithKeyAdjustment:(id)adjustment;
- (int64_t)_sliceIndexForSlice:(int64_t)slice ofRendition:(id)rendition;
- (int64_t)renditionType;
- (uint64_t)_drawMaskFromSpecificRenditionKey:(uint64_t)result inFrame:alpha:operation:isFocused:focusRingColor:context:;
- (void)_drawSlice:(int64_t)slice inFrame:(CGRect)frame withKeyAdjustment:(id)adjustment context:(CGContext *)context;
- (void)_drawSpecificRenditionKey:(uint64_t)key inFrame:(uint64_t)frame context:(uint64_t)context alpha:(uint64_t)alpha operation:(uint64_t)operation isFocused:(void *)focused focusRingColor:isFlipped:effects:;
- (void)_drawSpecificRenditionKey:(void *)key rendition:(double)rendition inFrame:(double)frame context:(double)context alpha:(double)alpha operation:(double)operation isFocused:(uint64_t)focused focusRingColor:(uint64_t)self0 isFlipped:(uint64_t)self1 effects:(uint64_t)self2;
- (void)_updateSpecificRenditionKey:(id)key isFocused:(BOOL *)focused owner:(id)owner userInfo:(id)info;
- (void)dealloc;
- (void)drawAbsoluteAnimationFrame:(double)frame destinationFrame:(CGRect)destinationFrame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context;
- (void)drawAnimationFrameMappedFrom0_1RangedValue:(double)value destinationFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects;
- (void)drawAsOnePartWithSlice:(int)slice inFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects;
- (void)drawGradientInFrame:(CGRect)frame angle:(double)angle alpha:(double)alpha operation:(int)operation isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)self0 effects:(id)self1;
- (void)drawHighlightInFrame:(CGRect)frame alpha:(double)alpha keyAdjustment:(id)adjustment context:(CGContext *)context;
- (void)drawHighlightInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation keyAdjustment:(id)adjustment context:(CGContext *)context;
- (void)drawHighlightInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation owner:(id)owner userInfo:(id)info context:(CGContext *)context;
- (void)drawHighlightInFrame:(CGRect)frame alpha:(double)alpha owner:(id)owner userInfo:(id)info context:(CGContext *)context;
- (void)drawInFrame:(CGRect)frame alpha:(double)alpha isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context;
- (void)drawInFrame:(CGRect)frame alpha:(double)alpha isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects;
- (void)drawInFrame:(CGRect)frame alpha:(double)alpha isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context;
- (void)drawInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects;
- (void)drawInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context;
- (void)drawInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation owner:(id)owner userInfo:(id)info context:(CGContext *)context;
- (void)drawInFrame:(CGRect)frame alpha:(double)alpha owner:(id)owner userInfo:(id)info context:(CGContext *)context;
- (void)drawInFrame:(CGRect)frame isFocused:(int)focused context:(CGContext *)context;
- (void)drawInFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context;
- (void)drawInFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects;
- (void)drawMaskInFrame:(CGRect)frame alpha:(double)alpha isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context;
- (void)drawMaskInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context;
- (void)drawMaskInFrame:(CGRect)frame alpha:(double)alpha owner:(id)owner userInfo:(id)info context:(CGContext *)context;
- (void)drawPulseInFrame:(CGRect)frame pulseValue:(double)value isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context;
- (void)drawPulseInFrame:(CGRect)frame pulseValue:(double)value owner:(id)owner userInfo:(id)info context:(CGContext *)context;
- (void)drawSegmentInFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color segmentType:(int)type context:(CGContext *)context effects:(id)effects;
- (void)encodeWithCoder:(id)coder;
- (void)thumbnail;
- (void)updateLayer:(id)layer effects:(id)effects;
- (void)updateSegmentBezelLeadingCapLayer:(id)layer bezelFillLayer:(id)fillLayer trailingBezelCapLayer:(id)capLayer forSegmentType:(int)type segmentBounds:(CGRect)bounds leadingSeparatorWidth:(double)width trailingSeparatorWidth:(double)separatorWidth renditionKey:(id)self0 effects:(id)self1;
@end

@implementation CUIThemeFacet

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:2];
  }
}

+ (void)_invalidateArtworkCaches
{
  os_unfair_lock_lock(&artworkCacheMutex);

  os_unfair_lock_unlock(&artworkCacheMutex);
}

- (id)_themeStore
{
  v3 = objc_opt_class();
  themeIndex = self->_themeIndex;

  return [v3 _themeStoreForThemeIndex:themeIndex];
}

- (CGPoint)_hotSpot
{
  x = self->_hotSpot.x;
  y = self->_hotSpot.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateSpecificRenditionKey:(id)key isFocused:(BOOL *)focused owner:(id)owner userInfo:(id)info
{
  [key copyValuesFromKeyList:self->_renditionKeyList];
  [owner updateRenditionKey:key getFocus:focused userInfo:info];
  renditionKeyList = self->_renditionKeyList;

  [key setValuesFromKeyList:renditionKeyList];
}

- (id)_renditionForSpecificKey:(id)key
{
  v4 = [key copy];
  _themeStore = [(CUIThemeFacet *)self _themeStore];
  if ([v4 themeScale] >= 2 && (objc_msgSend(_themeStore, "canGetRenditionWithKey:", objc_msgSend(v4, "keyList")) & 1) == 0)
  {
    [v4 setThemeScale:1];
  }

  v6 = [_themeStore renditionWithKey:{objc_msgSend(v4, "keyList")}];

  return v6;
}

- (id)_rendition
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  v4 = [(CUIThemeFacet *)self _renditionForSpecificKey:v3];

  return v4;
}

- (CGSize)_thumbnailSizeForRendition:(id)rendition
{
  type = [rendition type];
  if ((type - 1) > 2)
  {
    width = NSZeroSize.width;
    height = NSZeroSize.height;
  }

  else
  {
    v5 = type;
    [objc_msgSend(rendition imageForSliceIndex:{0), "size"}];
    width = v6;
    v9 = v8;
    if (v5 == 3)
    {
      v10 = 8;
    }

    else
    {
      v10 = 2;
    }

    [objc_msgSend(rendition imageForSliceIndex:{v10), "size"}];
    v13 = v9 + v12;
    if (v5 == 2)
    {
      height = v13 + 30.0;
    }

    else
    {
      v14 = width + v11 + 30.0;
      height = v13 + 30.0;
      if (v5 == 1)
      {
        height = v9;
      }

      width = v14;
    }
  }

  v16 = width;
  result.height = height;
  result.width = v16;
  return result;
}

- (BOOL)_isButtonGlyph
{
  fFlags = self->_fFlags;
  if ((*&fFlags & 1) == 0)
  {
    fFlags = (*&fFlags | 1);
    *&self->_fFlags = fFlags;
  }

  return (*&fFlags >> 1) & 1;
}

+ (unint64_t)themeNamed:(id)named forBundleIdentifier:(id)identifier error:(id *)error
{
  if (named)
  {
    namedCopy = named;
  }

  else
  {
    namedCopy = @"AppThemeBits";
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __RunTimeThemeRefForBundleIdentifierAndName_block_invoke;
  v14[3] = &unk_1E724A840;
  v14[4] = [identifier stringByAppendingFormat:@" %@", namedCopy];
  v14[5] = identifier;
  v14[6] = namedCopy;
  v14[7] = &v21;
  v14[8] = &v15;
  PerformBlockWithThemeRefCache(v14);
  v8 = v22[3];
  v9 = v16[5];
  if (v9)
  {
    if (!v8)
    {
      v10 = v9;
      goto LABEL_9;
    }
  }

  v10 = &stru_1F00D74D0;
LABEL_9:
  v11 = v22[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  if (!v11)
  {
    v12 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:v10, NSLocalizedDescriptionKey, 0]];
    v8 = 0;
    if (error)
    {
      *error = v12;
    }
  }

  return v8;
}

+ (unint64_t)themeWithContentsOfURL:(id)l error:(id *)error
{
  if (l)
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%lld", [l path], atomic_fetch_add_explicit(&RunTimeThemeRefForFileURL___counter, 1uLL, memory_order_relaxed) + 1);
    if (v6)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v15 = 0;
      v16 = &v15;
      v17 = 0x3052000000;
      v18 = __Block_byref_object_copy__2;
      v19 = __Block_byref_object_dispose__2;
      v20 = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __RunTimeThemeRefForFileURL_block_invoke;
      v14[3] = &unk_1E724A868;
      v14[4] = v6;
      v14[5] = l;
      v14[6] = &v21;
      v14[7] = &v15;
      PerformBlockWithThemeRefCache(v14);
      v7 = v22[3];
      v8 = v16[5];
      if (v8)
      {
        if (v7)
        {
          v9 = v8;
          goto LABEL_13;
        }
      }

      v9 = &stru_1F00D74D0;
LABEL_13:
      v12 = v22[3];
      _Block_object_dispose(&v15, 8);
      _Block_object_dispose(&v21, 8);
      if (v12)
      {
        return v7;
      }

      goto LABEL_9;
    }

    v10 = [NSString stringWithFormat:@"RunTimeThemeRefForFileURL() unable to resolve location of catalog file from %@", l];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"RunTimeThemeRefForFileURL() unable to resolve location of catalog file from empty url %@", 0];
  }

  v9 = v10;
LABEL_9:
  v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:v9, NSLocalizedDescriptionKey, 0]];
  v7 = 0;
  if (error)
  {
    *error = v11;
  }

  return v7;
}

+ (unint64_t)themeWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __RunTimeThemeRefForBytes_block_invoke;
  v14[3] = &unk_1E724A890;
  v14[4] = [NSString stringWithFormat:@"%p:%lu:%lld", bytes, length, atomic_fetch_add_explicit(&RunTimeThemeRefForBytes___counter, 1uLL, memory_order_relaxed) + 1];
  v14[5] = &v21;
  v14[7] = bytes;
  v14[8] = length;
  v14[6] = &v15;
  PerformBlockWithThemeRefCache(v14);
  v8 = v22[3];
  v9 = v16[5];
  if (!v9)
  {
    goto LABEL_5;
  }

  if (!v8)
  {

LABEL_5:
    v10 = &stru_1F00D74D0;
    goto LABEL_6;
  }

  v10 = v9;
LABEL_6:
  v11 = v22[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  if (!v11)
  {
    v12 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:v10, NSLocalizedDescriptionKey, 0]];
    v8 = 0;
    if (error)
    {
      *error = v12;
    }
  }

  return v8;
}

+ (void)themeUnregisterThemeRef:(unint64_t)ref
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __41__CUIThemeFacet_themeUnregisterThemeRef___block_invoke;
  v3[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
  v3[4] = ref;
  PerformBlockWithThemeRefCache(v3);
}

void __41__CUIThemeFacet_themeUnregisterThemeRef___block_invoke(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(a2 objectForKey:{v8), "unsignedIntegerValue"}] == *(a1 + 32))
        {
          v9 = v8;
          if (v9)
          {
            v10 = v9;
            [a2 removeObjectForKey:v9];
          }

          goto LABEL_12;
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
  _UnRegisterThemeRef(*(a1 + 32));
}

+ (id)_bundleIdentifierForThemeRef:(unint64_t)ref
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __46__CUIThemeFacet__bundleIdentifierForThemeRef___block_invoke;
  v5[3] = &unk_1E724A818;
  v5[4] = &v6;
  v5[5] = ref;
  PerformBlockWithThemeRefCache(v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __46__CUIThemeFacet__bundleIdentifierForThemeRef___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __46__CUIThemeFacet__bundleIdentifierForThemeRef___block_invoke_2;
  v4[3] = &unk_1E724A7F0;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v2;
  return [a2 enumerateKeysAndObjectsUsingBlock:v4];
}

id __46__CUIThemeFacet__bundleIdentifierForThemeRef___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [a3 unsignedIntegerValue];
  if (result == *(a1 + 40))
  {
    result = a2;
    *(*(*(a1 + 32) + 8) + 40) = result;
    *a4 = 1;
  }

  return result;
}

+ (id)facetWithElement:(int64_t)element part:(int64_t)part dimension1:(int64_t)dimension1 dimension2:(int64_t)dimension2 fromTheme:(unint64_t)theme
{
  dimension2Copy = dimension2;
  dimension1Copy = dimension1;
  partCopy = part;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  CUIRenditionKeySetValueForAttribute(v13, 1, element, 5u);
  CUIRenditionKeySetValueForAttribute(v13, 2, partCopy, 5u);
  CUIRenditionKeySetValueForAttribute(v13, 8, dimension1Copy, 5u);
  CUIRenditionKeySetValueForAttribute(v13, 9, dimension2Copy, 5u);
  return [self _facetWithKeyList:v13 andRenditionKeyClass:0 orRenditionKey:0 fromTheme:theme];
}

+ (id)_facetWithKeyList:(const _renditionkeytoken *)list andRenditionKeyClass:(Class)class orRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  keyCopy = key;
  if (list | key)
  {
    v11 = [_CUIThemeFacetCacheKey alloc];
    listCopy = list;
    if (list)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [CUIThemeFacet _facetWithKeyList:a2 andRenditionKeyClass:self orRenditionKey:&v23 fromTheme:?];
    v11 = v23;
  }

  listCopy = [keyCopy keyList];
LABEL_4:
  v13 = [(_CUIThemeFacetCacheKey *)v11 initWithKeyList:listCopy themeIndex:theme];
  os_unfair_lock_lock(&facetCacheMutex);
  if (FacetCache_pred != -1)
  {
    +[CUIThemeFacet _facetWithKeyList:andRenditionKeyClass:orRenditionKey:fromTheme:];
  }

  v14 = FacetCache_facetCache;
  if (RecentlyUsedFacetCacheKeys_pred != -1)
  {
    +[CUIThemeFacet _facetWithKeyList:andRenditionKeyClass:orRenditionKey:fromTheme:];
  }

  v15 = RecentlyUsedFacetCacheKeys_facetCacheKeys;
  v16 = [RecentlyUsedFacetCacheKeys_facetCacheKeys indexOfObject:v13];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (keyCopy)
    {
      v17 = 0;
    }

    else
    {
      if (class)
      {
        classCopy = class;
      }

      else
      {
        classCopy = CUIRenditionKey;
      }

      keyCopy = [[classCopy alloc] initWithKeyList:list];
      v17 = keyCopy;
    }

    v18 = [[self alloc] initWithRenditionKey:keyCopy fromTheme:theme];

    if (_facetWithKeyList_andRenditionKeyClass_orRenditionKey_fromTheme__isFacetCacheAtLimit == 1)
    {
      [v14 removeObjectForKey:{objc_msgSend(v15, "objectAtIndex:", 0)}];
      [v15 removeObjectAtIndex:0];
    }

    else if (++_facetWithKeyList_andRenditionKeyClass_orRenditionKey_fromTheme__facetCacheCount == 20)
    {
      _facetWithKeyList_andRenditionKeyClass_orRenditionKey_fromTheme__isFacetCacheAtLimit = 1;
    }

    [v15 addObject:v13];
    [v14 setObject:v18 forKey:v13];
    v20 = v18;
  }

  else
  {
    [v15 removeObjectAtIndex:v16];
    [v15 addObject:v13];
    v18 = [v14 objectForKey:v13];
  }

  os_unfair_lock_unlock(&facetCacheMutex);

  v21 = v18;

  return v21;
}

+ (id)cursorFacetWithName:(id)name fromTheme:(unint64_t)theme
{
  v15 = 0uLL;
  v7 = [objc_msgSend(self _themeStoreForThemeIndex:{theme), "renditionKeyForName:cursorHotSpot:", name, &v15}];
  if (*&v15 < 0.0 || *(&v15 + 1) < 0.0)
  {
    _CUILog(4, "+[CUIThemeFacet cursorFacetWithName:fromTheme:] - Facet named %@ is not a cursor facet.", v8, v9, v10, v11, v12, v13, name);
    return 0;
  }

  else
  {
    result = [self _facetWithKeyList:v7 andRenditionKeyClass:0 orRenditionKey:0 fromTheme:{theme, *(&v15 + 1)}];
    *(result + 3) = v15;
  }

  return result;
}

- (CUIThemeFacet)initWithRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v9.receiver = self;
  v9.super_class = CUIThemeFacet;
  v7 = [(CUIThemeFacet *)&v9 init];
  if (v7)
  {
    if (!key)
    {
      [CUIThemeFacet initWithRenditionKey:a2 fromTheme:v7];
    }

    v7->_themeIndex = theme;
    [(CUIThemeFacet *)v7 _initWithRenditionKey:key];
  }

  return v7;
}

- (CUIThemeFacet)init
{
  v3 = [CUIRenditionKey alloc];
  v5 = -[CUIRenditionKey initWithKeyList:](v3, "initWithKeyList:", [CUIPlaceHolderRendition(v3 v4)]);
  v6 = [(CUIThemeFacet *)self initWithRenditionKey:v5 fromTheme:0];

  return v6;
}

- (CUIThemeFacet)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CUIThemeFacet;
  v4 = [(CUIThemeFacet *)&v6 init];
  if (v4)
  {
    [(CUIThemeFacet *)coder initWithCoder:v4];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeInteger:+[CUIThemeFacet version](CUIThemeFacet forKey:{"version"), @"CUIThemeFacetVersion"}];
    [coder encodeObject:v5 forKey:@"CUIThemeFacetRenditionKey"];
    [coder encodeInteger:self->_themeIndex forKey:@"CUIThemeFacetThemeIndex"];
  }

  else
  {
    [coder encodeObject:v5];
    themeIndex = self->_themeIndex;
    [coder encodeValueOfObjCType:"i" at:&themeIndex];
  }
}

- (void)dealloc
{
  free(self->_renditionKeyList);
  v3.receiver = self;
  v3.super_class = CUIThemeFacet;
  [(CUIThemeFacet *)&v3 dealloc];
}

+ (BOOL)assetExistsForRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v6 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [key keyList]);
  v7 = [self _themeStoreForThemeIndex:theme];
  if ([v7 canGetRenditionWithKey:{-[CUIRenditionKey keyList](v6, "keyList")}])
  {
    v8 = 1;
  }

  else if ([(CUIRenditionKey *)v6 themeScale]< 1)
  {
    v8 = 0;
  }

  else
  {
    [(CUIRenditionKey *)v6 setThemeScale:1];
    v8 = [v7 canGetRenditionWithKey:{-[CUIRenditionKey keyList](v6, "keyList")}];
  }

  return v8;
}

- (CGImage)copyLayerImageContentsAndCenter:(CGRect *)center renditionKey:(id)key
{
  if (key)
  {
    v6 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [key keyList]);
  }

  else
  {
    v6 = objc_alloc_init(CUIRenditionKey);
  }

  v7 = v6;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v6];
  v8 = [(CUIThemeFacet *)self _renditionForSpecificKey:v7];
  if ([v8 type] > 3)
  {
    v10 = 0;
  }

  else
  {
    unslicedImage = [v8 unslicedImage];
    v10 = unslicedImage;
    if (unslicedImage)
    {
      CGImageRetain(unslicedImage);
      sliceInformation = [v8 sliceInformation];
      Width = CGImageGetWidth(v10);
      Height = CGImageGetHeight(v10);
      [sliceInformation destinationRect];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [sliceInformation positionOfSliceBoundary:0];
      v23 = v22 + v15;
      v24 = v15 + v19;
      [sliceInformation positionOfSliceBoundary:2];
      v26 = v25;
      [sliceInformation positionOfSliceBoundary:1];
      v28 = v17 + v27;
      [sliceInformation positionOfSliceBoundary:3];
      center->origin.x = v23 / Width;
      center->origin.y = v28 / Height;
      center->size.width = (Width - v23 + v26 - v24) / Width;
      center->size.height = (Height - v28 + v29 - (v17 + v21)) / Height;
    }
  }

  return v10;
}

- (id)makeLayer
{
  v2 = [-[CUIThemeFacet _rendition](self "_rendition")];
  v3 = CAGradientLayer_ptr;
  if (v2 != 6)
  {
    v3 = CALayer_ptr;
  }

  v4 = *v3;

  return [v4 layer];
}

- (void)updateLayer:(id)layer effects:(id)effects
{
  _rendition = [(CUIThemeFacet *)self _rendition];
  [_rendition opacity];
  *&v8 = v8;
  [layer setOpacity:v8];
  if ([_rendition type] == 6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = 0;
      v74 = 0.0;
      v9 = [(CUIThemeFacet *)self gradientWithKeyAdjustment:0 angle:&v74 style:&v73];
      if (!v9)
      {
        return;
      }

      v10 = v9;
      [layer bounds];
      v12 = v11;
      v14 = v13;
      v71 = 0uLL;
      v75 = 0.0;
      v76 = 0.0;
      FrameIntersectionWithAxis(&v71, &v75, v15, v16, v11, v13, v74);
      v17 = *&v71 / v12;
      v18 = 1.0 - *(&v71 + 1) / v14;
      v19 = 1.0 - v76 / v14;
      v20 = v75 / v12;
      [layer setStartPoint:{v17, v18}];
      [layer setEndPoint:{v20, v19}];
      if (v73 == 1282306592)
      {
        v21 = &kCAGradientLayerAxial;
      }

      else
      {
        if (v73 != 1382312992)
        {
LABEL_34:
          ARGBBitmapContext = CreateARGBBitmapContext(256.0, 1.0, 1.0);
          if (!ARGBBitmapContext)
          {
            _CUILog(4, "CoreUI: Couldn't create CreateARGBBitmapContext() in [CUIThemeFacet updateLayer:effects:]", v63, v64, v65, v66, v67, v68, v71);
            [layer setColorMap:0];
            return;
          }

          v69 = ARGBBitmapContext;
          if (effects)
          {
            v10 = [v10 gradientByApplyingEffects:effects];
          }

          [v10 drawInRect:v69 angle:0.0 withContext:{0.0, 256.0, 1.0, 0.0}];
          Image = CGBitmapContextCreateImage(v69);
          CFRelease(v69);
          [layer setColorMap:Image];
          v46 = Image;
LABEL_22:
          CGImageRelease(v46);
          return;
        }

        v21 = &kCAGradientLayerRadial;
      }

      [layer setType:*v21];
      goto LABEL_34;
    }
  }

  if ([_rendition type] != 8 || objc_msgSend(_rendition, "subtype") != 50)
  {
    if ([_rendition type] == 1000)
    {
      utiType = [_rendition utiType];
      if (UTTypeConformsTo_delayInitStub(utiType, kCAPackageTypeArchive, v29))
      {
        [CUIThemeFacet updateLayer:layer effects:?];
        return;
      }
    }

    v71 = xmmword_18E021DC8;
    v72 = unk_18E021DD8;
    v30 = [(CUIThemeFacet *)self copyLayerImageContentsAndCenter:&v71];
    subtype = [_rendition subtype];
    if (effects)
    {
      [_rendition scale];
      v32 = [effects newFlattenedImageFromShapeCGImage:v30 withScale:?];
      CGImageRelease(v30);
      v30 = v32;
    }

    [layer setContents:v30];
    [layer setContentsCenter:{v71, v72}];
    [_rendition scale];
    [layer setContentsScale:?];
    if (subtype <= 0x1E && ((1 << subtype) & 0x40900800) != 0)
    {
      v33 = &kCAContentsScalingRepeat;
    }

    else
    {
      v33 = &kCAContentsScalingStretch;
    }

    [layer setContentsScaling:*v33];
    [(CUIThemeFacet *)self alpha];
    *&v34 = v34;
    [layer setOpacity:v34];
    [layer setCompositingFilter:{-[CUIThemeFacet blendModeAsCAFilterString](self, "blendModeAsCAFilterString")}];
    [layer frame];
    if (v36 == CGSizeZero.width && v35 == CGSizeZero.height)
    {
      [layer frame];
      v38 = v37;
      v40 = v39;
      Width = CGImageGetWidth(v30);
      [_rendition scale];
      v43 = Width / v42;
      Height = CGImageGetHeight(v30);
      [_rendition scale];
      [layer setFrame:{v38, v40, v43, Height / v45}];
    }

    v46 = v30;
    goto LABEL_22;
  }

  [_rendition scale];
  [layer setContentsScale:?];
  [objc_msgSend(_rendition imageForSliceIndex:{0), "size"}];
  v23 = v22;
  v25 = v24;
  unslicedImage = [_rendition unslicedImage];
  if (effects)
  {
    [_rendition scale];
    unslicedImage = [effects newFlattenedImageFromShapeCGImage:unslicedImage withScale:?];
    v27 = [CUIImage imageWithCGImage:unslicedImage];
    CGImageRelease(unslicedImage);
  }

  else
  {
    v27 = [CUIImage imageWithCGImage:unslicedImage];
  }

  [(CUIImage *)v27 size];
  v48 = v47;
  v50 = v49;
  [_rendition scale];
  v52 = v23 / v51;
  [_rendition scale];
  [layer setFrame:{0.0, 0.0, v52, v25 / v53}];
  [layer setContents:unslicedImage];
  v54 = v23 / v48;
  v55 = v25 / v50;
  [layer setContentsRect:{0.0, 0.0, v23 / v48, v55}];
  v56 = vcvtad_u64_f64(v48 / v23);
  v57 = round(v48 / v23);
  v58 = [CAKeyframeAnimation animationWithKeyPath:@"contentsRect"];
  [(CAKeyframeAnimation *)v58 setCalculationMode:kCAAnimationDiscrete];
  [(CAKeyframeAnimation *)v58 setDuration:v57 * 0.0333333333];
  [(CAKeyframeAnimation *)v58 setRemovedOnCompletion:0];
  [(CAKeyframeAnimation *)v58 setFillMode:kCAFillModeBoth];
  v59 = [NSMutableArray arrayWithCapacity:v56];
  v60 = [NSMutableArray arrayWithCapacity:v56];
  if (v56)
  {
    for (i = 0; i != v56; ++i)
    {
      [(NSMutableArray *)v59 addObject:[NSNumber numberWithDouble:i / v57]];
      [(NSMutableArray *)v60 addObject:[NSValue valueWithRect:v54 * i, 0.0, v54, v55]];
    }
  }

  [(CAKeyframeAnimation *)v58 setValues:v60];
  [(CAKeyframeAnimation *)v58 setKeyTimes:v59];

  [layer addAnimation:v58 forKey:@"filmstrip animation"];
}

- (void)drawInFrame:(CGRect)frame isFocused:(int)focused context:(CGContext *)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  [(CUIThemeFacet *)self _drawSpecificRenditionKey:v11 inFrame:context context:0 isFocused:0 focusRingColor:0 isFlipped:0 effects:x, y, width, height];
}

- (void)drawInFrame:(CGRect)frame alpha:(double)alpha isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects
{
  v11 = *&focused;
  if (alpha >= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 20;
  }

  [(CUIThemeFacet *)self drawInFrame:v12 alpha:v11 operation:color isFocused:context focusRingColor:effects context:frame.origin.x effects:frame.origin.y, frame.size.width, frame.size.height];
}

- (void)drawInFrame:(CGRect)frame alpha:(double)alpha isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context
{
  v9 = *&focused;
  if (alpha >= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 20;
  }

  [(CUIThemeFacet *)self drawInFrame:v10 alpha:v9 operation:color isFocused:context focusRingColor:0 context:frame.origin.x effects:frame.origin.y, frame.size.width, frame.size.height];
}

- (void)drawInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects
{
  v12 = *&focused;
  v13 = *&operation;
  v15 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  [CUIThemeFacet _drawSpecificRenditionKey:v15 inFrame:context context:v13 alpha:v12 operation:color isFocused:0 focusRingColor:effects isFlipped:? effects:?];
}

- (void)drawAsOnePartWithSlice:(int)slice inFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  themeRendition = [(CUIThemeFacet *)self themeRendition];
  [themeRendition opacity];
  v20 = v19;
  blendMode = [themeRendition blendMode];
  if (v20 >= 0.00000011920929)
  {
    v22 = blendMode;
    themeIndex = self->_themeIndex;
    [themeRendition scale];

    DrawOnePartElementFromRenditionWithOperation(x, y, width, height, v20, v24, themeIndex, themeRendition, context, focused, color, v22, slice, effects);
  }
}

- (void)drawAbsoluteAnimationFrame:(double)frame destinationFrame:(CGRect)destinationFrame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context
{
  height = destinationFrame.size.height;
  width = destinationFrame.size.width;
  y = destinationFrame.origin.y;
  x = destinationFrame.origin.x;
  themeRendition = [(CUIThemeFacet *)self themeRendition];
  [themeRendition opacity];
  v17 = v16;
  blendMode = [themeRendition blendMode];

  DrawAbsoluteAnimationFrameWithOperation(themeRendition, context, blendMode, focused, frame, x, y, width, height, v17, color, v19);
}

- (void)drawAnimationFrameMappedFrom0_1RangedValue:(double)value destinationFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  themeRendition = [(CUIThemeFacet *)self themeRendition];
  [themeRendition opacity];
  v19 = v18;
  blendMode = [themeRendition blendMode];

  DrawAnimationFrameMappedFrom0_1RangedValue(themeRendition, context, blendMode, focused, value, x, y, width, height, v19, color, effects);
}

- (void)drawSegmentInFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color segmentType:(int)type context:(CGContext *)context effects:(id)effects
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17 = type - 1;
  if ((type - 1) > 2)
  {
    v19 = 0;
    v18 = 2;
  }

  else
  {
    v18 = dword_18E021DE8[v17];
    v19 = dword_18E021DF4[v17];
  }

  themeRendition = [(CUIThemeFacet *)self themeRendition];
  [themeRendition opacity];
  v22 = v21;
  blendMode = [themeRendition blendMode];
  if (v22 >= 0.00000011920929)
  {
    v24 = blendMode;
    themeIndex = self->_themeIndex;
    [themeRendition scale];
    DrawThreePartElementFromRenditionWithOperation(x, y, width, height, v22, v26, themeIndex, themeRendition, context, focused, color, v24, v19, 1, v18, effects);
  }
}

- (void)updateSegmentBezelLeadingCapLayer:(id)layer bezelFillLayer:(id)fillLayer trailingBezelCapLayer:(id)capLayer forSegmentType:(int)type segmentBounds:(CGRect)bounds leadingSeparatorWidth:(double)width trailingSeparatorWidth:(double)separatorWidth renditionKey:(id)self0 effects:(id)self1
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (key)
  {
    v22 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [key keyList]);
  }

  else
  {
    v22 = objc_alloc_init(CUIRenditionKey);
  }

  v45 = v22;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v22, *&separatorWidth];
  v23 = [(CUIThemeFacet *)self _renditionForSpecificKey:v45];
  [v23 scale];
  v25 = v24;
  v26 = type - 1;
  if ((type - 1) > 2)
  {
    v28 = 0;
    v27 = 2;
  }

  else
  {
    v27 = qword_18E021E00[v26];
    v28 = qword_18E021E18[v26];
  }

  v29 = [v23 imageForSliceIndex:v28];
  v30 = [v23 imageForSliceIndex:1];
  v31 = [v23 imageForSliceIndex:v27];
  [v29 size];
  v33 = v32;
  [v31 size];
  v35 = v34;
  image = [v29 image];
  image2 = [v30 image];
  image3 = [v31 image];
  if (effects)
  {
    image = [effects newFlattenedImageFromShapeCGImage:image withScale:v25];
    image2 = [effects newFlattenedImageFromShapeCGImage:image2 withScale:v25];
    image3 = [effects newFlattenedImageFromShapeCGImage:image3 withScale:v25];
    CFAutorelease(image);
    CFAutorelease(image2);
    CFAutorelease(image3);
  }

  v39 = v35 / v25;
  [layer setContents:image];
  [fillLayer setContents:image2];
  [capLayer setContents:image3];
  [layer setContentsScale:v25];
  [fillLayer setContentsScale:v25];
  [capLayer setContentsScale:v25];
  v40 = x + width;
  v41 = x + width - v39 - v44;
  v42 = v40 + v33 / v25;
  [layer setFrame:?];
  [capLayer setFrame:{v41, y, v39, height}];
  [fillLayer setFrame:{v42, y, v41 - v42, height}];
}

- (BOOL)_canGetRenditionForKey:(id)key withDrawingLayer:(int64_t)layer
{
  [key setThemeLayer:layer];
  [key setThemeState:0];
  _themeStore = [(CUIThemeFacet *)self _themeStore];
  keyList = [key keyList];

  return [_themeStore canGetRenditionWithKey:keyList];
}

- (BOOL)hitTestAtPoint:(CGPoint)point inFrame:(CGRect)frame owner:(id)owner userInfo:(id)info
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = point.y;
  v13 = point.x;
  if (!NSPointInRect(point, frame))
  {
    return 0;
  }

  v17 = objc_alloc_init(CUIRenditionKey);
  [(CUIThemeFacet *)self _updateSpecificRenditionKey:v17 isFocused:0 owner:owner userInfo:info];
  if (![(CUIThemeFacet *)self _canGetRenditionForKey:v17 withDrawingLayer:4])
  {
    [(CUIRenditionKey *)v17 setThemeLayer:0];
  }

  v15 = 1;
  height = [(CUIThemeFacet *)self _imageForRenditionFromKey:v17 withSize:1 isMask:width, height];
  if (height)
  {
    image = [(CUIImage *)height image];
    BytesPerRow = CGImageGetBytesPerRow(image);
    v21 = CGImageGetHeight(image);
    v22 = CGImageGetWidth(image);
    if (v22)
    {
      v23 = v22;
      if (BytesPerRow / v22 == 4 && (DataProvider = CGImageGetDataProvider(image), (v25 = CGDataProviderCopyData(DataProvider)) != 0))
      {
        v26 = v25;
        v27 = v12 - y;
        v15 = *&CFDataGetBytePtr(v25)[4 * rint(v13 - x) + 4 * (v21 + ~rint(v27)) * v23] != 0;
        CFRelease(v26);
      }

      else
      {
        v15 = 1;
      }
    }
  }

  return v15;
}

- (void)drawInFrame:(CGRect)frame alpha:(double)alpha owner:(id)owner userInfo:(id)info context:(CGContext *)context
{
  if (alpha >= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 20;
  }

  [(CUIThemeFacet *)self drawInFrame:v10 alpha:owner operation:info owner:context userInfo:frame.origin.x context:frame.origin.y, frame.size.width, frame.size.height];
}

- (void)drawHighlightInFrame:(CGRect)frame alpha:(double)alpha owner:(id)owner userInfo:(id)info context:(CGContext *)context
{
  if (alpha >= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 20;
  }

  [(CUIThemeFacet *)self drawHighlightInFrame:v10 alpha:owner operation:info owner:context userInfo:frame.origin.x context:frame.origin.y, frame.size.width, frame.size.height];
}

- (void)drawMaskInFrame:(CGRect)frame alpha:(double)alpha owner:(id)owner userInfo:(id)info context:(CGContext *)context
{
  if (frame.size.height != 0.0 && frame.size.width != 0.0)
  {
    v10 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
    [(CUIThemeFacet *)self _updateSpecificRenditionKey:v10 isFocused:0 owner:owner userInfo:info];
    [CUIThemeFacet _drawMaskFromSpecificRenditionKey:? inFrame:? alpha:? operation:? isFocused:? focusRingColor:? context:?];
  }
}

- (void)drawPulseInFrame:(CGRect)frame pulseValue:(double)value owner:(id)owner userInfo:(id)info context:(CGContext *)context
{
  if (frame.size.height != 0.0)
  {
    v32 = v14;
    v33 = v13;
    v34 = v12;
    v35 = v11;
    v36 = v10;
    v37 = v9;
    v38 = v7;
    v39 = v8;
    width = frame.size.width;
    if (frame.size.width != 0.0)
    {
      height = frame.size.height;
      y = frame.origin.y;
      x = frame.origin.x;
      v31 = 0;
      v24 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
      [(CUIThemeFacet *)self _updateSpecificRenditionKey:v24 isFocused:&v31 owner:owner userInfo:info];
      themeIndex = self->_themeIndex;
      LODWORD(owner) = v31;
      themeScale = [(CUIRenditionKey *)v24 themeScale];
      DrawPulsedElementFromRenditionKey(themeIndex, v24, context, owner, x, y, width, height, value, themeScale, 0, v27, v28, v29, v30);
    }
  }
}

- (void)drawInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation owner:(id)owner userInfo:(id)info context:(CGContext *)context
{
  if (frame.size.height != 0.0)
  {
    v23 = v15;
    v24 = v14;
    v25 = v13;
    v26 = v12;
    v27 = v11;
    v28 = v10;
    v29 = v8;
    v30 = v9;
    if (frame.size.width != 0.0)
    {
      v19 = *&operation;
      v22 = 0;
      v21 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
      [(CUIThemeFacet *)self _updateSpecificRenditionKey:v21 isFocused:&v22 owner:owner userInfo:info];
      [CUIThemeFacet _drawSpecificRenditionKey:v21 inFrame:context context:v19 alpha:v22 operation:0 isFocused:0 focusRingColor:0 isFlipped:? effects:?];
    }
  }
}

- (void)drawHighlightInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation owner:(id)owner userInfo:(id)info context:(CGContext *)context
{
  if (frame.size.height != 0.0)
  {
    width = frame.size.width;
    if (frame.size.width != 0.0)
    {
      v12 = *&operation;
      height = frame.size.height;
      y = frame.origin.y;
      x = frame.origin.x;
      v18 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
      [(CUIThemeFacet *)self _updateSpecificRenditionKey:v18 isFocused:0 owner:owner userInfo:info];
      [(CUIRenditionKey *)v18 setThemeLayer:1];
      [(CUIRenditionKey *)v18 setThemeState:0];
      [(CUIThemeFacet *)self _drawSpecificRenditionKey:v18 inFrame:context context:v12 alpha:0 operation:0 isFocused:0 isFlipped:x effects:y, width, height, alpha];
    }
  }
}

- (void)drawGradientInFrame:(CGRect)frame angle:(double)angle alpha:(double)alpha operation:(int)operation isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)self0 effects:(id)self1
{
  v14 = *&focused;
  v15 = *&operation;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (adjustment)
  {
    v24 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
  }

  else
  {
    v24 = objc_alloc_init(CUIRenditionKey);
  }

  v37 = v24;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v24];
  v25 = [(CUIThemeFacet *)self _renditionForSpecificKey:v37];
  if ([v25 type] == 6)
  {
    CGContextSaveGState(context);
    AllowsDithering = CGContextGetAllowsDithering();
    if (alpha != 1.0)
    {
      CGContextSetAlpha(context, alpha);
    }

    if (v15)
    {
      CGContextSetBlendMode(context, v15);
    }

    gradient = [v25 gradient];
    v28 = gradient;
    if (effects)
    {
      v28 = [gradient gradientByApplyingEffects:effects];
    }

    gradientStyle = [v25 gradientStyle];
    if (AllowsDithering != [v28 isDithered])
    {
      CGContextSetAllowsDithering();
    }

    if (gradientStyle != 1097754476)
    {
      if (gradientStyle == 1382312992)
      {
        [v28 drawRadialGradientInRect:context relativeCenterPosition:x withContext:{y, width, height, x + width * 0.5, y + height * 0.5}];
      }

      else if (gradientStyle == 1282306592)
      {
        [v28 drawInRect:context angle:x withContext:{y, width, height, angle}];
        if (!AllowsDithering)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (!AllowsDithering)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    [v28 drawAngleGradientInRect:context relativeCenterPosition:x withContext:{y, width, height, x + width * 0.5, y + height * 0.5}];
    if (!AllowsDithering)
    {
LABEL_23:
      CGContextRestoreGState(context);
      if (v14)
      {
        CUIStartFocusRingInternal();
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        CGContextFillRect(context, v39);
        CUIStartFocusRingInternal();
      }

      goto LABEL_25;
    }

LABEL_22:
    CGContextSetAllowsDithering();
    goto LABEL_23;
  }

  if (v25)
  {
    v30 = NSStringFromSelector(a2);
    [-[CUIThemeFacet _themeStore](self "_themeStore")];
    _CUILog(4, "ERROR: %@ called on pixel-type rendition of %@ with key: %@\nIgnoring gradient angle information and applying regular rendition drawing", v31, v32, v33, v34, v35, v36, v30);
    [CUIThemeFacet _drawSpecificRenditionKey:v37 inFrame:context context:v15 alpha:v14 operation:color isFocused:0 focusRingColor:effects isFlipped:? effects:?];
  }

LABEL_25:
}

- (void)drawInFrame:(CGRect)frame alpha:(double)alpha isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context
{
  v11 = *&focused;
  if (alpha >= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 20;
  }

  [(CUIThemeFacet *)self drawInFrame:v12 alpha:v11 operation:color isFocused:adjustment focusRingColor:context keyAdjustment:frame.origin.x context:frame.origin.y, frame.size.width, frame.size.height];
}

- (void)drawInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context
{
  if (frame.size.height != 0.0 && frame.size.width != 0.0)
  {
    v11 = *&focused;
    v12 = *&operation;
    if (adjustment)
    {
      v14 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
    }

    else
    {
      v14 = objc_alloc_init(CUIRenditionKey);
    }

    v15 = v14;
    [(CUIThemeFacet *)self _applyFixedAttributesToKey:v14];
    [CUIThemeFacet _drawSpecificRenditionKey:v15 inFrame:context context:v12 alpha:v11 operation:color isFocused:0 focusRingColor:0 isFlipped:? effects:?];
  }
}

- (void)drawHighlightInFrame:(CGRect)frame alpha:(double)alpha keyAdjustment:(id)adjustment context:(CGContext *)context
{
  if (alpha >= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 20;
  }

  [(CUIThemeFacet *)self drawHighlightInFrame:v8 alpha:adjustment operation:context keyAdjustment:frame.origin.x context:frame.origin.y, frame.size.width, frame.size.height];
}

- (void)drawHighlightInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation keyAdjustment:(id)adjustment context:(CGContext *)context
{
  if (frame.size.height != 0.0)
  {
    width = frame.size.width;
    if (frame.size.width != 0.0)
    {
      v9 = *&operation;
      height = frame.size.height;
      y = frame.origin.y;
      x = frame.origin.x;
      if (adjustment)
      {
        v15 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
      }

      else
      {
        v15 = objc_alloc_init(CUIRenditionKey);
      }

      v16 = v15;
      [(CUIThemeFacet *)self _applyFixedAttributesToKey:v15];
      [(CUIRenditionKey *)v16 setThemeLayer:1];
      [(CUIRenditionKey *)v16 setThemeState:0];
      [(CUIThemeFacet *)self _drawSpecificRenditionKey:v16 inFrame:context context:v9 alpha:0 operation:0 isFocused:0 isFlipped:x effects:y, width, height, alpha];
    }
  }
}

- (void)drawMaskInFrame:(CGRect)frame alpha:(double)alpha isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context
{
  v11 = *&focused;
  if (alpha >= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 20;
  }

  [(CUIThemeFacet *)self drawMaskInFrame:v12 alpha:v11 operation:color isFocused:adjustment focusRingColor:context keyAdjustment:frame.origin.x context:frame.origin.y, frame.size.width, frame.size.height];
}

- (void)drawMaskInFrame:(CGRect)frame alpha:(double)alpha operation:(int)operation isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context
{
  if (frame.size.height != 0.0 && frame.size.width != 0.0)
  {
    if (adjustment)
    {
      v10 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
    }

    else
    {
      v10 = objc_alloc_init(CUIRenditionKey);
    }

    v11 = v10;
    [(CUIThemeFacet *)self _applyFixedAttributesToKey:v10];
    [CUIThemeFacet _drawMaskFromSpecificRenditionKey:? inFrame:? alpha:? operation:? isFocused:? focusRingColor:? context:?];
  }
}

- (void)drawPulseInFrame:(CGRect)frame pulseValue:(double)value isFocused:(int)focused focusRingColor:(CGColor *)color keyAdjustment:(id)adjustment context:(CGContext *)context
{
  if (frame.size.height != 0.0)
  {
    width = frame.size.width;
    if (frame.size.width != 0.0)
    {
      height = frame.size.height;
      y = frame.origin.y;
      x = frame.origin.x;
      if (adjustment)
      {
        v17 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
      }

      else
      {
        v17 = objc_alloc_init(CUIRenditionKey);
      }

      v24 = v17;
      [(CUIThemeFacet *)self _applyFixedAttributesToKey:v17];
      themeIndex = self->_themeIndex;
      themeScale = [(CUIRenditionKey *)v24 themeScale];
      DrawPulsedElementFromRenditionKey(themeIndex, v24, context, focused, x, y, width, height, value, themeScale, color, v20, v21, v22, v23);
    }
  }
}

- (void)_drawSlice:(int64_t)slice inFrame:(CGRect)frame withKeyAdjustment:(id)adjustment context:(CGContext *)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (adjustment)
  {
    v13 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
  }

  else
  {
    v13 = objc_alloc_init(CUIRenditionKey);
  }

  v15 = v13;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v13];
  v14 = [(CUIThemeFacet *)self _renditionForSpecificKey:v15];
  DrawThemeImageWithOperation([v14 imageForSliceIndex:{-[CUIThemeFacet _sliceIndexForSlice:ofRendition:](self, "_sliceIndexForSlice:ofRendition:", slice, v14)}], context, kCGBlendModeNormal, 0, x, y, width, height, 1.0);
}

- (id)imageForState:(int64_t)state
{
  v5 = CUIRenditionKeyValueForAttribute(&self->_renditionKeyList->identifier, 6);

  return [(CUIThemeFacet *)self imageForState:state value:v5];
}

- (BOOL)hasValueSlices
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  CUIRenditionKeyCopy(v4, self->_renditionKeyList, 0x16u);
  CUIRenditionKeySetValueForAttribute(v4, 6, 1, 0x16u);
  return [-[CUIThemeFacet _themeStore](self "_themeStore")];
}

- (id)imageForState:(int64_t)state value:(int64_t)value
{
  v7 = CUIRenditionKeyValueForAttribute(&self->_renditionKeyList->identifier, 3);

  return [(CUIThemeFacet *)self imageForState:state value:value size:v7];
}

- (id)imageForSliceIndex:(int64_t)index
{
  v4 = [(CUIThemeFacet *)self renditionForSpecificKeyWrapper:[(CUIThemeFacet *)self renditionKey]];

  return [v4 imageForSliceIndex:index];
}

- (double)alphaWithKeyAdjustment:(id)adjustment
{
  if (adjustment)
  {
    v4 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
  }

  else
  {
    v4 = objc_alloc_init(CUIRenditionKey);
  }

  v5 = v4;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v4];
  v6 = [(CUIThemeFacet *)self renditionForSpecificKeyWrapper:v5];

  [v6 opacity];
  return result;
}

- (int)blendModeWithKeyAdjustment:(id)adjustment
{
  if (adjustment)
  {
    v4 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
  }

  else
  {
    v4 = objc_alloc_init(CUIRenditionKey);
  }

  v5 = v4;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v4];
  v6 = [(CUIThemeFacet *)self renditionForSpecificKeyWrapper:v5];

  return [v6 blendMode];
}

- (id)blendModeAsCAFilterStringWithKeyAjustment:(id)ajustment
{
  v3 = [(CUIThemeFacet *)self blendModeWithKeyAdjustment:ajustment];
  result = 0;
  switch(v3)
  {
    case 1u:
      v5 = &kCAFilterMultiplyBlendMode;
      goto LABEL_24;
    case 2u:
      v5 = &kCAFilterScreenBlendMode;
      goto LABEL_24;
    case 3u:
      v5 = &kCAFilterOverlayBlendMode;
      goto LABEL_24;
    case 4u:
      v5 = &kCAFilterDarkenBlendMode;
      goto LABEL_24;
    case 5u:
      v5 = &kCAFilterLightenBlendMode;
      goto LABEL_24;
    case 6u:
      v5 = &kCAFilterColorDodgeBlendMode;
      goto LABEL_24;
    case 7u:
      v5 = &kCAFilterColorBurnBlendMode;
      goto LABEL_24;
    case 8u:
      v5 = &kCAFilterSoftLightBlendMode;
      goto LABEL_24;
    case 9u:
      v5 = &kCAFilterHardLightBlendMode;
      goto LABEL_24;
    case 0xAu:
      v5 = &kCAFilterDifferenceBlendMode;
      goto LABEL_24;
    case 0xBu:
      v5 = &kCAFilterExclusionBlendMode;
      goto LABEL_24;
    case 0x10u:
      v5 = &kCAFilterClear;
      goto LABEL_24;
    case 0x11u:
      v5 = &kCAFilterCopy;
      goto LABEL_24;
    case 0x12u:
      v5 = &kCAFilterSourceIn;
      goto LABEL_24;
    case 0x13u:
      v5 = &kCAFilterSourceOut;
      goto LABEL_24;
    case 0x14u:
      v5 = &kCAFilterSourceAtop;
      goto LABEL_24;
    case 0x15u:
      v5 = &kCAFilterDestOver;
      goto LABEL_24;
    case 0x16u:
      v5 = &kCAFilterDestIn;
      goto LABEL_24;
    case 0x17u:
      v5 = &kCAFilterDestOut;
      goto LABEL_24;
    case 0x18u:
      v5 = &kCAFilterDestAtop;
      goto LABEL_24;
    case 0x19u:
      v5 = &kCAFilterXor;
      goto LABEL_24;
    case 0x1Bu:
      v5 = &kCAFilterPlusL;
LABEL_24:
      result = *v5;
      break;
    default:
      return result;
  }

  return result;
}

- (CGSize)sizeForSegmentOfType:(int)type
{
  if ([(CUIThemeFacet *)self renditionType]== 5)
  {
    v5 = type - 1;
    if ((type - 1) > 2)
    {
      v7 = 0;
      v6 = 2;
    }

    else
    {
      v6 = qword_18E021E00[v5];
      v7 = qword_18E021E18[v5];
    }

    v10 = [(CUIThemeFacet *)self imageForSliceIndex:v7];
    v11 = [(CUIThemeFacet *)self imageForSliceIndex:1];
    v12 = [(CUIThemeFacet *)self imageForSliceIndex:v6];
    [v10 size];
    v14 = v13;
    [v11 size];
    v16 = v14 + v15;
    [v12 size];
    v18 = v16 + v17;
    [v10 size];
    v20 = v19;
    [v11 size];
    if (v20 <= v21)
    {
      v22 = v11;
    }

    else
    {
      v22 = v10;
    }

    [v22 size];
    v24 = v23;
    [v12 size];
    if (v24 > v25)
    {
      [v10 size];
      v27 = v26;
      [v11 size];
      if (v27 <= v28)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }
    }

    [v12 size];
    v8 = v18;
  }

  else
  {

    [(CUIThemeFacet *)self imageSize];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (id)gradientWithKeyAdjustment:(id)adjustment angle:(double *)angle style:(unint64_t *)style
{
  if (adjustment)
  {
    v8 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
  }

  else
  {
    v8 = objc_alloc_init(CUIRenditionKey);
  }

  v9 = v8;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v8];
  v10 = [(CUIThemeFacet *)self _renditionForSpecificKey:v9];
  if ([v10 type] == 6)
  {
    gradient = [v10 gradient];

    if (gradient)
    {
      if (angle)
      {
        [v10 gradientDrawingAngle];
        *angle = v12;
      }

      if (style)
      {
        *style = [v10 gradientStyle];
      }
    }
  }

  else
  {

    return 0;
  }

  return gradient;
}

- (id)themeRendition
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  v4 = [(CUIThemeFacet *)self renditionForSpecificKeyWrapper:v3];

  return v4;
}

- (id)renditionKey
{
  v2 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];

  return v2;
}

- (int64_t)renditionType
{
  result = self->_renditionType;
  if (result < 0)
  {
    result = [-[CUIThemeFacet _rendition](self "_rendition")];
    self->_renditionType = result;
  }

  return result;
}

- (BOOL)isTintable
{
  isTintable = self->_isTintable;
  if ((isTintable & 0x80000000) != 0)
  {
    isTintable = [-[CUIThemeFacet _rendition](self "_rendition")];
    self->_isTintable = isTintable;
  }

  return isTintable != 0;
}

- (id)properties
{
  _rendition = [(CUIThemeFacet *)self _rendition];

  return [_rendition properties];
}

- (id)displayName
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  v4 = [-[CUIThemeFacet _renditionForSpecificKey:](self _renditionForSpecificKey:{v3), "name"}];

  if (v4)
  {
    return v4;
  }

  else
  {
    return @"Problem in [CUIThemeFacet displayName]";
  }
}

- (id)thumbnail
{
  _rendition = [(CUIThemeFacet *)self _rendition];
  if (!_rendition)
  {
    _rendition = CUIPlaceHolderRendition(0, v3);
  }

  type = [_rendition type];
  if (type)
  {
    if ((type - 1) < 3 || type == 6)
    {
      [(CUIThemeFacet *)self thumbnail];
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [_rendition imageForSliceIndex:0];
  }
}

- (CGSize)thumbnailSize
{
  height = self->_thumbnailSize.height;
  if (height >= 0.0)
  {
    width = self->_thumbnailSize.width;
  }

  else
  {
    [-[CUIThemeFacet thumbnail](self "thumbnail")];
    self->_thumbnailSize.width = width;
    self->_thumbnailSize.height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)topLeftCapSize
{
  v2 = [-[CUIThemeFacet _rendition](self "_rendition")];
  if (v2)
  {
    [v2 size];
  }

  else
  {
    width = NSZeroSize.width;
    height = NSZeroSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)_sliceIndexForSlice:(int64_t)slice ofRendition:(id)rendition
{
  type = [rendition type];
  v6 = (type - 1) < 2 && slice == 4;
  v7 = 2;
  if (!v6)
  {
    v7 = slice - 1;
  }

  if (type == 6)
  {
    v7 = 0;
  }

  if (slice >= 1)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = CUIThemeFacet;
  return -[NSString stringByAppendingFormat:](-[CUIThemeFacet description](&v3, sel_description), "stringByAppendingFormat:", @" %@", [-[CUIThemeFacet _themeStore](self "_themeStore")]);
}

- (id)maskForSlice:(int64_t)slice withKeyAdjustment:(id)adjustment
{
  if (adjustment)
  {
    v6 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
  }

  else
  {
    v6 = objc_alloc_init(CUIRenditionKey);
  }

  v7 = v6;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v6];
  [(CUIRenditionKey *)v7 setThemeLayer:2];
  [(CUIRenditionKey *)v7 setThemeState:0];
  v8 = [(CUIThemeFacet *)self _renditionForSpecificKey:v7];
  v9 = [v8 maskForSliceIndex:{-[CUIThemeFacet _sliceIndexForSlice:ofRendition:](self, "_sliceIndexForSlice:ofRendition:", slice, v8)}];

  return v9;
}

- (id)imageForSlice:(int64_t)slice withKeyAdjustment:(id)adjustment
{
  if (adjustment)
  {
    v6 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [adjustment keyList]);
  }

  else
  {
    v6 = objc_alloc_init(CUIRenditionKey);
  }

  v7 = v6;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v6];
  if ([(CUIThemeFacet *)self _isButtonGlyph])
  {
    v8 = [(CUIThemeFacet *)self _approximateRenditionForRenditionKey:v7];
  }

  else
  {
    v8 = [(CUIThemeFacet *)self _renditionForSpecificKey:v7];
  }

  v9 = [v8 imageForSliceIndex:{-[CUIThemeFacet _sliceIndexForSlice:ofRendition:](self, "_sliceIndexForSlice:ofRendition:", slice, v8)}];

  return v9;
}

- (id)_approximateRenditionForRenditionKey:(uint64_t)key
{
  if (!key)
  {
    return 0;
  }

  [a2 themeScale];
  if (![OUTLINED_FUNCTION_11_1() _themeStore])
  {
    _CUILog(4, "Warning: [CUIThemeFacet imageForState:value:variant:] unable to find theme store.", v4, v5, v6, v7, v8, v9, v13);
    return 0;
  }

  [OUTLINED_FUNCTION_26() keyList];
  v10 = [OUTLINED_FUNCTION_28() canGetRenditionWithKey:?];
  if (v2 >= 2 && (v10 & 1) == 0)
  {
    [a2 setThemeScale:1];
    [a2 keyList];
    if (([OUTLINED_FUNCTION_28() canGetRenditionWithKey:?] & 1) == 0)
    {
      [a2 setThemeScale:v2];
    }
  }

  [a2 keyList];
  v11 = OUTLINED_FUNCTION_28();

  return [v11 renditionWithKey:?];
}

- (CUIImage)_imageForRenditionFromKey:(int)key withSize:(CGFloat)size isMask:(CGFloat)mask
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v10 = [(CGImage *)self _renditionForSpecificKey:a2];
  type = [v10 type];
  metrics = [v10 metrics];
  v13 = metrics;
  v14 = 25.0;
  v15 = 25.0;
  if (type != 6)
  {
    [metrics imageSize];
  }

  if (v10)
  {
    v16 = v14;
  }

  else
  {
    v16 = 25.0;
  }

  if (v10)
  {
    v17 = v15;
  }

  else
  {
    v17 = 25.0;
  }

  themeScale = [a2 themeScale];
  [v13 scale];
  v20 = v16 * (themeScale / v19);
  themeScale2 = [a2 themeScale];
  [v13 scale];
  v23 = v17 * (themeScale2 / v22);
  v55.width = NSZeroSize.width;
  v55.height = NSZeroSize.height;
  v54.width = size;
  v54.height = mask;
  v24 = NSEqualSizes(v54, v55);
  if (v24)
  {
    maskCopy = v23;
  }

  else
  {
    maskCopy = mask;
  }

  if (v24)
  {
    sizeCopy = v20;
  }

  else
  {
    sizeCopy = size;
  }

  v27 = floor(maskCopy);
  if (sizeCopy != floor(sizeCopy) || maskCopy != v27)
  {
    v29 = [-[CGImage _themeStore](selfCopy "_themeStore")];
    _CUILog(4, "WARNING: Image size requires rounding, might be off by a pixel. Pass integral sizes and rects to CUIThemeFacet methods. %@", v30, v31, v32, v33, v34, v35, v29);
    sizeCopy = round(sizeCopy);
    maskCopy = round(maskCopy);
  }

  v36 = [NSMutableData dataWithLength:(maskCopy * sizeCopy * 32.0 + 32.0)];
  SRGB = _CUIColorSpaceGetSRGB();
  if (key)
  {
    v38 = 2;
  }

  else
  {
    v38 = 8194;
  }

  v39 = CGBitmapContextCreate([(NSMutableData *)v36 bytes], sizeCopy, maskCopy, 8uLL, vcvtd_n_u64_f64(sizeCopy, 2uLL), SRGB, v38);
  v41 = OUTLINED_FUNCTION_14_1();
  if (key)
  {
    [CUIThemeFacet _drawAsMaskSpecificRenditionKey:v41 inFrame:? context:? alpha:? operation:? isFocused:? focusRingColor:?];
    Image = CGBitmapContextCreateImage(v39);
    *decode = xmmword_18E021C10;
    CGImageGetWidth(Image);
    v45 = OUTLINED_FUNCTION_26();
    Height = CGImageGetHeight(v45);
    BitsPerComponent = CGImageGetBitsPerComponent(Image);
    BitsPerPixel = CGImageGetBitsPerPixel(Image);
    BytesPerRow = CGImageGetBytesPerRow(Image);
    DataProvider = CGImageGetDataProvider(Image);
    ShouldInterpolate = CGImageGetShouldInterpolate(Image);
    CGImageMaskCreate(selfCopy, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, decode, ShouldInterpolate);
    v52 = OUTLINED_FUNCTION_26();
    CGImageRelease(v52);
  }

  else
  {
    [v40 _drawSpecificRenditionKey:v41 inFrame:? context:? alpha:? operation:? isFocused:? isFlipped:? effects:?];
    selfCopy = CGBitmapContextCreateImage(v39);
  }

  v42 = [CUIImage imageWithCGImage:selfCopy];
  CGContextRelease(v39);
  CGImageRelease(selfCopy);
  return v42;
}

- (__n128)_initWithRenditionKey:(uint64_t)key
{
  if (key)
  {
    keyList = [a2 keyList];
    v4 = CUIRenditionKeyTokenCount(keyList);
    v5 = v4 + 1;
    v6 = malloc_type_calloc(v4 + 1, 4uLL, 0x100004052888210uLL);
    *(key + 8) = v6;
    CUIRenditionKeyCopy(v6, keyList, v5);
    *(key + 24) = -1;
    __asm { FMOV            V0.2D, #-1.0 }

    *(key + 40) = result;
    *(key + 56) = 0xBFF0000000000000;
    *(key + 64) = -1;
  }

  return result;
}

- (id)_makeLayerFromCAPackageData
{
  if (result)
  {
    _rendition = [result _rendition];
    if ([_rendition type] == 1000 && (v2 = objc_msgSend(_rendition, "utiType"), v3 = kCAPackageTypeArchive, objc_msgSend(v2, "isEqualToString:", kCAPackageTypeArchive)))
    {
      v5 = 0;
      result = -[CAPackage rootLayer](+[CAPackage packageWithData:type:options:error:](CAPackage, "packageWithData:type:options:error:", [_rendition data], v3, 0, &v5), "rootLayer");
      if (v5)
      {
        v4 = 1;
      }

      else
      {
        v4 = result == 0;
      }

      if (v4)
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)drawInFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context
{
  v8 = *&focused;
  OUTLINED_FUNCTION_2_0();
  v16 = [[CUIRenditionKey alloc] initWithKeyList:*(v9 + 8)];
  v10 = OUTLINED_FUNCTION_1_2();
  [(CUIThemeFacet *)v11 _drawSpecificRenditionKey:v12 inFrame:context context:v8 isFocused:color focusRingColor:0 isFlipped:0 effects:v10, v13, v14, v15];
}

- (void)drawInFrame:(CGRect)frame isFocused:(int)focused focusRingColor:(CGColor *)color context:(CGContext *)context effects:(id)effects
{
  v10 = *&focused;
  OUTLINED_FUNCTION_2_0();
  v18 = [[CUIRenditionKey alloc] initWithKeyList:*(v11 + 8)];
  v12 = OUTLINED_FUNCTION_1_2();
  [(CUIThemeFacet *)v13 _drawSpecificRenditionKey:v14 inFrame:context context:v10 isFocused:color focusRingColor:0 isFlipped:effects effects:v12, v15, v16, v17];
}

- (void)_drawSpecificRenditionKey:(uint64_t)key inFrame:(uint64_t)frame context:(uint64_t)context alpha:(uint64_t)alpha operation:(uint64_t)operation isFocused:(void *)focused focusRingColor:isFlipped:effects:
{
  if (self)
  {
    OUTLINED_FUNCTION_2_0();
    v15 = [v13 renditionForSpecificKeyWrapper:v14];
    [v15 opacity];
    [v15 blendMode];
    v16 = OUTLINED_FUNCTION_1_2();
    [(CUIThemeFacet *)v17 _drawSpecificRenditionKey:v18 rendition:v19 inFrame:v16 context:v21 alpha:v22 operation:v23 isFocused:v24 focusRingColor:key isFlipped:v20 effects:context, alpha, operation, focused];
  }
}

- (uint64_t)_drawMaskFromSpecificRenditionKey:(uint64_t)result inFrame:alpha:operation:isFocused:focusRingColor:context:
{
  if (result)
  {
    OUTLINED_FUNCTION_13_1();
    v2 = v1;
    if (([v3 _canGetRenditionForKey:v1 withDrawingLayer:2] & 1) == 0)
    {
      [v2 setThemeLayer:0];
    }

    v4 = OUTLINED_FUNCTION_0_2();

    return [CUIThemeFacet _drawAsMaskSpecificRenditionKey:v4 inFrame:? context:? alpha:? operation:? isFocused:? focusRingColor:?];
  }

  return result;
}

- (void)_drawSpecificRenditionKey:(void *)key rendition:(double)rendition inFrame:(double)frame context:(double)context alpha:(double)alpha operation:(double)operation isFocused:(uint64_t)focused focusRingColor:(uint64_t)self0 isFlipped:(uint64_t)self1 effects:(uint64_t)self2
{
  if (!self || alpha == 0.0)
  {
    goto LABEL_9;
  }

  if (context == 0.0 || operation < 0.00000011920929)
  {
    goto LABEL_9;
  }

  type = [key type];
  if ((type - 1) <= 1)
  {
    [a2 themeScale];
    OUTLINED_FUNCTION_0_2();
    v19 = OUTLINED_FUNCTION_3_1();
    DrawThreePartElementFromRenditionWithOperation(v25, v26, v27, v28, v29, v30, v19, v20, v21, v22, v23, v24, 0, 1, 2, a14);
LABEL_9:
    OUTLINED_FUNCTION_5_1();
    return;
  }

  if (type)
  {
    if (type == 6)
    {
      [key gradientDrawingAngle];
      fmod(v45, 360.0);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_5_1();

      [v46 drawGradientInFrame:? angle:? alpha:? operation:? isFocused:? focusRingColor:? keyAdjustment:? context:? effects:?];
    }

    else
    {
      if (type != 3)
      {
        v63 = +[CUIThemeRendition displayNameForRenditionType:](CUIThemeRendition, "displayNameForRenditionType:", [key type]);
        [self _themeStore];
        [a2 keyList];
        [OUTLINED_FUNCTION_28() debugDescriptionForKeyList:?];
        _CUILog(4, "CUIThemeFacet needs code to draw %@ rendition %@", v64, v65, v66, v67, v68, v69, v63);
        goto LABEL_9;
      }

      [a2 themeScale];
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_5_1();

      DrawNinePartElementFromRenditionWithOperation(v38, v39, v40, v41, v42, v43, v31, v32, v33, v34, v35, v36, v37);
    }
  }

  else
  {
    [a2 themeScale];
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_5_1();

    DrawOnePartElementFromRenditionWithOperation(v56, v57, v58, v59, v60, v61, v48, v49, v50, v51, v52, v53, v54, v55);
  }
}

- (id)renditionMetricsWithKeyAdjustment:(id)adjustment
{
  if (adjustment)
  {
    adjustmentCopy = adjustment;
    v6 = [CUIRenditionKey alloc];
    keyList = [OUTLINED_FUNCTION_11_1() keyList];
    OUTLINED_FUNCTION_12_1(keyList);
  }

  else
  {
    v5 = objc_alloc_init(CUIRenditionKey);
  }

  [OUTLINED_FUNCTION_26() _applyFixedAttributesToKey:adjustmentCopy];
  v8 = [-[CUIThemeFacet _approximateRenditionForRenditionKey:](self adjustmentCopy)];

  return v8;
}

- (id)renditionSliceInformationForRect:(CGRect)rect keyAdjustment:(id)adjustment
{
  OUTLINED_FUNCTION_2_0();
  v6 = v5;
  if (v4)
  {
    v8 = v4;
    v9 = [CUIRenditionKey alloc];
    v7 = OUTLINED_FUNCTION_12_1([v8 keyList]);
  }

  else
  {
    v7 = objc_alloc_init(CUIRenditionKey);
  }

  v10 = v7;
  [v6 _applyFixedAttributesToKey:v7];
  v11 = [(CUIThemeFacet *)v6 _approximateRenditionForRenditionKey:v10];
  if ([v11 type] == 6)
  {
    sliceInformation = 0;
  }

  else
  {
    sliceInformation = [v11 sliceInformation];
    if (sliceInformation)
    {
      v13 = [CUIRenditionSliceInformation alloc];
      v14 = OUTLINED_FUNCTION_1_2();
      sliceInformation = [v15 initWithSliceInformation:v14 destinationRect:?];
    }
  }

  return sliceInformation;
}

- (char)isValidButtonImageSourceForSize:(char *)result
{
  if (result)
  {
    v3 = result;
    _themeStore = [result _themeStore];
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    CUIRenditionKeyCopy(v5, v3[1], 0x16u);
    CUIRenditionKeySetValueForAttribute(v5, 3, a2, 0x16u);
    if (([_themeStore canGetRenditionWithKey:v5] & 1) == 0)
    {
      if (!a2 || (CUIRenditionKeySetValueForAttribute(v5, 3, 0, 0x16u), ([_themeStore canGetRenditionWithKey:v5] & 1) == 0))
      {
        CUIRenditionKeySetValueForAttribute(v5, 3, a2, 0x16u);
      }
    }

    return ([objc_msgSend(_themeStore renditionWithKey:{v5), "type"}] == 0);
  }

  return result;
}

- (BOOL)isValidButtonImageSource
{
  v3 = CUIRenditionKeyValueForAttribute(&self->_renditionKeyList->identifier, 3);

  return [(CUIThemeFacet *)self isValidButtonImageSourceForSize:v3];
}

- (id)imageForState:(int64_t)state value:(int64_t)value size:(unint64_t)size
{
  if (![(CUIThemeFacet *)self isValidButtonImageSourceForSize:size])
  {
    return 0;
  }

  v10 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  [(CUIRenditionKey *)v10 setThemeState:state];
  [(CUIRenditionKey *)v10 setThemeValue:value];
  if ([(CUIRenditionKey *)v10 themeSize]!= size)
  {
    [(CUIRenditionKey *)v10 setThemeSize:size];
  }

  v11 = [-[CUIThemeFacet _approximateRenditionForRenditionKey:](self v10)];

  return v11;
}

- (CGSize)imageSize
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  v4 = [(CUIThemeFacet *)self _approximateRenditionForRenditionKey:v3];
  if ([v4 type] == 6)
  {
    width = NSZeroSize.width;
    height = NSZeroSize.height;
  }

  else
  {
    metrics = [v4 metrics];
    if (metrics)
    {
      [metrics imageSize];
    }

    else
    {
      [objc_msgSend(v4 imageForSliceIndex:{0), "size"}];
    }

    width = v8;
    height = v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)imageWithSize:(CGSize)size keyAdjustment:(id)adjustment
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    v4 = v5;
    v7 = [CUIRenditionKey alloc];
    keyList = [OUTLINED_FUNCTION_11_1() keyList];
    OUTLINED_FUNCTION_12_1(keyList);
  }

  else
  {
    v6 = objc_alloc_init(CUIRenditionKey);
  }

  [OUTLINED_FUNCTION_26() _applyFixedAttributesToKey:v4];
  v9 = OUTLINED_FUNCTION_7_1();
  v13 = [(CUIThemeFacet *)v10 _imageForRenditionFromKey:v11 withSize:0 isMask:v9, v12];

  return v13;
}

- (id)highlightWithSize:(CGSize)size keyAdjustment:(id)adjustment
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    v4 = v5;
    v7 = [CUIRenditionKey alloc];
    keyList = [OUTLINED_FUNCTION_11_1() keyList];
    OUTLINED_FUNCTION_12_1(keyList);
  }

  else
  {
    v6 = objc_alloc_init(CUIRenditionKey);
  }

  [OUTLINED_FUNCTION_26() _applyFixedAttributesToKey:v4];
  [v4 setThemeLayer:1];
  [v4 setThemeState:0];
  v9 = OUTLINED_FUNCTION_7_1();
  v13 = [(CUIThemeFacet *)v10 _imageForRenditionFromKey:v11 withSize:0 isMask:v9, v12];

  return v13;
}

- (id)maskWithSize:(CGSize)size keyAdjustment:(id)adjustment
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    v4 = v5;
    v7 = [CUIRenditionKey alloc];
    keyList = [OUTLINED_FUNCTION_11_1() keyList];
    OUTLINED_FUNCTION_12_1(keyList);
  }

  else
  {
    v6 = objc_alloc_init(CUIRenditionKey);
  }

  [OUTLINED_FUNCTION_26() _applyFixedAttributesToKey:v4];
  [v4 setThemeLayer:2];
  [v4 setThemeState:0];
  v9 = OUTLINED_FUNCTION_7_1();
  v13 = [(CUIThemeFacet *)v10 _imageForRenditionFromKey:v11 withSize:1 isMask:v9, v12];

  return v13;
}

+ (_CUIThemeFacetCacheKey)_facetWithKeyList:(_CUIThemeFacetCacheKey *)a3 andRenditionKeyClass:orRenditionKey:fromTheme:.cold.1(uint64_t a1, uint64_t a2, _CUIThemeFacetCacheKey **a3)
{
  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a1 file:a2 lineNumber:@"CUIThemeFacet.m" description:798, @"improper arguments"];
  result = [_CUIThemeFacetCacheKey alloc];
  *a3 = result;
  return result;
}

- (double)initWithCoder:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  if ([a1 allowsKeyedCoding])
  {
    v4 = [a1 decodeObjectForKey:@"CUIThemeFacetRenditionKey"];
    v5 = [a1 decodeIntegerForKey:@"CUIThemeFacetThemeIndex"];
  }

  else
  {
    v4 = [a1 decodeObject];
    v7 = 0;
    [a1 decodeValueOfObjCType:"i" at:&v7 size:4];
    v5 = v7;
  }

  *(a2 + 16) = v5;
  *&result = [(CUIThemeFacet *)a2 _initWithRenditionKey:v4].n128_u64[0];
  return result;
}

- (id)updateLayer:(void *)a1 effects:(void *)a2 .cold.1(void *a1, void *a2)
{
  result = [(CUIThemeFacet *)a1 _makeLayerFromCAPackageData];
  if (result)
  {
    [objc_msgSend(OUTLINED_FUNCTION_26() "sublayers")];
    [a2 bounds];
    [v2 setFrame:?];

    return [a2 addSublayer:v2];
  }

  return result;
}

- (void)thumbnail
{
  [self _thumbnailSizeForRendition:a2];
  v6 = v5;
  v8 = v7;
  v9 = [[CUIRenditionKey alloc] initWithKeyList:self[1]];
  *a3 = [(CUIThemeFacet *)self _imageForRenditionFromKey:v9 withSize:0 isMask:v6, v8];
}

@end