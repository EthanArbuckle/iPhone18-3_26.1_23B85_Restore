@interface CUIThemeFacet
+ (BOOL)assetExistsForRenditionKey:(id)a3 fromTheme:(unint64_t)a4;
+ (id)_bundleIdentifierForThemeRef:(unint64_t)a3;
+ (id)_facetWithKeyList:(const _renditionkeytoken *)a3 andRenditionKeyClass:(Class)a4 orRenditionKey:(id)a5 fromTheme:(unint64_t)a6;
+ (id)cursorFacetWithName:(id)a3 fromTheme:(unint64_t)a4;
+ (id)facetWithElement:(int64_t)a3 part:(int64_t)a4 dimension1:(int64_t)a5 dimension2:(int64_t)a6 fromTheme:(unint64_t)a7;
+ (unint64_t)themeNamed:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5;
+ (unint64_t)themeWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
+ (unint64_t)themeWithContentsOfURL:(id)a3 error:(id *)a4;
+ (void)_invalidateArtworkCaches;
+ (void)initialize;
+ (void)themeUnregisterThemeRef:(unint64_t)a3;
- (BOOL)_canGetRenditionForKey:(id)a3 withDrawingLayer:(int64_t)a4;
- (BOOL)_isButtonGlyph;
- (BOOL)hasValueSlices;
- (BOOL)hitTestAtPoint:(CGPoint)a3 inFrame:(CGRect)a4 owner:(id)a5 userInfo:(id)a6;
- (BOOL)isTintable;
- (BOOL)isValidButtonImageSource;
- (CGImage)copyLayerImageContentsAndCenter:(CGRect *)a3 renditionKey:(id)a4;
- (CGPoint)_hotSpot;
- (CGSize)_thumbnailSizeForRendition:(id)a3;
- (CGSize)imageSize;
- (CGSize)sizeForSegmentOfType:(int)a3;
- (CGSize)thumbnailSize;
- (CGSize)topLeftCapSize;
- (CUIImage)_imageForRenditionFromKey:(int)a3 withSize:(CGFloat)a4 isMask:(CGFloat)a5;
- (CUIThemeFacet)init;
- (CUIThemeFacet)initWithCoder:(id)a3;
- (CUIThemeFacet)initWithRenditionKey:(id)a3 fromTheme:(unint64_t)a4;
- (NSString)description;
- (__n128)_initWithRenditionKey:(uint64_t)a1;
- (char)isValidButtonImageSourceForSize:(char *)result;
- (double)alphaWithKeyAdjustment:(id)a3;
- (id)_approximateRenditionForRenditionKey:(uint64_t)a1;
- (id)_makeLayerFromCAPackageData;
- (id)_rendition;
- (id)_renditionForSpecificKey:(id)a3;
- (id)_themeStore;
- (id)blendModeAsCAFilterStringWithKeyAjustment:(id)a3;
- (id)displayName;
- (id)gradientWithKeyAdjustment:(id)a3 angle:(double *)a4 style:(unint64_t *)a5;
- (id)highlightWithSize:(CGSize)a3 keyAdjustment:(id)a4;
- (id)imageForSlice:(int64_t)a3 withKeyAdjustment:(id)a4;
- (id)imageForSliceIndex:(int64_t)a3;
- (id)imageForState:(int64_t)a3;
- (id)imageForState:(int64_t)a3 value:(int64_t)a4;
- (id)imageForState:(int64_t)a3 value:(int64_t)a4 size:(unint64_t)a5;
- (id)imageWithSize:(CGSize)a3 keyAdjustment:(id)a4;
- (id)makeLayer;
- (id)maskForSlice:(int64_t)a3 withKeyAdjustment:(id)a4;
- (id)maskWithSize:(CGSize)a3 keyAdjustment:(id)a4;
- (id)properties;
- (id)renditionKey;
- (id)renditionMetricsWithKeyAdjustment:(id)a3;
- (id)renditionSliceInformationForRect:(CGRect)a3 keyAdjustment:(id)a4;
- (id)themeRendition;
- (id)thumbnail;
- (int)blendModeWithKeyAdjustment:(id)a3;
- (int64_t)_sliceIndexForSlice:(int64_t)a3 ofRendition:(id)a4;
- (int64_t)renditionType;
- (uint64_t)_drawMaskFromSpecificRenditionKey:(uint64_t)result inFrame:alpha:operation:isFocused:focusRingColor:context:;
- (void)_drawSlice:(int64_t)a3 inFrame:(CGRect)a4 withKeyAdjustment:(id)a5 context:(CGContext *)a6;
- (void)_drawSpecificRenditionKey:(uint64_t)a3 inFrame:(uint64_t)a4 context:(uint64_t)a5 alpha:(uint64_t)a6 operation:(uint64_t)a7 isFocused:(void *)a8 focusRingColor:isFlipped:effects:;
- (void)_drawSpecificRenditionKey:(void *)a3 rendition:(double)a4 inFrame:(double)a5 context:(double)a6 alpha:(double)a7 operation:(double)a8 isFocused:(uint64_t)a9 focusRingColor:(uint64_t)a10 isFlipped:(uint64_t)a11 effects:(uint64_t)a12;
- (void)_updateSpecificRenditionKey:(id)a3 isFocused:(BOOL *)a4 owner:(id)a5 userInfo:(id)a6;
- (void)dealloc;
- (void)drawAbsoluteAnimationFrame:(double)a3 destinationFrame:(CGRect)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7;
- (void)drawAnimationFrameMappedFrom0_1RangedValue:(double)a3 destinationFrame:(CGRect)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7 effects:(id)a8;
- (void)drawAsOnePartWithSlice:(int)a3 inFrame:(CGRect)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7 effects:(id)a8;
- (void)drawGradientInFrame:(CGRect)a3 angle:(double)a4 alpha:(double)a5 operation:(int)a6 isFocused:(int)a7 focusRingColor:(CGColor *)a8 keyAdjustment:(id)a9 context:(CGContext *)a10 effects:(id)a11;
- (void)drawHighlightInFrame:(CGRect)a3 alpha:(double)a4 keyAdjustment:(id)a5 context:(CGContext *)a6;
- (void)drawHighlightInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 keyAdjustment:(id)a6 context:(CGContext *)a7;
- (void)drawHighlightInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 owner:(id)a6 userInfo:(id)a7 context:(CGContext *)a8;
- (void)drawHighlightInFrame:(CGRect)a3 alpha:(double)a4 owner:(id)a5 userInfo:(id)a6 context:(CGContext *)a7;
- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7;
- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7 effects:(id)a8;
- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 keyAdjustment:(id)a7 context:(CGContext *)a8;
- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 isFocused:(int)a6 focusRingColor:(CGColor *)a7 context:(CGContext *)a8 effects:(id)a9;
- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 isFocused:(int)a6 focusRingColor:(CGColor *)a7 keyAdjustment:(id)a8 context:(CGContext *)a9;
- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 owner:(id)a6 userInfo:(id)a7 context:(CGContext *)a8;
- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 owner:(id)a5 userInfo:(id)a6 context:(CGContext *)a7;
- (void)drawInFrame:(CGRect)a3 isFocused:(int)a4 context:(CGContext *)a5;
- (void)drawInFrame:(CGRect)a3 isFocused:(int)a4 focusRingColor:(CGColor *)a5 context:(CGContext *)a6;
- (void)drawInFrame:(CGRect)a3 isFocused:(int)a4 focusRingColor:(CGColor *)a5 context:(CGContext *)a6 effects:(id)a7;
- (void)drawMaskInFrame:(CGRect)a3 alpha:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 keyAdjustment:(id)a7 context:(CGContext *)a8;
- (void)drawMaskInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 isFocused:(int)a6 focusRingColor:(CGColor *)a7 keyAdjustment:(id)a8 context:(CGContext *)a9;
- (void)drawMaskInFrame:(CGRect)a3 alpha:(double)a4 owner:(id)a5 userInfo:(id)a6 context:(CGContext *)a7;
- (void)drawPulseInFrame:(CGRect)a3 pulseValue:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 keyAdjustment:(id)a7 context:(CGContext *)a8;
- (void)drawPulseInFrame:(CGRect)a3 pulseValue:(double)a4 owner:(id)a5 userInfo:(id)a6 context:(CGContext *)a7;
- (void)drawSegmentInFrame:(CGRect)a3 isFocused:(int)a4 focusRingColor:(CGColor *)a5 segmentType:(int)a6 context:(CGContext *)a7 effects:(id)a8;
- (void)encodeWithCoder:(id)a3;
- (void)thumbnail;
- (void)updateLayer:(id)a3 effects:(id)a4;
- (void)updateSegmentBezelLeadingCapLayer:(id)a3 bezelFillLayer:(id)a4 trailingBezelCapLayer:(id)a5 forSegmentType:(int)a6 segmentBounds:(CGRect)a7 leadingSeparatorWidth:(double)a8 trailingSeparatorWidth:(double)a9 renditionKey:(id)a10 effects:(id)a11;
@end

