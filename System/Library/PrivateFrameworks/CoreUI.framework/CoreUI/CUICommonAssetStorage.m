@interface CUICommonAssetStorage
+ (BOOL)isValidAssetStorageWithBytes:(const void *)a3 length:(unint64_t)a4;
+ (BOOL)isValidAssetStorageWithURL:(id)a3;
- (BOOL)_buildBitmapInfoIntoDictionary:(id)a3;
- (BOOL)_commonInitWithStorage:(_BOMStorage *)a3 forWritting:(BOOL)a4;
- (BOOL)assetExistsForKey:(id)a3;
- (BOOL)assetExistsForKeyData:(const void *)a3 length:(unint64_t)a4;
- (BOOL)enumerateColorsBlock:(id)a3;
- (BOOL)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (BOOL)getBaselineOffset:(float *)a3 forFontType:(id)a4;
- (BOOL)getColor:(_colordef *)a3 forName:(const char *)a4;
- (BOOL)getFontName:(id *)a3 baselineOffset:(float *)a4 forFontType:(id)a5;
- (BOOL)hasColorForName:(const char *)a3;
- (BOOL)writeToPath:(id)a3 withTreePageSize:(unsigned int)a4;
- (CUICommonAssetStorage)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (CUICommonAssetStorage)initWithPath:(id)a3 forWriting:(BOOL)a4;
- (NSDictionary)appearances;
- (const)_fontValueForFontType:(id)a3;
- (const)_renditionKeyForName:(const char *)a3 hotSpot:(CGPoint *)a4;
- (const)keyFormat;
- (const)mainVersionString;
- (const)renditionKeyForName:(const char *)a3 hotSpot:(CGPoint *)a4;
- (const)versionString;
- (float)fontSizeForFontSizeType:(id)a3;
- (id)_allRenditionNames;
- (id)_readAppearances;
- (id)allAssetKeys;
- (id)allRenditionNames;
- (id)assetForKey:(id)a3;
- (id)assetKeysMatchingBlock:(id)a3;
- (id)authoringTool;
- (id)catalogGlobalData;
- (id)deploymentPlatformString;
- (id)deploymentPlatformVersion;
- (id)description;
- (id)facetValueNameMap;
- (id)keyFormatData;
- (id)localizations;
- (id)nameForAppearanceIdentifier:(unsigned __int16)a3;
- (id)nameForLocalizationIdentifier:(unsigned __int16)a3;
- (id)path;
- (id)renditionInfoForIdentifier:(unsigned __int16)a3;
- (id)renditionNameForKeyBaseList:(const _renditionkeytoken *)a3;
- (id)renditionNameForKeyList:(_renditionkeytoken *)a3;
- (id)renditionNamesWithKeys;
- (id)thinningArguments;
- (id)uuid;
- (int)validateBitmapInfo;
- (int)validatekeyformat;
- (int64_t)_storagefileTimestamp;
- (int64_t)deploymentPlatform;
- (int64_t)maximumRenditionKeyTokenCount;
- (int64_t)storageTimestamp;
- (unsigned)appearanceIdentifierForName:(id)a3;
- (unsigned)associatedChecksum;
- (unsigned)colorSpaceID;
- (unsigned)distilledInCoreUIVersion;
- (unsigned)localizationIdentifierForName:(id)a3;
- (unsigned)renditionCount;
- (unsigned)schemaVersion;
- (unsigned)storageVersion;
- (unsigned)thinnedWithCoreUIVersion;
- (void)_addBitmapIndexForNameIdentifier:(unsigned __int16)a3 attribute:(int)a4 withValue:(unsigned __int16)a5 toDictionary:(id)a6;
- (void)_bringHeaderInfoUpToDate;
- (void)_initDefaultHeaderVersion:(double)a3 versionString:(const char *)a4;
- (void)_loadExtendedMetadata;
- (void)_swapHeader;
- (void)_swapKeyFormat;
- (void)_swapRenditionKeyArray:(unsigned __int16 *)a3;
- (void)dealloc;
- (void)enumerateBitmapIndexUsingBlock:(id)a3;
- (void)enumerateKeysAndObjectsWithoutIgnoringUsingBlock:(id)a3;
- (void)enumerateRenditionInfosUsingBlock:(id)a3;
- (void)setExternalTags:(id)a3;
@end

@implementation CUICommonAssetStorage

- (void)_bringHeaderInfoUpToDate
{
  header = self->_header;
  if (header->var2 <= 5)
  {
    header->var9 = 1;
  }
}

- (void)_loadExtendedMetadata
{
  if (!self->_extendedMetadata)
  {
    v3 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    NamedBlock = BOMStorageGetNamedBlock(v3, "EXTENDED_METADATA");
    if (NamedBlock)
    {
      v11 = NamedBlock;
      if ((*(self + 108) & 2) != 0)
      {
        self->_extendedMetadata = BOMStorageReadFromBlock(v3, NamedBlock, v5, v6, v7, v8, v9, v10);
      }

      else
      {
        v12 = BOMStorageSizeOfBlock(v3, NamedBlock, v5, v6, v7, v8, v9, v10);
        v13 = malloc_type_calloc(1uLL, 0x404uLL, 0x100004084B5CCE0uLL);
        self->_extendedMetadata = v13;
        if (v12 >= 0x404)
        {
          v17 = 1028;
        }

        else
        {
          v17 = v12;
        }

        BOMStorageCopyFromBlockRange(v3, v11, 0, v17, v13, v14, v15, v16);
      }
    }
  }
}

- (id)path
{
  v2 = BOMTreeStorage(self->_imagedb);
  v3 = BOMStorageFileName(v2);
  v4 = +[NSFileManager defaultManager];
  v5 = strlen(v3);

  return [(NSFileManager *)v4 stringWithFileSystemRepresentation:v3 length:v5];
}

- (const)keyFormat
{
  if (self->_keyfmt)
  {
    return self->_keyfmt;
  }

  else
  {
    return CUIDefaultThemeRenditionKeyFormat(self->_header->var11, self->_header->var2, v2, v3, v4, v5, v6, v7);
  }
}

- (unsigned)storageVersion
{
  header = self->_header;
  if (header)
  {
    return header->var2;
  }

  else
  {
    return 1;
  }
}

- (NSDictionary)appearances
{
  result = self->_appearances;
  if (!result)
  {
    result = [-[CUICommonAssetStorage _readAppearances](self "_readAppearances")];
    self->_appearances = result;
  }

  return result;
}

- (id)localizations
{
  if (self->_localizationdb)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    v4 = BOMTreeIteratorNew(self->_localizationdb, 0, 0, 0);
    if (!BOMTreeIteratorIsAtEnd(v4, v5, v6, v7, v8, v9, v10, v11))
    {
      do
      {
        v19 = BOMTreeIteratorValue(v4, v12, v13, v14, v15, v16, v17, v18);
        if (v19)
        {
          v27 = *v19;
          v28 = BOMTreeIteratorKey(v4, v20, v21, v22, v23, v24, v25, v26);
          v36 = [[NSString alloc] initWithBytes:v28 length:BOMTreeIteratorKeySize(v4 encoding:{v29, v30, v31, v32, v33, v34, v35), 4}];
          [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v27), v36}];
        }

        BOMTreeIteratorNext(v4, v20, v21, v22, v23, v24, v25, v26);
      }

      while (!BOMTreeIteratorIsAtEnd(v4, v37, v38, v39, v40, v41, v42, v43));
    }

    BOMTreeIteratorFree(v4);
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {

    return v3;
  }

  else
  {

    return 0;
  }
}

- (unsigned)distilledInCoreUIVersion
{
  header = self->_header;
  if (header)
  {
    LODWORD(v2) = header->var1;
    return v2;
  }

  else
  {
    return floor(971.6);
  }
}

- (int64_t)deploymentPlatform
{
  v2 = [(CUICommonAssetStorage *)self deploymentPlatformString];

  return CUIPlatformForPlatformString(v2);
}

- (id)deploymentPlatformString
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata || !extendedMetadata->var3[0])
  {
    return 0;
  }

  return [NSString stringWithUTF8String:extendedMetadata->var3];
}

- (void)dealloc
{
  v3 = BOMTreeStorage(self->_imagedb);
  BOMTreeFree(self->_imagedb);
  BOMTreeFree(self->_colordb);
  BOMTreeFree(self->_fontdb);
  BOMTreeFree(self->_fontsizedb);
  BOMTreeFree(self->_facetKeysdb);
  BOMTreeFree(self->_bitmapKeydb);
  BOMTreeFree(self->_appearancedb);
  BOMTreeFree(self->_localizationdb);
  header = self->_header;
  if (header)
  {
    free(header);
  }

  keyfmt = self->_keyfmt;
  if (keyfmt)
  {
    free(keyfmt);
  }

  for (i = 0; i != 20; ++i)
  {
    v7 = (&self->super.isa + i);

    v7[20] = 0;
    self->_renditionInfoCacheLookup[i] = 0;
  }

  if (BOMStorageIsOpenForWriting(v3) || !BOMStorageMemoryMapped(v3))
  {
    extendedMetadata = self->_extendedMetadata;
    if (extendedMetadata)
    {
      free(extendedMetadata);
    }
  }

  BOMStorageFree(v3);
  v9.receiver = self;
  v9.super_class = CUICommonAssetStorage;
  [(CUICommonAssetStorage *)&v9 dealloc];
}

