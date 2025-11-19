@interface CUIStructuredThemeStore
- (BOOL)_formatStorageKeyArrayBytes:(void *)a3 length:(unint64_t)a4 fromKey:(const _renditionkeytoken *)a5;
- (BOOL)_subImageTexturingShouldBeSupported;
- (BOOL)assetExistsForKey:(const _renditionkeytoken *)a3;
- (BOOL)caAllowSubimageOfImage:(CGImage *)a3;
- (BOOL)canGetRenditionWithKey:(const _renditionkeytoken *)a3;
- (BOOL)getFontName:(id *)a3 baselineOffset:(double *)a4 forFontType:(id)a5;
- (BOOL)getPhysicalColor:(_colordef *)a3 withName:(id)a4;
- (BOOL)hasPhysicalColorWithName:(id)a3;
- (BOOL)imageNamedShouldFlip:(id)a3;
- (BOOL)localizationWorkaroundForKeyList:(const _renditionkeytoken *)a3 withLocale:(id)a4;
- (BOOL)usesCUISystemThemeRenditionKey;
- (CUIStructuredThemeStore)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (CUIStructuredThemeStore)initWithPath:(id)a3;
- (CUIStructuredThemeStore)initWithURL:(id)a3;
- (const)keyAttributeIndex;
- (const)keyFormat;
- (const)renditionKeyForName:(id)a3 cursorHotSpot:(CGPoint *)a4;
- (const)renditionKeyFormat;
- (double)fontSizeForFontSizeType:(id)a3;
- (id)_newRenditionKeyDataFromKey:(const _renditionkeytoken *)a3;
- (id)aliasForName:(id)a3;
- (id)catalogGlobals;
- (id)convertRenditionKeyToKeyData:(const _renditionkeytoken *)a3;
- (id)copyKeySignatureForKey:(const _renditionkeytoken *)a3 withBytesNoCopy:(char *)a4 length:(unint64_t)a5;
- (id)copyLookupKeySignatureForKey:(const _renditionkeytoken *)a3;
- (id)debugDescriptionForKeyList:(const _renditionkeytoken *)a3;
- (id)defaultAppearanceName;
- (id)imagesWithName:(id)a3;
- (id)lookupAssetForKey:(const _renditionkeytoken *)a3;
- (id)mappedAliases;
- (id)renditionInfoForIdentifier:(unsigned __int16)a3;
- (id)renditionWithKey:(const _renditionkeytoken *)a3 usingKeySignature:(id)a4;
- (int64_t)maximumRenditionKeyTokenCount;
- (unint64_t)colorSpaceID;
- (void)_commonInit;
- (void)_updateKeyWithCompatibilityMapping:(_renditionkeytoken *)a3;
- (void)clearRenditionCache;
- (void)dealloc;
- (void)setBundleID:(id)a3;
@end

@implementation CUIStructuredThemeStore

- (void)_commonInit
{
  v3 = [(CUICommonAssetStorage *)self->_store path];
  *&self->_cacheLock._os_unfair_lock_opaque = 0;
  self->_themeIndex = -1;
  self->_cache = objc_alloc_init(NSMutableDictionary);
  self->_namedRenditionKeyCache = objc_alloc_init(NSCache);
  -[NSCache setName:](self->_namedRenditionKeyCache, "setName:", [@"com.apple.coreui-namecache-" stringByAppendingString:v3]);
  [(NSCache *)self->_namedRenditionKeyCache setEvictsObjectsWithDiscardedContent:0];
  namedRenditionKeyCache = self->_namedRenditionKeyCache;

  [(NSCache *)namedRenditionKeyCache setCountLimit:500];
}

- (const)keyAttributeIndex
{
  result = self->_store;
  if (result)
  {
    return [(_renditionkeyattributeindex *)result keyAttributeIndex];
  }

  return result;
}