@implementation CUIThemeFacet

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:2];
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

- (void)_updateSpecificRenditionKey:(id)a3 isFocused:(BOOL *)a4 owner:(id)a5 userInfo:(id)a6
{
  [a3 copyValuesFromKeyList:self->_renditionKeyList];
  [a5 updateRenditionKey:a3 getFocus:a4 userInfo:a6];
  renditionKeyList = self->_renditionKeyList;

  [a3 setValuesFromKeyList:renditionKeyList];
}

- (id)_renditionForSpecificKey:(id)a3
{
  v4 = [a3 copy];
  v5 = [(CUIThemeFacet *)self _themeStore];
  if ([v4 themeScale] >= 2 && (objc_msgSend(v5, "canGetRenditionWithKey:", objc_msgSend(v4, "keyList")) & 1) == 0)
  {
    [v4 setThemeScale:1];
  }

  v6 = [v5 renditionWithKey:{objc_msgSend(v4, "keyList")}];

  return v6;
}

- (id)_rendition
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  v4 = [(CUIThemeFacet *)self _renditionForSpecificKey:v3];

  return v4;
}

- (CGSize)_thumbnailSizeForRendition:(id)a3
{
  v4 = [a3 type];
  if ((v4 - 1) > 2)
  {
    width = NSZeroSize.width;
    height = NSZeroSize.height;
  }

  else
  {
    v5 = v4;
    [objc_msgSend(a3 imageForSliceIndex:{0), "size"}];
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

    [objc_msgSend(a3 imageForSliceIndex:{v10), "size"}];
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

+ (unint64_t)themeNamed:(id)a3 forBundleIdentifier:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = @"AppThemeBits";
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
  v14[4] = [a4 stringByAppendingFormat:@" %@", v7];
  v14[5] = a4;
  v14[6] = v7;
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
    if (a5)
    {
      *a5 = v12;
    }
  }

  return v8;
}

+ (unint64_t)themeWithContentsOfURL:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%lld", [a3 path], atomic_fetch_add_explicit(&RunTimeThemeRefForFileURL___counter, 1uLL, memory_order_relaxed) + 1);
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
      v14[5] = a3;
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

    v10 = [NSString stringWithFormat:@"RunTimeThemeRefForFileURL() unable to resolve location of catalog file from %@", a3];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"RunTimeThemeRefForFileURL() unable to resolve location of catalog file from empty url %@", 0];
  }

  v9 = v10;
LABEL_9:
  v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:v9, NSLocalizedDescriptionKey, 0]];
  v7 = 0;
  if (a4)
  {
    *a4 = v11;
  }

  return v7;
}

+ (unint64_t)themeWithBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
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
  v14[4] = [NSString stringWithFormat:@"%p:%lu:%lld", a3, a4, atomic_fetch_add_explicit(&RunTimeThemeRefForBytes___counter, 1uLL, memory_order_relaxed) + 1];
  v14[5] = &v21;
  v14[7] = a3;
  v14[8] = a4;
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
    if (a5)
    {
      *a5 = v12;
    }
  }

  return v8;
}

+ (void)themeUnregisterThemeRef:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __41__CUIThemeFacet_themeUnregisterThemeRef___block_invoke;
  v3[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
  v3[4] = a3;
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

+ (id)_bundleIdentifierForThemeRef:(unint64_t)a3
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
  v5[5] = a3;
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

+ (id)facetWithElement:(int64_t)a3 part:(int64_t)a4 dimension1:(int64_t)a5 dimension2:(int64_t)a6 fromTheme:(unint64_t)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  CUIRenditionKeySetValueForAttribute(v13, 1, a3, 5u);
  CUIRenditionKeySetValueForAttribute(v13, 2, v10, 5u);
  CUIRenditionKeySetValueForAttribute(v13, 8, v9, 5u);
  CUIRenditionKeySetValueForAttribute(v13, 9, v8, 5u);
  return [a1 _facetWithKeyList:v13 andRenditionKeyClass:0 orRenditionKey:0 fromTheme:a7];
}

