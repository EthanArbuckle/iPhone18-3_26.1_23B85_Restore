@interface CUIPlaceholderCUICommonAssetStorage
+ (BOOL)isValidAssetStorageWithBytes:(const void *)bytes length:(unint64_t)length;
+ (BOOL)isValidAssetStorageWithURL:(id)l;
- (BOOL)_buildBitmapInfoIntoDictionary:(id)dictionary;
- (BOOL)_commonInitWithStorage:(_BOMStorage *)storage forWritting:(BOOL)writting;
- (BOOL)assetExistsForKey:(id)key;
- (BOOL)assetExistsForKeyData:(const void *)data length:(unint64_t)length;
- (BOOL)enumerateColorsBlock:(id)block;
- (BOOL)enumerateKeysAndObjectsUsingBlock:(id)block;
- (BOOL)getBaselineOffset:(float *)offset forFontType:(id)type;
- (BOOL)getColor:(_colordef *)color forName:(const char *)name;
- (BOOL)getFontName:(id *)name baselineOffset:(float *)offset forFontType:(id)type;
- (BOOL)hasColorForName:(const char *)name;
- (BOOL)writeToPath:(id)path withTreePageSize:(unsigned int)size;
- (CUIPlaceholderCUICommonAssetStorage)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (CUIPlaceholderCUICommonAssetStorage)initWithPath:(id)path forWriting:(BOOL)writing;
- (NSDictionary)appearances;
- (const)_fontValueForFontType:(id)type;
- (const)_renditionKeyForName:(const char *)name hotSpot:(CGPoint *)spot;
- (const)keyFormat;
- (const)mainVersionString;
- (const)renditionKeyForName:(const char *)name hotSpot:(CGPoint *)spot;
- (const)versionString;
- (float)fontSizeForFontSizeType:(id)type;
- (id)_allRenditionNames;
- (id)_readAppearances;
- (id)allAssetKeys;
- (id)allRenditionNames;
- (id)assetForKey:(id)key;
- (id)assetKeysMatchingBlock:(id)block;
- (id)authoringTool;
- (id)catalogGlobalData;
- (id)deploymentPlatformString;
- (id)deploymentPlatformVersion;
- (id)description;
- (id)facetValueNameMap;
- (id)keyFormatData;
- (id)localizations;
- (id)nameForAppearanceIdentifier:(unsigned __int16)identifier;
- (id)nameForLocalizationIdentifier:(unsigned __int16)identifier;
- (id)path;
- (id)renditionInfoForIdentifier:(unsigned __int16)identifier;
- (id)renditionNameForKeyBaseList:(const _renditionkeytoken *)list;
- (id)renditionNameForKeyList:(_renditionkeytoken *)list;
- (id)renditionNamesWithKeys;
- (id)thinningArguments;
- (id)uuid;
- (int)validateBitmapInfo;
- (int)validatekeyformat;
- (int64_t)_storagefileTimestamp;
- (int64_t)deploymentPlatform;
- (int64_t)maximumRenditionKeyTokenCount;
- (int64_t)storageTimestamp;
- (unsigned)appearanceIdentifierForName:(id)name;
- (unsigned)associatedChecksum;
- (unsigned)colorSpaceID;
- (unsigned)distilledInCoreUIVersion;
- (unsigned)localizationIdentifierForName:(id)name;
- (unsigned)renditionCount;
- (unsigned)schemaVersion;
- (unsigned)storageVersion;
- (unsigned)thinnedWithCoreUIVersion;
- (void)_addBitmapIndexForNameIdentifier:(unsigned __int16)identifier attribute:(int)attribute withValue:(unsigned __int16)value toDictionary:(id)dictionary;
- (void)_bringHeaderInfoUpToDate;
- (void)_initDefaultHeaderVersion:(double)version versionString:(const char *)string;
- (void)_loadExtendedMetadata;
- (void)_swapHeader;
- (void)_swapKeyFormat;
- (void)_swapRenditionKeyArray:(unsigned __int16 *)array;
- (void)dealloc;
- (void)enumerateBitmapIndexUsingBlock:(id)block;
- (void)enumerateKeysAndObjectsWithoutIgnoringUsingBlock:(id)block;
- (void)enumerateRenditionInfosUsingBlock:(id)block;
- (void)setExternalTags:(id)tags;
@end

@implementation CUIPlaceholderCUICommonAssetStorage

- (void)setExternalTags:(id)tags
{
  externalTags = self->_externalTags;
  if (externalTags != tags)
  {

    v6 = self->_externalTags;

    v7 = v6;
  }
}

- (void)_initDefaultHeaderVersion:(double)version versionString:(const char *)string
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
  header->var1 = vcvtmd_u64_f64(version);
  *&header->var2 = 1;
  header->var4 = 0;
  strncpy(header->var5, string, 0x80uLL);
  uuid_generate_random(self->_header->var7);
  *&self->_header->var8 = xmmword_1B9E3B8E0;
  *&self->_lock._os_unfair_lock_opaque = 0;
}

- (void)_bringHeaderInfoUpToDate
{
  header = self->_header;
  if (header->var2 <= 5)
  {
    header->var9 = 1;
  }
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

- (CUIPlaceholderCUICommonAssetStorage)initWithPath:(id)path forWriting:(BOOL)writing
{
  writingCopy = writing;
  v25.receiver = self;
  v25.super_class = CUIPlaceholderCUICommonAssetStorage;
  v6 = [(CUIPlaceholderCUICommonAssetStorage *)&v25 init];
  v14 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  BOMExceptionHandlerSetDefault(v6, v7, v8, v9, v10, v11, v12, v13, v24);
  v15 = BOMStorageOpenWithSys([path fileSystemRepresentation], writingCopy, 0);
  if (!v15)
  {
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -initWithPath: Unable to read file at '%@'", v16, v17, v18, v19, v20, v21, path);
LABEL_7:

    return 0;
  }

  v22 = v15;
  if (![(CUIPlaceholderCUICommonAssetStorage *)v14 _commonInitWithStorage:v15 forWritting:writingCopy])
  {
    BOMStorageFree(v22);
    goto LABEL_7;
  }

LABEL_4:
  v14->_facetValueNameDict = 0;
  return v14;
}

- (CUIPlaceholderCUICommonAssetStorage)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v29.receiver = self;
  v29.super_class = CUIPlaceholderCUICommonAssetStorage;
  v6 = [(CUIPlaceholderCUICommonAssetStorage *)&v29 init];
  v14 = v6;
  if (v6)
  {
    BOMExceptionHandlerSetDefault(v6, v7, v8, v9, v10, v11, v12, v13, v29.receiver);
    v20 = BOMStorageOpenInRAM(bytes, length, 0, v15, v16, v17, v18, v19);
    if (!v20)
    {
      _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -initWithBytes:length: unable to read bytes", v21, v22, v23, v24, v25, v26, v29.receiver);
      goto LABEL_6;
    }

    v27 = v20;
    if (![(CUIPlaceholderCUICommonAssetStorage *)v14 _commonInitWithStorage:v20 forWritting:0])
    {
      BOMStorageFree(v27);
LABEL_6:

      return 0;
    }
  }

  return v14;
}

