@interface CUIMutableCommonAssetStorage
- (BOOL)_removedUnusedNames;
- (BOOL)_saveBitmapInfo;
- (BOOL)_writeOutKeyFormatWithWorkaround;
- (BOOL)removeAssetName:(id)a3;
- (BOOL)removeAssetNameKey:(const void *)a3 withLength:(unint64_t)a4;
- (BOOL)setAsset:(id)a3 forKey:(const void *)a4 withLength:(unint64_t)a5;
- (BOOL)setAsset:(id)a3 forKey:(id)a4;
- (BOOL)updateBitmapInfo;
- (BOOL)writeToDiskAndCompact:(BOOL)a3;
- (CUIMutableCommonAssetStorage)initWithPath:(id)a3;
- (void)_allocateExtendedMetadata;
- (void)dealloc;
- (void)removeAssetForKey:(const void *)a3 withLength:(unint64_t)a4;
- (void)removeAssetForKey:(id)a3;
- (void)setAppearanceIdentifier:(unsigned __int16)a3 forName:(id)a4;
- (void)setAssociatedChecksum:(unsigned int)a3;
- (void)setAuthoringTool:(id)a3;
- (void)setCatalogGlobalData:(id)a3;
- (void)setColor:(_rgbquad)a3 forName:(const char *)a4 excludeFromFilter:(BOOL)a5;
- (void)setColorSpaceID:(unsigned int)a3;
- (void)setDeploymentPlatform:(id)a3;
- (void)setDeploymentPlatformVersion:(id)a3;
- (void)setEnableLargeCarKeyWorkaround:(BOOL)a3;
- (void)setExternalTags:(id)a3;
- (void)setFontName:(id)a3 baselineOffset:(float)a4 forFontSelector:(id)a5;
- (void)setFontSize:(float)a3 forFontSizeSelector:(id)a4;
- (void)setKeyFormatData:(id)a3;
- (void)setKeySemantics:(int)a3;
- (void)setLocalizationIdentifier:(unsigned __int16)a3 forName:(id)a4;
- (void)setRenditionCount:(unsigned int)a3;
- (void)setRenditionKey:(const _renditionkeytoken *)a3 hotSpot:(CGPoint)a4 forName:(const char *)a5;
- (void)setSchemaVersion:(unsigned int)a3;
- (void)setStorageVersion:(unsigned int)a3;
- (void)setThinningArguments:(id)a3;
- (void)setUuid:(id)a3;
- (void)setVersionString:(const char *)a3;
@end

@implementation CUIMutableCommonAssetStorage

- (void)_allocateExtendedMetadata
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  if (![(CUICommonAssetStorage *)self extendedMetadata])
  {
    [(CUICommonAssetStorage *)self setExtendedMetadata:malloc_type_calloc(1uLL, 0x404uLL, 0x100004084B5CCE0uLL)];
    *[(CUICommonAssetStorage *)self extendedMetadata]= 1096041805;
  }
}