- (const)keyFormat
{
  store = self->_store;
  if (store)
  {

    return [(CUICommonAssetStorage *)store keyFormat];
  }

  else
  {
    if ((keyFormat_didWarn & 1) == 0)
    {
      keyFormat_didWarn = 1;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      _CUILog(1, "%@ where the _store ivar hasn't been initialized won't behave well.", v8, v9, v10, v11, v12, v13, v7);
      if (([(CUIStructuredThemeStore *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
      {
        v14 = NSStringFromSelector(a2);
        _CUILog(1, "Subclasses of CUIStructuredThemeStore that don't use _store should override %@", v15, v16, v17, v18, v19, v20, v14);
      }
    }

    return CUISystemThemeRenditionKeyFormat();
  }
}

- (void)clearRenditionCache
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = self->_cache;
  self->_cache = objc_alloc_init(NSMutableDictionary);

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIStructuredThemeStore;
  [(CUIStructuredThemeStore *)&v3 dealloc];
}

- (BOOL)_subImageTexturingShouldBeSupported
{
  v3 = [-[CUIStructuredThemeStore themeStore](self "themeStore")];
  v4 = [NSSet setWithObjects:@"com.facebook.Facebook", @"com.toyopagroup.picaboo", 0];
  return (*(self + 64) & 1) != 0 && ![(NSSet *)v4 containsObject:self->_bundleID]|| v3 - 1 < 0x63;
}

- (unint64_t)colorSpaceID
{
  store = self->_store;
  if (store)
  {
    return [(CUICommonAssetStorage *)store colorSpaceID];
  }

  else
  {
    return 1;
  }
}

- (int64_t)maximumRenditionKeyTokenCount
{
  store = self->_store;
  if (store)
  {

    return [(CUICommonAssetStorage *)store maximumRenditionKeyTokenCount];
  }

  else
  {
    if ((maximumRenditionKeyTokenCount_didWarn & 1) == 0)
    {
      maximumRenditionKeyTokenCount_didWarn = 1;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      _CUILog(1, "%@ where the _store ivar hasn't been initialized won't behave well.", v8, v9, v10, v11, v12, v13, v7);
      if (([(CUIStructuredThemeStore *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
      {
        v14 = NSStringFromSelector(a2);
        _CUILog(1, "Subclasses of CUIStructuredThemeStore that don't use _store should override %@", v15, v16, v17, v18, v19, v20, v14);
      }
    }

    return 21;
  }
}

- (BOOL)usesCUISystemThemeRenditionKey
{
  store = self->_store;
  if (store)
  {

    return [(CUICommonAssetStorage *)store usesCUISystemThemeRenditionKey];
  }

  else
  {
    if ((usesCUISystemThemeRenditionKey_didWarn & 1) == 0)
    {
      usesCUISystemThemeRenditionKey_didWarn = 1;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      _CUILog(1, "%@ where the _store ivar hasn't been initialized won't behave well.", v8, v9, v10, v11, v12, v13, v7);
      if (([(CUIStructuredThemeStore *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
      {
        v14 = NSStringFromSelector(a2);
        _CUILog(1, "Subclasses of CUIStructuredThemeStore that don't use _store should override %@", v15, v16, v17, v18, v19, v20, v14);
      }
    }

    return 1;
  }
}

- (id)copyKeySignatureForKey:(const _renditionkeytoken *)a3 withBytesNoCopy:(char *)a4 length:(unint64_t)a5
{
  v6 = CUICopyKeySignature(a4, a5, a3, [(CUIStructuredThemeStore *)self keyFormat], [(CUIStructuredThemeStore *)self keyAttributeIndex]);
  v7 = [NSString alloc];

  return [v7 initWithBytesNoCopy:a4 length:v6 encoding:1 freeWhenDone:0];
}

- (id)copyLookupKeySignatureForKey:(const _renditionkeytoken *)a3
{
  memset(v7, 0, 92);
  CUIRenditionKeyCopy(v7, a3, 0x16u);
  return [[NSString alloc] initWithBytes:v6 length:CUICopyKeySignature(v6 encoding:{0x100uLL, a3, -[CUIStructuredThemeStore keyFormat](self, "keyFormat"), -[CUIStructuredThemeStore keyAttributeIndex](self, "keyAttributeIndex")), 1}];
}

- (BOOL)assetExistsForKey:(const _renditionkeytoken *)a3
{
  *v12 = 0u;
  v5 = [(CUIStructuredThemeStore *)self keyFormat:0];
  var2 = v5->var2;
  if (var2 < 0x16)
  {
    v7 = &v11;
    v8 = 42;
  }

  else
  {
    v7 = malloc_type_calloc(var2, 2uLL, 0x1000040BDFB0063uLL);
    v8 = 2 * v5->var2;
  }

  if ([(CUIStructuredThemeStore *)self _formatStorageKeyArrayBytes:v7 length:v8 fromKey:a3])
  {
    v9 = [(CUICommonAssetStorage *)self->_store assetExistsForKeyData:v7 length:2 * v5->var2];
  }

  else
  {
    v9 = 0;
  }

  if (v5->var2 >= 0x16)
  {
    free(v7);
  }

  return v9;
}

- (CUIStructuredThemeStore)initWithPath:(id)a3
{
  v7.receiver = self;
  v7.super_class = CUIStructuredThemeStore;
  v4 = [(CUIStructuredThemeStore *)&v7 init];
  if (v4)
  {
    v5 = [[CUICommonAssetStorage alloc] initWithPath:a3];
    v4->_store = v5;
    if (v5)
    {
      [(CUIStructuredThemeStore *)v4 _commonInit];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (CUIStructuredThemeStore)initWithURL:(id)a3
{
  v4 = [a3 path];

  return [(CUIStructuredThemeStore *)self initWithPath:v4];
}

- (CUIStructuredThemeStore)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = CUIStructuredThemeStore;
  v6 = [(CUIStructuredThemeStore *)&v9 init];
  if (v6)
  {
    v7 = [[CUICommonAssetStorage alloc] initWithBytes:a3 length:a4];
    v6->_store = v7;
    if (v7)
    {
      [(CUIStructuredThemeStore *)v6 _commonInit];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (id)defaultAppearanceName
{
  v2 = [(CUICommonAssetStorage *)self->_store deploymentPlatformString];
  if ([v2 isEqualToString:kCUIPlatformMac[0]])
  {
    return @"NSAppearanceNameSystem";
  }

  else
  {
    return @"UIAppearanceAny";
  }
}

- (BOOL)getPhysicalColor:(_colordef *)a3 withName:(id)a4
{
  os_unfair_lock_lock(&self->_storeLock);
  LOBYTE(a4) = -[CUICommonAssetStorage getColor:forName:](self->_store, "getColor:forName:", a3, [a4 UTF8String]);
  os_unfair_lock_unlock(&self->_storeLock);
  return a4;
}

- (BOOL)hasPhysicalColorWithName:(id)a3
{
  os_unfair_lock_lock(&self->_storeLock);
  LOBYTE(a3) = -[CUICommonAssetStorage hasColorForName:](self->_store, "hasColorForName:", [a3 UTF8String]);
  os_unfair_lock_unlock(&self->_storeLock);
  return a3;
}

- (BOOL)getFontName:(id *)a3 baselineOffset:(double *)a4 forFontType:(id)a5
{
  os_unfair_lock_lock(&self->_storeLock);
  v11 = 0.0;
  v9 = [(CUICommonAssetStorage *)self->_store getFontName:a3 baselineOffset:&v11 forFontType:a5];
  os_unfair_lock_unlock(&self->_storeLock);
  if (a4 && v9)
  {
    *a4 = v11;
  }

  return v9;
}

- (double)fontSizeForFontSizeType:(id)a3
{
  os_unfair_lock_lock(&self->_storeLock);
  [(CUICommonAssetStorage *)self->_store fontSizeForFontSizeType:a3];
  v6 = v5;
  os_unfair_lock_unlock(&self->_storeLock);
  return v6;
}

- (void)_updateKeyWithCompatibilityMapping:(_renditionkeytoken *)a3
{
  if ([(CUICommonAssetStorage *)self->_store storageVersion]<= 4)
  {
    v4 = CUIRenditionKeyIndexForAttribute(&a3->identifier, 14);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = &a3[v4];
      v5->identifier = 7;
      if (v5->value)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      v5->value = v6;
    }
  }
}

- (BOOL)_formatStorageKeyArrayBytes:(void *)a3 length:(unint64_t)a4 fromKey:(const _renditionkeytoken *)a5
{
  v9 = [(CUIStructuredThemeStore *)self keyFormat];
  v10 = [(CUIStructuredThemeStore *)self keyAttributeIndex];
  if (!a3 || a4 < 2 * v9->var2)
  {
    return 0;
  }

  v12 = v10;
  CUIRenditionKeyCopy(v14, a5, 0x16u);
  [(CUIStructuredThemeStore *)self _updateKeyWithCompatibilityMapping:v14];
  CUIFillCARKeyArrayForRenditionKey2(a3, v14, v9, v12);
  if ([(CUICommonAssetStorage *)self->_store swapped])
  {
    var2 = v9->var2;
    if (var2)
    {
      do
      {
        *a3 = bswap32(*a3) >> 16;
        a3 = a3 + 2;
        --var2;
      }

      while (var2);
    }
  }

  return 1;
}

- (id)_newRenditionKeyDataFromKey:(const _renditionkeytoken *)a3
{
  *v17 = 0u;
  v5 = [(CUIStructuredThemeStore *)self keyFormat:0];
  var2 = v5->var2;
  if (var2 < 0x16)
  {
    v7 = &v16;
    v8 = 42;
  }

  else
  {
    v7 = malloc_type_calloc(var2, 2uLL, 0x1000040BDFB0063uLL);
    v8 = 2 * v5->var2;
  }

  v9 = [(CUIStructuredThemeStore *)self _formatStorageKeyArrayBytes:v7 length:v8 fromKey:a3];
  v10 = v5->var2;
  if (v9)
  {
    v11 = [NSData alloc];
    v12 = 2 * v5->var2;
    if (v10 < 0x16)
    {
      v13 = [v11 initWithBytes:v7 length:v12];
    }

    else
    {
      v13 = [v11 initWithBytesNoCopy:v7 length:v12 freeWhenDone:1];
    }

    v14 = v13;
    __CFSetLastAllocationEventName();
  }

  else
  {
    if (v10 >= 0x16)
    {
      free(v7);
    }

    return 0;
  }

  return v14;
}

- (id)convertRenditionKeyToKeyData:(const _renditionkeytoken *)a3
{
  v3 = [(CUIStructuredThemeStore *)self _newRenditionKeyDataFromKey:a3];

  return v3;
}

- (const)renditionKeyFormat
{
  v3 = [(CUICommonAssetStorage *)self->_store keySemantics];
  v4 = [(CUICommonAssetStorage *)self->_store storageVersion];

  return CUIDefaultThemeRenditionKeyFormat(v3, v4, v5, v6, v7, v8, v9, v10);
}

- (id)debugDescriptionForKeyList:(const _renditionkeytoken *)a3
{
  v5 = [(CUIStructuredThemeStore *)self renditionKeyFormat];
  if (v5 != CUISystemThemeRenditionKeyFormat())
  {
    v6 = CUIRenditionKeyValueForAttribute(&a3->identifier, 12);
    v7 = CUIRenditionKeyValueForAttribute(&a3->identifier, 15);
    if (v7 > 6)
    {
      v8 = [NSString stringWithFormat:@"%ld - Unnamed idiom", v7];
    }

    else
    {
      v8 = [NSString stringWithFormat:@"%s", gThemeIdioms[3 * v7 + 2]];
    }

    v12 = v8;
    v13 = v6;
    v14 = CUIRenditionKeyValueForAttribute(&a3->identifier, 16);
    v15 = CUIRenditionKeyValueForAttribute(&a3->identifier, 17);
    v16 = [NSString stringWithFormat:@"%ld", CUIRenditionKeyValueForAttribute(&a3->identifier, 1)];
    v17 = [NSString stringWithFormat:@"%ld", CUIRenditionKeyValueForAttribute(&a3->identifier, 2)];
    v18 = CUIRenditionKeyValueForAttribute(&a3->identifier, 10);
    if (v18 > 4)
    {
      v19 = [NSString stringWithFormat:@"%ld - Unnamed state value", v18];
    }

    else
    {
      v19 = [NSString stringWithFormat:@"%s", gThemeStates[3 * v18 + 2]];
    }

    v20 = v19;
    v21 = CUIRenditionKeyValueForAttribute(&a3->identifier, 6);
    if (v21 > 2)
    {
      v22 = [NSString stringWithFormat:@"%ld - Unnamed on/off/mixed value", v21];
    }

    else
    {
      v22 = [NSString stringWithFormat:@"%s", gThemeValues[3 * v21 + 2]];
    }

    return [NSString stringWithFormat:@"\n\tIdiom: %@\n\tSubtype: %ld\n\tName Identifier: %ld\n\tScale: %ld\n\tElement: %@\n\tPart: %@\n\tState: %@\n\tValue: %@\nin theme store associated with bundle: %@", v12, v14, v15, v13, v16, v17, v20, v22, [(CUIStructuredThemeStore *)self bundleID], v48, v49, v50, v51, v52, v53];
  }

  v70 = CUIRenditionKeyValueForAttribute(&a3->identifier, 1);
  v62 = [NSString stringWithFormat:@"%ld", v70];
  v69 = CUIRenditionKeyValueForAttribute(&a3->identifier, 2);
  v61 = [NSString stringWithFormat:@"%ld", v69];
  v9 = CUIRenditionKeyValueForAttribute(&a3->identifier, 3);
  v10 = v9;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = [NSString stringWithFormat:@"%ld - kCoreThemeSizeMini", 2];
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_22;
      }

      v11 = [NSString stringWithFormat:@"%ld - kCoreThemeSizeLarge", 3];
    }
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = [NSString stringWithFormat:@"%ld - kCoreThemeSizeSmall", 1];
        goto LABEL_21;
      }

LABEL_22:
      v11 = [NSString stringWithFormat:@"%ld - Unknown size value", v10];
      goto LABEL_23;
    }

    v11 = [NSString stringWithFormat:@"%ld - kCoreThemeSizeRegular", 0];
  }

LABEL_21:
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_23:
  v60 = v11;
  v24 = CUIRenditionKeyValueForAttribute(&a3->identifier, 4);
  v67 = v24;
  if (v24 > 5)
  {
    v25 = [NSString stringWithFormat:@"%ld - Unnamed direction value", v24];
  }

  else
  {
    v25 = [NSString stringWithFormat:@"%s", gThemeDirections[3 * v24 + 2]];
  }

  v59 = v25;
  v26 = CUIRenditionKeyValueForAttribute(&a3->identifier, 6);
  v66 = v26;
  if (v26 > 2)
  {
    v27 = [NSString stringWithFormat:@"%ld - Unnamed on/off/mixed value", v26];
  }

  else
  {
    v27 = [NSString stringWithFormat:@"%s", gThemeValues[3 * v26 + 2]];
  }

  v58 = v27;
  v28 = CUIRenditionKeyValueForAttribute(&a3->identifier, 10);
  v65 = v28;
  if (v28 > 4)
  {
    v29 = [NSString stringWithFormat:@"%ld - Unnamed state value", v28];
  }

  else
  {
    v29 = [NSString stringWithFormat:@"%s", gThemeStates[3 * v28 + 2]];
  }

  v57 = v29;
  v30 = CUIRenditionKeyValueForAttribute(&a3->identifier, 18);
  v64 = v30;
  if (v30 > 2)
  {
    v31 = [NSString stringWithFormat:@"%ld - Unnamed on/off/mixed previousValue", v30];
  }

  else
  {
    v31 = [NSString stringWithFormat:@"%s", gThemeValues[3 * v30 + 2]];
  }

  v56 = v31;
  v32 = CUIRenditionKeyValueForAttribute(&a3->identifier, 19);
  v68 = v10;
  v63 = v32;
  if (v32 > 4)
  {
    v33 = [NSString stringWithFormat:@"%ld - Unnamed previousState value", v32];
  }

  else
  {
    v33 = [NSString stringWithFormat:@"%s", gThemeStates[3 * v32 + 2]];
  }

  v55 = v33;
  v34 = CUIRenditionKeyValueForAttribute(&a3->identifier, 14);
  v35 = v34;
  v36 = self;
  if (v34 > 2)
  {
    v37 = [NSString stringWithFormat:@"%ld - Unnamed presentation state value", v34];
  }

  else
  {
    v37 = [NSString stringWithFormat:@"%s", gThemePresentationStates[3 * v34 + 2]];
  }

  v54 = v37;
  v38 = CUIRenditionKeyValueForAttribute(&a3->identifier, 11);
  v39 = v38;
  if (v38 > 4)
  {
    v40 = [NSString stringWithFormat:@"%ld - Unnamed drawing layer value", v38];
  }

  else
  {
    v40 = [NSString stringWithFormat:@"%s", gThemeDrawingLayers[3 * v38 + 2]];
  }

  v41 = v40;
  v42 = -[NSDictionary objectForKey:]([+[NSProcessInfo processInfo](NSProcessInfo environment], "objectForKey:", @"CUISuppressMissingAssetLogs");
  v43 = CUIRenditionKeyValueForAttribute(&a3->identifier, 8);
  v44 = CUIRenditionKeyValueForAttribute(&a3->identifier, 9);
  v45 = CUIRenditionKeyValueForAttribute(&a3->identifier, 12);
  v46 = CUIRenditionKeyValueForAttribute(&a3->identifier, 17);
  v47 = [(CUIStructuredThemeStore *)v36 bundleID];
  if (v42)
  {
    return [NSString stringWithFormat:@"(%ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld) in %@", v70, v69, v68, v67, v66, v43, v44, v65, v63, v64, v35, v39, v45, v46, v47];
  }

  else
  {
    return [NSString stringWithFormat:@"\n\tElement: %@\n\tPart: %@\n\tSize: %@\n\tDirection: %@\n\tValue: %@\n\tDimension 1: %d\n\tDimension 2: %d\n\tState: %@\n\tPrevious State: %@\n\tPrevious Value: %@\n\tPresentation State: %@\n\tDrawing Layer: %@\n\tScale: %d\n\tIdentifier: %d\nin theme store associated with bundle: %@", v62, v61, v60, v59, v58, v43, v44, v57, v55, v56, v54, v41, v45, v46, v47];
  }
}

- (id)lookupAssetForKey:(const _renditionkeytoken *)a3
{
  v4 = [(CUIStructuredThemeStore *)self _newRenditionKeyDataFromKey:a3];
  v5 = [(CUICommonAssetStorage *)self->_store assetForKey:v4];

  if (v5 && [(CUICommonAssetStorage *)self->_store swapped])
  {
    v5 = [v5 mutableCopy];
    v6 = [v5 bytes];
    *(v6 + 4) = vrev32q_s8(*(v6 + 4));
    *(v6 + 20) = vrev32_s8(*(v6 + 20));
    v7 = bswap32(*(v6 + 8));
    *(v6 + 7) = *(v6 + 7) & 0xF | (16 * bswap32(*(v6 + 7) >> 4));
    *(v6 + 8) = v7;
    *(v6 + 18) = bswap32(*(v6 + 18)) >> 16;
    *(v6 + 19) = bswap32(*(v6 + 19)) >> 16;
    v8 = *(v6 + 168);
    v9 = vrev32_s8(v8);
    *(v6 + 21) = v9;
    LODWORD(v10) = v9.i32[1];
    v11 = (v6 + 176);
    if ((v9.i32[1] + 1) > 1)
    {
      v12 = (v9.i32[1] + 1);
    }

    else
    {
      v12 = 1;
    }

    v13 = (v6 + 176);
    do
    {
      *v13 = bswap32(*v13);
      ++v13;
      --v12;
    }

    while (v12);
    v14 = &v11[v9.u32[1]];
    v15 = v14 + v9.u32[0] + 4;
    if (v8.i32[0])
    {
      v16 = (v14 + 1);
      do
      {
        v17 = vrev32_s8(*v16);
        *v16 = v17;
        if (v17.i32[0] == 1003)
        {
          v21 = v16[1].u32[0];
          LODWORD(v22) = bswap32(v21);
          v16[1].i32[0] = v22;
          if (v21)
          {
            if (v22 <= 1)
            {
              v22 = 1;
            }

            else
            {
              v22 = v22;
            }

            v23 = (v16 + 28);
            do
            {
              *v23[-2].i8 = vrev32q_s8(*v23[-2].i8);
              *v23 = vrev32_s8(*v23);
              v23 += 3;
              --v22;
            }

            while (v22);
          }
        }

        else if (v17.i32[0] == 1001)
        {
          v18 = v16[1].u32[0];
          LODWORD(v19) = bswap32(v18);
          v16[1].i32[0] = v19;
          if (v18)
          {
            v20 = (&v16[1] + 4);
            if (v19 <= 1)
            {
              v19 = 1;
            }

            else
            {
              v19 = v19;
            }

            do
            {
              *v20 = vrev32q_s8(*v20);
              ++v20;
              --v19;
            }

            while (v19);
          }
        }

        v16 = (v16 + v17.u32[1] + 8);
      }

      while (v16 < v15);
      LODWORD(v10) = *(v6 + 43);
    }

    if (v10)
    {
      v10 = v10;
      do
      {
        v24 = *v11++;
        v25 = v15 + v24;
        *(v25 + 12) = bswap32(*(v25 + 12));
        *(v25 + 4) = vrev32_s8(*(v25 + 4));
        --v10;
      }

      while (v10);
    }
  }

  v26 = [v5 bytes];
  if (v26 && *v26 != 1129599817 && v26[1] <= 1u)
  {
    v27 = [-[CUIStructuredThemeStore store](self "store")];
    _CUILog(4, "CoreUI: [CUIStructuredThemeStore lookupAssetForKey:] got invalid CSIData for AssetCatalog '%@'", v28, v29, v30, v31, v32, v33, v27);
    return 0;
  }

  return v5;
}

- (id)renditionWithKey:(const _renditionkeytoken *)a3 usingKeySignature:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    a4 = [(CUIStructuredThemeStore *)self copyKeySignatureForKey:a3 withBytesNoCopy:v31 length:256];
  }

  os_unfair_lock_lock(&self->_cacheLock);
  v9 = [(NSMutableDictionary *)self->_cache objectForKey:a4];
  os_unfair_lock_unlock(&self->_cacheLock);
  if (!v9)
  {
    v9 = [(CUIStructuredThemeStore *)self lookupAssetForKey:a3];
    if (v9)
    {
      if (CUILogRenditionLogEnabled())
      {
        v10 = CUILogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(CUICommonAssetStorage *)self->_store path];
          *buf = 138543874;
          v26 = v11;
          v27 = 2050;
          v28 = [(CUIThemeRendition *)v9 bytes];
          v29 = 2114;
          v30 = a4;
          _os_log_impl(&dword_18DF47000, v10, OS_LOG_TYPE_INFO, "CoreUI-l %{public}@ %{public}p %{public}@", buf, 0x20u);
        }
      }

      v9 = [[CUIThemeRendition alloc] initWithCSIData:v9 forKey:a3 version:[(CUIStructuredThemeStore *)self distilledInCoreUIVersion]];
      if ([(CUIStructuredThemeStore *)self distilledInCoreUIVersion]<= 0x178 && [(CUIThemeRendition *)v9 pixelFormat]== 1246774599)
      {
        [(CUIThemeRendition *)v9 setOpacity:1.0];
      }

      [(CUIThemeRendition *)v9 _setStructuredThemeStore:self];
      if (!v9)
      {
        v12 = [-[CUIStructuredThemeStore store](self "store")];
        _CUILog(4, "CoreUI: Error calling [CUIThemeRendition initWithCSIData:forKey:] failed catalog '%@'", v13, v14, v15, v16, v17, v18, v12);
      }
    }

    os_unfair_lock_lock(&self->_cacheLock);
    cache = self->_cache;
    if (cache && v9)
    {
      v20 = [(NSMutableDictionary *)cache objectForKey:a4];
      if (v20)
      {
        v21 = v20;
        if (v9 != v20)
        {
          v22 = v9;
          v9 = v21;
        }
      }

      else
      {
        v23 = [[NSString alloc] initWithUTF8String:{objc_msgSend(a4, "UTF8String")}];
        [(NSMutableDictionary *)self->_cache setObject:v9 forKey:v23];
      }
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (BOOL)canGetRenditionWithKey:(const _renditionkeytoken *)a3
{
  v5 = +[CUIRuntimeStatistics sharedRuntimeStatistics];
  [v5 incrementStatisticLookup];
  v6 = [(CUICommonAssetStorage *)self->_store renditionInfoForIdentifier:CUIRenditionKeyValueForAttribute(&a3->identifier, 17)];
  if (v6)
  {
    v7 = v6;
    if (!self->_attributePresent)
    {
      self->_attributePresent = [v6 methodForSelector:sel_attributePresent_withValue_];
    }

    v8 = [(CUIStructuredThemeStore *)self keyAttributeIndex];
    v9 = CUIRenditionKeyTokenCount(a3);
    nkeys = v8->nkeys;
    if (nkeys >= v9 ? v9 : v8->nkeys)
    {
      v12 = v9;
      v13 = 0;
      p_value = &a3->value;
      do
      {
        if ((v8->keymask & (1 << *(p_value - 1))) != 0)
        {
          if (!(self->_attributePresent)(v7, sel_attributePresent_withValue_))
          {
            [v5 incrementStatisticDidShortCircuitImageLookup];
            return 0;
          }

          nkeys = v8->nkeys;
        }

        ++v13;
        if (nkeys >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = nkeys;
        }

        p_value += 2;
      }

      while (v13 < v15);
    }
  }

  v16 = [(CUIStructuredThemeStore *)self copyKeySignatureForKey:a3 withBytesNoCopy:&v20 length:256];
  os_unfair_lock_lock(&self->_cacheLock);
  v17 = [(NSMutableDictionary *)self->_cache objectForKey:v16];
  os_unfair_lock_unlock(&self->_cacheLock);
  if (v17)
  {

    return 1;
  }

  else
  {
    v18 = [(CUIStructuredThemeStore *)self assetExistsForKey:a3];

    if (v5 && !v18)
    {
      [v5 incrementMissedLookup];
      return 0;
    }
  }

  return v18;
}

- (const)renditionKeyForName:(id)a3 cursorHotSpot:(CGPoint *)a4
{
  if (a3)
  {
    if (a4)
    {
      v7 = [a3 mutableCopy];
      [v7 appendString:NSStringFromPoint(*a4)];
    }

    else
    {
      v7 = a3;
    }

    v9 = [(NSCache *)self->_namedRenditionKeyCache objectForKey:v7];
    if (v9)
    {
      if (v9 == kCFNull)
      {
        v8 = 0;
      }

      else
      {
        v8 = [(__CFNull *)v9 bytes];
      }

      goto LABEL_16;
    }

    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a3);
    v11 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0xDF8DEC27uLL);
    if (CFStringGetFileSystemRepresentation(a3, v11, MaximumSizeOfFileSystemRepresentation))
    {
      v8 = [(CUICommonAssetStorage *)self->_store renditionKeyForName:v11 hotSpot:a4];
      free(v11);
      if (v8)
      {
        v12 = [NSData dataWithBytes:v8 length:4 * CUIRenditionKeyTokenCount(v8) + 4];
LABEL_15:
        [(NSCache *)self->_namedRenditionKeyCache setObject:v12 forKey:v7];
LABEL_16:

        return v8;
      }
    }

    else
    {
      free(v11);
    }

    v8 = 0;
    v12 = kCFNull;
    goto LABEL_15;
  }

  return 0;
}

- (id)imagesWithName:(id)a3
{
  v5 = +[NSMutableArray array];
  v6 = CUIRenditionKeyValueForAttribute([(CUIStructuredThemeStore *)self renditionKeyForName:a3], 17);
  store = self->_store;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __42__CUIStructuredThemeStore_imagesWithName___block_invoke;
  v9[3] = &unk_1E7250FB8;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = v5;
  v9[7] = v6;
  [(CUICommonAssetStorage *)store assetKeysMatchingBlock:v9];
  return v5;
}

uint64_t __42__CUIStructuredThemeStore_imagesWithName___block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a1 + 56) == CUIRenditionKeyValueForAttribute(a2, 17))
  {
    v4 = [[CUIRenditionKey alloc] initWithKeyList:a2];
    v5 = [*(a1 + 32) copyLookupKeySignatureForKey:a2];
    v6 = [objc_msgSend(*(a1 + 32) renditionWithKey:a2 usingKeySignature:{v5), "type"}];
    v7 = 0;
    if (v6 > 1001)
    {
      if (v6 <= 1012)
      {
        if (v6 != 1002)
        {
          if (v6 == 1004)
          {
            goto LABEL_4;
          }

          if (v6 == 1010)
          {
            v8 = OBJC_CLASS___CUINamedMultisizeImageSet_ptr;
            goto LABEL_5;
          }

          goto LABEL_7;
        }

        v8 = OBJC_CLASS___CUINamedLayerStack_ptr;
      }

      else if (v6 > 1018)
      {
        if (v6 == 1019)
        {
          v8 = OBJC_CLASS___CUINamedIconLayerStack_ptr;
        }

        else
        {
          if (v6 != 1021)
          {
            goto LABEL_7;
          }

          v8 = OBJC_CLASS___CUINamedGradient_ptr;
        }
      }

      else
      {
        if (v6 != 1013)
        {
          if (v6 == 1018)
          {
            v8 = OBJC_CLASS___CUINamedSolidLayerStack_ptr;
            goto LABEL_5;
          }

          goto LABEL_7;
        }

        v8 = OBJC_CLASS___CUINamedRecognitionGroup_ptr;
      }
    }

    else
    {
      if (v6 < 6)
      {
LABEL_4:
        v8 = OBJC_CLASS___CUINamedImage_ptr;
        goto LABEL_5;
      }

      if (v6 != 1000)
      {
        if (v6 == 1001)
        {
          v8 = OBJC_CLASS___CUINamedExternalLink_ptr;
          goto LABEL_5;
        }

LABEL_7:

        return 0;
      }

      v8 = OBJC_CLASS___CUINamedData_ptr;
    }

LABEL_5:
    v7 = [objc_alloc(*v8) initWithName:*(a1 + 40) usingRenditionKey:v4 fromTheme:*(*(a1 + 32) + 32)];
    if (v7)
    {
      [*(a1 + 48) addObject:v7];
    }

    goto LABEL_7;
  }

  return 0;
}

- (id)catalogGlobals
{
  result = [(CUICommonAssetStorage *)self->_store catalogGlobalData];
  if (result)
  {
    v3 = result;
    result = [result length];
    if (result)
    {
      v6 = 0;
      v4 = objc_opt_class();
      v5 = objc_opt_class();
      result = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v4 fromData:v5 error:objc_opt_class(), 0], v3, &v6];
      if (v6)
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)renditionInfoForIdentifier:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(CUIStructuredThemeStore *)self themeStore];

  return [v4 renditionInfoForIdentifier:v3];
}

- (BOOL)caAllowSubimageOfImage:(CGImage *)a3
{
  Height = CGImageGetHeight(a3);
  if (CGImageGetBytesPerRow(a3) * Height < vm_page_size)
  {
    return 1;
  }

  return [(CUIStructuredThemeStore *)self _subImageTexturingShouldBeSupported];
}

- (BOOL)localizationWorkaroundForKeyList:(const _renditionkeytoken *)a3 withLocale:(id)a4
{
  if (![-[CUIStructuredThemeStore bundleID](self "bundleID")])
  {
    return 0;
  }

  if (!a4)
  {
    a4 = +[NSLocale currentLocale];
  }

  v7 = [a4 languageCode];
  if (([v7 isEqualToString:@"ar"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"hi") & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", @"pa"))
  {
    return 0;
  }

  if (![objc_msgSend(a4 "numberingSystem")])
  {
    return 0;
  }

  if (localizationWorkaroundForKeyList_withLocale____onceToken != -1)
  {
    [CUIStructuredThemeStore localizationWorkaroundForKeyList:withLocale:];
  }

  v8 = [[NSNumber alloc] initWithUnsignedShort:{CUIRenditionKeyValueForAttribute(&a3->identifier, 17)}];
  os_unfair_lock_lock(&self->_cacheLock);
  v9 = [(NSCache *)self->_nameCache objectForKey:v8];
  if (!v9)
  {
    v9 = [(CUICommonAssetStorage *)self->_store renditionNameForKeyBaseList:a3];
    nameCache = self->_nameCache;
    if (!nameCache)
    {
      nameCache = objc_alloc_init(NSCache);
      self->_nameCache = nameCache;
    }

    [(NSCache *)nameCache setObject:v9 forKey:v8];
  }

  os_unfair_lock_unlock(&self->_cacheLock);

  return ([localizationWorkaroundForKeyList_withLocale____symbolsWithDigits containsObject:v9] & 1) != 0;
}

id __71__CUIStructuredThemeStore_localizationWorkaroundForKeyList_withLocale___block_invoke()
{
  result = [[NSSet alloc] initWithArray:&unk_1F00F7E70];
  localizationWorkaroundForKeyList_withLocale____symbolsWithDigits = result;
  return result;
}

- (id)aliasForName:(id)a3
{
  v5 = [(CUIStructuredThemeStore *)self bundleID];
  if (!self->_aliasDictionary)
  {
    v6 = v5;
    if ([v5 hasPrefix:@"com.apple.CoreGlyphs"])
    {
      v7 = [NSBundle bundleWithIdentifier:v6];
      if (v7)
      {
        self->_aliasDictionary = [[NSDictionary alloc] initWithContentsOfURL:-[NSBundle URLForResource:withExtension:](v7 error:{"URLForResource:withExtension:", @"name_aliases", @"strings", 0}];
      }
    }
  }

  aliasDictionary = self->_aliasDictionary;

  return [(NSDictionary *)aliasDictionary objectForKey:a3];
}

- (id)mappedAliases
{
  [(CUIStructuredThemeStore *)self aliasForName:&stru_1F00D74D0];
  result = self->_aliasDictionary;
  if (result)
  {

    return [result allKeys];
  }

  return result;
}

- (BOOL)imageNamedShouldFlip:(id)a3
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  v6 = [(CUIStructuredThemeStore *)self bundleID];
  if (!self->_legacyFlippableSet)
  {
    v7 = v6;
    if ([v6 hasPrefix:@"com.apple.CoreGlyphs"])
    {
      v8 = [NSBundle bundleWithIdentifier:v7];
      if (v8)
      {
        v9 = [[NSArray alloc] initWithContentsOfURL:-[NSBundle URLForResource:withExtension:](v8 error:{"URLForResource:withExtension:", @"legacy_flippable", @"plist", 0}];
        if (v9)
        {
          self->_legacyFlippableSet = [[NSSet alloc] initWithArray:v9];
        }
      }
    }
  }

  legacyFlippableSet = self->_legacyFlippableSet;

  return [(NSSet *)legacyFlippableSet containsObject:a3];
}

- (void)setBundleID:(id)a3
{
  if (self->_bundleID != a3)
  {
    self->_bundleID = [a3 copy];
  }
}

@end