+ (BOOL)isValidAssetStorageWithBytes:(const void *)bytes length:(unint64_t)length
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  BOMExceptionHandlerSet(0, a2, bytes, length, v4, v5, v6, v7, 0);
  v15 = BOMStorageOpenInRAM(bytes, length, 0, v10, v11, v12, v13, v14);
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

+ (BOOL)isValidAssetStorageWithURL:(id)l
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v4 = BomSys_defaultNoMMAP();
  BOMExceptionHandlerSet(0, v5, v6, v7, v8, v9, v10, v11, 0);
  v12 = BOMStorageOpenWithSys([l fileSystemRepresentation], 0, v4);
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

- (BOOL)_commonInitWithStorage:(_BOMStorage *)storage forWritting:(BOOL)writting
{
  NamedBlock = BOMStorageGetNamedBlock(storage, "CARHEADER");
  if (NamedBlock)
  {
    v14 = NamedBlock;
    v15 = BOMStorageSizeOfBlock(storage, NamedBlock, v8, v9, v10, v11, v12, v13);
    if (v15 >= 0x1B5)
    {
      v191 = BOMStorageFileName(storage);
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
      if (writting)
      {
        v192 = BOMStorageFileName(storage);
        _CUILog(4, "CoreUI: Can't update header information for old version of CAR '%s'", v35, v36, v37, v38, v39, v40, v192);
        return 0;
      }

      [(CUIPlaceholderCUICommonAssetStorage *)self _initDefaultHeaderVersion:"EMPTY\n" versionString:0.0];
      header = self->_header;
    }

    BOMStorageCopyFromBlock(storage, v14, header, v30, v31, v32, v33, v34);
    if (self->_header->var0 == 1380013123)
    {
      [(CUIPlaceholderCUICommonAssetStorage *)self _swapHeader];
      *(self + 108) |= 1u;
    }

    [(CUIPlaceholderCUICommonAssetStorage *)self _bringHeaderInfoUpToDate];
  }

  else
  {
    v22 = BOMStorageFileName(storage);
    _CUILog(4, "CoreUI: Car file '%s' has no header information.  Using default values", v23, v24, v25, v26, v27, v28, v22);
    [(CUIPlaceholderCUICommonAssetStorage *)self _initDefaultHeaderVersion:"EMPTY\n" versionString:0.0];
  }

  self->_thinnedWithCoreUIVersion = -1;
  v41 = BOMStorageGetNamedBlock(storage, "CARGLOBALS");
  if (v41)
  {
    v48 = v41;
    v49 = BOMStorageSizeOfBlock(storage, v41, v42, v43, v44, v45, v46, v47);
    if (v49)
    {
      v50 = v49;
      v51 = malloc_type_malloc(v49, 0xD92A442DuLL);
      BOMStorageCopyFromBlock(storage, v48, v51, v52, v53, v54, v55, v56);
      self->_globals = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v51 length:v50];
      free(v51);
    }
  }

  v57 = BOMStorageGetNamedBlock(storage, "KEYFORMAT");
  if (v57)
  {
    v64 = v57;
    v65 = BOMStorageSizeOfBlock(storage, v57, v58, v59, v60, v61, v62, v63);
    if (v65 < 0xC)
    {
      v81 = BOMStorageFileName(storage);
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
    BOMStorageCopyFromBlock(storage, v64, v67, v69, v70, v71, v72, v73);
    if (*(self + 108))
    {
      [(CUIPlaceholderCUICommonAssetStorage *)self _swapKeyFormat];
    }

    if (**p_keyfmt != 1801874804)
    {
      v193 = BOMStorageFileName(storage);
      _CUILog(4, "CoreUI: Car file '%s' has erroneous key format information. Using CUISystemThemeRenditionKeyFormat", v88, v89, v90, v91, v92, v93, v193);
      goto LABEL_25;
    }

    if (4 * *(*p_keyfmt + 2) + 12 != v66)
    {
      v74 = BOMStorageFileName(storage);
      _CUILog(4, "CoreUI: Car file '%s' has erroneous key format information keyformat #keys %d doesn't match size %d. Using CUISystemThemeRenditionKeyFormat", v75, v76, v77, v78, v79, v80, v74);
LABEL_25:
      free(*p_keyfmt);
      goto LABEL_26;
    }
  }

LABEL_27:
  v94 = BOMStorageGetNamedBlock(storage, "KEYFORMATWORKAROUND");
  if (v94 && self->_keyfmt)
  {
    v101 = v94;
    v102 = BOMStorageSizeOfBlock(storage, v94, v95, v96, v97, v98, v99, v100);
    if (v102 < 0xC)
    {
      v116 = BOMStorageFileName(storage);
      _CUILog(4, "CoreUI: Car file '%s' KEY_FORMAT_WORKAROUND that is too short ignoring.", v117, v118, v119, v120, v121, v122, v116);
    }

    else
    {
      v103 = v102;
      v104 = malloc_type_malloc(v102, 0x2D84A0FBuLL);
      BOMStorageCopyFromBlock(storage, v101, v104, v105, v106, v107, v108, v109);
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

  v124 = BOMStorageGetNamedBlock(storage, "EXTERNAL_KEYS");
  if (v124)
  {
    v131 = v124;
    v132 = BOMStorageSizeOfBlock(storage, v124, v125, v126, v127, v128, v129, v130);
    v133 = malloc_type_malloc(v132, 0xD17EB229uLL);
    BOMStorageCopyFromBlock(storage, v131, v133, v134, v135, v136, v137, v138);
    if (*v133 == 1163414603)
    {
      v139 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (v133[2])
      {
        v140 = 0;
        v141 = v133 + 3;
        do
        {
          v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v141 + 2];
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
      v143 = BOMStorageFileName(storage);
      _CUILog(4, "CoreUI: Car file '%s' has erroneous external tags information ignoring", v144, v145, v146, v147, v148, v149, v143);
    }

    free(v133);
  }

  v150 = BOMTreeOpenWithName(storage, "RENDITIONS", writting);
  if (!v150)
  {
    v194 = BOMStorageFileName(storage);
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage No rendition tree found in '%s'", v152, v153, v154, v155, v156, v157, v194);
    return 0;
  }

  self->_imagedb = v150;
  self->_colordb = BOMTreeOpenWithName(storage, "COLORS", writting);
  self->_fontdb = BOMTreeOpenWithName(storage, "FONTS", writting);
  self->_fontsizedb = BOMTreeOpenWithName(storage, "FONTSIZES", writting);
  self->_facetKeysdb = BOMTreeOpenWithName(storage, "FACETKEYS", writting);
  self->_bitmapKeydb = BOMTreeOpenWithName(storage, "BITMAPKEYS", writting);
  self->_appearancedb = BOMTreeOpenWithName(storage, "APPEARANCEKEYS", writting);
  self->_localizationdb = BOMTreeOpenWithName(storage, "LOCALIZATIONKEYS", writting);
  if (BOMStorageIsOpenForWriting(storage) || !BOMStorageMemoryMapped(storage))
  {
    v151 = *(self + 108) & 0xFD;
  }

  else
  {
    v151 = *(self + 108) | 2;
  }

  *(self + 108) = v151;
  bitmapKeydb = self->_bitmapKeydb;
  if (bitmapKeydb && !writting)
  {
    v160 = BOMTreeIteratorNew(bitmapKeydb, 0, 0, 0);
    v161 = objc_autoreleasePoolPush();
    if (!BOMTreeIteratorIsAtEnd(v160, v162, v163, v164, v165, v166, v167, v168))
    {
      v176 = 22;
      do
      {
        [(CUIPlaceholderCUICommonAssetStorage *)self renditionInfoForIdentifier:BOMTreeIteratorKey(v160, v169, v170, v171, v172, v173, v174, v175)];
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
    *(self + 108) = *(self + 108) & 0xFB | (4 * CUIRenditionKeyHasIdentifier([(CUIPlaceholderCUICommonAssetStorage *)self keyFormat], 7));
  }

  *(self + 108) = *(self + 108) & 0xF7 | (8 * CUIRenditionKeyHasIdentifier([(CUIPlaceholderCUICommonAssetStorage *)self keyFormat], 13));
  return 1;
}

- (id)path
{
  v2 = BOMTreeStorage(self->_imagedb);
  v3 = BOMStorageFileName(v2);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = strlen(v3);

  return [defaultManager stringWithFileSystemRepresentation:v3 length:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = BOMTreeStorage(self->_imagedb);
  return [v3 stringWithFormat:@"<%@:%p '%s'>", v5, self, BOMStorageFileName(v6)];
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
  v9.super_class = CUIPlaceholderCUICommonAssetStorage;
  [(CUIPlaceholderCUICommonAssetStorage *)&v9 dealloc];
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
    return floor(0.0);
  }
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
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if (!_storagefileTimestamp_tstamp)
  {
    v3 = BOMTreeStorage(self->_imagedb);
    v4 = BOMStorageFileName(v3);
    memset(&v6, 0, sizeof(v6));
    stat(v4, &v6);
    _storagefileTimestamp_tstamp = v6.st_mtimespec.tv_sec;
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
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
    return [(CUIPlaceholderCUICommonAssetStorage *)self _storagefileTimestamp];
  }
}

- (id)keyFormatData
{
  [(CUIPlaceholderCUICommonAssetStorage *)self keyFormat];
  v2 = MEMORY[0x1E695DEF0];

  return [v2 dataWithBytes:? length:?];
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
    v6 = MEMORY[0x1E695DEF0];

    return [v6 data];
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

- (unsigned)thinnedWithCoreUIVersion
{
  result = self->_thinnedWithCoreUIVersion;
  if (result == -1)
  {
    thinningArguments = [(CUIPlaceholderCUICommonAssetStorage *)self thinningArguments];
    result = 0x7FFFFFFF;
    self->_thinnedWithCoreUIVersion = 0x7FFFFFFF;
    if (thinningArguments)
    {
      v6 = 0;
      if ([thinningArguments hasPrefix:@"carutil"])
      {
        v5 = [MEMORY[0x1E696AE88] scannerWithString:thinningArguments];
        [v5 scanUpToCharactersFromSet:objc_msgSend(MEMORY[0x1E696AB08] intoString:{"decimalDigitCharacterSet"), 0}];
        if ([v5 scanInt:&v6])
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
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_header->var7];

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

- (void)_loadExtendedMetadata
{
  if (!self->_extendedMetadata)
  {
    v3 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
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

- (id)thinningArguments
{
  [(CUIPlaceholderCUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AEC0];

  return [v4 stringWithUTF8String:extendedMetadata->var1];
}

- (id)deploymentPlatformString
{
  [(CUIPlaceholderCUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata || !extendedMetadata->var3[0])
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AEC0];

  return [v4 stringWithUTF8String:extendedMetadata->var3];
}

- (int64_t)deploymentPlatform
{
  deploymentPlatformString = [(CUIPlaceholderCUICommonAssetStorage *)self deploymentPlatformString];

  return CUIPlatformForPlatformString(deploymentPlatformString);
}

- (id)deploymentPlatformVersion
{
  [(CUIPlaceholderCUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AEC0];

  return [v4 stringWithUTF8String:extendedMetadata->var2];
}

- (id)authoringTool
{
  [(CUIPlaceholderCUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AEC0];

  return [v4 stringWithUTF8String:extendedMetadata->var4];
}

- (void)_swapRenditionKeyArray:(unsigned __int16 *)array
{
  maximumRenditionKeyTokenCount = [(CUIPlaceholderCUICommonAssetStorage *)self maximumRenditionKeyTokenCount];
  if (maximumRenditionKeyTokenCount >= 1)
  {
    do
    {
      *array = bswap32(*array) >> 16;
      ++array;
      --maximumRenditionKeyTokenCount;
    }

    while (maximumRenditionKeyTokenCount);
  }
}

- (BOOL)assetExistsForKey:(id)key
{
  bytes = [key bytes];
  v6 = [key length];

  return [(CUIPlaceholderCUICommonAssetStorage *)self assetExistsForKeyData:bytes length:v6];
}

- (BOOL)assetExistsForKeyData:(const void *)data length:(unint64_t)length
{
  [+[CUIPlaceholderCUIRuntimeStatistics sharedRuntimeStatistics](CUIPlaceholderCUIRuntimeStatistics "sharedRuntimeStatistics")];
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  LOBYTE(length) = BOMTreeValueExists(self->_imagedb, data, length, v7, v8, v9, v10, v11) != 0;
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return length;
}

- (id)assetForKey:(id)key
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  bytes = [key bytes];
  v6 = [key length];
  size = 0;
  if (BOMTreeGetValueSize(self->_imagedb, bytes, v6, &size, v7, v8, v9, v10))
  {
    goto LABEL_2;
  }

  if ((*(self + 108) & 2) != 0)
  {
    Value = BOMTreeReadValue(self->_imagedb, bytes, v6, v11, v12, v13, v14, v15);
    if (Value)
    {
      v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:Value length:size freeWhenDone:0];
LABEL_9:
      v16 = v18;
      goto LABEL_10;
    }
  }

  v16 = BOMTreeGetValue(self->_imagedb, bytes, v6, v11, v12, v13, v14, v15);
  if (!v16)
  {
    goto LABEL_10;
  }

  v19 = malloc_type_malloc(size, 0x36A11318uLL);
  __CFSetLastAllocationEventName();
  if (v19)
  {
    memcpy(v19, v16, size);
    v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v19 length:size];
    goto LABEL_9;
  }

LABEL_2:
  v16 = 0;
LABEL_10:
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v16;
}

- (id)allAssetKeys
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CUIPlaceholderCUICommonAssetStorage_allAssetKeys__block_invoke;
  v5[3] = &unk_1E7ED9A78;
  v5[4] = v3;
  [(CUIPlaceholderCUICommonAssetStorage *)self assetKeysMatchingBlock:v5];
  return v3;
}

uint64_t __51__CUIPlaceholderCUICommonAssetStorage_allAssetKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[CUIPlaceholderCUIRenditionKey alloc] initWithKeyList:a2];
  [*(a1 + 32) addObject:v3];

  return 0;
}

- (id)assetKeysMatchingBlock:(id)block
{
  v54 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  keyFormat = [(CUIPlaceholderCUICommonAssetStorage *)self keyFormat];
  v52 = 0u;
  memset(v53, 0, 28);
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  var2 = keyFormat->var2;
  if (var2 < 0x18)
  {
    v7 = &v49;
  }

  else
  {
    v7 = malloc_type_calloc(var2 + 2, 4uLL, 0x100004052888210uLL);
    var2 = keyFormat->var2;
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
      if ([(CUIPlaceholderCUICommonAssetStorage *)self swapped:v49])
      {
        [(CUIPlaceholderCUICommonAssetStorage *)self _swapRenditionKeyArray:v24];
      }

      CUIFillRenditionKeyForCARKeyArray(v7, v24, keyFormat);
      os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
      v33 = (*(block + 2))(block, v7, keyFormat);
      os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
      if (v33)
      {
        if (!v23)
        {
          v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        [v23 addObject:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", v24, v32)}];
      }

      if ([(CUIPlaceholderCUICommonAssetStorage *)self swapped])
      {
        [(CUIPlaceholderCUICommonAssetStorage *)self _swapRenditionKeyArray:v24];
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

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock:v49]);
  return v23;
}

- (BOOL)enumerateKeysAndObjectsUsingBlock:(id)block
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  keyFormat = [(CUIPlaceholderCUICommonAssetStorage *)self keyFormat];
  v6 = malloc_type_calloc(keyFormat->var2 + 1, 4uLL, 0x100004052888210uLL);
  v7 = BOMTreeIteratorNew(self->_imagedb, 0, 0, 0);
  v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!BOMTreeIteratorIsAtEnd(v7, v9, v10, v11, v12, v13, v14, v15))
  {
    v82 = keyFormat;
    v24 = 0;
    v23 = 1;
    while (1)
    {
      v83 = 0;
      if (v24 >= 0x65)
      {
        [v8 drain];
        v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
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
          v57 = objc_alloc(MEMORY[0x1E695DEF0]);
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
          v49 = objc_alloc(MEMORY[0x1E695DEF0]);
          v50 = [v49 initWithBytes:v48 length:v83];
LABEL_12:
          v58 = v50;
          goto LABEL_15;
        }

        _CUILog(4, "CoreUI: %s invalid value skipping", v42, v43, v44, v45, v46, v47, "[CUIPlaceholderCUICommonAssetStorage enumerateKeysAndObjectsUsingBlock:]");
        v23 = 0;
      }

      v58 = 0;
LABEL_15:
      bytes = [v58 bytes];
      if (!bytes)
      {
        _CUILog(4, "CoreUI: %s can't get size of value skipping [data size:%d ptr:%p]", v60, v61, v62, v63, v64, v65, "[CUIPlaceholderCUICommonAssetStorage enumerateKeysAndObjectsUsingBlock:]");
LABEL_20:
        v23 = 0;
        goto LABEL_21;
      }

      if (*bytes != 1129599817)
      {
        _CUILog(4, "CoreUI: %s skipping invalid CSIHeader [signature:%d]", v60, v61, v62, v63, v64, v65, "[CUIPlaceholderCUICommonAssetStorage enumerateKeysAndObjectsUsingBlock:]");
        goto LABEL_20;
      }

      CUIFillRenditionKeyForCARKeyArray(v6, v25, v82);
      os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
      v66 = objc_autoreleasePoolPush();
      (*(block + 2))(block, v6, v58);
      objc_autoreleasePoolPop(v66);
      os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
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
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v23 & 1;
}

- (void)enumerateKeysAndObjectsWithoutIgnoringUsingBlock:(id)block
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  keyFormat = [(CUIPlaceholderCUICommonAssetStorage *)self keyFormat];
  v6 = malloc_type_calloc(keyFormat->var2 + 1, 4uLL, 0x100004052888210uLL);
  v7 = BOMTreeIteratorNew(self->_imagedb, 0, 0, 0);
  v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!BOMTreeIteratorIsAtEnd(v7, v9, v10, v11, v12, v13, v14, v15))
  {
    v80 = keyFormat;
    v23 = 0;
    do
    {
      v81 = 0;
      if (v23 >= 0x3E9)
      {
        [v8 drain];
        v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
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

        v57 = objc_alloc(MEMORY[0x1E695DEF0]);
        v49 = [v57 initWithBytesNoCopy:Value length:v81 freeWhenDone:0];
      }

      else
      {
        v40 = BOMTreeIteratorValue(v7, v33, v34, v35, v36, v37, v38, v39);
        v81 = BOMTreeIteratorValueSize(v7, v41, v42, v43, v44, v45, v46, v47);
        v48 = objc_alloc(MEMORY[0x1E695DEF0]);
        v49 = [v48 initWithBytes:v40 length:v81];
      }

      v56 = v49;
LABEL_11:
      bytes = [v56 bytes];
      if (!bytes)
      {
        _CUILog(4, "CoreUI: %s can't get size of value skipping", v59, v60, v61, v62, v63, v64, "[CUIPlaceholderCUICommonAssetStorage enumerateKeysAndObjectsWithoutIgnoringUsingBlock:]");
LABEL_16:
        v65 = 0;
        goto LABEL_17;
      }

      if (*bytes != 1129599817)
      {
        _CUILog(4, "CoreUI: %s skipping invalid CSIHeader", v59, v60, v61, v62, v63, v64, "[CUIPlaceholderCUICommonAssetStorage enumerateKeysAndObjectsWithoutIgnoringUsingBlock:]");
        goto LABEL_16;
      }

      CUIFillRenditionKeyForCARKeyArray(v6, v24, v80);
      v65 = v56;
LABEL_17:
      os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
      (*(block + 2))(block, v6, v65);
      os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);

      BOMTreeIteratorNext(v7, v66, v67, v68, v69, v70, v71, v72);
      ++v23;
    }

    while (!BOMTreeIteratorIsAtEnd(v7, v73, v74, v75, v76, v77, v78, v79));
  }

  free(v6);
  BOMTreeIteratorFree(v7);
  [v8 drain];
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
}

- (BOOL)enumerateColorsBlock:(id)block
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
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v20 + 4];
        (*(block + 2))(block, v29, BYTE2(*(v28 + 8)), BYTE1(*(v28 + 8)), *(v28 + 8), HIBYTE(*(v28 + 8)));

        BOMTreeIteratorNext(v5, v30, v31, v32, v33, v34, v35, v36);
      }

      while (!BOMTreeIteratorIsAtEnd(v5, v37, v38, v39, v40, v41, v42, v43));
    }

    BOMTreeIteratorFree(v5);
  }

  return 1;
}

- (id)renditionInfoForIdentifier:(unsigned __int16)identifier
{
  if (!self->_bitmapKeydb)
  {
    return 0;
  }

  identifierCopy = identifier;
  v30 = 0;
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self renditionInfoCacheLock]);
  v5 = 0;
  while (self->_renditionInfoCacheLookup[v5] != identifierCopy)
  {
    if (++v5 == 20)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  v6 = self->_renditionInfoCache[v5];
LABEL_8:
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self renditionInfoCacheLock]);
  if (!v6)
  {
    os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
    bitmapKeydb = self->_bitmapKeydb;
    if ((*(self + 108) & 2) != 0)
    {
      Value = BOMTreeReadValue(bitmapKeydb, identifierCopy, 2uLL, v7, v8, v9, v10, v11);
    }

    else
    {
      Value = BOMTreeGetValue(bitmapKeydb, identifierCopy, 2uLL, v7, v8, v9, v10, v11);
    }

    v6 = Value;
    if (Value)
    {
      if (BOMTreeGetValueSize(self->_bitmapKeydb, identifierCopy, 2uLL, &v30, v14, v15, v16, v17))
      {
        v6 = 0;
      }

      else
      {
        v18 = *(self + 108);
        v19 = objc_alloc(MEMORY[0x1E695DEF0]);
        if ((v18 & 2) != 0)
        {
          v20 = [v19 initWithBytesNoCopy:v6 length:v30 freeWhenDone:0];
        }

        else
        {
          v20 = [v19 initWithBytes:v6 length:v30];
        }

        v21 = v20;
        v6 = [[CUIPlaceholderCUINamedRenditionInfo alloc] initWithData:v20 keyFormat:[(CUIPlaceholderCUICommonAssetStorage *)self keyFormat] andPlatform:[(CUIPlaceholderCUICommonAssetStorage *)self deploymentPlatform]];

        if (v6)
        {
          os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self renditionInfoCacheLock]);
          for (i = 0; i != 20; ++i)
          {
            v23 = self + 2 * i;
            if (!*(v23 + 60))
            {
              *(v23 + 60) = identifierCopy;
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
          self->_renditionInfoCacheLookup[19] = identifierCopy;
          self->_renditionInfoCache[19] = v6;
LABEL_26:
          os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self renditionInfoCacheLock]);
          v28 = v6;
        }
      }
    }

    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  }

  return v6;
}