+ (id)_facetWithKeyList:(const _renditionkeytoken *)a3 andRenditionKeyClass:(Class)a4 orRenditionKey:(id)a5 fromTheme:(unint64_t)a6
{
  v7 = a5;
  if (a3 | a5)
  {
    v11 = [_CUIThemeFacetCacheKey alloc];
    v12 = a3;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [CUIThemeFacet _facetWithKeyList:a2 andRenditionKeyClass:a1 orRenditionKey:&v23 fromTheme:?];
    v11 = v23;
  }

  v12 = [v7 keyList];
LABEL_4:
  v13 = [(_CUIThemeFacetCacheKey *)v11 initWithKeyList:v12 themeIndex:a6];
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
    if (v7)
    {
      v17 = 0;
    }

    else
    {
      if (a4)
      {
        v19 = a4;
      }

      else
      {
        v19 = CUIRenditionKey;
      }

      v7 = [[v19 alloc] initWithKeyList:a3];
      v17 = v7;
    }

    v18 = [[a1 alloc] initWithRenditionKey:v7 fromTheme:a6];

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

+ (id)cursorFacetWithName:(id)a3 fromTheme:(unint64_t)a4
{
  v15 = 0uLL;
  v7 = [objc_msgSend(a1 _themeStoreForThemeIndex:{a4), "renditionKeyForName:cursorHotSpot:", a3, &v15}];
  if (*&v15 < 0.0 || *(&v15 + 1) < 0.0)
  {
    _CUILog(4, "+[CUIThemeFacet cursorFacetWithName:fromTheme:] - Facet named %@ is not a cursor facet.", v8, v9, v10, v11, v12, v13, a3);
    return 0;
  }

  else
  {
    result = [a1 _facetWithKeyList:v7 andRenditionKeyClass:0 orRenditionKey:0 fromTheme:{a4, *(&v15 + 1)}];
    *(result + 3) = v15;
  }

  return result;
}

- (CUIThemeFacet)initWithRenditionKey:(id)a3 fromTheme:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = CUIThemeFacet;
  v7 = [(CUIThemeFacet *)&v9 init];
  if (v7)
  {
    if (!a3)
    {
      [CUIThemeFacet initWithRenditionKey:a2 fromTheme:v7];
    }

    v7->_themeIndex = a4;
    [(CUIThemeFacet *)v7 _initWithRenditionKey:a3];
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

- (CUIThemeFacet)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CUIThemeFacet;
  v4 = [(CUIThemeFacet *)&v6 init];
  if (v4)
  {
    [(CUIThemeFacet *)a3 initWithCoder:v4];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:+[CUIThemeFacet version](CUIThemeFacet forKey:{"version"), @"CUIThemeFacetVersion"}];
    [a3 encodeObject:v5 forKey:@"CUIThemeFacetRenditionKey"];
    [a3 encodeInteger:self->_themeIndex forKey:@"CUIThemeFacetThemeIndex"];
  }

  else
  {
    [a3 encodeObject:v5];
    themeIndex = self->_themeIndex;
    [a3 encodeValueOfObjCType:"i" at:&themeIndex];
  }
}

- (void)dealloc
{
  free(self->_renditionKeyList);
  v3.receiver = self;
  v3.super_class = CUIThemeFacet;
  [(CUIThemeFacet *)&v3 dealloc];
}

+ (BOOL)assetExistsForRenditionKey:(id)a3 fromTheme:(unint64_t)a4
{
  v6 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a3 keyList]);
  v7 = [a1 _themeStoreForThemeIndex:a4];
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

- (CGImage)copyLayerImageContentsAndCenter:(CGRect *)a3 renditionKey:(id)a4
{
  if (a4)
  {
    v6 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a4 keyList]);
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
    v9 = [v8 unslicedImage];
    v10 = v9;
    if (v9)
    {
      CGImageRetain(v9);
      v11 = [v8 sliceInformation];
      Width = CGImageGetWidth(v10);
      Height = CGImageGetHeight(v10);
      [v11 destinationRect];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v11 positionOfSliceBoundary:0];
      v23 = v22 + v15;
      v24 = v15 + v19;
      [v11 positionOfSliceBoundary:2];
      v26 = v25;
      [v11 positionOfSliceBoundary:1];
      v28 = v17 + v27;
      [v11 positionOfSliceBoundary:3];
      a3->origin.x = v23 / Width;
      a3->origin.y = v28 / Height;
      a3->size.width = (Width - v23 + v26 - v24) / Width;
      a3->size.height = (Height - v28 + v29 - (v17 + v21)) / Height;
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

- (void)updateLayer:(id)a3 effects:(id)a4
{
  v7 = [(CUIThemeFacet *)self _rendition];
  [v7 opacity];
  *&v8 = v8;
  [a3 setOpacity:v8];
  if ([v7 type] == 6)
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
      [a3 bounds];
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
      [a3 setStartPoint:{v17, v18}];
      [a3 setEndPoint:{v20, v19}];
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
            [a3 setColorMap:0];
            return;
          }

          v69 = ARGBBitmapContext;
          if (a4)
          {
            v10 = [v10 gradientByApplyingEffects:a4];
          }

          [v10 drawInRect:v69 angle:0.0 withContext:{0.0, 256.0, 1.0, 0.0}];
          Image = CGBitmapContextCreateImage(v69);
          CFRelease(v69);
          [a3 setColorMap:Image];
          v46 = Image;
LABEL_22:
          CGImageRelease(v46);
          return;
        }

        v21 = &kCAGradientLayerRadial;
      }

      [a3 setType:*v21];
      goto LABEL_34;
    }
  }

  if ([v7 type] != 8 || objc_msgSend(v7, "subtype") != 50)
  {
    if ([v7 type] == 1000)
    {
      v28 = [v7 utiType];
      if (UTTypeConformsTo_delayInitStub(v28, kCAPackageTypeArchive, v29))
      {
        [CUIThemeFacet updateLayer:a3 effects:?];
        return;
      }
    }

    v71 = xmmword_18E021DC8;
    v72 = unk_18E021DD8;
    v30 = [(CUIThemeFacet *)self copyLayerImageContentsAndCenter:&v71];
    v31 = [v7 subtype];
    if (a4)
    {
      [v7 scale];
      v32 = [a4 newFlattenedImageFromShapeCGImage:v30 withScale:?];
      CGImageRelease(v30);
      v30 = v32;
    }

    [a3 setContents:v30];
    [a3 setContentsCenter:{v71, v72}];
    [v7 scale];
    [a3 setContentsScale:?];
    if (v31 <= 0x1E && ((1 << v31) & 0x40900800) != 0)
    {
      v33 = &kCAContentsScalingRepeat;
    }

    else
    {
      v33 = &kCAContentsScalingStretch;
    }

    [a3 setContentsScaling:*v33];
    [(CUIThemeFacet *)self alpha];
    *&v34 = v34;
    [a3 setOpacity:v34];
    [a3 setCompositingFilter:{-[CUIThemeFacet blendModeAsCAFilterString](self, "blendModeAsCAFilterString")}];
    [a3 frame];
    if (v36 == CGSizeZero.width && v35 == CGSizeZero.height)
    {
      [a3 frame];
      v38 = v37;
      v40 = v39;
      Width = CGImageGetWidth(v30);
      [v7 scale];
      v43 = Width / v42;
      Height = CGImageGetHeight(v30);
      [v7 scale];
      [a3 setFrame:{v38, v40, v43, Height / v45}];
    }

    v46 = v30;
    goto LABEL_22;
  }

  [v7 scale];
  [a3 setContentsScale:?];
  [objc_msgSend(v7 imageForSliceIndex:{0), "size"}];
  v23 = v22;
  v25 = v24;
  v26 = [v7 unslicedImage];
  if (a4)
  {
    [v7 scale];
    v26 = [a4 newFlattenedImageFromShapeCGImage:v26 withScale:?];
    v27 = [CUIImage imageWithCGImage:v26];
    CGImageRelease(v26);
  }

  else
  {
    v27 = [CUIImage imageWithCGImage:v26];
  }

  [(CUIImage *)v27 size];
  v48 = v47;
  v50 = v49;
  [v7 scale];
  v52 = v23 / v51;
  [v7 scale];
  [a3 setFrame:{0.0, 0.0, v52, v25 / v53}];
  [a3 setContents:v26];
  v54 = v23 / v48;
  v55 = v25 / v50;
  [a3 setContentsRect:{0.0, 0.0, v23 / v48, v55}];
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

  [a3 addAnimation:v58 forKey:@"filmstrip animation"];
}