- (BOOL)_saveBitmapInfo
{
  if (!self->_bitmapInfo || (*(self + 552) & 1) == 0)
  {
    return 1;
  }

  if ([(CUICommonAssetStorage *)self bitmapKeydb])
  {
    BOMTreeRemoveAndFree([(CUICommonAssetStorage *)self bitmapKeydb]);
    [(CUICommonAssetStorage *)self setBitmapKeydb:0];
  }

  if (![(CUICommonAssetStorage *)self bitmapKeydb])
  {
    v4 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setBitmapKeydb:BOMTreeNewWithOptions(v4, 0, "BITMAPKEYS", 1024, 1)];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  bitmapInfo = self->_bitmapInfo;
  v6 = [(NSMutableDictionary *)bitmapInfo countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
LABEL_10:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(bitmapInfo);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      v11 = [v10 integerValue];
      v12 = [(NSMutableDictionary *)self->_bitmapInfo objectForKey:v10];
      if ([v12 numberOfBitsSet])
      {
        v13 = [v12 archivedData];
        v14 = [(CUICommonAssetStorage *)self bitmapKeydb];
        v15 = [v13 bytes];
        v16 = [v13 length];
        if (BOMTreeSetValue(v14, v11, 2uLL, v15, v16, v17, v18, v19))
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)bitmapInfo countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (!BOMTreeCommit([(CUICommonAssetStorage *)self bitmapKeydb]))
    {
      return 1;
    }
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMutableCommonAssetStorage;
  [(CUICommonAssetStorage *)&v3 dealloc];
}

- (CUIMutableCommonAssetStorage)initWithPath:(id)a3
{
  v32.receiver = self;
  v32.super_class = CUIMutableCommonAssetStorage;
  v4 = [(CUIMutableCommonAssetStorage *)&v32 init];
  if (v4)
  {
    v5 = BOMStorageNewWithOptionsAndSys([a3 fileSystemRepresentation], 0, 0);
    if (v5)
    {
      v6 = v5;
      *(v4 + 552) |= 1u;
      stpncpy(__dst, "@(#)PROGRAM:CoreUI  PROJECT:CoreUI-971.6\n", 0x80uLL);
      v7 = strnlen(__dst, 0x80uLL);
      if (__dst[v7 - 1] == 10)
      {
        __dst[v7 - 1] = 0;
      }

      [(CUICommonAssetStorage *)v4 _initDefaultHeaderVersion:__dst versionString:971.6];
      v8 = BOMStorageNewNamedBlock(v6, "CARHEADER");
      if (v8)
      {
        v9 = v8;
        v10 = [(CUICommonAssetStorage *)v4 header];
        BOMStorageCopyToBlock(v6, v9, v10, 0x1B4uLL, v11, v12, v13, v14);
      }

      v15 = BOMTreeNewWithName(v6, "RENDITIONS");
      if (v15)
      {
        [(CUICommonAssetStorage *)v4 setImagedb:v15];
        [(CUICommonAssetStorage *)v4 setFacetKeysdb:BOMTreeNewWithName(v6, "FACETKEYS")];
        return v4;
      }

      _CUILog(4, "CoreUI: Error: unable to create image store in %@", v16, v17, v18, v19, v20, v21, a3);
      BOMStorageFree(v6);
      v31.receiver = v4;
      v31.super_class = CUIMutableCommonAssetStorage;
      [(CUIMutableCommonAssetStorage *)&v31 release];
    }

    else
    {
      v22 = __error();
      strerror(*v22);
      _CUILog(4, "CoreUI: Error: unable to create storage file %@ error '%s'", v23, v24, v25, v26, v27, v28, a3);
      v30.receiver = v4;
      v30.super_class = CUIMutableCommonAssetStorage;
      [(CUIMutableCommonAssetStorage *)&v30 release];
    }

    return 0;
  }

  return v4;
}

- (void)setKeyFormatData:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = [(CUICommonAssetStorage *)self keyfmt];
  if (v5)
  {
    free(v5);
  }

  -[CUICommonAssetStorage setKeyfmt:](self, "setKeyfmt:", malloc_type_malloc([a3 length], 0x10000403E1C8BA9uLL));
  [a3 getBytes:-[CUICommonAssetStorage keyfmt](self length:{"keyfmt"), objc_msgSend(a3, "length")}];
  v6 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
  if (!BOMStorageGetNamedBlock(v6, "KEYFORMAT"))
  {
    v7 = BOMStorageNewNamedBlock(v6, "KEYFORMAT");
    v8 = [(CUICommonAssetStorage *)self keyfmt];
    v9 = [(CUICommonAssetStorage *)self keyfmt];
    BOMStorageCopyToBlock(v6, v7, v8, 4 * (v9->var2 + 3), v10, v11, v12, v13);
  }

  v14 = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(v14);
}

- (void)setKeySemantics:(int)a3
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 108) = a3;
  }
}

- (void)setStorageVersion:(unsigned int)a3
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 2) = a3;
  }
}

- (void)setVersionString:(const char *)a3
{
  v5 = [(CUICommonAssetStorage *)self header];
  if (a3 && v5)
  {
    v6 = [(CUICommonAssetStorage *)self header]+ 148;

    strncpy(v6, a3, 0xFFuLL);
  }
}