- (id)_readAppearances
{
  if (self->_appearancedb)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    v4 = BOMTreeIteratorNew(self->_appearancedb, 0, 0, 0);
    if (!BOMTreeIteratorIsAtEnd(v4, v5, v6, v7, v8, v9, v10, v11))
    {
      do
      {
        v19 = BOMTreeIteratorValue(v4, v12, v13, v14, v15, v16, v17, v18);
        if (v19)
        {
          v27 = *v19;
          v28 = BOMTreeIteratorKey(v4, v20, v21, v22, v23, v24, v25, v26);
          v36 = [[NSString alloc] initWithBytes:v28 length:BOMTreeIteratorKeySize(v4 encoding:{v29, v30, v31, v32, v33, v34, v35), 4}];
          [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v27), v36}];
        }

        BOMTreeIteratorNext(v4, v20, v21, v22, v23, v24, v25, v26);
      }

      while (!BOMTreeIteratorIsAtEnd(v4, v37, v38, v39, v40, v41, v42, v43));
    }

    BOMTreeIteratorFree(v4);
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {

    return v3;
  }

  else
  {

    return 0;
  }
}

- (unsigned)renditionCount
{
  header = self->_header;
  if (header)
  {
    return header->var4;
  }

  else
  {
    return 0;
  }
}

- (void)setExternalTags:(id)a3
{
  externalTags = self->_externalTags;
  if (externalTags != a3)
  {

    v6 = self->_externalTags;

    v7 = v6;
  }
}

- (void)_initDefaultHeaderVersion:(double)a3 versionString:(const char *)a4
{
  *(self + 27) &= 0xFu;
  v7 = malloc_type_malloc(0x1B4uLL, 0x100004050C72333uLL);
  self->_header = v7;
  *&v7->var0 = 0u;
  *&v7->var4 = 0u;
  *&v7->var5[12] = 0u;
  *&v7->var5[28] = 0u;
  *&v7->var5[44] = 0u;
  *&v7->var5[60] = 0u;
  *&v7->var5[76] = 0u;
  *&v7->var5[92] = 0u;
  *&v7->var5[108] = 0u;
  *&v7->var5[124] = 0u;
  *&v7->var6[12] = 0u;
  *&v7->var6[28] = 0u;
  *&v7->var6[44] = 0u;
  *&v7->var6[60] = 0u;
  *&v7->var6[76] = 0u;
  *&v7->var6[92] = 0u;
  *&v7->var6[108] = 0u;
  *&v7->var6[124] = 0u;
  *&v7->var6[140] = 0u;
  *&v7->var6[156] = 0u;
  *&v7->var6[172] = 0u;
  *&v7->var6[188] = 0u;
  *&v7->var6[204] = 0u;
  *&v7->var6[220] = 0u;
  *&v7->var6[236] = 0u;
  *&v7->var6[252] = 0u;
  *&v7->var7[12] = 0u;
  v7->var11 = 0;
  header = self->_header;
  header->var0 = 1129595218;
  header->var1 = vcvtmd_u64_f64(a3);
  *&header->var2 = 1;
  header->var4 = 0;
  strncpy(header->var5, a4, 0x80uLL);
  uuid_generate_random(self->_header->var7);
  *&self->_header->var8 = xmmword_18E021E90;
  *&self->_lock._os_unfair_lock_opaque = 0;
}

- (void)_swapHeader
{
  header = self->_header;
  *&header->var1 = vrev32q_s8(*&header->var1);
  header->var11 = bswap32(header->var11);
  *&header->var8 = vrev32_s8(*&header->var8);
}

- (void)_swapKeyFormat
{
  keyfmt = self->_keyfmt;
  v3 = 3;
  p_var0 = &keyfmt->var0;
  do
  {
    *p_var0 = bswap32(*p_var0);
    ++p_var0;
    --v3;
  }

  while (v3);
  if (keyfmt->var2)
  {
    v5 = 0;
    do
    {
      p_var0[v5] = bswap32(p_var0[v5]);
      ++v5;
    }

    while (v5 < keyfmt->var2);
  }
}

- (CUICommonAssetStorage)initWithPath:(id)a3 forWriting:(BOOL)a4
{
  v4 = a4;
  v25.receiver = self;
  v25.super_class = CUICommonAssetStorage;
  v6 = [(CUICommonAssetStorage *)&v25 init];
  v14 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  BOMExceptionHandlerSetDefault(v6, v7, v8, v9, v10, v11, v12, v13, v24);
  v15 = BOMStorageOpenWithSys([a3 fileSystemRepresentation], v4, 0);
  if (!v15)
  {
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -initWithPath: Unable to read file at '%@'", v16, v17, v18, v19, v20, v21, a3);
LABEL_7:

    return 0;
  }

  v22 = v15;
  if (![(CUICommonAssetStorage *)v14 _commonInitWithStorage:v15 forWritting:v4])
  {
    BOMStorageFree(v22);
    goto LABEL_7;
  }

LABEL_4:
  v14->_facetValueNameDict = 0;
  return v14;
}

- (CUICommonAssetStorage)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v29.receiver = self;
  v29.super_class = CUICommonAssetStorage;
  v6 = [(CUICommonAssetStorage *)&v29 init];
  v14 = v6;
  if (v6)
  {
    BOMExceptionHandlerSetDefault(v6, v7, v8, v9, v10, v11, v12, v13, v29.receiver);
    v20 = BOMStorageOpenInRAM(a3, a4, 0, v15, v16, v17, v18, v19);
    if (!v20)
    {
      _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -initWithBytes:length: unable to read bytes", v21, v22, v23, v24, v25, v26, v29.receiver);
      goto LABEL_6;
    }

    v27 = v20;
    if (![(CUICommonAssetStorage *)v14 _commonInitWithStorage:v20 forWritting:0])
    {
      BOMStorageFree(v27);
LABEL_6:

      return 0;
    }
  }

  return v14;
}

+ (BOOL)isValidAssetStorageWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  BOMExceptionHandlerSet(0, a2, a3, a4, v4, v5, v6, v7, 0);
  v15 = BOMStorageOpenInRAM(a3, a4, 0, v10, v11, v12, v13, v14);
  if (v15)
  {
    v23 = v15;
    NamedBlock = BOMStorageGetNamedBlock(v15, "CARHEADER");
    if (NamedBlock)
    {
      if (BOMStorageSizeOfBlock(v23, NamedBlock, v24, v25, v26, v27, v28, v29) > 0x1B4)
      {
        LOBYTE(NamedBlock) = 0;
      }

      else
      {
        BOMStorageCopyFromBlock(v23, NamedBlock, v37, v31, v32, v33, v34, v35);
        LOBYTE(NamedBlock) = LODWORD(v37[0]) == 1129595218;
      }
    }

    v15 = BOMStorageFree(v23);
  }

  else
  {
    LOBYTE(NamedBlock) = 0;
  }

  BOMExceptionHandlerSetDefault(v15, v16, v17, v18, v19, v20, v21, v22, *&v37[0]);
  return NamedBlock;
}

+ (BOOL)isValidAssetStorageWithURL:(id)a3
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v4 = BomSys_defaultNoMMAP();
  BOMExceptionHandlerSet(0, v5, v6, v7, v8, v9, v10, v11, 0);
  v12 = BOMStorageOpenWithSys([a3 fileSystemRepresentation], 0, v4);
  if (v12)
  {
    v20 = v12;
    NamedBlock = BOMStorageGetNamedBlock(v12, "CARHEADER");
    if (NamedBlock)
    {
      BOMStorageCopyFromBlock(v20, NamedBlock, v29, v22, v23, v24, v25, v26);
      v27 = LODWORD(v29[0]) == 1129595218;
    }

    else
    {
      v27 = 0;
    }

    v12 = BOMStorageFree(v20);
  }

  else
  {
    v27 = 0;
  }

  BOMExceptionHandlerSetDefault(v12, v13, v14, v15, v16, v17, v18, v19, *&v29[0]);
  return v27;
}