- (void)enumerateRenditionInfosUsingBlock:(id)block
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  keyFormat = [(CUIPlaceholderCUICommonAssetStorage *)self keyFormat];
  v6 = BOMTreeIteratorNew(self->_bitmapKeydb, 0, 0, 0);
  v55 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!BOMTreeIteratorIsAtEnd(v6, v7, v8, v9, v10, v11, v12, v13))
  {
    do
    {
      v21 = BOMTreeIteratorKey(v6, v14, v15, v16, v17, v18, v19, v20);
      v29 = BOMTreeIteratorValue(v6, v22, v23, v24, v25, v26, v27, v28);
      v37 = BOMTreeIteratorValueSize(v6, v30, v31, v32, v33, v34, v35, v36);
      if (v29 && v37)
      {
        v45 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v29 length:v37];
        v46 = [[CUIPlaceholderCUINamedRenditionInfo alloc] initWithData:v45 keyFormat:keyFormat andPlatform:[(CUIPlaceholderCUICommonAssetStorage *)self deploymentPlatform]];
        if (v46)
        {
          (*(block + 2))(block, v21, v46);
        }
      }

      BOMTreeIteratorNext(v6, v38, v39, v40, v41, v42, v43, v44);
    }

    while (!BOMTreeIteratorIsAtEnd(v6, v47, v48, v49, v50, v51, v52, v53));
  }

  BOMTreeIteratorFree(v6);
  [v55 drain];
  lock = [(CUIPlaceholderCUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (const)renditionKeyForName:(const char *)name hotSpot:(CGPoint *)spot
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  v7 = [(CUIPlaceholderCUICommonAssetStorage *)self _renditionKeyForName:name hotSpot:spot];
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v7;
}

- (const)_renditionKeyForName:(const char *)name hotSpot:(CGPoint *)spot
{
  v30 = 0;
  v29 = 0;
  v5 = -1.0;
  if (!name)
  {
    v7 = -1.0;
    goto LABEL_6;
  }

  v7 = -1.0;
  if (!self->_facetKeysdb)
  {
LABEL_6:
    v21 = [MEMORY[0x1E695DF88] dataWithBytes:&v30 length:4];
LABEL_7:
    if (spot)
    {
      spot->x = v7;
      spot->y = v5;
    }

    return [v21 bytes];
  }

  swapped = [(CUIPlaceholderCUICommonAssetStorage *)self swapped];
  v10 = strlen(name);
  if (BOMTreeGetValueSize(self->_facetKeysdb, name, v10, &v29, v11, v12, v13, v14))
  {
    return 0;
  }

  if ((*(self + 108) & 2) == 0 || (Value = BOMTreeReadValue(self->_facetKeysdb, name, v10, v15, v16, v17, v18, v19)) == 0)
  {
    Value = BOMTreeGetValue(self->_facetKeysdb, name, v10, v15, v16, v17, v18, v19);
  }

  result = 0;
  if (Value && v29)
  {
    v23 = *Value;
    if (swapped)
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

    v21 = [MEMORY[0x1E695DF88] dataWithCapacity:4 * v24 + 4];
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
        if (swapped)
        {
          Value = Value & 0xFFFFFFFF00000000 | v26;
          LODWORD(v26) = [(CUIPlaceholderCUICommonAssetStorage *)self _swapRenditionKeyToken:Value];
        }

        v28 = v26;
        [v21 appendBytes:&v28 length:4];
        --v24;
      }

      while (v24);
    }

    [v21 appendBytes:&v30 length:4];
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
  array = [MEMORY[0x1E695DF70] array];
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
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v29 length:v21 encoding:4];
          if (v37)
          {
            v38 = v37;
            [array addObject:v37];
          }
        }

        BOMTreeIteratorNext(v13, v30, v31, v32, v33, v34, v35, v36);
      }

      while (!BOMTreeIteratorIsAtEnd(v13, v39, v40, v41, v42, v43, v44, v45));
    }

    BOMTreeIteratorFree(v13);
  }

  return array;
}