- (void)setSchemaVersion:(unsigned int)a3
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 106) = a3;
  }
}

- (void)setRenditionCount:(unsigned int)a3
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 4) = a3;
  }
}

- (void)setUuid:(id)a3
{
  if ([(CUICommonAssetStorage *)self header])
  {
    v5 = [(CUICommonAssetStorage *)self header]+ 404;

    [a3 getUUIDBytes:v5];
  }
}

- (void)setAssociatedChecksum:(unsigned int)a3
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 105) = a3;
  }
}

- (void)setColorSpaceID:(unsigned int)a3
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 107) = a3;
  }
}

- (void)setEnableLargeCarKeyWorkaround:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 552) = *(self + 552) & 0xFD | v3;
}

- (void)setThinningArguments:(id)a3
{
  [(CUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([a3 length])
  {
    v5 = [(CUICommonAssetStorage *)self extendedMetadata];
    v6 = [a3 UTF8String];

    strncpy(v5->var1, v6, 0xFFuLL);
  }
}

- (void)setDeploymentPlatform:(id)a3
{
  [(CUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([a3 length])
  {
    v5 = [(CUICommonAssetStorage *)self extendedMetadata];
    v6 = [a3 UTF8String];

    strncpy(v5->var3, v6, 0xFFuLL);
  }
}

- (void)setDeploymentPlatformVersion:(id)a3
{
  [(CUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([a3 length])
  {
    v5 = [(CUICommonAssetStorage *)self extendedMetadata];
    v6 = [a3 UTF8String];

    strncpy(v5->var2, v6, 0xFFuLL);
  }
}

- (void)setAuthoringTool:(id)a3
{
  [(CUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([a3 length])
  {
    v5 = [(CUICommonAssetStorage *)self extendedMetadata];
    v6 = [a3 UTF8String];

    strncpy(v5->var4, v6, 0xFFuLL);
  }
}

- (BOOL)setAsset:(id)a3 forKey:(id)a4
{
  v7 = [a4 bytes];
  v8 = [a4 length];

  return [(CUIMutableCommonAssetStorage *)self setAsset:a3 forKey:v7 withLength:v8];
}

- (BOOL)setAsset:(id)a3 forKey:(const void *)a4 withLength:(unint64_t)a5
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v9 = [(CUICommonAssetStorage *)self imagedb];
  v10 = [a3 bytes];
  v11 = [a3 length];
  v15 = BOMTreeSetValue(v9, a4, a5, v10, v11, v12, v13, v14);
  v22 = v15;
  if (self->_bitmapInfo)
  {
    if (v15)
    {
LABEL_3:
      _CUILog(4, "CoreUI: Error: unable to add asset to store", v16, v17, v18, v19, v20, v21, v33);
      return v22 == 0;
    }
  }

  else
  {
    self->_bitmapInfo = objc_alloc_init(NSMutableDictionary);
    if (v22)
    {
      goto LABEL_3;
    }
  }

  v23 = [(CUICommonAssetStorage *)self keyFormat];
  var2 = v23->var2;
  if (var2)
  {
    v25 = v23;
    var3 = v23->var3;
    v27 = v23->var3;
    v28 = a4;
    while (1)
    {
      v29 = *v27++;
      if (v29 == 17)
      {
        break;
      }

      ++v28;
      if (!--var2)
      {
        goto LABEL_13;
      }
    }

    v30 = *v28;
    if (*v28)
    {
      v31 = 0;
      do
      {
        [(CUICommonAssetStorage *)self _addBitmapIndexForNameIdentifier:v30 attribute:var3[v31] withValue:*(a4 + v31) toDictionary:self->_bitmapInfo];
        ++v31;
      }

      while (v31 < v25->var2);
    }
  }

LABEL_13:
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v22 == 0;
}

- (void)setCatalogGlobalData:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  [(CUICommonAssetStorage *)self setGlobals:a3];
  v5 = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(v5);
}

- (void)setAppearanceIdentifier:(unsigned __int16)a3 forName:(id)a4
{
  v20 = a3;
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a4);
  v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0xB4D43204uLL);
  CFStringGetFileSystemRepresentation(a4, v7, MaximumSizeOfFileSystemRepresentation);
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (![(CUICommonAssetStorage *)self appearancedb])
  {
    v8 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setAppearancedb:BOMTreeNewWithName(v8, "APPEARANCEKEYS")];
  }

  v9 = [(CUICommonAssetStorage *)self appearancedb];
  v10 = strlen(v7);
  if (BOMTreeSetValue(v9, v7, v10, &v20, 2uLL, v11, v12, v13))
  {
    _CUILog(4, "CoreUI: Error: unable to add look identifier '%@' with value '%d' to store", v14, v15, v16, v17, v18, v19, a4);
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  free(v7);
}

- (void)setLocalizationIdentifier:(unsigned __int16)a3 forName:(id)a4
{
  v20 = a3;
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a4);
  v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x42ED2B6EuLL);
  CFStringGetFileSystemRepresentation(a4, v7, MaximumSizeOfFileSystemRepresentation);
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (![(CUICommonAssetStorage *)self localizationdb])
  {
    v8 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setLocalizationdb:BOMTreeNewWithName(v8, "LOCALIZATIONKEYS")];
  }

  v9 = [(CUICommonAssetStorage *)self localizationdb];
  v10 = strlen(v7);
  if (BOMTreeSetValue(v9, v7, v10, &v20, 2uLL, v11, v12, v13))
  {
    _CUILog(4, "CoreUI: Error: unable to add localization identifier '%@' with value '%d' to store", v14, v15, v16, v17, v18, v19, a4);
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  free(v7);
}

- (BOOL)updateBitmapInfo
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);

  v3 = objc_alloc_init(NSMutableDictionary);
  self->_bitmapInfo = v3;
  v4 = [(CUICommonAssetStorage *)self _buildBitmapInfoIntoDictionary:v3];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v4;
}