- (BOOL)_commonInitWithStorage:(_BOMStorage *)a3 forWritting:(BOOL)a4
{
  NamedBlock = BOMStorageGetNamedBlock(a3, "CARHEADER");
  if (NamedBlock)
  {
    v14 = NamedBlock;
    v15 = BOMStorageSizeOfBlock(a3, NamedBlock, v8, v9, v10, v11, v12, v13);
    if (v15 >= 0x1B5)
    {
      v191 = BOMStorageFileName(a3);
      _CUILog(4, "CoreUI: Car file '%s' has a malformed header(%zu) sizeof CAR_HEADER_NAME > structure used to store data(%zu)", v16, v17, v18, v19, v20, v21, v191);
      return 0;
    }

    if (v15 == 436)
    {
      header = malloc_type_malloc(0x1B4uLL, 0xEF5FE7D8uLL);
      self->_header = header;
    }

    else
    {
      if (a4)
      {
        v192 = BOMStorageFileName(a3);
        _CUILog(4, "CoreUI: Can't update header information for old version of CAR '%s'", v35, v36, v37, v38, v39, v40, v192);
        return 0;
      }

      [(CUICommonAssetStorage *)self _initDefaultHeaderVersion:"@(#)PROGRAM:CoreUI  PROJECT:CoreUI-971.6\n" versionString:971.6];
      header = self->_header;
    }

    BOMStorageCopyFromBlock(a3, v14, header, v30, v31, v32, v33, v34);
    if (self->_header->var0 == 1380013123)
    {
      [(CUICommonAssetStorage *)self _swapHeader];
      *(self + 108) |= 1u;
    }

    [(CUICommonAssetStorage *)self _bringHeaderInfoUpToDate];
  }

  else
  {
    v22 = BOMStorageFileName(a3);
    _CUILog(4, "CoreUI: Car file '%s' has no header information.  Using default values", v23, v24, v25, v26, v27, v28, v22);
    [(CUICommonAssetStorage *)self _initDefaultHeaderVersion:"@(#)PROGRAM:CoreUI  PROJECT:CoreUI-971.6\n" versionString:971.6];
  }

  self->_thinnedWithCoreUIVersion = -1;
  v41 = BOMStorageGetNamedBlock(a3, "CARGLOBALS");
  if (v41)
  {
    v48 = v41;
    v49 = BOMStorageSizeOfBlock(a3, v41, v42, v43, v44, v45, v46, v47);
    if (v49)
    {
      v50 = v49;
      v51 = malloc_type_malloc(v49, 0xD92A442DuLL);
      BOMStorageCopyFromBlock(a3, v48, v51, v52, v53, v54, v55, v56);
      self->_globals = [[NSData alloc] initWithBytes:v51 length:v50];
      free(v51);
    }
  }

  v57 = BOMStorageGetNamedBlock(a3, "KEYFORMAT");
  if (v57)
  {
    v64 = v57;
    v65 = BOMStorageSizeOfBlock(a3, v57, v58, v59, v60, v61, v62, v63);
    if (v65 < 0xC)
    {
      v81 = BOMStorageFileName(a3);
      _CUILog(4, "CoreUI: Car file '%s' has erroneous key format information keyformat is too short. Using CUISystemThemeRenditionKeyFormat", v82, v83, v84, v85, v86, v87, v81);
      p_keyfmt = &self->_keyfmt;
LABEL_26:
      *p_keyfmt = 0;
      goto LABEL_27;
    }

    v66 = v65;
    v67 = malloc_type_malloc(v65, 0x6D4D9F52uLL);
    self->_keyfmt = v67;
    p_keyfmt = &self->_keyfmt;
    BOMStorageCopyFromBlock(a3, v64, v67, v69, v70, v71, v72, v73);
    if (*(self + 108))
    {
      [(CUICommonAssetStorage *)self _swapKeyFormat];
    }

    if (**p_keyfmt != 1801874804)
    {
      v193 = BOMStorageFileName(a3);
      _CUILog(4, "CoreUI: Car file '%s' has erroneous key format information. Using CUISystemThemeRenditionKeyFormat", v88, v89, v90, v91, v92, v93, v193);
      goto LABEL_25;
    }

    if (4 * *(*p_keyfmt + 2) + 12 != v66)
    {
      v74 = BOMStorageFileName(a3);
      _CUILog(4, "CoreUI: Car file '%s' has erroneous key format information keyformat #keys %d doesn't match size %d. Using CUISystemThemeRenditionKeyFormat", v75, v76, v77, v78, v79, v80, v74);
LABEL_25:
      free(*p_keyfmt);
      goto LABEL_26;
    }
  }

LABEL_27:
  v94 = BOMStorageGetNamedBlock(a3, "KEYFORMATWORKAROUND");
  if (v94 && self->_keyfmt)
  {
    v101 = v94;
    v102 = BOMStorageSizeOfBlock(a3, v94, v95, v96, v97, v98, v99, v100);
    if (v102 < 0xC)
    {
      v116 = BOMStorageFileName(a3);
      _CUILog(4, "CoreUI: Car file '%s' KEY_FORMAT_WORKAROUND that is too short ignoring.", v117, v118, v119, v120, v121, v122, v116);
    }

    else
    {
      v103 = v102;
      v104 = malloc_type_malloc(v102, 0x2D84A0FBuLL);
      BOMStorageCopyFromBlock(a3, v101, v104, v105, v106, v107, v108, v109);
      keyfmt = self->_keyfmt;
      var2 = keyfmt->var2;
      if (v103 >> 2 < var2)
      {
        var2 = v103 >> 2;
      }

      if (var2)
      {
        var3 = keyfmt->var3;
        v113 = v104;
        do
        {
          v115 = *v113++;
          v114 = v115;
          if (v115)
          {
            *var3 = v114;
          }

          ++var3;
          --var2;
        }

        while (var2);
      }

      free(v104);
    }
  }

  v123 = self->_keyfmt;
  if (v123)
  {
    CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(&self->_keyfmtindex, v123);
  }

  v124 = BOMStorageGetNamedBlock(a3, "EXTERNAL_KEYS");
  if (v124)
  {
    v131 = v124;
    v132 = BOMStorageSizeOfBlock(a3, v124, v125, v126, v127, v128, v129, v130);
    v133 = malloc_type_malloc(v132, 0xD17EB229uLL);
    BOMStorageCopyFromBlock(a3, v131, v133, v134, v135, v136, v137, v138);
    if (*v133 == 1163414603)
    {
      v139 = objc_alloc_init(NSMutableSet);
      if (v133[2])
      {
        v140 = 0;
        v141 = v133 + 3;
        do
        {
          v142 = [[NSString alloc] initWithUTF8String:v141 + 2];
          [(NSSet *)v139 addObject:v142];

          v141 = (v141 + v141[1] + 8);
          ++v140;
        }

        while (v140 < v133[2]);
      }

      self->_externalTags = v139;
    }

    else
    {
      v143 = BOMStorageFileName(a3);
      _CUILog(4, "CoreUI: Car file '%s' has erroneous external tags information ignoring", v144, v145, v146, v147, v148, v149, v143);
    }

    free(v133);
  }

  v150 = BOMTreeOpenWithName(a3, "RENDITIONS", a4);
  if (!v150)
  {
    v194 = BOMStorageFileName(a3);
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage No rendition tree found in '%s'", v152, v153, v154, v155, v156, v157, v194);
    return 0;
  }

  self->_imagedb = v150;
  self->_colordb = BOMTreeOpenWithName(a3, "COLORS", a4);
  self->_fontdb = BOMTreeOpenWithName(a3, "FONTS", a4);
  self->_fontsizedb = BOMTreeOpenWithName(a3, "FONTSIZES", a4);
  self->_facetKeysdb = BOMTreeOpenWithName(a3, "FACETKEYS", a4);
  self->_bitmapKeydb = BOMTreeOpenWithName(a3, "BITMAPKEYS", a4);
  self->_appearancedb = BOMTreeOpenWithName(a3, "APPEARANCEKEYS", a4);
  self->_localizationdb = BOMTreeOpenWithName(a3, "LOCALIZATIONKEYS", a4);
  if (BOMStorageIsOpenForWriting(a3) || !BOMStorageMemoryMapped(a3))
  {
    v151 = *(self + 108) & 0xFD;
  }

  else
  {
    v151 = *(self + 108) | 2;
  }

  *(self + 108) = v151;
  bitmapKeydb = self->_bitmapKeydb;
  if (bitmapKeydb && !a4)
  {
    v160 = BOMTreeIteratorNew(bitmapKeydb, 0, 0, 0);
    v161 = objc_autoreleasePoolPush();
    if (!BOMTreeIteratorIsAtEnd(v160, v162, v163, v164, v165, v166, v167, v168))
    {
      v176 = 22;
      do
      {
        [(CUICommonAssetStorage *)self renditionInfoForIdentifier:BOMTreeIteratorKey(v160, v169, v170, v171, v172, v173, v174, v175)];
        if (!--v176)
        {
          break;
        }

        BOMTreeIteratorNext(v160, v177, v178, v179, v180, v181, v182, v183);
      }

      while (!BOMTreeIteratorIsAtEnd(v160, v184, v185, v186, v187, v188, v189, v190));
    }

    objc_autoreleasePoolPop(v161);
    BOMTreeIteratorFree(v160);
  }

  if (self->_appearancedb)
  {
    *(self + 108) = *(self + 108) & 0xFB | (4 * CUIRenditionKeyHasIdentifier([(CUICommonAssetStorage *)self keyFormat], 7));
  }

  *(self + 108) = *(self + 108) & 0xF7 | (8 * CUIRenditionKeyHasIdentifier([(CUICommonAssetStorage *)self keyFormat], 13));
  return 1;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = BOMTreeStorage(self->_imagedb);
  return [NSString stringWithFormat:@"<%@:%p '%s'>", v4, self, BOMStorageFileName(v5)];
}