- (id)allRenditionNames
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  _allRenditionNames = [(CUIPlaceholderCUICommonAssetStorage *)self _allRenditionNames];
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return _allRenditionNames;
}

- (id)facetValueNameMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
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
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:BOMTreeIteratorKey(v13 length:v30 encoding:{v31, v32, v33, v34, v35, v36), v29, 4}];
        v38 = *(v21 + 4);
        if (v38)
        {
          v39 = 0;
          v40 = (v21 + 8);
          do
          {
            if (*(v40 - 1) == 17)
            {
              [v3 setObject:v37 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", *v40)}];
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

- (id)renditionNameForKeyList:(_renditionkeytoken *)list
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
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
            if (v49 != CUIRenditionKeyValueForAttribute(&list->identifier, *(v48 - 1)))
            {
              break;
            }

            v48 += 2;
            if (++v47 >= *(v46 + 4))
            {
              v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v30 length:v22 encoding:4];
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

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v58;
}

- (id)renditionNamesWithKeys
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
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
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:BOMTreeIteratorKey(v13 length:v30 encoding:{v31, v32, v33, v34, v35, v36), v29, 4}];
        string = [MEMORY[0x1E696AD60] string];
        if (*(v21 + 4))
        {
          v39 = 0;
          v40 = (v21 + 8);
          do
          {
            [string appendFormat:@"%s:%d", CUIThemeAttributeNameToString(*(v40 - 1)), *v40];
            v41 = *(v21 + 4);
            if (v39 != v41 - 1)
            {
              [string appendString:{@", "}];
              v41 = *(v21 + 4);
            }

            v40 += 2;
            ++v39;
          }

          while (v39 < v41);
        }

        [dictionary setObject:string forKey:v37];

        BOMTreeIteratorNext(v13, v42, v43, v44, v45, v46, v47, v48);
      }

      while (!BOMTreeIteratorIsAtEnd(v13, v49, v50, v51, v52, v53, v54, v55));
    }

    BOMTreeIteratorFree(v13);
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return dictionary;
}