- (void)drawInFrame:(CGRect)a3 isFocused:(int)a4 context:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  [(CUIThemeFacet *)self _drawSpecificRenditionKey:v11 inFrame:a5 context:0 isFocused:0 focusRingColor:0 isFlipped:0 effects:x, y, width, height];
}

- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7 effects:(id)a8
{
  v11 = *&a5;
  if (a4 >= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 20;
  }

  [(CUIThemeFacet *)self drawInFrame:v12 alpha:v11 operation:a6 isFocused:a7 focusRingColor:a8 context:a3.origin.x effects:a3.origin.y, a3.size.width, a3.size.height];
}

- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7
{
  v9 = *&a5;
  if (a4 >= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 20;
  }

  [(CUIThemeFacet *)self drawInFrame:v10 alpha:v9 operation:a6 isFocused:a7 focusRingColor:0 context:a3.origin.x effects:a3.origin.y, a3.size.width, a3.size.height];
}

- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 isFocused:(int)a6 focusRingColor:(CGColor *)a7 context:(CGContext *)a8 effects:(id)a9
{
  v12 = *&a6;
  v13 = *&a5;
  v15 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  [CUIThemeFacet _drawSpecificRenditionKey:v15 inFrame:a8 context:v13 alpha:v12 operation:a7 isFocused:0 focusRingColor:a9 isFlipped:? effects:?];
}

- (void)drawAsOnePartWithSlice:(int)a3 inFrame:(CGRect)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7 effects:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = [(CUIThemeFacet *)self themeRendition];
  [v18 opacity];
  v20 = v19;
  v21 = [v18 blendMode];
  if (v20 >= 0.00000011920929)
  {
    v22 = v21;
    themeIndex = self->_themeIndex;
    [v18 scale];

    DrawOnePartElementFromRenditionWithOperation(x, y, width, height, v20, v24, themeIndex, v18, a7, a5, a6, v22, a3, a8);
  }
}

- (void)drawAbsoluteAnimationFrame:(double)a3 destinationFrame:(CGRect)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = [(CUIThemeFacet *)self themeRendition];
  [v15 opacity];
  v17 = v16;
  v18 = [v15 blendMode];

  DrawAbsoluteAnimationFrameWithOperation(v15, a7, v18, a5, a3, x, y, width, height, v17, a6, v19);
}

- (void)drawAnimationFrameMappedFrom0_1RangedValue:(double)a3 destinationFrame:(CGRect)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 context:(CGContext *)a7 effects:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = [(CUIThemeFacet *)self themeRendition];
  [v17 opacity];
  v19 = v18;
  v20 = [v17 blendMode];

  DrawAnimationFrameMappedFrom0_1RangedValue(v17, a7, v20, a5, a3, x, y, width, height, v19, a6, a8);
}

- (void)drawSegmentInFrame:(CGRect)a3 isFocused:(int)a4 focusRingColor:(CGColor *)a5 segmentType:(int)a6 context:(CGContext *)a7 effects:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a6 - 1;
  if ((a6 - 1) > 2)
  {
    v19 = 0;
    v18 = 2;
  }

  else
  {
    v18 = dword_18E021DE8[v17];
    v19 = dword_18E021DF4[v17];
  }

  v20 = [(CUIThemeFacet *)self themeRendition];
  [v20 opacity];
  v22 = v21;
  v23 = [v20 blendMode];
  if (v22 >= 0.00000011920929)
  {
    v24 = v23;
    themeIndex = self->_themeIndex;
    [v20 scale];
    DrawThreePartElementFromRenditionWithOperation(x, y, width, height, v22, v26, themeIndex, v20, a7, a4, a5, v24, v19, 1, v18, a8);
  }
}

- (void)updateSegmentBezelLeadingCapLayer:(id)a3 bezelFillLayer:(id)a4 trailingBezelCapLayer:(id)a5 forSegmentType:(int)a6 segmentBounds:(CGRect)a7 leadingSeparatorWidth:(double)a8 trailingSeparatorWidth:(double)a9 renditionKey:(id)a10 effects:(id)a11
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  if (a10)
  {
    v22 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a10 keyList]);
  }

  else
  {
    v22 = objc_alloc_init(CUIRenditionKey);
  }

  v45 = v22;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v22, *&a9];
  v23 = [(CUIThemeFacet *)self _renditionForSpecificKey:v45];
  [v23 scale];
  v25 = v24;
  v26 = a6 - 1;
  if ((a6 - 1) > 2)
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
  v36 = [v29 image];
  v37 = [v30 image];
  v38 = [v31 image];
  if (a11)
  {
    v36 = [a11 newFlattenedImageFromShapeCGImage:v36 withScale:v25];
    v37 = [a11 newFlattenedImageFromShapeCGImage:v37 withScale:v25];
    v38 = [a11 newFlattenedImageFromShapeCGImage:v38 withScale:v25];
    CFAutorelease(v36);
    CFAutorelease(v37);
    CFAutorelease(v38);
  }

  v39 = v35 / v25;
  [a3 setContents:v36];
  [a4 setContents:v37];
  [a5 setContents:v38];
  [a3 setContentsScale:v25];
  [a4 setContentsScale:v25];
  [a5 setContentsScale:v25];
  v40 = x + a8;
  v41 = x + width - v39 - v44;
  v42 = v40 + v33 / v25;
  [a3 setFrame:?];
  [a5 setFrame:{v41, y, v39, height}];
  [a4 setFrame:{v42, y, v41 - v42, height}];
}

- (BOOL)_canGetRenditionForKey:(id)a3 withDrawingLayer:(int64_t)a4
{
  [a3 setThemeLayer:a4];
  [a3 setThemeState:0];
  v6 = [(CUIThemeFacet *)self _themeStore];
  v7 = [a3 keyList];

  return [v6 canGetRenditionWithKey:v7];
}