- (unsigned)schemaVersion
{
  header = self->_header;
  if (header)
  {
    return header->var9;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_storagefileTimestamp
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (!_storagefileTimestamp_tstamp)
  {
    v3 = BOMTreeStorage(self->_imagedb);
    v4 = BOMStorageFileName(v3);
    memset(&v6, 0, sizeof(v6));
    stat(v4, &v6);
    _storagefileTimestamp_tstamp = v6.st_mtimespec.tv_sec;
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return _storagefileTimestamp_tstamp;
}

- (int64_t)storageTimestamp
{
  header = self->_header;
  if (header && (var3 = header->var3, var3))
  {
    return var3;
  }

  else
  {
    return [(CUICommonAssetStorage *)self _storagefileTimestamp];
  }
}

- (id)keyFormatData
{
  [(CUICommonAssetStorage *)self keyFormat];

  return [NSData dataWithBytes:"dataWithBytes:length:" length:?];
}

- (id)catalogGlobalData
{
  globals = self->_globals;
  if (globals)
  {
    v4 = [(NSData *)globals copy];

    return v4;
  }

  else
  {

    return +[NSData data];
  }
}

- (int64_t)maximumRenditionKeyTokenCount
{
  keyfmt = self->_keyfmt;
  if (keyfmt)
  {
    return keyfmt->var2;
  }

  else
  {
    return 21;
  }
}

- (const)versionString
{
  header = self->_header;
  if (header)
  {
    return header->var6;
  }

  else
  {
    return 0;
  }
}

- (const)mainVersionString
{
  header = self->_header;
  if (header)
  {
    return header->var5;
  }

  else
  {
    return 0;
  }
}

- (unsigned)thinnedWithCoreUIVersion
{
  result = self->_thinnedWithCoreUIVersion;
  if (result == -1)
  {
    v4 = [(CUICommonAssetStorage *)self thinningArguments];
    result = 0x7FFFFFFF;
    self->_thinnedWithCoreUIVersion = 0x7FFFFFFF;
    if (v4)
    {
      v6 = 0;
      if ([v4 hasPrefix:@"carutil"])
      {
        v5 = [NSScanner scannerWithString:v4];
        [(NSScanner *)v5 scanUpToCharactersFromSet:+[NSCharacterSet intoString:"decimalDigitCharacterSet"], 0];
        if ([(NSScanner *)v5 scanInt:&v6])
        {
          self->_thinnedWithCoreUIVersion = v6;
        }
      }

      return self->_thinnedWithCoreUIVersion;
    }
  }

  return result;
}

- (id)uuid
{
  v2 = [[NSUUID alloc] initWithUUIDBytes:self->_header->var7];

  return v2;
}

- (unsigned)associatedChecksum
{
  header = self->_header;
  if (header)
  {
    return header->var8;
  }

  else
  {
    return 0;
  }
}

- (unsigned)colorSpaceID
{
  header = self->_header;
  if (header)
  {
    return header->var10;
  }

  else
  {
    return 0;
  }
}

- (id)thinningArguments
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  return [NSString stringWithUTF8String:extendedMetadata->var1];
}

- (id)deploymentPlatformVersion
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  return [NSString stringWithUTF8String:extendedMetadata->var2];
}

- (id)authoringTool
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  return [NSString stringWithUTF8String:extendedMetadata->var4];
}

- (void)_swapRenditionKeyArray:(unsigned __int16 *)a3
{
  v4 = [(CUICommonAssetStorage *)self maximumRenditionKeyTokenCount];
  if (v4 >= 1)
  {
    do
    {
      *a3 = bswap32(*a3) >> 16;
      ++a3;
      --v4;
    }

    while (v4);
  }
}

- (BOOL)assetExistsForKey:(id)a3
{
  v5 = [a3 bytes];
  v6 = [a3 length];

  return [(CUICommonAssetStorage *)self assetExistsForKeyData:v5 length:v6];
}

- (BOOL)assetExistsForKeyData:(const void *)a3 length:(unint64_t)a4
{
  [+[CUIRuntimeStatistics sharedRuntimeStatistics](CUIRuntimeStatistics "sharedRuntimeStatistics")];
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  LOBYTE(a4) = BOMTreeValueExists(self->_imagedb, a3, a4, v7, v8, v9, v10, v11) != 0;
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return a4;
}

- (id)assetForKey:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = [a3 bytes];
  v6 = [a3 length];
  size = 0;
  if (BOMTreeGetValueSize(self->_imagedb, v5, v6, &size, v7, v8, v9, v10))
  {
    goto LABEL_2;
  }

  if ((*(self + 108) & 2) != 0)
  {
    Value = BOMTreeReadValue(self->_imagedb, v5, v6, v11, v12, v13, v14, v15);
    if (Value)
    {
      v18 = [NSData dataWithBytesNoCopy:Value length:size freeWhenDone:0];
LABEL_9:
      v16 = v18;
      goto LABEL_10;
    }
  }

  v16 = BOMTreeGetValue(self->_imagedb, v5, v6, v11, v12, v13, v14, v15);
  if (!v16)
  {
    goto LABEL_10;
  }

  v19 = malloc_type_malloc(size, 0x36A11318uLL);
  __CFSetLastAllocationEventName();
  if (v19)
  {
    memcpy(v19, v16, size);
    v18 = [NSData dataWithBytesNoCopy:v19 length:size];
    goto LABEL_9;
  }

LABEL_2:
  v16 = 0;
LABEL_10:
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v16;
}

- (id)allAssetKeys
{
  v3 = objc_alloc_init(NSMutableArray);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __37__CUICommonAssetStorage_allAssetKeys__block_invoke;
  v5[3] = &unk_1E7250E18;
  v5[4] = v3;
  [(CUICommonAssetStorage *)self assetKeysMatchingBlock:v5];
  return v3;
}

uint64_t __37__CUICommonAssetStorage_allAssetKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:a2];
  [*(a1 + 32) addObject:v3];

  return 0;
}

- (id)assetKeysMatchingBlock:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = [(CUICommonAssetStorage *)self keyFormat];
  v52 = 0u;
  memset(v53, 0, 28);
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  var2 = v5->var2;
  if (var2 < 0x18)
  {
    v7 = &v49;
  }

  else
  {
    v7 = malloc_type_calloc(var2 + 2, 4uLL, 0x100004052888210uLL);
    var2 = v5->var2;
  }

  v8 = BOMTreeIteratorNew(self->_imagedb, 0, 2 * var2, 0);
  v23 = 0;
  if (!BOMTreeIteratorIsAtEnd(v8, v9, v10, v11, v12, v13, v14, v15))
  {
    v23 = 0;
    do
    {
      v24 = BOMTreeIteratorKey(v8, v16, v17, v18, v19, v20, v21, v22);
      v32 = BOMTreeIteratorKeySize(v8, v25, v26, v27, v28, v29, v30, v31);
      if ([(CUICommonAssetStorage *)self swapped:v49])
      {
        [(CUICommonAssetStorage *)self _swapRenditionKeyArray:v24];
      }

      CUIFillRenditionKeyForCARKeyArray(v7, v24, v5);
      os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
      v33 = (*(a3 + 2))(a3, v7, v5);
      os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
      if (v33)
      {
        if (!v23)
        {
          v23 = objc_alloc_init(NSMutableSet);
        }

        [v23 addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v24, v32)}];
      }

      if ([(CUICommonAssetStorage *)self swapped])
      {
        [(CUICommonAssetStorage *)self _swapRenditionKeyArray:v24];
      }

      BOMTreeIteratorNext(v8, v34, v35, v36, v37, v38, v39, v40);
    }

    while (!BOMTreeIteratorIsAtEnd(v8, v41, v42, v43, v44, v45, v46, v47));
  }

  BOMTreeIteratorFree(v8);
  if (v7 != &v49)
  {
    free(v7);
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock:v49]);
  return v23;
}