- (id)renditionNameForKeyBaseList:(const _renditionkeytoken *)list
{
  v4 = CUIRenditionKeyValueForAttribute(&list->identifier, 17);
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if (self->_facetKeysdb)
  {
    if ([(CUIPlaceholderCUICommonAssetStorage *)self facetValueNameDict])
    {
      facetValueNameDict = self->_facetValueNameDict;
    }

    else
    {
      facetValueNameDict = [(CUIPlaceholderCUICommonAssetStorage *)self facetValueNameMap];
      self->_facetValueNameDict = facetValueNameDict;
    }

    v6 = -[NSDictionary objectForKeyedSubscript:](facetValueNameDict, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedShort:v4]);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v6;
}

- (BOOL)getColor:(_colordef *)color forName:(const char *)name
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if (!name || !self->_colordb)
  {
    goto LABEL_12;
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  __strlcpy_chk();
  colordb = self->_colordb;
  if ((*(self + 108) & 2) == 0)
  {
    Value = BOMTreeGetValue(colordb, v22, 0x84uLL, v7, v8, v9, v10, v11);
    if (Value)
    {
      goto LABEL_5;
    }

LABEL_12:
    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
    return 0;
  }

  Value = BOMTreeReadValue(colordb, v22, 0x84uLL, v7, v8, v9, v10, v11);
  if (!Value)
  {
    goto LABEL_12;
  }

LABEL_5:
  v18 = Value;
  if (color && !BOMTreeGetValueSize(self->_colordb, v22, 0x84uLL, &v21, v14, v15, v16, v17) && v21 == 12)
  {
    v19 = *v18;
    color->var2 = *(v18 + 8);
    *&color->var0 = v19;
    if (*(self + 108))
    {
      color->var2 = bswap32(*&color->var2);
      *&color->var0 = vrev32_s8(*&color->var0);
    }
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return 1;
}

- (BOOL)hasColorForName:(const char *)name
{
  v13 = *MEMORY[0x1E69E9840];
  if (!name || !self->_colordb)
  {
    return 0;
  }

  LODWORD(v12) = 0;
  __strlcpy_chk();
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock:0]);
  v9 = BOMTreeValueExists(self->_colordb, &v11, 0x84uLL, v4, v5, v6, v7, v8) != 0;
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v9;
}