- (BOOL)hitTestAtPoint:(CGPoint)a3 inFrame:(CGRect)a4 owner:(id)a5 userInfo:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3.y;
  v13 = a3.x;
  if (!NSPointInRect(a3, a4))
  {
    return 0;
  }

  v17 = objc_alloc_init(CUIRenditionKey);
  [(CUIThemeFacet *)self _updateSpecificRenditionKey:v17 isFocused:0 owner:a5 userInfo:a6];
  if (![(CUIThemeFacet *)self _canGetRenditionForKey:v17 withDrawingLayer:4])
  {
    [(CUIRenditionKey *)v17 setThemeLayer:0];
  }

  v15 = 1;
  v18 = [(CUIThemeFacet *)self _imageForRenditionFromKey:v17 withSize:1 isMask:width, height];
  if (v18)
  {
    v19 = [(CUIImage *)v18 image];
    BytesPerRow = CGImageGetBytesPerRow(v19);
    v21 = CGImageGetHeight(v19);
    v22 = CGImageGetWidth(v19);
    if (v22)
    {
      v23 = v22;
      if (BytesPerRow / v22 == 4 && (DataProvider = CGImageGetDataProvider(v19), (v25 = CGDataProviderCopyData(DataProvider)) != 0))
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

- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 owner:(id)a5 userInfo:(id)a6 context:(CGContext *)a7
{
  if (a4 >= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 20;
  }

  [(CUIThemeFacet *)self drawInFrame:v10 alpha:a5 operation:a6 owner:a7 userInfo:a3.origin.x context:a3.origin.y, a3.size.width, a3.size.height];
}

- (void)drawHighlightInFrame:(CGRect)a3 alpha:(double)a4 owner:(id)a5 userInfo:(id)a6 context:(CGContext *)a7
{
  if (a4 >= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 20;
  }

  [(CUIThemeFacet *)self drawHighlightInFrame:v10 alpha:a5 operation:a6 owner:a7 userInfo:a3.origin.x context:a3.origin.y, a3.size.width, a3.size.height];
}

- (void)drawMaskInFrame:(CGRect)a3 alpha:(double)a4 owner:(id)a5 userInfo:(id)a6 context:(CGContext *)a7
{
  if (a3.size.height != 0.0 && a3.size.width != 0.0)
  {
    v10 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
    [(CUIThemeFacet *)self _updateSpecificRenditionKey:v10 isFocused:0 owner:a5 userInfo:a6];
    [CUIThemeFacet _drawMaskFromSpecificRenditionKey:? inFrame:? alpha:? operation:? isFocused:? focusRingColor:? context:?];
  }
}

- (void)drawPulseInFrame:(CGRect)a3 pulseValue:(double)a4 owner:(id)a5 userInfo:(id)a6 context:(CGContext *)a7
{
  if (a3.size.height != 0.0)
  {
    v32 = v14;
    v33 = v13;
    v34 = v12;
    v35 = v11;
    v36 = v10;
    v37 = v9;
    v38 = v7;
    v39 = v8;
    width = a3.size.width;
    if (a3.size.width != 0.0)
    {
      height = a3.size.height;
      y = a3.origin.y;
      x = a3.origin.x;
      v31 = 0;
      v24 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
      [(CUIThemeFacet *)self _updateSpecificRenditionKey:v24 isFocused:&v31 owner:a5 userInfo:a6];
      themeIndex = self->_themeIndex;
      LODWORD(a5) = v31;
      v26 = [(CUIRenditionKey *)v24 themeScale];
      DrawPulsedElementFromRenditionKey(themeIndex, v24, a7, a5, x, y, width, height, a4, v26, 0, v27, v28, v29, v30);
    }
  }
}

- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 owner:(id)a6 userInfo:(id)a7 context:(CGContext *)a8
{
  if (a3.size.height != 0.0)
  {
    v23 = v15;
    v24 = v14;
    v25 = v13;
    v26 = v12;
    v27 = v11;
    v28 = v10;
    v29 = v8;
    v30 = v9;
    if (a3.size.width != 0.0)
    {
      v19 = *&a5;
      v22 = 0;
      v21 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
      [(CUIThemeFacet *)self _updateSpecificRenditionKey:v21 isFocused:&v22 owner:a6 userInfo:a7];
      [CUIThemeFacet _drawSpecificRenditionKey:v21 inFrame:a8 context:v19 alpha:v22 operation:0 isFocused:0 focusRingColor:0 isFlipped:? effects:?];
    }
  }
}

- (void)drawHighlightInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 owner:(id)a6 userInfo:(id)a7 context:(CGContext *)a8
{
  if (a3.size.height != 0.0)
  {
    width = a3.size.width;
    if (a3.size.width != 0.0)
    {
      v12 = *&a5;
      height = a3.size.height;
      y = a3.origin.y;
      x = a3.origin.x;
      v18 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
      [(CUIThemeFacet *)self _updateSpecificRenditionKey:v18 isFocused:0 owner:a6 userInfo:a7];
      [(CUIRenditionKey *)v18 setThemeLayer:1];
      [(CUIRenditionKey *)v18 setThemeState:0];
      [(CUIThemeFacet *)self _drawSpecificRenditionKey:v18 inFrame:a8 context:v12 alpha:0 operation:0 isFocused:0 isFlipped:x effects:y, width, height, a4];
    }
  }
}

- (void)drawGradientInFrame:(CGRect)a3 angle:(double)a4 alpha:(double)a5 operation:(int)a6 isFocused:(int)a7 focusRingColor:(CGColor *)a8 keyAdjustment:(id)a9 context:(CGContext *)a10 effects:(id)a11
{
  v14 = *&a7;
  v15 = *&a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a9)
  {
    v24 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a9 keyList]);
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
    CGContextSaveGState(a10);
    AllowsDithering = CGContextGetAllowsDithering();
    if (a5 != 1.0)
    {
      CGContextSetAlpha(a10, a5);
    }

    if (v15)
    {
      CGContextSetBlendMode(a10, v15);
    }

    v27 = [v25 gradient];
    v28 = v27;
    if (a11)
    {
      v28 = [v27 gradientByApplyingEffects:a11];
    }

    v29 = [v25 gradientStyle];
    if (AllowsDithering != [v28 isDithered])
    {
      CGContextSetAllowsDithering();
    }

    if (v29 != 1097754476)
    {
      if (v29 == 1382312992)
      {
        [v28 drawRadialGradientInRect:a10 relativeCenterPosition:x withContext:{y, width, height, x + width * 0.5, y + height * 0.5}];
      }

      else if (v29 == 1282306592)
      {
        [v28 drawInRect:a10 angle:x withContext:{y, width, height, a4}];
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

    [v28 drawAngleGradientInRect:a10 relativeCenterPosition:x withContext:{y, width, height, x + width * 0.5, y + height * 0.5}];
    if (!AllowsDithering)
    {
LABEL_23:
      CGContextRestoreGState(a10);
      if (v14)
      {
        CUIStartFocusRingInternal();
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        CGContextFillRect(a10, v39);
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
    [CUIThemeFacet _drawSpecificRenditionKey:v37 inFrame:a10 context:v15 alpha:v14 operation:a8 isFocused:0 focusRingColor:a11 isFlipped:? effects:?];
  }

LABEL_25:
}

- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 keyAdjustment:(id)a7 context:(CGContext *)a8
{
  v11 = *&a5;
  if (a4 >= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 20;
  }

  [(CUIThemeFacet *)self drawInFrame:v12 alpha:v11 operation:a6 isFocused:a7 focusRingColor:a8 keyAdjustment:a3.origin.x context:a3.origin.y, a3.size.width, a3.size.height];
}

- (void)drawInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 isFocused:(int)a6 focusRingColor:(CGColor *)a7 keyAdjustment:(id)a8 context:(CGContext *)a9
{
  if (a3.size.height != 0.0 && a3.size.width != 0.0)
  {
    v11 = *&a6;
    v12 = *&a5;
    if (a8)
    {
      v14 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a8 keyList]);
    }

    else
    {
      v14 = objc_alloc_init(CUIRenditionKey);
    }

    v15 = v14;
    [(CUIThemeFacet *)self _applyFixedAttributesToKey:v14];
    [CUIThemeFacet _drawSpecificRenditionKey:v15 inFrame:a9 context:v12 alpha:v11 operation:a7 isFocused:0 focusRingColor:0 isFlipped:? effects:?];
  }
}

- (void)drawHighlightInFrame:(CGRect)a3 alpha:(double)a4 keyAdjustment:(id)a5 context:(CGContext *)a6
{
  if (a4 >= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 20;
  }

  [(CUIThemeFacet *)self drawHighlightInFrame:v8 alpha:a5 operation:a6 keyAdjustment:a3.origin.x context:a3.origin.y, a3.size.width, a3.size.height];
}

- (void)drawHighlightInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 keyAdjustment:(id)a6 context:(CGContext *)a7
{
  if (a3.size.height != 0.0)
  {
    width = a3.size.width;
    if (a3.size.width != 0.0)
    {
      v9 = *&a5;
      height = a3.size.height;
      y = a3.origin.y;
      x = a3.origin.x;
      if (a6)
      {
        v15 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a6 keyList]);
      }

      else
      {
        v15 = objc_alloc_init(CUIRenditionKey);
      }

      v16 = v15;
      [(CUIThemeFacet *)self _applyFixedAttributesToKey:v15];
      [(CUIRenditionKey *)v16 setThemeLayer:1];
      [(CUIRenditionKey *)v16 setThemeState:0];
      [(CUIThemeFacet *)self _drawSpecificRenditionKey:v16 inFrame:a7 context:v9 alpha:0 operation:0 isFocused:0 isFlipped:x effects:y, width, height, a4];
    }
  }
}