- (BOOL)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = [(CUICommonAssetStorage *)self keyFormat];
  v6 = malloc_type_calloc(v5->var2 + 1, 4uLL, 0x100004052888210uLL);
  v7 = BOMTreeIteratorNew(self->_imagedb, 0, 0, 0);
  v8 = objc_alloc_init(NSAutoreleasePool);
  if (!BOMTreeIteratorIsAtEnd(v7, v9, v10, v11, v12, v13, v14, v15))
  {
    v82 = v5;
    v24 = 0;
    v23 = 1;
    while (1)
    {
      v83 = 0;
      if (v24 >= 0x65)
      {
        [v8 drain];
        v8 = objc_alloc_init(NSAutoreleasePool);
        v24 = 0;
      }

      v83 = 0;
      v25 = BOMTreeIteratorKey(v7, v16, v17, v18, v19, v20, v21, v22);
      v33 = BOMTreeIteratorKeySize(v7, v26, v27, v28, v29, v30, v31, v32);
      if (!v25)
      {
        v23 = 0;
        goto LABEL_24;
      }

      if ((*(self + 108) & 2) != 0)
      {
        v51 = v33;
        Value = BOMTreeReadValue(self->_imagedb, v25, v33, v36, v37, v38, v39, v40);
        if (!BOMTreeGetValueSize(self->_imagedb, v25, v51, &v83, v53, v54, v55, v56))
        {
          v57 = [NSData alloc];
          v50 = [v57 initWithBytesNoCopy:Value length:v83 freeWhenDone:0];
          goto LABEL_12;
        }
      }

      else
      {
        v48 = BOMTreeIteratorValue(v7, v34, v35, v36, v37, v38, v39, v40);
        if (v48)
        {
          v83 = BOMTreeIteratorValueSize(v7, v41, v42, v43, v44, v45, v46, v47);
          v49 = [NSData alloc];
          v50 = [v49 initWithBytes:v48 length:v83];
LABEL_12:
          v58 = v50;
          goto LABEL_15;
        }

        _CUILog(4, "CoreUI: %s invalid value skipping", v42, v43, v44, v45, v46, v47, "[CUICommonAssetStorage enumerateKeysAndObjectsUsingBlock:]");
        v23 = 0;
      }

      v58 = 0;
LABEL_15:
      v59 = [v58 bytes];
      if (!v59)
      {
        _CUILog(4, "CoreUI: %s can't get size of value skipping [data size:%d ptr:%p]", v60, v61, v62, v63, v64, v65, "[CUICommonAssetStorage enumerateKeysAndObjectsUsingBlock:]");
LABEL_20:
        v23 = 0;
        goto LABEL_21;
      }

      if (*v59 != 1129599817)
      {
        _CUILog(4, "CoreUI: %s skipping invalid CSIHeader [signature:%d]", v60, v61, v62, v63, v64, v65, "[CUICommonAssetStorage enumerateKeysAndObjectsUsingBlock:]");
        goto LABEL_20;
      }

      CUIFillRenditionKeyForCARKeyArray(v6, v25, v82);
      os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
      v66 = objc_autoreleasePoolPush();
      (*(a3 + 2))(a3, v6, v58);
      objc_autoreleasePoolPop(v66);
      os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
LABEL_21:

      BOMTreeIteratorNext(v7, v67, v68, v69, v70, v71, v72, v73);
      ++v24;
      if (BOMTreeIteratorIsAtEnd(v7, v74, v75, v76, v77, v78, v79, v80))
      {
        goto LABEL_24;
      }
    }
  }

  v23 = 1;
LABEL_24:
  free(v6);
  BOMTreeIteratorFree(v7);
  [v8 drain];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v23 & 1;
}

- (void)enumerateKeysAndObjectsWithoutIgnoringUsingBlock:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = [(CUICommonAssetStorage *)self keyFormat];
  v6 = malloc_type_calloc(v5->var2 + 1, 4uLL, 0x100004052888210uLL);
  v7 = BOMTreeIteratorNew(self->_imagedb, 0, 0, 0);
  v8 = objc_alloc_init(NSAutoreleasePool);
  if (!BOMTreeIteratorIsAtEnd(v7, v9, v10, v11, v12, v13, v14, v15))
  {
    v80 = v5;
    v23 = 0;
    do
    {
      v81 = 0;
      if (v23 >= 0x3E9)
      {
        [v8 drain];
        v8 = objc_alloc_init(NSAutoreleasePool);
        v23 = 0;
      }

      v24 = BOMTreeIteratorKey(v7, v16, v17, v18, v19, v20, v21, v22);
      v32 = BOMTreeIteratorKeySize(v7, v25, v26, v27, v28, v29, v30, v31);
      if ((*(self + 108) & 2) != 0)
      {
        v50 = v32;
        Value = BOMTreeReadValue(self->_imagedb, v24, v32, v35, v36, v37, v38, v39);
        if (BOMTreeGetValueSize(self->_imagedb, v24, v50, &v81, v52, v53, v54, v55))
        {
          v56 = 0;
          goto LABEL_11;
        }

        v57 = [NSData alloc];
        v49 = [v57 initWithBytesNoCopy:Value length:v81 freeWhenDone:0];
      }

      else
      {
        v40 = BOMTreeIteratorValue(v7, v33, v34, v35, v36, v37, v38, v39);
        v81 = BOMTreeIteratorValueSize(v7, v41, v42, v43, v44, v45, v46, v47);
        v48 = [NSData alloc];
        v49 = [v48 initWithBytes:v40 length:v81];
      }

      v56 = v49;
LABEL_11:
      v58 = [v56 bytes];
      if (!v58)
      {
        _CUILog(4, "CoreUI: %s can't get size of value skipping", v59, v60, v61, v62, v63, v64, "[CUICommonAssetStorage enumerateKeysAndObjectsWithoutIgnoringUsingBlock:]");
LABEL_16:
        v65 = 0;
        goto LABEL_17;
      }

      if (*v58 != 1129599817)
      {
        _CUILog(4, "CoreUI: %s skipping invalid CSIHeader", v59, v60, v61, v62, v63, v64, "[CUICommonAssetStorage enumerateKeysAndObjectsWithoutIgnoringUsingBlock:]");
        goto LABEL_16;
      }

      CUIFillRenditionKeyForCARKeyArray(v6, v24, v80);
      v65 = v56;
LABEL_17:
      os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
      (*(a3 + 2))(a3, v6, v65);
      os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);

      BOMTreeIteratorNext(v7, v66, v67, v68, v69, v70, v71, v72);
      ++v23;
    }

    while (!BOMTreeIteratorIsAtEnd(v7, v73, v74, v75, v76, v77, v78, v79));
  }

  free(v6);
  BOMTreeIteratorFree(v7);
  [v8 drain];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
}

- (BOOL)enumerateColorsBlock:(id)a3
{
  colordb = self->_colordb;
  if (colordb)
  {
    v5 = BOMTreeIteratorNew(colordb, 0, 0, 0);
    if (!BOMTreeIteratorIsAtEnd(v5, v6, v7, v8, v9, v10, v11, v12))
    {
      do
      {
        v20 = BOMTreeIteratorKey(v5, v13, v14, v15, v16, v17, v18, v19);
        v28 = BOMTreeIteratorValue(v5, v21, v22, v23, v24, v25, v26, v27);
        v29 = [[NSString alloc] initWithUTF8String:v20 + 4];
        (*(a3 + 2))(a3, v29, BYTE2(*(v28 + 8)), BYTE1(*(v28 + 8)), *(v28 + 8), HIBYTE(*(v28 + 8)));

        BOMTreeIteratorNext(v5, v30, v31, v32, v33, v34, v35, v36);
      }

      while (!BOMTreeIteratorIsAtEnd(v5, v37, v38, v39, v40, v41, v42, v43));
    }

    BOMTreeIteratorFree(v5);
  }

  return 1;
}

- (id)renditionInfoForIdentifier:(unsigned __int16)a3
{
  if (!self->_bitmapKeydb)
  {
    return 0;
  }

  v3 = a3;
  v30 = 0;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self renditionInfoCacheLock]);
  v5 = 0;
  while (self->_renditionInfoCacheLookup[v5] != v3)
  {
    if (++v5 == 20)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  v6 = self->_renditionInfoCache[v5];
LABEL_8:
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self renditionInfoCacheLock]);
  if (!v6)
  {
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    bitmapKeydb = self->_bitmapKeydb;
    if ((*(self + 108) & 2) != 0)
    {
      Value = BOMTreeReadValue(bitmapKeydb, v3, 2uLL, v7, v8, v9, v10, v11);
    }

    else
    {
      Value = BOMTreeGetValue(bitmapKeydb, v3, 2uLL, v7, v8, v9, v10, v11);
    }

    v6 = Value;
    if (Value)
    {
      if (BOMTreeGetValueSize(self->_bitmapKeydb, v3, 2uLL, &v30, v14, v15, v16, v17))
      {
        v6 = 0;
      }

      else
      {
        v18 = *(self + 108);
        v19 = [NSData alloc];
        if ((v18 & 2) != 0)
        {
          v20 = [v19 initWithBytesNoCopy:v6 length:v30 freeWhenDone:0];
        }

        else
        {
          v20 = [v19 initWithBytes:v6 length:v30];
        }

        v21 = v20;
        v6 = [[CUINamedRenditionInfo alloc] initWithData:v20 keyFormat:[(CUICommonAssetStorage *)self keyFormat] andPlatform:[(CUICommonAssetStorage *)self deploymentPlatform]];

        if (v6)
        {
          os_unfair_lock_lock([(CUICommonAssetStorage *)self renditionInfoCacheLock]);
          for (i = 0; i != 20; ++i)
          {
            v23 = self + 2 * i;
            if (!*(v23 + 60))
            {
              *(v23 + 60) = v3;
              self->_renditionInfoCache[i] = v6;
              goto LABEL_26;
            }
          }

          v24 = &self->_renditionInfoCache[1];
          v25 = &self->_renditionInfoCacheLookup[1];
          v26 = 19;
          do
          {
            *(v25 - 1) = *v25;
            v27 = *(v24 - 1);
            *(v24 - 1) = *v24;
            *v24 = 0;
            *v25++ = 0;
            ++v24;
            --v26;
          }

          while (v26);
          self->_renditionInfoCacheLookup[19] = v3;
          self->_renditionInfoCache[19] = v6;
LABEL_26:
          os_unfair_lock_unlock([(CUICommonAssetStorage *)self renditionInfoCacheLock]);
          v28 = v6;
        }
      }
    }

    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }

  return v6;
}