- (void)setColor:(_rgbquad)a3 forName:(const char *)a4 excludeFromFilter:(BOOL)a5
{
  v5 = a5;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (![(CUICommonAssetStorage *)self colordb])
  {
    v9 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setColordb:BOMTreeNewWithName(v9, "COLORS")];
  }

  if (a4 && [(CUICommonAssetStorage *)self colordb])
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    __strlcpy_chk();
    HIDWORD(v20) = 1;
    v21 = v5;
    v22 = a3;
    v10 = [(CUICommonAssetStorage *)self colordb];
    if (BOMTreeSetValue(v10, v23, 0x84uLL, &v20 + 4, 0xCuLL, v11, v12, v13))
    {
      _CUILog(4, "CoreUI: Error: unable to add color to store", v14, v15, v16, v17, v18, v19, v20);
    }

    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }
}

- (void)setFontName:(id)a3 baselineOffset:(float)a4 forFontSelector:(id)a5
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if ([(CUICommonAssetStorage *)self fontdb])
  {
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setFontdb:BOMTreeNewWithName(v9, "FONTS")];
    if (!a5)
    {
LABEL_11:
      v20 = [(CUICommonAssetStorage *)self lock];

      os_unfair_lock_unlock(v20);
      return;
    }
  }

  if (![(CUICommonAssetStorage *)self fontdb])
  {
    goto LABEL_11;
  }

  memset(v23, 0, sizeof(v23));
  if ([a5 getBytes:v23 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(a5, "length"), 0}])
  {
    v22 = 0.0;
    memset(v21, 0, sizeof(v21));
    [a3 length];
    if ([a3 getBytes:v21 maxLength:128 usedLength:0 encoding:1 options:0 range:? remainingRange:?])
    {
      v22 = a4;
      v10 = [(CUICommonAssetStorage *)self fontdb];
      if (BOMTreeSetValue(v10, v23, 0x80uLL, v21, 0x84uLL, v11, v12, v13))
      {
        _CUILog(4, "CoreUI: Error: unable to add font to store", v14, v15, v16, v17, v18, v19, 0);
      }
    }
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
}