- (void)drawMaskInFrame:(CGRect)a3 alpha:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 keyAdjustment:(id)a7 context:(CGContext *)a8
{
  v11 = *&a5;
  if (a4 >= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 20;
  }

  [(CUIThemeFacet *)self drawMaskInFrame:v12 alpha:v11 operation:a6 isFocused:a7 focusRingColor:a8 keyAdjustment:a3.origin.x context:a3.origin.y, a3.size.width, a3.size.height];
}

- (void)drawMaskInFrame:(CGRect)a3 alpha:(double)a4 operation:(int)a5 isFocused:(int)a6 focusRingColor:(CGColor *)a7 keyAdjustment:(id)a8 context:(CGContext *)a9
{
  if (a3.size.height != 0.0 && a3.size.width != 0.0)
  {
    if (a8)
    {
      v10 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a8 keyList]);
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

- (void)drawPulseInFrame:(CGRect)a3 pulseValue:(double)a4 isFocused:(int)a5 focusRingColor:(CGColor *)a6 keyAdjustment:(id)a7 context:(CGContext *)a8
{
  if (a3.size.height != 0.0)
  {
    width = a3.size.width;
    if (a3.size.width != 0.0)
    {
      height = a3.size.height;
      y = a3.origin.y;
      x = a3.origin.x;
      if (a7)
      {
        v17 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a7 keyList]);
      }

      else
      {
        v17 = objc_alloc_init(CUIRenditionKey);
      }

      v24 = v17;
      [(CUIThemeFacet *)self _applyFixedAttributesToKey:v17];
      themeIndex = self->_themeIndex;
      v19 = [(CUIRenditionKey *)v24 themeScale];
      DrawPulsedElementFromRenditionKey(themeIndex, v24, a8, a5, x, y, width, height, a4, v19, a6, v20, v21, v22, v23);
    }
  }
}

- (void)_drawSlice:(int64_t)a3 inFrame:(CGRect)a4 withKeyAdjustment:(id)a5 context:(CGContext *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a5)
  {
    v13 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a5 keyList]);
  }

  else
  {
    v13 = objc_alloc_init(CUIRenditionKey);
  }

  v15 = v13;
  [(CUIThemeFacet *)self _applyFixedAttributesToKey:v13];
  v14 = [(CUIThemeFacet *)self _renditionForSpecificKey:v15];
  DrawThemeImageWithOperation([v14 imageForSliceIndex:{-[CUIThemeFacet _sliceIndexForSlice:ofRendition:](self, "_sliceIndexForSlice:ofRendition:", a3, v14)}], a6, kCGBlendModeNormal, 0, x, y, width, height, 1.0);
}

- (id)imageForState:(int64_t)a3
{
  v5 = CUIRenditionKeyValueForAttribute(&self->_renditionKeyList->identifier, 6);

  return [(CUIThemeFacet *)self imageForState:a3 value:v5];
}

- (BOOL)hasValueSlices
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  CUIRenditionKeyCopy(v4, self->_renditionKeyList, 0x16u);
  CUIRenditionKeySetValueForAttribute(v4, 6, 1, 0x16u);
  return [-[CUIThemeFacet _themeStore](self "_themeStore")];
}

- (id)imageForState:(int64_t)a3 value:(int64_t)a4
{
  v7 = CUIRenditionKeyValueForAttribute(&self->_renditionKeyList->identifier, 3);

  return [(CUIThemeFacet *)self imageForState:a3 value:a4 size:v7];
}

- (id)imageForSliceIndex:(int64_t)a3
{
  v4 = [(CUIThemeFacet *)self renditionForSpecificKeyWrapper:[(CUIThemeFacet *)self renditionKey]];

  return [v4 imageForSliceIndex:a3];
}

- (double)alphaWithKeyAdjustment:(id)a3
{
  if (a3)
  {
    v4 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a3 keyList]);
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

- (int)blendModeWithKeyAdjustment:(id)a3
{
  if (a3)
  {
    v4 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a3 keyList]);
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