- (void)enumerateRenditionInfosUsingBlock:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = [(CUICommonAssetStorage *)self keyFormat];
  v6 = BOMTreeIteratorNew(self->_bitmapKeydb, 0, 0, 0);
  v55 = objc_alloc_init(NSAutoreleasePool);
  if (!BOMTreeIteratorIsAtEnd(v6, v7, v8, v9, v10, v11, v12, v13))
  {
    do
    {
      v21 = BOMTreeIteratorKey(v6, v14, v15, v16, v17, v18, v19, v20);
      v29 = BOMTreeIteratorValue(v6, v22, v23, v24, v25, v26, v27, v28);
      v37 = BOMTreeIteratorValueSize(v6, v30, v31, v32, v33, v34, v35, v36);
      if (v29 && v37)
      {
        v45 = [[NSData alloc] initWithBytes:v29 length:v37];
        v46 = [[CUINamedRenditionInfo alloc] initWithData:v45 keyFormat:v5 andPlatform:[(CUICommonAssetStorage *)self deploymentPlatform]];
        if (v46)
        {
          (*(a3 + 2))(a3, v21, v46);
        }
      }

      BOMTreeIteratorNext(v6, v38, v39, v40, v41, v42, v43, v44);
    }

    while (!BOMTreeIteratorIsAtEnd(v6, v47, v48, v49, v50, v51, v52, v53));
  }

  BOMTreeIteratorFree(v6);
  [v55 drain];
  v54 = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(v54);
}

- (const)renditionKeyForName:(const char *)a3 hotSpot:(CGPoint *)a4
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v7 = [(CUICommonAssetStorage *)self _renditionKeyForName:a3 hotSpot:a4];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v7;
}

- (const)_renditionKeyForName:(const char *)a3 hotSpot:(CGPoint *)a4
{
  v30 = 0;
  v29 = 0;
  v5 = -1.0;
  if (!a3)
  {
    v7 = -1.0;
    goto LABEL_6;
  }

  v7 = -1.0;
  if (!self->_facetKeysdb)
  {
LABEL_6:
    v21 = [NSMutableData dataWithBytes:&v30 length:4];
LABEL_7:
    if (a4)
    {
      a4->x = v7;
      a4->y = v5;
    }

    return [(NSMutableData *)v21 bytes];
  }

  v9 = [(CUICommonAssetStorage *)self swapped];
  v10 = strlen(a3);
  if (BOMTreeGetValueSize(self->_facetKeysdb, a3, v10, &v29, v11, v12, v13, v14))
  {
    return 0;
  }

  if ((*(self + 108) & 2) == 0 || (Value = BOMTreeReadValue(self->_facetKeysdb, a3, v10, v15, v16, v17, v18, v19)) == 0)
  {
    Value = BOMTreeGetValue(self->_facetKeysdb, a3, v10, v15, v16, v17, v18, v19);
  }

  result = 0;
  if (Value && v29)
  {
    v23 = *Value;
    if (v9)
    {
      v5 = (bswap32(*(Value + 2)) >> 16);
      v7 = __rev16(v23);
      LODWORD(v24) = bswap32(*(Value + 4)) >> 16;
    }

    else
    {
      v7 = v23;
      v5 = *(Value + 2);
      LODWORD(v24) = *(Value + 4);
    }

    v21 = [NSMutableData dataWithCapacity:4 * v24 + 4];
    __CFSetLastAllocationEventName();
    if (v24)
    {
      v24 = v24;
      v25 = (Value + 6);
      do
      {
        v28 = 0;
        v27 = *v25++;
        v26 = v27;
        if (v9)
        {
          Value = Value & 0xFFFFFFFF00000000 | v26;
          LODWORD(v26) = [(CUICommonAssetStorage *)self _swapRenditionKeyToken:Value];
        }

        v28 = v26;
        [(NSMutableData *)v21 appendBytes:&v28 length:4];
        --v24;
      }

      while (v24);
    }

    [(NSMutableData *)v21 appendBytes:&v30 length:4];
    if (v29)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  return result;
}

- (id)_allRenditionNames
{
  v3 = +[NSMutableArray array];
  facetKeysdb = self->_facetKeysdb;
  if (facetKeysdb)
  {
    v5 = BOMTreeIteratorNew(facetKeysdb, 0, 0, 0);
    v13 = v5;
    if (v5 && !BOMTreeIteratorIsAtEnd(v5, v6, v7, v8, v9, v10, v11, v12))
    {
      do
      {
        v21 = BOMTreeIteratorKeySize(v13, v14, v15, v16, v17, v18, v19, v20);
        v29 = BOMTreeIteratorKey(v13, v22, v23, v24, v25, v26, v27, v28);
        if (v21)
        {
          v37 = [[NSString alloc] initWithBytes:v29 length:v21 encoding:4];
          if (v37)
          {
            v38 = v37;
            [v3 addObject:v37];
          }
        }

        BOMTreeIteratorNext(v13, v30, v31, v32, v33, v34, v35, v36);
      }

      while (!BOMTreeIteratorIsAtEnd(v13, v39, v40, v41, v42, v43, v44, v45));
    }

    BOMTreeIteratorFree(v13);
  }

  return v3;
}

- (id)allRenditionNames
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v3 = [(CUICommonAssetStorage *)self _allRenditionNames];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v3;
}