- (const)_fontValueForFontType:(id)type
{
  v17 = *MEMORY[0x1E69E9840];
  if (!type)
  {
    return 0;
  }

  if (!self->_fontdb)
  {
    return 0;
  }

  memset(v16, 0, sizeof(v16));
  if (![type getBytes:v16 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(type, "length"), 0}])
  {
    return 0;
  }

  v15 = 0;
  ValueSize = BOMTreeGetValueSize(self->_fontdb, v16, 0x80uLL, &v15, v4, v5, v6, v7);
  result = 0;
  if (!ValueSize && v15 == 132)
  {
    return BOMTreeGetValue(self->_fontdb, v16, 0x80uLL, v8, v9, v10, v11, v12);
  }

  return result;
}

- (BOOL)getFontName:(id *)name baselineOffset:(float *)offset forFontType:(id)type
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  v9 = [(CUIPlaceholderCUICommonAssetStorage *)self _fontValueForFontType:type];
  if (v9)
  {
    if (name)
    {
      *name = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:strlen(v9->var0) encoding:1];
    }

    if (offset)
    {
      *offset = v9->var1;
    }
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v9 != 0;
}

- (BOOL)getBaselineOffset:(float *)offset forFontType:(id)type
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  v7 = [(CUIPlaceholderCUICommonAssetStorage *)self _fontValueForFontType:type];
  if (offset && v7)
  {
    *offset = v7->var1;
  }

  v8 = v7 != 0;
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v8;
}