- (id)blendModeAsCAFilterStringWithKeyAjustment:(id)a3
{
  v3 = [(CUIThemeFacet *)self blendModeWithKeyAdjustment:a3];
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

- (CGSize)sizeForSegmentOfType:(int)a3
{
  if ([(CUIThemeFacet *)self renditionType]== 5)
  {
    v5 = a3 - 1;
    if ((a3 - 1) > 2)
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

- (id)gradientWithKeyAdjustment:(id)a3 angle:(double *)a4 style:(unint64_t *)a5
{
  if (a3)
  {
    v8 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a3 keyList]);
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
    v11 = [v10 gradient];

    if (v11)
    {
      if (a4)
      {
        [v10 gradientDrawingAngle];
        *a4 = v12;
      }

      if (a5)
      {
        *a5 = [v10 gradientStyle];
      }
    }
  }

  else
  {

    return 0;
  }

  return v11;
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
  v2 = [(CUIThemeFacet *)self _rendition];

  return [v2 properties];
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
  v4 = [(CUIThemeFacet *)self _rendition];
  if (!v4)
  {
    v4 = CUIPlaceHolderRendition(0, v3);
  }

  v5 = [v4 type];
  if (v5)
  {
    if ((v5 - 1) < 3 || v5 == 6)
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

    return [v4 imageForSliceIndex:0];
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

- (int64_t)_sliceIndexForSlice:(int64_t)a3 ofRendition:(id)a4
{
  v5 = [a4 type];
  v6 = (v5 - 1) < 2 && a3 == 4;
  v7 = 2;
  if (!v6)
  {
    v7 = a3 - 1;
  }

  if (v5 == 6)
  {
    v7 = 0;
  }

  if (a3 >= 1)
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

- (id)maskForSlice:(int64_t)a3 withKeyAdjustment:(id)a4
{
  if (a4)
  {
    v6 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a4 keyList]);
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
  v9 = [v8 maskForSliceIndex:{-[CUIThemeFacet _sliceIndexForSlice:ofRendition:](self, "_sliceIndexForSlice:ofRendition:", a3, v8)}];

  return v9;
}

- (id)imageForSlice:(int64_t)a3 withKeyAdjustment:(id)a4
{
  if (a4)
  {
    v6 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a4 keyList]);
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

  v9 = [v8 imageForSliceIndex:{-[CUIThemeFacet _sliceIndexForSlice:ofRendition:](self, "_sliceIndexForSlice:ofRendition:", a3, v8)}];

  return v9;
}

- (id)_approximateRenditionForRenditionKey:(uint64_t)a1
{
  if (!a1)
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

- (CUIImage)_imageForRenditionFromKey:(int)a3 withSize:(CGFloat)a4 isMask:(CGFloat)a5
{
  if (!a1)
  {
    return 0;
  }

  v9 = a1;
  v10 = [(CGImage *)a1 _renditionForSpecificKey:a2];
  v11 = [v10 type];
  v12 = [v10 metrics];
  v13 = v12;
  v14 = 25.0;
  v15 = 25.0;
  if (v11 != 6)
  {
    [v12 imageSize];
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

  v18 = [a2 themeScale];
  [v13 scale];
  v20 = v16 * (v18 / v19);
  v21 = [a2 themeScale];
  [v13 scale];
  v23 = v17 * (v21 / v22);
  v55.width = NSZeroSize.width;
  v55.height = NSZeroSize.height;
  v54.width = a4;
  v54.height = a5;
  v24 = NSEqualSizes(v54, v55);
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = a5;
  }

  if (v24)
  {
    v26 = v20;
  }

  else
  {
    v26 = a4;
  }

  v27 = floor(v25);
  if (v26 != floor(v26) || v25 != v27)
  {
    v29 = [-[CGImage _themeStore](v9 "_themeStore")];
    _CUILog(4, "WARNING: Image size requires rounding, might be off by a pixel. Pass integral sizes and rects to CUIThemeFacet methods. %@", v30, v31, v32, v33, v34, v35, v29);
    v26 = round(v26);
    v25 = round(v25);
  }

  v36 = [NSMutableData dataWithLength:(v25 * v26 * 32.0 + 32.0)];
  SRGB = _CUIColorSpaceGetSRGB();
  if (a3)
  {
    v38 = 2;
  }

  else
  {
    v38 = 8194;
  }

  v39 = CGBitmapContextCreate([(NSMutableData *)v36 bytes], v26, v25, 8uLL, vcvtd_n_u64_f64(v26, 2uLL), SRGB, v38);
  v41 = OUTLINED_FUNCTION_14_1();
  if (a3)
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
    CGImageMaskCreate(v9, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, decode, ShouldInterpolate);
    v52 = OUTLINED_FUNCTION_26();
    CGImageRelease(v52);
  }

  else
  {
    [v40 _drawSpecificRenditionKey:v41 inFrame:? context:? alpha:? operation:? isFocused:? isFlipped:? effects:?];
    v9 = CGBitmapContextCreateImage(v39);
  }

  v42 = [CUIImage imageWithCGImage:v9];
  CGContextRelease(v39);
  CGImageRelease(v9);
  return v42;
}

- (__n128)_initWithRenditionKey:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 keyList];
    v4 = CUIRenditionKeyTokenCount(v3);
    v5 = v4 + 1;
    v6 = malloc_type_calloc(v4 + 1, 4uLL, 0x100004052888210uLL);
    *(a1 + 8) = v6;
    CUIRenditionKeyCopy(v6, v3, v5);
    *(a1 + 24) = -1;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 40) = result;
    *(a1 + 56) = 0xBFF0000000000000;
    *(a1 + 64) = -1;
  }

  return result;
}