- (id)facetValueNameMap
{
  v3 = objc_alloc_init(NSMutableDictionary);
  facetKeysdb = self->_facetKeysdb;
  if (facetKeysdb)
  {
    v5 = BOMTreeIteratorNew(facetKeysdb, 0, 0, 0);
    v13 = v5;
    if (v5 && !BOMTreeIteratorIsAtEnd(v5, v6, v7, v8, v9, v10, v11, v12))
    {
      do
      {
        v21 = BOMTreeIteratorValue(v13, v14, v15, v16, v17, v18, v19, v20);
        v29 = BOMTreeIteratorKeySize(v13, v22, v23, v24, v25, v26, v27, v28);
        v37 = [[NSString alloc] initWithBytes:BOMTreeIteratorKey(v13 length:v30 encoding:{v31, v32, v33, v34, v35, v36), v29, 4}];
        v38 = *(v21 + 4);
        if (v38)
        {
          v39 = 0;
          v40 = (v21 + 8);
          do
          {
            if (*(v40 - 1) == 17)
            {
              [v3 setObject:v37 forKeyedSubscript:{+[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", *v40)}];
              v38 = *(v21 + 4);
            }

            ++v39;
            v40 += 2;
          }

          while (v39 < v38);
        }

        BOMTreeIteratorNext(v13, v41, v42, v43, v44, v45, v46, v47);
      }

      while (!BOMTreeIteratorIsAtEnd(v13, v48, v49, v50, v51, v52, v53, v54));
    }

    BOMTreeIteratorFree(v13);
  }

  return v3;
}

- (id)renditionNameForKeyList:(_renditionkeytoken *)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  facetKeysdb = self->_facetKeysdb;
  if (facetKeysdb)
  {
    v6 = BOMTreeIteratorNew(facetKeysdb, 0, 0, 0);
    v14 = v6;
    if (v6 && !BOMTreeIteratorIsAtEnd(v6, v7, v8, v9, v10, v11, v12, v13))
    {
      do
      {
        v22 = BOMTreeIteratorKeySize(v14, v15, v16, v17, v18, v19, v20, v21);
        v30 = BOMTreeIteratorKey(v14, v23, v24, v25, v26, v27, v28, v29);
        v38 = BOMTreeIteratorValue(v14, v31, v32, v33, v34, v35, v36, v37);
        if (*(v38 + 4))
        {
          v46 = v38;
          v47 = 0;
          v48 = (v38 + 8);
          while (1)
          {
            v49 = *v48;
            if (v49 != CUIRenditionKeyValueForAttribute(&a3->identifier, *(v48 - 1)))
            {
              break;
            }

            v48 += 2;
            if (++v47 >= *(v46 + 4))
            {
              v50 = [[NSString alloc] initWithBytes:v30 length:v22 encoding:4];
              if (!v50)
              {
                break;
              }

              v58 = v50;
              goto LABEL_11;
            }
          }
        }

        BOMTreeIteratorNext(v14, v39, v40, v41, v42, v43, v44, v45);
      }

      while (!BOMTreeIteratorIsAtEnd(v14, v51, v52, v53, v54, v55, v56, v57));
    }

    v58 = 0;
LABEL_11:
    BOMTreeIteratorFree(v14);
  }

  else
  {
    v58 = 0;
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v58;
}

- (id)renditionNamesWithKeys
{
  v3 = +[NSMutableDictionary dictionary];
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  facetKeysdb = self->_facetKeysdb;
  if (facetKeysdb)
  {
    v5 = BOMTreeIteratorNew(facetKeysdb, 0, 0, 0);
    v13 = v5;
    if (v5 && !BOMTreeIteratorIsAtEnd(v5, v6, v7, v8, v9, v10, v11, v12))
    {
      do
      {
        v21 = BOMTreeIteratorValue(v13, v14, v15, v16, v17, v18, v19, v20);
        v29 = BOMTreeIteratorKeySize(v13, v22, v23, v24, v25, v26, v27, v28);
        v37 = [[NSString alloc] initWithBytes:BOMTreeIteratorKey(v13 length:v30 encoding:{v31, v32, v33, v34, v35, v36), v29, 4}];
        v38 = +[NSMutableString string];
        if (*(v21 + 4))
        {
          v39 = 0;
          v40 = (v21 + 8);
          do
          {
            [v38 appendFormat:@"%s:%d", CUIThemeAttributeNameToString(*(v40 - 1)), *v40];
            v41 = *(v21 + 4);
            if (v39 != v41 - 1)
            {
              [v38 appendString:{@", "}];
              v41 = *(v21 + 4);
            }

            v40 += 2;
            ++v39;
          }

          while (v39 < v41);
        }

        [v3 setObject:v38 forKey:v37];

        BOMTreeIteratorNext(v13, v42, v43, v44, v45, v46, v47, v48);
      }

      while (!BOMTreeIteratorIsAtEnd(v13, v49, v50, v51, v52, v53, v54, v55));
    }

    BOMTreeIteratorFree(v13);
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v3;
}

- (id)renditionNameForKeyBaseList:(const _renditionkeytoken *)a3
{
  v4 = CUIRenditionKeyValueForAttribute(&a3->identifier, 17);
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (self->_facetKeysdb)
  {
    if ([(CUICommonAssetStorage *)self facetValueNameDict])
    {
      facetValueNameDict = self->_facetValueNameDict;
    }

    else
    {
      facetValueNameDict = [(CUICommonAssetStorage *)self facetValueNameMap];
      self->_facetValueNameDict = facetValueNameDict;
    }

    v6 = [(NSDictionary *)facetValueNameDict objectForKeyedSubscript:[NSNumber numberWithUnsignedShort:v4]];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v6;
}

- (BOOL)getColor:(_colordef *)a3 forName:(const char *)a4
{
  v21 = 0;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (!a4 || !self->_colordb)
  {
    goto LABEL_12;
  }

  v23 = 0;
  memset(__s1, 0, sizeof(__s1));
  __strlcpy_chk();
  colordb = self->_colordb;
  if ((*(self + 108) & 2) == 0)
  {
    Value = BOMTreeGetValue(colordb, __s1, 0x84uLL, v7, v8, v9, v10, v11);
    if (Value)
    {
      goto LABEL_5;
    }

LABEL_12:
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
    return 0;
  }

  Value = BOMTreeReadValue(colordb, __s1, 0x84uLL, v7, v8, v9, v10, v11);
  if (!Value)
  {
    goto LABEL_12;
  }

LABEL_5:
  v18 = Value;
  if (a3 && !BOMTreeGetValueSize(self->_colordb, __s1, 0x84uLL, &v21, v14, v15, v16, v17) && v21 == 12)
  {
    v19 = *v18;
    a3->var2 = *(v18 + 8);
    *&a3->var0 = v19;
    if (*(self + 108))
    {
      a3->var2 = bswap32(*&a3->var2);
      *&a3->var0 = vrev32_s8(*&a3->var0);
    }
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return 1;
}

- (BOOL)hasColorForName:(const char *)a3
{
  if (!a3 || !self->_colordb)
  {
    return 0;
  }

  LODWORD(v12) = 0;
  __strlcpy_chk();
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock:0]);
  v9 = BOMTreeValueExists(self->_colordb, &v11, 0x84uLL, v4, v5, v6, v7, v8) != 0;
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v9;
}

- (const)_fontValueForFontType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (!self->_fontdb)
  {
    return 0;
  }

  memset(__s1, 0, sizeof(__s1));
  if (![a3 getBytes:__s1 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(a3, "length"), 0}])
  {
    return 0;
  }

  v15 = 0;
  ValueSize = BOMTreeGetValueSize(self->_fontdb, __s1, 0x80uLL, &v15, v4, v5, v6, v7);
  result = 0;
  if (!ValueSize && v15 == 132)
  {
    return BOMTreeGetValue(self->_fontdb, __s1, 0x80uLL, v8, v9, v10, v11, v12);
  }

  return result;
}

- (BOOL)getFontName:(id *)a3 baselineOffset:(float *)a4 forFontType:(id)a5
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v9 = [(CUICommonAssetStorage *)self _fontValueForFontType:a5];
  if (v9)
  {
    if (a3)
    {
      *a3 = [[NSString alloc] initWithBytes:v9 length:strlen(v9->var0) encoding:1];
    }

    if (a4)
    {
      *a4 = v9->var1;
    }
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v9 != 0;
}

- (BOOL)getBaselineOffset:(float *)a3 forFontType:(id)a4
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v7 = [(CUICommonAssetStorage *)self _fontValueForFontType:a4];
  if (a3 && v7)
  {
    *a3 = v7->var1;
  }

  v8 = v7 != 0;
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v8;
}

- (float)fontSizeForFontSizeType:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (a3 && self->_fontsizedb && (memset(__s1, 0, sizeof(__s1)), ([a3 getBytes:__s1 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(a3, "length"), 0}] & 1) != 0) && (v17 = 0, !BOMTreeGetValueSize(self->_fontsizedb, __s1, 0x80uLL, &v17, v5, v6, v7, v8)) && v17 == 4 && (Value = BOMTreeGetValue(self->_fontsizedb, __s1, 0x80uLL, v9, v10, v11, v12, v13)) != 0)
  {
    v15 = Value;
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
    return *v15;
  }

  else
  {
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
    return 0.0;
  }
}

- (void)enumerateBitmapIndexUsingBlock:(id)a3
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = [(CUICommonAssetStorage *)self keyFormat];
  v6 = [(CUICommonAssetStorage *)self deploymentPlatform];
  bitmapKeydb = self->_bitmapKeydb;
  if (bitmapKeydb)
  {
    v8 = BOMTreeIteratorNew(bitmapKeydb, 0, 0, 0);
    if (!BOMTreeIteratorIsAtEnd(v8, v9, v10, v11, v12, v13, v14, v15))
    {
      do
      {
        v23 = BOMTreeIteratorKey(v8, v16, v17, v18, v19, v20, v21, v22);
        v31 = BOMTreeIteratorValue(v8, v24, v25, v26, v27, v28, v29, v30);
        v39 = [[NSData alloc] initWithBytesNoCopy:v31 length:BOMTreeIteratorValueSize(v8 freeWhenDone:{v32, v33, v34, v35, v36, v37, v38), 0}];
        v40 = [[CUINamedRenditionInfo alloc] initWithData:v39 keyFormat:v5 andPlatform:v6];
        os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
        (*(a3 + 2))(a3, v23, v40);
        os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);

        BOMTreeIteratorNext(v8, v41, v42, v43, v44, v45, v46, v47);
      }

      while (!BOMTreeIteratorIsAtEnd(v8, v48, v49, v50, v51, v52, v53, v54));
    }

    BOMTreeIteratorFree(v8);
  }

  v55 = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(v55);
}

- (void)_addBitmapIndexForNameIdentifier:(unsigned __int16)a3 attribute:(int)a4 withValue:(unsigned __int16)a5 toDictionary:(id)a6
{
  v7 = a5;
  v8 = *&a4;
  v11 = [[NSNumber alloc] initWithInt:a3];
  v10 = [a6 objectForKey:?];
  if (!v10)
  {
    v10 = [[CUINamedRenditionInfo alloc] initWithKeyFormat:[(CUICommonAssetStorage *)self keyFormat] andPlatform:[(CUICommonAssetStorage *)self deploymentPlatform]];
    [a6 setObject:v10 forKey:v11];
  }

  [(CUINamedRenditionInfo *)v10 setAttributePresent:v8 withValue:v7];
}

- (BOOL)_buildBitmapInfoIntoDictionary:(id)a3
{
  v5 = [(CUICommonAssetStorage *)self keyFormat];
  self->_header->var4 = 0;
  v6 = BOMTreeIteratorNew(self->_imagedb, 0, 0, 0);
  if (BOMTreeIteratorIsAtEnd(v6, v7, v8, v9, v10, v11, v12, v13))
  {
    v21 = 1;
  }

  else
  {
    do
    {
      v22 = BOMTreeIteratorKey(v6, v14, v15, v16, v17, v18, v19, v20);
      v21 = v22 != 0;
      if (!v22)
      {
        break;
      }

      v30 = v22;
      var2 = v5->var2;
      var3 = v5->var3;
      v33 = v22;
      if (var2)
      {
        while (1)
        {
          v34 = *var3++;
          if (v34 == 17)
          {
            break;
          }

          ++v33;
          if (!--var2)
          {
            goto LABEL_11;
          }
        }

        v35 = *v33;
        if (*v33)
        {
          v36 = 0;
          do
          {
            [(CUICommonAssetStorage *)self _addBitmapIndexForNameIdentifier:v35 attribute:v5->var3[v36] withValue:*(v30 + 2 * v36) toDictionary:a3];
            ++v36;
          }

          while (v36 < v5->var2);
        }
      }

LABEL_11:
      ++self->_header->var4;
      BOMTreeIteratorNext(v6, v23, v24, v25, v26, v27, v28, v29);
    }

    while (!BOMTreeIteratorIsAtEnd(v6, v37, v38, v39, v40, v41, v42, v43));
  }

  BOMTreeIteratorFree(v6);
  return v21;
}