- (float)fontSizeForFontSizeType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if (type && self->_fontsizedb && (memset(v18, 0, sizeof(v18)), ([type getBytes:v18 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(type, "length"), 0}] & 1) != 0) && (v17 = 0, !BOMTreeGetValueSize(self->_fontsizedb, v18, 0x80uLL, &v17, v5, v6, v7, v8)) && v17 == 4 && (Value = BOMTreeGetValue(self->_fontsizedb, v18, 0x80uLL, v9, v10, v11, v12, v13)) != 0)
  {
    v15 = Value;
    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
    return *v15;
  }

  else
  {
    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
    return 0.0;
  }
}

- (void)enumerateBitmapIndexUsingBlock:(id)block
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  keyFormat = [(CUIPlaceholderCUICommonAssetStorage *)self keyFormat];
  deploymentPlatform = [(CUIPlaceholderCUICommonAssetStorage *)self deploymentPlatform];
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
        v39 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v31 length:BOMTreeIteratorValueSize(v8 freeWhenDone:{v32, v33, v34, v35, v36, v37, v38), 0}];
        v40 = [[CUIPlaceholderCUINamedRenditionInfo alloc] initWithData:v39 keyFormat:keyFormat andPlatform:deploymentPlatform];
        os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
        (*(block + 2))(block, v23, v40);
        os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);

        BOMTreeIteratorNext(v8, v41, v42, v43, v44, v45, v46, v47);
      }

      while (!BOMTreeIteratorIsAtEnd(v8, v48, v49, v50, v51, v52, v53, v54));
    }

    BOMTreeIteratorFree(v8);
  }

  lock = [(CUIPlaceholderCUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (void)_addBitmapIndexForNameIdentifier:(unsigned __int16)identifier attribute:(int)attribute withValue:(unsigned __int16)value toDictionary:(id)dictionary
{
  valueCopy = value;
  v8 = *&attribute;
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:identifier];
  v10 = [dictionary objectForKey:?];
  if (!v10)
  {
    v10 = [[CUIPlaceholderCUINamedRenditionInfo alloc] initWithKeyFormat:[(CUIPlaceholderCUICommonAssetStorage *)self keyFormat] andPlatform:[(CUIPlaceholderCUICommonAssetStorage *)self deploymentPlatform]];
    [dictionary setObject:v10 forKey:v11];
  }

  [(CUIPlaceholderCUINamedRenditionInfo *)v10 setAttributePresent:v8 withValue:valueCopy];
}

- (BOOL)_buildBitmapInfoIntoDictionary:(id)dictionary
{
  keyFormat = [(CUIPlaceholderCUICommonAssetStorage *)self keyFormat];
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
      var2 = keyFormat->var2;
      var3 = keyFormat->var3;
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
            [(CUIPlaceholderCUICommonAssetStorage *)self _addBitmapIndexForNameIdentifier:v35 attribute:keyFormat->var3[v36] withValue:*(v30 + 2 * v36) toDictionary:dictionary];
            ++v36;
          }

          while (v36 < keyFormat->var2);
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
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  deploymentPlatform = [(CUIPlaceholderCUICommonAssetStorage *)self deploymentPlatform];
  if (self->_bitmapKeydb)
  {
    v4 = deploymentPlatform;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CUIPlaceholderCUICommonAssetStorage *)self _buildBitmapInfoIntoDictionary:v5];
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
        v39 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v31 length:{BOMTreeIteratorValueSize(v6, v32, v33, v34, v35, v36, v37, v38)}];
        v40 = [[CUIPlaceholderCUINamedRenditionInfo alloc] initWithData:v39 keyFormat:[(CUIPlaceholderCUICommonAssetStorage *)self keyFormat] andPlatform:v4];
        v41 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v23];
        v42 = [v5 objectForKey:v41];
        if (v42 && [(CUIPlaceholderCUINamedRenditionInfo *)v40 isEqualToNamedRenditionInfo:v42])
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
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v21;
}

