@interface CUIMutableCommonAssetStorage
- (BOOL)_removedUnusedNames;
- (BOOL)_saveBitmapInfo;
- (BOOL)_writeOutKeyFormatWithWorkaround;
- (BOOL)removeAssetName:(id)name;
- (BOOL)removeAssetNameKey:(const void *)key withLength:(unint64_t)length;
- (BOOL)setAsset:(id)asset forKey:(const void *)key withLength:(unint64_t)length;
- (BOOL)setAsset:(id)asset forKey:(id)key;
- (BOOL)updateBitmapInfo;
- (BOOL)writeToDiskAndCompact:(BOOL)compact;
- (CUIMutableCommonAssetStorage)initWithPath:(id)path;
- (void)_allocateExtendedMetadata;
- (void)dealloc;
- (void)removeAssetForKey:(const void *)key withLength:(unint64_t)length;
- (void)removeAssetForKey:(id)key;
- (void)setAppearanceIdentifier:(unsigned __int16)identifier forName:(id)name;
- (void)setAssociatedChecksum:(unsigned int)checksum;
- (void)setAuthoringTool:(id)tool;
- (void)setCatalogGlobalData:(id)data;
- (void)setColor:(_rgbquad)color forName:(const char *)name excludeFromFilter:(BOOL)filter;
- (void)setColorSpaceID:(unsigned int)d;
- (void)setDeploymentPlatform:(id)platform;
- (void)setDeploymentPlatformVersion:(id)version;
- (void)setEnableLargeCarKeyWorkaround:(BOOL)workaround;
- (void)setExternalTags:(id)tags;
- (void)setFontName:(id)name baselineOffset:(float)offset forFontSelector:(id)selector;
- (void)setFontSize:(float)size forFontSizeSelector:(id)selector;
- (void)setKeyFormatData:(id)data;
- (void)setKeySemantics:(int)semantics;
- (void)setLocalizationIdentifier:(unsigned __int16)identifier forName:(id)name;
- (void)setRenditionCount:(unsigned int)count;
- (void)setRenditionKey:(const _renditionkeytoken *)key hotSpot:(CGPoint)spot forName:(const char *)name;
- (void)setSchemaVersion:(unsigned int)version;
- (void)setStorageVersion:(unsigned int)version;
- (void)setThinningArguments:(id)arguments;
- (void)setUuid:(id)uuid;
- (void)setVersionString:(const char *)string;
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
      integerValue = [v10 integerValue];
      v12 = [(NSMutableDictionary *)self->_bitmapInfo objectForKey:v10];
      if ([v12 numberOfBitsSet])
      {
        archivedData = [v12 archivedData];
        bitmapKeydb = [(CUICommonAssetStorage *)self bitmapKeydb];
        bytes = [archivedData bytes];
        v16 = [archivedData length];
        if (BOMTreeSetValue(bitmapKeydb, integerValue, 2uLL, bytes, v16, v17, v18, v19))
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

- (CUIMutableCommonAssetStorage)initWithPath:(id)path
{
  v32.receiver = self;
  v32.super_class = CUIMutableCommonAssetStorage;
  v4 = [(CUIMutableCommonAssetStorage *)&v32 init];
  if (v4)
  {
    v5 = BOMStorageNewWithOptionsAndSys([path fileSystemRepresentation], 0, 0);
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
        header = [(CUICommonAssetStorage *)v4 header];
        BOMStorageCopyToBlock(v6, v9, header, 0x1B4uLL, v11, v12, v13, v14);
      }

      v15 = BOMTreeNewWithName(v6, "RENDITIONS");
      if (v15)
      {
        [(CUICommonAssetStorage *)v4 setImagedb:v15];
        [(CUICommonAssetStorage *)v4 setFacetKeysdb:BOMTreeNewWithName(v6, "FACETKEYS")];
        return v4;
      }

      _CUILog(4, "CoreUI: Error: unable to create image store in %@", v16, v17, v18, v19, v20, v21, path);
      BOMStorageFree(v6);
      v31.receiver = v4;
      v31.super_class = CUIMutableCommonAssetStorage;
      [(CUIMutableCommonAssetStorage *)&v31 release];
    }

    else
    {
      v22 = __error();
      strerror(*v22);
      _CUILog(4, "CoreUI: Error: unable to create storage file %@ error '%s'", v23, v24, v25, v26, v27, v28, path);
      v30.receiver = v4;
      v30.super_class = CUIMutableCommonAssetStorage;
      [(CUIMutableCommonAssetStorage *)&v30 release];
    }

    return 0;
  }

  return v4;
}