- (int)validateBitmapInfo
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v3 = [(CUICommonAssetStorage *)self deploymentPlatform];
  if (self->_bitmapKeydb)
  {
    v4 = v3;
    v5 = objc_alloc_init(NSMutableDictionary);
    [(CUICommonAssetStorage *)self _buildBitmapInfoIntoDictionary:v5];
    v6 = BOMTreeIteratorNew(self->_bitmapKeydb, 0, 0, 0);
    if (BOMTreeIteratorIsAtEnd(v6, v7, v8, v9, v10, v11, v12, v13))
    {
      BOMTreeIteratorFree(v6);
    }

    else
    {
      v22 = 1;
      do
      {
        v23 = BOMTreeIteratorKey(v6, v14, v15, v16, v17, v18, v19, v20);
        v31 = BOMTreeIteratorValue(v6, v24, v25, v26, v27, v28, v29, v30);
        v39 = [[NSData alloc] initWithBytes:v31 length:{BOMTreeIteratorValueSize(v6, v32, v33, v34, v35, v36, v37, v38)}];
        v40 = [[CUINamedRenditionInfo alloc] initWithData:v39 keyFormat:[(CUICommonAssetStorage *)self keyFormat] andPlatform:v4];
        v41 = [[NSNumber alloc] initWithInt:v23];
        v42 = [v5 objectForKey:v41];
        if (v42 && [(CUINamedRenditionInfo *)v40 isEqualToNamedRenditionInfo:v42])
        {
          [v5 removeObjectForKey:v41];
        }

        else
        {
          v22 = 0;
        }

        BOMTreeIteratorNext(v6, v43, v44, v45, v46, v47, v48, v49);
      }

      while (!BOMTreeIteratorIsAtEnd(v6, v50, v51, v52, v53, v54, v55, v56));
      BOMTreeIteratorFree(v6);
      if (!v22)
      {
        v21 = 0;
        goto LABEL_13;
      }
    }

    v21 = [v5 count] == 0;
LABEL_13:

    goto LABEL_14;
  }

  v21 = -1;
LABEL_14:
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v21;
}

- (int)validatekeyformat
{
  if (!BOMStorageGetNamedBlock([(CUICommonAssetStorage *)self _bomStorage], "KEYFORMATWORKAROUND"))
  {
    return -1;
  }

  NamedBlock = BOMStorageGetNamedBlock([(CUICommonAssetStorage *)self _bomStorage], "KEYFORMAT");
  if (!NamedBlock)
  {
    return 0;
  }

  v4 = NamedBlock;
  v5 = [(CUICommonAssetStorage *)self _bomStorage];
  v12 = BOMStorageSizeOfBlock(v5, v4, v6, v7, v8, v9, v10, v11);
  v13 = malloc_type_malloc(v12, 0x8106E4EAuLL);
  v14 = [(CUICommonAssetStorage *)self _bomStorage];
  BOMStorageCopyFromBlock(v14, v4, v13, v15, v16, v17, v18, v19);
  v20 = v13[2];
  if (v20)
  {
    v21 = v13 + 3;
    while (1)
    {
      v22 = *v21++;
      if (v22 >= 0x18)
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
  }

  else
  {
LABEL_7:
    v23 = 1;
  }

  free(v13);
  return v23;
}

- (unsigned)appearanceIdentifierForName:(id)a3
{
  if ((*(self + 108) & 4) != 0)
  {
    v3 = [(NSDictionary *)[(CUICommonAssetStorage *)self appearances] objectForKey:a3];
    if (v3)
    {
      LOWORD(v3) = [v3 unsignedIntegerValue];
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

- (id)nameForAppearanceIdentifier:(unsigned __int16)a3
{
  if (!self->_appearancedb)
  {
    return &stru_1F00D74D0;
  }

  v3 = a3;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = BOMTreeIteratorNew(self->_appearancedb, 0, 0, 0);
  v20 = &stru_1F00D74D0;
  if (!BOMTreeIteratorIsAtEnd(v5, v6, v7, v8, v9, v10, v11, v12))
  {
    while (1)
    {
      v21 = BOMTreeIteratorValue(v5, v13, v14, v15, v16, v17, v18, v19);
      if (v21)
      {
        if (*v21 == v3)
        {
          break;
        }
      }

      BOMTreeIteratorNext(v5, v22, v23, v24, v25, v26, v27, v28);
      if (BOMTreeIteratorIsAtEnd(v5, v29, v30, v31, v32, v33, v34, v35))
      {
        goto LABEL_9;
      }
    }

    v36 = BOMTreeIteratorKey(v5, v22, v23, v24, v25, v26, v27, v28);
    v20 = [[NSString alloc] initWithBytes:v36 length:BOMTreeIteratorKeySize(v5 encoding:{v37, v38, v39, v40, v41, v42, v43), 4}];
    v44 = v20;
  }

LABEL_9:
  BOMTreeIteratorFree(v5);
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v20;
}

- (unsigned)localizationIdentifierForName:(id)a3
{
  if ((*(self + 108) & 8) == 0)
  {
    return 0;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a3);
  v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x339A4ECBuLL);
  if (CFStringGetFileSystemRepresentation(a3, v7, MaximumSizeOfFileSystemRepresentation))
  {
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    v8 = [(CUICommonAssetStorage *)self localizationdb];
    v9 = strlen(v7);
    Value = BOMTreeReadValue(v8, v7, v9, v10, v11, v12, v13, v14);
    if (Value)
    {
      v3 = *Value;
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }

  else
  {
    v3 = 0;
  }

  free(v7);
  return v3;
}

- (id)nameForLocalizationIdentifier:(unsigned __int16)a3
{
  if (!self->_localizationdb)
  {
    return &stru_1F00D74D0;
  }

  v3 = a3;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = BOMTreeIteratorNew(self->_localizationdb, 0, 0, 0);
  v20 = &stru_1F00D74D0;
  if (!BOMTreeIteratorIsAtEnd(v5, v6, v7, v8, v9, v10, v11, v12))
  {
    while (1)
    {
      v21 = BOMTreeIteratorValue(v5, v13, v14, v15, v16, v17, v18, v19);
      if (v21)
      {
        if (*v21 == v3)
        {
          break;
        }
      }

      BOMTreeIteratorNext(v5, v22, v23, v24, v25, v26, v27, v28);
      if (BOMTreeIteratorIsAtEnd(v5, v29, v30, v31, v32, v33, v34, v35))
      {
        goto LABEL_9;
      }
    }

    v36 = BOMTreeIteratorKey(v5, v22, v23, v24, v25, v26, v27, v28);
    v20 = [[NSString alloc] initWithBytes:v36 length:BOMTreeIteratorKeySize(v5 encoding:{v37, v38, v39, v40, v41, v42, v43), 4}];
    v44 = v20;
  }

LABEL_9:
  BOMTreeIteratorFree(v5);
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v20;
}

- (BOOL)writeToPath:(id)a3 withTreePageSize:(unsigned int)a4
{
  v6 = BOMTreeStorage(self->_imagedb);
  v7 = BOMStorageNewWithOptionsAndSys([a3 fileSystemRepresentation], 0, 0);
  if (!v7)
  {
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -writeToPath:withTreePageSize: write file at '%@'", v8, v9, v10, v11, v12, v13, a3);
    return 0;
  }

  v14 = v7;
  if (!__copyBlock(v6, v7, "CARHEADER") || !__copyBlock(v6, v14, "CARGLOBALS") || !__copyBlock(v6, v14, "KEYFORMAT") || !__copyBlock(v6, v14, "KEYFORMATWORKAROUND") || !__copyBlock(v6, v14, "EXTERNAL_KEYS") || !__copyBlock(v6, v14, "EXTENDED_METADATA") || !__copyTree(v6, v14, "RENDITIONS", a4) || !__copyTree(v6, v14, "COLORS", a4) || !__copyTree(v6, v14, "FONTS", a4) || !__copyTree(v6, v14, "FONTSIZES", a4) || !__copyTree(v6, v14, "BEZELS", a4) || !__copyTree(v6, v14, "FACETKEYS", a4) || !__copyTree(v6, v14, "BITMAPKEYS", a4) || !__copyTree(v6, v14, "APPEARANCEKEYS", a4))
  {
    return 0;
  }

  return __copyTree(v6, v14, "LOCALIZATIONKEYS", a4);
}

@end