- (int)validatekeyformat
{
  if (!BOMStorageGetNamedBlock([(CUIPlaceholderCUICommonAssetStorage *)self _bomStorage], "KEYFORMATWORKAROUND"))
  {
    return -1;
  }

  NamedBlock = BOMStorageGetNamedBlock([(CUIPlaceholderCUICommonAssetStorage *)self _bomStorage], "KEYFORMAT");
  if (!NamedBlock)
  {
    return 0;
  }

  v4 = NamedBlock;
  _bomStorage = [(CUIPlaceholderCUICommonAssetStorage *)self _bomStorage];
  v12 = BOMStorageSizeOfBlock(_bomStorage, v4, v6, v7, v8, v9, v10, v11);
  v13 = malloc_type_malloc(v12, 0x8106E4EAuLL);
  _bomStorage2 = [(CUIPlaceholderCUICommonAssetStorage *)self _bomStorage];
  BOMStorageCopyFromBlock(_bomStorage2, v4, v13, v15, v16, v17, v18, v19);
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

- (unsigned)appearanceIdentifierForName:(id)name
{
  if ((*(self + 108) & 4) != 0)
  {
    v3 = [(NSDictionary *)[(CUIPlaceholderCUICommonAssetStorage *)self appearances] objectForKey:name];
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

- (id)nameForAppearanceIdentifier:(unsigned __int16)identifier
{
  if (!self->_appearancedb)
  {
    return &stru_1F37DEE28;
  }

  identifierCopy = identifier;
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  v5 = BOMTreeIteratorNew(self->_appearancedb, 0, 0, 0);
  v20 = &stru_1F37DEE28;
  if (!BOMTreeIteratorIsAtEnd(v5, v6, v7, v8, v9, v10, v11, v12))
  {
    while (1)
    {
      v21 = BOMTreeIteratorValue(v5, v13, v14, v15, v16, v17, v18, v19);
      if (v21)
      {
        if (*v21 == identifierCopy)
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
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v36 length:BOMTreeIteratorKeySize(v5 encoding:{v37, v38, v39, v40, v41, v42, v43), 4}];
    v44 = v20;
  }

LABEL_9:
  BOMTreeIteratorFree(v5);
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v20;
}

- (NSDictionary)appearances
{
  result = self->_appearances;
  if (!result)
  {
    result = [-[CUIPlaceholderCUICommonAssetStorage _readAppearances](self "_readAppearances")];
    self->_appearances = result;
  }

  return result;
}

- (id)_readAppearances
{
  if (self->_appearancedb)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
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
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v28 length:BOMTreeIteratorKeySize(v4 encoding:{v29, v30, v31, v32, v33, v34, v35), 4}];
          [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v27), v36}];
        }

        BOMTreeIteratorNext(v4, v20, v21, v22, v23, v24, v25, v26);
      }

      while (!BOMTreeIteratorIsAtEnd(v4, v37, v38, v39, v40, v41, v42, v43));
    }

    BOMTreeIteratorFree(v4);
    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
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

- (unsigned)localizationIdentifierForName:(id)name
{
  if ((*(self + 108) & 8) == 0)
  {
    return 0;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(name);
  v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x339A4ECBuLL);
  if (CFStringGetFileSystemRepresentation(name, v7, MaximumSizeOfFileSystemRepresentation))
  {
    os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
    localizationdb = [(CUIPlaceholderCUICommonAssetStorage *)self localizationdb];
    v9 = strlen(v7);
    Value = BOMTreeReadValue(localizationdb, v7, v9, v10, v11, v12, v13, v14);
    if (Value)
    {
      v3 = *Value;
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  }

  else
  {
    v3 = 0;
  }

  free(v7);
  return v3;
}

- (id)nameForLocalizationIdentifier:(unsigned __int16)identifier
{
  if (!self->_localizationdb)
  {
    return &stru_1F37DEE28;
  }

  identifierCopy = identifier;
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  v5 = BOMTreeIteratorNew(self->_localizationdb, 0, 0, 0);
  v20 = &stru_1F37DEE28;
  if (!BOMTreeIteratorIsAtEnd(v5, v6, v7, v8, v9, v10, v11, v12))
  {
    while (1)
    {
      v21 = BOMTreeIteratorValue(v5, v13, v14, v15, v16, v17, v18, v19);
      if (v21)
      {
        if (*v21 == identifierCopy)
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
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v36 length:BOMTreeIteratorKeySize(v5 encoding:{v37, v38, v39, v40, v41, v42, v43), 4}];
    v44 = v20;
  }

LABEL_9:
  BOMTreeIteratorFree(v5);
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v20;
}

- (id)localizations
{
  if (self->_localizationdb)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
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
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v28 length:BOMTreeIteratorKeySize(v4 encoding:{v29, v30, v31, v32, v33, v34, v35), 4}];
          [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v27), v36}];
        }

        BOMTreeIteratorNext(v4, v20, v21, v22, v23, v24, v25, v26);
      }

      while (!BOMTreeIteratorIsAtEnd(v4, v37, v38, v39, v40, v41, v42, v43));
    }

    BOMTreeIteratorFree(v4);
    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
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

- (BOOL)writeToPath:(id)path withTreePageSize:(unsigned int)size
{
  v6 = BOMTreeStorage(self->_imagedb);
  v7 = BOMStorageNewWithOptionsAndSys([path fileSystemRepresentation], 0, 0);
  if (!v7)
  {
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -writeToPath:withTreePageSize: write file at '%@'", v8, v9, v10, v11, v12, v13, path);
    return 0;
  }

  v14 = v7;
  if (!__copyBlock(v6, v7, "CARHEADER") || !__copyBlock(v6, v14, "CARGLOBALS") || !__copyBlock(v6, v14, "KEYFORMAT") || !__copyBlock(v6, v14, "KEYFORMATWORKAROUND") || !__copyBlock(v6, v14, "EXTERNAL_KEYS") || !__copyBlock(v6, v14, "EXTENDED_METADATA") || !__copyTree(v6, v14, "RENDITIONS", size) || !__copyTree(v6, v14, "COLORS", size) || !__copyTree(v6, v14, "FONTS", size) || !__copyTree(v6, v14, "FONTSIZES", size) || !__copyTree(v6, v14, "BEZELS", size) || !__copyTree(v6, v14, "FACETKEYS", size) || !__copyTree(v6, v14, "BITMAPKEYS", size) || !__copyTree(v6, v14, "APPEARANCEKEYS", size))
  {
    return 0;
  }

  return __copyTree(v6, v14, "LOCALIZATIONKEYS", size);
}

@end