- (void)setFontSize:(float)a3 forFontSizeSelector:(id)a4
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if ([(CUICommonAssetStorage *)self fontsizedb])
  {
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setFontsizedb:BOMTreeNewWithName(v7, "FONTSIZES")];
    if (!a4)
    {
LABEL_10:
      v18 = [(CUICommonAssetStorage *)self lock];

      os_unfair_lock_unlock(v18);
      return;
    }
  }

  if (![(CUICommonAssetStorage *)self fontsizedb])
  {
    goto LABEL_10;
  }

  memset(v20, 0, sizeof(v20));
  [a4 length];
  if ([a4 getBytes:v20 maxLength:128 usedLength:0 encoding:1 options:0 range:? remainingRange:?])
  {
    v19 = a3;
    v8 = [(CUICommonAssetStorage *)self fontsizedb];
    if (BOMTreeSetValue(v8, v20, 0x80uLL, &v19, 4uLL, v9, v10, v11))
    {
      _CUILog(4, "CoreUI: Error: unable to add font size to store", v12, v13, v14, v15, v16, v17, 0);
    }
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
}

- (void)setExternalTags:(id)a3
{
  v26.receiver = self;
  v26.super_class = CUIMutableCommonAssetStorage;
  v27 = 0;
  [(CUICommonAssetStorage *)&v26 setExternalTags:a3];
  v4 = objc_alloc_init(NSMutableData);
  v28 = 1163414603;
  v29 = [-[CUICommonAssetStorage externalTags](self "externalTags")];
  [v4 appendBytes:&v28 length:12];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(CUICommonAssetStorage *)self externalTags];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v10);
        v12 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x49BD4B70uLL);
        CFStringGetFileSystemRepresentation(v10, v12, MaximumSizeOfFileSystemRepresentation);
        LODWORD(v27) = 1008;
        HIDWORD(v27) = strnlen(v12, MaximumSizeOfFileSystemRepresentation) + 1;
        [v4 appendBytes:&v27 length:8];
        [v4 appendBytes:v12 length:HIDWORD(v27)];
        free(v12);
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  v13 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
  NamedBlock = BOMStorageGetNamedBlock(v13, "EXTERNAL_KEYS");
  if (NamedBlock || (NamedBlock = BOMStorageNewNamedBlock(v13, "EXTERNAL_KEYS"), NamedBlock))
  {
    v15 = NamedBlock;
    v16 = [v4 bytes];
    v17 = [v4 length];
    BOMStorageCopyToBlock(v13, v15, v16, v17, v18, v19, v20, v21);
  }
}

- (void)removeAssetForKey:(id)a3
{
  v5 = [a3 bytes];
  v6 = [a3 length];

  [(CUIMutableCommonAssetStorage *)self removeAssetForKey:v5 withLength:v6];
}

- (void)removeAssetForKey:(const void *)a3 withLength:(unint64_t)a4
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v7 = [(CUICommonAssetStorage *)self imagedb];
  if (BOMTreeGetValue(v7, a3, a4, v8, v9, v10, v11, v12))
  {
    v13 = [(CUICommonAssetStorage *)self imagedb];
    if (BOMTreeRemoveValue(v13, a3, a4, v14, v15, v16))
    {
      _CUILog(4, "CoreUI: Error: unable to remove asset from store", v17, v18, v19, v20, v21, v22, v24);
    }
  }

  v23 = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(v23);
}

- (BOOL)removeAssetName:(id)a3
{
  v5 = [a3 UTF8String];
  v6 = [a3 length];

  return [(CUIMutableCommonAssetStorage *)self removeAssetNameKey:v5 withLength:v6];
}

- (BOOL)removeAssetNameKey:(const void *)a3 withLength:(unint64_t)a4
{
  if (a3)
  {
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    v7 = [(CUICommonAssetStorage *)self facetKeysdb];
    if (BOMTreeGetValue(v7, a3, a4, v8, v9, v10, v11, v12))
    {
      v13 = [(CUICommonAssetStorage *)self facetKeysdb];
      if (!BOMTreeRemoveValue(v13, a3, a4, v14, v15, v16))
      {
        v23 = 1;
        goto LABEL_8;
      }

      _CUILog(4, "CoreUI: Error: unable to remove rendition key from store", v17, v18, v19, v20, v21, v22, v25);
    }

    v23 = 0;
LABEL_8:
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
    return v23;
  }

  return 0;
}