- (id)_makeLayerFromCAPackageData
{
  if (result)
  {
    v1 = [result _rendition];
    if ([v1 type] == 1000 && (v2 = objc_msgSend(v1, "utiType"), v3 = kCAPackageTypeArchive, objc_msgSend(v2, "isEqualToString:", kCAPackageTypeArchive)))
    {
      v5 = 0;
      result = -[CAPackage rootLayer](+[CAPackage packageWithData:type:options:error:](CAPackage, "packageWithData:type:options:error:", [v1 data], v3, 0, &v5), "rootLayer");
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

- (void)drawInFrame:(CGRect)a3 isFocused:(int)a4 focusRingColor:(CGColor *)a5 context:(CGContext *)a6
{
  v8 = *&a4;
  OUTLINED_FUNCTION_2_0();
  v16 = [[CUIRenditionKey alloc] initWithKeyList:*(v9 + 8)];
  v10 = OUTLINED_FUNCTION_1_2();
  [(CUIThemeFacet *)v11 _drawSpecificRenditionKey:v12 inFrame:a6 context:v8 isFocused:a5 focusRingColor:0 isFlipped:0 effects:v10, v13, v14, v15];
}

- (void)drawInFrame:(CGRect)a3 isFocused:(int)a4 focusRingColor:(CGColor *)a5 context:(CGContext *)a6 effects:(id)a7
{
  v10 = *&a4;
  OUTLINED_FUNCTION_2_0();
  v18 = [[CUIRenditionKey alloc] initWithKeyList:*(v11 + 8)];
  v12 = OUTLINED_FUNCTION_1_2();
  [(CUIThemeFacet *)v13 _drawSpecificRenditionKey:v14 inFrame:a6 context:v10 isFocused:a5 focusRingColor:0 isFlipped:a7 effects:v12, v15, v16, v17];
}

- (void)_drawSpecificRenditionKey:(uint64_t)a3 inFrame:(uint64_t)a4 context:(uint64_t)a5 alpha:(uint64_t)a6 operation:(uint64_t)a7 isFocused:(void *)a8 focusRingColor:isFlipped:effects:
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_0();
    v15 = [v13 renditionForSpecificKeyWrapper:v14];
    [v15 opacity];
    [v15 blendMode];
    v16 = OUTLINED_FUNCTION_1_2();
    [(CUIThemeFacet *)v17 _drawSpecificRenditionKey:v18 rendition:v19 inFrame:v16 context:v21 alpha:v22 operation:v23 isFocused:v24 focusRingColor:a3 isFlipped:v20 effects:a5, a6, a7, a8];
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

- (void)_drawSpecificRenditionKey:(void *)a3 rendition:(double)a4 inFrame:(double)a5 context:(double)a6 alpha:(double)a7 operation:(double)a8 isFocused:(uint64_t)a9 focusRingColor:(uint64_t)a10 isFlipped:(uint64_t)a11 effects:(uint64_t)a12
{
  if (!a1 || a7 == 0.0)
  {
    goto LABEL_9;
  }

  if (a6 == 0.0 || a8 < 0.00000011920929)
  {
    goto LABEL_9;
  }

  v18 = [a3 type];
  if ((v18 - 1) <= 1)
  {
    [a2 themeScale];
    OUTLINED_FUNCTION_0_2();
    v19 = OUTLINED_FUNCTION_3_1();
    DrawThreePartElementFromRenditionWithOperation(v25, v26, v27, v28, v29, v30, v19, v20, v21, v22, v23, v24, 0, 1, 2, a14);
LABEL_9:
    OUTLINED_FUNCTION_5_1();
    return;
  }

  if (v18)
  {
    if (v18 == 6)
    {
      [a3 gradientDrawingAngle];
      fmod(v45, 360.0);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_5_1();

      [v46 drawGradientInFrame:? angle:? alpha:? operation:? isFocused:? focusRingColor:? keyAdjustment:? context:? effects:?];
    }

    else
    {
      if (v18 != 3)
      {
        v63 = +[CUIThemeRendition displayNameForRenditionType:](CUIThemeRendition, "displayNameForRenditionType:", [a3 type]);
        [a1 _themeStore];
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

- (id)renditionMetricsWithKeyAdjustment:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v6 = [CUIRenditionKey alloc];
    v7 = [OUTLINED_FUNCTION_11_1() keyList];
    OUTLINED_FUNCTION_12_1(v7);
  }

  else
  {
    v5 = objc_alloc_init(CUIRenditionKey);
  }

  [OUTLINED_FUNCTION_26() _applyFixedAttributesToKey:v3];
  v8 = [-[CUIThemeFacet _approximateRenditionForRenditionKey:](self v3)];

  return v8;
}

- (id)renditionSliceInformationForRect:(CGRect)a3 keyAdjustment:(id)a4
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
    v12 = 0;
  }

  else
  {
    v12 = [v11 sliceInformation];
    if (v12)
    {
      v13 = [CUIRenditionSliceInformation alloc];
      v14 = OUTLINED_FUNCTION_1_2();
      v12 = [v15 initWithSliceInformation:v14 destinationRect:?];
    }
  }

  return v12;
}

- (char)isValidButtonImageSourceForSize:(char *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result _themeStore];
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    CUIRenditionKeyCopy(v5, v3[1], 0x16u);
    CUIRenditionKeySetValueForAttribute(v5, 3, a2, 0x16u);
    if (([v4 canGetRenditionWithKey:v5] & 1) == 0)
    {
      if (!a2 || (CUIRenditionKeySetValueForAttribute(v5, 3, 0, 0x16u), ([v4 canGetRenditionWithKey:v5] & 1) == 0))
      {
        CUIRenditionKeySetValueForAttribute(v5, 3, a2, 0x16u);
      }
    }

    return ([objc_msgSend(v4 renditionWithKey:{v5), "type"}] == 0);
  }

  return result;
}

- (BOOL)isValidButtonImageSource
{
  v3 = CUIRenditionKeyValueForAttribute(&self->_renditionKeyList->identifier, 3);

  return [(CUIThemeFacet *)self isValidButtonImageSourceForSize:v3];
}

- (id)imageForState:(int64_t)a3 value:(int64_t)a4 size:(unint64_t)a5
{
  if (![(CUIThemeFacet *)self isValidButtonImageSourceForSize:a5])
  {
    return 0;
  }

  v10 = [[CUIRenditionKey alloc] initWithKeyList:self->_renditionKeyList];
  [(CUIRenditionKey *)v10 setThemeState:a3];
  [(CUIRenditionKey *)v10 setThemeValue:a4];
  if ([(CUIRenditionKey *)v10 themeSize]!= a5)
  {
    [(CUIRenditionKey *)v10 setThemeSize:a5];
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
    v7 = [v4 metrics];
    if (v7)
    {
      [v7 imageSize];
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

- (id)imageWithSize:(CGSize)a3 keyAdjustment:(id)a4
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    v4 = v5;
    v7 = [CUIRenditionKey alloc];
    v8 = [OUTLINED_FUNCTION_11_1() keyList];
    OUTLINED_FUNCTION_12_1(v8);
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

- (id)highlightWithSize:(CGSize)a3 keyAdjustment:(id)a4
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    v4 = v5;
    v7 = [CUIRenditionKey alloc];
    v8 = [OUTLINED_FUNCTION_11_1() keyList];
    OUTLINED_FUNCTION_12_1(v8);
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

- (id)maskWithSize:(CGSize)a3 keyAdjustment:(id)a4
{
  OUTLINED_FUNCTION_9_1();
  if (v5)
  {
    v4 = v5;
    v7 = [CUIRenditionKey alloc];
    v8 = [OUTLINED_FUNCTION_11_1() keyList];
    OUTLINED_FUNCTION_12_1(v8);
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
  [a1 _thumbnailSizeForRendition:a2];
  v6 = v5;
  v8 = v7;
  v9 = [[CUIRenditionKey alloc] initWithKeyList:a1[1]];
  *a3 = [(CUIThemeFacet *)a1 _imageForRenditionFromKey:v9 withSize:0 isMask:v6, v8];
}

@end