- (void)setKeyFormatData:(id)data
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  keyfmt = [(CUICommonAssetStorage *)self keyfmt];
  if (keyfmt)
  {
    free(keyfmt);
  }

  -[CUICommonAssetStorage setKeyfmt:](self, "setKeyfmt:", malloc_type_malloc([data length], 0x10000403E1C8BA9uLL));
  [data getBytes:-[CUICommonAssetStorage keyfmt](self length:{"keyfmt"), objc_msgSend(data, "length")}];
  v6 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
  if (!BOMStorageGetNamedBlock(v6, "KEYFORMAT"))
  {
    v7 = BOMStorageNewNamedBlock(v6, "KEYFORMAT");
    keyfmt2 = [(CUICommonAssetStorage *)self keyfmt];
    keyfmt3 = [(CUICommonAssetStorage *)self keyfmt];
    BOMStorageCopyToBlock(v6, v7, keyfmt2, 4 * (keyfmt3->var2 + 3), v10, v11, v12, v13);
  }

  lock = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (void)setKeySemantics:(int)semantics
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 108) = semantics;
  }
}

- (void)setStorageVersion:(unsigned int)version
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 2) = version;
  }
}

- (void)setVersionString:(const char *)string
{
  header = [(CUICommonAssetStorage *)self header];
  if (string && header)
  {
    v6 = [(CUICommonAssetStorage *)self header]+ 148;

    strncpy(v6, string, 0xFFuLL);
  }
}

- (void)setSchemaVersion:(unsigned int)version
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 106) = version;
  }
}

- (void)setRenditionCount:(unsigned int)count
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 4) = count;
  }
}

- (void)setUuid:(id)uuid
{
  if ([(CUICommonAssetStorage *)self header])
  {
    v5 = [(CUICommonAssetStorage *)self header]+ 404;

    [uuid getUUIDBytes:v5];
  }
}

- (void)setAssociatedChecksum:(unsigned int)checksum
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 105) = checksum;
  }
}

- (void)setColorSpaceID:(unsigned int)d
{
  if ([(CUICommonAssetStorage *)self header])
  {
    *([(CUICommonAssetStorage *)self header]+ 107) = d;
  }
}

- (void)setEnableLargeCarKeyWorkaround:(BOOL)workaround
{
  if (workaround)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 552) = *(self + 552) & 0xFD | v3;
}