- (void)setRenditionKey:(const _renditionkeytoken *)a3 hotSpot:(CGPoint)a4 forName:(const char *)a5
{
  y = a4.y;
  x = a4.x;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (!a5)
  {
    [CUIMutableCommonAssetStorage setRenditionKey:a2 hotSpot:self forName:?];
  }

  v11 = CUIRenditionKeyTokenCount(a3);
  if (!v11)
  {
    [CUIMutableCommonAssetStorage setRenditionKey:a2 hotSpot:self forName:?];
  }

  v29 = v11;
  v28 = x;
  v27 = y;
  v12 = [[NSMutableData alloc] initWithCapacity:4 * v11 + 6];
  [v12 appendBytes:&v28 length:2];
  [v12 appendBytes:&v27 length:2];
  [v12 appendBytes:&v29 length:2];
  [v12 appendBytes:a3 length:4 * v29];
  v13 = [(CUICommonAssetStorage *)self facetKeysdb];
  v14 = strlen(a5);
  v15 = [v12 bytes];
  v16 = [v12 length];
  if (BOMTreeSetValue(v13, a5, v14, v15, v16, v17, v18, v19))
  {
    _CUILog(4, "CoreUI: Error: unable to add renditionkey to store", v20, v21, v22, v23, v24, v25, v26);
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
}

- (BOOL)_removedUnusedNames
{
  if (self->_bitmapInfo && (*(self + 552) & 1) != 0)
  {
    v31[0] = 0;
    v31[1] = 0;
    v3 = [(CUICommonAssetStorage *)self _allRenditionNames];
    v4 = [[NSMutableSet alloc] initWithArray:v3];
    if ([v3 count])
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v28;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v28 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v9 = *(*(&v27 + 1) + 8 * i);
            v10 = -[CUICommonAssetStorage _renditionKeyForName:hotSpot:](self, "_renditionKeyForName:hotSpot:", [v9 UTF8String], v31);
            if (v10 && [(NSMutableDictionary *)self->_bitmapInfo objectForKey:[NSNumber numberWithInteger:CUIRenditionKeyValueForAttribute(&v10->identifier, 17)]])
            {
              [v4 removeObject:v9];
            }
          }

          v6 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v6);
      }

      if ([v4 count])
      {
        v11 = [v4 count];
        if (v11 != [v3 count])
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v12 = [v4 countByEnumeratingWithState:&v23 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v4);
                }

                v16 = [*(*(&v23 + 1) + 8 * j) UTF8String];
                v17 = strlen(v16);
                v18 = [(CUICommonAssetStorage *)self facetKeysdb];
                BOMTreeRemoveValue(v18, v16, v17, v19, v20, v21);
              }

              v13 = [v4 countByEnumeratingWithState:&v23 objects:v32 count:16];
            }

            while (v13);
          }

          BOMTreeCommit([(CUICommonAssetStorage *)self facetKeysdb]);
        }
      }
    }
  }

  return 1;
}

- (BOOL)_writeOutKeyFormatWithWorkaround
{
  v3 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
  if (!*([(CUICommonAssetStorage *)self keyfmt]+ 2))
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (*([(CUICommonAssetStorage *)self keyfmt]+ v4 + 3) >= 0x18u)
    {
      if (!v5)
      {
        v5 = malloc_type_calloc(*([(CUICommonAssetStorage *)self keyfmt]+ 2), 4uLL, 0x100004052888210uLL);
      }

      v5[v4] = *([(CUICommonAssetStorage *)self keyfmt]+ v4 + 3);
    }

    ++v4;
  }

  while (v4 < *([(CUICommonAssetStorage *)self keyfmt]+ 2));
  if (!v5)
  {
    return 0;
  }

  NamedBlock = BOMStorageGetNamedBlock(v3, "KEYFORMAT");
  v7 = BOMStorageGetNamedBlock(v3, "KEYFORMATWORKAROUND");
  if (!v7)
  {
    v7 = BOMStorageNewNamedBlock(v3, "KEYFORMATWORKAROUND");
  }

  v8 = malloc_type_malloc(4 * *([(CUICommonAssetStorage *)self keyfmt]+ 2) + 12, 0x10000403E1C8BA9uLL);
  memcpy(v8, [(CUICommonAssetStorage *)self keyfmt], 4 * (*([(CUICommonAssetStorage *)self keyfmt]+ 2) + 3));
  if (*([(CUICommonAssetStorage *)self keyfmt]+ 2))
  {
    v13 = 0;
    do
    {
      if (v5[v13])
      {
        v8[v13 + 3] = 5;
      }

      ++v13;
    }

    while (v13 < *([(CUICommonAssetStorage *)self keyfmt]+ 2));
  }

  BOMStorageCopyToBlock(v3, NamedBlock, v8, 4 * (v8[2] + 3), v9, v10, v11, v12);
  BOMStorageCopyToBlock(v3, v7, v5, 4 * v8[2], v14, v15, v16, v17);
  free(v8);
  free(v5);
  return 1;
}

- (BOOL)writeToDiskAndCompact:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
  NamedBlock = BOMStorageGetNamedBlock(v5, "CARHEADER");
  v7 = [(CUICommonAssetStorage *)self header];
  BOMStorageCopyToBlock(v5, NamedBlock, v7, 0x1B4uLL, v8, v9, v10, v11);
  if ([(CUICommonAssetStorage *)self extendedMetadata])
  {
    v12 = BOMStorageGetNamedBlock(v5, "EXTENDED_METADATA");
    if (!v12)
    {
      v12 = BOMStorageNewNamedBlock(v5, "EXTENDED_METADATA");
    }

    v13 = [(CUICommonAssetStorage *)self extendedMetadata];
    BOMStorageCopyToBlock(v5, v12, v13, 0x404uLL, v14, v15, v16, v17);
  }

  if ([(NSData *)[(CUICommonAssetStorage *)self globals] length])
  {
    v18 = BOMStorageGetNamedBlock(v5, "CARGLOBALS");
    if (!v18)
    {
      v18 = BOMStorageNewNamedBlock(v5, "CARGLOBALS");
    }

    v19 = [(NSData *)[(CUICommonAssetStorage *)self globals] bytes];
    v20 = [(NSData *)[(CUICommonAssetStorage *)self globals] length];
    BOMStorageCopyToBlock(v5, v18, v19, v20, v21, v22, v23, v24);
  }

  if ((*(self + 552) & 2) != 0)
  {
    [(CUIMutableCommonAssetStorage *)self _writeOutKeyFormatWithWorkaround];
  }

  v25 = !BOMTreeCommit([(CUICommonAssetStorage *)self imagedb]) && (![(CUICommonAssetStorage *)self colordb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self colordb])) && (![(CUICommonAssetStorage *)self fontdb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self fontdb])) && (![(CUICommonAssetStorage *)self fontsizedb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self fontsizedb])) && (![(CUICommonAssetStorage *)self facetKeysdb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self facetKeysdb])) && (![(CUICommonAssetStorage *)self appearancedb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self appearancedb])) && (![(CUICommonAssetStorage *)self localizationdb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self localizationdb])) && (!self->_bitmapInfo || [(CUIMutableCommonAssetStorage *)self _saveBitmapInfo]&& [(CUIMutableCommonAssetStorage *)self _removedUnusedNames]) && (!v3 || !BOMStorageCompact(v5)) && BOMStorageCommit(v5) == 0;
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v25;
}

- (id)setRenditionKey:(uint64_t)a1 hotSpot:(uint64_t)a2 forName:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"CUICommonAssetStorage.m" lineNumber:2757 description:@"Can't use NULL facetName"];
}

- (id)setRenditionKey:(uint64_t)a1 hotSpot:(uint64_t)a2 forName:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"CUICommonAssetStorage.m" lineNumber:2761 description:@"Bad Rendition Key List"];
}

@end