- (void)setThinningArguments:(id)arguments
{
  [(CUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([arguments length])
  {
    extendedMetadata = [(CUICommonAssetStorage *)self extendedMetadata];
    uTF8String = [arguments UTF8String];

    strncpy(extendedMetadata->var1, uTF8String, 0xFFuLL);
  }
}

- (void)setDeploymentPlatform:(id)platform
{
  [(CUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([platform length])
  {
    extendedMetadata = [(CUICommonAssetStorage *)self extendedMetadata];
    uTF8String = [platform UTF8String];

    strncpy(extendedMetadata->var3, uTF8String, 0xFFuLL);
  }
}

- (void)setDeploymentPlatformVersion:(id)version
{
  [(CUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([version length])
  {
    extendedMetadata = [(CUICommonAssetStorage *)self extendedMetadata];
    uTF8String = [version UTF8String];

    strncpy(extendedMetadata->var2, uTF8String, 0xFFuLL);
  }
}

- (void)setAuthoringTool:(id)tool
{
  [(CUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([tool length])
  {
    extendedMetadata = [(CUICommonAssetStorage *)self extendedMetadata];
    uTF8String = [tool UTF8String];

    strncpy(extendedMetadata->var4, uTF8String, 0xFFuLL);
  }
}

- (BOOL)setAsset:(id)asset forKey:(id)key
{
  bytes = [key bytes];
  v8 = [key length];

  return [(CUIMutableCommonAssetStorage *)self setAsset:asset forKey:bytes withLength:v8];
}

- (BOOL)setAsset:(id)asset forKey:(const void *)key withLength:(unint64_t)length
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  imagedb = [(CUICommonAssetStorage *)self imagedb];
  bytes = [asset bytes];
  v11 = [asset length];
  v15 = BOMTreeSetValue(imagedb, key, length, bytes, v11, v12, v13, v14);
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

  keyFormat = [(CUICommonAssetStorage *)self keyFormat];
  var2 = keyFormat->var2;
  if (var2)
  {
    v25 = keyFormat;
    var3 = keyFormat->var3;
    v27 = keyFormat->var3;
    keyCopy = key;
    while (1)
    {
      v29 = *v27++;
      if (v29 == 17)
      {
        break;
      }

      ++keyCopy;
      if (!--var2)
      {
        goto LABEL_13;
      }
    }

    v30 = *keyCopy;
    if (*keyCopy)
    {
      v31 = 0;
      do
      {
        [(CUICommonAssetStorage *)self _addBitmapIndexForNameIdentifier:v30 attribute:var3[v31] withValue:*(key + v31) toDictionary:self->_bitmapInfo];
        ++v31;
      }

      while (v31 < v25->var2);
    }
  }

LABEL_13:
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v22 == 0;
}

- (void)setCatalogGlobalData:(id)data
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  [(CUICommonAssetStorage *)self setGlobals:data];
  lock = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (void)setAppearanceIdentifier:(unsigned __int16)identifier forName:(id)name
{
  identifierCopy = identifier;
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(name);
  v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0xB4D43204uLL);
  CFStringGetFileSystemRepresentation(name, v7, MaximumSizeOfFileSystemRepresentation);
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (![(CUICommonAssetStorage *)self appearancedb])
  {
    v8 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setAppearancedb:BOMTreeNewWithName(v8, "APPEARANCEKEYS")];
  }

  appearancedb = [(CUICommonAssetStorage *)self appearancedb];
  v10 = strlen(v7);
  if (BOMTreeSetValue(appearancedb, v7, v10, &identifierCopy, 2uLL, v11, v12, v13))
  {
    _CUILog(4, "CoreUI: Error: unable to add look identifier '%@' with value '%d' to store", v14, v15, v16, v17, v18, v19, name);
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  free(v7);
}

- (void)setLocalizationIdentifier:(unsigned __int16)identifier forName:(id)name
{
  identifierCopy = identifier;
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(name);
  v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x42ED2B6EuLL);
  CFStringGetFileSystemRepresentation(name, v7, MaximumSizeOfFileSystemRepresentation);
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (![(CUICommonAssetStorage *)self localizationdb])
  {
    v8 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setLocalizationdb:BOMTreeNewWithName(v8, "LOCALIZATIONKEYS")];
  }

  localizationdb = [(CUICommonAssetStorage *)self localizationdb];
  v10 = strlen(v7);
  if (BOMTreeSetValue(localizationdb, v7, v10, &identifierCopy, 2uLL, v11, v12, v13))
  {
    _CUILog(4, "CoreUI: Error: unable to add localization identifier '%@' with value '%d' to store", v14, v15, v16, v17, v18, v19, name);
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

- (void)setColor:(_rgbquad)color forName:(const char *)name excludeFromFilter:(BOOL)filter
{
  filterCopy = filter;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (![(CUICommonAssetStorage *)self colordb])
  {
    v9 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setColordb:BOMTreeNewWithName(v9, "COLORS")];
  }

  if (name && [(CUICommonAssetStorage *)self colordb])
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    __strlcpy_chk();
    HIDWORD(v20) = 1;
    v21 = filterCopy;
    colorCopy = color;
    colordb = [(CUICommonAssetStorage *)self colordb];
    if (BOMTreeSetValue(colordb, v23, 0x84uLL, &v20 + 4, 0xCuLL, v11, v12, v13))
    {
      _CUILog(4, "CoreUI: Error: unable to add color to store", v14, v15, v16, v17, v18, v19, v20);
    }

    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }
}

- (void)setFontName:(id)name baselineOffset:(float)offset forFontSelector:(id)selector
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if ([(CUICommonAssetStorage *)self fontdb])
  {
    if (!selector)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setFontdb:BOMTreeNewWithName(v9, "FONTS")];
    if (!selector)
    {
LABEL_11:
      lock = [(CUICommonAssetStorage *)self lock];

      os_unfair_lock_unlock(lock);
      return;
    }
  }

  if (![(CUICommonAssetStorage *)self fontdb])
  {
    goto LABEL_11;
  }

  memset(v23, 0, sizeof(v23));
  if ([selector getBytes:v23 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(selector, "length"), 0}])
  {
    offsetCopy = 0.0;
    memset(v21, 0, sizeof(v21));
    [name length];
    if ([name getBytes:v21 maxLength:128 usedLength:0 encoding:1 options:0 range:? remainingRange:?])
    {
      offsetCopy = offset;
      fontdb = [(CUICommonAssetStorage *)self fontdb];
      if (BOMTreeSetValue(fontdb, v23, 0x80uLL, v21, 0x84uLL, v11, v12, v13))
      {
        _CUILog(4, "CoreUI: Error: unable to add font to store", v14, v15, v16, v17, v18, v19, 0);
      }
    }
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
}

- (void)setFontSize:(float)size forFontSizeSelector:(id)selector
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if ([(CUICommonAssetStorage *)self fontsizedb])
  {
    if (!selector)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    [(CUICommonAssetStorage *)self setFontsizedb:BOMTreeNewWithName(v7, "FONTSIZES")];
    if (!selector)
    {
LABEL_10:
      lock = [(CUICommonAssetStorage *)self lock];

      os_unfair_lock_unlock(lock);
      return;
    }
  }

  if (![(CUICommonAssetStorage *)self fontsizedb])
  {
    goto LABEL_10;
  }

  memset(v20, 0, sizeof(v20));
  [selector length];
  if ([selector getBytes:v20 maxLength:128 usedLength:0 encoding:1 options:0 range:? remainingRange:?])
  {
    sizeCopy = size;
    fontsizedb = [(CUICommonAssetStorage *)self fontsizedb];
    if (BOMTreeSetValue(fontsizedb, v20, 0x80uLL, &sizeCopy, 4uLL, v9, v10, v11))
    {
      _CUILog(4, "CoreUI: Error: unable to add font size to store", v12, v13, v14, v15, v16, v17, 0);
    }
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
}

- (void)setExternalTags:(id)tags
{
  v26.receiver = self;
  v26.super_class = CUIMutableCommonAssetStorage;
  v27 = 0;
  [(CUICommonAssetStorage *)&v26 setExternalTags:tags];
  v4 = objc_alloc_init(NSMutableData);
  v28 = 1163414603;
  v29 = [-[CUICommonAssetStorage externalTags](self "externalTags")];
  [v4 appendBytes:&v28 length:12];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  externalTags = [(CUICommonAssetStorage *)self externalTags];
  v6 = [externalTags countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(externalTags);
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

      v7 = [externalTags countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  v13 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
  NamedBlock = BOMStorageGetNamedBlock(v13, "EXTERNAL_KEYS");
  if (NamedBlock || (NamedBlock = BOMStorageNewNamedBlock(v13, "EXTERNAL_KEYS"), NamedBlock))
  {
    v15 = NamedBlock;
    bytes = [v4 bytes];
    v17 = [v4 length];
    BOMStorageCopyToBlock(v13, v15, bytes, v17, v18, v19, v20, v21);
  }
}

- (void)removeAssetForKey:(id)key
{
  bytes = [key bytes];
  v6 = [key length];

  [(CUIMutableCommonAssetStorage *)self removeAssetForKey:bytes withLength:v6];
}

- (void)removeAssetForKey:(const void *)key withLength:(unint64_t)length
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  imagedb = [(CUICommonAssetStorage *)self imagedb];
  if (BOMTreeGetValue(imagedb, key, length, v8, v9, v10, v11, v12))
  {
    imagedb2 = [(CUICommonAssetStorage *)self imagedb];
    if (BOMTreeRemoveValue(imagedb2, key, length, v14, v15, v16))
    {
      _CUILog(4, "CoreUI: Error: unable to remove asset from store", v17, v18, v19, v20, v21, v22, v24);
    }
  }

  lock = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (BOOL)removeAssetName:(id)name
{
  uTF8String = [name UTF8String];
  v6 = [name length];

  return [(CUIMutableCommonAssetStorage *)self removeAssetNameKey:uTF8String withLength:v6];
}

- (BOOL)removeAssetNameKey:(const void *)key withLength:(unint64_t)length
{
  if (key)
  {
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    facetKeysdb = [(CUICommonAssetStorage *)self facetKeysdb];
    if (BOMTreeGetValue(facetKeysdb, key, length, v8, v9, v10, v11, v12))
    {
      facetKeysdb2 = [(CUICommonAssetStorage *)self facetKeysdb];
      if (!BOMTreeRemoveValue(facetKeysdb2, key, length, v14, v15, v16))
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

- (void)setRenditionKey:(const _renditionkeytoken *)key hotSpot:(CGPoint)spot forName:(const char *)name
{
  y = spot.y;
  x = spot.x;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (!name)
  {
    [CUIMutableCommonAssetStorage setRenditionKey:a2 hotSpot:self forName:?];
  }

  v11 = CUIRenditionKeyTokenCount(key);
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
  [v12 appendBytes:key length:4 * v29];
  facetKeysdb = [(CUICommonAssetStorage *)self facetKeysdb];
  v14 = strlen(name);
  bytes = [v12 bytes];
  v16 = [v12 length];
  if (BOMTreeSetValue(facetKeysdb, name, v14, bytes, v16, v17, v18, v19))
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
    _allRenditionNames = [(CUICommonAssetStorage *)self _allRenditionNames];
    v4 = [[NSMutableSet alloc] initWithArray:_allRenditionNames];
    if ([_allRenditionNames count])
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = [_allRenditionNames countByEnumeratingWithState:&v27 objects:v33 count:16];
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
              objc_enumerationMutation(_allRenditionNames);
            }

            v9 = *(*(&v27 + 1) + 8 * i);
            v10 = -[CUICommonAssetStorage _renditionKeyForName:hotSpot:](self, "_renditionKeyForName:hotSpot:", [v9 UTF8String], v31);
            if (v10 && [(NSMutableDictionary *)self->_bitmapInfo objectForKey:[NSNumber numberWithInteger:CUIRenditionKeyValueForAttribute(&v10->identifier, 17)]])
            {
              [v4 removeObject:v9];
            }
          }

          v6 = [_allRenditionNames countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v6);
      }

      if ([v4 count])
      {
        v11 = [v4 count];
        if (v11 != [_allRenditionNames count])
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

                uTF8String = [*(*(&v23 + 1) + 8 * j) UTF8String];
                v17 = strlen(uTF8String);
                facetKeysdb = [(CUICommonAssetStorage *)self facetKeysdb];
                BOMTreeRemoveValue(facetKeysdb, uTF8String, v17, v19, v20, v21);
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

- (BOOL)writeToDiskAndCompact:(BOOL)compact
{
  compactCopy = compact;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
  NamedBlock = BOMStorageGetNamedBlock(v5, "CARHEADER");
  header = [(CUICommonAssetStorage *)self header];
  BOMStorageCopyToBlock(v5, NamedBlock, header, 0x1B4uLL, v8, v9, v10, v11);
  if ([(CUICommonAssetStorage *)self extendedMetadata])
  {
    v12 = BOMStorageGetNamedBlock(v5, "EXTENDED_METADATA");
    if (!v12)
    {
      v12 = BOMStorageNewNamedBlock(v5, "EXTENDED_METADATA");
    }

    extendedMetadata = [(CUICommonAssetStorage *)self extendedMetadata];
    BOMStorageCopyToBlock(v5, v12, extendedMetadata, 0x404uLL, v14, v15, v16, v17);
  }

  if ([(NSData *)[(CUICommonAssetStorage *)self globals] length])
  {
    v18 = BOMStorageGetNamedBlock(v5, "CARGLOBALS");
    if (!v18)
    {
      v18 = BOMStorageNewNamedBlock(v5, "CARGLOBALS");
    }

    bytes = [(NSData *)[(CUICommonAssetStorage *)self globals] bytes];
    v20 = [(NSData *)[(CUICommonAssetStorage *)self globals] length];
    BOMStorageCopyToBlock(v5, v18, bytes, v20, v21, v22, v23, v24);
  }

  if ((*(self + 552) & 2) != 0)
  {
    [(CUIMutableCommonAssetStorage *)self _writeOutKeyFormatWithWorkaround];
  }

  v25 = !BOMTreeCommit([(CUICommonAssetStorage *)self imagedb]) && (![(CUICommonAssetStorage *)self colordb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self colordb])) && (![(CUICommonAssetStorage *)self fontdb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self fontdb])) && (![(CUICommonAssetStorage *)self fontsizedb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self fontsizedb])) && (![(CUICommonAssetStorage *)self facetKeysdb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self facetKeysdb])) && (![(CUICommonAssetStorage *)self appearancedb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self appearancedb])) && (![(CUICommonAssetStorage *)self localizationdb]|| !BOMTreeCommit([(CUICommonAssetStorage *)self localizationdb])) && (!self->_bitmapInfo || [(CUIMutableCommonAssetStorage *)self _saveBitmapInfo]&& [(CUIMutableCommonAssetStorage *)self _removedUnusedNames]) && (!compactCopy || !BOMStorageCompact(v5)) && BOMStorageCommit(v5) == 0;
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