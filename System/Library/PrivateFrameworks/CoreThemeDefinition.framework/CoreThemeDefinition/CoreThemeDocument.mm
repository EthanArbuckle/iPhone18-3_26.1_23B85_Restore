@interface CoreThemeDocument
+ (BOOL)defaultAllowsExtendedRangePixelFormats;
+ (id)_imageAssetURLsByCopyingFileURLs:(id)ls toManagedLocationAtURL:(id)l error:(id *)error;
+ (id)_sharedDocumentList;
+ (id)createConfiguredDocumentAtURL:(id)l error:(id *)error;
+ (id)createConfiguredDocumentAtURL:(id)l targetPlatform:(int64_t)platform error:(id *)error;
+ (id)dataModelNameForVersion:(int64_t)version;
+ (id)defaultThemeBitSourceURLForDocumentURL:(id)l;
+ (id)migrateDocumentAtURL:(id)l ofType:(id)type error:(id *)error;
+ (int)shouldConvertColorsFromColorSpaceWithIdentifier:(unint64_t)identifier toIdentifier:(unint64_t)toIdentifier error:(id *)error;
+ (int64_t)dataModelVersion;
+ (int64_t)dataModelVersionFromMetadata:(id)metadata;
+ (int64_t)targetPlatformForMOC:(id)c;
+ (void)_addThemeDocument:(id)document;
+ (void)initialize;
- (BOOL)_canremoveKeyAttribte:(unsigned __int16)attribte;
- (BOOL)_matchesAllExceptGamut:(id)gamut andKeySpec:(id)spec;
- (BOOL)_production:(id)_production containsScale:(unsigned int)scale andIdiom:(unsigned int)idiom andSubtype:(unsigned int)subtype;
- (BOOL)_testRenditionForP3:(id)p3;
- (BOOL)_updateRenditionPackings:(id)packings error:(id *)error;
- (BOOL)allowsExtendedRangePixelFormats;
- (BOOL)buildModelError:(id *)error;
- (BOOL)canImportNamedAssetImportInfo:(id)info;
- (BOOL)checkCompatibilityOfDocumentAtURL:(id)l ofType:(id)type error:(id *)error;
- (BOOL)configurePersistentStoreCoordinatorForURL:(id)l ofType:(id)type modelConfiguration:(id)configuration storeOptions:(id)options error:(id *)error;
- (BOOL)createCustomArtworkProductionsForCustomAssets:(id)assets withImportInfos:(id)infos error:(id *)error;
- (BOOL)createPSDReferenceArtworkForRenditionGroup:(id)group atDestination:(id)destination error:(id *)error;
- (BOOL)customizationExistsForSchemaDefinition:(id)definition;
- (BOOL)customizeSchemaEffectDefinition:(id)definition shouldReplaceExisting:(BOOL)existing error:(id *)error;
- (BOOL)needToCreateForwardstopFor2018DeploymentVariant:(id)variant withCompressionTypes:(id)types;
- (BOOL)needToCreateForwardstopFor2019DeploymentVariant:(id)variant withCompressionTypes:(id)types;
- (BOOL)readFromURL:(id)l ofType:(id)type error:(id *)error;
- (BOOL)renameThemeBitSourceFolderTo:(id)to error:(id *)error;
- (BOOL)shouldAllowHevcCompression;
- (BOOL)shouldCreate2018ForwardstopForLossless;
- (BOOL)shouldGenerateDisplayGamut:(unsigned int)gamut;
- (BOOL)shouldGenerateScale:(unsigned int)scale;
- (CGColorSpace)createCGColorSpaceWithIdentifier:(unint64_t)identifier;
- (CoreThemeDocument)init;
- (CoreThemeDocument)initWithContentsOfURL:(id)l ofType:(id)type error:(id *)error;
- (CoreThemeDocument)initWithType:(id)type error:(id *)error;
- (CoreThemeDocument)initWithType:(id)type targetPlatform:(int64_t)platform error:(id *)error;
- (NSURL)themeBitSourceURL;
- (NSUUID)uuid;
- (TDCatalogGlobals)catalogGlobals;
- (const)renditionKeyFormat;
- (const)untrimmedRenditionKeyFormat;
- (id)_addAssetsAtFileURLs:(id)ls createProductions:(BOOL)productions referenceFiles:(BOOL)files bitSource:(id)source customInfos:(id)infos sortedCustomInfos:(id *)customInfos;
- (id)_addAssetsFromCustomAssetInfos:(id)infos bitSource:(id)source error:(id *)error;
- (id)_cachedConstantsForEntity:(id)entity;
- (id)_createNamedElementWithIdentifier:(int64_t)identifier;
- (id)_createNamedElementWithNextAvailableIdentifier;
- (id)_createPhotoshopElementProductionWithAsset:(id)asset;
- (id)_customizedSchemaDefinitionsForEntity:(id)entity;
- (id)_genericPartDefinition;
- (id)_iconLayerStackFromLayerStackRendition:(id)rendition withName:(id)name matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance error:(id *)error;
- (id)_namedColorFromColorRendition:(id)rendition;
- (id)_namedGradientFromGradientRendition:(id)rendition matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance;
- (id)_namedImageEffectPartDefinition;
- (id)_namedImagePartDefinition;
- (id)_namedTextEffectPartDefinition;
- (id)_predicateForRenditionKeySpec:(id)spec;
- (id)_renditionInSet:(id)set matchingAppearance:(id)appearance;
- (id)_sizeIndexesByNameFromNamedAssetImportInfos:(id)infos;
- (id)_themeBitSource:(id *)source;
- (id)_themeBitSourceForReferencedFilesAtURLs:(id)ls createIfNecessary:(BOOL)necessary;
- (id)allObjectsForEntity:(id)entity withSortDescriptors:(id)descriptors;
- (id)appearanceWithIdentifier:(int64_t)identifier;
- (id)appearanceWithIdentifier:(int64_t)identifier name:(id)name createIfNeeded:(BOOL)needed;
- (id)artworkFormat;
- (id)assetAtFileURL:(id)l;
- (id)assetAtPath:(id)path;
- (id)compressionTypes;
- (id)constantWithName:(id)name forIdentifier:(int64_t)identifier;
- (id)createAssetWithName:(id)name inCategory:(id)category forThemeBitSource:(id)source;
- (id)createEffectStyleProductionForPartDefinition:(id)definition withNameIdentifier:(id)identifier;
- (id)createElementProductionWithAsset:(id)asset;
- (id)createNamedColorProductionsForImportInfos:(id)infos error:(id *)error;
- (id)createNamedEffectProductionWithName:(id)name isText:(BOOL)text;
- (id)createNamedGradientProductionsForImportInfos:(id)infos error:(id *)error;
- (id)createProductionWithRenditionGroup:(id)group forPartDefinition:(id)definition artworkFormat:(id)format nameElement:(id)element shouldReplaceExisting:(BOOL)existing error:(id *)error;
- (id)createReferencePNGForSchemaRendition:(id)rendition withPartDefinition:(id)definition atLocation:(id)location error:(id *)error;
- (id)createTextStyleProductionsForImportInfos:(id)infos error:(id *)error;
- (id)defaultBaseFileNameForSchemaRendition:(id)rendition withPartDefinition:(id)definition;
- (id)defaultPNGFileNameForSchemaRendition:(id)rendition withPartDefinition:(id)definition;
- (id)defaultPathComponentsForPartDefinition:(id)definition;
- (id)deploymentTargets;
- (id)directions;
- (id)displayGamuts;
- (id)elementProductionsWithName:(id)name;
- (id)featureSetClasses;
- (id)folderNameFromRenditionKey:(id)key forPartDefinition:(id)definition;
- (id)glyphRenderingModes;
- (id)glyphWeights;
- (id)glyphsSizes;
- (id)historian;
- (id)idioms;
- (id)localizationWithIdentifier:(int64_t)identifier;
- (id)localizationWithIdentifier:(int64_t)identifier name:(id)name createIfNeeded:(BOOL)needed;
- (id)managedObjectModel;
- (id)mappingForPhotoshopLayerIndex:(int64_t)index themeDrawingLayerIdentifier:(int64_t)identifier;
- (id)metadatumForKey:(id)key;
- (id)minimalDisplayNameForThemeConstant:(id)constant;
- (id)namedArtworkProductionWithName:(id)name;
- (id)namedArtworkProductions;
- (id)namedEffectProductionWithName:(id)name;
- (id)namedEffectProductions;
- (id)namedElementWithName:(id)name;
- (id)namedElementsForElementDefinition:(id)definition;
- (id)newObjectForEntity:(id)entity;
- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors;
- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors error:(id *)error;
- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors withContext:(id)context error:(id *)error;
- (id)pathToAsset:(id)asset;
- (id)persistentStoreTypeForFileType:(id)type;
- (id)psdImageRefForAsset:(id)asset;
- (id)relativePathToProductionData;
- (id)renditionsMatchingRenditionKeySpec:(id)spec;
- (id)rootPathForProductionData;
- (id)schemaDefinitionWithElementID:(int64_t)d;
- (id)schemaPartDefinitionWithElementID:(int64_t)d partID:(int64_t)iD;
- (id)sizeClasses;
- (id)slicesComputedForImageSize:(CGSize)size usingSliceInsets:(id)insets resizableSliceSize:(CGSize)sliceSize withRenditionType:(int64_t)type;
- (id)textureFaces;
- (id)themeBitSourceFolderName;
- (id)themeConstant:(id)constant withIdentifier:(int64_t)identifier;
- (id)updateAutomaticTexturesForCustomInfos:(id)infos allTextureInfos:(id)textureInfos;
- (id)updateToEmbeddedSchemaVersion2AndReturnAlertString:(id *)string;
- (id)updatedVersionsMetadataFromMetadata:(id)metadata;
- (int)renditionKeySemantics;
- (int64_t)_compareFlattenedKeySpec1:(id)spec1 toKeySpec2:(id)spec2;
- (int64_t)targetPlatform;
- (uint64_t)_tidyUpLayerStacks;
- (uint64_t)catalogGlobals;
- (uint64_t)checksum;
- (unint64_t)colorSpaceID;
- (unint64_t)countForEntity:(id)entity withPredicate:(id)predicate;
- (unint64_t)countOfRenditionsMatchingRenditionKeySpec:(id)spec;
- (unint64_t)countOfRenditionsMatchingRenditionKeySpecs:(id)specs;
- (unsigned)checksum;
- (void)_addLayerReference:(id)reference toMutableIconLayerStack:(id)stack matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance error:(id *)error;
- (void)_addLegacyIconAssetsForLayerStack:(id)stack forAppearance:(id)appearance renderedAppearance:(unint64_t)renderedAppearance renderingMode:(id)mode error:(id *)error;
- (void)_addLegacyIconAssetsForLayerStackProduction:(id)production withName:(id)name error:(id *)error;
- (void)_addResolvedLayerReferenceToFlattenedImageRendition:(id)rendition usingArtworkRendition:(id)artworkRendition andLayerReference:(id)reference;
- (void)_automaticP3GenerationFromSRGB;
- (void)_automaticSRGBGenerationFromP3;
- (void)_backwardsCompatibilityPatchForLayoutDirection;
- (void)_configureAfterFirstSave;
- (void)_createForwardstopRenditions;
- (void)_delete:(id)_delete withRendition:(id)rendition;
- (void)_generateWatchImages;
- (void)_getFilename:(id *)filename scaleFactor:(unsigned int *)factor category:(id *)category bitSource:(id *)source forFileURL:(id)l;
- (void)_groupPackableRenditions;
- (void)_insertRendition:(id)rendition forKey:(id)key;
- (void)_makeRadiosityImages;
- (void)_makeSolidLayerStackTextures;
- (void)_normalizeRenditionKeySpec:(id)spec forSchemaRendition:(id)rendition;
- (void)_optimizeForDeviceTraits;
- (void)_processModelProductions;
- (void)_removeRedundantPDFBasedRenditions:(id)renditions;
- (void)_removeRedundantPDFBasedRenditionsForAssets:(id)assets;
- (void)_tidyUpLayerStacks;
- (void)_tidyUpRecognitionImages;
- (void)_updateDeviceTraits;
- (void)_updateKeyFormatWithContext:(id)context;
- (void)addDeviceTraitForOptimization:(id)optimization;
- (void)addThemeBitSourceAtPath:(id)path createProductions:(BOOL)productions;
- (void)changedObjectsNotification:(id)notification;
- (void)convertColorsFromColorSpaceWithIdentifier:(unint64_t)identifier toIdentifier:(unint64_t)toIdentifier;
- (void)createForwardstops:(id)forwardstops withCompressionTypes:(id)types withDeploymentTargets:(id)targets;
- (void)createNamedRecognitionObjectsForAssets:(id)assets customInfos:(id)infos error:(id *)error;
- (void)createNamedRenditionGroupProductionsForImportInfos:(id)infos error:(id *)error;
- (void)dealloc;
- (void)deleteNamedAssets:(id)assets shouldDeleteAssetFiles:(BOOL)files completionHandler:(id)handler;
- (void)deleteObject:(id)object;
- (void)deleteObjects:(id)objects;
- (void)exportCursorsToURL:(id)l;
- (void)importCursorsFromURL:(id)l getUnusedImportedCursors:(id *)cursors getUnupdatedCursors:(id *)unupdatedCursors;
- (void)importCustomAssetsWithImportInfos:(id)infos completionHandler:(id)handler;
- (void)importNamedAssetsFromFileURLs:(id)ls referenceFiles:(BOOL)files completionHandler:(id)handler;
- (void)importNamedAssetsWithImportInfos:(id)infos referenceFiles:(BOOL)files completionHandler:(id)handler;
- (void)incrementallyPackRenditionsSinceDate:(id)date error:(id *)error;
- (void)packRenditionsError:(id *)error;
- (void)primeArrayControllers;
- (void)resetThemeConstants;
- (void)setMetadatum:(id)metadatum forKey:(id)key;
- (void)setMinimumDeploymentVersion:(id)version;
- (void)setOptimizeForDeviceTraits:(id)traits;
- (void)setRelativePathToProductionData:(id)data;
- (void)setTargetPlatform:(int64_t)platform;
- (void)setUuid:(id)uuid;
- (void)updateRenditionSpec:(id)spec;
@end

@implementation CoreThemeDocument

+ (void)initialize
{
  __coreThemeLoggingEnabled = getenv("CoreThemeLoggingEnabled") != 0;
  v2 = getenv("CoreUI_PACKING");
  if (v2)
  {
    v3 = v2;
    v4 = strdup(v2);
    __stringp = v4;
    v5 = strsep(&__stringp, ":");
    v6 = strsep(&__stringp, ":");
    v7 = atoi(v5);
    __packing_max_area = v7;
    if (v6)
    {
      v8 = atoi(v6);
      __packing_imageSize_allowed = v8;
    }

    else
    {
      v8 = __packing_imageSize_allowed;
    }

    free(v4);
    NSLog(&cfstr_Corethemedocum_0.isa, v3, v7, v8);
  }
}

- (void)setMinimumDeploymentVersion:(id)version
{
  minimumDeploymentVersion = self->_minimumDeploymentVersion;
  if (minimumDeploymentVersion != version)
  {

    v6 = [version copy];
    self->_minimumDeploymentVersion = v6;
    v7 = [(NSString *)v6 componentsSeparatedByString:@"."];
    v8 = [(NSArray *)v7 count];
    if (v8)
    {
      v9 = v8;
      self->_majorVersion = [-[NSArray objectAtIndex:](v7 objectAtIndex:{0), "intValue"}];
      if (v9 != 1)
      {
        self->_minorVersion = [-[NSArray objectAtIndex:](v7 objectAtIndex:{1), "intValue"}];
        if (v9 < 3)
        {
          v10 = 0;
        }

        else
        {
          v10 = [-[NSArray objectAtIndex:](v7 objectAtIndex:{2), "intValue"}];
        }

LABEL_8:
        self->_patchVersion = v10;
        if ([(CoreThemeDocument *)self targetPlatform])
        {
          if ([(CoreThemeDocument *)self targetPlatform]== 5)
          {
LABEL_10:
            v11 = MEMORY[0x277D02668];
            v12 = 2;
LABEL_26:
            [v11 setFileEncoding:v12];
            goto LABEL_27;
          }

          targetPlatform = [(CoreThemeDocument *)self targetPlatform];
          majorVersion = self->_majorVersion;
          if (targetPlatform == 4)
          {
            if (majorVersion >= 2)
            {
              goto LABEL_10;
            }

            v11 = MEMORY[0x277D02668];
            if (majorVersion == 1)
            {
LABEL_25:
              v12 = 1;
              goto LABEL_26;
            }
          }

          else
          {
            if (majorVersion >= 9)
            {
              goto LABEL_10;
            }

            v11 = MEMORY[0x277D02668];
            if (majorVersion == 8)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          v13 = self->_majorVersion;
          if (v13 >= 10)
          {
            if (v13 != 10)
            {
              goto LABEL_10;
            }

            minorVersion = self->_minorVersion;
            if (minorVersion > 10)
            {
              goto LABEL_10;
            }

            if (minorVersion >= 10)
            {
              v11 = MEMORY[0x277D02668];
              goto LABEL_25;
            }
          }

          v11 = MEMORY[0x277D02668];
        }

        v12 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      self->_majorVersion = 0x7FFFFFFF;
    }

    v10 = 0;
    self->_minorVersion = 0;
    goto LABEL_8;
  }

LABEL_27:

  [(CoreThemeDocument *)self _updateDeviceTraits];
}

- (void)setOptimizeForDeviceTraits:(id)traits
{
  if (traits)
  {
    [(CoreThemeDocument *)self addDeviceTraitForOptimization:?];
  }

  else
  {
    [(CoreThemeDocument *)self removeDeviceTraitsForOptimization];
  }
}

- (void)addDeviceTraitForOptimization:(id)optimization
{
  if (optimization)
  {
    deviceTraits = self->_deviceTraits;
    if (!deviceTraits)
    {
      deviceTraits = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_deviceTraits = deviceTraits;
    }

    [(NSMutableArray *)deviceTraits addObject:optimization];
    if ([optimization dynamicDisplayModeValue] == 1)
    {
      v6 = [optimization copyWithZone:{-[CoreThemeDocument zone](self, "zone")}];
      [v6 setScale:1.0];
      [v6 setDisplayGamut:@"sRGB"];
      [(NSMutableArray *)self->_deviceTraits addObject:v6];
    }
  }
}

- (BOOL)shouldGenerateScale:(unsigned int)scale
{
  v18 = *MEMORY[0x277D85DE8];
  deviceTraits = self->_deviceTraits;
  if (!deviceTraits)
  {
LABEL_11:
    LOBYTE(v5) = 1;
    goto LABEL_12;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableArray *)deviceTraits countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    scaleCopy = scale;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(deviceTraits);
      }

      [*(*(&v13 + 1) + 8 * v9) scale];
      if (v10 == scaleCopy)
      {
        goto LABEL_11;
      }

      if (v6 == ++v9)
      {
        v6 = [(NSMutableArray *)deviceTraits countByEnumeratingWithState:&v13 objects:v17 count:16];
        LOBYTE(v5) = 0;
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)updateRenditionSpec:(id)spec
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  if (![(CoreThemeDocument *)self targetPlatform])
  {
    majorVersion = self->_majorVersion;
    if (majorVersion < 10 || (majorVersion == 10 ? (v9 = self->_minorVersion <= 9) : (v9 = 0), v9))
    {
      v7 = 0;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if ([(CoreThemeDocument *)self targetPlatform]== 5 || [(CoreThemeDocument *)self targetPlatform]!= 1 && [(CoreThemeDocument *)self targetPlatform]!= 4 && [(CoreThemeDocument *)self targetPlatform]!= 3 && [(CoreThemeDocument *)self targetPlatform]!= 2)
  {
LABEL_16:
    v7 = 1;
    goto LABEL_18;
  }

  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  v6 = self->_majorVersion;
  if (targetPlatform != 4)
  {
    if (v6 < 8 || (v11 = 1, v6 == 8) && self->_minorVersion < 0)
    {
      v11 = 0;
    }

    [spec setAllowsMultiPassEncoding:v11];
    [spec setAllowsOptimalRowbytesPacking:v11];
    v12 = self->_majorVersion;
    if (v12 > 8)
    {
      goto LABEL_20;
    }

    v7 = 0;
    if (v12 == 8 && self->_minorVersion >= 4)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v7 = v6 > 1;
LABEL_18:
  [spec setAllowsMultiPassEncoding:v7];
LABEL_19:
  [spec setAllowsOptimalRowbytesPacking:v7];
LABEL_20:
  shouldSupportCompactCompression = [(CoreThemeDocument *)self shouldSupportCompactCompression];

  [spec setAllowsCompactCompression:shouldSupportCompactCompression];
}

- (BOOL)shouldAllowHevcCompression
{
  if ([(CoreThemeDocument *)self featureEnabled:20])
  {
    return 0;
  }

  return [(CoreThemeDocument *)self featureEnabled:12];
}

- (BOOL)shouldCreate2018ForwardstopForLossless
{
  if ([(CoreThemeDocument *)self featureEnabled:11])
  {
    return 0;
  }

  else
  {
    return ![(CoreThemeDocument *)self featureEnabled:13];
  }
}

- (void)changedObjectsNotification:(id)notification
{
  if ([objc_msgSend(notification "object")])
  {
    userInfo = [notification userInfo];
    array = [MEMORY[0x277CBEB18] array];
    [array addObjectsFromArray:{objc_msgSend(objc_msgSend(userInfo, "objectForKey:", *MEMORY[0x277CBE188]), "allObjects")}];
    [array addObjectsFromArray:{objc_msgSend(objc_msgSend(userInfo, "objectForKey:", *MEMORY[0x277CBE310]), "allObjects")}];
    historian = [(CoreThemeDocument *)self historian];

    [historian updateEntriesForManagedObjects:array];
  }
}

- (id)_predicateForRenditionKeySpec:(id)spec
{
  v21[29] = *MEMORY[0x277D85DE8];
  v4 = sel_part;
  v18 = @"part";
  v19 = sel_part;
  v20 = @"direction";
  v21[0] = sel_direction;
  v21[1] = @"state";
  v21[2] = sel_state;
  v21[3] = @"presentationState";
  v21[4] = sel_presentationState;
  v21[5] = @"size";
  v21[6] = sel_size;
  v21[7] = @"element";
  v21[8] = sel_element;
  v21[9] = @"value";
  v21[10] = sel_value;
  v21[11] = @"layer";
  v21[12] = sel_layer;
  v21[13] = @"idiom";
  v21[14] = sel_idiom;
  v21[15] = @"graphicsFeatureSetClass";
  v21[16] = sel_graphicsFeatureSetClass;
  v21[17] = @"sizeClassHorizontal";
  v21[18] = sel_sizeClassHorizontal;
  v21[19] = @"sizeClassVertical";
  v21[20] = sel_sizeClassVertical;
  v21[21] = @"appearance";
  v21[22] = sel_appearance;
  v21[23] = @"localization";
  v21[24] = sel_localization;
  v21[25] = @"target";
  v21[26] = sel_target;
  v21[27] = 0;
  v21[28] = 0;
  v5 = @"nameIdentifier";
  v6 = sel_nameIdentifier;
  v7 = v17;
  v16 = @"dimension1";
  v17[0] = sel_dimension1;
  v17[1] = @"dimension2";
  v17[2] = sel_dimension2;
  v17[3] = @"scaleFactor";
  v17[4] = sel_scaleFactor;
  v17[5] = @"subtype";
  v17[6] = sel_subtype;
  v17[7] = @"memoryClass";
  v17[8] = sel_memoryClass;
  v17[9] = 0;
  v17[10] = 0;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:21];
  do
  {
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"keySpec.%K == %d", v5, objc_msgSend(spec, "performSelector:", v6))}];
    v5 = *(v7 - 1);
    v6 = *v7;
    v7 += 2;
  }

  while (v5);
  v9 = v18;
  if (v18)
  {
    v10 = v21;
    do
    {
      v11 = [spec performSelector:v4];
      if (v11)
      {
        v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"keySpec.%K.identifier == %d", v9, objc_msgSend(v11, "identifier")];
      }

      else
      {
        v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"( keySpec.%K.identifier == 0 OR keySpec.%K == NULL)", v9, v9];
      }

      [v8 addObject:v12];
      v9 = *(v10 - 1);
      v4 = *v10;
      v10 += 2;
    }

    while (v9);
  }

  v13 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_getFilename:(id *)filename scaleFactor:(unsigned int *)factor category:(id *)category bitSource:(id *)source forFileURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  v14 = [TDAsset scaleFactorFromImageFilename:lastPathComponent];
  v15 = [-[CoreThemeDocument rootPathForProductionData](self "rootPathForProductionData")];
  if (!(category | source))
  {
    goto LABEL_26;
  }

  v16 = v15;
  v17 = [objc_msgSend(l "URLByStandardizingPath")];
  if ([v17 rangeOfString:v16 options:8])
  {
    if (category)
    {
      *category = 0;
    }

    if (source)
    {
      *source = 0;
    }

    goto LABEL_26;
  }

  v18 = [objc_msgSend(v17 substringFromIndex:{objc_msgSend(v16, "length") + (objc_msgSend(objc_msgSend(v16, "substringWithRange:", objc_msgSend(v16, "length") - 1, 1), "isEqualToString:", @"/", "stringByDeletingLastPathComponent"}];
  pathComponents = [(__CFString *)v18 pathComponents];
  if ((!-[CoreThemeDocument metadatumForKey:](self, "metadatumForKey:", @"hasNoBitSource") || -[CoreThemeDocument isCustomLook](self, "isCustomLook")) && [pathComponents count])
  {
    v20 = [pathComponents objectAtIndex:0];
  }

  else
  {
    v20 = &stru_28599CA78;
  }

  if (-[__CFString length](v20, "length") && [pathComponents count] >= 2)
  {
    v18 = [(__CFString *)v18 substringFromIndex:[(__CFString *)v20 length]+ 1];
    if (!source)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ([(__CFString *)v20 length])
    {
      v18 = &stru_28599CA78;
    }

    if (!source)
    {
      goto LABEL_24;
    }
  }

  v21 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"ThemeBitSource", [MEMORY[0x277CCAC30] predicateWithFormat:@"path == %@", v20], 0);
  if ([v21 count] == 1 && (objc_msgSend(v21, "objectAtIndex:", 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v22 = [v21 objectAtIndex:0];
  }

  else
  {
    v22 = 0;
  }

  *source = v22;
LABEL_24:
  if (category)
  {
    *category = v18;
  }

LABEL_26:
  if (filename)
  {
    *filename = lastPathComponent;
  }

  if (factor)
  {
    *factor = v14;
  }
}

+ (id)_sharedDocumentList
{
  if (_sharedDocumentList_pred != -1)
  {
    +[CoreThemeDocument _sharedDocumentList];
  }

  return sDocList;
}

uint64_t __40__CoreThemeDocument__sharedDocumentList__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  sDocList = result;
  return result;
}

+ (void)_addThemeDocument:(id)document
{
  [self _sharedDocumentList];
  v4 = sDocList;

  [v4 addObject:document];
}

- (CoreThemeDocument)init
{
  v6.receiver = self;
  v6.super_class = CoreThemeDocument;
  v2 = [(CoreThemeDocument *)&v6 init];
  if (v2)
  {
    v2->constantArrayControllers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->cachedConstantArrays = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_cachedAppearances = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_cachedUnknownAppearanceIds = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2->_cachedLocalizations = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_cachedUnknownLocalizationIds = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2->_cachedModelAssets = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CoreThemeDocument *)v2 primeArrayControllers];
    v3 = [TDThreadMOCOrganizer alloc];
    v2->m_mocOrganizer = -[TDThreadMOCOrganizer initWithDocument:mainThread:](v3, "initWithDocument:mainThread:", v2, [MEMORY[0x277CCACC8] currentThread]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_changedObjectsNotification_ name:*MEMORY[0x277CBE1B8] object:0];
    -[CoreThemeDocument setTargetPlatform:](v2, "setTargetPlatform:", [objc_opt_class() defaultTargetPlatform]);
    v2->_majorVersion = 0x7FFFFFFF;
    v2->_minorVersion = 0x7FFFFFFF;
    v2->_patchVersion = 0x7FFFFFFF;
  }

  return v2;
}

- (CoreThemeDocument)initWithType:(id)type targetPlatform:(int64_t)platform error:(id *)error
{
  v11.receiver = self;
  v11.super_class = CoreThemeDocument;
  v7 = [(TDPersistentDocument *)&v11 initWithType:type error:error];
  v8 = v7;
  if (v7)
  {
    v7->_majorVersion = 0x7FFFFFFF;
    v7->_minorVersion = 0x7FFFFFFF;
    v7->_patchVersion = 0x7FFFFFFF;
    v9 = [(CoreThemeDocument *)v7 buildModelError:error];
    [(CoreThemeDocument *)v8 setTargetPlatform:platform];
    if (!v9)
    {

      return 0;
    }
  }

  return v8;
}

- (CoreThemeDocument)initWithType:(id)type error:(id *)error
{
  v8.receiver = self;
  v8.super_class = CoreThemeDocument;
  v5 = [(TDPersistentDocument *)&v8 initWithType:type error:?];
  v6 = v5;
  if (v5)
  {
    v5->_majorVersion = 0x7FFFFFFF;
    v5->_minorVersion = 0x7FFFFFFF;
    v5->_patchVersion = 0x7FFFFFFF;
    if (![(CoreThemeDocument *)v5 buildModelError:error])
    {

      return 0;
    }
  }

  return v6;
}

- (CoreThemeDocument)initWithContentsOfURL:(id)l ofType:(id)type error:(id *)error
{
  v9.receiver = self;
  v9.super_class = CoreThemeDocument;
  v6 = [(TDPersistentDocument *)&v9 initWithContentsOfURL:l ofType:type error:?];
  v7 = v6;
  if (v6)
  {
    v6->_majorVersion = 0x7FFFFFFF;
    v6->_minorVersion = 0x7FFFFFFF;
    v6->_patchVersion = 0x7FFFFFFF;
    if (![(CoreThemeDocument *)v6 buildModelError:error])
    {

      return 0;
    }
  }

  return v7;
}

+ (id)createConfiguredDocumentAtURL:(id)l error:(id *)error
{
  defaultTargetPlatform = [objc_opt_class() defaultTargetPlatform];

  return [self createConfiguredDocumentAtURL:l targetPlatform:defaultTargetPlatform error:error];
}

+ (id)createConfiguredDocumentAtURL:(id)l targetPlatform:(int64_t)platform error:(id *)error
{
  v8 = [self alloc];
  result = [v8 initWithType:CoreThemeDocumentFileType targetPlatform:platform error:error];
  if (result)
  {
    v10 = result;
    [result setFileURL:l];
    if ([objc_msgSend(v10 "managedObjectContext")])
    {
      [v10 _configureAfterFirstSave];
      if ([objc_msgSend(v10 "managedObjectContext")])
      {
        return v10;
      }

      else
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

+ (int64_t)dataModelVersionFromMetadata:(id)metadata
{
  v4 = [metadata objectForKey:@"CoreThemeDefinitionDataModelKey"];
  v5 = [metadata objectForKey:@"NSProThemeDefinitionDataModelKey"];
  if (v4)
  {
    v5 = v4;
  }

  return [v5 integerValue];
}

+ (id)migrateDocumentAtURL:(id)l ofType:(id)type error:(id *)error
{
  v8 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:*MEMORY[0x277CBE2E8] URL:l options:0 error:error];
  if (!v8)
  {
    return 0;
  }

  v9 = -[CoreThemeDefinitionMigrator initWithURL:oldVersion:newVersion:]([CoreThemeDefinitionMigrator alloc], "initWithURL:oldVersion:newVersion:", l, [self dataModelVersionFromMetadata:v8], objc_msgSend(self, "dataModelVersion"));
  if (!v9)
  {
    if (error)
    {
      v12 = 0;
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unrecognized document format, migration failed", @"reason"}];
      return v12;
    }

    return 0;
  }

  v10 = v9;
  [self presentMigrationProgress];
  if ([(CoreThemeDefinitionMigrator *)v10 migrateWithError:error])
  {
    temporaryMigrationPath = [(CoreThemeDefinitionMigrator *)v10 temporaryMigrationPath];
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:temporaryMigrationPath];
    NSLog(&cfstr_CreatedTempora.isa, temporaryMigrationPath);
  }

  else
  {
    v12 = 0;
  }

  [self closeMigrationProgress];
  return v12;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  keyFormat = self->_keyFormat;
  if (keyFormat)
  {
    free(keyFormat);
  }

  [(CoreThemeDocument *)self setPathToRepresentedDocument:0];

  +[TDVectorGlyphReader clearInstanceCache];
  [(NSMutableArray *)self->_tempFilesToCleanup enumerateObjectsUsingBlock:&__block_literal_global_207];

  v4.receiver = self;
  v4.super_class = CoreThemeDocument;
  [(TDPersistentDocument *)&v4 dealloc];
}

uint64_t __28__CoreThemeDocument_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];

  return [v3 removeItemAtURL:a2 error:0];
}

- (id)updateToEmbeddedSchemaVersion2AndReturnAlertString:(id *)string
{
  v35 = *MEMORY[0x277D85DE8];
  _namedTextEffectPartDefinition = [(CoreThemeDocument *)self _namedTextEffectPartDefinition];
  _namedImageEffectPartDefinition = [(CoreThemeDocument *)self _namedImageEffectPartDefinition];
  v5 = [(CoreThemeDocument *)self partWithIdentifier:178];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v24 = _namedTextEffectPartDefinition;
  selfCopy = self;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"EffectStyleProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"partDefinition = %@", _namedTextEffectPartDefinition], 0);
  v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        [objc_msgSend(v11 "baseKeySpec")];
        [v11 setPartDefinition:_namedImageEffectPartDefinition];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        renditions = [v11 renditions];
        v13 = [renditions countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(renditions);
              }

              [objc_msgSend(*(*(&v25 + 1) + 8 * j) "keySpec")];
            }

            v14 = [renditions countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v14);
        }

        v17 = -[CoreThemeDocument createEffectStyleProductionForPartDefinition:withNameIdentifier:](selfCopy, "createEffectStyleProductionForPartDefinition:withNameIdentifier:", v24, [objc_msgSend(v11 "name")]);
        [array addObject:{objc_msgSend(objc_msgSend(v11, "name"), "name")}];
        [array2 addObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];
  return @"Named Effects now support both high quality and simplified text variants. Your original effect definitions have been classified as 'High Quality Image Effects' and new 'Simplified Text Effect' effect definitions have been created with the same name, using default values. Adjust your effect definitions accordingly.";
}

- (id)managedObjectModel
{
  result = self->m_managedObjectModel;
  if (!result)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreThemeDefinition"];
    v5 = objc_alloc(MEMORY[0x277CBE450]);
    result = [v5 initWithContentsOfURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", objc_msgSend(v4, "pathForResource:ofType:", +[CoreThemeDocument dataModelNameForVersion:](CoreThemeDocument, "dataModelNameForVersion:", +[CoreThemeDocument dataModelVersion](CoreThemeDocument, "dataModelVersion")), @"mom"}];
    self->m_managedObjectModel = result;
    if (!result)
    {
      NSLog(&cfstr_Corethemedocum_1.isa, [v4 pathForResource:+[CoreThemeDocument dataModelNameForVersion:](CoreThemeDocument ofType:{"dataModelNameForVersion:", +[CoreThemeDocument dataModelVersion](CoreThemeDocument, "dataModelVersion")), @"mom"}]);
      return self->m_managedObjectModel;
    }
  }

  return result;
}

- (id)historian
{
  result = self->m_historian;
  if (!result)
  {
    result = [[TDHistorian alloc] initWithDocument:self];
    self->m_historian = result;
  }

  return result;
}

- (id)_cachedConstantsForEntity:(id)entity
{
  v5 = [(NSMutableDictionary *)self->cachedConstantArrays objectForKey:?];
  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:1];
    v5 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self, "allObjectsForEntity:withSortDescriptors:", entity, [MEMORY[0x277CBEA60] arrayWithObject:v6]);

    if (v5)
    {
      [(NSMutableDictionary *)self->cachedConstantArrays setObject:v5 forKey:entity];
    }
  }

  return v5;
}

- (id)themeConstant:(id)constant withIdentifier:(int64_t)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  if (identifier > 0xFFFFFFFE)
  {
    goto LABEL_13;
  }

  identifierCopy = identifier;
  v7 = [(CoreThemeDocument *)self _cachedConstantsForEntity:?];
  if (![v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:1];
    v7 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self, "allObjectsForEntity:withSortDescriptors:", constant, [MEMORY[0x277CBEA60] arrayWithObject:v8]);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if ([v13 identifier] == identifierCopy)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v13 = 0;
        if (v10)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)constantWithName:(id)name forIdentifier:(int64_t)identifier
{
  v6 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", name, [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %ld", identifier], 0);
  if ([v6 count])
  {

    return [v6 objectAtIndex:0];
  }

  else
  {
    v8 = [(CoreThemeDocument *)self newObjectForEntity:name];

    return v8;
  }
}

- (id)psdImageRefForAsset:(id)asset
{
  v3 = [-[CoreThemeDocument rootPathForProductionData](self "rootPathForProductionData")];
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x277D026C0]) initWithPath:v3];

  return v4;
}

- (id)appearanceWithIdentifier:(int64_t)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  if (-[NSMutableSet containsObject:](self->_cachedUnknownAppearanceIds, "containsObject:", [MEMORY[0x277CCABB0] numberWithInteger:?]))
  {
    firstObject = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    cachedAppearances = self->_cachedAppearances;
    v7 = [(NSMutableArray *)cachedAppearances countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(cachedAppearances);
        }

        firstObject = *(*(&v14 + 1) + 8 * v10);
        if ([firstObject identifier] == identifier)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)cachedAppearances countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }

      if (firstObject)
      {
        goto LABEL_17;
      }
    }

LABEL_13:
    v11 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"Appearance", [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %d", identifier], 0);
    if ([v11 count] >= 2)
    {
      [CoreThemeDocument appearanceWithIdentifier:];
    }

    firstObject = [v11 firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_cachedAppearances addObject:firstObject];
    }
  }

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return firstObject;
}

- (id)appearanceWithIdentifier:(int64_t)identifier name:(id)name createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v9 = [(CoreThemeDocument *)self appearanceWithIdentifier:?];
  if (v9)
  {
    v10 = v9;
    if (!name)
    {
      return v10;
    }
  }

  else if (!name || !neededCopy || (v10 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", @"Appearance"), [v10 setIdentifier:identifier], objc_msgSend(v10, "setName:", name), -[NSMutableArray addObject:](self->_cachedAppearances, "addObject:", v10), v10, !v10))
  {
    -[NSMutableSet addObject:](self->_cachedUnknownAppearanceIds, "addObject:", [MEMORY[0x277CCABB0] numberWithInteger:identifier]);
    return 0;
  }

  if (([objc_msgSend(v10 "name")] & 1) == 0)
  {
    [CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:];
  }

  return v10;
}

- (id)localizationWithIdentifier:(int64_t)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  if (-[NSMutableSet containsObject:](self->_cachedUnknownLocalizationIds, "containsObject:", [MEMORY[0x277CCABB0] numberWithInteger:?]))
  {
    firstObject = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    cachedLocalizations = self->_cachedLocalizations;
    v7 = [(NSMutableArray *)cachedLocalizations countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(cachedLocalizations);
        }

        firstObject = *(*(&v14 + 1) + 8 * v10);
        if ([firstObject identifier] == identifier)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)cachedLocalizations countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }

      if (firstObject)
      {
        goto LABEL_17;
      }
    }

LABEL_13:
    v11 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"Localization", [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %d", identifier], 0);
    if ([v11 count] >= 2)
    {
      [CoreThemeDocument localizationWithIdentifier:];
    }

    firstObject = [v11 firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_cachedLocalizations addObject:firstObject];
    }
  }

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return firstObject;
}

- (id)localizationWithIdentifier:(int64_t)identifier name:(id)name createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v10 = [(CoreThemeDocument *)self localizationWithIdentifier:?];
  if (v10)
  {
    v11 = v10;
    if (!name)
    {
      return v11;
    }
  }

  else if (!name || !neededCopy || (v11 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", @"Localization"), [v11 setIdentifier:identifier], objc_msgSend(v11, "setName:", name), -[NSMutableArray addObject:](self->_cachedLocalizations, "addObject:", v11), v11, !v11))
  {
    -[NSMutableSet addObject:](self->_cachedUnknownLocalizationIds, "addObject:", [MEMORY[0x277CCABB0] numberWithInteger:identifier]);
    return 0;
  }

  if (([objc_msgSend(v11 "name")] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  return v11;
}

- (id)mappingForPhotoshopLayerIndex:(int64_t)index themeDrawingLayerIdentifier:(int64_t)identifier
{
  if (!index)
  {
    return 0;
  }

  v7 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"LayerMapping", [MEMORY[0x277CCAC30] predicateWithFormat:@"photoshopLayerIndex = %d AND themeDrawingLayer.identifier = %d", index, identifier], 0);
  if (![v7 count])
  {
    v10 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"ThemeDrawingLayer" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"identifier = %d", identifier), 0), "objectAtIndex:", 0}];
    v9 = [(CoreThemeDocument *)self newObjectForEntity:@"LayerMapping"];
    [v9 setPhotoshopLayerIndex:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", index)}];
    [v9 setThemeDrawingLayer:v10];
    return v9;
  }

  return [v7 objectAtIndex:0];
}

- (id)allObjectsForEntity:(id)entity withSortDescriptors:(id)descriptors
{
  v6 = 0;
  v4 = [(CoreThemeDocument *)self allObjectsForEntity:entity withSortDescriptors:descriptors error:&v6];
  if (v6)
  {
    [CoreThemeDocument allObjectsForEntity:withSortDescriptors:];
  }

  return v4;
}

- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors
{
  v7 = 0;
  v5 = [(CoreThemeDocument *)self objectsForEntity:entity withPredicate:predicate sortDescriptors:descriptors error:&v7];
  if (v7)
  {
    [CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:];
  }

  return v5;
}

- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors error:(id *)error
{
  v11 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];

  return [(CoreThemeDocument *)self objectsForEntity:entity withPredicate:predicate sortDescriptors:descriptors withContext:v11 error:error];
}

- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors withContext:(id)context error:(id *)error
{
  v13 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v13 setEntity:{objc_msgSend(objc_msgSend(-[CoreThemeDocument managedObjectModel](self, "managedObjectModel"), "entitiesByName"), "objectForKey:", entity)}];
  if (predicate)
  {
    [v13 setPredicate:predicate];
  }

  if (descriptors)
  {
    [v13 setSortDescriptors:descriptors];
  }

  v14 = [context executeFetchRequest:v13 error:error];

  return v14;
}

- (unint64_t)countForEntity:(id)entity withPredicate:(id)predicate
{
  v7 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v7 setEntity:{objc_msgSend(objc_msgSend(-[CoreThemeDocument managedObjectModel](self, "managedObjectModel"), "entitiesByName"), "objectForKey:", entity)}];
  if (predicate)
  {
    [v7 setPredicate:predicate];
  }

  v10 = 0;
  v8 = [objc_msgSend(-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];

  return v8;
}

- (id)newObjectForEntity:(id)entity
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread != [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")])
  {
    [CoreThemeDocument newObjectForEntity:];
  }

  v6 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self "managedObjectModel")];
  v7 = [objc_alloc(NSClassFromString(objc_msgSend(v6 "managedObjectClassName")))];
  if (!v7)
  {
    [CoreThemeDocument newObjectForEntity:];
  }

  return v7;
}

- (void)deleteObjects:(id)objects
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread != [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")])
  {
    [CoreThemeDocument deleteObjects:];
  }

  managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];
  objectEnumerator = [objects objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [managedObjectContext deleteObject:nextObject2];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)deleteObject:(id)object
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread != [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")])
  {
    [CoreThemeDocument deleteObject:];
  }

  managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];

  [managedObjectContext deleteObject:object];
}

- (id)minimalDisplayNameForThemeConstant:(id)constant
{
  displayName = [constant displayName];
  identifier = [constant identifier];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d-", identifier];
  v7 = [displayName stringByReplacingOccurrencesOfString:@" " withString:&stru_28599CA78];

  return [v7 stringByReplacingOccurrencesOfString:v6 withString:&stru_28599CA78];
}

- (id)folderNameFromRenditionKey:(id)key forPartDefinition:(id)definition
{
  partFeatures = [definition partFeatures];
  element = [definition element];
  v9 = [objc_msgSend(element "displayName")];
  if ([objc_msgSend(element "parts")] < 2)
  {
    v10 = 0;
    if ((partFeatures & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [objc_msgSend(objc_msgSend(definition "displayName")];
    if ((partFeatures & 0x200) != 0)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  v11 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument sizeWithIdentifier:](self, "sizeWithIdentifier:", [key themeSize]));
LABEL_6:
  if ((partFeatures & 0x38) != 0)
  {
    v12 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", [key themeDirection]));
  }

  else
  {
    v12 = 0;
  }

  if ((~partFeatures & 0x10004) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument presentationStateWithIdentifier:](self, "presentationStateWithIdentifier:", [key themePresentationState]));
  }

  themeScale = [key themeScale];
  if (v10)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v10];
  }

  if (v11)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v11];
  }

  if (v12)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v12];
  }

  if (v13)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v13];
  }

  if (themeScale != 2)
  {
    return v9;
  }

  return [v9 stringByAppendingString:@"@2x"];
}

- (id)defaultPNGFileNameForSchemaRendition:(id)rendition withPartDefinition:(id)definition
{
  v4 = [(CoreThemeDocument *)self defaultBaseFileNameForSchemaRendition:rendition withPartDefinition:definition];

  return [v4 stringByAppendingPathExtension:@"png"];
}

- (id)defaultBaseFileNameForSchemaRendition:(id)rendition withPartDefinition:(id)definition
{
  partFeatures = [definition partFeatures];
  v8 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(rendition, "key")}];
  v9 = [(CoreThemeDocument *)self folderNameFromRenditionKey:v8 forPartDefinition:definition];
  themeScale = [v8 themeScale];
  if (themeScale == 2)
  {
    v11 = @"@2x";
    v9 = [v9 stringByReplacingOccurrencesOfString:@"@2x" withString:&stru_28599CA78];
  }

  else
  {
    v11 = 0;
  }

  if ((*&partFeatures & 0x10004) == 4)
  {
    v12 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument presentationStateWithIdentifier:](self, "presentationStateWithIdentifier:", [v8 themePresentationState]));
  }

  else
  {
    v12 = 0;
  }

  if ([v8 themeLayer] >= 1)
  {
    v13 = -[CoreThemeDocument drawingLayerWithIdentifier:](self, "drawingLayerWithIdentifier:", [v8 themeLayer]);
    goto LABEL_11;
  }

  if ((partFeatures & 0x1000) == 0)
  {
    v13 = -[CoreThemeDocument stateWithIdentifier:](self, "stateWithIdentifier:", [v8 themeState]);
LABEL_11:
    v14 = [(CoreThemeDocument *)self minimalDisplayNameForThemeConstant:v13];
    if ((partFeatures & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v14 = 0;
  if ((partFeatures & 0x4000) == 0)
  {
LABEL_12:
    if (partFeatures)
    {
      v15 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument valueWithIdentifier:](self, "valueWithIdentifier:", [v8 themeValue]));
      goto LABEL_17;
    }

LABEL_19:
    v18 = 0;
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_15:
  cuiPartDefinition = [definition cuiPartDefinition];
  themeDimension1 = [v8 themeDimension1];
  if (themeDimension1 >= [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self, "targetPlatform")), "dimensionDefinitionCountForPartDefinition:", cuiPartDefinition}])
  {
    goto LABEL_19;
  }

  v15 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithUTF8String:{*(cuiPartDefinition + 32 * themeDimension1 + 64)), "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_28599CA78}];
LABEL_17:
  v18 = v15;
  if (v12)
  {
LABEL_20:
    v9 = [v9 stringByAppendingFormat:@"_%@", v12];
  }

LABEL_21:
  if (v14)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v14];
  }

  if (v18)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v18];
  }

  if (themeScale == 2)
  {
    v9 = [v9 stringByAppendingFormat:@"%@", v11];
  }

  return v9;
}

- (id)defaultPathComponentsForPartDefinition:(id)definition
{
  v4 = [objc_msgSend(objc_msgSend(definition "element")];
  v5 = [objc_msgSend(definition "element")];

  return [v4 stringByAppendingPathComponent:v5];
}

- (id)createReferencePNGForSchemaRendition:(id)rendition withPartDefinition:(id)definition atLocation:(id)location error:(id *)error
{
  v10 = [(CoreThemeDocument *)self defaultPNGFileNameForSchemaRendition:rendition withPartDefinition:definition];
  if (location)
  {
    v11 = [location URLByAppendingPathComponent:v10];
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      [(CoreThemeDocument *)self assetManagementDelegate];
      if (objc_opt_respondsToSelector())
      {
        [(TDAssetManagementDelegate *)[(CoreThemeDocument *)self assetManagementDelegate] willCreateAssetAtURL:v11];
      }

      v12 = CGImageDestinationCreateWithURL(v11, @"public.png", 1uLL, 0);
      CGImageDestinationAddImage(v12, [objc_msgSend(rendition "referenceImage")], 0);
      v13 = CGImageDestinationFinalize(v12);
      CFRelease(v12);
      if (!v13)
      {
        v10 = 0;
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unable to write image", *MEMORY[0x277CCA450])}];
        }
      }
    }
  }

  return v10;
}

- (id)_themeBitSource:(id *)source
{
  v4 = [(CoreThemeDocument *)self allObjectsForEntity:@"ThemeBitSource" withSortDescriptors:0];
  if ([v4 count])
  {
    if ([v4 count] >= 2)
    {
      NSLog(&cfstr_ExpectingOnlyO.isa, [v4 count]);
    }

    return [v4 objectAtIndex:0];
  }

  else
  {
    if (source)
    {
      *source = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"No ThemeBitSource found", *MEMORY[0x277CCA450])}];
    }

    return 0;
  }
}

- (id)_themeBitSourceForReferencedFilesAtURLs:(id)ls createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__CoreThemeDocument__themeBitSourceForReferencedFilesAtURLs_createIfNecessary___block_invoke;
  v19[3] = &unk_278EBB058;
  v19[4] = v7;
  [ls enumerateObjectsUsingBlock:v19];
  if ([objc_msgSend(objc_msgSend(v7 "lastObject")])
  {
    [v7 removeLastObject];
  }

  pathComponents = [(NSURL *)[(TDPersistentDocument *)self fileURL] pathComponents];
  UncommonItemInArrays = indexOfFirstUncommonItemInArrays(v7, pathComponents);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [(NSArray *)pathComponents count];
  v12 = [v7 count];
  if (UncommonItemInArrays != 0x7FFFFFFFFFFFFFFFLL && UncommonItemInArrays < v11)
  {
    v13 = v12;
    if (UncommonItemInArrays < v11 - 1)
    {
      v14 = ~UncommonItemInArrays + v11;
      do
      {
        [v10 addObject:@"../"];
        --v14;
      }

      while (v14);
    }

    if (UncommonItemInArrays < v13)
    {
      do
      {
        [v10 addObject:{objc_msgSend(v7, "objectAtIndex:", UncommonItemInArrays++)}];
      }

      while (v13 != UncommonItemInArrays);
    }
  }

  v15 = [MEMORY[0x277CCACA8] pathWithComponents:v10];
  v16 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:error:](self, "objectsForEntity:withPredicate:sortDescriptors:error:", @"ThemeBitSource", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"path", v15], 0, 0);
  if ([v16 count])
  {
    return [v16 objectAtIndex:0];
  }

  if (!necessaryCopy)
  {
    return 0;
  }

  v17 = -[TDThemeBitSource initWithEntity:insertIntoManagedObjectContext:]([TDThemeBitSource alloc], "initWithEntity:insertIntoManagedObjectContext:", [objc_msgSend(-[CoreThemeDocument managedObjectModel](self "managedObjectModel")], -[TDPersistentDocument managedObjectContext](self, "managedObjectContext"));
  [(TDThemeBitSource *)v17 setPath:v15];
  return v17;
}

uint64_t __79__CoreThemeDocument__themeBitSourceForReferencedFilesAtURLs_createIfNecessary___block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  if (*MEMORY[0x277CBEEE8] != a2)
  {
    v4 = result;
    v5 = [a2 pathComponents];
    v6 = *(v4 + 32);
    if (a3)
    {
      result = indexOfFirstUncommonItemInArrays(v6, v5);
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = result;
        v9 = *(v4 + 32);
        v10 = [v9 count] - result;

        return [v9 removeObjectsInRange:{v8, v10}];
      }
    }

    else
    {
      [v6 addObjectsFromArray:v5];
      v7 = *(v4 + 32);

      return [v7 removeLastObject];
    }
  }

  return result;
}

- (BOOL)createPSDReferenceArtworkForRenditionGroup:(id)group atDestination:(id)destination error:(id *)error
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [(CoreThemeDocument *)self assetManagementDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(TDAssetManagementDelegate *)[(CoreThemeDocument *)self assetManagementDelegate] willCreateAssetAtURL:destination];
  }

  if (([defaultManager fileExistsAtPath:{objc_msgSend(destination, "path")}] & 1) == 0)
  {
    if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
    {
      mutablePSDImageRef = [group mutablePSDImageRef];
    }

    else
    {
      mutablePSDImageRef = [group mutablePSDImageRefColumnStyle];
    }

    [mutablePSDImageRef saveToURL:destination completionHandler:0];
  }

  return 1;
}

- (id)createProductionWithRenditionGroup:(id)group forPartDefinition:(id)definition artworkFormat:(id)format nameElement:(id)element shouldReplaceExisting:(BOOL)existing error:(id *)error
{
  existingCopy = existing;
  v232 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  selfCopy = self;
  v11 = [(CoreThemeDocument *)self allObjectsForEntity:@"ElementProduction" withSortDescriptors:0];
  groupCopy = group;
  [objc_msgSend(group "baseKey")];
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v221 objects:v231 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v222;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v222 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v221 + 1) + 8 * i);
        [objc_msgSend(v17 "baseKeySpec")];
        CUISystemThemeRenditionKeyFormat();
        if (CUIEqualRenditionKeys())
        {
          v18 = [objc_msgSend(objc_msgSend(objc_msgSend(v17 "partDefinition")];
          v19 = v18;
          if (v18)
          {
            v20 = v17;
          }

          else
          {
            v20 = v14;
          }

          if (v18)
          {
            v21 = !existingCopy;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            v14 = v20;
            if (v18)
            {
              goto LABEL_22;
            }
          }

          else
          {
            [v17 deleteRenditionsInDocument:selfCopy shouldDeleteAssetFiles:1];
            [(CoreThemeDocument *)selfCopy deleteObject:v17];
            if (v19)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v221 objects:v231 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

LABEL_22:
  definitionCopy3 = definition;
  v23 = selfCopy;
  v24 = -[CoreThemeDocument allowMultipleInstancesOfElementID:](selfCopy, "allowMultipleInstancesOfElementID:", [definition elementID]);
  if (v14 && !v24)
  {
    goto LABEL_159;
  }

  if ([format isEqualToString:CoreThemeArtworkFormatPNG])
  {
    v14 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"SchemaElementProduction"];
    [v14 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
    v25 = groupCopy;
    v26 = [objc_msgSend(groupCopy "renditions")];
    [v14 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v26, "type"))}];
    [v14 setRenditionSubtype:{-[CoreThemeDocument renditionSubtypeWithIdentifier:](selfCopy, "renditionSubtypeWithIdentifier:", objc_msgSend(v26, "subtype"))}];
    slices = [v26 slices];
    if ([slices count])
    {
      v28 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices, "count")}];
      v217 = 0u;
      v218 = 0u;
      v219 = 0u;
      v220 = 0u;
      v29 = [slices countByEnumeratingWithState:&v217 objects:v230 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v218;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v218 != v31)
            {
              objc_enumerationMutation(slices);
            }

            [*(*(&v217 + 1) + 8 * j) rectValue];
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v40 = v39;
            v41 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"Slice"];
            [v41 setSliceRect:{v34, v36, v38, v40}];
            [v28 addObject:v41];
          }

          v30 = [slices countByEnumeratingWithState:&v217 objects:v230 count:16];
        }

        while (v30);
      }

      [v14 setSlices:v28];
      v25 = groupCopy;
      definitionCopy3 = definition;
    }

    v42 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
    [v42 setAttributesFromRenditionKey:objc_msgSend(objc_msgSend(v25 withDocument:{"baseKey"), "keyList"), selfCopy}];
    [v14 setBaseKeySpec:v42];

    [v14 setPartDefinition:definitionCopy3];
    obja = [v25 renditions];
    v43 = [(CoreThemeDocument *)selfCopy defaultPathComponentsForPartDefinition:definitionCopy3];
    v44 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:{-[CoreThemeDocument rootPathForProductionData](selfCopy, "rootPathForProductionData")}];
    v45 = -[CoreThemeDocument folderNameFromRenditionKey:forPartDefinition:](selfCopy, "folderNameFromRenditionKey:forPartDefinition:", [v25 baseKey], definitionCopy3);
    v46 = [v43 stringByAppendingPathComponent:v45];
    [v14 setFolderName:v45];
    [v14 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"From: %@", v45)}];
    v47 = [(CoreThemeDocument *)selfCopy _themeBitSource:error];
    if (v47)
    {
      v48 = v47;
      v49 = [objc_msgSend(v44 URLByAppendingPathComponent:{objc_msgSend(v47, "name")), "URLByAppendingPathComponent:", v46}];
      if ([defaultManager fileExistsAtPath:{objc_msgSend(v49, "path")}] & 1) != 0 || (v216 = 0, (objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v49, 1, 0, &v216)))
      {
        v178 = [objc_msgSend(v25 "baseKey")];
        v212 = 0u;
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v50 = [obja countByEnumeratingWithState:&v212 objects:v229 count:16];
        if (v50)
        {
          v51 = v50;
          v172 = v48;
          v175 = v46;
          v194 = v14;
          v52 = *v213;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v213 != v52)
              {
                objc_enumerationMutation(obja);
              }

              v54 = *(*(&v212 + 1) + 8 * k);
              v216 = 0;
              v55 = [(CoreThemeDocument *)v23 createReferencePNGForSchemaRendition:v54 withPartDefinition:definitionCopy3 atLocation:v49 error:&v216];
              if (v216)
              {
                v56 = [objc_msgSend(v49 URLByAppendingPathComponent:{v55), "path"}];
                NSLog(&cfstr_UnableToCreate.isa, v56, [v216 localizedDescription]);
              }

              else
              {
                v57 = [(CoreThemeDocument *)v23 newObjectForEntity:@"PNGAsset"];
                [v57 setCategory:v175];
                [v57 setName:v55];
                [v57 setSource:v172];
                [v57 setScaleFactor:v178];
                v58 = [(CoreThemeDocument *)v23 newObjectForEntity:@"SchemaRenditionSpec"];
                [objc_msgSend(v58 "keySpec")];
                -[CoreThemeDocument _normalizeRenditionKeySpec:forSchemaRendition:](v23, "_normalizeRenditionKeySpec:forSchemaRendition:", [v58 keySpec], v54);
                [v58 setAsset:v57];
                [v58 setProduction:v194];
                [v58 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](v23, "renditionTypeWithIdentifier:", objc_msgSend(v54, "type"))}];
                [(CoreThemeDocument *)v23 assetManagementDelegate];
                if (objc_opt_respondsToSelector())
                {
                  -[TDAssetManagementDelegate didCreateAsset:atURL:](-[CoreThemeDocument assetManagementDelegate](selfCopy, "assetManagementDelegate"), "didCreateAsset:atURL:", v57, [v49 URLByAppendingPathComponent:v55]);
                }

                v23 = selfCopy;
                definitionCopy3 = definition;
              }
            }

            v51 = [obja countByEnumeratingWithState:&v212 objects:v229 count:16];
          }

          while (v51);
LABEL_158:
          v14 = v194;
          goto LABEL_159;
        }

        goto LABEL_159;
      }

      if (error)
      {
        localizedDescription = [v216 localizedDescription];
        if (localizedDescription)
        {
          v118 = localizedDescription;
        }

        else
        {
          v118 = @"Unable to write new folder to file system.";
        }

        v119 = MEMORY[0x277CCA9B8];
        v120 = *MEMORY[0x277CCA050];
        v121 = v14;
        code = [v216 code];
        v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Couldn't create folder for reference assets.", *MEMORY[0x277CCA450], v118, *MEMORY[0x277CCA470], 0}];
        v124 = code;
        v14 = v121;
        *error = [v119 errorWithDomain:v120 code:v124 userInfo:v123];
      }
    }

    v125 = selfCopy;
    goto LABEL_113;
  }

  if (![format isEqualToString:CoreThemeArtworkFormatPSD])
  {
    if (![format isEqualToString:CoreThemeArtworkFormatCAAR])
    {
      goto LABEL_114;
    }

    v81 = [(CoreThemeDocument *)selfCopy _themeBitSource:error];
    if (!v81)
    {
      goto LABEL_114;
    }

    v82 = v81;
    v83 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:{-[CoreThemeDocument rootPathForProductionData](selfCopy, "rootPathForProductionData")}];
    v84 = [(CoreThemeDocument *)selfCopy defaultPathComponentsForPartDefinition:definition];
    v85 = [objc_msgSend(v83 URLByAppendingPathComponent:{objc_msgSend(v82, "name")), "URLByAppendingPathComponent:", v84}];
    definitionCopy5 = definition;
    v87 = v85;
    if (([defaultManager fileExistsAtPath:{objc_msgSend(v85, "path")}] & 1) == 0)
    {
      v216 = 0;
      if (([defaultManager createDirectoryAtURL:v87 withIntermediateDirectories:1 attributes:0 error:&v216] & 1) == 0)
      {
        goto LABEL_117;
      }

      definitionCopy5 = definition;
    }

    v88 = -[CoreThemeDocument folderNameFromRenditionKey:forPartDefinition:](selfCopy, "folderNameFromRenditionKey:forPartDefinition:", [groupCopy baseKey], definitionCopy5);
    v89 = [v88 stringByAppendingPathExtension:@"caml"];
    v90 = [v87 URLByAppendingPathComponent:v89];
    if (([v90 checkResourceIsReachableAndReturnError:error] & 1) == 0)
    {
      v89 = [v88 stringByAppendingPathExtension:@"ca"];
      v90 = [v87 URLByAppendingPathComponent:v89];
    }

    if (([v90 checkResourceIsReachableAndReturnError:error] & 1) == 0)
    {
      v89 = [v88 stringByAppendingPathExtension:@"caar"];
      v90 = [v87 URLByAppendingPathComponent:v89];
    }

    [(CoreThemeDocument *)selfCopy assetManagementDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(TDAssetManagementDelegate *)[(CoreThemeDocument *)selfCopy assetManagementDelegate] willCreateAssetAtURL:v90];
    }

    v91 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"MicaAsset"];
    [v91 setCategory:v84];
    [v91 setName:v89];
    [v91 setScaleFactor:{objc_msgSend(objc_msgSend(groupCopy, "baseKey"), "themeScale")}];
    [v91 setSource:v82];
    [(CoreThemeDocument *)selfCopy assetManagementDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(TDAssetManagementDelegate *)[(CoreThemeDocument *)selfCopy assetManagementDelegate] didCreateAsset:v91 atURL:v90];
    }

    v182 = v90;
    v92 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"MicaElementProduction"];
    [v92 setAsset:v91];
    [v92 setPartDefinition:definition];
    [v92 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Production for %@", objc_msgSend(v84, "stringByAppendingPathComponent:", v89))}];
    [v92 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
    v93 = [objc_msgSend(groupCopy "renditions")];
    [v92 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v93, "type"))}];
    [v92 setRenditionSubtype:{-[CoreThemeDocument renditionSubtypeWithIdentifier:](selfCopy, "renditionSubtypeWithIdentifier:", objc_msgSend(v93, "subtype"))}];
    v94 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
    [v94 setAttributesFromRenditionKey:objc_msgSend(objc_msgSend(groupCopy withDocument:{"baseKey"), "keyList"), selfCopy}];
    v194 = v92;
    [v92 setBaseKeySpec:v94];

    layer = [MEMORY[0x277CD9ED0] layer];
    [layer setName:@"rootLayer"];
    objb = layer;
    [layer setFrame:{0.0, 0.0, 128.0, 128.0}];
    schemaLayersAndLayerGroups = [groupCopy schemaLayersAndLayerGroups];
    array = [MEMORY[0x277CBEB18] array];
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v97 = [schemaLayersAndLayerGroups countByEnumeratingWithState:&v196 objects:v225 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = 0x277D02000uLL;
      v100 = *v197;
      v101 = 0x277D02000uLL;
      lastObject = layer;
      do
      {
        for (m = 0; m != v98; ++m)
        {
          if (*v197 != v100)
          {
            objc_enumerationMutation(schemaLayersAndLayerGroups);
          }

          v104 = *(*(&v196 + 1) + 8 * m);
          v105 = *(v99 + 1768);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v104 isStart])
            {
              layer2 = [MEMORY[0x277CD9ED0] layer];
              [layer2 setName:{objc_msgSend(v104, "name")}];
              [lastObject addSublayer:layer2];
              [array addObject:layer2];
              lastObject = layer2;
            }

            else
            {
              [array removeLastObject];
              lastObject = objb;
              if ([array count])
              {
                lastObject = [array lastObject];
              }
            }
          }

          else
          {
            v107 = *(v101 + 1776);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              rendition = [v104 rendition];
              v109 = v100;
              v110 = v99;
              v111 = schemaLayersAndLayerGroups;
              v112 = [(CoreThemeDocument *)v23 newObjectForEntity:@"MicaRenditionSpec"];
              keySpec = [v112 keySpec];
              v114 = [rendition key];
              v115 = keySpec;
              v23 = selfCopy;
              [v115 setAttributesFromRenditionKey:v114 withDocument:selfCopy];
              -[CoreThemeDocument _normalizeRenditionKeySpec:forSchemaRendition:](selfCopy, "_normalizeRenditionKeySpec:forSchemaRendition:", [v112 keySpec], rendition);
              [v112 setProduction:v194];
              [v112 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(rendition, "type"))}];
              [v112 setLayerPath:{objc_msgSend(objc_msgSend(objc_msgSend(array, "valueForKey:", @"name", "arrayByAddingObject:", objc_msgSend(v104, "name")), "componentsJoinedByString:", @"/"}];
              layer3 = [MEMORY[0x277CD9ED0] layer];
              [layer3 setName:{objc_msgSend(v104, "name")}];
              [lastObject bounds];
              [layer3 setFrame:?];
              [lastObject addSublayer:layer3];

              schemaLayersAndLayerGroups = v111;
              v99 = v110;
              v100 = v109;
              v101 = 0x277D02000;
            }
          }
        }

        v98 = [schemaLayersAndLayerGroups countByEnumeratingWithState:&v196 objects:v225 count:16];
      }

      while (v98);
    }

    [v182 fileSystemRepresentation];
    CAEncodeLayerTreeToFile();
    goto LABEL_158;
  }

  v59 = [(CoreThemeDocument *)selfCopy _themeBitSource:error];
  if (!v59)
  {
    goto LABEL_114;
  }

  v60 = v59;
  v61 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:{-[CoreThemeDocument rootPathForProductionData](selfCopy, "rootPathForProductionData")}];
  v62 = [(CoreThemeDocument *)selfCopy defaultPathComponentsForPartDefinition:definition];
  v63 = [objc_msgSend(v61 URLByAppendingPathComponent:{objc_msgSend(v60, "name")), "URLByAppendingPathComponent:", v62}];
  if (([defaultManager fileExistsAtPath:{objc_msgSend(v63, "path")}] & 1) == 0)
  {
    v216 = 0;
    if (([defaultManager createDirectoryAtURL:v63 withIntermediateDirectories:1 attributes:0 error:&v216] & 1) == 0)
    {
LABEL_117:
      if (error)
      {
        localizedDescription2 = [v216 localizedDescription];
        if (localizedDescription2)
        {
          v132 = localizedDescription2;
        }

        else
        {
          v132 = @"Unable to write new folder to file system.";
        }

        v133 = MEMORY[0x277CCA9B8];
        v134 = *MEMORY[0x277CCA050];
        code2 = [v216 code];
        *error = [v133 errorWithDomain:v134 code:code2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Couldn't create folder for reference assets.", *MEMORY[0x277CCA450], v132, *MEMORY[0x277CCA470], 0)}];
      }

      goto LABEL_114;
    }
  }

  v64 = [-[CoreThemeDocument folderNameFromRenditionKey:forPartDefinition:](selfCopy folderNameFromRenditionKey:objc_msgSend(groupCopy forPartDefinition:{"baseKey"), definition), "stringByAppendingPathExtension:", @"psd"}];
  v65 = [v63 URLByAppendingPathComponent:v64];
  if (![(CoreThemeDocument *)selfCopy createPSDReferenceArtworkForRenditionGroup:groupCopy atDestination:v65 error:error])
  {
    if (error)
    {
      v126 = MEMORY[0x277CCA9B8];
      v127 = *MEMORY[0x277CCA050];
      v128 = MEMORY[0x277CBEAC0];
      v129 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't make reference PSD image. Filename: %@", v64];
      v130 = [v126 errorWithDomain:v127 code:0 userInfo:{objc_msgSend(v128, "dictionaryWithObject:forKey:", v129, *MEMORY[0x277CCA450])}];
      v14 = 0;
      *error = v130;
      goto LABEL_159;
    }

    goto LABEL_114;
  }

  v66 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopAsset"];
  [v66 setCategory:v62];
  [v66 setName:v64];
  [v66 setScaleFactor:{objc_msgSend(objc_msgSend(groupCopy, "baseKey"), "themeScale")}];
  [v66 setSource:v60];
  [(CoreThemeDocument *)selfCopy assetManagementDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(TDAssetManagementDelegate *)[(CoreThemeDocument *)selfCopy assetManagementDelegate] didCreateAsset:v66 atURL:v65];
  }

  v14 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopElementProduction"];
  [v14 setAsset:v66];
  [v14 setPartDefinition:definition];
  [v14 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Production for %@", objc_msgSend(v62, "stringByAppendingPathComponent:", v64))}];
  [v14 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
  v67 = [objc_msgSend(groupCopy "renditions")];
  [v14 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v67, "type"))}];
  [v14 setRenditionSubtype:{-[CoreThemeDocument renditionSubtypeWithIdentifier:](selfCopy, "renditionSubtypeWithIdentifier:", objc_msgSend(v67, "subtype"))}];
  v68 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
  [v68 setAttributesFromRenditionKey:objc_msgSend(objc_msgSend(groupCopy withDocument:{"baseKey"), "keyList"), selfCopy}];
  [v14 setBaseKeySpec:v68];

  partFeatures = [definition partFeatures];
  if ((partFeatures & 0x8000) != 0)
  {
    v70 = 3;
  }

  else
  {
    v70 = 4;
  }

  if ((partFeatures & 0x10004) == 4)
  {
    v71 = 1;
  }

  else
  {
    v71 = v70;
  }

  [v14 setRowIterationType:{-[CoreThemeDocument iterationTypeWithIdentifier:](selfCopy, "iterationTypeWithIdentifier:", v71)}];
  if ((partFeatures & 0x4000) != 0)
  {
    v72 = 2;
  }

  else
  {
    v72 = 4;
  }

  if (partFeatures)
  {
    v73 = 0;
  }

  else
  {
    v73 = v72;
  }

  [v14 setColumnIterationType:{-[CoreThemeDocument iterationTypeWithIdentifier:](selfCopy, "iterationTypeWithIdentifier:", v73)}];
  v74 = [MEMORY[0x277CBEB58] set];
  v75 = [objc_msgSend(definition validStatesWithDocument:{selfCopy), "count"}];
  v190 = partFeatures;
  if ((partFeatures & 0x80) != 0)
  {
    [v74 addObject:{-[CoreThemeDocument mappingForPhotoshopLayerIndex:themeDrawingLayerIdentifier:](selfCopy, "mappingForPhotoshopLayerIndex:themeDrawingLayerIdentifier:", v75++, 3)}];
  }

  if ((partFeatures & 0x2000) != 0)
  {
    [v74 addObject:{-[CoreThemeDocument mappingForPhotoshopLayerIndex:themeDrawingLayerIdentifier:](selfCopy, "mappingForPhotoshopLayerIndex:themeDrawingLayerIdentifier:", v75, 2)}];
  }

  if ([v74 count])
  {
    [v14 addLayerMappings:v74];
  }

  if (([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] & 1) == 0)
  {
    [v14 setRowCount:&unk_2859AC4D0];
    [v14 setColumnCount:&unk_2859AC4D0];
    objc = [groupCopy schemaLayersAndLayerGroups];
    array2 = [MEMORY[0x277CBEB18] array];
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v136 = [objc countByEnumeratingWithState:&v208 objects:v228 count:16];
    if (v136)
    {
      v137 = v136;
      v194 = v14;
      lastObject2 = 0;
      v139 = *v209;
      v140 = 0x277D02000uLL;
      v179 = *v209;
      do
      {
        for (n = 0; n != v137; ++n)
        {
          if (*v209 != v139)
          {
            objc_enumerationMutation(objc);
          }

          v142 = *(*(&v208 + 1) + 8 * n);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v142 isStart])
            {
              v143 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopLayer"];
              [v143 setName:{objc_msgSend(v142, "name")}];
              [v143 setParentLayer:lastObject2];
              [array2 addObject:v143];
              lastObject2 = v143;
            }

            else
            {
              [array2 removeLastObject];
              if ([array2 count])
              {
                lastObject2 = [array2 lastObject];
              }

              else
              {
                lastObject2 = 0;
              }
            }
          }

          else
          {
            v144 = *(v140 + 1776);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v145 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopLayer"];
              [v145 setParentLayer:lastObject2];
              [v145 setName:{objc_msgSend(v142, "name")}];
              rendition2 = [v142 rendition];
              v147 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopRenditionSpec"];
              [v147 setProduction:v194];
              [objc_msgSend(v147 "keySpec")];
              [objc_msgSend(v147 "keySpec")];
              -[CoreThemeDocument _normalizeRenditionKeySpec:forSchemaRendition:](selfCopy, "_normalizeRenditionKeySpec:forSchemaRendition:", [v147 keySpec], rendition2);
              v148 = rendition2;
              v140 = 0x277D02000;
              v139 = v179;
              [v147 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v148, "type"))}];
              [v147 setPhotoshopLayer:v145];
            }
          }
        }

        v137 = [objc countByEnumeratingWithState:&v208 objects:v228 count:16];
      }

      while (v137);
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  v76 = -[CTDPSDPreviewRef initWithPath:]([CTDPSDPreviewRef alloc], "initWithPath:", [v65 path]);
  if (!v76)
  {
LABEL_114:
    v14 = 0;
    goto LABEL_159;
  }

  v77 = v76;
  rowSlices = [v67 rowSlices];
  columnSlices = [v67 columnSlices];
  if ([(CTDPSDPreviewRef *)v77 sliceRowCount]< 1)
  {
    sliceRowCount = 0;
  }

  else
  {
    sliceRowCount = [(CTDPSDPreviewRef *)v77 sliceRowCount];
  }

  if ([(CTDPSDPreviewRef *)v77 sliceColumnCount]< 1)
  {
    sliceColumnCount = 0;
  }

  else
  {
    sliceColumnCount = [(CTDPSDPreviewRef *)v77 sliceColumnCount];
  }

  if ([v67 type] == 6)
  {
    v150 = 1;
    v151 = 1;
  }

  else
  {
    if (sliceRowCount < 1 || sliceColumnCount < 1 || (v165 = sliceRowCount / rowSlices, sliceRowCount % rowSlices) || sliceColumnCount % columnSlices)
    {
      if (error)
      {
        v166 = MEMORY[0x277CCA9B8];
        v167 = *MEMORY[0x277CCA050];
        v168 = v14;
        v169 = MEMORY[0x277CBEAC0];
        v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reference PSD has wrong number of slices. Couldn't create production. Filename: %@", v64];
        v171 = v169;
        v14 = v168;
        *error = [v166 errorWithDomain:v167 code:0 userInfo:{objc_msgSend(v171, "dictionaryWithObject:forKey:", v170, *MEMORY[0x277CCA450])}];
      }

      -[CoreThemeDocument deleteObject:](selfCopy, "deleteObject:", [v14 asset]);
      v125 = selfCopy;
LABEL_113:
      [(CoreThemeDocument *)v125 deleteObject:v14];
      goto LABEL_114;
    }

    v151 = (sliceColumnCount / columnSlices);
    v150 = v165;
  }

  [v14 setRowCount:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v150)}];
  [v14 setColumnCount:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v151)}];
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  themeSchemaLayers = [groupCopy themeSchemaLayers];
  v180 = [themeSchemaLayers countByEnumeratingWithState:&v204 objects:v227 count:16];
  if (v180)
  {
    v194 = v14;
    v176 = *v205;
    do
    {
      v152 = 0;
      do
      {
        if (*v205 != v176)
        {
          objc_enumerationMutation(themeSchemaLayers);
        }

        v183 = v152;
        v153 = *(*(&v204 + 1) + 8 * v152);
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        objd = [v153 renditions];
        v154 = [objd countByEnumeratingWithState:&v200 objects:v226 count:16];
        if (v154)
        {
          v155 = v154;
          v156 = *v201;
          do
          {
            for (ii = 0; ii != v155; ++ii)
            {
              if (*v201 != v156)
              {
                objc_enumerationMutation(objd);
              }

              v158 = *(*(&v200 + 1) + 8 * ii);
              v159 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopRenditionSpec"];
              [v159 setProduction:v194];
              [objc_msgSend(v159 "keySpec")];
              -[CoreThemeDocument _normalizeRenditionKeySpec:forSchemaRendition:](selfCopy, "_normalizeRenditionKeySpec:forSchemaRendition:", [v159 keySpec], v158);
              [v159 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v158, "type"))}];
              [v159 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", objc_msgSend(v153, "index")), @"layer"}];
              [v158 renditionCoordinatesForPartFeatures:v190];
              v161 = v160;
              [v159 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", (v150 + ~v162) & ~((v150 + ~v162) >> 63)), @"row"}];
              [v159 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v161), @"column"}];
            }

            v155 = [objd countByEnumeratingWithState:&v200 objects:v226 count:16];
          }

          while (v155);
        }

        v152 = v183 + 1;
      }

      while (v183 + 1 != v180);
      v180 = [themeSchemaLayers countByEnumeratingWithState:&v204 objects:v227 count:16];
    }

    while (v180);
    goto LABEL_158;
  }

LABEL_159:
  v163 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_normalizeRenditionKeySpec:(id)spec forSchemaRendition:(id)rendition
{
  if (![spec size])
  {
    [spec setSize:{-[CoreThemeDocument sizeWithIdentifier:](self, "sizeWithIdentifier:", 0)}];
  }

  if (![spec state])
  {
    [spec setState:{-[CoreThemeDocument stateWithIdentifier:](self, "stateWithIdentifier:", 0)}];
  }

  if (![spec presentationState])
  {
    [spec setPresentationState:{-[CoreThemeDocument presentationStateWithIdentifier:](self, "presentationStateWithIdentifier:", 0)}];
  }

  if (![spec direction])
  {
    [spec setDirection:{-[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", 0)}];
  }

  if (![spec value])
  {
    [spec setValue:{-[CoreThemeDocument valueWithIdentifier:](self, "valueWithIdentifier:", 0)}];
  }

  if (![spec layer])
  {
    v6 = [(CoreThemeDocument *)self drawingLayerWithIdentifier:0];

    [spec setLayer:v6];
  }
}

- (id)createEffectStyleProductionForPartDefinition:(id)definition withNameIdentifier:(id)identifier
{
  if (identifier)
  {
    v7 = @"NamedEffectProduction";
  }

  else
  {
    v7 = @"EffectStyleProduction";
  }

  v8 = [(CoreThemeDocument *)self newObjectForEntity:v7];
  [v8 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
  [v8 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](self, "renditionTypeWithIdentifier:", 7)}];
  v9 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
  v10 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self, "targetPlatform")}];
  [definition element];
  [v9 setAttributesFromRenditionKey:objc_msgSend(v10 withDocument:{"partDefinitionWithName:forElementDefinition:", objc_msgSend(definition, "name"), objc_msgSend(objc_opt_class(), "elementDefinitionWithName:withSchema:", objc_msgSend(objc_msgSend(definition, "element"), "name"), v10)) + 16, self}];
  [v8 setBaseKeySpec:v9];

  if (identifier)
  {
    [objc_msgSend(v8 "baseKeySpec")];
  }

  [v8 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"System Effect: %@ - %@", objc_msgSend(objc_msgSend(definition, "element"), "name"), objc_msgSend(definition, "name"))}];
  [v8 setPartDefinition:definition];
  [v8 generateRenditionsWithDocument:self];

  return v8;
}

- (id)namedEffectProductionWithName:(id)name
{
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedEffectProduction"];
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name = %@", name];
  v7 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
  [v5 setPredicate:name];
  v10 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v10];

  if (v10)
  {
    NSLog(&cfstr_UnableToLookup.isa, name, [v10 localizedDescription]);
    return 0;
  }

  else
  {
    result = [v8 count];
    if (result)
    {
      return [v8 objectAtIndex:0];
    }
  }

  return result;
}

- (id)_namedTextEffectPartDefinition
{
  v2 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SchemaPartDefinition", [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@ AND element.name = %@", @"Named Text", @"Named Effect"], 0);
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)_namedImageEffectPartDefinition
{
  v2 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SchemaPartDefinition", [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@ AND element.name = %@", @"Named Image", @"Named Effect"], 0);
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)createNamedEffectProductionWithName:(id)name isText:(BOOL)text
{
  if (text)
  {
    _namedTextEffectPartDefinition = [(CoreThemeDocument *)self _namedTextEffectPartDefinition];
  }

  else
  {
    _namedTextEffectPartDefinition = [(CoreThemeDocument *)self _namedImageEffectPartDefinition];
  }

  v7 = _namedTextEffectPartDefinition;
  v8 = [(CoreThemeDocument *)self namedEffectProductionWithName:name];
  if (v8)
  {
    v9 = [objc_msgSend(v8 "name")];

    return [(CoreThemeDocument *)self createEffectStyleProductionForPartDefinition:v7 withNameIdentifier:v9];
  }

  else
  {
    _createNamedElementWithNextAvailableIdentifier = [(CoreThemeDocument *)self _createNamedElementWithNextAvailableIdentifier];
    v12 = -[CoreThemeDocument createEffectStyleProductionForPartDefinition:withNameIdentifier:](self, "createEffectStyleProductionForPartDefinition:withNameIdentifier:", v7, [_createNamedElementWithNextAvailableIdentifier identifier]);
    [_createNamedElementWithNextAvailableIdentifier setName:name];
    [_createNamedElementWithNextAvailableIdentifier setProduction:v12];
    return v12;
  }
}

- (id)_createPhotoshopElementProductionWithAsset:(id)asset
{
  v5 = [(CoreThemeDocument *)self newObjectForEntity:@"PhotoshopElementProduction"];
  [v5 setValue:asset forKey:@"asset"];
  [v5 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 0), @"isExcludedFromFilter"}];
  [v5 setValue:-[CoreThemeDocument renditionTypeWithIdentifier:](self forKey:{"renditionTypeWithIdentifier:", 0), @"renditionType"}];
  v6 = [(CoreThemeDocument *)self iterationTypeWithIdentifier:4];
  [v5 setValue:v6 forKey:@"rowIterationType"];
  [v5 setValue:v6 forKey:@"columnIterationType"];
  v7 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
  [v7 setScaleFactor:{objc_msgSend(asset, "scaleFactor")}];
  [v5 setValue:v7 forKey:@"baseKeySpec"];

  [v5 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"From: %@/%@", objc_msgSend(asset, "category"), objc_msgSend(asset, "name")), @"comment"}];
  return v5;
}

- (id)_namedImagePartDefinition
{
  v2 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SchemaPartDefinition", [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@ AND element.name = %@", @"Artwork Image", @"Named Asset"], 0);
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)_createNamedElementWithNextAvailableIdentifier
{
  cachedMaxIdentifierInUse = self->cachedMaxIdentifierInUse;
  if (cachedMaxIdentifierInUse > 0)
  {
LABEL_2:
    self->cachedMaxIdentifierInUse = cachedMaxIdentifierInUse + 1;
    return [(CoreThemeDocument *)self _createNamedElementWithIdentifier:?];
  }

  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:0];
  v6 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedElement"];
  v7 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
  [v6 setSortDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v5)}];

  [v6 setFetchLimit:1];
  v9 = 0;
  v8 = [v7 executeFetchRequest:v6 error:&v9];

  if (!v9)
  {
    cachedMaxIdentifierInUse = [v8 count];
    if (cachedMaxIdentifierInUse)
    {
      cachedMaxIdentifierInUse = [v8 objectAtIndex:0];
      if (cachedMaxIdentifierInUse)
      {
        cachedMaxIdentifierInUse = [objc_msgSend(cachedMaxIdentifierInUse "identifier")];
      }
    }

    goto LABEL_2;
  }

  NSLog(&cfstr_UnableToComput.isa, [v9 localizedDescription]);
  return 0;
}

- (id)_createNamedElementWithIdentifier:(int64_t)identifier
{
  v5 = [(CoreThemeDocument *)self newObjectForEntity:@"NamedElement"];
  [v5 setIdentifier:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", identifier)}];
  if (self->cachedMaxIdentifierInUse < identifier)
  {
    self->cachedMaxIdentifierInUse = identifier;
  }

  return v5;
}

- (id)namedElementWithName:(id)name
{
  if (!name)
  {
    return 0;
  }

  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedElement"];
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@", name];
  managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];
  [v5 setPredicate:name];
  v10 = 0;
  v8 = [managedObjectContext executeFetchRequest:v5 error:&v10];

  if (v10)
  {
    NSLog(&cfstr_UnableToLookup_0.isa, name, [v10 localizedDescription]);
    return 0;
  }

  else
  {
    result = [v8 count];
    if (result)
    {
      return [v8 objectAtIndex:0];
    }
  }

  return result;
}

- (id)namedElementsForElementDefinition:(id)definition
{
  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(definition "parts")];

  return [v3 allObjects];
}

- (id)elementProductionsWithName:(id)name
{
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:0];
  v6 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ElementProduction"];
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name = %@", name];
  [v6 setSortDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v5)}];
  [v6 setPredicate:name];
  v10 = 0;
  v8 = [objc_msgSend(-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];

  if (v10)
  {
    NSLog(&cfstr_UnableToLookup_1.isa, name, [v10 localizedDescription]);
    return 0;
  }

  return v8;
}

- (id)namedArtworkProductionWithName:(id)name
{
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedArtworkProduction"];
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name = %@", name];
  v7 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
  [v5 setPredicate:name];
  v10 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v10];

  if (v10)
  {
    NSLog(&cfstr_UnableToLookup_1.isa, name, [v10 localizedDescription]);
    return 0;
  }

  else
  {
    result = [v8 count];
    if (result)
    {
      return [v8 objectAtIndex:0];
    }
  }

  return result;
}

- (id)slicesComputedForImageSize:(CGSize)size usingSliceInsets:(id)insets resizableSliceSize:(CGSize)sliceSize withRenditionType:(int64_t)type
{
  v6 = 0;
  v56 = *MEMORY[0x277D85DE8];
  if (size.width <= 0.0 || size.height <= 0.0)
  {
    goto LABEL_60;
  }

  var3 = insets.var3;
  var2 = insets.var2;
  var1 = insets.var1;
  var0 = insets.var0;
  if (insets.var0 < 0.0 && insets.var2 < 0.0 && insets.var3 < 0.0 && insets.var1 < 0.0)
  {
LABEL_59:
    v6 = 0;
    goto LABEL_60;
  }

  width = size.width;
  height = size.height;
  if (insets.var0 >= 0.0 && type == 3 && insets.var2 >= 0.0 && insets.var1 >= 0.0 && insets.var3 >= 0.0)
  {
    if (sliceSize.width >= 1.0)
    {
      v14 = sliceSize.width;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = width - (insets.var1 + insets.var3) - v14;
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = height;
    v17 = height - (insets.var0 + var2);
    if (sliceSize.height >= 1.0)
    {
      v18 = sliceSize.height;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = v17 - v18;
    if (v17 - v18 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = insets.var1 + v14 + v15;
    if (width - v20 >= 0.0)
    {
      v21 = width - v20;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = var0 + v18 + v19;
    if (v16 - v22 >= 0.0)
    {
      v23 = v16 - v22;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, var1, var0)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", var1, 0.0, v14, var0)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", v20, 0.0, v21, var0)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, var0, var1, v18)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", var1, var0, v14, v18)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", v20, var0, v21, v18)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, v22, var1, v23)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", var1, v22, v14, v23)}];
    v25 = MEMORY[0x277CCAE60];
    v26 = v20;
    v27 = v22;
    v28 = v21;
    v29 = v23;
    goto LABEL_49;
  }

  if (type == 1 && insets.var1 >= 0.0 && insets.var3 >= 0.0)
  {
    if (sliceSize.width >= 1.0)
    {
      v30 = sliceSize.width;
    }

    else
    {
      v30 = 1.0;
    }

    if (width - (insets.var1 + insets.var3) - v30 >= 0.0)
    {
      v31 = width - (insets.var1 + insets.var3) - v30;
    }

    else
    {
      v31 = 0.0;
    }

    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, var1, height)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", var1, 0.0, v30, height)}];
    v32 = var1 + v30;
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", v32, 0.0, v31, height)}];
    v25 = MEMORY[0x277CCAE60];
    v26 = v32 + v31;
    v27 = 0.0;
    v28 = var3;
    v29 = height;
LABEL_49:
    [v24 addObject:{objc_msgSend(v25, "valueWithRect:", v26, v27, v28, v29)}];
    goto LABEL_50;
  }

  if (insets.var0 >= 0.0 && type == 2 && insets.var2 >= 0.0)
  {
    if (sliceSize.height >= 1.0)
    {
      v33 = sliceSize.height;
    }

    else
    {
      v33 = 1.0;
    }

    if (height - (insets.var0 + insets.var2) - v33 >= 0.0)
    {
      v34 = height - (insets.var0 + insets.var2) - v33;
    }

    else
    {
      v34 = 0.0;
    }

    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, width, var0)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, var0, width, v33)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, var0 + v33, width, v34)}];
    v25 = MEMORY[0x277CCAE60];
    v26 = 0.0;
    v27 = v33 + var0 + v34;
    v28 = width;
    v29 = var2;
    goto LABEL_49;
  }

  if (type > 0xC || ((1 << type) & 0x1801) == 0)
  {
    v50 = +[TDLogger defaultLogger];
    [v50 logError:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Edge insets were specified but didn't match the rendition type"}];
  }

  v24 = [MEMORY[0x277CBEB18] arrayWithObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, width, height)}];
LABEL_50:
  if (![v24 count])
  {
    goto LABEL_59;
  }

  v6 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v24, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v35 = [v24 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v52;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v51 + 1) + 8 * i) rectValue];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v47 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
        [v47 setSliceRect:{v40, v42, v44, v46}];
        [v6 addObject:v47];
      }

      v36 = [v24 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v36);
  }

LABEL_60:
  v48 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)createTextStyleProductionsForImportInfos:(id)infos error:(id *)error
{
  if (![infos count])
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v29 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v28 = [(CoreThemeDocument *)self partWithIdentifier:231];
  v27 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1015];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  idioms = [(CoreThemeDocument *)self idioms];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  v7 = [infos sortedArrayUsingComparator:&__block_literal_global_605];
  if ([v7 count])
  {
    v8 = 0;
    v23 = array;
    do
    {
      v9 = [v7 objectAtIndex:v8];
      lastObject = [array lastObject];
      v11 = [objc_msgSend(objc_msgSend(lastObject "name")];
      if (lastObject)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        goto LABEL_9;
      }

      lastObject = [(CoreThemeDocument *)self newObjectForEntity:@"TextStyleProduction"];
      v13 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v9 nameIdentifier]);
      [v13 setName:{objc_msgSend(v9, "name")}];
      [v13 setProduction:lastObject];
      [lastObject setRenditionType:v27];
      v14 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
      [v14 setElement:v29];
      [v14 setPart:v28];
      [v14 setNameIdentifier:{objc_msgSend(objc_msgSend(v13, "identifier"), "unsignedIntValue")}];
      [lastObject setBaseKeySpec:v14];

      if (lastObject)
      {
LABEL_9:
        v15 = [(CoreThemeDocument *)self newObjectForEntity:@"TextStyleRenditionSpec"];
        [v15 setAlignment:{objc_msgSend(v9, "textAlignment")}];
        [v15 setFontName:{objc_msgSend(v9, "fontName")}];
        [v9 fontSize];
        *&v16 = v16;
        [v15 setFontSize:v16];
        [v9 maxPointSize];
        *&v17 = v17;
        [v15 setMaxPointSize:v17];
        [v9 minPointSize];
        *&v18 = v18;
        [v15 setMinPointSize:v18];
        [v15 setScalingStyle:{objc_msgSend(v9, "scalingStyle")}];
        [v15 setProduction:lastObject];
        [v15 setRenditionType:v27];
        v19 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v19 setNameIdentifier:{objc_msgSend(objc_msgSend(lastObject, "baseKeySpec"), "nameIdentifier")}];
        [v19 setElement:v29];
        [v19 setPart:v28];
        [v19 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v9, "displayGamut"))}];
        [v19 setIdiom:{objc_msgSend(idioms, "objectAtIndex:", objc_msgSend(v9, "idiom"))}];
        [v19 setSubtype:{objc_msgSend(v9, "subtype")}];
        v20 = [sizeClasses objectAtIndexedSubscript:{objc_msgSend(v9, "sizeClassHorizontal")}];
        v21 = [sizeClasses objectAtIndexedSubscript:{objc_msgSend(v9, "sizeClassVertical")}];
        [v19 setSizeClassHorizontal:v20];
        [v19 setSizeClassVertical:v21];
        [v19 setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v9, "appearanceIdentifier"), objc_msgSend(v9, "appearanceName"), 1)}];
        [v19 setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v9, "localizationIdentifier"), objc_msgSend(v9, "localizationName"), 1)}];
        [v15 setKeySpec:v19];

        array = v23;
        if ((v12 & 1) == 0)
        {
          [v23 addObject:lastObject];
        }
      }

      ++v8;
    }

    while (v8 < [v7 count]);
  }

  return array;
}

uint64_t __68__CoreThemeDocument_createTextStyleProductionsForImportInfos_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

- (id)createNamedColorProductionsForImportInfos:(id)infos error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v30 = [(CoreThemeDocument *)self partWithIdentifier:217];
  v29 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1009];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  idioms = [(CoreThemeDocument *)self idioms];
  v8 = [infos sortedArrayUsingComparator:&__block_literal_global_613];
  if ([v8 count])
  {
    v9 = 0;
    v24 = v7;
    v25 = array;
    v26 = v8;
    while (1)
    {
      v10 = [v8 objectAtIndex:v9];
      if (![v10 colorComponents])
      {
        [CoreThemeDocument createNamedColorProductionsForImportInfos:error:];
      }

      lastObject = [array lastObject];
      v12 = [objc_msgSend(objc_msgSend(lastObject "name")];
      if (lastObject)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if ((v13 & 1) == 0)
      {
        lastObject = [(CoreThemeDocument *)self newObjectForEntity:@"NamedColorProduction"];
        v14 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v10 nameIdentifier]);
        [v14 setName:{objc_msgSend(v10, "name")}];
        [v14 setProduction:lastObject];
        [lastObject setRenditionType:v29];
        v15 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v15 setElement:v7];
        [v15 setPart:v30];
        [v15 setNameIdentifier:{objc_msgSend(objc_msgSend(v14, "identifier"), "unsignedIntValue")}];
        [lastObject setBaseKeySpec:v15];

        if (!lastObject)
        {
          goto LABEL_22;
        }
      }

      v16 = [(CoreThemeDocument *)self newObjectForEntity:@"NamedColorRenditionSpec"];
      colorComponents = [v10 colorComponents];
      if ([colorComponents count] == 4)
      {
        break;
      }

      if ([colorComponents count] == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 1;
        goto LABEL_14;
      }

LABEL_15:
      if ([v10 colorSpaceID])
      {
        colorSpaceID = [v10 colorSpaceID];
      }

      else
      {
        colorSpaceID = 1;
      }

      [v16 setColorSpaceID:colorSpaceID];
      if ([objc_msgSend(v10 "systemColorName")])
      {
        [v16 setSystemColorName:{objc_msgSend(v10, "systemColorName")}];
      }

      [v16 setProduction:lastObject];
      [v16 setRenditionType:v29];
      v22 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
      [v22 setNameIdentifier:{objc_msgSend(objc_msgSend(lastObject, "baseKeySpec"), "nameIdentifier")}];
      [v22 setElement:v7];
      [v22 setPart:v30];
      [v22 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v10, "displayGamut"))}];
      [v22 setIdiom:{objc_msgSend(idioms, "objectAtIndex:", objc_msgSend(v10, "idiom"))}];
      [v22 setSubtype:{objc_msgSend(v10, "subtype")}];
      [v22 setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v10, "appearanceIdentifier"), objc_msgSend(v10, "appearanceName"), 1)}];
      [v22 setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v10, "localizationIdentifier"), objc_msgSend(v10, "localizationName"), 1)}];
      [v16 setKeySpec:v22];

      v8 = v26;
      if ((v13 & 1) == 0)
      {
        [array addObject:lastObject];
      }

LABEL_22:
      if (++v9 >= [v8 count])
      {
        return array;
      }
    }

    v18 = 1;
    v19 = 2;
    v20 = 3;
LABEL_14:
    [objc_msgSend(colorComponents objectAtIndex:{0), "doubleValue"}];
    [v16 setRed:?];
    [objc_msgSend(colorComponents objectAtIndex:{v18), "doubleValue"}];
    [v16 setGreen:?];
    [objc_msgSend(colorComponents objectAtIndex:{v19), "doubleValue"}];
    [v16 setBlue:?];
    [objc_msgSend(colorComponents objectAtIndex:{v20), "doubleValue"}];
    [v16 setAlpha:?];
    v7 = v24;
    array = v25;
    goto LABEL_15;
  }

  return array;
}

uint64_t __69__CoreThemeDocument_createNamedColorProductionsForImportInfos_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

- (id)createNamedGradientProductionsForImportInfos:(id)infos error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v28 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v27 = [(CoreThemeDocument *)self partWithIdentifier:247];
  v26 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1021];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  idioms = [(CoreThemeDocument *)self idioms];
  v6 = [infos sortedArrayUsingComparator:&__block_literal_global_624];
  if ([v6 count])
  {
    v7 = 0;
    v23 = v6;
    do
    {
      v8 = [v6 objectAtIndex:v7];
      v9 = [objc_msgSend(v8 "colorNames")];
      if (v9 != [objc_msgSend(v8 "colorStops")])
      {
        [CoreThemeDocument createNamedGradientProductionsForImportInfos:error:];
      }

      if (![objc_msgSend(v8 "colorNames")])
      {
        [CoreThemeDocument createNamedGradientProductionsForImportInfos:error:];
      }

      lastObject = [array lastObject];
      v11 = [objc_msgSend(objc_msgSend(lastObject "name")];
      if (lastObject)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        goto LABEL_12;
      }

      lastObject = [(CoreThemeDocument *)self newObjectForEntity:@"NamedGradientProduction"];
      v13 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v8 nameIdentifier]);
      [v13 setName:{objc_msgSend(v8, "name")}];
      [v13 setProduction:lastObject];
      [lastObject setRenditionType:v26];
      v14 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
      [v14 setElement:v28];
      [v14 setPart:v27];
      [v14 setNameIdentifier:{objc_msgSend(objc_msgSend(v13, "identifier"), "unsignedIntValue")}];
      [lastObject setBaseKeySpec:v14];

      if (lastObject)
      {
LABEL_12:
        v30 = v12;
        v15 = [(CoreThemeDocument *)self newObjectForEntity:@"NamedGradientRenditionSpec"];
        [v15 setGradientType:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(v8, "gradientType"))}];
        [v8 gradientStartPoint];
        [v15 setGradientStartPoint:?];
        [v8 gradientEndPoint];
        [v15 setGradientEndPoint:?];
        orderedSet = [MEMORY[0x277CBEB40] orderedSet];
        v17 = [objc_msgSend(v8 "colorStops")];
        if (v17)
        {
          v18 = v17;
          for (i = 0; i != v18; ++i)
          {
            v20 = [(CoreThemeDocument *)self newObjectForEntity:@"ColorStop"];
            [v20 setStop:{objc_msgSend(objc_msgSend(v8, "colorStops"), "objectAtIndex:", i)}];
            [v20 setColorName:{objc_msgSend(objc_msgSend(v8, "colorNames"), "objectAtIndex:", i)}];
            [orderedSet addObject:v20];
          }
        }

        [v15 setColorStops:orderedSet];
        [v15 setProduction:lastObject];
        [v15 setRenditionType:v26];
        v21 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v21 setNameIdentifier:{objc_msgSend(objc_msgSend(lastObject, "baseKeySpec"), "nameIdentifier")}];
        [v21 setElement:v28];
        [v21 setPart:v27];
        [v21 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v8, "displayGamut"))}];
        [v21 setIdiom:{objc_msgSend(idioms, "objectAtIndex:", objc_msgSend(v8, "idiom"))}];
        [v21 setSubtype:{objc_msgSend(v8, "subtype")}];
        [v21 setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v8, "appearanceIdentifier"), objc_msgSend(v8, "appearanceName"), 1)}];
        [v21 setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v8, "localizationIdentifier"), objc_msgSend(v8, "localizationName"), 1)}];
        [v15 setKeySpec:v21];

        v6 = v23;
        if ((v30 & 1) == 0)
        {
          [array addObject:lastObject];
        }
      }

      ++v7;
    }

    while (v7 < [v6 count]);
  }

  return array;
}

uint64_t __72__CoreThemeDocument_createNamedGradientProductionsForImportInfos_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

- (id)_sizeIndexesByNameFromNamedAssetImportInfos:(id)infos
{
  v37 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [infos sortedArrayUsingComparator:&__block_literal_global_642];
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v6 count];
  name = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    if (v8 < [v6 count])
    {
      v9 = [v6 objectAtIndex:v8];
    }

    if (!name)
    {
      name = [v9 name];
    }

    if (![name isEqualToString:{objc_msgSend(v9, "name")}] || v8 == objc_msgSend(v6, "count"))
    {
      if ([v28 count])
      {
        v10 = [v28 sortedArrayUsingComparator:&__block_literal_global_644];
        if (v10 && name)
        {
          [dictionary setObject:v10 forKey:name];
        }

        else
        {
          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
        }
      }

      if (v8 >= [v6 count])
      {
        v11 = 0;
      }

      else
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      name = [v9 name];
    }

    if (v8 < [v6 count])
    {
      iconSize = [v9 iconSize];
      if (iconSize)
      {
        v13 = iconSize;
        if ([v28 indexOfObject:iconSize] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v28 addObject:v13];
        }
      }
    }

    ++v8;
  }

  while (v8 <= [v6 count]);
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [dictionary allKeys];
  v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [dictionary valueForKey:v18];
        v20 = [MEMORY[0x277CBEB58] set];
        if ([v19 count])
        {
          v21 = 0;
          do
          {
            v22 = [(CoreThemeDocument *)self newObjectForEntity:@"MultisizeImageSetSizeIndex"];
            [objc_msgSend(v19 objectAtIndex:{v21), "sizeValue"}];
            v24 = v23;
            [v22 setWidth:v25];
            [v22 setHeight:v24];
            [v22 setIndex:(v21 + 1)];
            [v20 addObject:v22];
            ++v21;
          }

          while (v21 < [v19 count]);
        }

        [dictionary2 setObject:v20 forKey:v18];
      }

      v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  v26 = *MEMORY[0x277D85DE8];
  return dictionary2;
}

uint64_t __65__CoreThemeDocument__sizeIndexesByNameFromNamedAssetImportInfos___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

uint64_t __65__CoreThemeDocument__sizeIndexesByNameFromNamedAssetImportInfos___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  [a2 sizeValue];
  v5 = v4;
  v7 = v6;
  [a3 sizeValue];
  v10 = v8 * v9;
  if (v5 * v7 < v10)
  {
    return -1;
  }

  else
  {
    return v5 * v7 > v10;
  }
}

- (BOOL)needToCreateForwardstopFor2018DeploymentVariant:(id)variant withCompressionTypes:(id)types
{
  if (![(CoreThemeDocument *)self needToCreateForwardstopForPlatform])
  {
    return 0;
  }

  if ([objc_msgSend(variant "renditionType")])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [variant production];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  [variant production];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  compressionType = [variant compressionType];
  if (compressionType == [types objectAtIndex:3])
  {

    return [(CoreThemeDocument *)self shouldCreateForwardstopForLossy];
  }

  else
  {
    compressionType2 = [variant compressionType];
    if (compressionType2 != [types objectAtIndex:2])
    {
      compressionType3 = [variant compressionType];
      if (compressionType3 != [types objectAtIndex:0])
      {
        return 0;
      }
    }

    return [(CoreThemeDocument *)self shouldCreate2018ForwardstopForLossless];
  }
}

- (BOOL)needToCreateForwardstopFor2019DeploymentVariant:(id)variant withCompressionTypes:(id)types
{
  if (![(CoreThemeDocument *)self needToCreateForwardstopForPlatform])
  {
    return 0;
  }

  if ([objc_msgSend(variant "renditionType")])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [variant production];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  [variant production];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  compressionType = [variant compressionType];
  if (compressionType != [types objectAtIndex:2])
  {
    compressionType2 = [variant compressionType];
    if (compressionType2 != [types objectAtIndex:0])
    {
      return 0;
    }
  }

  return [(CoreThemeDocument *)self shouldCreate2019ForwardstopForLossless];
}

- (void)createForwardstops:(id)forwardstops withCompressionTypes:(id)types withDeploymentTargets:(id)targets
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(CoreThemeDocument *)self isArtworkRenditionEligibleForForwardstop:forwardstops])
  {
    return;
  }

  v9 = [(CoreThemeDocument *)self needToCreateForwardstopFor2018DeploymentVariant:forwardstops withCompressionTypes:types];
  v10 = [(CoreThemeDocument *)self needToCreateForwardstopFor2019DeploymentVariant:forwardstops withCompressionTypes:types];
  if (v9)
  {
    v11 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkRenditionSpec"];
    [objc_msgSend(forwardstops "keySpec")];
    [forwardstops copyAttributesInto:v11];
    [v11 setAllowsPaletteImageCompression:{-[CoreThemeDocument shouldAllowPaletteImageCompressionForDeploymentTarget:](self, "shouldAllowPaletteImageCompressionForDeploymentTarget:", 3)}];
    [v11 setAllowsDeepmapCompression:{-[CoreThemeDocument shouldAllowDeepmapCompressionForDeploymentTarget:](self, "shouldAllowDeepmapCompressionForDeploymentTarget:", 3)}];
    [v11 setAllowsHevcCompression:{-[CoreThemeDocument shouldAllowHevcCompressionForDeploymentTarget:](self, "shouldAllowHevcCompressionForDeploymentTarget:", 3)}];
    [v11 setProduction:{objc_msgSend(forwardstops, "production")}];
    [v11 setAsset:{objc_msgSend(forwardstops, "asset")}];
    [v11 setSlices:{objc_msgSend(forwardstops, "slices")}];
    [v11 resetToBaseKeySpec];
    [objc_msgSend(forwardstops "keySpec")];
    [objc_msgSend(v11 "keySpec")];

    if (v10)
    {
      v13 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkRenditionSpec"];
      [forwardstops copyAttributesInto:v13];
LABEL_9:
      [v13 setAllowsDeepmap2Compression:{-[CoreThemeDocument shouldAllowDeepmap2CompressionForDeploymentTarget:](self, "shouldAllowDeepmap2CompressionForDeploymentTarget:", 5)}];
      [v13 setProduction:{objc_msgSend(forwardstops, "production")}];
      [v13 setAsset:{objc_msgSend(forwardstops, "asset")}];
      [v13 setSlices:{objc_msgSend(forwardstops, "slices")}];
      [v13 resetToBaseKeySpec];
      [objc_msgSend(forwardstops "keySpec")];
      [objc_msgSend(v13 "keySpec")];

      return;
    }
  }

  else
  {
    [forwardstops setAllowsPaletteImageCompression:{-[CoreThemeDocument shouldAllowPaletteImageCompression](self, "shouldAllowPaletteImageCompression")}];
    [forwardstops setAllowsHevcCompression:{-[CoreThemeDocument shouldAllowHevcCompression](self, "shouldAllowHevcCompression")}];
    [forwardstops setAllowsDeepmapCompression:{-[CoreThemeDocument shouldAllowDeepmapCompression](self, "shouldAllowDeepmapCompression")}];
    if (v10)
    {
      v13 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkRenditionSpec"];
      [objc_msgSend(forwardstops "keySpec")];
      [forwardstops copyAttributesInto:v13];
      goto LABEL_9;
    }
  }

  shouldAllowDeepmap2Compression = [(CoreThemeDocument *)self shouldAllowDeepmap2Compression];

  [forwardstops setAllowsDeepmap2Compression:shouldAllowDeepmap2Compression];
}

- (id)compressionTypes
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02768] + 16))
  {
    v4 = MEMORY[0x277D02768];
    do
    {
      [array addObject:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)deploymentTargets
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02770] + 16))
  {
    v4 = MEMORY[0x277D02770];
    do
    {
      [array addObject:{-[CoreThemeDocument deploymentTargetWithIdentifier:](self, "deploymentTargetWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)idioms
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D027B0] + 16))
  {
    v4 = MEMORY[0x277D027B0];
    do
    {
      [array addObject:{-[CoreThemeDocument idiomWithIdentifier:](self, "idiomWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)displayGamuts
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02780] + 16))
  {
    v4 = MEMORY[0x277D02780];
    do
    {
      [array addObject:{-[CoreThemeDocument displayGamutWithIdentifier:](self, "displayGamutWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)sizeClasses
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D027F8] + 16))
  {
    v4 = MEMORY[0x277D027F8];
    do
    {
      [array addObject:{-[CoreThemeDocument sizeClassWithIdentifier:](self, "sizeClassWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)featureSetClasses
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D027A0] + 16))
  {
    v4 = MEMORY[0x277D027A0];
    do
    {
      [array addObject:{-[CoreThemeDocument graphicsFeatureSetClassWithIdentifier:](self, "graphicsFeatureSetClassWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)directions
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02778] + 16))
  {
    v4 = MEMORY[0x277D02778];
    do
    {
      [array addObject:{-[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)textureFaces
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D027E0] + 16))
  {
    v4 = MEMORY[0x277D027E0];
    do
    {
      [array addObject:{-[CoreThemeDocument textureFaceWithIdentifier:](self, "textureFaceWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)glyphsSizes
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02810] + 16))
  {
    v4 = MEMORY[0x277D02810];
    do
    {
      [array addObject:{-[CoreThemeDocument glyphSizeWithIdentifier:](self, "glyphSizeWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)glyphWeights
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02818] + 16))
  {
    v4 = MEMORY[0x277D02818];
    do
    {
      [array addObject:{-[CoreThemeDocument glyphWeightWithIdentifier:](self, "glyphWeightWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)glyphRenderingModes
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02808] + 16))
  {
    v4 = MEMORY[0x277D02808];
    do
    {
      [array addObject:{-[CoreThemeDocument vectorGlyphRenderingModeWithIdentifier:](self, "vectorGlyphRenderingModeWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (void)_createForwardstopRenditions
{
  v3 = [(CoreThemeDocument *)self allObjectsForEntity:@"RenditionSpec" withSortDescriptors:0];
  compressionTypes = [(CoreThemeDocument *)self compressionTypes];
  deploymentTargets = [(CoreThemeDocument *)self deploymentTargets];
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      -[CoreThemeDocument createForwardstops:withCompressionTypes:withDeploymentTargets:](self, "createForwardstops:withCompressionTypes:withDeploymentTargets:", [v3 objectAtIndex:v6++], compressionTypes, deploymentTargets);
    }

    while (v6 < [v3 count]);
  }
}

BOOL __91__CoreThemeDocument_createNamedArtworkProductionsForAssets_customInfos_skipLastStep_error___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(*(a1 + 32) "iconSize")];
  v4 = v3;
  return [a2 height] == v5 && objc_msgSend(a2, "width") == v4;
}

BOOL __91__CoreThemeDocument_createNamedArtworkProductionsForAssets_customInfos_skipLastStep_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) idiom];
  result = 0;
  if (v4 == [objc_msgSend(a2 "keySpec")])
  {
    v5 = [*(a1 + 32) subtype];
    if (v5 == [objc_msgSend(a2 "keySpec")])
    {
      return 1;
    }
  }

  return result;
}

- (void)createNamedRecognitionObjectsForAssets:(id)assets customInfos:(id)infos error:(id *)error
{
  infosCopy = infos;
  v57 = *MEMORY[0x277D85DE8];
  error = [(CoreThemeDocument *)self elementWithIdentifier:85, infos, error];
  v43 = [(CoreThemeDocument *)self partWithIdentifier:207];
  v42 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1014];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [(CoreThemeDocument *)self objectsForEntity:@"Tag" withPredicate:0 sortDescriptors:0];
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", *(*(&v51 + 1) + 8 * i)), objc_msgSend(*(*(&v51 + 1) + 8 * i), "identifier")}];
      }

      v10 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v10);
  }

  v44 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"RecognitionObjectProduction", 0, 0)}];
  v14 = error;
  assetsCopy2 = assets;
  if ([infosCopy count])
  {
    v15 = 0;
    v38 = infosCopy;
    do
    {
      v45 = v15;
      v16 = [infosCopy objectAtIndex:v15];
      v17 = [v44 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v16, "name"))}];
      if ([v17 firstObject] && (objc_msgSend(v17, "firstObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v18 = v16;
        firstObject = [v17 firstObject];
      }

      else
      {
        v20 = [(CoreThemeDocument *)self newObjectForEntity:@"RecognitionObjectProduction"];
        if ([v16 nameIdentifier])
        {
          _createNamedElementWithNextAvailableIdentifier = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v16 nameIdentifier]);
        }

        else
        {
          _createNamedElementWithNextAvailableIdentifier = [(CoreThemeDocument *)self _createNamedElementWithNextAvailableIdentifier];
        }

        v22 = _createNamedElementWithNextAvailableIdentifier;
        [_createNamedElementWithNextAvailableIdentifier setName:{objc_msgSend(v16, "name")}];
        [v22 setProduction:v20];
        v46 = v20;
        v23 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v46 setBaseKeySpec:v23];
        [v23 setElement:v14];
        [v23 setPart:v43];
        [v23 setNameIdentifier:{objc_msgSend(objc_msgSend(v22, "identifier"), "unsignedIntValue")}];
        [v46 setDateOfLastChange:{objc_msgSend(v16, "modificationDate")}];
        [v46 setRenditionType:v42];

        firstObject = v46;
        [v44 addObject:v46];
        if (v16)
        {
          tags = [v16 tags];
          v25 = v45;
          if ([tags count])
          {
            v41 = v16;
            v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v27 = [tags countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v48;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v48 != v29)
                  {
                    objc_enumerationMutation(tags);
                  }

                  v31 = *(*(&v47 + 1) + 8 * j);
                  v32 = [v7 objectForKey:v31];
                  if ([v32 count])
                  {
                    if ([v32 count] != 1)
                    {
                      [CoreThemeDocument createNamedRecognitionObjectsForAssets:customInfos:error:];
                    }

                    v33 = [v32 objectAtIndex:0];
                  }

                  else
                  {
                    v33 = [(CoreThemeDocument *)self newObjectForEntity:@"Tag"];
                    [v33 setIdentifier:v31];
                    [v7 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", v33), v31}];
                  }

                  [v26 addObject:v33];
                }

                v28 = [tags countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v28);
            }

            [v46 addTags:v26];
            v34 = [tags count];
            if (v34 != [v26 count])
            {
              [CoreThemeDocument createNamedRecognitionObjectsForAssets:customInfos:error:];
            }

            infosCopy = v38;
            v14 = error;
            assetsCopy2 = assets;
            v16 = v41;
            v25 = v45;
          }

          v18 = v16;
          firstObject = v46;
          if ([objc_msgSend(v16 "universalTypeIdentifier")])
          {
            [v46 setUniversalTypeIdentifier:{objc_msgSend(v16, "universalTypeIdentifier")}];
          }

          goto LABEL_37;
        }

        v18 = 0;
      }

      v25 = v45;
LABEL_37:
      v35 = [(CoreThemeDocument *)self newObjectForEntity:@"RecognitionObjectRenditionSpec"];
      [v35 setAsset:{objc_msgSend(assetsCopy2, "objectAtIndex:", v25)}];
      [v35 setProduction:firstObject];
      [v35 setVersion:{objc_msgSend(v18, "objectVersion")}];
      [v18 transformation];
      [v35 setReferenceOriginTransform:?];
      [v35 setPreserveForArchiveOnly:{objc_msgSend(v18, "preserveForArchiveOnly")}];
      [v35 resetToBaseKeySpec];
      keySpec = [v35 keySpec];
      [keySpec setIdiom:{-[CoreThemeDocument idiomWithIdentifier:](self, "idiomWithIdentifier:", objc_msgSend(v18, "idiom"))}];
      [keySpec setScaleFactor:{objc_msgSend(v18, "scaleFactor")}];
      [keySpec setSubtype:{objc_msgSend(v18, "subtype")}];
      [keySpec setGamut:{-[CoreThemeDocument displayGamutWithIdentifier:](self, "displayGamutWithIdentifier:", objc_msgSend(v18, "displayGamut"))}];
      [keySpec setSizeClassHorizontal:{-[CoreThemeDocument sizeClassWithIdentifier:](self, "sizeClassWithIdentifier:", objc_msgSend(v18, "sizeClassHorizontal"))}];
      [keySpec setSizeClassVertical:{-[CoreThemeDocument sizeClassWithIdentifier:](self, "sizeClassWithIdentifier:", objc_msgSend(v18, "sizeClassVertical"))}];
      [keySpec setMemoryClass:{objc_msgSend(v18, "memoryClass")}];
      [keySpec setDirection:{-[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", objc_msgSend(v18, "layoutDirection"))}];
      [keySpec setGraphicsFeatureSetClass:{-[CoreThemeDocument graphicsFeatureSetClassWithIdentifier:](self, "graphicsFeatureSetClassWithIdentifier:", objc_msgSend(v18, "graphicsFeatureSetClass"))}];

      v15 = v25 + 1;
    }

    while (v15 < [infosCopy count]);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_addLegacyIconAssetsForLayerStackProduction:(id)production withName:(id)name error:(id *)error
{
  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  v9 = @"UIAppearanceAny";
  v24 = targetPlatform;
  if (targetPlatform)
  {
    v10 = @"UIAppearanceLight";
  }

  else
  {
    v9 = @"NSAppearanceNameSystem";
    v10 = @"NSAppearanceNameAqua";
  }

  if (targetPlatform)
  {
    v11 = @"UIAppearanceDark";
  }

  else
  {
    v11 = @"NSAppearanceNameDarkAqua";
  }

  v12 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"Appearance" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name == %@", v9), 0), "firstObject"}];
  v13 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"Appearance" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name == %@", v10), 0), "firstObject"}];
  v14 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"Appearance" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name == %@", v11), 0), "firstObject"}];
  v15 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"Appearance" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name == %@", @"ISAppearanceTintable", 0), "firstObject"}];
  v16 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v13);
  if (v16)
  {
    v17 = [(CoreThemeDocument *)self _iconLayerStackFromLayerStackRendition:v16 withName:name matchingAppearance:v13 fallbackAppearance:v12 error:error];
    -[CoreThemeDocument _addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:](self, "_addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:", v17, v12, 0, [MEMORY[0x277D1B180] color], error);
    if (v24 == 1)
    {
      v18 = v12;
      v19 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v14);
      if (v19 || (v19 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v12)) != 0)
      {
        v20 = [(CoreThemeDocument *)self _iconLayerStackFromLayerStackRendition:v19 withName:name matchingAppearance:v14 fallbackAppearance:v12 error:error];
        -[CoreThemeDocument _addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:](self, "_addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:", v20, v14, 1, [MEMORY[0x277D1B180] color], error);
      }

      v21 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v15);
      if (v21 || (v21 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v18)) != 0)
      {
        v22 = [(CoreThemeDocument *)self _iconLayerStackFromLayerStackRendition:v21 withName:name matchingAppearance:v15 fallbackAppearance:v18 error:error];
        v23 = [MEMORY[0x277D1B180] tintWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];

        [(CoreThemeDocument *)self _addLegacyIconAssetsForLayerStack:v22 forAppearance:v15 renderedAppearance:1 renderingMode:v23 error:error];
      }
    }
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreThemeDefinition" code:5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Failed to find a light mode icon rendition for layered icon production", *MEMORY[0x277CCA450], 0, 0)}];
  }
}

- (id)_iconLayerStackFromLayerStackRendition:(id)rendition withName:(id)name matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  if (rendition)
  {
    [(CoreThemeDocument *)self targetPlatform];
    CUIMaxScaleForTargetPlatform();
    v13 = objc_alloc(MEMORY[0x277D026A0]);
    [rendition canvasSize];
    v14 = [v13 initWithName:name withSize:? atScale:?];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    layerReferences = [rendition layerReferences];
    v16 = [layerReferences countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(layerReferences);
          }

          [(CoreThemeDocument *)self _addLayerReference:*(*(&v22 + 1) + 8 * v19++) toMutableIconLayerStack:v14 matchingAppearance:appearance fallbackAppearance:fallbackAppearance error:error];
        }

        while (v17 != v19);
        v17 = [layerReferences countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v14 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(rendition, "keySpec"), "appearance"), "name")}];
  }

  else
  {
    v14 = 0;
  }

  result = v14;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_namedColorFromColorRendition:(id)rendition
{
  components[4] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D02688]);
  v6 = -[CoreThemeDocument createCGColorSpaceWithIdentifier:](self, "createCGColorSpaceWithIdentifier:", [rendition colorSpaceID]);
  [rendition red];
  components[0] = v7;
  [rendition green];
  components[1] = v8;
  [rendition blue];
  components[2] = v9;
  [rendition alpha];
  components[3] = v10;
  v11 = CGColorCreate(v6, components);
  [v5 setCGColor:v11];
  [v5 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(rendition, "keySpec"), "appearance"), "name")}];
  CGColorRelease(v11);
  CGColorSpaceRelease(v6);
  result = v5;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_namedGradientFromGradientRendition:(id)rendition matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance
{
  v39 = *MEMORY[0x277D85DE8];
  v29 = objc_alloc_init(MEMORY[0x277D02690]);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [rendition colorStops];
  v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        colorName = [v13 colorName];
        v15 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedColorProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", colorName), 0), "firstObject"}];
        v16 = [objc_msgSend(v15 "renditions")];
        renditions = [v15 renditions];
        if (v16 < 2)
        {
          anyObject = [renditions anyObject];
        }

        else
        {
          v18 = [(CoreThemeDocument *)self _renditionInSet:renditions matchingAppearance:fallbackAppearance];
          v19 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v15 renditions], appearance);
          if (v19)
          {
            anyObject = v19;
          }

          else
          {
            anyObject = v18;
          }
        }

        v21 = -[CoreThemeDocument createCGColorSpaceWithIdentifier:](self, "createCGColorSpaceWithIdentifier:", [anyObject colorSpaceID]);
        [anyObject red];
        components[0] = v22;
        [anyObject green];
        components[1] = v23;
        [anyObject blue];
        components[2] = v24;
        [anyObject alpha];
        components[3] = v25;
        v26 = CGColorCreate(v21, components);
        [array addObject:v26];
        [array2 addObject:{objc_msgSend(v13, "stop")}];
        CGColorRelease(v26);
        CGColorSpaceRelease(v21);
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  [v29 setColors:array andStops:array2];
  [v29 setGradientType:{objc_msgSend(objc_msgSend(rendition, "gradientType"), "integerValue")}];
  [v29 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(rendition, "keySpec"), "appearance"), "name")}];
  [rendition gradientStartPoint];
  [v29 setGradientStartPoint:?];
  [rendition gradientEndPoint];
  [v29 setGradientEndPoint:?];
  result = v29;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_renditionInSet:(id)set matchingAppearance:(id)appearance
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CoreThemeDocument__renditionInSet_matchingAppearance___block_invoke;
  v6[3] = &unk_278EBB0E8;
  v6[4] = appearance;
  v6[5] = &v7;
  [set enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __56__CoreThemeDocument__renditionInSet_matchingAppearance___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [objc_msgSend(objc_msgSend(a2 "keySpec")];
  result = [*(a1 + 32) identifier];
  if (v6 == result)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *a3 = 1;
  }

  return result;
}

- (void)_addLayerReference:(id)reference toMutableIconLayerStack:(id)stack matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance error:(id *)error
{
  v111 = *MEMORY[0x277D85DE8];
  name = [reference name];
  [reference frameRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [objc_msgSend(reference "opacity")];
  v20 = v19;
  [objc_msgSend(reference "translucency")];
  v22 = v21;
  v95 = [objc_msgSend(reference "blendMode")];
  gradientOrColorName = [reference gradientOrColorName];
  [reference blurStrength];
  v25 = v24;
  hasSpecular = [reference hasSpecular];
  hasLightingEffects = [reference hasLightingEffects];
  gathersSpecularByElement = [reference gathersSpecularByElement];
  v94 = [objc_msgSend(reference "shadowStyle")];
  [objc_msgSend(reference "shadowOpacity")];
  v27 = v26;
  [(CoreThemeDocument *)self targetPlatform];
  v92 = CUIMaxScaleForTargetPlatform();
  v99 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedArtworkProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", name), 0), "firstObject"}];
  v28 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedColorProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", name), 0), "firstObject"}];
  v97 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedGradientProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", name), 0), "firstObject"}];
  v29 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"LayerStackProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", name), 0), "firstObject"}];
  v30 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedColorProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", gradientOrColorName), 0), "firstObject"}];
  v31 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedGradientProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", gradientOrColorName), 0), "firstObject"}];
  if (v28)
  {
    if ([objc_msgSend(appearance "name")])
    {
      v32 = 0;
    }

    else
    {
      v32 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v28 renditions], fallbackAppearance);
    }

    v36 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v28 renditions], appearance);
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v32;
    }

    if (v37)
    {
      v38 = [(CoreThemeDocument *)self _namedColorFromColorRendition:?];
LABEL_28:
      v53 = *MEMORY[0x277D85DE8];

      [stack addLayer:v38];
      return;
    }

    goto LABEL_59;
  }

  v33 = v30;
  v34 = gradientOrColorName;
  if (v97)
  {
    if ([objc_msgSend(appearance "name")])
    {
      v35 = 0;
    }

    else
    {
      v35 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v97 renditions], fallbackAppearance);
    }

    v51 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v97 renditions], appearance);
    if (v51)
    {
      v52 = v51;
    }

    else
    {
      v52 = v35;
    }

    if (v52)
    {
      v38 = [(CoreThemeDocument *)self _namedGradientFromGradientRendition:v52 matchingAppearance:appearance fallbackAppearance:appearance];
      goto LABEL_28;
    }

LABEL_59:
    v82 = *MEMORY[0x277D85DE8];
    return;
  }

  v98 = v31;
  v39 = v25;
  appearanceCopy2 = appearance;
  if (!v99 || ![v99 isMemberOfClass:objc_opt_class()])
  {
    if (v29)
    {
      v54 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v29 renditions], fallbackAppearance);
      v55 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v29 renditions], appearance);
      if (v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = v54;
      }

      v57 = objc_alloc_init(MEMORY[0x277D02698]);
      [v57 setOpacity:v20];
      [v57 setBlendMode:v95];
      [v57 setBlurStrength:v39];
      [v57 setHasLightingEffects:hasLightingEffects];
      [v57 setGathersSpecularByElement:gathersSpecularByElement];
      if (v33)
      {
        v58 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v33 renditions], fallbackAppearance);
        v59 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v33 renditions], appearance);
        if (v59)
        {
          v60 = v59;
        }

        else
        {
          v60 = v58;
        }

        v61 = [(CoreThemeDocument *)self _namedColorFromColorRendition:v60];
        v62 = hasSpecular;
        v63 = v94;
        if (v61)
        {
          [v57 setColor:{objc_msgSend(v61, "cgColor")}];
        }
      }

      else
      {
        v62 = hasSpecular;
        v63 = v94;
        if (v98)
        {
          v64 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v98 renditions], fallbackAppearance);
          v65 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v98 renditions], appearance);
          v66 = v65 ? v65 : v64;
          v67 = [(CoreThemeDocument *)self _namedGradientFromGradientRendition:v66 matchingAppearance:appearance fallbackAppearance:appearance];
          if (v67)
          {
            [v57 setGradient:v67];
          }
        }
      }

      [v57 setShadowStyle:v63];
      [v57 setShadowOpacity:v27];
      [v57 setHasSpecular:v62];
      [v57 setTranslucency:v22];
      [v57 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(v56, "keySpec"), "appearance"), "name")}];
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      layerReferences = [v56 layerReferences];
      v69 = [layerReferences countByEnumeratingWithState:&v106 objects:v110 count:16];
      fallbackAppearanceCopy2 = fallbackAppearance;
      if (v69)
      {
        v71 = v69;
        v72 = *v107;
        v101 = *MEMORY[0x277CCA450];
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v107 != v72)
            {
              objc_enumerationMutation(layerReferences);
            }

            v74 = *(*(&v106 + 1) + 8 * i);
            if (v74 == reference)
            {
              name2 = [reference name];
              _CUILog();
              if (error)
              {
                selfCopy = self;
                v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"infinite recursion for layer group %@ in icon %@", objc_msgSend(reference, "name", name2), objc_msgSend(stack, "name")];
                v77 = MEMORY[0x277CCA9B8];
                v78 = CoreThemeDefinitionErrorDomain[0];
                v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v76, v101, 0}];
                v80 = v77;
                v81 = v78;
                self = selfCopy;
                fallbackAppearanceCopy2 = fallbackAppearance;
                appearanceCopy2 = appearance;
                *error = [v80 errorWithDomain:v81 code:201 userInfo:v79];
              }
            }

            else
            {
              [(CoreThemeDocument *)self _addLayerReference:v74 toMutableIconLayerStack:v57 matchingAppearance:appearanceCopy2 fallbackAppearance:fallbackAppearanceCopy2 error:error];
            }
          }

          v71 = [layerReferences countByEnumeratingWithState:&v106 objects:v110 count:16];
        }

        while (v71);
      }

      [stack addLayer:{v57, name2}];
    }

    goto LABEL_59;
  }

  v41 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v99 renditions], fallbackAppearance);
  v42 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v99 renditions], appearance);
  if (v42)
  {
    v41 = v42;
  }

  v43 = [objc_msgSend(v41 "asset")];
  if (v33)
  {
    v44 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v33 renditions], fallbackAppearance);
    v45 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v33 renditions], appearance);
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = v44;
    }

    v47 = [(CoreThemeDocument *)self _namedColorFromColorRendition:v46];
    v48 = 0;
    v49 = hasLightingEffects;
    v50 = v34;
  }

  else
  {
    v49 = hasLightingEffects;
    v50 = gradientOrColorName;
    if (v98)
    {
      v83 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v98 renditions], fallbackAppearance);
      v84 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v98 renditions], appearance);
      if (v84)
      {
        v85 = v84;
      }

      else
      {
        v85 = v83;
      }

      v48 = [(CoreThemeDocument *)self _namedGradientFromGradientRendition:v85 matchingAppearance:appearance fallbackAppearance:appearance];
    }

    else
    {
      v48 = 0;
    }

    v47 = 0;
  }

  if ([-[__CFURL pathExtension](v43 "pathExtension")])
  {
    v105 = objc_alloc_init(MEMORY[0x277D026A8]);
    v86 = CGImageSourceCreateWithURL(v43, 0);
    if (v86)
    {
      v87 = v86;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v86, 0, 0);
      CFRelease(v87);
      if (ImageAtIndex)
      {
        [v105 setScale:v92];
        [v105 setFrame:{v12, v14, v16, v18}];
        [v105 setOpacity:v20];
        [v105 setImage:ImageAtIndex];
        [v105 setBlurStrength:v39];
        [v105 setHasLightingEffects:v49];
        [v105 setGradientOrColorName:v50];
        if (v47)
        {
          [v105 setColor:{objc_msgSend(v47, "cgColor")}];
          v89 = v95;
        }

        else
        {
          v89 = v95;
          if (v48)
          {
            [v105 setGradient:v48];
          }
        }

        [v105 setBlendMode:v89];
        [v105 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(v41, "keySpec"), "appearance"), "name")}];
        [stack addLayer:v105];
        CGImageRelease(ImageAtIndex);
      }
    }
  }

  else
  {
    v105 = objc_alloc_init(MEMORY[0x277D026B0]);
    [v105 setSvgDocumentURL:v43];
    [v105 setSvgDocument:CGSVGDocumentCreateFromURL()];
    CGSVGDocumentRelease();
    [v105 setScale:v92];
    [v105 setFrame:{v12, v14, v16, v18}];
    [v105 setOpacity:v20];
    [v105 setBlurStrength:v39];
    [v105 setHasLightingEffects:v49];
    [v105 setGradientOrColorName:v50];
    [v105 setBlendMode:v95];
    if (v47)
    {
      [v105 setColor:{objc_msgSend(v47, "cgColor")}];
    }

    else if (v48)
    {
      [v105 setGradient:v48];
    }

    [v105 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(v41, "keySpec"), "appearance"), "name")}];
    [stack addLayer:v105];
  }

  v90 = *MEMORY[0x277D85DE8];
}

- (void)_addLegacyIconAssetsForLayerStack:(id)stack forAppearance:(id)appearance renderedAppearance:(unint64_t)renderedAppearance renderingMode:(id)mode error:(id *)error
{
  v87[7] = *MEMORY[0x277D85DE8];
  if (!stack)
  {
    goto LABEL_50;
  }

  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  v11 = 0;
  selfCopy = self;
  v57 = targetPlatform;
  errorCopy = error;
  if (targetPlatform > 1)
  {
    if (targetPlatform > 3)
    {
      if (targetPlatform == 4)
      {
        v11 = 5;
      }

      else if (targetPlatform == 5)
      {
        v11 = 8;
      }

      goto LABEL_16;
    }

    if (targetPlatform == 2)
    {
      v11 = 7;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (targetPlatform == -1)
  {
    v54 = -1;
    _CUILog();
    v11 = 0;
    goto LABEL_16;
  }

  if (targetPlatform)
  {
    if (targetPlatform != 1)
    {
LABEL_16:
      v70[0] = @"size";
      v70[1] = @"scale";
      v71[0] = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0, v54}];
      v71[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
      v12 = MEMORY[0x277CBEA60];
      v13 = &v72;
      v14 = 1;
      goto LABEL_17;
    }

LABEL_9:
    v11 = targetPlatform;
    goto LABEL_16;
  }

  v85[0] = @"size";
  v85[1] = @"scale";
  v86[0] = [MEMORY[0x277CCAE60] valueWithSize:{16.0, 16.0}];
  v86[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v87[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v83[0] = @"size";
  v83[1] = @"scale";
  v84[0] = [MEMORY[0x277CCAE60] valueWithSize:{32.0, 32.0}];
  v84[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v87[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v81[0] = @"size";
  v82[0] = [MEMORY[0x277CCAE60] valueWithSize:{64.0, 64.0}];
  v81[1] = @"scale";
  v82[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v87[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v79[0] = @"size";
  v79[1] = @"scale";
  v80[0] = [MEMORY[0x277CCAE60] valueWithSize:{128.0, 128.0}];
  v80[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v87[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v77[0] = @"size";
  v77[1] = @"scale";
  v78[0] = [MEMORY[0x277CCAE60] valueWithSize:{256.0, 256.0}];
  v78[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v87[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  v75[0] = @"size";
  v75[1] = @"scale";
  v76[0] = [MEMORY[0x277CCAE60] valueWithSize:{512.0, 512.0}];
  v76[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v87[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v73[0] = @"size";
  v73[1] = @"scale";
  v74[0] = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
  v74[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v87[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v12 = MEMORY[0x277CBEA60];
  v11 = 7;
  v13 = v87;
  v14 = 7;
LABEL_17:
  v15 = [v12 arrayWithObjects:v13 count:v14];
  array = [MEMORY[0x277CBEB18] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v15;
  v17 = [v15 countByEnumeratingWithState:&v65 objects:v69 count:16];
  v61 = array;
  if (v17)
  {
    v18 = v17;
    v19 = *v66;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v65 + 1) + 8 * i);
        [objc_msgSend(v21 objectForKey:{@"size", "sizeValue"}];
        v24 = [stack finalizedIconWithSize:objc_msgSend(objc_msgSend(v21 scale:"objectForKey:" deviceClass:@"scale" appearance:"unsignedIntegerValue") renderingMode:{v11, renderedAppearance, mode, v22, v23}];
        if (v24)
        {
          v25 = v24;
          v26 = objc_alloc_init(MEMORY[0x277D1B178]);
          v27 = [v25 renderedLegacyCompatibleIconWithConfiguration:v26 forDeviceClass:v11];

          array = v61;
          [v61 addObject:v27];
        }
      }

      v18 = [v15 countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v18);
  }

  v28 = selfCopy;
  appearanceCopy2 = appearance;
  if ([array count])
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([array count])
    {
      v31 = 0;
      while (1)
      {
        v32 = [array objectAtIndex:v31];
        v33 = -[CoreThemeDocument namedElementWithName:](v28, "namedElementWithName:", [stack name]);
        v34 = [obj objectAtIndex:v31];
        [objc_msgSend(v34 objectForKey:{@"size", "sizeValue"}];
        v36 = v35;
        v38 = v37;
        v39 = [objc_msgSend(v34 objectForKey:{@"scale", "unsignedIntegerValue"}];
        v40 = [objc_msgSend(stack "name")];
        name = [appearanceCopy2 name];
        v42 = [MEMORY[0x277CBEBC0] fileURLWithPath:NSTemporaryDirectory()];
        if (name)
        {
          v43 = name;
        }

        else
        {
          v43 = @"Any";
        }

        v44 = [v42 URLByAppendingPathComponent:{objc_msgSend(v40, "stringByAppendingFormat:", @"_%@_%@.png", v43, objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), "globallyUniqueString"))}];
        v45 = CGImageDestinationCreateWithURL(v44, @"public.png", 1uLL, 0);
        CGImageDestinationAddImage(v45, v32, 0);
        CGImageDestinationFinalize(v45);
        CFRelease(v45);
        tempFilesToCleanup = v28->_tempFilesToCleanup;
        if (!tempFilesToCleanup)
        {
          tempFilesToCleanup = objc_alloc_init(MEMORY[0x277CBEB18]);
          v28->_tempFilesToCleanup = tempFilesToCleanup;
        }

        [(NSMutableArray *)tempFilesToCleanup addObject:v44];
        array = v61;
        appearanceCopy2 = appearance;
        if (!renderedAppearance && (v36 >= 1024.0 || v38 >= 1024.0))
        {
          appearanceIconFilesForName = v28->_appearanceIconFilesForName;
          if (!appearanceIconFilesForName)
          {
            appearanceIconFilesForName = objc_alloc_init(MEMORY[0x277CBEB38]);
            v28->_appearanceIconFilesForName = appearanceIconFilesForName;
          }

          -[NSMutableDictionary setObject:forKey:](appearanceIconFilesForName, "setObject:forKey:", v44, [stack name]);
        }

        v48 = objc_alloc_init(TDNamedAssetImportInfo);
        -[TDNamedAssetImportInfo setName:](v48, "setName:", [stack name]);
        -[TDNamedAssetImportInfo setNameIdentifier:](v48, "setNameIdentifier:", [objc_msgSend(v33 "identifier")]);
        if (v57 == 4)
        {
          break;
        }

        if (v57 != 1)
        {
          v50 = 0;
          goto LABEL_45;
        }

        [(TDNamedAssetImportInfo *)v48 setIdiom:1];
        [(TDNamedAssetImportInfo *)v48 setRenditionType:0];
        [(TDNamedAssetImportInfo *)v48 setFileURL:v44];
        [v58 addObject:v44];
        -[TDNamedAssetImportInfo setIconSize:](v48, "setIconSize:", [MEMORY[0x277CCAE60] valueWithSize:{v36, v38}]);
        [(TDNamedAssetImportInfo *)v48 setDisplayGamut:0];
        [(TDNamedAssetImportInfo *)v48 setScaleFactor:v39];
        -[TDNamedAssetImportInfo setModificationDate:](v48, "setModificationDate:", [MEMORY[0x277CBEAA8] date]);
        -[TDNamedAssetImportInfo setAppearanceName:](v48, "setAppearanceName:", [appearance name]);
        -[TDNamedAssetImportInfo setAppearanceIdentifier:](v48, "setAppearanceIdentifier:", [appearance identifier]);
        [v30 addObject:v48];

        v48 = objc_alloc_init(TDNamedAssetImportInfo);
        -[TDNamedAssetImportInfo setName:](v48, "setName:", [stack name]);
        -[TDNamedAssetImportInfo setNameIdentifier:](v48, "setNameIdentifier:", [objc_msgSend(v33 "identifier")]);
        [(TDNamedAssetImportInfo *)v48 setIdiom:2];
        [(TDNamedAssetImportInfo *)v48 setRenditionType:0];
        [(TDNamedAssetImportInfo *)v48 setFileURL:v44];
        v28 = selfCopy;
        [v58 addObject:v44];
        v49 = MEMORY[0x277CCAE60];
LABEL_46:
        -[TDNamedAssetImportInfo setIconSize:](v48, "setIconSize:", [v49 valueWithSize:{v36, v38}]);
        [(TDNamedAssetImportInfo *)v48 setDisplayGamut:0];
        [(TDNamedAssetImportInfo *)v48 setScaleFactor:v39];
        -[TDNamedAssetImportInfo setModificationDate:](v48, "setModificationDate:", [MEMORY[0x277CBEAA8] date]);
        -[TDNamedAssetImportInfo setAppearanceName:](v48, "setAppearanceName:", [appearance name]);
        -[TDNamedAssetImportInfo setAppearanceIdentifier:](v48, "setAppearanceIdentifier:", [appearance identifier]);
        [v30 addObject:v48];

        if (++v31 >= [v61 count])
        {
          goto LABEL_47;
        }
      }

      v50 = 5;
LABEL_45:
      [(TDNamedAssetImportInfo *)v48 setIdiom:v50];
      [(TDNamedAssetImportInfo *)v48 setRenditionType:0];
      [(TDNamedAssetImportInfo *)v48 setFileURL:v44];
      [v58 addObject:v44];
      v49 = MEMORY[0x277CCAE60];
      goto LABEL_46;
    }

LABEL_47:
    array2 = [MEMORY[0x277CBEA60] array];
    v51 = [(CoreThemeDocument *)v28 _addAssetsAtFileURLs:v58 createProductions:0 referenceFiles:1 bitSource:[(CoreThemeDocument *)v28 _themeBitSourceForReferencedFilesAtURLs:v58 createIfNecessary:1] customInfos:v30 sortedCustomInfos:&array2];
    v52 = [v51 count];
    if (v52 != [array2 count])
    {
      [CoreThemeDocument _addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:];
    }

    [(CoreThemeDocument *)v28 createNamedArtworkProductionsForAssets:v51 customInfos:array2 skipLastStep:1 error:errorCopy];
  }

LABEL_50:
  v53 = *MEMORY[0x277D85DE8];
}

- (id)updateAutomaticTexturesForCustomInfos:(id)infos allTextureInfos:(id)textureInfos
{
  v53 = *MEMORY[0x277D85DE8];
  if ([infos count])
  {
    v48 = 0;
    v39 = [textureInfos mutableCopy];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v38 = [infos countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v38)
    {
      v37 = *v45;
      v7 = *MEMORY[0x277CBEEE8];
      obj = infos;
      do
      {
        v8 = 0;
        do
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v44 + 1) + 8 * v8);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          textureInfos = [v9 textureInfos];
          v11 = [textureInfos countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v41;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v41 != v13)
                {
                  objc_enumerationMutation(textureInfos);
                }

                v15 = *(*(&v40 + 1) + 8 * i);
                if ([v15 fileURL] != v7)
                {
                  v16 = CGImageSourceCreateWithURL([v15 fileURL], 0);
                  if (v16)
                  {
                    v17 = v16;
                    ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
                    CFRelease(v17);
                    if (ImageAtIndex)
                    {
                      v48 = 2;
                      memset(v52, 0, sizeof(v52));
                      v19 = -1;
                      v20 = &v51;
                      do
                      {
                        [(CoreThemeDocument *)self targetPlatform];
                        [v9 displayGamut];
                        [v9 textureInterpretation];
                        v21 = CUIGetFormatForFeatureSetAndPixelFormat();
                        v22 = v48;
                        *(v52 + v48) = v21;
                        v48 = v22 - 1;
                        ++v20;
                        ++v19;
                      }

                      while (v22 > 0);
                      if (v19)
                      {
                        v23 = v19 + 1;
                        while (*(v52 + (v23 - 2)) == *v20)
                        {
                          if (--v23 <= 1)
                          {
                            goto LABEL_24;
                          }
                        }
                      }

                      else
                      {
LABEL_24:
                        v23 = 1;
                      }

                      targetPlatform = [(CoreThemeDocument *)self targetPlatform];
                      if (targetPlatform <= 5 && ((1 << targetPlatform) & 0x3A) != 0)
                      {
                        if (v23 >= 1)
                        {
                          v25 = 0;
                          v26 = v23;
                          do
                          {
                            v27 = *(v52 + v25);
                            if (v27)
                            {
                              v28 = [v9 copyWithZone:0];
                              [v28 setTexturePixelFormat:v27];
                              [v28 setGraphicsFeatureSetClass:v25];
                              [v39 addObject:v28];
                            }

                            ++v25;
                          }

                          while (v26 != v25);
                        }
                      }

                      else
                      {
                        if ([(CoreThemeDocument *)self featureEnabled:18])
                        {
                          v29 = v23 - 1;
                        }

                        else
                        {
                          v29 = 0;
                        }

                        if ((v29 & 0x80000000) == 0)
                        {
                          while (1)
                          {
                            v30 = *(v52 + v29);
                            v31 = v29;
                            if (v30)
                            {
                              break;
                            }

                            --v29;
                            if (v31 < 1)
                            {
                              goto LABEL_32;
                            }
                          }

                          v32 = [v9 copyWithZone:0];
                          [v32 setTexturePixelFormat:v30];
                          [v32 setGraphicsFeatureSetClass:v31];
                          [v39 addObject:v32];
                        }
                      }

LABEL_32:
                      CFRelease(ImageAtIndex);
                    }

                    goto LABEL_33;
                  }
                }
              }

              v12 = [textureInfos countByEnumeratingWithState:&v40 objects:v49 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_33:
          ++v8;
        }

        while (v8 != v38);
        v33 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
        v38 = v33;
      }

      while (v33);
    }

    textureInfos = v39;
  }

  v34 = *MEMORY[0x277D85DE8];
  return textureInfos;
}

+ (id)_imageAssetURLsByCopyingFileURLs:(id)ls toManagedLocationAtURL:(id)l error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(ls, "count")}];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [l URLByAppendingPathComponent:@"NamedImages"];
  if (([v10 checkResourceIsReachableAndReturnError:0] & 1) != 0 || (v11 = objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v10, 1, 0, error), result = 0, v11))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [ls countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      errorCopy = error;
      v15 = *v26;
      v16 = *MEMORY[0x277CBEEE8];
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(ls);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          if (v18 == v16)
          {
            v20 = v8;
            v21 = v16;
          }

          else
          {
            v24 = 0;
            v19 = [v10 URLByAppendingPathComponent:{objc_msgSend(v18, "lastPathComponent")}];
            if ([v19 checkResourceIsReachableAndReturnError:&v24] && (NSLog(&cfstr_FileAlreadyExi.isa, v18), (objc_msgSend(defaultManager, "removeItemAtURL:error:", v19, &v24) & 1) == 0) || (objc_msgSend(defaultManager, "copyItemAtURL:toURL:error:", v18, v19, &v24) & 1) == 0)
            {
              if (errorCopy)
              {
                *errorCopy = v24;
              }

              result = 0;
              goto LABEL_20;
            }

            v20 = v8;
            v21 = v19;
          }

          [v20 addObject:v21];
          ++v17;
        }

        while (v14 != v17);
        v14 = [ls countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    result = v8;
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_compareFlattenedKeySpec1:(id)spec1 toKeySpec2:(id)spec2
{
  scaleFactor = [spec1 scaleFactor];
  if (scaleFactor != [spec2 scaleFactor])
  {
    return -1;
  }

  idiom = [spec1 idiom];
  if (idiom != [spec2 idiom])
  {
    return -1;
  }

  subtype = [spec1 subtype];
  if (subtype != [spec2 subtype])
  {
    return -1;
  }

  gamut = [spec1 gamut];
  if (gamut == [spec2 gamut])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)_addResolvedLayerReferenceToFlattenedImageRendition:(id)rendition usingArtworkRendition:(id)artworkRendition andLayerReference:(id)reference
{
  v8 = [(CoreThemeDocument *)self newObjectForEntity:@"ResolvedImageLayerReference"];
  [v8 setReference:artworkRendition];
  [v8 setBlendMode:{objc_msgSend(reference, "blendMode")}];
  [reference frameRect];
  [v8 setFrameRect:?];
  [v8 setName:{objc_msgSend(reference, "name")}];
  [v8 setOpacity:{objc_msgSend(reference, "opacity")}];
  [rendition addLayerReferencesObject:v8];
  asset = [artworkRendition asset];

  [rendition setAsset:asset];
}

- (void)_makeRadiosityImages
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self partWithIdentifier:209];
  v21 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"LayerStackProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"renditionType.identifier == %d", 1002], 0);
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v4;
        v5 = *(*(&v29 + 1) + 8 * v4);
        flattenedImageProduction = [v5 flattenedImageProduction];
        if (flattenedImageProduction)
        {
          v7 = flattenedImageProduction;
          v8 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkElementProduction"];
          [v8 setTemplateRenderingMode:{objc_msgSend(v7, "templateRenderingMode")}];
          v9 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
          [v9 setElement:{objc_msgSend(objc_msgSend(v5, "baseKeySpec"), "element")}];
          [v9 setPart:v3];
          [v8 setBaseKeySpec:v9];
          [v8 setRenditionType:v21];
          [v8 setTags:{objc_msgSend(v5, "tags")}];
          [v5 setRadiosityImageProduction:v8];
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          renditions = [v7 renditions];
          v11 = [renditions countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v26 != v13)
                {
                  objc_enumerationMutation(renditions);
                }

                v15 = *(*(&v25 + 1) + 8 * i);
                v16 = [(CoreThemeDocument *)self newObjectForEntity:@"RadiosityImageRenditionSpec"];
                [v16 setFlattenedImage:v15];
                [v16 setProduction:v8];
                [v16 setAsset:{objc_msgSend(v15, "asset")}];
                v17 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
                [v17 setElement:{objc_msgSend(objc_msgSend(v15, "keySpec"), "element")}];
                [v17 setPart:v3];
                [v17 setScaleFactor:{objc_msgSend(objc_msgSend(v15, "keySpec"), "scaleFactor")}];
                [v17 setIdiom:{objc_msgSend(objc_msgSend(v15, "keySpec"), "idiom")}];
                [v17 setSubtype:{objc_msgSend(objc_msgSend(v15, "keySpec"), "subtype")}];
                [v17 setNameIdentifier:{objc_msgSend(objc_msgSend(v15, "keySpec"), "nameIdentifier")}];
                [v17 setGraphicsFeatureSetClass:{objc_msgSend(objc_msgSend(v15, "keySpec"), "graphicsFeatureSetClass")}];
                [v17 setTarget:{objc_msgSend(objc_msgSend(v15, "keySpec"), "target")}];
                [v17 setGamut:{objc_msgSend(objc_msgSend(v15, "keySpec"), "gamut")}];
                [v16 setCompressionType:{objc_msgSend(v15, "compressionType")}];
                [v16 setKeySpec:v17];
                v18 = [v17 scaleFactor] * 40.0;
                [v16 setWidth:{(objc_msgSend(v15, "width") + v18 * 2.0)}];
                [v16 setHeight:{(objc_msgSend(v15, "height") + v18 * 2.0)}];
              }

              v12 = [renditions countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v12);
          }
        }

        v4 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_tidyUpLayerStacks
{
  v173 = *MEMORY[0x277D85DE8];
  idioms = [(CoreThemeDocument *)self idioms];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  compressionTypes = [(CoreThemeDocument *)self compressionTypes];
  deploymentTargets = [(CoreThemeDocument *)self deploymentTargets];
  v3 = [(CoreThemeDocument *)self objectsForEntity:@"LayerStackProduction" withPredicate:0 sortDescriptors:0];
  v94 = [(CoreThemeDocument *)self partWithIdentifier:208];
  v75 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:0];
  v91 = [(CoreThemeDocument *)self graphicsFeatureSetClassWithIdentifier:2];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = v3;
  v78 = [v3 countByEnumeratingWithState:&v156 objects:v172 count:16];
  if (v78)
  {
    v77 = *v157;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v157 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v156 + 1) + 8 * v4);
      if ([objc_msgSend(v5 "renditionType")] == 1019)
      {
        break;
      }

      v79 = v4;
      renditions = [v5 renditions];
      v86 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(renditions, "count")}];
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      renditions2 = [v5 renditions];
      v8 = [renditions2 countByEnumeratingWithState:&v152 objects:v171 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v153;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v153 != v10)
            {
              objc_enumerationMutation(renditions2);
            }

            v12 = *(*(&v152 + 1) + 8 * i);
            v13 = objc_alloc_init(_TDLayerStackFilterHelper);
            [(_TDLayerStackFilterHelper *)v13 setLayerStackRendition:v12];
            [v86 addObject:v13];
          }

          v9 = [renditions2 countByEnumeratingWithState:&v152 objects:v171 count:16];
        }

        while (v9);
      }

      if ([v86 count])
      {
        v14 = 0;
        do
        {
          v15 = [v86 objectAtIndex:v14];
          if ([v86 count])
          {
            v16 = 0;
            do
            {
              if (v14 != v16)
              {
                [v15 establishExclusionsWithHelper:objc_msgSend(v86 idioms:"objectAtIndex:" sizeClasses:{v16), idioms, sizeClasses}];
              }

              ++v16;
            }

            while (v16 < [v86 count]);
          }

          ++v14;
        }

        while (v14 < [v86 count]);
      }

      name = [v5 name];
      flattenedImageProduction = [v5 flattenedImageProduction];
      if (flattenedImageProduction)
      {
        v87 = [objc_msgSend(v5 "flattenedImageProduction")];
      }

      else
      {
        v17 = [(CoreThemeDocument *)self newObjectForEntity:@"NamedArtworkProduction"];
        [v5 setFlattenedImageProduction:v17];
        [v17 setTags:{objc_msgSend(v5, "tags")}];
        v18 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v18 setElement:{objc_msgSend(objc_msgSend(v5, "baseKeySpec"), "element")}];
        [v18 setPart:v94];
        [v17 setBaseKeySpec:v18];
        flattenedImageProduction = v17;
        [v17 setRenditionType:v75];
        v87 = 0;
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      renditions3 = [v5 renditions];
      v84 = [renditions3 countByEnumeratingWithState:&v148 objects:v170 count:16];
      if (v84)
      {
        v83 = *v149;
        do
        {
          v19 = 0;
          do
          {
            if (*v149 != v83)
            {
              objc_enumerationMutation(renditions3);
            }

            v85 = v19;
            v20 = *(*(&v148 + 1) + 8 * v19);
            array = [MEMORY[0x277CBEB18] array];
            v144 = 0u;
            v145 = 0u;
            v146 = 0u;
            v147 = 0u;
            v97 = v20;
            layerReferences = [v20 layerReferences];
            v104 = [layerReferences countByEnumeratingWithState:&v144 objects:v169 count:16];
            if (v104)
            {
              v102 = *v145;
              do
              {
                v21 = 0;
                do
                {
                  if (*v145 != v102)
                  {
                    objc_enumerationMutation(layerReferences);
                  }

                  v106 = v21;
                  v22 = *(*(&v144 + 1) + 8 * v21);
                  v140 = 0u;
                  v141 = 0u;
                  v142 = 0u;
                  v143 = 0u;
                  v23 = [objc_msgSend(v22 "reference")];
                  v24 = [v23 countByEnumeratingWithState:&v140 objects:v168 count:16];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = *v141;
                    do
                    {
                      for (j = 0; j != v25; ++j)
                      {
                        if (*v141 != v26)
                        {
                          objc_enumerationMutation(v23);
                        }

                        v28 = *(*(&v140 + 1) + 8 * j);
                        v136 = 0u;
                        v137 = 0u;
                        v138 = 0u;
                        v139 = 0u;
                        v29 = [array countByEnumeratingWithState:&v136 objects:v167 count:16];
                        if (v29)
                        {
                          v30 = v29;
                          v31 = *v137;
LABEL_42:
                          v32 = 0;
                          while (1)
                          {
                            if (*v137 != v31)
                            {
                              objc_enumerationMutation(array);
                            }

                            if (!-[CoreThemeDocument _compareFlattenedKeySpec1:toKeySpec2:](self, "_compareFlattenedKeySpec1:toKeySpec2:", *(*(&v136 + 1) + 8 * v32), [v28 keySpec]))
                            {
                              break;
                            }

                            if (v30 == ++v32)
                            {
                              v30 = [array countByEnumeratingWithState:&v136 objects:v167 count:16];
                              if (v30)
                              {
                                goto LABEL_42;
                              }

                              goto LABEL_48;
                            }
                          }
                        }

                        else
                        {
LABEL_48:
                          [array addObject:{objc_msgSend(v28, "keySpec")}];
                        }
                      }

                      v25 = [v23 countByEnumeratingWithState:&v140 objects:v168 count:16];
                    }

                    while (v25);
                  }

                  v21 = v106 + 1;
                }

                while (v106 + 1 != v104);
                v104 = [layerReferences countByEnumeratingWithState:&v144 objects:v169 count:16];
              }

              while (v104);
            }

            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            v33 = [v86 countByEnumeratingWithState:&v132 objects:v166 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v133;
              while (2)
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v133 != v35)
                  {
                    objc_enumerationMutation(v86);
                  }

                  v37 = *(*(&v132 + 1) + 8 * k);
                  if ([v37 layerStackRendition] == v97)
                  {
                    if (v37)
                    {
                      array2 = [MEMORY[0x277CBEB18] array];
                      v128 = 0u;
                      v129 = 0u;
                      v130 = 0u;
                      v131 = 0u;
                      v39 = [array countByEnumeratingWithState:&v128 objects:v165 count:16];
                      if (v39)
                      {
                        v40 = v39;
                        v41 = *v129;
                        do
                        {
                          for (m = 0; m != v40; ++m)
                          {
                            if (*v129 != v41)
                            {
                              objc_enumerationMutation(array);
                            }

                            v43 = *(*(&v128 + 1) + 8 * m);
                            if ([v37 allowKey:v43])
                            {
                              [array2 addObject:v43];
                            }
                          }

                          v40 = [array countByEnumeratingWithState:&v128 objects:v165 count:16];
                        }

                        while (v40);
                      }

                      array = array2;
                    }

                    goto LABEL_73;
                  }
                }

                v34 = [v86 countByEnumeratingWithState:&v132 objects:v166 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }

LABEL_73:
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v44 = [v87 countByEnumeratingWithState:&v124 objects:v164 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v125;
              do
              {
                for (n = 0; n != v45; ++n)
                {
                  if (*v125 != v46)
                  {
                    objc_enumerationMutation(v87);
                  }

                  v48 = *(*(&v124 + 1) + 8 * n);
                  v120 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v123 = 0u;
                  v49 = [array countByEnumeratingWithState:&v120 objects:v163 count:16];
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *v121;
                    while (2)
                    {
                      for (ii = 0; ii != v50; ++ii)
                      {
                        if (*v121 != v51)
                        {
                          objc_enumerationMutation(array);
                        }

                        v53 = *(*(&v120 + 1) + 8 * ii);
                        if (!-[CoreThemeDocument _compareFlattenedKeySpec1:toKeySpec2:](self, "_compareFlattenedKeySpec1:toKeySpec2:", v53, [v48 keySpec]))
                        {
                          [v97 canvasSize];
                          [v48 setWidth:v54];
                          [v97 canvasSize];
                          [v48 setHeight:v55];
                          [objc_msgSend(v48 "keySpec")];
                          [array removeObject:v53];
                          goto LABEL_88;
                        }
                      }

                      v50 = [array countByEnumeratingWithState:&v120 objects:v163 count:16];
                      if (v50)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_88:
                  ;
                }

                v45 = [v87 countByEnumeratingWithState:&v124 objects:v164 count:16];
              }

              while (v45);
            }

            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v56 = v97;
            v89 = [array countByEnumeratingWithState:&v116 objects:v162 count:16];
            if (v89)
            {
              v88 = *v117;
              do
              {
                v57 = 0;
                do
                {
                  if (*v117 != v88)
                  {
                    objc_enumerationMutation(array);
                  }

                  v90 = v57;
                  v58 = *(*(&v116 + 1) + 8 * v57);
                  for (jj = [v56 compressionType]; ; jj = objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", 0))
                  {
                    v60 = jj;
                    if (![v58 scaleFactor])
                    {
                      break;
                    }

                    v98 = v60;
                    v61 = [(CoreThemeDocument *)self newObjectForEntity:@"FlattenedImageRenditionSpec"];
                    layerReferences2 = [v56 layerReferences];
                    v112 = 0u;
                    v113 = 0u;
                    v114 = 0u;
                    v115 = 0u;
                    v100 = layerReferences2;
                    v107 = [layerReferences2 countByEnumeratingWithState:&v112 objects:v161 count:16];
                    if (v107)
                    {
                      v105 = *v113;
                      v99 = v61;
                      do
                      {
                        for (kk = 0; kk != v107; ++kk)
                        {
                          if (*v113 != v105)
                          {
                            objc_enumerationMutation(v100);
                          }

                          v64 = *(*(&v112 + 1) + 8 * kk);
                          v108 = 0u;
                          v109 = 0u;
                          v110 = 0u;
                          v111 = 0u;
                          v65 = [objc_msgSend(v64 "reference")];
                          v66 = [v65 countByEnumeratingWithState:&v108 objects:v160 count:16];
                          if (v66)
                          {
                            v67 = v66;
                            v68 = *v109;
LABEL_104:
                            v69 = 0;
                            while (1)
                            {
                              if (*v109 != v68)
                              {
                                objc_enumerationMutation(v65);
                              }

                              v70 = *(*(&v108 + 1) + 8 * v69);
                              if (!-[CoreThemeDocument _compareFlattenedKeySpec1:toKeySpec2:](self, "_compareFlattenedKeySpec1:toKeySpec2:", v58, [v70 keySpec]))
                              {
                                break;
                              }

                              if (v67 == ++v69)
                              {
                                v67 = [v65 countByEnumeratingWithState:&v108 objects:v160 count:16];
                                if (v67)
                                {
                                  goto LABEL_104;
                                }

                                goto LABEL_110;
                              }
                            }
                          }

                          else
                          {
LABEL_110:
                            v70 = [MEMORY[0x277D02670] bestMatchUsingObjects:objc_msgSend(objc_msgSend(objc_msgSend(v64 getAttributeValueUsing:"reference") scaleFactor:"renditions") deviceIdiom:"allObjects") deviceSubtype:&__block_literal_global_881 displayGamut:objc_msgSend(objc_msgSend(v58 deploymentTarget:"idiom") layoutDirection:"identifier") sizeClassHorizontal:objc_msgSend(v58 sizeClassVertical:"subtype") memoryClass:objc_msgSend(objc_msgSend(v58 graphicsFeatureSetClass:"gamut") graphicsFallBackOrder:"identifier") deviceSubtypeFallBackOrder:{objc_msgSend(objc_msgSend(v58, "target"), "identifier"), objc_msgSend(v58, "scaleFactor"), objc_msgSend(objc_msgSend(v58, "direction"), "identifier"), objc_msgSend(objc_msgSend(v58, "sizeClassHorizontal"), "identifier"), objc_msgSend(objc_msgSend(v58, "sizeClassVertical"), "identifier"), objc_msgSend(v58, "memoryClass"), objc_msgSend(objc_msgSend(v58, "graphicsFeatureSetClass"), "identifier"), 0, 0}];
                            if (!v70)
                            {
                              [CoreThemeDocument _tidyUpLayerStacks];
                            }

                            v61 = v99;
                          }

                          [(CoreThemeDocument *)self _addResolvedLayerReferenceToFlattenedImageRendition:v61 usingArtworkRendition:v70 andLayerReference:v64];
                        }

                        v107 = [v100 countByEnumeratingWithState:&v112 objects:v161 count:16];
                      }

                      while (v107);
                    }

                    [v61 setOpaque:1];
                    v56 = v97;
                    [v97 canvasSize];
                    [v61 setWidth:{objc_msgSend(v58, "scaleFactor") * v71}];
                    [v97 canvasSize];
                    [v61 setHeight:{objc_msgSend(v58, "scaleFactor") * v72}];
                    v73 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
                    [v73 setPart:v94];
                    [v73 setScaleFactor:{objc_msgSend(v58, "scaleFactor")}];
                    [v73 setIdiom:{objc_msgSend(v58, "idiom")}];
                    [v73 setSubtype:{objc_msgSend(v58, "subtype")}];
                    [v73 setGamut:{objc_msgSend(v58, "gamut")}];
                    [v61 setCompressionType:v98];
                    [v73 setElement:{objc_msgSend(objc_msgSend(flattenedImageProduction, "baseKeySpec"), "element")}];
                    [v73 setNameIdentifier:{objc_msgSend(objc_msgSend(name, "identifier"), "unsignedIntValue")}];
                    [v61 setKeySpec:v73];
                    [v61 setProduction:flattenedImageProduction];
                    if ([objc_msgSend(v61 "compressionType")] != 4 && objc_msgSend(objc_msgSend(v61, "compressionType"), "identifier") != 5)
                    {
                      break;
                    }

                    [v73 setGraphicsFeatureSetClass:v91];
                    [v73 setTarget:{objc_msgSend(deploymentTargets, "objectAtIndexedSubscript:", 1)}];
                  }

                  v57 = v90 + 1;
                }

                while (v90 + 1 != v89);
                v89 = [array countByEnumeratingWithState:&v116 objects:v162 count:16];
              }

              while (v89);
            }

            v19 = v85 + 1;
          }

          while (v85 + 1 != v84);
          v84 = [renditions3 countByEnumeratingWithState:&v148 objects:v170 count:16];
        }

        while (v84);
      }

      v4 = v79 + 1;
      if (v79 + 1 == v78)
      {
        v78 = [obj countByEnumeratingWithState:&v156 objects:v172 count:16];
        if (v78)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(CoreThemeDocument *)self _makeRadiosityImages];
  [(CoreThemeDocument *)self _makeSolidLayerStackTextures];
  v74 = *MEMORY[0x277D85DE8];
}

- (void)_tidyUpRecognitionImages
{
  v46 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(CoreThemeDocument *)self allObjectsForEntity:@"ContentsRenditionSpec" withSortDescriptors:0];
  v21 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v21)
  {
    v20 = *v39;
    do
    {
      v2 = 0;
      do
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v2;
        v3 = *(*(&v38 + 1) + 8 * v2);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        contains = [v3 contains];
        v4 = [contains countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v4)
        {
          v5 = v4;
          v25 = *v35;
          do
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v35 != v25)
              {
                objc_enumerationMutation(contains);
              }

              v7 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedArtworkProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name == %@", objc_msgSend(*(*(&v34 + 1) + 8 * i), "name")], 0);
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v8 = [v7 countByEnumeratingWithState:&v30 objects:v43 count:16];
              if (v8)
              {
                v9 = v8;
                v10 = *v31;
                do
                {
                  for (j = 0; j != v9; ++j)
                  {
                    if (*v31 != v10)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v12 = *(*(&v30 + 1) + 8 * j);
                    [v12 setRecognitionImage:1];
                    v28 = 0u;
                    v29 = 0u;
                    v26 = 0u;
                    v27 = 0u;
                    renditions = [v12 renditions];
                    v14 = [renditions countByEnumeratingWithState:&v26 objects:v42 count:16];
                    if (v14)
                    {
                      v15 = v14;
                      v16 = *v27;
                      do
                      {
                        for (k = 0; k != v15; ++k)
                        {
                          if (*v27 != v16)
                          {
                            objc_enumerationMutation(renditions);
                          }

                          [*(*(&v26 + 1) + 8 * k) setMonochrome:1];
                        }

                        v15 = [renditions countByEnumeratingWithState:&v26 objects:v42 count:16];
                      }

                      while (v15);
                    }
                  }

                  v9 = [v7 countByEnumeratingWithState:&v30 objects:v43 count:16];
                }

                while (v9);
              }
            }

            v5 = [contains countByEnumeratingWithState:&v34 objects:v44 count:16];
          }

          while (v5);
        }

        v2 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_makeSolidLayerStackTextures
{
  v75 = *MEMORY[0x277D85DE8];
  [(CoreThemeDocument *)self targetPlatform];
  if (CUISDFTexturesSupported())
  {
    v3 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"LayerStackProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"renditionType.identifier == %d", 1018], 0);
    v49 = [(CoreThemeDocument *)self elementWithIdentifier:41];
    v48 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1007];
    v47 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:10];
    v52 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedTextureProduction", 0, 0)}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v3;
    v36 = [v3 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v36)
    {
      v4 = @"RenditionKeySpec";
      v35 = *v68;
      do
      {
        v5 = 0;
        do
        {
          if (*v68 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v5;
          v6 = *(*(&v67 + 1) + 8 * v5);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          renditions = [v6 renditions];
          v40 = [renditions countByEnumeratingWithState:&v63 objects:v73 count:16];
          if (v40)
          {
            v39 = *v64;
            do
            {
              v7 = 0;
              do
              {
                if (*v64 != v39)
                {
                  objc_enumerationMutation(renditions);
                }

                v41 = v7;
                v8 = *(*(&v63 + 1) + 8 * v7);
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v62 = 0u;
                layerReferences = [v8 layerReferences];
                v44 = [layerReferences countByEnumeratingWithState:&v59 objects:v72 count:16];
                if (v44)
                {
                  v43 = *v60;
                  do
                  {
                    v9 = 0;
                    do
                    {
                      if (*v60 != v43)
                      {
                        objc_enumerationMutation(layerReferences);
                      }

                      v45 = v9;
                      v10 = *(*(&v59 + 1) + 8 * v9);
                      v55 = 0u;
                      v56 = 0u;
                      v57 = 0u;
                      v58 = 0u;
                      v46 = [objc_msgSend(v10 "reference")];
                      v51 = [v46 countByEnumeratingWithState:&v55 objects:v71 count:16];
                      if (v51)
                      {
                        v50 = *v56;
                        do
                        {
                          v11 = 0;
                          do
                          {
                            if (*v56 != v50)
                            {
                              objc_enumerationMutation(v46);
                            }

                            v54 = v11;
                            v12 = *(*(&v55 + 1) + 8 * v11);
                            v13 = [v12 _createImageRefWithURL:objc_msgSend(objc_msgSend(v12 andDocument:"asset") format:"fileURLWithDocument:" vectorBased:{self), self, 0, 0}];
                            [(CoreThemeDocument *)self targetPlatform];
                            CUICreateSDFEdgeTexturePixelFormat();
                            v14 = [(CoreThemeDocument *)self pixelFormatWithIdentifier:CUIConvertFromTXRPixelFormat()];
                            [(CoreThemeDocument *)self targetPlatform];
                            CUICreateSDFGradientTexturePixelFormat();
                            v53 = [(CoreThemeDocument *)self pixelFormatWithIdentifier:CUIConvertFromTXRPixelFormat()];
                            v15 = [v52 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.identifier == %d", objc_msgSend(objc_msgSend(objc_msgSend(v12, "production"), "name"), "identifier"))}];
                            if ([v15 firstObject] && (objc_msgSend(v15, "firstObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              firstObject = [v15 firstObject];
                            }

                            else
                            {
                              firstObject = [(CoreThemeDocument *)self newObjectForEntity:@"NamedTextureProduction"];
                              v17 = [(CoreThemeDocument *)self newObjectForEntity:v4];
                              [objc_msgSend(v12 "keySpec")];
                              [firstObject setBaseKeySpec:v17];
                              [objc_msgSend(firstObject "baseKeySpec")];
                              [firstObject setName:{objc_msgSend(objc_msgSend(v12, "production"), "name")}];
                              [firstObject setTextureInterpretation:{-[CoreThemeDocument textureInterpretaitionWithIdentifier:](self, "textureInterpretaitionWithIdentifier:", 0)}];
                              [firstObject setRenditionType:v48];
                              [firstObject setRenditionSubtype:v47];
                              [firstObject setTags:{objc_msgSend(objc_msgSend(v12, "production"), "tags")}];

                              [v52 addObject:firstObject];
                            }

                            v18 = -[CoreThemeDocument createAssetWithName:fileType:scaleFactor:inCategory:forThemeBitSource:](self, "createAssetWithName:fileType:scaleFactor:inCategory:forThemeBitSource:", [objc_msgSend(v12 "asset")], @"texture", objc_msgSend(objc_msgSend(v12, "asset"), "scaleFactor"), objc_msgSend(objc_msgSend(v12, "asset"), "category"), objc_msgSend(objc_msgSend(v12, "asset"), "source"));
                            v19 = [(CoreThemeDocument *)self newObjectForEntity:v4];
                            [objc_msgSend(v12 "keySpec")];
                            v20 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRenditionSpec"];
                            [v20 setProduction:firstObject];
                            [v20 setPixelFormat:v14];
                            [v20 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 0)}];
                            [v20 setCubeMap:0];
                            [v20 setWidth:CGImageGetWidth(v13)];
                            [v20 setHeight:CGImageGetWidth(v13)];
                            [v20 setKeySpec:v19];
                            [objc_msgSend(v20 "keySpec")];
                            [objc_msgSend(v20 "keySpec")];
                            [objc_msgSend(v20 "keySpec")];
                            [objc_msgSend(v20 "keySpec")];

                            v21 = [(CoreThemeDocument *)self newObjectForEntity:v4];
                            [objc_msgSend(v12 "keySpec")];
                            v22 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRawRenditionSpec"];
                            [v22 setProduction:firstObject];
                            [v18 addRenditionsObject:v22];
                            [v22 setAsset:v18];
                            [v22 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 0)}];
                            [v22 setKeySpec:v21];
                            v23 = v4;
                            [objc_msgSend(v22 "keySpec")];
                            v24 = [(CoreThemeDocument *)self partWithIdentifier:181];
                            keySpec = [v22 keySpec];
                            v26 = v24;
                            v4 = v23;
                            [keySpec setPart:v26];
                            [objc_msgSend(v22 "keySpec")];
                            [objc_msgSend(v22 "keySpec")];
                            [v22 setWidth:CGImageGetWidth(v13)];
                            [v22 setHeight:CGImageGetWidth(v13)];

                            v27 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureMipLevel"];
                            [v27 setTexture:v20];
                            [v27 setTextureImage:v22];
                            [v27 setLevel:0];
                            [v20 addMipLevelsObject:v27];

                            v28 = [(CoreThemeDocument *)self newObjectForEntity:v23];
                            [objc_msgSend(v12 "keySpec")];
                            v29 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRenditionSpec"];
                            [v29 setProduction:firstObject];
                            [v29 setPixelFormat:v53];
                            [v29 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 0)}];
                            [v29 setCubeMap:0];
                            [v29 setWidth:CGImageGetWidth(v13)];
                            [v29 setHeight:CGImageGetWidth(v13)];
                            [v29 setKeySpec:v28];
                            [objc_msgSend(v29 "keySpec")];
                            [objc_msgSend(v29 "keySpec")];
                            [objc_msgSend(v29 "keySpec")];
                            [objc_msgSend(v29 "keySpec")];

                            v30 = [(CoreThemeDocument *)self newObjectForEntity:v23];
                            [objc_msgSend(v12 "keySpec")];
                            v31 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRawRenditionSpec"];
                            [v31 setProduction:firstObject];
                            [v18 addRenditionsObject:v31];
                            [v31 setAsset:v18];
                            [v31 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 0)}];
                            [v31 setKeySpec:v30];
                            [objc_msgSend(v31 "keySpec")];
                            [objc_msgSend(v31 "keySpec")];
                            [objc_msgSend(v31 "keySpec")];
                            [objc_msgSend(v31 "keySpec")];
                            [v31 setWidth:CGImageGetWidth(v13)];
                            [v31 setHeight:CGImageGetWidth(v13)];

                            v32 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureMipLevel"];
                            [v32 setTexture:v29];
                            [v32 setTextureImage:v31];
                            [v32 setLevel:0];
                            [v29 addMipLevelsObject:v32];

                            CGImageRelease(v13);
                            v11 = v54 + 1;
                          }

                          while (v51 != v54 + 1);
                          v51 = [v46 countByEnumeratingWithState:&v55 objects:v71 count:16];
                        }

                        while (v51);
                      }

                      v9 = v45 + 1;
                    }

                    while (v45 + 1 != v44);
                    v44 = [layerReferences countByEnumeratingWithState:&v59 objects:v72 count:16];
                  }

                  while (v44);
                }

                v7 = v41 + 1;
              }

              while (v41 + 1 != v40);
              v40 = [renditions countByEnumeratingWithState:&v63 objects:v73 count:16];
            }

            while (v40);
          }

          v5 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v36);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)createNamedRenditionGroupProductionsForImportInfos:(id)infos error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  v48 = [(CoreThemeDocument *)self idioms:infos];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  directions = [(CoreThemeDocument *)self directions];
  featureSetClasses = [(CoreThemeDocument *)self featureSetClasses];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = [(CoreThemeDocument *)self objectsForEntity:@"Tag" withPredicate:0 sortDescriptors:0];
  v7 = [v6 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v68;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", *(*(&v67 + 1) + 8 * i)), objc_msgSend(*(*(&v67 + 1) + 8 * i), "identifier")}];
      }

      v8 = [v6 countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v8);
  }

  v43 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v42 = [(CoreThemeDocument *)self partWithIdentifier:206];
  v41 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1013];
  v50 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"GroupedRecognitionProduction", 0, 0)}];
  v40 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:10];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v51 = [infos countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v51)
  {
    v49 = *v64;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(infos);
        }

        v12 = *(*(&v63 + 1) + 8 * j);
        v13 = [v50 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v12, "name"))}];
        if ([v13 firstObject] && (objc_msgSend(v13, "firstObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [v13 firstObject];
        }

        else
        {
          v14 = [(CoreThemeDocument *)self newObjectForEntity:@"GroupedRecognitionProduction"];
          v15 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v12 nameIdentifier]);
          [v15 setName:{objc_msgSend(v12, "name")}];
          [v15 setProduction:v14];
          v16 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
          [v14 setBaseKeySpec:v16];
          [v16 setElement:v43];
          [v16 setPart:v42];
          [v16 setNameIdentifier:{objc_msgSend(objc_msgSend(v15, "identifier"), "unsignedIntValue")}];
          [v14 setDateOfLastChange:{objc_msgSend(v12, "modificationDate")}];
          [v14 setOptOutOfThinning:{objc_msgSend(v12, "optOutOfThinning")}];
          [v14 setRenditionType:v41];
          [v14 setRenditionSubtype:v40];

          v54 = j;
          if (v12)
          {
            tags = [v12 tags];
            if ([tags count])
            {
              v39 = v14;
              v52 = v12;
              v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v19 = [tags countByEnumeratingWithState:&v59 objects:v72 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v60;
                do
                {
                  for (k = 0; k != v20; ++k)
                  {
                    if (*v60 != v21)
                    {
                      objc_enumerationMutation(tags);
                    }

                    v23 = *(*(&v59 + 1) + 8 * k);
                    v24 = [v5 objectForKey:v23];
                    if ([v24 count])
                    {
                      if ([v24 count] != 1)
                      {
                        [CoreThemeDocument createNamedRenditionGroupProductionsForImportInfos:error:];
                      }

                      v25 = [v24 objectAtIndex:0];
                    }

                    else
                    {
                      v25 = [(CoreThemeDocument *)self newObjectForEntity:@"Tag"];
                      [v25 setIdentifier:v23];
                      [v5 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", v25), v23}];
                    }

                    [v18 addObject:v25];
                  }

                  v20 = [tags countByEnumeratingWithState:&v59 objects:v72 count:16];
                }

                while (v20);
              }

              v14 = v39;
              [v39 addTags:v18];
              v26 = [tags count];
              if (v26 != [v18 count])
              {
                [CoreThemeDocument createNamedRenditionGroupProductionsForImportInfos:error:];
              }

              v12 = v52;
            }

            if ([objc_msgSend(v12 "universalTypeIdentifier")])
            {
              [v14 setUniversalTypeIdentifier:{objc_msgSend(v12, "universalTypeIdentifier")}];
            }
          }

          v27 = [(CoreThemeDocument *)self newObjectForEntity:@"ContentsRenditionSpec"];
          [v27 setProduction:v14];
          [v27 resetToBaseKeySpec];
          v53 = v27;
          keySpec = [v27 keySpec];
          [keySpec setIdiom:{objc_msgSend(v48, "objectAtIndexedSubscript:", objc_msgSend(v12, "idiom"))}];
          [keySpec setScaleFactor:{objc_msgSend(v12, "scaleFactor")}];
          [keySpec setSubtype:{objc_msgSend(v12, "subtype")}];
          [keySpec setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v12, "displayGamut"))}];
          [keySpec setSizeClassHorizontal:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v12, "sizeClassHorizontal"))}];
          [keySpec setSizeClassVertical:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v12, "sizeClassVertical"))}];
          [keySpec setMemoryClass:{objc_msgSend(v12, "memoryClass")}];
          [keySpec setDirection:{objc_msgSend(directions, "objectAtIndexedSubscript:", objc_msgSend(v12, "layoutDirection"))}];
          [keySpec setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", objc_msgSend(v12, "graphicsFeatureSetClass"))}];
          [keySpec setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v12, "appearanceIdentifier"), objc_msgSend(v12, "appearanceName"), 1)}];
          [keySpec setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v12, "localizationIdentifier"), objc_msgSend(v12, "localizationName"), 1)}];
          v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          containedImageNames = [v12 containedImageNames];
          v31 = [containedImageNames countByEnumeratingWithState:&v55 objects:v71 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v56;
            do
            {
              for (m = 0; m != v32; ++m)
              {
                if (*v56 != v33)
                {
                  objc_enumerationMutation(containedImageNames);
                }

                v35 = *(*(&v55 + 1) + 8 * m);
                v36 = [(CoreThemeDocument *)self newObjectForEntity:@"ContentsName"];
                [v36 setName:v35];
                [v29 addObject:v36];
              }

              v32 = [containedImageNames countByEnumeratingWithState:&v55 objects:v71 count:16];
            }

            while (v32);
          }

          [v53 setContains:v29];

          j = v54;
        }
      }

      v51 = [infos countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v51);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)_production:(id)_production containsScale:(unsigned int)scale andIdiom:(unsigned int)idiom andSubtype:(unsigned int)subtype
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  renditions = [_production renditions];
  v10 = [renditions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(renditions);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if ([objc_msgSend(v14 "keySpec")] == scale && objc_msgSend(objc_msgSend(objc_msgSend(v14, "keySpec"), "idiom"), "identifier") == idiom && objc_msgSend(objc_msgSend(v14, "keySpec"), "subtype") == subtype)
        {
          LOBYTE(v10) = 1;
          goto LABEL_13;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [renditions countByEnumeratingWithState:&v17 objects:v21 count:16];
      v11 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_generateWatchImages
{
  v191 = *MEMORY[0x277D85DE8];
  if ([(CoreThemeDocument *)self targetPlatform]== 4)
  {
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    obj = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SimpleArtworkElementProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"autoscalingType > 0"], 0);
    v133 = [obj countByEnumeratingWithState:&v177 objects:v190 count:16];
    if (v133)
    {
      v132 = *v178;
      v3 = 0x278EBA000uLL;
      do
      {
        v4 = 0;
        do
        {
          if (*v178 != v132)
          {
            v5 = v4;
            objc_enumerationMutation(obj);
            v4 = v5;
          }

          v134 = v4;
          v6 = *(*(&v177 + 1) + 8 * v4);
          v135 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v139 = v6;
          renditions = [v6 renditions];
          v8 = [renditions countByEnumeratingWithState:&v173 objects:v189 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v174;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v174 != v10)
                {
                  objc_enumerationMutation(renditions);
                }

                v12 = *(*(&v173 + 1) + 8 * i);
                v13 = *(v3 + 1456);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v12 "asset")] && (!objc_msgSend(objc_msgSend(objc_msgSend(v12, "keySpec"), "idiom"), "identifier") || objc_msgSend(objc_msgSend(objc_msgSend(v12, "keySpec"), "idiom"), "identifier") == 5) && !objc_msgSend(objc_msgSend(objc_msgSend(v12, "keySpec"), "glyphSize"), "identifier") && !objc_msgSend(objc_msgSend(objc_msgSend(v12, "keySpec"), "glyphWeight"), "identifier") && (!objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v12, "asset"), "name"), "pathExtension"), "caseInsensitiveCompare:", @"PDF") || !objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v12, "asset"), "name"), "pathExtension"), "caseInsensitiveCompare:", @"SVG")))
                {
                  [v135 addObject:v12];
                }
              }

              v9 = [renditions countByEnumeratingWithState:&v173 objects:v189 count:16];
            }

            while (v9);
          }

          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v14 = v139;
          v137 = [v135 countByEnumeratingWithState:&v169 objects:v188 count:16];
          if (v137)
          {
            v136 = *v170;
            do
            {
              v15 = 0;
              do
              {
                if (*v170 != v136)
                {
                  objc_enumerationMutation(v135);
                }

                v138 = v15;
                v16 = *(*(&v169 + 1) + 8 * v15);
                entity = [v16 entity];
                v140 = entity;
                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v14, [objc_msgSend(v16 "keySpec")], 5, 320))
                {
                  v18 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices = [v16 slices];
                  if ([slices count])
                  {
                    v20 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices, "count")}];
                    v165 = 0u;
                    v166 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v21 = [slices countByEnumeratingWithState:&v165 objects:v187 count:16];
                    if (v21)
                    {
                      v22 = v21;
                      v23 = *v166;
                      do
                      {
                        for (j = 0; j != v22; ++j)
                        {
                          if (*v166 != v23)
                          {
                            objc_enumerationMutation(slices);
                          }

                          [*(*(&v165 + 1) + 8 * j) sliceRect];
                          v26 = v25;
                          v28 = v27;
                          v30 = v29;
                          v32 = v31;
                          v33 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v33 setSliceRect:{v26, v28, v30, v32}];
                          [v20 addObject:v33];
                        }

                        v22 = [slices countByEnumeratingWithState:&v165 objects:v187 count:16];
                      }

                      while (v22);
                    }

                    [v18 setSlices:v20];
                    v14 = v139;
                    entity = v140;
                  }

                  [v18 setAsset:{objc_msgSend(v16, "asset")}];
                  [v18 setProduction:v14];
                  [objc_msgSend(v16 "production")];
                  [objc_msgSend(v16 "keySpec")];
                  [objc_msgSend(v18 "keySpec")];
                  [v18 setPostScaleFactor:0.91];
                  [v18 setCompressionType:{objc_msgSend(v16, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v14, [objc_msgSend(v16 "keySpec")], 5, 384))
                {
                  v34 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices2 = [v16 slices];
                  if ([slices2 count])
                  {
                    v36 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices2, "count")}];
                    v161 = 0u;
                    v162 = 0u;
                    v163 = 0u;
                    v164 = 0u;
                    v37 = [slices2 countByEnumeratingWithState:&v161 objects:v186 count:16];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = *v162;
                      do
                      {
                        for (k = 0; k != v38; ++k)
                        {
                          if (*v162 != v39)
                          {
                            objc_enumerationMutation(slices2);
                          }

                          [*(*(&v161 + 1) + 8 * k) sliceRect];
                          v42 = v41;
                          v44 = v43;
                          v46 = v45;
                          v48 = v47;
                          v49 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v49 setSliceRect:{v42, v44, v46, v48}];
                          [v36 addObject:v49];
                        }

                        v38 = [slices2 countByEnumeratingWithState:&v161 objects:v186 count:16];
                      }

                      while (v38);
                    }

                    [v34 setSlices:v36];
                    v14 = v139;
                    entity = v140;
                  }

                  [v34 setAsset:{objc_msgSend(v16, "asset")}];
                  [v34 setProduction:v14];
                  [objc_msgSend(v16 "production")];
                  [objc_msgSend(v16 "keySpec")];
                  [objc_msgSend(v34 "keySpec")];
                  [v34 setPostScaleFactor:1.0];
                  [v34 setCompressionType:{objc_msgSend(v16, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v14, [objc_msgSend(v16 "keySpec")], 5, 340))
                {
                  v50 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices3 = [v16 slices];
                  if ([slices3 count])
                  {
                    v52 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices3, "count")}];
                    v157 = 0u;
                    v158 = 0u;
                    v159 = 0u;
                    v160 = 0u;
                    v53 = [slices3 countByEnumeratingWithState:&v157 objects:v185 count:16];
                    if (v53)
                    {
                      v54 = v53;
                      v55 = *v158;
                      do
                      {
                        for (m = 0; m != v54; ++m)
                        {
                          if (*v158 != v55)
                          {
                            objc_enumerationMutation(slices3);
                          }

                          [*(*(&v157 + 1) + 8 * m) sliceRect];
                          v58 = v57;
                          v60 = v59;
                          v62 = v61;
                          v64 = v63;
                          v65 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v65 setSliceRect:{v58, v60, v62, v64}];
                          [v52 addObject:v65];
                        }

                        v54 = [slices3 countByEnumeratingWithState:&v157 objects:v185 count:16];
                      }

                      while (v54);
                    }

                    [v50 setSlices:v52];
                    v14 = v139;
                    entity = v140;
                  }

                  [v50 setAsset:{objc_msgSend(v16, "asset")}];
                  [v50 setProduction:v14];
                  [objc_msgSend(v16 "production")];
                  [objc_msgSend(v16 "keySpec")];
                  [objc_msgSend(v50 "keySpec")];
                  [v50 setPostScaleFactor:1.0];
                  [v50 setCompressionType:{objc_msgSend(v16, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v14, [objc_msgSend(v16 "keySpec")], 5, 390))
                {
                  v66 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices4 = [v16 slices];
                  if ([slices4 count])
                  {
                    v68 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices4, "count")}];
                    v153 = 0u;
                    v154 = 0u;
                    v155 = 0u;
                    v156 = 0u;
                    v69 = [slices4 countByEnumeratingWithState:&v153 objects:v184 count:16];
                    if (v69)
                    {
                      v70 = v69;
                      v71 = *v154;
                      do
                      {
                        for (n = 0; n != v70; ++n)
                        {
                          if (*v154 != v71)
                          {
                            objc_enumerationMutation(slices4);
                          }

                          [*(*(&v153 + 1) + 8 * n) sliceRect];
                          v74 = v73;
                          v76 = v75;
                          v78 = v77;
                          v80 = v79;
                          v81 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v81 setSliceRect:{v74, v76, v78, v80}];
                          [v68 addObject:v81];
                        }

                        v70 = [slices4 countByEnumeratingWithState:&v153 objects:v184 count:16];
                      }

                      while (v70);
                    }

                    [v66 setSlices:v68];
                    v14 = v139;
                    entity = v140;
                  }

                  [v66 setAsset:{objc_msgSend(v16, "asset")}];
                  [v66 setProduction:v14];
                  [objc_msgSend(v16 "production")];
                  [objc_msgSend(v16 "keySpec")];
                  [objc_msgSend(v66 "keySpec")];
                  [v66 setPostScaleFactor:1.1];
                  [v66 setCompressionType:{objc_msgSend(v16, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v14, [objc_msgSend(v16 "keySpec")], 5, 430))
                {
                  v82 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices5 = [v16 slices];
                  if ([slices5 count])
                  {
                    v84 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices5, "count")}];
                    v149 = 0u;
                    v150 = 0u;
                    v151 = 0u;
                    v152 = 0u;
                    v85 = [slices5 countByEnumeratingWithState:&v149 objects:v183 count:16];
                    if (v85)
                    {
                      v86 = v85;
                      v87 = *v150;
                      do
                      {
                        for (ii = 0; ii != v86; ++ii)
                        {
                          if (*v150 != v87)
                          {
                            objc_enumerationMutation(slices5);
                          }

                          [*(*(&v149 + 1) + 8 * ii) sliceRect];
                          v90 = v89;
                          v92 = v91;
                          v94 = v93;
                          v96 = v95;
                          v97 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v97 setSliceRect:{v90, v92, v94, v96}];
                          [v84 addObject:v97];
                        }

                        v86 = [slices5 countByEnumeratingWithState:&v149 objects:v183 count:16];
                      }

                      while (v86);
                    }

                    [v82 setSlices:v84];
                    v14 = v139;
                    entity = v140;
                  }

                  [v82 setAsset:{objc_msgSend(v16, "asset")}];
                  [v82 setProduction:v14];
                  [objc_msgSend(v16 "production")];
                  [objc_msgSend(v16 "keySpec")];
                  [objc_msgSend(v82 "keySpec")];
                  [v82 setPostScaleFactor:1.06];
                  [v82 setCompressionType:{objc_msgSend(v16, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v14, [objc_msgSend(v16 "keySpec")], 5, 484))
                {
                  v98 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices6 = [v16 slices];
                  if ([slices6 count])
                  {
                    v100 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices6, "count")}];
                    v145 = 0u;
                    v146 = 0u;
                    v147 = 0u;
                    v148 = 0u;
                    v101 = [slices6 countByEnumeratingWithState:&v145 objects:v182 count:16];
                    if (v101)
                    {
                      v102 = v101;
                      v103 = *v146;
                      do
                      {
                        for (jj = 0; jj != v102; ++jj)
                        {
                          if (*v146 != v103)
                          {
                            objc_enumerationMutation(slices6);
                          }

                          [*(*(&v145 + 1) + 8 * jj) sliceRect];
                          v106 = v105;
                          v108 = v107;
                          v110 = v109;
                          v112 = v111;
                          v113 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v113 setSliceRect:{v106, v108, v110, v112}];
                          [v100 addObject:v113];
                        }

                        v102 = [slices6 countByEnumeratingWithState:&v145 objects:v182 count:16];
                      }

                      while (v102);
                    }

                    [v98 setSlices:v100];
                    v14 = v139;
                    entity = v140;
                  }

                  [v98 setAsset:{objc_msgSend(v16, "asset")}];
                  [v98 setProduction:v14];
                  [objc_msgSend(v16 "production")];
                  [objc_msgSend(v16 "keySpec")];
                  [objc_msgSend(v98 "keySpec")];
                  [v98 setPostScaleFactor:1.19];
                  [v98 setCompressionType:{objc_msgSend(v16, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v14, [objc_msgSend(v16 "keySpec")], 5, 502))
                {
                  v114 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices7 = [v16 slices];
                  if ([slices7 count])
                  {
                    v116 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices7, "count")}];
                    v141 = 0u;
                    v142 = 0u;
                    v143 = 0u;
                    v144 = 0u;
                    v117 = [slices7 countByEnumeratingWithState:&v141 objects:v181 count:16];
                    if (v117)
                    {
                      v118 = v117;
                      v119 = *v142;
                      do
                      {
                        for (kk = 0; kk != v118; ++kk)
                        {
                          if (*v142 != v119)
                          {
                            objc_enumerationMutation(slices7);
                          }

                          [*(*(&v141 + 1) + 8 * kk) sliceRect];
                          v122 = v121;
                          v124 = v123;
                          v126 = v125;
                          v128 = v127;
                          v129 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v129 setSliceRect:{v122, v124, v126, v128}];
                          [v116 addObject:v129];
                        }

                        v118 = [slices7 countByEnumeratingWithState:&v141 objects:v181 count:16];
                      }

                      while (v118);
                    }

                    [v114 setSlices:v116];
                    v14 = v139;
                  }

                  [v114 setAsset:{objc_msgSend(v16, "asset")}];
                  [v114 setProduction:v14];
                  [objc_msgSend(v16 "production")];
                  [objc_msgSend(v16 "keySpec")];
                  [objc_msgSend(v114 "keySpec")];
                  [v114 setPostScaleFactor:1.19];
                  [v114 setCompressionType:{objc_msgSend(v16, "compressionType")}];
                }

                v15 = v138 + 1;
              }

              while (v138 + 1 != v137);
              v137 = [v135 countByEnumeratingWithState:&v169 objects:v188 count:16];
            }

            while (v137);
          }

          v4 = v134 + 1;
          v3 = 0x278EBA000;
        }

        while (v134 + 1 != v133);
        v133 = [obj countByEnumeratingWithState:&v177 objects:v190 count:16];
      }

      while (v133);
    }
  }

  v130 = *MEMORY[0x277D85DE8];
}

- (void)_backwardsCompatibilityPatchForLayoutDirection
{
  v70 = *MEMORY[0x277D85DE8];
  if (![(CoreThemeDocument *)self featureEnabled:9])
  {
    v3 = [(CoreThemeDocument *)self directionWithIdentifier:5];
    v4 = [(CoreThemeDocument *)self directionWithIdentifier:4];
    v40 = [(CoreThemeDocument *)self directionWithIdentifier:0];
    v5 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SimpleArtworkRenditionSpec", [MEMORY[0x277CCAC30] predicateWithFormat:@"keySpec.direction == %@ OR keySpec.direction == %@", v3, v4], 0);
    array = [MEMORY[0x277CBEB18] array];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v62;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v62 != v9)
          {
            objc_enumerationMutation(v5);
          }

          production = [*(*(&v61 + 1) + 8 * i) production];
          if (([array containsObject:production] & 1) == 0)
          {
            [array addObject:production];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v8);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = v40;
    v42 = [array countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v42)
    {
      v41 = *v58;
      v38 = array;
      v39 = v3;
      do
      {
        v13 = 0;
        do
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(array);
          }

          v14 = *(*(&v57 + 1) + 8 * v13);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v43 = v13;
          v44 = v14;
          renditions = [v14 renditions];
          v16 = [renditions countByEnumeratingWithState:&v53 objects:v67 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v54;
LABEL_18:
            v19 = 0;
            while (1)
            {
              if (*v54 != v18)
              {
                objc_enumerationMutation(renditions);
              }

              v20 = *(*(&v53 + 1) + 8 * v19);
              if ([objc_msgSend(v20 "keySpec")] == v12 || !objc_msgSend(objc_msgSend(v20, "keySpec"), "direction"))
              {
                break;
              }

              if (v17 == ++v19)
              {
                v17 = [renditions countByEnumeratingWithState:&v53 objects:v67 count:16];
                if (v17)
                {
                  goto LABEL_18;
                }

                goto LABEL_25;
              }
            }
          }

          else
          {
LABEL_25:
            v21 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkRenditionSpec"];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            renditions2 = [v44 renditions];
            v23 = [renditions2 countByEnumeratingWithState:&v49 objects:v66 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v50;
LABEL_27:
              v26 = 0;
              while (1)
              {
                if (*v50 != v25)
                {
                  objc_enumerationMutation(renditions2);
                }

                v27 = *(*(&v49 + 1) + 8 * v26);
                if ([objc_msgSend(v27 "keySpec")] == v3)
                {
                  break;
                }

                if (v24 == ++v26)
                {
                  v24 = [renditions2 countByEnumeratingWithState:&v49 objects:v66 count:16];
                  if (v24)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_35;
                }
              }

              if (v27)
              {
                goto LABEL_36;
              }
            }

LABEL_35:
            v27 = [objc_msgSend(v44 "renditions")];
LABEL_36:
            [v27 alignmentRect];
            [v21 setAlignmentRect:?];
            [v21 setAlignmentRectString:{objc_msgSend(objc_msgSend(v27, "alignmentRectString"), "copy")}];
            [v21 setIsTintable:{objc_msgSend(v27, "isTintable")}];
            [v21 setNonAlphaImageAreaString:{objc_msgSend(objc_msgSend(v27, "nonAlphaImageAreaString"), "copy")}];
            [v21 setOriginalImageSizeString:{objc_msgSend(objc_msgSend(v27, "originalImageSizeString"), "copy")}];
            [v21 setAsset:{objc_msgSend(v27, "asset")}];
            [v21 setCompressionType:{objc_msgSend(v27, "compressionType")}];
            slices = [v27 slices];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v29 = [slices countByEnumeratingWithState:&v45 objects:v65 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v46;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v46 != v31)
                  {
                    objc_enumerationMutation(slices);
                  }

                  v33 = *(*(&v45 + 1) + 8 * j);
                  v34 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                  [v33 sliceRect];
                  [v34 setSliceRect:?];
                  [v34 setSliceRectString:{objc_msgSend(objc_msgSend(v33, "sliceRectString"), "copy")}];
                  [v34 setProduction:{objc_msgSend(v33, "production")}];
                  [v34 setRendition:v21];
                }

                v30 = [slices countByEnumeratingWithState:&v45 objects:v65 count:16];
              }

              while (v30);
            }

            [v21 setAlphaCrop:{objc_msgSend(v27, "alphaCrop")}];
            [v21 setHeight:{objc_msgSend(v27, "height")}];
            [v21 setMonochrome:{objc_msgSend(v27, "monochrome")}];
            [v21 setOpaque:{objc_msgSend(v27, "opaque")}];
            [v21 setPackedPointX:{objc_msgSend(v27, "packedPointX")}];
            [v21 setPackedPointY:{objc_msgSend(v27, "packedPointY")}];
            [v21 setWidth:{objc_msgSend(v27, "width")}];
            [v27 postScaleFactor];
            [v21 setPostScaleFactor:?];
            [v44 addRenditionsObject:v21];
            [v21 setRenditionType:{objc_msgSend(v27, "renditionType")}];
            v35 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
            v12 = v40;
            [v35 setDirection:v40];
            keySpec = [v27 keySpec];
            [v35 setDimension1:{objc_msgSend(keySpec, "dimension1")}];
            [v35 setDimension2:{objc_msgSend(keySpec, "dimension2")}];
            [v35 setMemoryClass:{objc_msgSend(keySpec, "memoryClass")}];
            [v35 setNameIdentifier:{objc_msgSend(keySpec, "nameIdentifier")}];
            [v35 setScaleFactor:{objc_msgSend(keySpec, "scaleFactor")}];
            [v35 setSubtype:{objc_msgSend(keySpec, "subtype")}];
            [v35 setElement:{objc_msgSend(keySpec, "element")}];
            [v35 setGamut:{objc_msgSend(keySpec, "gamut")}];
            [v35 setGraphicsFeatureSetClass:{objc_msgSend(keySpec, "graphicsFeatureSetClass")}];
            [v35 setIdiom:{objc_msgSend(keySpec, "idiom")}];
            [v35 setLayer:{objc_msgSend(keySpec, "layer")}];
            [v35 setPart:{objc_msgSend(keySpec, "part")}];
            [v35 setPresentationState:{objc_msgSend(keySpec, "presentationState")}];
            [v35 setPreviousState:{objc_msgSend(keySpec, "previousState")}];
            [v35 setSize:{objc_msgSend(keySpec, "size")}];
            [v35 setSizeClassVertical:{objc_msgSend(keySpec, "sizeClassVertical")}];
            [v35 setSizeClassHorizontal:{objc_msgSend(keySpec, "sizeClassHorizontal")}];
            [v35 setState:{objc_msgSend(keySpec, "state")}];
            [v35 setTarget:{objc_msgSend(keySpec, "target")}];
            [v35 setValue:{objc_msgSend(keySpec, "value")}];
            [v35 setGlyphSize:{objc_msgSend(keySpec, "glyphSize")}];
            [v35 setGlyphWeight:{objc_msgSend(keySpec, "glyphWeight")}];
            [v35 setAppearance:{objc_msgSend(keySpec, "appearance")}];
            [v35 setLocalization:{objc_msgSend(keySpec, "localization")}];
            [v21 setKeySpec:v35];
            array = v38;
            v3 = v39;
          }

          v13 = v43 + 1;
        }

        while (v43 + 1 != v42);
        v42 = [array countByEnumeratingWithState:&v57 objects:v68 count:16];
      }

      while (v42);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)importNamedAssetsFromFileURLs:(id)ls referenceFiles:(BOOL)files completionHandler:(id)handler
{
  if (files)
  {
    v9 = [(CoreThemeDocument *)self _themeBitSourceForReferencedFilesAtURLs:ls createIfNecessary:1];
  }

  else
  {
    v9 = [(CoreThemeDocument *)self _themeBitSource:0];
  }

  v10 = v9;
  if (v9)
  {
    v11 = [-[CoreThemeDocument rootPathForProductionData](self "rootPathForProductionData")];
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:1];
    global_queue = dispatch_get_global_queue(0, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__CoreThemeDocument_importNamedAssetsFromFileURLs_referenceFiles_completionHandler___block_invoke;
    v15[3] = &unk_278EBB158;
    filesCopy = files;
    v15[4] = ls;
    v15[5] = self;
    v15[7] = v10;
    v15[8] = handler;
    v15[6] = v12;
    dispatch_async(global_queue, v15);
  }

  else if (handler)
  {
    v14 = *(handler + 2);

    v14(handler, 0, 0);
  }
}

void __84__CoreThemeDocument_importNamedAssetsFromFileURLs_referenceFiles_completionHandler___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v4 = [MEMORY[0x277CBEA60] array];
  v5 = *MEMORY[0x277CBE868];
  v31[0] = *MEMORY[0x277CBE868];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = a1;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v12 resourceValuesForKeys:v6 error:{0), "objectForKey:", v5), "BOOLValue"}])
        {
          v13 = [v3 enumeratorAtURL:v12 includingPropertiesForKeys:v4 options:6 errorHandler:0];
          v14 = [v13 nextObject];
          if (v14)
          {
            v15 = v14;
            do
            {
              [v2 addObject:v15];
              v15 = [v13 nextObject];
            }

            while (v15);
          }
        }

        else
        {
          [v2 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v16 = *(v21 + 72);
  if (v16)
  {
    goto LABEL_17;
  }

  v25 = 0;
  v17 = *(v21 + 40);
  v18 = [objc_opt_class() _imageAssetURLsByCopyingFileURLs:v2 toManagedLocationAtURL:*(v21 + 48) error:&v25];
  if (v18)
  {
    v2 = v18;
    v16 = *(v21 + 72);
LABEL_17:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__CoreThemeDocument_importNamedAssetsFromFileURLs_referenceFiles_completionHandler___block_invoke_2;
    block[3] = &unk_278EBB130;
    block[4] = *(v21 + 40);
    block[5] = v2;
    v24 = v16;
    v23 = *(v21 + 56);
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_18;
  }

  NSLog(&cfstr_UnableToImport_0.isa, [v25 localizedDescription]);
  v20 = *(v21 + 64);
  if (v20)
  {
    (*(v20 + 16))(v20, 0, v25);
  }

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __84__CoreThemeDocument_importNamedAssetsFromFileURLs_referenceFiles_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) undoManager];
  v12 = 0;
  v13 = 0;
  [v2 disableUndoRegistration];
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) addAssetsAtFileURLs:*(a1 + 40) createProductions:0 referenceFiles:*(a1 + 64) bitSource:*(a1 + 48) customInfos:0];
  objc_autoreleasePoolPop(v3);
  v5 = objc_autoreleasePoolPush();
  [*(a1 + 32) createNamedArtworkProductionsForAssets:v4 customInfos:0 skipLastStep:0 error:&v13];
  v6 = v13;
  objc_autoreleasePoolPop(v5);

  if (v13)
  {
    NSLog(&cfstr_UnableToImport_1.isa, [v13 localizedDescription]);
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v13);
    }
  }

  v8 = objc_autoreleasePoolPush();
  [*(a1 + 32) _tidyUpRecognitionImages];
  [*(a1 + 32) _generateWatchImages];
  [*(a1 + 32) _automaticSRGBGenerationFromP3];
  [*(a1 + 32) _automaticP3GenerationFromSRGB];
  [*(a1 + 32) _createForwardstopRenditions];
  [*(a1 + 32) _tidyUpLayerStacks];
  [*(a1 + 32) _optimizeForDeviceTraits];
  [*(a1 + 32) _backwardsCompatibilityPatchForLayoutDirection];
  objc_autoreleasePoolPop(v8);
  v9 = objc_autoreleasePoolPush();
  [*(a1 + 32) packRenditionsError:&v12];
  objc_autoreleasePoolPop(v9);
  v10 = v12;
  [v2 enableUndoRegistration];
  if (v10)
  {
    NSLog(&cfstr_UnableToPackIm.isa, [v12 localizedDescription]);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, v10 == 0, v12);
  }

  return result;
}

- (BOOL)canImportNamedAssetImportInfo:(id)info
{
  if ([info renditionType] != 1018 || (-[CoreThemeDocument targetPlatform](self, "targetPlatform"), LODWORD(v5) = CUISDFTexturesSupported(), v5))
  {
    if (!-[CoreThemeDocument featureEnabled:](self, "featureEnabled:", 19) || [info renditionType] < 0 || objc_msgSend(info, "renditionType") > 5 || (v5 = objc_msgSend(objc_msgSend(objc_msgSend(info, "fileURL"), "pathExtension"), "caseInsensitiveCompare:", @"HEIF")) != 0 && (v5 = objc_msgSend(objc_msgSend(objc_msgSend(info, "fileURL"), "pathExtension"), "caseInsensitiveCompare:", @"HEIC")) != 0)
    {
      [(CoreThemeDocument *)self targetPlatform];
      v6 = CUIMaxScaleForTargetPlatform();
      LOBYTE(v5) = -[CoreThemeDocument targetPlatform](self, "targetPlatform") == 4 && [info idiom] == 5 && objc_msgSend(info, "scaleFactor") >= v6 || objc_msgSend(info, "scaleFactor") <= v6;
    }
  }

  return v5;
}

- (void)importNamedAssetsWithImportInfos:(id)infos referenceFiles:(BOOL)files completionHandler:(id)handler
{
  filesCopy = files;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  array6 = [MEMORY[0x277CBEB18] array];
  array7 = [MEMORY[0x277CBEB18] array];
  array8 = [MEMORY[0x277CBEB18] array];
  array9 = [MEMORY[0x277CBEB18] array];
  array10 = [MEMORY[0x277CBEB18] array];
  array11 = [MEMORY[0x277CBEB18] array];
  array12 = [MEMORY[0x277CBEB18] array];
  array13 = [MEMORY[0x277CBEB18] array];
  array14 = [MEMORY[0x277CBEB18] array];
  array15 = [MEMORY[0x277CBEB18] array];
  array16 = [MEMORY[0x277CBEB18] array];
  array17 = [MEMORY[0x277CBEB18] array];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  CUILogLogToStderr();
  self->_donotstoreDocumentChecksum = 1;
  *(v45 + 24) = 0;
  array18 = [MEMORY[0x277CBEB18] array];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke;
  v41[3] = &unk_278EBB1A8;
  v42 = vdupq_n_s64(0x404E000000000000uLL);
  v41[4] = self;
  v41[5] = infos;
  v43 = vdupq_n_s64(0x4056800000000000uLL);
  v41[6] = array18;
  v41[7] = handler;
  v41[8] = &v44;
  [infos enumerateObjectsUsingBlock:v41];
  if (v45[3])
  {
    goto LABEL_13;
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_3;
  v40[3] = &unk_278EBB1D0;
  v40[4] = self;
  v40[5] = array13;
  v40[6] = array2;
  v40[7] = array3;
  v40[8] = array4;
  v40[9] = array5;
  v40[10] = array8;
  v40[11] = array15;
  v40[12] = array6;
  v40[13] = array14;
  v40[14] = array17;
  v40[15] = array;
  v40[16] = array12;
  v40[17] = v12;
  [array18 enumerateObjectsUsingBlock:v40];
  if ([v12 count])
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_4;
    v39[3] = &unk_278EBB1F8;
    v39[4] = v12;
    [array enumerateObjectsUsingBlock:v39];
  }

  if ([array12 count])
  {
    if (handler)
    {
      (*(handler + 2))(handler, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreThemeDefinition" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Misconfigured TDNamedAssetInfo", *MEMORY[0x277CCA450])}]);
    }

    goto LABEL_13;
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_5;
  v38[3] = &unk_278EBB1F8;
  v38[4] = array10;
  [array enumerateObjectsUsingBlock:v38];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_6;
  v37[3] = &unk_278EBB1F8;
  v37[4] = array11;
  [array2 enumerateObjectsUsingBlock:v37];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_7;
  v36[3] = &unk_278EBB1F8;
  v36[4] = array11;
  [array13 enumerateObjectsUsingBlock:v36];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_8;
  v35[3] = &unk_278EBB1F8;
  v35[4] = array9;
  [array8 enumerateObjectsUsingBlock:v35];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_9;
  v34[3] = &unk_278EBB1F8;
  v34[4] = array16;
  [array15 enumerateObjectsUsingBlock:v34];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_10;
  v33[3] = &unk_278EBB1F8;
  v33[4] = array7;
  [array6 enumerateObjectsUsingBlock:v33];
  if (filesCopy)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v14 addObjectsFromArray:array10];
    [v14 addObjectsFromArray:array11];
    [v14 addObjectsFromArray:array16];
    v15 = [(CoreThemeDocument *)self _themeBitSourceForReferencedFilesAtURLs:v14 createIfNecessary:1];

    if (v15)
    {
LABEL_9:
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_11;
      block[3] = &unk_278EBB248;
      v32 = filesCopy;
      block[4] = array10;
      block[5] = array11;
      block[6] = array16;
      block[7] = self;
      block[8] = v15;
      block[9] = array;
      block[10] = array2;
      block[11] = array15;
      block[12] = array14;
      block[13] = array6;
      block[14] = array3;
      block[15] = array4;
      block[16] = array8;
      block[17] = array5;
      block[18] = array13;
      block[19] = array17;
      block[20] = handler;
      dispatch_async(global_queue, block);
      goto LABEL_13;
    }
  }

  else
  {
    v15 = [(CoreThemeDocument *)self _themeBitSource:0];
    if (v15)
    {
      goto LABEL_9;
    }
  }

  if (handler)
  {
    (*(handler + 2))(handler, 0, 0);
  }

LABEL_13:
  _Block_object_dispose(&v44, 8);
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 verify];
  if ([*(a1 + 32) targetPlatform] == 1 && !objc_msgSend(a2, "renditionType") && objc_msgSend(a2, "idiom") == 1 && objc_msgSend(a2, "scaleFactor") == 3)
  {
    [objc_msgSend(a2 "iconSize")];
    if (v8 == *(a1 + 72) && v7 == *(a1 + 80))
    {
      v9 = *(a1 + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_2;
      v15[3] = &unk_278EBB180;
      v15[4] = a2;
      v16 = *(a1 + 88);
      if ([v9 indexOfObjectPassingTest:v15] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [a2 copy];
        [v10 setScaleFactor:2];
        [v10 setSubtype:1792];
        [v10 setIconSize:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSize:", *(a1 + 88), *(a1 + 96))}];
        [*(a1 + 48) addObject:v10];
      }
    }
  }

  if ([a2 graphicsFeatureSetClass] >= 11 && objc_msgSend(a2, "graphicsFeatureSetClass") != 11)
  {
    if ([a2 graphicsFeatureSetClass] == 12)
    {
      v11 = @"Apple11 not supported";
      v12 = 4;
      v13 = @"Unrecognised Metal GPU Family (Apple11) is not supported by this target platform";
LABEL_15:
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreThemeDefinition" code:v12 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v13, *MEMORY[0x277CCA450], 0, 0)}];
      NSLog(&v11->isa);
      (*(*(a1 + 56) + 16))();
      *(*(*(a1 + 64) + 8) + 24) = 1;
      *a4 = 1;
      return [*(a1 + 48) addObject:a2];
    }

    if ([a2 graphicsFeatureSetClass] >= 13)
    {
      v11 = @"> Apple10 not supported";
      v12 = 10;
      v13 = @"Unrecognised Metal GPU Family";
      goto LABEL_15;
    }
  }

  return [*(a1 + 48) addObject:a2];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) renditionType] || objc_msgSend(*(a1 + 32), "subtype") != 1792 || objc_msgSend(*(a1 + 32), "idiom") != 1 || objc_msgSend(*(a1 + 32), "scaleFactor") != 2)
  {
    return 0;
  }

  [objc_msgSend(*(a1 + 32) "iconSize")];
  if (v7 != *(a1 + 40) || v6 != *(a1 + 48))
  {
    return 0;
  }

  result = 1;
  *a4 = 1;
  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (([a2 renditionType] != 1009 || objc_msgSend(a2, "renditionType") != 1021) && objc_msgSend(a2, "renditionType") != 1015 && (objc_msgSend(a2, "compressionType") == 4 || objc_msgSend(a2, "compressionType") == 5) && objc_msgSend(a2, "compressionType") == 5 && objc_msgSend(*(a1 + 32), "featureEnabled:", 16))
  {
    [a2 setCompressionType:4];
  }

  if ([a2 renditionType] == 1007)
  {
    if (![a2 scaleFactor])
    {
      [a2 setScaleFactor:1];
    }

    if ([a2 texturePixelFormat])
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = *(a1 + 40);
    }

    goto LABEL_27;
  }

  if ([a2 renditionType] == 1009)
  {
    v4 = *(a1 + 56);
LABEL_27:
    v5 = *MEMORY[0x277D85DE8];

    return [v4 addObject:a2];
  }

  if ([a2 renditionType] == 1021)
  {
    v4 = *(a1 + 64);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1015)
  {
    v4 = *(a1 + 72);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1011)
  {
    v4 = *(a1 + 80);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1014)
  {
    v4 = *(a1 + 88);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1017)
  {
    v4 = *(a1 + 96);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1013)
  {
    if (![a2 scaleFactor])
    {
      [a2 setScaleFactor:1];
    }

    v7 = *(a1 + 104);
  }

  else
  {
    if ([a2 renditionType] != 1019 && objc_msgSend(a2, "renditionType") != 1020)
    {
      if ([*(a1 + 32) canImportNamedAssetImportInfo:a2])
      {
        if ([a2 renditionType] == 1002 || objc_msgSend(a2, "renditionType") == 1018)
        {
          [*(a1 + 120) insertObject:a2 atIndex:0];
        }

        else
        {
          [*(a1 + 120) addObject:a2];
        }

        if ([a2 containedImageNames] && !objc_msgSend(a2, "renditionType"))
        {
          [*(a1 + 128) addObject:a2];
        }

        if ([a2 renditionType] == 1002 || objc_msgSend(a2, "renditionType") == 1018)
        {
          if (![a2 scaleFactor])
          {
            [a2 setScaleFactor:1];
          }

          if ([a2 compressionType])
          {
            v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{objc_msgSend(a2, "compressionType")}];
            v15 = 0u;
            v16 = 0u;
            v17 = 0u;
            v18 = 0u;
            v10 = [a2 layerReferences];
            v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v16;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v16 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  [*(a1 + 136) setObject:v9 forKey:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "layerName")}];
                }

                v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
              }

              while (v12);
            }
          }
        }
      }

      goto LABEL_38;
    }

    v7 = *(a1 + 112);
  }

  [v7 addObject:a2];
LABEL_38:
  if ([a2 renditionType] == 1000 && !objc_msgSend(a2, "scaleFactor"))
  {
    [a2 setScaleFactor:1];
  }

  if (![a2 renditionType])
  {
    [a2 setResizingMode:1];
  }

  result = [a2 renditionType];
  if ((result & 0x8000000000000000) == 0)
  {
    result = [a2 renditionType];
    if (result <= 5)
    {
      result = [a2 scaleFactor];
      if (!result)
      {
        result = [objc_msgSend(objc_msgSend(a2 "fileURL")];
        if (result)
        {
          result = [a2 setScaleFactor:1];
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *__87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) objectForKey:{objc_msgSend(a2, "name")}];
  if (result)
  {
    v4 = [result intValue];

    return [a2 setCompressionType:v4];
  }

  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = [a2 fileURL];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [a2 fileURL];
  }

  else
  {
    v6 = *MEMORY[0x277CBEEE8];
  }

  return [v5 addObject:v6];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a2 textureInfos];
  result = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v15;
    v7 = *MEMORY[0x277CBEEE8];
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [v9 fileURL];
        v11 = *(a1 + 32);
        v12 = v7;
        if (v10)
        {
          v12 = [v9 fileURL];
        }

        [v11 addObject:v12];
        ++v8;
      }

      while (v5 != v8);
      result = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a2 textureInfos];
  result = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v15;
    v7 = *MEMORY[0x277CBEEE8];
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [v9 fileURL];
        v11 = *(a1 + 32);
        v12 = v7;
        if (v10)
        {
          v12 = [v9 fileURL];
        }

        [v11 addObject:v12];
        ++v8;
      }

      while (v5 != v8);
      result = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v4 = [a2 fileURL];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [a2 fileURL];
  }

  else
  {
    v6 = *MEMORY[0x277CBEEE8];
  }

  return [v5 addObject:v6];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_9(uint64_t a1, void *a2)
{
  v4 = [a2 fileURL];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [a2 fileURL];
  }

  else
  {
    v6 = *MEMORY[0x277CBEEE8];
  }

  return [v5 addObject:v6];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = [a2 fileURL];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [a2 fileURL];
  }

  else
  {
    v6 = *MEMORY[0x277CBEEE8];
  }

  return [v5 addObject:v6];
}

void __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_11(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
LABEL_3:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_15;
    block[3] = &unk_278EBB220;
    block[4] = *(a1 + 56);
    block[5] = v2;
    v29 = *(a1 + 168);
    v21 = *(a1 + 64);
    v22 = v3;
    v4 = *(a1 + 104);
    v23 = *(a1 + 88);
    v24 = v4;
    v5 = *(a1 + 136);
    v25 = *(a1 + 120);
    v26 = v5;
    v27 = *(a1 + 80);
    v28 = *(a1 + 152);
    dispatch_async(MEMORY[0x277D85CD0], block);
    return;
  }

  v6 = [objc_msgSend(*(a1 + 56) "rootPathForProductionData")];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
  v33 = 0;
  v8 = *(a1 + 56);
  v2 = [objc_opt_class() _imageAssetURLsByCopyingFileURLs:*(a1 + 32) toManagedLocationAtURL:v7 error:&v33];
  v9 = [v2 count];
  if (v9 != [*(a1 + 72) count])
  {
    NSLog(&cfstr_UnableToImport_2.isa, [v33 localizedDescription]);
    goto LABEL_10;
  }

  v10 = *(a1 + 72);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_12;
  v32[3] = &unk_278EBB1F8;
  v32[4] = v2;
  [v10 enumerateObjectsUsingBlock:v32];
  v11 = *(a1 + 56);
  v12 = [objc_opt_class() _imageAssetURLsByCopyingFileURLs:*(a1 + 40) toManagedLocationAtURL:v7 error:&v33];
  v13 = [v12 count];
  if (v13 != [*(a1 + 40) count])
  {
    NSLog(&cfstr_UnableToImport_2.isa, [v33 localizedDescription]);
LABEL_10:
    v18 = *(a1 + 160);
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v33);
    }

    return;
  }

  v14 = *(a1 + 80);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_13;
  v31[3] = &unk_278EBB1F8;
  v31[4] = v12;
  [v14 enumerateObjectsUsingBlock:v31];
  v15 = *(a1 + 56);
  v3 = [objc_opt_class() _imageAssetURLsByCopyingFileURLs:*(a1 + 48) toManagedLocationAtURL:v7 error:&v33];
  v16 = [v3 count];
  if (v16 == [*(a1 + 88) count])
  {
    v17 = *(a1 + 88);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_14;
    v30[3] = &unk_278EBB1F8;
    v30[4] = v3;
    [v17 enumerateObjectsUsingBlock:v30];
    goto LABEL_3;
  }

  NSLog(&cfstr_UnableToImport_3.isa, [v33 localizedDescription]);
  v19 = *(a1 + 160);
  if (v19)
  {
    (*(v19 + 16))(v19, 0, v33);
  }
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) objectAtIndex:?];

  return [a2 setFileURL:v3];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a2 textureInfos];
  result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setFileURL:{objc_msgSend(*(a1 + 32), "objectAtIndex:", a3)}];
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) objectAtIndex:?];

  return [a2 setFileURL:v3];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) undoManager];
  [v2 disableUndoRegistration];
  v11 = [MEMORY[0x277CBEA60] array];
  v3 = [*(a1 + 32) _addAssetsAtFileURLs:*(a1 + 40) createProductions:0 referenceFiles:*(a1 + 160) bitSource:*(a1 + 48) customInfos:*(a1 + 56) sortedCustomInfos:&v11];
  v4 = [v3 count];
  if (v4 == [v11 count])
  {
    v10 = [MEMORY[0x277CBEA60] array];
    v5 = [*(a1 + 32) _addAssetsAtFileURLs:*(a1 + 64) createProductions:0 referenceFiles:*(a1 + 160) bitSource:*(a1 + 48) customInfos:*(a1 + 72) sortedCustomInfos:&v10];
    v6 = [v5 count];
    if (v6 == [v10 count])
    {
      v9 = 0;
      [*(a1 + 32) createNamedRenditionGroupProductionsForImportInfos:*(a1 + 80) error:&v9];
      if (v9)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) createNamedArtworkProductionsForAssets:v3 customInfos:v11 skipLastStep:0 error:&v9];
      if (v9)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) createNamedRecognitionObjectsForAssets:v5 customInfos:v10 error:&v9];
      if (v9)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) createNamedGlyphVectorForCustomInfos:*(a1 + 88) referenceFiles:*(a1 + 160) bitSource:*(a1 + 48) error:&v9];
      if (v9)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) createNamedColorProductionsForImportInfos:*(a1 + 96) error:&v9];
      if (v9)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) createNamedGradientProductionsForImportInfos:*(a1 + 104) error:&v9];
      if (v9)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) createNamedModelsForCustomInfos:*(a1 + 112) referenceFiles:*(a1 + 160) bitSource:*(a1 + 48) error:&v9];
      if (v9)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) createTextStyleProductionsForImportInfos:*(a1 + 120) error:&v9];
      if (v9)
      {
        goto LABEL_13;
      }

      [*(a1 + 32) createNamedTexturesForCustomInfos:objc_msgSend(*(a1 + 32) referenceFiles:"updateAutomaticTexturesForCustomInfos:allTextureInfos:" bitSource:*(a1 + 128) error:{*(a1 + 136)), *(a1 + 160), *(a1 + 48), &v9}];
      if (v9 || ([*(a1 + 32) _tidyUpRecognitionImages], objc_msgSend(*(a1 + 32), "_generateWatchImages"), objc_msgSend(*(a1 + 32), "_automaticSRGBGenerationFromP3"), objc_msgSend(*(a1 + 32), "_automaticP3GenerationFromSRGB"), objc_msgSend(*(a1 + 32), "_tidyUpLayerStacks"), objc_msgSend(*(a1 + 32), "_createForwardstopRenditions"), objc_msgSend(*(a1 + 32), "createNamedIconLayerStacksForCustomInfos:referenceFiles:bitSource:error:", *(a1 + 144), *(a1 + 160), *(a1 + 48), &v9), v9))
      {
LABEL_13:
        v7 = 0;
      }

      else
      {
        [*(a1 + 32) _automaticSRGBGenerationFromP3];
        [*(a1 + 32) _automaticP3GenerationFromSRGB];
        [*(a1 + 32) _optimizeForDeviceTraits];
        [*(a1 + 32) _backwardsCompatibilityPatchForLayoutDirection];
        v7 = 1;
      }

      [v2 enableUndoRegistration];
      result = *(a1 + 152);
      if (result)
      {
        return (*(result + 16))(result, v7, v9);
      }
    }

    else
    {
      NSLog(&cfstr_UnableToImport.isa);
      [v2 enableUndoRegistration];
      result = *(a1 + 152);
      if (result)
      {
        return (*(result + 16))(result, 0, 0);
      }
    }
  }

  else
  {
    NSLog(&cfstr_UnableToImport.isa);
    [v2 enableUndoRegistration];
    result = *(a1 + 152);
    if (result)
    {
      return (*(result + 16))(result, 0, 0);
    }
  }

  return result;
}

- (void)deleteNamedAssets:(id)assets shouldDeleteAssetFiles:(BOOL)files completionHandler:(id)handler
{
  handlerCopy = handler;
  filesCopy = files;
  v41 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = assets;
  v29 = [assets countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        [v8 addObject:{v11, handlerCopy}];
        renditions = [v11 renditions];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = [renditions countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(renditions);
              }

              v17 = *(*(&v31 + 1) + 8 * j);
              [v8 addObject:v17];
              asset = [v17 asset];
              if (asset)
              {
                v19 = asset;
                [v8 addObject:asset];
                if (filesCopy)
                {
                  v20 = [v19 fileURLWithDocument:self];
                  if (v20)
                  {
                    [v9 addObject:v20];
                  }
                }
              }
            }

            v14 = [renditions countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);
        }
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  undoManager = [(TDPersistentDocument *)self undoManager];
  if (filesCopy)
  {
    v22 = undoManager;
    [undoManager disableUndoRegistration];
    [(CoreThemeDocument *)self deleteObjects:v8];

    [v22 enableUndoRegistration];
  }

  else
  {
    [(CoreThemeDocument *)self deleteObjects:v8];
  }

  if ([v9 count])
  {
    global_queue = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__CoreThemeDocument_deleteNamedAssets_shouldDeleteAssetFiles_completionHandler___block_invoke;
    block[3] = &unk_278EBB270;
    block[4] = v9;
    block[5] = v26;
    dispatch_async(global_queue, block);
  }

  else if (v26)
  {
    (*(v26 + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __80__CoreThemeDocument_deleteNamedAssets_shouldDeleteAssetFiles_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 removeItemAtURL:*(*(&v10 + 1) + 8 * i) error:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_addAssetsFromCustomAssetInfos:(id)infos bitSource:(id)source error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__CoreThemeDocument__addAssetsFromCustomAssetInfos_bitSource_error___block_invoke;
  v11[3] = &unk_278EBB298;
  v11[4] = self;
  v11[5] = source;
  v11[6] = array;
  v11[7] = error;
  [infos enumerateObjectsUsingBlock:v11];
  return array;
}

uint64_t __68__CoreThemeDocument__addAssetsFromCustomAssetInfos_bitSource_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 customAsset];
  v8 = [*(a1 + 32) newObjectForEntity:@"CustomAsset"];
  v13 = v8;
  if (!v8 && *(a1 + 56))
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [v9 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Unable to create CustomAsset entity. Data model may not support this operation.", *MEMORY[0x277CCA450], 0)}];
    v8 = 0;
    **(a1 + 56) = v10;
    *a4 = 1;
  }

  [v8 setSource:*(a1 + 40)];
  [v13 setCategory:@"custom"];
  [v13 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"CustomAsset-%@-%@", objc_msgSend(a2, "elementName"), objc_msgSend(a2, "partName"))}];
  [v13 setTemplateRenderingMode:{objc_msgSend(*(a1 + 32), "templateRenderingModeWithIdentifier:", objc_msgSend(a2, "templateRenderingMode"))}];
  [v13 setScaleFactor:{objc_msgSend(objc_msgSend(a2, "renditionKey"), "themeScale")}];
  v11 = [v13 setReferenceData:{objc_msgSend(v7, "customAssetReferenceData")}];
  if (v13)
  {
    v11 = [*(a1 + 48) addObject:?];
  }

  return MEMORY[0x2821F9730](v11);
}

- (BOOL)createCustomArtworkProductionsForCustomAssets:(id)assets withImportInfos:(id)infos error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__CoreThemeDocument_createCustomArtworkProductionsForCustomAssets_withImportInfos_error___block_invoke;
  v10[3] = &unk_278EBB2C0;
  v10[4] = infos;
  v10[5] = self;
  v10[6] = array;
  [assets enumerateObjectsUsingBlock:v10];
  return 1;
}

uint64_t __89__CoreThemeDocument_createCustomArtworkProductionsForCustomAssets_withImportInfos_error___block_invoke(id *a1, void *a2)
{
  v4 = [a1[4] objectAtIndexedSubscript:?];
  [objc_msgSend(v4 "customAsset")];
  v6 = v5;
  v8 = v7;
  v9 = a1[5];
  [v4 sliceInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v4 resizableSliceSize];
  v20 = [v9 slicesComputedForImageSize:objc_msgSend(v4 usingSliceInsets:"renditionType") resizableSliceSize:v6 withRenditionType:{v8, v11, v13, v15, v17, v18, v19}];
  v21 = [a1[5] newObjectForEntity:@"CustomArtworkProduction"];
  v22 = [a1[5] newObjectForEntity:@"RenditionKeySpec"];
  [v22 setAttributesFromRenditionKey:objc_msgSend(objc_msgSend(v4 withDocument:{"renditionKey"), "keyList"), a1[5]}];
  [v21 setBaseKeySpec:v22];

  [v21 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
  [v21 setRenditionType:{objc_msgSend(a1[5], "renditionTypeWithIdentifier:", objc_msgSend(v4, "renditionType"))}];
  [v21 setRenditionSubtype:{objc_msgSend(a1[5], "renditionSubtypeWithIdentifier:", objc_msgSend(v4, "renditionSubtype"))}];
  [v21 setTemplateRenderingMode:{objc_msgSend(a1[5], "templateRenderingModeWithIdentifier:", objc_msgSend(v4, "templateRenderingMode"))}];
  [v21 setOptOutOfThinning:{objc_msgSend(v4, "optOutOfThinning")}];
  [v21 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Custom Asset from: %@", objc_msgSend(a2, "name"))}];
  if ([v4 modificationDate])
  {
    [v21 setDateOfLastChange:{objc_msgSend(v4, "modificationDate")}];
    [v21 setHasCustomDateOfLastChange:1];
  }

  [a1[6] addObject:v21];
  v23 = [a1[5] newObjectForEntity:@"CustomArtworkRenditionSpec"];
  [v23 setAsset:a2];
  [v23 setProduction:v21];
  [v4 alignmentRect];
  [v23 setAlignmentRect:?];
  if ([v20 count])
  {
    [v23 setSlices:v20];
  }

  [v23 resetToBaseKeySpec];
  if ([objc_msgSend(v4 "name")])
  {
    v24 = [a1[5] namedElementWithName:{objc_msgSend(v4, "name")}];
    if (!v24)
    {
      v24 = [a1[5] _createNamedElementWithNextAvailableIdentifier];
      [v24 setName:{objc_msgSend(v4, "name")}];
    }

    [v24 setProduction:v21];
    [objc_msgSend(v21 "baseKeySpec")];
  }

  return [v23 resetToBaseKeySpec];
}

- (void)importCustomAssetsWithImportInfos:(id)infos completionHandler:(id)handler
{
  v7 = [(CoreThemeDocument *)self _themeBitSource:0];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__CoreThemeDocument_importCustomAssetsWithImportInfos_completionHandler___block_invoke;
    v9[3] = &unk_278EBB2E8;
    v9[4] = self;
    v9[5] = infos;
    v9[6] = v7;
    v9[7] = handler;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  else if (handler)
  {
    v8 = *(handler + 2);

    v8(handler, 0, 0);
  }
}

uint64_t __73__CoreThemeDocument_importCustomAssetsWithImportInfos_completionHandler___block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) undoManager];
  [v2 disableUndoRegistration];
  v3 = [*(a1 + 32) _addAssetsFromCustomAssetInfos:*(a1 + 40) bitSource:*(a1 + 48) error:&v7];
  v4 = [v3 count];
  if (v4 == [*(a1 + 40) count])
  {
    [*(a1 + 32) createCustomArtworkProductionsForCustomAssets:v3 withImportInfos:*(a1 + 40) error:&v7];
    [v2 enableUndoRegistration];
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    v6 = *(result + 16);
  }

  else
  {
    NSLog(&cfstr_UnableToImport_4.isa);
    [v2 enableUndoRegistration];
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    v6 = *(result + 16);
  }

  return v6();
}

- (id)_genericPartDefinition
{
  v2 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SchemaPartDefinition", [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@ AND element.name = %@", @"Push Button", @"Push Button"], 0);
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)createElementProductionWithAsset:(id)asset
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(CoreThemeDocument *)self _createPhotoshopElementProductionWithAsset:asset];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      NSLog(&cfstr_CreatingProduc.isa);
    }

    return 0;
  }
}

- (id)createAssetWithName:(id)name inCategory:(id)category forThemeBitSource:(id)source
{
  v9 = [TDAsset scaleFactorFromImageFilename:?];

  return [(CoreThemeDocument *)self createAssetWithName:name scaleFactor:v9 inCategory:category forThemeBitSource:source];
}

- (id)assetAtPath:(id)path
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];

  return [(CoreThemeDocument *)self assetAtFileURL:v4];
}

- (id)assetAtFileURL:(id)l
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 0;
  [(CoreThemeDocument *)self _getFilename:&v13 scaleFactor:&v11 category:&v12 bitSource:&v10 forFileURL:l];
  if (v13)
  {
    v5 = v11 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v12 == 0 || v10 == 0)
  {
    return 0;
  }

  v8 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"PhotoshopAsset", [MEMORY[0x277CCAC30] predicateWithFormat:@"name == %@ AND scaleFactor == %u AND category == %@", v13, v11, v12], 0);
  result = [v8 count];
  if (result)
  {
    if ([v8 count] >= 2)
    {
      NSLog(&cfstr_WarningFoundMu.isa, [l path]);
    }

    return [v8 objectAtIndex:0];
  }

  return result;
}

- (id)_addAssetsAtFileURLs:(id)ls createProductions:(BOOL)productions referenceFiles:(BOOL)files bitSource:(id)source customInfos:(id)infos sortedCustomInfos:(id *)customInfos
{
  filesCopy = files;
  productionsCopy = productions;
  v82 = *MEMORY[0x277D85DE8];
  v67 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"Asset", 0, 0)}];
  v64 = [v67 count];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(ls, "count")}];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0;
  if (filesCopy)
  {
    v16 = [source fileURLWithDocument:self];
  }

  pathComponents = [v16 pathComponents];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __115__CoreThemeDocument__addAssetsAtFileURLs_createProductions_referenceFiles_bitSource_customInfos_sortedCustomInfos___block_invoke;
  v78[3] = &unk_278EBB310;
  v78[4] = source;
  v78[5] = infos;
  selfCopy = self;
  v78[6] = self;
  v78[7] = ls;
  v79 = filesCopy;
  v78[8] = v16;
  v78[9] = pathComponents;
  v78[10] = @"FilePDF";
  v78[11] = @"AssetName";
  v78[12] = @"Scale";
  v78[13] = @"FileScale";
  v78[14] = @"Category";
  v78[15] = @"FileBitSource";
  v78[17] = v15;
  v78[18] = customInfos;
  v78[16] = @"CustomInfo";
  [ls enumerateObjectsUsingBlock:v78];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __115__CoreThemeDocument__addAssetsAtFileURLs_createProductions_referenceFiles_bitSource_customInfos_sortedCustomInfos___block_invoke_2;
  v77[3] = &unk_278EBB338;
  v77[4] = @"AssetName";
  v18 = [v15 sortedArrayUsingComparator:v77];
  v19 = v18;
  if (customInfos)
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v21 = [v19 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v74;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v74 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = [*(*(&v73 + 1) + 8 * i) objectForKey:@"CustomInfo"];
          if (v25)
          {
            [v20 addObject:v25];
          }
        }

        v22 = [v19 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v22);
    }

    *customInfos = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v63 = [v19 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v63)
  {
    v59 = 0;
    v60 = 0;
    v61 = *MEMORY[0x277CBEEE8];
    v62 = *v70;
    v57 = !productionsCopy;
    selfCopy2 = self;
    do
    {
      v27 = 0;
      do
      {
        if (*v70 != v62)
        {
          objc_enumerationMutation(v19);
        }

        v28 = *(*(&v69 + 1) + 8 * v27);
        v29 = [v28 objectForKey:@"AssetName"];
        v30 = [objc_msgSend(v28 objectForKey:{@"Scale", "unsignedIntegerValue"}];
        v31 = [objc_msgSend(v28 objectForKey:{@"FileScale", "unsignedIntegerValue"}];
        v32 = [v28 objectForKey:@"Category"];
        v33 = [v28 objectForKey:@"FileBitSource"];
        v34 = [v28 objectForKey:@"FilePDF"];
        v68 = [v28 objectForKey:@"CustomInfo"];
        if (v64)
        {
          if (v31)
          {
            v35 = v34 == 0;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            v36 = v30;
            v45 = [v67 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name == %@ AND scaleFactor == %u AND category == %@", v29, v30, v32)}];
            if (![v45 count] || (objc_msgSend(v45, "objectAtIndex:", 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (v68)
              {
                renditionType = [v68 renditionType];
                v38 = @"imagestack";
                if (renditionType != 1002)
                {
                  if ([v68 renditionType] == 1018)
                  {
                    v38 = @"imagestack";
                  }

                  else
                  {
                    v38 = @"png";
                  }
                }

                v39 = [(CoreThemeDocument *)selfCopy2 createAssetWithName:v29 fileType:v38 scaleFactor:v36 inCategory:v32 forThemeBitSource:v33];
                if ([v68 renditionType] == 1000 || objc_msgSend(v68, "renditionType") == 1014)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v39 setRawData:1];
                  }
                }
              }

              else
              {
                v39 = [(CoreThemeDocument *)selfCopy2 createAssetWithName:v29 fileType:@"png" scaleFactor:v36 inCategory:v32 forThemeBitSource:v33];
              }

              goto LABEL_62;
            }

LABEL_41:
            v39 = [v45 objectAtIndex:0];
          }

          else
          {
            v44 = v30;
            v45 = [v67 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name == %@ AND scaleFactor == %u AND category == %@ AND fileScaleFactor == %@", v29, v30, v32, v31)}];
            if ([v45 count])
            {
              [v45 objectAtIndex:0];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_41;
              }
            }

            v39 = [(CoreThemeDocument *)selfCopy2 createAssetWithName:v29 fileType:@"png" scaleFactor:v44 inCategory:v32 forThemeBitSource:v33];
            [v39 setFileScaleFactor:v31];
LABEL_62:
            [v67 addObject:v39];
          }

LABEL_63:
          if (!v39)
          {
            goto LABEL_80;
          }

          goto LABEL_64;
        }

        v58 = v33;
        v65 = v29;
        v40 = v30;
        v41 = 0;
        v42 = 0;
        if (v60)
        {
          v43 = 0;
          if (v59)
          {
            v42 = [v60 objectForKey:@"AssetName"];
            v41 = [objc_msgSend(v60 objectForKey:{@"Scale", "unsignedIntegerValue"}];
            v43 = [v60 objectForKey:v32];
          }
        }

        else
        {
          v43 = 0;
        }

        v46 = [v42 isEqualToString:v65];
        if (v41 == v40)
        {
          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        if (v31)
        {
          v48 = v34 == 0;
        }

        else
        {
          v48 = 1;
        }

        if (!v48)
        {
          selfCopy2 = selfCopy;
          if (v47)
          {
            [v43 isEqualToString:v32];
          }

          v39 = [(CoreThemeDocument *)selfCopy createAssetWithName:v65 fileType:@"png" scaleFactor:v40 inCategory:v32 forThemeBitSource:v58];
          [v39 setFileScaleFactor:v31];
          v59 = v39;
          v60 = v28;
          goto LABEL_63;
        }

        selfCopy2 = selfCopy;
        if (!v47 || ([v43 isEqualToString:v32] & 1) == 0)
        {
          if (v68)
          {
            if ([v68 renditionType] != 1002 && objc_msgSend(v68, "renditionType") != 1018)
            {
              v59 = v61;
              if ([v68 renditionType] != 1004)
              {
                v52 = [(CoreThemeDocument *)selfCopy createAssetWithName:v65 fileType:@"png" scaleFactor:v40 inCategory:v32 forThemeBitSource:v58];
                v59 = v52;
                if ([v68 renditionType] == 1000 || objc_msgSend(v68, "renditionType") == 1014)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v52 setRawData:1];
                  }
                }
              }

              goto LABEL_71;
            }

            v49 = selfCopy;
            v50 = v65;
            v51 = @"imagestack";
          }

          else
          {
            v49 = selfCopy;
            v50 = v65;
            v51 = @"png";
          }

          v59 = [(CoreThemeDocument *)v49 createAssetWithName:v50 fileType:v51 scaleFactor:v40 inCategory:v32 forThemeBitSource:v58];
        }

LABEL_71:
        v39 = v59;
        if (!v59)
        {
LABEL_80:
          array = 0;
          goto LABEL_81;
        }

        [v67 addObject:v59];
        v60 = v28;
LABEL_64:
        if (v39 != v61 && (([v39 hasProduction] | v57) & 1) == 0)
        {
          [(CoreThemeDocument *)selfCopy2 createElementProductionWithAsset:v39];
        }

        [array addObject:v39];
        ++v27;
      }

      while (v63 != v27);
      v53 = [v19 countByEnumeratingWithState:&v69 objects:v80 count:16];
      v63 = v53;
    }

    while (v53);
  }

LABEL_81:
  v54 = *MEMORY[0x277D85DE8];
  return array;
}

uint64_t __115__CoreThemeDocument__addAssetsAtFileURLs_createProductions_referenceFiles_bitSource_customInfos_sortedCustomInfos___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v44 = 0;
  v45 = v5;
  v43 = 0;
  v42 = 1;
  if (*MEMORY[0x277CBEEE8] == a2)
  {
    v9 = [objc_msgSend(*(a1 + 40) objectAtIndex:{a3), "name"}];
    v6 = 0;
    v43 = @"PackedAsset";
    v44 = v9;
  }

  else
  {
    v6 = a2;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = &v43;
    }

    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = &v45;
    }

    [*(a1 + 48) _getFilename:&v44 scaleFactor:&v42 category:v7 bitSource:v8 forFileURL:a2];
  }

  v10 = [*(a1 + 40) count];
  if (v10 == [*(a1 + 56) count])
  {
    v42 = [objc_msgSend(*(a1 + 40) objectAtIndex:{a3), "scaleFactor"}];
  }

  if (*(a1 + 152) == 1 && v6 && *(a1 + 64))
  {
    v11 = [v6 pathComponents];
    UncommonItemInArrays = indexOfFirstUncommonItemInArrays(*(a1 + 72), v11);
    v13 = [v11 subarrayWithRange:{UncommonItemInArrays, objc_msgSend(v11, "count") + ~UncommonItemInArrays}];
    result = [MEMORY[0x277CCACA8] pathWithComponents:v13];
    v43 = result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = v43;
    if (!v43)
    {
LABEL_18:
      v43 = @"NamedImages";
    }
  }

  if (!v44 || !v45)
  {
    return result;
  }

  [*(a1 + 48) targetPlatform];
  v15 = CUIMaxScaleForTargetPlatform();
  [*(a1 + 48) targetPlatform];
  v16 = CUIMinScaleForTargetPlatform();
  v17 = *(a1 + 40);
  if (v17 && [v17 count] > a3)
  {
    v18 = [*(a1 + 40) objectAtIndex:a3];
    v19 = v18;
    if (v6 && v18)
    {
      if ([v18 renditionType] == 1000 && !objc_msgSend(v19, "universalTypeIdentifier"))
      {
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], [v6 pathExtension], 0);
        [v19 setUniversalTypeIdentifier:PreferredIdentifierForTag];
      }
    }

    else if (!v6)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_51;
    }

    v19 = 0;
  }

  if ([v19 renditionType] != 1000 && objc_msgSend(v19, "renditionType") != 1017 && (!objc_msgSend(objc_msgSend(v6, "pathExtension"), "caseInsensitiveCompare:", @"PDF") || !objc_msgSend(objc_msgSend(v6, "pathExtension"), "caseInsensitiveCompare:", @"SVG")))
  {
    v21 = MEMORY[0x277CBEB18];
    v22 = v44;
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
    v25 = [v21 arrayWithObjects:{v22, v23, v24, v43, v45, *(a1 + 80), 0}];
    v26 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 80), 0}];
    if (*(a1 + 144))
    {
      v27 = *(a1 + 40);
      if (v27)
      {
        if ([v27 count] > a3)
        {
          [v25 addObject:{objc_msgSend(*(a1 + 40), "objectAtIndex:", a3)}];
          [v26 addObject:*(a1 + 128)];
        }
      }
    }

    result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v26];
    if (result)
    {
      result = [*(a1 + 136) addObject:result];
    }

    while (v16 <= v15)
    {
      result = [*(a1 + 48) shouldGenerateScale:v16];
      if (result)
      {
        v28 = MEMORY[0x277CBEB18];
        v29 = v44;
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
        v32 = [v28 arrayWithObjects:{v29, v30, v31, v43, v45, *(a1 + 80), 0}];
        v33 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 80), 0}];
        if (*(a1 + 144))
        {
          v34 = *(a1 + 40);
          if (v34)
          {
            if ([v34 count] > a3)
            {
              [v32 addObject:{objc_msgSend(*(a1 + 40), "objectAtIndex:", a3)}];
              [v33 addObject:*(a1 + 128)];
            }
          }
        }

        result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v33];
        if (result)
        {
          result = [*(a1 + 136) addObject:result];
        }
      }

      v16 = (v16 + 1);
    }

    return result;
  }

LABEL_51:
  v35 = MEMORY[0x277CBEB18];
  v36 = v44;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
  v38 = [v35 arrayWithObjects:{v36, v37, v43, v45, 0}];
  v39 = *(a1 + 96);
  v40 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(a1 + 88), v39, *(a1 + 112), *(a1 + 120), 0}];
  if (*(a1 + 144))
  {
    v41 = *(a1 + 40);
    if (v41)
    {
      if ([v41 count] > a3)
      {
        [v38 addObject:{objc_msgSend(*(a1 + 40), "objectAtIndex:", a3)}];
        [v40 addObject:*(a1 + 128)];
      }
    }
  }

  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v40];
  if (result)
  {
    return [*(a1 + 136) addObject:result];
  }

  return result;
}

uint64_t __115__CoreThemeDocument__addAssetsAtFileURLs_createProductions_referenceFiles_bitSource_customInfos_sortedCustomInfos___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 objectForKey:*(a1 + 32)];
  v6 = [a3 objectForKey:*(a1 + 32)];

  return [v5 compare:v6];
}

- (id)metadatumForKey:(id)key
{
  v4 = [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  if (!v4)
  {
    [CoreThemeDocument metadatumForKey:];
  }

  persistentStores = [v4 persistentStores];
  v6 = persistentStores;
  if (!persistentStores || [persistentStores count] != 1)
  {
    [CoreThemeDocument metadatumForKey:];
  }

  v7 = [v4 metadataForPersistentStore:{objc_msgSend(v6, "objectAtIndex:", 0)}];

  return [v7 objectForKey:key];
}

- (void)setMetadatum:(id)metadatum forKey:(id)key
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread != [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")])
  {
    [CoreThemeDocument setMetadatum:forKey:];
  }

  v8 = [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  persistentStores = [v8 persistentStores];
  if ([persistentStores count] != 1)
  {
    [CoreThemeDocument setMetadatum:forKey:];
  }

  v10 = [objc_msgSend(v8 metadataForPersistentStore:{objc_msgSend(persistentStores, "objectAtIndex:", 0)), "mutableCopy"}];
  [v10 setObject:metadatum forKey:key];
  v11 = [persistentStores objectAtIndex:0];
  if (([v11 isReadOnly] & 1) == 0)
  {

    [v8 setMetadata:v10 forPersistentStore:v11];
  }
}

- (id)pathToAsset:(id)asset
{
  rootPathForProductionData = [(CoreThemeDocument *)self rootPathForProductionData];
  sourceRelativePath = [asset sourceRelativePath];

  return [rootPathForProductionData stringByAppendingPathComponent:sourceRelativePath];
}

- (id)rootPathForProductionData
{
  pathToRepresentedDocument = [(CoreThemeDocument *)self pathToRepresentedDocument];
  if (!pathToRepresentedDocument)
  {
    pathToRepresentedDocument = [(NSURL *)[(TDPersistentDocument *)self fileURL] path];
  }

  v4 = [[(NSString *)pathToRepresentedDocument stringByDeletingLastPathComponent] stringByAppendingPathComponent:[(CoreThemeDocument *)self relativePathToProductionData]];

  return [(NSString *)v4 td_stringByStandardizingPath];
}

- (id)relativePathToProductionData
{
  result = self->_relativePathToProductionData;
  if (!result)
  {
    v4 = [(CoreThemeDocument *)self metadatumForKey:@"relativePathToProductionData"];
    v5 = @"./";
    if (v4)
    {
      v5 = v4;
    }

    result = v5;
    self->_relativePathToProductionData = result;
  }

  return result;
}

- (void)setRelativePathToProductionData:(id)data
{
  [(CoreThemeDocument *)self setMetadatum:data forKey:@"relativePathToProductionData"];
  relativePathToProductionData = self->_relativePathToProductionData;
  if (relativePathToProductionData != data)
  {

    self->_relativePathToProductionData = data;
  }
}

- (id)renditionsMatchingRenditionKeySpec:(id)spec
{
  v4 = [(CoreThemeDocument *)self _predicateForRenditionKeySpec:spec];

  return [(CoreThemeDocument *)self objectsForEntity:@"RenditionSpec" withPredicate:v4 sortDescriptors:0];
}

- (unint64_t)countOfRenditionsMatchingRenditionKeySpec:(id)spec
{
  v4 = [(CoreThemeDocument *)self _predicateForRenditionKeySpec:spec];

  return [(CoreThemeDocument *)self countForEntity:@"RenditionSpec" withPredicate:v4];
}

- (unint64_t)countOfRenditionsMatchingRenditionKeySpecs:(id)specs
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objectEnumerator = [specs objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [v5 addObject:{-[CoreThemeDocument _predicateForRenditionKeySpec:](self, "_predicateForRenditionKeySpec:", nextObject2)}];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  v9 = -[CoreThemeDocument countForEntity:withPredicate:](self, "countForEntity:withPredicate:", @"RenditionSpec", [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v5]);

  return v9;
}

- (NSUUID)uuid
{
  result = [(CoreThemeDocument *)self metadatumForKey:@"uuid"];
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:result];

    return v3;
  }

  return result;
}

- (void)setUuid:(id)uuid
{
  uUIDString = [uuid UUIDString];

  [(CoreThemeDocument *)self setMetadatum:uUIDString forKey:@"uuid"];
}

- (unsigned)checksum
{
  if (self->_donotstoreDocumentChecksum)
  {
    return 0;
  }

  v16 = v6;
  v17 = v5;
  v18 = v4;
  v19 = v2;
  v12 = crc32(0, 0, 0);
  v13 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:{-[NSURL path](-[TDPersistentDocument fileURL](self, "fileURL"), "path")}];
  v14 = [v13 length];
  v15 = v14;
  if (HIDWORD(v14))
  {
    [CoreThemeDocument checksum];
  }

  return crc32(v12, [v13 bytes], v15);
}

- (id)artworkFormat
{
  result = [(CoreThemeDocument *)self metadatumForKey:@"artworkFormat"];
  if (!result)
  {
    return CoreThemeArtworkFormatPNG;
  }

  return result;
}

- (void)setTargetPlatform:(int64_t)platform
{
  v4 = [objc_opt_class() persistentStringForPlatform:platform];
  targetPlatform = self->_targetPlatform;
  if (v4 != targetPlatform)
  {
    v6 = v4;

    self->_targetPlatform = [v6 copy];
  }

  [(CoreThemeDocument *)self _updateDeviceTraits];
}

- (void)_updateDeviceTraits
{
  if ([(CoreThemeDocument *)self targetPlatform]== 2)
  {
    if ([(NSString *)self->_minimumDeploymentVersion length])
    {
      targetPlatform = [(CoreThemeDocument *)self targetPlatform];
      if (!self->_deviceTraits)
      {
        v4 = targetPlatform;
        v5 = objc_alloc(MEMORY[0x277CCACA8]);
        v6 = MEMORY[0x277D027B0];
        v7 = [v5 initWithUTF8String:*(MEMORY[0x277D027B0] + 64)];
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*(v6 + 184)];
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*(v6 + 160)];
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v10 = [v9 initWithUTF8String:*(MEMORY[0x277D02780] + 16)];
        v11 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v11 setScale:2.0];
        [(TDDeviceTraits *)v11 setIdiom:v7];
        [(TDDeviceTraits *)v11 setSubtype:32401];
        [(TDDeviceTraits *)v11 setDisplayGamut:v10];
        [(TDDeviceTraits *)v11 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v11 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v11 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v11 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v11 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v11];

        v12 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v12 setScale:1.0];
        [(TDDeviceTraits *)v12 setIdiom:v7];
        [(TDDeviceTraits *)v12 setSubtype:32401];
        [(TDDeviceTraits *)v12 setDisplayGamut:v10];
        [(TDDeviceTraits *)v12 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v12 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v12 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v12 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v12 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v12];

        v13 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v13 setScale:1.0];
        [(TDDeviceTraits *)v13 setIdiom:v16];
        [(TDDeviceTraits *)v13 setSubtype:32401];
        [(TDDeviceTraits *)v13 setDisplayGamut:v10];
        [(TDDeviceTraits *)v13 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v13 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v13 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v13 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v13 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v13];

        v14 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v14 setScale:1.0];
        [(TDDeviceTraits *)v14 setIdiom:v8];
        [(TDDeviceTraits *)v14 setSubtype:32401];
        [(TDDeviceTraits *)v14 setDisplayGamut:v10];
        [(TDDeviceTraits *)v14 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v14 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v14 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v14 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v14 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v14];

        v15 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v15 setScale:2.0];
        [(TDDeviceTraits *)v15 setIdiom:v8];
        [(TDDeviceTraits *)v15 setSubtype:0];
        [(TDDeviceTraits *)v15 setDisplayGamut:v10];
        [(TDDeviceTraits *)v15 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v15 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v15 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v15 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v15 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v15];
      }
    }
  }
}

- (int64_t)targetPlatform
{
  targetPlatform = self->_targetPlatform;
  v4 = objc_opt_class();
  if (targetPlatform)
  {
    v5 = self->_targetPlatform;

    return [v4 platformForPersistentString:v5];
  }

  else
  {

    return [v4 defaultTargetPlatform];
  }
}

+ (int64_t)targetPlatformForMOC:(id)c
{
  persistentStoreCoordinator = [c persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  if ([persistentStores count])
  {
    v5 = [objc_msgSend(persistentStoreCoordinator metadataForPersistentStore:{objc_msgSend(persistentStores, "objectAtIndex:", 0)), "objectForKey:", @"targetPlatform"}];

    return [CoreThemeDocument platformForPersistentString:v5];
  }

  else
  {

    return +[CoreThemeDocument defaultTargetPlatform];
  }
}

- (BOOL)buildModelError:(id *)error
{
  v4 = [[TDThemeSchema alloc] initWithThemeDocument:self];
  if ([(TDPersistentDocument *)self fileURL])
  {
    [(TDThemeSchema *)v4 sanityCheckAndUpdateDocumentIfNecessary];
  }

  else
  {
    [(TDThemeSchema *)v4 resetThemeConstants];
  }

  return 1;
}

- (void)resetThemeConstants
{
  v2 = [[TDThemeSchema alloc] initWithThemeDocument:self];
  [(TDThemeSchema *)v2 resetThemeConstants];
}

- (void)primeArrayControllers
{
  [(CoreThemeDocument *)self renditionTypeWithIdentifier:0];
  [(CoreThemeDocument *)self drawingLayerWithIdentifier:0];
  [(CoreThemeDocument *)self valueWithIdentifier:0];
  [(CoreThemeDocument *)self stateWithIdentifier:0];
  [(CoreThemeDocument *)self directionWithIdentifier:0];
  [(CoreThemeDocument *)self sizeWithIdentifier:0];
  [(CoreThemeDocument *)self partWithIdentifier:0];
  [(CoreThemeDocument *)self elementWithIdentifier:1];

  [(CoreThemeDocument *)self schemaCategoryWithIdentifier:0];
}

+ (int64_t)dataModelVersion
{
  if (dataModelVersion_latestModelOnce != -1)
  {
    +[CoreThemeDocument dataModelVersion];
  }

  return dataModelVersion_latestModel;
}

uint64_t __37__CoreThemeDocument_dataModelVersion__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreThemeDefinition", "URLsForResourcesWithExtension:subdirectory:", @"mom", 0}];
  v4[0] = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"path" ascending:0];
  v1 = [objc_msgSend(v0 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)), "firstObject"}];
  result = [objc_msgSend(objc_msgSend(objc_msgSend(v1 "lastPathComponent")];
  dataModelVersion_latestModel = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)dataModelNameForVersion:(int64_t)version
{
  if (version < 1)
  {
    return @"CoreThemeDefinition";
  }

  version = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", version];

  return [@"CoreThemeDefinition" stringByAppendingString:version];
}

+ (BOOL)defaultAllowsExtendedRangePixelFormats
{
  v2 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v2)
  {
    return 1;
  }

  return [v2 BOOLValue];
}

- (BOOL)allowsExtendedRangePixelFormats
{
  v2 = [(CoreThemeDocument *)self metadatumForKey:@"CoreThemeDocumentAllowsExtendedRangeKey"];

  return [v2 BOOLValue];
}

- (unint64_t)colorSpaceID
{
  v2 = [(CoreThemeDocument *)self metadatumForKey:@"NSCoreThemeDefinitionColorSpaceKey"];

  return [v2 unsignedIntegerValue];
}

+ (int)shouldConvertColorsFromColorSpaceWithIdentifier:(unint64_t)identifier toIdentifier:(unint64_t)toIdentifier error:(id *)error
{
  if (identifier > toIdentifier)
  {
    +[CoreThemeDocument shouldConvertColorsFromColorSpaceWithIdentifier:toIdentifier:error:];
  }

  return 1;
}

- (CGColorSpace)createCGColorSpaceWithIdentifier:(unint64_t)identifier
{
  v3 = MEMORY[0x277CBF458];
  v4 = MEMORY[0x277CBF3E0];
  if (identifier != 3)
  {
    v4 = MEMORY[0x277CBF4B8];
  }

  if (identifier)
  {
    v3 = v4;
  }

  return CGColorSpaceCreateWithName(*v3);
}

- (void)convertColorsFromColorSpaceWithIdentifier:(unint64_t)identifier toIdentifier:(unint64_t)toIdentifier
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = [(CoreThemeDocument *)self createCGColorSpaceWithIdentifier:identifier];
  toIdentifierCopy = toIdentifier;
  v7 = [(CoreThemeDocument *)self createCGColorSpaceWithIdentifier:toIdentifier];
  selfCopy = self;
  v8 = [(CoreThemeDocument *)self allObjectsForEntity:@"ColorDefinition" withSortDescriptors:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    v28 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [objc_msgSend(v13 valueForKey:{@"physicalColor", "unsignedIntValue"}];
        v15 = vdup_n_s32(v14);
        v16 = vand_s8(vshl_u32(v15, 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v17.i64[0] = v16.u32[0];
        v17.i64[1] = v16.u32[1];
        v18 = vshr_n_u32(v15, 0x18uLL).u32[1];
        v19 = vdivq_f64(vcvtq_f64_u64(v17), v28);
        v17.i64[0] = v14;
        v17.i64[1] = v18;
        *components = v19;
        v34 = vdivq_f64(vcvtq_f64_u64(v17), v28);
        v20 = CGColorCreate(v6, components);
        CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v7, kCGRenderingIntentDefault, v20, 0);
        v22 = CGColorGetComponents(CopyByMatchingToColorSpace);
        v23 = vmovn_s64(vcvtq_u64_f64(vrndxq_f64(vmulq_f64(v22[1], v28))));
        v24 = vand_s8(vshl_u32(vmovn_s64(vcvtq_u64_f64(vrndxq_f64(vmulq_f64(*v22, v28)))), 0x800000010), 0xFF0000FF0000);
        [v13 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", v24.i32[1] | v23.u8[0] | (v23.i32[1] << 24) | v24.i32[0]), @"physicalColor"}];
        CGColorRelease(v20);
        CGColorRelease(CopyByMatchingToColorSpace);
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v10);
  }

  CGColorSpaceRelease(v6);
  CGColorSpaceRelease(v7);
  -[CoreThemeDocument setMetadatum:forKey:](selfCopy, "setMetadatum:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:toIdentifierCopy], @"NSCoreThemeDefinitionColorSpaceKey");
  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canremoveKeyAttribte:(unsigned __int16)attribte
{
  if (attribte == 12)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v4 == 9)
    {
      break;
    }

    v6 = dword_247A49384[++v4];
  }

  while (v6 != attribte);
  return v5 > 8;
}

- (void)_updateKeyFormatWithContext:(id)context
{
  v26 = 0;
  v4 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:withContext:error:](self objectsForEntity:@"RenditionKeySpec" withPredicate:0 sortDescriptors:0) withContext:"count" error:?];
  v25 = [MEMORY[0x277CBE408] entityForName:@"RenditionKeySpec" inManagedObjectContext:{-[TDPersistentDocument managedObjectContext](self, "managedObjectContext")}];
  v5 = [&unk_2859AC530 count];
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [&unk_2859AC530 objectAtIndex:v6];
      v8 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"RenditionKeySpec", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.identifier == 0", v7], 0);
      v9 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"RenditionKeySpec", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == NULL", v7], 0);
      v26 = 0;
      v10 = [v8 count];
      if ([v9 count] + v10 == v4 && -[CoreThemeDocument _canremoveKeyAttribte:](self, "_canremoveKeyAttribte:", LOWORD(dword_247A493AC[v6])))
      {
        keyFormat = self->_keyFormat;
        v12 = word_247A493C0[2 * v6];
        CUIRenditionKeyFormatRemoveAttribute();
      }

      ++v6;
    }

    while (v5 != v6);
  }

  v13 = [&unk_2859AC548 count];
  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RenditionKeySpec"];
      v16 = [&unk_2859AC548 objectAtIndex:v14];
      v17 = [objc_msgSend(v25 "attributesByName")];
      v18 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v16];
      v19 = [MEMORY[0x277CCA9C0] expressionForFunction:@"count:" arguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v18)}];
      v20 = objc_alloc_init(MEMORY[0x277CBE410]);
      [v20 setName:@"count"];
      [v20 setExpression:v19];
      [v20 setExpressionResultType:200];
      [v15 setPropertiesToFetch:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v17, v20, 0)}];
      [v15 setPropertiesToGroupBy:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v17)}];
      [v15 setResultType:2];

      v26 = 0;
      v21 = [context executeFetchRequest:v15 error:&v26];
      if ([v21 count] == 1 && !objc_msgSend(objc_msgSend(objc_msgSend(v21, "firstObject"), "objectForKey:", v16), "integerValue"))
      {
        v22 = dword_247A493AC[v14];
        if ([(CoreThemeDocument *)self _canremoveKeyAttribte:dword_247A493AC[v14]])
        {
          v23 = self->_keyFormat;
          CUIRenditionKeyFormatRemoveAttribute();
        }
      }

      ++v14;
    }

    while (v13 != v14);
  }
}

- (const)untrimmedRenditionKeyFormat
{
  renditionKeySemantics = [(CoreThemeDocument *)self renditionKeySemantics];

  return MEMORY[0x2821574E0](renditionKeySemantics, 17);
}

- (const)renditionKeyFormat
{
  result = self->_keyFormat;
  if (!result)
  {
    untrimmedRenditionKeyFormat = [(CoreThemeDocument *)self untrimmedRenditionKeyFormat];
    v5 = malloc_type_malloc(4 * untrimmedRenditionKeyFormat->var2 + 12, 0x100004052888210uLL);
    self->_keyFormat = v5;
    v5->var0 = untrimmedRenditionKeyFormat->var0;
    v5->var1 = untrimmedRenditionKeyFormat->var1;
    var2 = untrimmedRenditionKeyFormat->var2;
    v5->var2 = var2;
    if (var2)
    {
      for (i = 0; i < var2; ++i)
      {
        v5->var3[i] = untrimmedRenditionKeyFormat->var3[i];
      }
    }

    v8 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__CoreThemeDocument_renditionKeyFormat__block_invoke;
    v9[3] = &unk_278EBB368;
    v9[4] = self;
    v9[5] = v8;
    [v8 performBlockAndWait:v9];
    return self->_keyFormat;
  }

  return result;
}

- (int)renditionKeySemantics
{
  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  if ((targetPlatform - 1) > 4)
  {
    return 1;
  }

  else
  {
    return dword_247A49410[targetPlatform - 1];
  }
}

- (id)_customizedSchemaDefinitionsForEntity:(id)entity
{
  v8 = 0;
  v4 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:error:](self, "objectsForEntity:withPredicate:sortDescriptors:error:", entity, [MEMORY[0x277CCAC30] predicateWithValue:1], 0, &v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CoreThemeDocument__customizedSchemaDefinitionsForEntity___block_invoke;
  v7[3] = &unk_278EBB390;
  v7[4] = self;
  v5 = [v4 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", v7)}];
  return [MEMORY[0x277CBEB98] setWithArray:v5];
}

- (BOOL)customizationExistsForSchemaDefinition:(id)definition
{
  v15 = *MEMORY[0x277D85DE8];
  parts = [definition parts];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [parts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(parts);
        }

        if ([objc_msgSend(*(*(&v10 + 1) + 8 * v7) "productions")])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [parts countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)customizeSchemaEffectDefinition:(id)definition shouldReplaceExisting:(BOOL)existing error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  parts = [definition parts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [parts countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(parts);
        }

        if (![(CoreThemeDocument *)self createEffectStyleProductionForPartDefinition:*(*(&v17 + 1) + 8 * v12)])
        {
          if (error)
          {
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create production for effect definition: %@", objc_msgSend(definition, "name")];
            v15 = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v14, *MEMORY[0x277CCA450], 0)}];
            result = 0;
            *error = v15;
          }

          else
          {
            result = 0;
          }

          goto LABEL_13;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [parts countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)schemaDefinitionWithElementID:(int64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(CoreThemeDocument *)self allObjectsForEntity:@"SchemaPartDefinition" withSortDescriptors:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 elementID] == d && objc_msgSend(objc_msgSend(v9, "element"), "published"))
        {
          result = [v9 element];
          goto LABEL_12;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)schemaPartDefinitionWithElementID:(int64_t)d partID:(int64_t)iD
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [(CoreThemeDocument *)self allObjectsForEntity:@"SchemaPartDefinition" withSortDescriptors:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if ([v11 elementID] == d && objc_msgSend(v11, "partID") == iD && (objc_msgSend(objc_msgSend(v11, "element"), "published") & 1) != 0)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)namedArtworkProductions
{
  v2 = [(CoreThemeDocument *)self allObjectsForEntity:@"NamedArtworkProduction" withSortDescriptors:0];
  v3 = MEMORY[0x277CBEB98];

  return [v3 setWithArray:v2];
}

- (id)namedEffectProductions
{
  v2 = [(CoreThemeDocument *)self allObjectsForEntity:@"NamedEffectProduction" withSortDescriptors:0];
  v3 = MEMORY[0x277CBEB98];

  return [v3 setWithArray:v2];
}

- (void)exportCursorsToURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  obj = [(CoreThemeDocument *)self allObjectsForEntity:@"CursorFacetDefinition" withSortDescriptors:0];
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(obj, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(v7, "valueForKey:", @"facetName", @"facetName", objc_msgSend(v7, "valueForKey:", @"hotSpotX", @"hotSpotX", objc_msgSend(v7, "valueForKey:", @"hotSpotY", @"hotSpotY", 0}];
        [v12 setObject:v8 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(v7, "keySpec"), "dimension1"))}];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v13 = 0;
  [objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:100 options:200 error:{&v13), "writeToURL:atomically:", l, 1}];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)importCursorsFromURL:(id)l getUnusedImportedCursors:(id *)cursors getUnupdatedCursors:(id *)unupdatedCursors
{
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l];
  v26 = 0;
  v27 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:&v26 error:&v27];
  v8 = [(CoreThemeDocument *)self allObjectsForEntity:@"CursorFacetDefinition" withSortDescriptors:0];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  objectEnumerator = [v8 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [v9 setObject:nextObject2 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(nextObject2, "keySpec"), "dimension1"))}];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  keyEnumerator = [v7 keyEnumerator];
  nextObject3 = [keyEnumerator nextObject];
  if (nextObject3)
  {
    nextObject4 = nextObject3;
    do
    {
      v17 = [v7 objectForKey:nextObject4];
      v18 = [v9 objectForKey:nextObject4];
      if (v18)
      {
        v19 = v18;
        [v18 setValue:objc_msgSend(v17 forKey:{"objectForKey:", @"facetName", @"facetName"}];
        [v19 setValue:objc_msgSend(v17 forKey:{"objectForKey:", @"hotSpotX", @"hotSpotX"}];
        [v19 setValue:objc_msgSend(v17 forKey:{"objectForKey:", @"hotSpotY", @"hotSpotY"}];
      }

      else
      {
        [dictionary setObject:v17 forKey:nextObject4];
      }

      nextObject4 = [keyEnumerator nextObject];
    }

    while (nextObject4);
  }

  if (cursors)
  {
    *cursors = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  }

  if (unupdatedCursors)
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    keyEnumerator2 = [v9 keyEnumerator];
    nextObject5 = [keyEnumerator2 nextObject];
    if (nextObject5)
    {
      nextObject6 = nextObject5;
      do
      {
        if (![v7 objectForKey:nextObject6])
        {
          [v20 addObject:{objc_msgSend(v9, "objectForKey:", nextObject6)}];
        }

        nextObject6 = [keyEnumerator2 nextObject];
      }

      while (nextObject6);
    }

    *unupdatedCursors = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  }
}

- (TDCatalogGlobals)catalogGlobals
{
  catalogGlobals = self->_catalogGlobals;
  if (!catalogGlobals)
  {
    v9 = 0;
    v4 = [(CoreThemeDocument *)self allObjectsForEntity:@"CatalogGlobals" withSortDescriptors:0 error:&v9];
    v5 = [v4 count];
    if (v9)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 == 0;
    }

    if (v6)
    {
      firstObject = [(CoreThemeDocument *)self newObjectForEntity:@"CatalogGlobals"];
    }

    else
    {
      if (v5 >= 2)
      {
        [CoreThemeDocument catalogGlobals];
      }

      firstObject = [v4 firstObject];
    }

    catalogGlobals = firstObject;
    [(CoreThemeDocument *)self willChangeValueForKey:@"catalogGlobals"];
    self->_catalogGlobals = catalogGlobals;
    [(CoreThemeDocument *)self didChangeValueForKey:@"catalogGlobals"];
  }

  return catalogGlobals;
}

- (id)persistentStoreTypeForFileType:(id)type
{
  lowercaseString = [type lowercaseString];
  if (([lowercaseString isEqualToString:CoreThemeDocumentFileType] & 1) == 0 && (objc_msgSend(objc_msgSend(type, "lowercaseString"), "isEqualToString:", @"tdd") & 1) == 0)
  {
    [CoreThemeDocument persistentStoreTypeForFileType:];
  }

  return *MEMORY[0x277CBE2E8];
}

- (id)updatedVersionsMetadataFromMetadata:(id)metadata
{
  v5 = CUIThemeInfoVersion();
  v6 = +[CoreThemeDocument dataModelVersion];
  v7 = [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self, "targetPlatform")), "schemaVersion"}];
  v8 = [metadata objectForKey:@"uuid"];
  v9 = [objc_msgSend(metadata objectForKey:{@"CoreThemeInfoVersion", "integerValue"}];
  v10 = [objc_msgSend(metadata objectForKey:{@"CoreThemeDefinitionDataModelKey", "integerValue"}];
  v11 = [objc_msgSend(metadata objectForKey:{@"CoreThemeSchemaVersion", "integerValue"}];
  v12 = [objc_msgSend(metadata objectForKey:{@"targetPlatform", "isEqualToString:", self->_targetPlatform}];
  if (v8 && v9 == v5 && v10 == v6 && v11 == v7 && v12)
  {
    return 0;
  }

  if (metadata)
  {
    v14 = [metadata mutableCopy];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  }

  v15 = v14;
  [v14 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v5), @"CoreThemeInfoVersion"}];
  [v15 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v6), @"CoreThemeDefinitionDataModelKey"}];
  [v15 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v7), @"CoreThemeSchemaVersion"}];
  targetPlatform = self->_targetPlatform;
  if (targetPlatform)
  {
    [v15 setObject:targetPlatform forKey:@"targetPlatform"];
  }

  if (!v8)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCAD78]);
    [v15 setObject:objc_msgSend(v17 forKey:{"UUIDString"), @"uuid"}];
  }

  return v15;
}

- (BOOL)configurePersistentStoreCoordinatorForURL:(id)l ofType:(id)type modelConfiguration:(id)configuration storeOptions:(id)options error:(id *)error
{
  v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277CBE1D8]];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277CBE178]];
  v21.receiver = self;
  v21.super_class = CoreThemeDocument;
  v15 = [(TDPersistentDocument *)&v21 configurePersistentStoreCoordinatorForURL:l ofType:type modelConfiguration:configuration storeOptions:v12 error:error];
  v16 = [objc_msgSend(objc_msgSend(-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
  metadata = [v16 metadata];
  v18 = metadata;
  if (self->_updateVersionMetadataState == 1 || ![metadata objectForKey:@"uuid"])
  {
    v19 = [(CoreThemeDocument *)self updatedVersionsMetadataFromMetadata:v18];
    if (v19)
    {
      [v16 setMetadata:v19];
    }

    self->_updateVersionMetadataState = 2;
  }

  return v15;
}

- (BOOL)checkCompatibilityOfDocumentAtURL:(id)l ofType:(id)type error:(id *)error
{
  v7 = [(CoreThemeDocument *)self persistentStoreTypeForFileType:type];
  v8 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:v7 URL:l options:0 error:error];
  if (!v8)
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = CoreThemeDefinitionErrorDomain[0];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Theme definition document is not compatible with this software", *MEMORY[0x277CCA470], @"Unrecognized format, missing document metadata", *MEMORY[0x277CCA498], 0}];
LABEL_10:
      v16 = v13;
      v17 = v11;
      v18 = v12;
      v19 = 1;
LABEL_11:
      v20 = [v17 errorWithDomain:v18 code:v19 userInfo:v16];
      result = 0;
      *error = v20;
      return result;
    }

    return 0;
  }

  v9 = [v8 objectForKey:@"CoreThemeDefinitionDataModelKey"];
  if (v9)
  {
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v14 = +[CoreThemeDocument dataModelVersion];
  if (v14 < integerValue)
  {
    if (error)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"The theme definition document / UI catalog is too new for this code. You are trying to open a document that is version %ld and this code can only handle up to version %ld", integerValue, v14];
      v11 = MEMORY[0x277CCA9B8];
      v12 = CoreThemeDefinitionErrorDomain[0];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v15, *MEMORY[0x277CCA470], @"Update your CoreThemeDefinition framework and try again.", *MEMORY[0x277CCA498], 0}];
      goto LABEL_10;
    }

    return 0;
  }

  if (integerValue <= 22)
  {
    if (error)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = CoreThemeDefinitionErrorDomain[0];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Theme definition document format is in an older format (<23).", *MEMORY[0x277CCA470], @"You need to migrate the document to open it.", *MEMORY[0x277CCA498], 0}];
      v17 = v22;
      v18 = v23;
      v19 = 101;
      goto LABEL_11;
    }

    return 0;
  }

  return 1;
}

- (BOOL)readFromURL:(id)l ofType:(id)type error:(id *)error
{
  v9 = [l checkResourceIsReachableAndReturnError:error];
  if (v9)
  {
    v9 = [(CoreThemeDocument *)self checkCompatibilityOfDocumentAtURL:l ofType:type error:error];
    if (v9)
    {
      v15.receiver = self;
      v15.super_class = CoreThemeDocument;
      v9 = [(TDPersistentDocument *)&v15 readFromURL:l ofType:type error:error];
      if (v9)
      {
        colorSpaceID = [(CoreThemeDocument *)self colorSpaceID];
        v11 = +[CoreThemeDocument standardColorSpaceID];
        if (v11 > colorSpaceID)
        {
          v12 = v11;
          v9 = [objc_opt_class() shouldConvertColorsFromColorSpaceWithIdentifier:colorSpaceID toIdentifier:v11 error:error];
          if (!v9)
          {
            return v9;
          }

          [(CoreThemeDocument *)self convertColorsFromColorSpaceWithIdentifier:colorSpaceID toIdentifier:v12];
          [objc_opt_class() doneWithColorConversion];
        }

        v13 = [-[CoreThemeDocument metadatumForKey:](self metadatumForKey:{@"targetPlatform", "copy"}];
        self->_targetPlatform = v13;
        if (!v13)
        {
          -[CoreThemeDocument setTargetPlatform:](self, "setTargetPlatform:", [objc_opt_class() defaultTargetPlatform]);
        }

        LOBYTE(v9) = 1;
      }
    }
  }

  return v9;
}

- (void)_configureAfterFirstSave
{
  -[CoreThemeDocument setMetadatum:forKey:](self, "setMetadatum:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:{+[CoreThemeDocument standardColorSpaceID](CoreThemeDocument, "standardColorSpaceID")}], @"NSCoreThemeDefinitionColorSpaceKey");
  v3 = [(CoreThemeDocument *)self metadatumForKey:@"artworkFormat"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = CoreThemeArtworkFormatPNG;
  }

  [(CoreThemeDocument *)self setArtworkFormat:v4];
  [(CoreThemeDocument *)self setAllowsExtendedRangePixelFormats:+[CoreThemeDocument defaultAllowsExtendedRangePixelFormats]];
  [(CoreThemeDocument *)self setRelativePathToProductionData:@"./"];
  -[CoreThemeDocument addThemeBitSourceAtPath:createProductions:](self, "addThemeBitSourceAtPath:createProductions:", [objc_opt_class() defaultThemeBitSourceURLForDocumentURL:{-[TDPersistentDocument fileURL](self, "fileURL")}], 0);

  [(CoreThemeDocument *)self _synchronousSave];
}

+ (id)defaultThemeBitSourceURLForDocumentURL:(id)l
{
  v4 = [objc_msgSend(objc_msgSend(l "path")];
  if ([(__CFString *)v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Aqua";
  }

  v6 = [(__CFString *)v5 stringByAppendingString:@"-Artwork"];
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];

  return [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v6];
}

- (NSURL)themeBitSourceURL
{
  v7 = 0;
  v3 = [-[CoreThemeDocument _themeBitSource:](self _themeBitSource:{&v7), "path"}];
  v4 = [objc_opt_class() defaultThemeBitSourceURLForDocumentURL:{-[TDPersistentDocument fileURL](self, "fileURL")}];
  v5 = v4;
  if (v3 && ![(NSString *)[(NSURL *)v4 lastPathComponent] isEqualToString:v3])
  {
    return [[(NSURL *)v5 URLByDeletingLastPathComponent] URLByAppendingPathComponent:v3];
  }

  return v5;
}

- (id)themeBitSourceFolderName
{
  v2 = [-[CoreThemeDocument _themeBitSource:](self _themeBitSource:{0), "path"}];

  return [v2 lastPathComponent];
}

- (BOOL)renameThemeBitSourceFolderTo:(id)to error:(id *)error
{
  v7 = [to isEqualToString:{-[CoreThemeDocument themeBitSourceFolderName](self, "themeBitSourceFolderName")}];
  LOBYTE(v8) = 1;
  if (to)
  {
    if ((v7 & 1) == 0)
    {
      themeBitSourceURL = [(CoreThemeDocument *)self themeBitSourceURL];
      v10 = [[(NSURL *)themeBitSourceURL URLByDeletingLastPathComponent] URLByAppendingPathComponent:to];
      if (-[NSURL checkResourceIsReachableAndReturnError:](v10, "checkResourceIsReachableAndReturnError:", 0) || (v8 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")]) != 0)
      {
        [-[CoreThemeDocument _themeBitSource:](self _themeBitSource:{0), "setPath:", to}];
        LOBYTE(v8) = 1;
      }
    }
  }

  return v8;
}

- (void)addThemeBitSourceAtPath:(id)path createProductions:(BOOL)productions
{
  lastPathComponent = [path lastPathComponent];
  v6 = -[TDThemeBitSource initWithEntity:insertIntoManagedObjectContext:]([TDThemeBitSource alloc], "initWithEntity:insertIntoManagedObjectContext:", [objc_msgSend(-[CoreThemeDocument managedObjectModel](self "managedObjectModel")], -[TDPersistentDocument managedObjectContext](self, "managedObjectContext"));
  [(TDThemeBitSource *)v6 setPath:lastPathComponent];
}

- (void)_removeRedundantPDFBasedRenditionsForAssets:(id)assets
{
  v17 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_isKindOfClass())
        {
          [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(v10, "renditions"), "allObjects")}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(CoreThemeDocument *)self _removeRedundantPDFBasedRenditions:v5];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_removeRedundantPDFBasedRenditions:(id)renditions
{
  v84 = *MEMORY[0x277D85DE8];
  v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v5 = [renditions countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v75;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v75 != v7)
        {
          objc_enumerationMutation(renditions);
        }

        keySpec = [*(*(&v74 + 1) + 8 * i) keySpec];
        v10 = [keySpec key];
        v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v10 length:4 * CUIRenditionKeyTokenCount()];
        if ([v48 containsObject:v11])
        {
          v12 = [-[CoreThemeDocument renditionsMatchingRenditionKeySpec:](self renditionsMatchingRenditionKeySpec:{keySpec), "sortedArrayUsingComparator:", &__block_literal_global_1215}];
          v13 = obj;
        }

        else
        {
          v13 = v48;
          v12 = v11;
        }

        [v13 addObject:v12];
      }

      v6 = [renditions countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v6);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v49 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v49)
  {
    v47 = *v71;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v71 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v70 + 1) + 8 * j);
        v16 = [v15 count];
        v51 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v53 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v52 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v17 = objc_alloc_init(MEMORY[0x277CCAB58]);
        if (v16)
        {
          for (k = 0; k != v16; ++k)
          {
            v19 = [v15 objectAtIndex:k];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_msgSend(v19 "keySpec")] != 59)
            {
              asset = [v19 asset];
              if (![objc_msgSend(objc_msgSend(asset "name")] || !objc_msgSend(objc_msgSend(objc_msgSend(asset, "name"), "pathExtension"), "caseInsensitiveCompare:", @"SVG"))
              {
                [v53 addIndex:k];
              }

              if (![objc_msgSend(objc_msgSend(asset "name")])
              {
                [v51 addIndex:k];
              }

              fileScaleFactor = [asset fileScaleFactor];
              if (fileScaleFactor == [objc_msgSend(v19 "keySpec")])
              {
                [v17 addIndex:k];
              }
            }
          }

          for (m = 0; m != v16; ++m)
          {
            v23 = [v15 objectAtIndex:m];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              asset2 = [v23 asset];
              if ([objc_msgSend(v23 "keySpec")])
              {
                fileScaleFactor2 = [asset2 fileScaleFactor];
                if (fileScaleFactor2 != [objc_msgSend(v23 "keySpec")] && (!objc_msgSend(asset2, "fileScaleFactor") || HIDWORD(div(objc_msgSend(objc_msgSend(v23, "keySpec"), "scaleFactor"), objc_msgSend(asset2, "fileScaleFactor")).quot) || objc_msgSend(v17, "count")))
                {
                  [v52 addIndex:m];
                }
              }
            }
          }
        }

        if ([v51 count] && objc_msgSend(v53, "count"))
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v26 = [v15 objectsAtIndexes:v53];
          v27 = [v26 countByEnumeratingWithState:&v66 objects:v81 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v67;
            do
            {
              for (n = 0; n != v28; ++n)
              {
                if (*v67 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                -[CoreThemeDocument _delete:withRendition:](self, "_delete:withRendition:", [*(*(&v66 + 1) + 8 * n) asset], *(*(&v66 + 1) + 8 * n));
              }

              v28 = [v26 countByEnumeratingWithState:&v66 objects:v81 count:16];
            }

            while (v28);
          }
        }

        else if ([v17 count] && objc_msgSend(v52, "count"))
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v31 = [v15 objectsAtIndexes:v52];
          v32 = [v31 countByEnumeratingWithState:&v62 objects:v80 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v63;
            do
            {
              for (ii = 0; ii != v33; ++ii)
              {
                if (*v63 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                -[CoreThemeDocument _delete:withRendition:](self, "_delete:withRendition:", [*(*(&v62 + 1) + 8 * ii) asset], *(*(&v62 + 1) + 8 * ii));
              }

              v33 = [v31 countByEnumeratingWithState:&v62 objects:v80 count:16];
            }

            while (v33);
          }
        }

        else if ([v52 count] == v16 - 1)
        {
          v60 = 0uLL;
          v61 = 0uLL;
          v58 = 0uLL;
          v59 = 0uLL;
          v36 = [v15 objectsAtIndexes:v52];
          v37 = [v36 countByEnumeratingWithState:&v58 objects:v79 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v59;
            do
            {
              for (jj = 0; jj != v38; ++jj)
              {
                if (*v59 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                -[CoreThemeDocument _delete:withRendition:](self, "_delete:withRendition:", [*(*(&v58 + 1) + 8 * jj) asset], *(*(&v58 + 1) + 8 * jj));
              }

              v38 = [v36 countByEnumeratingWithState:&v58 objects:v79 count:16];
            }

            while (v38);
          }
        }

        else
        {
          v56 = 0uLL;
          v57 = 0uLL;
          v54 = 0uLL;
          v55 = 0uLL;
          v41 = [v15 subarrayWithRange:1];
          v42 = [v41 countByEnumeratingWithState:&v54 objects:v78 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v55;
            do
            {
              for (kk = 0; kk != v43; ++kk)
              {
                if (*v55 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                -[CoreThemeDocument _delete:withRendition:](self, "_delete:withRendition:", [*(*(&v54 + 1) + 8 * kk) asset], *(*(&v54 + 1) + 8 * kk));
              }

              v43 = [v41 countByEnumeratingWithState:&v54 objects:v78 count:16];
            }

            while (v43);
          }
        }
      }

      v49 = [obj countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v49);
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __56__CoreThemeDocument__removeRedundantPDFBasedRenditions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [objc_msgSend(a2 "asset")];
  if (v4 > [objc_msgSend(a3 "asset")])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (void)_delete:(id)_delete withRendition:(id)rendition
{
  production = [rendition production];
  [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  renditions = [production renditions];
  if ([renditions count] == 1 && objc_msgSend(renditions, "containsObject:", rendition))
  {
    [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  }

  renditions2 = [_delete renditions];
  if ([renditions2 count] == 1 && objc_msgSend(renditions2, "containsObject:", rendition))
  {
    managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];

    [managedObjectContext deleteObject:_delete];
  }
}

- (void)_insertRendition:(id)rendition forKey:(id)key
{
  packableRenditions = self->_packableRenditions;
  objc_sync_enter(packableRenditions);
  v8 = [(NSMutableDictionary *)self->_packableRenditions objectForKey:key];
  v9 = v8;
  if (v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v15 = __45__CoreThemeDocument__insertRendition_forKey___block_invoke;
    v16 = &unk_278EBB338;
    selfCopy = self;
    v10 = 0;
    v11 = [v8 count];
    if (v11)
    {
      do
      {
        v12 = [v9 objectAtIndex:(v11 + v10) >> 1];
        if (v15(v14, v12, rendition) >= 0)
        {
          v11 = (v11 + v10) >> 1;
        }

        else
        {
          v10 = ((v11 + v10) >> 1) + 1;
        }
      }

      while (v10 < v11);
    }

    [v9 insertObject:rendition atIndex:v10];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(NSMutableDictionary *)self->_packableRenditions setObject:v13 forKey:key];

    [v13 addObject:rendition];
  }

  objc_sync_exit(packableRenditions);
}

uint64_t __45__CoreThemeDocument__insertRendition_forKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 width];
  v7 = [a2 height] * v6;
  v8 = [a3 width];
  v9 = [a3 height] * v8;
  if (v7 > v9)
  {
    return -1;
  }

  if (v7 < v9)
  {
    return 1;
  }

  v11 = [a2 keySpec];
  v12 = [a3 keySpec];
  v13 = [v11 key];
  v14 = [v12 key];
  v15 = [*(a1 + 32) untrimmedRenditionKeyFormat];

  return MEMORY[0x282157470](v13, v14, v15);
}

- (BOOL)_updateRenditionPackings:(id)packings error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  if (!self->_packableRenditions)
  {
    self->_packableRenditions = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  errorCopy = error;
  [(CoreThemeDocument *)self untrimmedRenditionKeyFormat];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!CUIRenditionKeyHasIdentifier())
  {
    [CoreThemeDocument _updateRenditionPackings:error:];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v7 = [packings countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v7)
  {
    v8 = v7;
    v50 = 0;
    v9 = *v69;
    v10 = &selRef__persistentStoreCoordinator;
    v11 = 0x27EE5A000uLL;
    v55 = *v69;
    while (2)
    {
      v12 = 0;
      v56 = v10[243];
      v57 = v8;
      do
      {
        if (*v69 != v9)
        {
          objc_enumerationMutation(packings);
        }

        v13 = *(*(&v68 + 1) + 8 * v12);
        v14 = [objc_msgSend(*(&self->super.super.isa + *(v11 + 2204)) objectForKey:{objc_msgSend(objc_msgSend(objc_msgSend(v13, "production"), "name"), "identifier")), "intValue"}];
        v15 = objc_autoreleasePoolPush();
        if (v14)
        {
          [v13 setAlphaCrop:1];
        }

        if (([v13 updatePackingPropertiesWithDocument:self] & 1) == 0)
        {
          if (errorCopy)
          {
            v44 = MEMORY[0x277CCA9B8];
            v45 = *MEMORY[0x277CCA050];
            v46 = MEMORY[0x277CBEAC0];
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to generate packing info for %@", objc_msgSend(objc_msgSend(v13, "production"), "relativePath")];
            *errorCopy = [v44 errorWithDomain:v45 code:0 userInfo:{objc_msgSend(v46, "dictionaryWithObject:forKey:", v47, *MEMORY[0x277CCA450])}];
          }

          objc_autoreleasePoolPop(v15);
          result = 0;
          goto LABEL_35;
        }

        if ([v13 canBePackedWithDocument:self])
        {
          v66 = v15;
          v65 = [objc_msgSend(v13 "keySpec")];
          opaque = [v13 opaque];
          monochrome = [v13 monochrome];
          v64 = [objc_msgSend(objc_msgSend(v13 "keySpec")];
          v63 = [objc_msgSend(objc_msgSend(v13 "keySpec")];
          v62 = [objc_msgSend(objc_msgSend(v13 "keySpec")];
          v61 = [objc_msgSend(objc_msgSend(v13 "keySpec")];
          preserveForArchiveOnly = [v13 preserveForArchiveOnly];
          if (objc_opt_respondsToSelector())
          {
            v18 = [objc_msgSend(v13 "compressionType")];
            if (v18 == 2)
            {
              v19 = 0;
            }

            else
            {
              v19 = v18;
            }

            v59 = v19;
          }

          else
          {
            v59 = 0;
          }

          v20 = v14 == 0;
          v21 = v20 & monochrome;
          v22 = v20 & opaque;
          renditionKeySemantics = [(CoreThemeDocument *)self renditionKeySemantics];
          keySpec = [v13 keySpec];
          if (renditionKeySemantics == 1)
          {
            presentationState = [keySpec presentationState];
            v26 = [objc_msgSend(v13 "keySpec")];
            v27 = [MEMORY[0x277CCAB68] stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", v65, v22, v21, objc_msgSend(presentationState, "identifier"), objc_msgSend(v26, "identifier"), 0, 0, v14, 0, 0, v64, v59, v63, v62, v61, preserveForArchiveOnly];
          }

          else
          {
            subtype = [keySpec subtype];
            v28 = [objc_msgSend(v13 "keySpec")];
            v29 = [objc_msgSend(v13 "keySpec")];
            v53 = v22;
            v30 = [objc_msgSend(v13 "keySpec")];
            v52 = v21;
            v31 = [objc_msgSend(v13 "keySpec")];
            v32 = v6;
            v33 = [objc_msgSend(v13 "keySpec")];
            v51 = MEMORY[0x277CCAB68];
            identifier = [v28 identifier];
            identifier2 = [v29 identifier];
            identifier3 = [v30 identifier];
            v37 = v33;
            v6 = v32;
            v27 = [v51 stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", v65, v53, v52, subtype, identifier, identifier2, identifier3, v14, v31, objc_msgSend(v37, "identifier"), v64, v59, v63, v62, v61, preserveForArchiveOnly];
          }

          v38 = v27;
          v39 = [objc_msgSend(v13 "production")];
          v11 = 0x27EE5A000;
          v15 = v66;
          if ([v39 count])
          {
            v40 = objc_alloc_init(MEMORY[0x277CCAB68]);
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __52__CoreThemeDocument__updateRenditionPackings_error___block_invoke;
            v67[3] = &unk_278EBAF50;
            v67[4] = v40;
            [v39 enumerateObjectsUsingBlock:v67];
            v41 = [v6 objectForKey:v40];
            if (v41)
            {
              v42 = v41;
            }

            else
            {
              v42 = [MEMORY[0x277CCABB0] numberWithInt:v50];
              [v6 setObject:v42 forKey:v40];
              ++v50;
            }

            [v38 appendFormat:@".tag%d", objc_msgSend(v42, "intValue")];
          }

          [(CoreThemeDocument *)self _insertRendition:v13 forKey:v38];
          v9 = v55;
          v8 = v57;
        }

        objc_autoreleasePoolPop(v15);
        ++v12;
      }

      while (v8 != v12);
      v8 = [packings countByEnumeratingWithState:&v68 objects:v72 count:16];
      v10 = &selRef__persistentStoreCoordinator;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_35:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

void __52__CoreThemeDocument__updateRenditionPackings_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "identifier")];
  [v3 replaceOccurrencesOfString:@"|" withString:@"||" options:2 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"." withString:@"|" options:2 range:{0, objc_msgSend(v3, "length")}];
  [*(a1 + 32) appendString:v3];
}

- (void)_groupPackableRenditions
{
  v181 = *MEMORY[0x277D85DE8];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  featureSetClasses = [(CoreThemeDocument *)self featureSetClasses];
  idioms = [(CoreThemeDocument *)self idioms];
  v179[0] = [(CoreThemeDocument *)self sizeWithIdentifier:0];
  v179[1] = [(CoreThemeDocument *)self sizeWithIdentifier:1];
  v179[2] = [(CoreThemeDocument *)self sizeWithIdentifier:2];
  v179[3] = [(CoreThemeDocument *)self sizeWithIdentifier:3];
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:4];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  v178[0] = [(CoreThemeDocument *)self presentationStateWithIdentifier:0];
  v178[1] = [(CoreThemeDocument *)self presentationStateWithIdentifier:1];
  v178[2] = [(CoreThemeDocument *)self presentationStateWithIdentifier:2];
  v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:3];
  compressionTypes = [(CoreThemeDocument *)self compressionTypes];
  deploymentTargets = [(CoreThemeDocument *)self deploymentTargets];
  v130 = [(CoreThemeDocument *)self partWithIdentifier:181];
  v129 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1004];
  v134 = [(CoreThemeDocument *)self elementWithIdentifier:9];
  v119 = [(CoreThemeDocument *)self partWithIdentifier:127];
  v149 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v148 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v151 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  obj = [-[NSMutableDictionary allKeys](self->_packableRenditions "allKeys")];
  selfCopy = self;
  v143 = [obj countByEnumeratingWithState:&v167 objects:v177 count:16];
  if (v143)
  {
    v141 = *v168;
    do
    {
      v3 = 0;
      do
      {
        if (*v168 != v141)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v167 + 1) + 8 * v3);
        v5 = [v4 componentsSeparatedByString:@"."];
        v154 = v4;
        v6 = [(NSMutableDictionary *)selfCopy->_packableRenditions objectForKey:v4];
        v7 = [v6 count];
        v8 = [objc_msgSend(v5 objectAtIndex:{7), "intValue"}];
        v9 = v8;
        v145 = v3;
        if (v7 == 1)
        {
          if (!v8)
          {
            [v151 addObject:v154];
          }
        }

        else
        {
          v10 = [objc_msgSend(v5 "firstObject")];
          if (v9)
          {
            v11 = 0x366666uLL / v10;
            if (!v7)
            {
              goto LABEL_30;
            }
          }

          else
          {
            LODWORD(v11) = __packing_max_area;
            if (!v7)
            {
              goto LABEL_30;
            }
          }

          v12 = 0;
          v13 = 0;
          v14 = (v11 * v10);
          do
          {
            v15 = [v6 count];
            if (v15 <= v12)
            {
              v16 = v12;
            }

            else
            {
              v16 = v15;
              v17 = 0;
              v18 = v12 - v15;
              v19 = 0.0;
              while (1)
              {
                v20 = v12 + v17;
                v21 = [v6 objectAtIndex:v12 + v17];
                width = [v21 width];
                v19 = v19 + ([v21 height] * width);
                if (v19 >= v14)
                {
                  break;
                }

                ++v17;
                if (!(v18 + v17))
                {
                  goto LABEL_23;
                }
              }

              array = [v6 array];
              v24 = v7;
              v25 = objc_alloc_init(TDPacker);
              [(TDPacker *)v25 setSizeHandler:&__block_literal_global_1769];
              v156 = array;
              -[TDPacker setObjectsToPack:](v25, "setObjectsToPack:", [array subarrayWithRange:{v12, v17}]);
              [(TDPacker *)v25 pack];
              [(TDPacker *)v25 enclosingSize];
              v27 = v26;
              v29 = v28;
              countOfEmptyNodes = [(TDPacker *)v25 countOfEmptyNodes];

              v7 = v24;
              if (v20 + countOfEmptyNodes >= v16)
              {
                goto LABEL_22;
              }

              v31 = objc_alloc_init(TDPacker);
              [(TDPacker *)v31 setSizeHandler:&__block_literal_global_1769];
              -[TDPacker setObjectsToPack:](v31, "setObjectsToPack:", [v156 subarrayWithRange:{v12, countOfEmptyNodes + v17}]);
              [(TDPacker *)v31 pack];
              [(TDPacker *)v31 enclosingSize];
              v33 = v32;
              v35 = v34;

              v16 = v20 + countOfEmptyNodes;
              if (v35 * v33 != v29 * v27)
              {
LABEL_22:
                v16 = v12 + v17;
              }

LABEL_23:
              if (v16 > v12 && v16 <= v7)
              {
                if (v16 == v7)
                {
                  v36 = v7 - v12;
                }

                else
                {
                  v36 = v16 - v12 + 1;
                }

                v37 = [MEMORY[0x277CBEB70] orderedSetWithOrderedSet:v6 range:v12 copyItems:{v36, 0}];
                [v151 addObject:v154];
                v38 = [v154 mutableCopy];
                [v38 appendFormat:@".%d", v13];
                [v149 setObject:v37 forKey:v38];
              }
            }

            v12 = v16 + 1;
            v13 = (v13 + 1);
          }

          while (v16 + 1 < v7);
        }

LABEL_30:
        v3 = v145 + 1;
      }

      while (v145 + 1 != v143);
      v143 = [obj countByEnumeratingWithState:&v167 objects:v177 count:16];
    }

    while (v143);
  }

  [(NSMutableDictionary *)selfCopy->_packableRenditions removeObjectsForKeys:v151];
  [(NSMutableDictionary *)selfCopy->_packableRenditions addEntriesFromDictionary:v149];

  v39 = objc_alloc_init(TDPacker);
  [(TDPacker *)v39 setSizeHandler:&__block_literal_global_1247];
  v126 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](selfCopy->_packableRenditions, "count")}];
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v127 = [-[NSMutableDictionary allKeys](selfCopy->_packableRenditions "allKeys")];
  v138 = [v127 countByEnumeratingWithState:&v163 objects:v176 count:16];
  if (!v138)
  {
    goto LABEL_92;
  }

  v135 = 0;
  v136 = 0;
  v137 = *v164;
  v40.f64[0] = NAN;
  v40.f64[1] = NAN;
  v128 = vnegq_f64(v40);
  do
  {
    v41 = 0;
    do
    {
      if (*v164 != v137)
      {
        objc_enumerationMutation(v127);
      }

      v42 = *(*(&v163 + 1) + 8 * v41);
      v43 = [(NSMutableDictionary *)selfCopy->_packableRenditions objectForKey:v42];
      v44 = [v43 count];
      -[TDPacker setObjectsToPack:](v39, "setObjectsToPack:", [v43 array]);
      [(TDPacker *)v39 pack];
      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v44)
      {
        for (i = 0; i != v44; ++i)
        {
          if ([(TDPacker *)v39 objectAtIndexFit:i])
          {
            [(TDPacker *)v39 fitPositionOfObjectAtIndex:i];
            [objc_msgSend(v43 objectAtIndex:{i), "setPackedPoint:", v47 + 2.0, v48 + 2.0}];
            [v45 addObject:{objc_msgSend(v43, "objectAtIndex:", i)}];
          }
        }
      }

      v155 = v41;
      v157 = v45;
      v49 = [v42 componentsSeparatedByString:@"."];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 0), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 3), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 4), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 5), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 6), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 7), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 8), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 9), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 10), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 12), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 13), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 14), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 15), "intValue")];
      v51 = [v148 objectForKey:v50];
      if (v51)
      {
        v52 = [v51 intValue] + 1;
      }

      else
      {
        v52 = 0;
      }

      v53 = [MEMORY[0x277CCABB0] numberWithInt:v52];
      [v148 setObject:v53 forKey:v50];
      if ([v45 count])
      {
        v54 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PackedRenditionSpec"];
        [v54 setPackedRenditions:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", v45)}];
        [v54 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 11), "intValue"))}];
        v55 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
        v56 = [objc_msgSend(v49 objectAtIndex:{7), "intValue"}];
        v152 = v53;
        if (v56)
        {
          v57 = v56;
          [v54 setAlphaCrop:1];
          [v55 setElement:v134];
          [v55 setNameIdentifier:v57];
          v144 = v57;
          v58 = -[NSMutableDictionary objectForKey:](selfCopy->_explicitlyPackedPackings, "objectForKey:", [MEMORY[0x277CCABB0] numberWithInteger:?]);
          v59 = [(CoreThemeDocument *)selfCopy namedArtworkProductionWithName:v58];
          if (!v59)
          {
            v146 = v54;
            v60 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"NamedArtworkProduction"];
            [v60 setTags:{objc_msgSend(objc_msgSend(objc_msgSend(v157, "firstObject"), "production"), "tags")}];
            v61 = v57;
            v62 = v55;
            v63 = [(CoreThemeDocument *)selfCopy _createNamedElementWithIdentifier:v144];
            [v63 setDateOfLastChange:{objc_msgSend(MEMORY[0x277CBEAA8], "date")}];
            [v63 setName:v58];
            [v60 setName:v63];
            v64 = v60;
            v65 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
            obja = v61;
            [v65 setNameIdentifier:v61];
            [v65 setElement:{objc_msgSend(v62, "element")}];
            v142 = v62;
            [v65 setPart:{objc_msgSend(v62, "part")}];
            v150 = v60;
            [v60 setBaseKeySpec:v65];

            v120 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"ContentsRenditionSpec"];
            v66 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v67 = -[NSMutableDictionary objectForKey:](selfCopy->_explicitlyPackedContents, "objectForKey:", [MEMORY[0x277CCABB0] numberWithInteger:v144]);
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v162 = 0u;
            v68 = [v67 countByEnumeratingWithState:&v159 objects:v175 count:16];
            if (v68)
            {
              v69 = v68;
              v70 = *v160;
              do
              {
                for (j = 0; j != v69; ++j)
                {
                  if (*v160 != v70)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v72 = *(*(&v159 + 1) + 8 * j);
                  v73 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"ContentsName"];
                  [v73 setName:v72];
                  [v66 addObject:v73];
                }

                v69 = [v67 countByEnumeratingWithState:&v159 objects:v175 count:16];
              }

              while (v69);
            }

            v74 = v120;
            [v120 setContains:v66];

            v75 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
            [v75 setNameIdentifier:obja];
            [v75 setElement:v134];
            [v75 setPart:v119];
            [v75 setScaleFactor:1];
            [v120 setKeySpec:v75];

            [v120 setProduction:v150];
            v54 = v146;
            v55 = v142;
LABEL_57:

            v59 = v150;
          }

          [v59 setBaseKeySpec:{objc_msgSend(v59, "baseKeySpec")}];
          [v54 setKeySpec:v55];
          [v54 resetToBaseKeySpec];
          [v55 setScaleFactor:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 0), "intValue")}];
          [v55 setPart:v130];
          renditionKeySemantics = [(CoreThemeDocument *)selfCopy renditionKeySemantics];
          v79 = [objc_msgSend(v49 objectAtIndex:{3), "intValue"}];
          if (renditionKeySemantics == 1)
          {
            [v55 setPresentationState:{objc_msgSend(v121, "objectAtIndexedSubscript:", v79)}];
            [v55 setSize:{objc_msgSend(v123, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 4), "intValue"))}];
          }

          else
          {
            [v55 setSubtype:v79];
            [v55 setIdiom:{objc_msgSend(idioms, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 4), "intValue"))}];
            [v55 setSizeClassHorizontal:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 5), "intValue"))}];
            [v55 setSizeClassVertical:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 6), "intValue"))}];
            [v55 setMemoryClass:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 8), "intValue")}];
            [v55 setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 9), "intValue"))}];
          }

          v45 = v157;
          [v55 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 10), "intValue"))}];
          [v55 setDimension1:{objc_msgSend(v152, "intValue")}];
          [v55 setTarget:{objc_msgSend(deploymentTargets, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 12), "intValue"))}];
          if ([objc_msgSend(v49 objectAtIndex:{13), "intValue"}])
          {
            if (v136 && (v80 = [v136 identifier], v81 = objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 13), "intValue"), v82 = v136, v81 == v80))
            {
              v83 = v55;
            }

            else
            {
              v82 = -[CoreThemeDocument appearanceWithIdentifier:](selfCopy, "appearanceWithIdentifier:", [objc_msgSend(v49 objectAtIndex:{13), "intValue"}]);
              v83 = v55;
              v136 = v82;
            }
          }

          else
          {
            v83 = v55;
            v82 = 0;
          }

          [v83 setAppearance:v82];
          if ([objc_msgSend(v49 objectAtIndex:{14), "intValue"}])
          {
            if (v135 && (v84 = [v135 identifier], v85 = objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 14), "intValue"), v86 = v135, v85 == v84))
            {
              v87 = v55;
            }

            else
            {
              v86 = -[CoreThemeDocument localizationWithIdentifier:](selfCopy, "localizationWithIdentifier:", [objc_msgSend(v49 objectAtIndex:{14), "intValue"}]);
              v87 = v55;
              v135 = v86;
            }
          }

          else
          {
            v87 = v55;
            v86 = 0;
          }

          [v87 setLocalization:v86];
          [v54 setProduction:v59];

          [v59 setRenditionType:v129];
          [v54 setRenditionType:v129];
          [(TDPacker *)v39 enclosingSize];
          *v88.i64 = *v88.i64 + 1.0;
          *v89.i64 = *v89.i64 + 1.0;
          *v90.i64 = *v89.i64 - trunc(*v89.i64 * 0.5) * 2.0;
          v91 = *vbslq_s8(v128, v90, v89).i64;
          if (v91 == 0.0)
          {
            v92 = *v89.i64;
          }

          else
          {
            v92 = *v89.i64 + v91;
          }

          *v89.i64 = *v88.i64 - trunc(*v88.i64 * 0.5) * 2.0;
          v89.i64[0] = vbslq_s8(v128, v89, v88).i64[0];
          if (*v89.i64 != 0.0)
          {
            *v88.i64 = *v88.i64 + *v89.i64;
          }

          [v54 setWidth:*v88.i64];
          [v54 setHeight:v92];
          [v54 setOpaque:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 1), "BOOLValue")}];
          [v54 setMonochrome:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 2), "BOOLValue")}];
          [v54 setPreserveForArchiveOnly:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 15), "intValue") != 0}];
          if (__coreThemeLoggingEnabled == 1)
          {
            width2 = [v54 width];
            height = [v54 height];
            v171 = 0u;
            v172 = 0u;
            v173 = 0u;
            v174 = 0u;
            packedRenditions = [v54 packedRenditions];
            v96 = [packedRenditions countByEnumeratingWithState:&v171 objects:v180 count:16];
            if (v96)
            {
              v97 = v96;
              v153 = width2;
              v147 = v54;
              v98 = 0;
              v99 = *v172;
              do
              {
                for (k = 0; k != v97; ++k)
                {
                  if (*v172 != v99)
                  {
                    objc_enumerationMutation(packedRenditions);
                  }

                  v101 = *(*(&v171 + 1) + 8 * k);
                  width3 = [v101 width];
                  v98 += [v101 height] * width3;
                }

                v97 = [packedRenditions countByEnumeratingWithState:&v171 objects:v180 count:16];
              }

              while (v97);
              v103 = v98;
              v45 = v157;
              v54 = v147;
              width2 = v153;
            }

            else
            {
              v103 = 0.0;
            }

            v104 = v103 / (height * width2);
            NSLog(&cfstr_PackedRenditio.isa, [v54 renditionPackName], (v104 * 100.0));
            *&v105 = v104;
            [v126 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v105)}];
          }

          goto LABEL_90;
        }

        [v55 setElement:v134];
        v76 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"ElementProduction"];
        [v76 setTags:{objc_msgSend(objc_msgSend(objc_msgSend(v45, "firstObject"), "production"), "tags")}];
        v77 = v76;
        v74 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
        [v74 setNameIdentifier:0];
        [v74 setElement:{objc_msgSend(v55, "element")}];
        [v74 setPart:{objc_msgSend(v55, "part")}];
        v150 = v76;
        [v76 setBaseKeySpec:v74];
        goto LABEL_57;
      }

LABEL_90:

      v41 = v155 + 1;
    }

    while (v155 + 1 != v138);
    v138 = [v127 countByEnumeratingWithState:&v163 objects:v176 count:16];
  }

  while (v138);
LABEL_92:

  if (__coreThemeLoggingEnabled == 1)
  {
    [objc_msgSend(v126 valueForKeyPath:{@"@avg.self", "floatValue"}];
    v107 = v106;
    v108 = [v126 sortedArrayUsingSelector:sel_compare_];
    if ([v108 count] == 1)
    {
      v109 = [v108 objectAtIndex:1];
      goto LABEL_97;
    }

    v110 = [v108 count];
    v109 = [v108 objectAtIndex:{objc_msgSend(v108, "count") >> 1}];
    v111 = v109;
    if (v110)
    {
LABEL_97:
      [v109 floatValue];
      v116 = v117;
    }

    else
    {
      v112 = [v108 objectAtIndex:{(objc_msgSend(v108, "count") >> 1) + 1}];
      [v111 floatValue];
      v114 = v113;
      [v112 floatValue];
      v116 = (v114 + v115) * 0.5;
    }

    NSLog(&cfstr_MeanSpaceUtili.isa, (v107 * 100.0));
    NSLog(&cfstr_MedianSpaceUti.isa, (v116 * 100.0));
  }

  v118 = *MEMORY[0x277D85DE8];
}

double __45__CoreThemeDocument__groupPackableRenditions__block_invoke(uint64_t a1, void *a2)
{
  v3 = ([a2 width] + 2);
  [a2 height];
  return v3;
}

- (void)packRenditionsError:(id *)error
{
  if ([(CoreThemeDocument *)self featureEnabled:2])
  {
    v5 = [(CoreThemeDocument *)self allObjectsForEntity:@"PackedRenditionSpec" withSortDescriptors:0];
    if ([v5 count])
    {
      [(CoreThemeDocument *)self deleteObjects:v5];
    }

    [(CoreThemeDocument *)self _updateRenditionPackings:[(CoreThemeDocument *)self allObjectsForEntity:@"RenditionSpec" withSortDescriptors:0] error:error];

    [(CoreThemeDocument *)self _groupPackableRenditions];
  }
}

- (void)incrementallyPackRenditionsSinceDate:(id)date error:(id *)error
{
  if (date && [(CoreThemeDocument *)self featureEnabled:2])
  {
    v7 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"RenditionSpec", [MEMORY[0x277CCAC30] predicateWithFormat:@"production.dateOfLastChange > %@", date], 0);
    NSLog(&cfstr_FoundLuChanged.isa, [v7 count], date, v7);
    [(CoreThemeDocument *)self _updateRenditionPackings:v7 error:error];

    [(CoreThemeDocument *)self _groupPackableRenditions];
  }
}

- (void)_optimizeForDeviceTraits
{
  v238 = *MEMORY[0x277D85DE8];
  if (![(CoreThemeDocument *)self deviceTraitsUsedForOptimization])
  {
    goto LABEL_185;
  }

  v117 = objc_alloc_init(MEMORY[0x277CBEB18]);
  hostedIdiomValues = [(TDDeviceTraits *)[(CoreThemeDocument *)self optimizeForDeviceTraits] hostedIdiomValues];
  v122 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v118 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v119 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  obj = [(CoreThemeDocument *)self allObjectsForEntity:@"ElementProduction" withSortDescriptors:0];
  v123 = v4;
  v115 = [obj countByEnumeratingWithState:&v212 objects:v236 count:16];
  if (!v115)
  {
    goto LABEL_39;
  }

  v113 = *v213;
  do
  {
    v7 = 0;
    do
    {
      if (*v213 != v113)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v212 + 1) + 8 * v7);
      if ([objc_msgSend(v8 "renditionType")] == 1006)
      {
        [v118 addObject:v8];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v8 "renditionType")] == 1018 || objc_msgSend(objc_msgSend(v8, "renditionType"), "identifier") == 1002))
      {
        [v119 addObject:v8];
      }

      v120 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 optOutOfThinning])
      {
        [v5 unionSet:{objc_msgSend(v8, "renditions")}];
        goto LABEL_37;
      }

      v211 = 0u;
      v210 = 0u;
      v209 = 0u;
      v208 = 0u;
      renditions = [v8 renditions];
      v143 = [renditions countByEnumeratingWithState:&v208 objects:v235 count:16];
      if (v143)
      {
        v9 = *v209;
        v125 = *v209;
        do
        {
          for (i = 0; i != v143; ++i)
          {
            if (*v209 != v9)
            {
              objc_enumerationMutation(renditions);
            }

            v11 = *(*(&v208 + 1) + 8 * i);
            v12 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
            v13 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
            v14 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
            if (hostedIdiomValues && -[NSArray containsObject:](hostedIdiomValues, "containsObject:", [MEMORY[0x277CCABB0] numberWithInteger:v12]) || v13 == 127 || v14 == 218)
            {
              v20 = v5;
            }

            else if (v13 == 9 && ![objc_msgSend(objc_msgSend(v11 "production")])
            {
              v20 = v122;
            }

            else
            {
              v15 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
              v139 = MEMORY[0x277CCACA8];
              v136 = [objc_msgSend(v11 "keySpec")];
              v132 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
              v16 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
              v17 = [objc_msgSend(v11 "keySpec")];
              keySpec = [v11 keySpec];
              if (v15 == 220)
              {
                v111 = [v139 stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d", v136, v132, v16, v17, objc_msgSend(keySpec, "dimension2"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "appearance"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "localization"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphWeight"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphSize"), "identifier")];
              }

              else
              {
                v111 = [v139 stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d", v136, v132, v16, v17, objc_msgSend(objc_msgSend(keySpec, "appearance"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "localization"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphWeight"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphSize"), "identifier"), v111];
              }

              v21 = v111;
              v4 = v123;
              v20 = [v123 objectForKey:v111];
              v9 = v125;
              if (!v20)
              {
                v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v22 addObject:v11];
                [v123 setObject:v22 forKey:v21];

                continue;
              }
            }

            [v20 addObject:v11];
          }

          v143 = [renditions countByEnumeratingWithState:&v208 objects:v235 count:16];
        }

        while (v143);
      }

LABEL_37:
      v7 = v120 + 1;
    }

    while (v120 + 1 != v115);
    v115 = [obj countByEnumeratingWithState:&v212 objects:v236 count:16];
  }

  while (v115);
LABEL_39:
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v204 = 0u;
  v116 = [v4 countByEnumeratingWithState:&v204 objects:v234 count:16];
  if (v116)
  {
    v114 = *v205;
    do
    {
      v23 = 0;
      do
      {
        if (*v205 != v114)
        {
          objc_enumerationMutation(v4);
        }

        v121 = v23;
        v24 = *(*(&v204 + 1) + 8 * v23);
        v137 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v128 = [v4 objectForKey:v24];
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        deviceTraitsUsedForOptimization = [(CoreThemeDocument *)selfCopy deviceTraitsUsedForOptimization];
        v133 = [deviceTraitsUsedForOptimization countByEnumeratingWithState:&v200 objects:v233 count:16];
        if (v133)
        {
          v126 = *v201;
          do
          {
            for (j = 0; j != v133; ++j)
            {
              if (*v201 != v126)
              {
                objc_enumerationMutation(deviceTraitsUsedForOptimization);
              }

              v26 = *(*(&v200 + 1) + 8 * j);
              v144 = MEMORY[0x277D02670];
              [v26 scale];
              v28 = [v144 bestMatchUsingObjects:v128 getAttributeValueUsing:&__block_literal_global_1271 scaleFactor:objc_msgSend(v26 deviceIdiom:"idiomValue") deviceSubtype:objc_msgSend(v26 displayGamut:"subtype") deploymentTarget:objc_msgSend(v26 layoutDirection:"displayGamutValue") sizeClassHorizontal:objc_msgSend(v26 sizeClassVertical:"deploymentTargetValue") memoryClass:v27 graphicsFeatureSetClass:5 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 platform:{objc_msgSend(v26, "memoryPerformanceClass"), objc_msgSend(v26, "graphicsFeatureSetClassValue"), objc_msgSend(v26, "graphicsFeatureSetFallbackValues"), objc_msgSend(v26, "subtypeFallbackValues"), -[CoreThemeDocument targetPlatform](selfCopy, "targetPlatform")}];
              if (v28)
              {
                v29 = v28;
                [v5 addObject:v28];
                [v137 addObject:v29];
              }
            }

            v133 = [deviceTraitsUsedForOptimization countByEnumeratingWithState:&v200 objects:v233 count:16];
          }

          while (v133);
        }

        v30 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v128];
        [v30 minusSet:v5];
        v198 = 0u;
        v199 = 0u;
        v196 = 0u;
        v197 = 0u;
        v134 = [v137 countByEnumeratingWithState:&v196 objects:v232 count:16];
        if (v134)
        {
          v129 = *v197;
          do
          {
            v31 = 0;
            do
            {
              if (*v197 != v129)
              {
                objc_enumerationMutation(v137);
              }

              v140 = v31;
              v32 = *(*(&v196 + 1) + 8 * v31);
              v192 = 0u;
              v193 = 0u;
              v194 = 0u;
              v195 = 0u;
              allObjects = [v30 allObjects];
              array = [MEMORY[0x277CBEB18] array];
              v216 = 0u;
              v217 = 0u;
              v218 = 0u;
              v219 = 0u;
              v34 = [allObjects countByEnumeratingWithState:&v216 objects:v237 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v217;
                do
                {
                  for (k = 0; k != v35; ++k)
                  {
                    if (*v217 != v36)
                    {
                      objc_enumerationMutation(allObjects);
                    }

                    v38 = *(*(&v216 + 1) + 8 * k);
                    v39 = [objc_msgSend(v38 "keySpec")];
                    if (v39 == [objc_msgSend(v32 "keySpec")])
                    {
                      v40 = [objc_msgSend(v38 "keySpec")];
                      if (v40 == [objc_msgSend(v32 "keySpec")])
                      {
                        v41 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                        if (v41 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                        {
                          v42 = [objc_msgSend(v38 "keySpec")];
                          if (v42 == [objc_msgSend(v32 "keySpec")])
                          {
                            v43 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                            if (v43 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                            {
                              v44 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                              if (v44 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                              {
                                v45 = [objc_msgSend(v38 "keySpec")];
                                if (v45 == [objc_msgSend(v32 "keySpec")])
                                {
                                  v46 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                                  if (v46 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                                  {
                                    v47 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                                    if (v47 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                                    {
                                      [array addObject:v38];
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v35 = [allObjects countByEnumeratingWithState:&v216 objects:v237 count:16];
                }

                while (v35);
              }

              v48 = array;
              if (![array count])
              {
                v48 = 0;
              }

              v49 = [v48 countByEnumeratingWithState:&v192 objects:v231 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v193;
                do
                {
                  for (m = 0; m != v50; ++m)
                  {
                    if (*v193 != v51)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v53 = *(*(&v192 + 1) + 8 * m);
                    [v30 removeObject:v53];
                    [v5 addObject:v53];
                  }

                  v50 = [v48 countByEnumeratingWithState:&v192 objects:v231 count:16];
                }

                while (v50);
              }

              v31 = v140 + 1;
            }

            while (v140 + 1 != v134);
            v134 = [v137 countByEnumeratingWithState:&v196 objects:v232 count:16];
          }

          while (v134);
        }

        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v54 = [v30 countByEnumeratingWithState:&v188 objects:v230 count:16];
        v4 = v123;
        if (v54)
        {
          v55 = v54;
          v56 = *v189;
          do
          {
            for (n = 0; n != v55; ++n)
            {
              if (*v189 != v56)
              {
                objc_enumerationMutation(v30);
              }

              [objc_msgSend(*(*(&v188 + 1) + 8 * n) "production")];
            }

            v55 = [v30 countByEnumeratingWithState:&v188 objects:v230 count:16];
          }

          while (v55);
        }

        -[CoreThemeDocument deleteObjects:](selfCopy, "deleteObjects:", [v30 allObjects]);
        [v6 unionSet:v30];

        v23 = v121 + 1;
      }

      while (v121 + 1 != v116);
      v116 = [v123 countByEnumeratingWithState:&v204 objects:v234 count:16];
    }

    while (v116);
  }

  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v58 = [v118 countByEnumeratingWithState:&v184 objects:v229 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v185;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v185 != v60)
        {
          objc_enumerationMutation(v118);
        }

        v62 = *(*(&v184 + 1) + 8 * ii);
        -[CoreThemeDocument deleteObjects:](selfCopy, "deleteObjects:", [objc_msgSend(v62 "renditions")]);
        [v62 setRenditions:{objc_msgSend(MEMORY[0x277CBEB98], "set")}];
      }

      v59 = [v118 countByEnumeratingWithState:&v184 objects:v229 count:16];
    }

    while (v59);
  }

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v146 = [v122 countByEnumeratingWithState:&v180 objects:v228 count:16];
  if (v146)
  {
    v141 = *v181;
    do
    {
      for (jj = 0; jj != v146; ++jj)
      {
        if (*v181 != v141)
        {
          objc_enumerationMutation(v122);
        }

        v64 = *(*(&v180 + 1) + 8 * jj);
        v65 = [objc_msgSend(v64 "packedRenditions")];
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        packedRenditions = [v64 packedRenditions];
        v67 = [packedRenditions countByEnumeratingWithState:&v176 objects:v227 count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v177;
          do
          {
            for (kk = 0; kk != v68; ++kk)
            {
              if (*v177 != v69)
              {
                objc_enumerationMutation(packedRenditions);
              }

              v71 = *(*(&v176 + 1) + 8 * kk);
              if ([v6 containsObject:v71])
              {
                [v65 removeObject:v71];
              }
            }

            v68 = [packedRenditions countByEnumeratingWithState:&v176 objects:v227 count:16];
          }

          while (v68);
        }

        if ([v65 count])
        {
          [v64 setPackedRenditions:v65];
        }

        else
        {
          [v117 addObject:v64];
          [objc_msgSend(v64 "production")];
        }
      }

      v146 = [v122 countByEnumeratingWithState:&v180 objects:v228 count:16];
    }

    while (v146);
  }

  objc_opt_class();
  objc_opt_class();
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v72 = [(CoreThemeDocument *)selfCopy allObjectsForEntity:@"Asset" withSortDescriptors:0];
  v73 = [v72 countByEnumeratingWithState:&v172 objects:v226 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v173;
    do
    {
      for (mm = 0; mm != v74; ++mm)
      {
        if (*v173 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v172 + 1) + 8 * mm);
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass()) && ![objc_msgSend(v77 "renditions")])
        {
          [v117 addObject:v77];
        }
      }

      v74 = [v72 countByEnumeratingWithState:&v172 objects:v226 count:16];
    }

    while (v74);
  }

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v78 = [(CoreThemeDocument *)selfCopy allObjectsForEntity:@"ElementProduction" withSortDescriptors:0];
  v79 = [v78 countByEnumeratingWithState:&v168 objects:v225 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v169;
    do
    {
      for (nn = 0; nn != v80; ++nn)
      {
        if (*v169 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v168 + 1) + 8 * nn);
        if (![objc_msgSend(v83 "renditions")])
        {
          [v117 addObject:v83];
        }
      }

      v80 = [v78 countByEnumeratingWithState:&v168 objects:v225 count:16];
    }

    while (v80);
  }

  v84 = selfCopy;
  [(CoreThemeDocument *)selfCopy deleteObjects:v117];

  if ([v119 count])
  {
    v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v135 = [v119 countByEnumeratingWithState:&v164 objects:v224 count:16];
    if (v135)
    {
      v130 = *v165;
      do
      {
        v86 = 0;
        do
        {
          if (*v165 != v130)
          {
            objc_enumerationMutation(v119);
          }

          v138 = v86;
          flattenedImageProduction = [*(*(&v164 + 1) + 8 * v86) flattenedImageProduction];
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          renditions2 = [flattenedImageProduction renditions];
          v88 = [renditions2 countByEnumeratingWithState:&v160 objects:v223 count:16];
          if (v88)
          {
            v89 = v88;
            v147 = *v161;
            do
            {
              for (i1 = 0; i1 != v89; ++i1)
              {
                if (*v161 != v147)
                {
                  objc_enumerationMutation(renditions2);
                }

                layerReferences = [*(*(&v160 + 1) + 8 * i1) layerReferences];
                v156 = 0u;
                v157 = 0u;
                v158 = 0u;
                v159 = 0u;
                v92 = [layerReferences countByEnumeratingWithState:&v156 objects:v222 count:16];
                if (v92)
                {
                  v93 = v92;
                  v94 = *v157;
                  do
                  {
                    for (i2 = 0; i2 != v93; ++i2)
                    {
                      if (*v157 != v94)
                      {
                        objc_enumerationMutation(layerReferences);
                      }

                      v96 = *(*(&v156 + 1) + 8 * i2);
                      if ([v6 containsObject:{objc_msgSend(v96, "reference")}])
                      {
                        [v85 addObject:v96];
                      }
                    }

                    v93 = [layerReferences countByEnumeratingWithState:&v156 objects:v222 count:16];
                  }

                  while (v93);
                }
              }

              v89 = [renditions2 countByEnumeratingWithState:&v160 objects:v223 count:16];
            }

            while (v89);
          }

          v86 = v138 + 1;
        }

        while (v138 + 1 != v135);
        v135 = [v119 countByEnumeratingWithState:&v164 objects:v224 count:16];
      }

      while (v135);
    }

    [(CoreThemeDocument *)selfCopy deleteObjects:v85];

    v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v98 = [v119 countByEnumeratingWithState:&v152 objects:v221 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v153;
      do
      {
        for (i3 = 0; i3 != v99; ++i3)
        {
          if (*v153 != v100)
          {
            objc_enumerationMutation(v119);
          }

          v102 = *(*(&v152 + 1) + 8 * i3);
          if (![objc_msgSend(objc_msgSend(v102 "flattenedImageProduction")])
          {
            [v97 addObject:v102];
          }
        }

        v99 = [v119 countByEnumeratingWithState:&v152 objects:v221 count:16];
      }

      while (v99);
    }

    v84 = selfCopy;
    [(CoreThemeDocument *)selfCopy deleteObjects:v97];
  }

  v103 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v104 = [(CoreThemeDocument *)v84 allObjectsForEntity:@"MultisizeImageSetRenditionSpec" withSortDescriptors:0];
  v105 = [v104 countByEnumeratingWithState:&v148 objects:v220 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v149;
    do
    {
      for (i4 = 0; i4 != v106; ++i4)
      {
        if (*v149 != v107)
        {
          objc_enumerationMutation(v104);
        }

        v109 = *(*(&v148 + 1) + 8 * i4);
        if (![objc_msgSend(v109 "multisizeImageRenditions")])
        {
          [v103 addObject:v109];
        }
      }

      v106 = [v104 countByEnumeratingWithState:&v148 objects:v220 count:16];
    }

    while (v106);
  }

  [(CoreThemeDocument *)selfCopy deleteObjects:v103];

LABEL_185:
  v110 = *MEMORY[0x277D85DE8];
}

- (BOOL)_matchesAllExceptGamut:(id)gamut andKeySpec:(id)spec
{
  nameIdentifier = [gamut nameIdentifier];
  if (nameIdentifier != [spec nameIdentifier])
  {
    return 0;
  }

  dimension1 = [gamut dimension1];
  if (dimension1 != [spec dimension1])
  {
    return 0;
  }

  dimension2 = [gamut dimension2];
  if (dimension2 != [spec dimension2])
  {
    return 0;
  }

  scaleFactor = [gamut scaleFactor];
  if (scaleFactor != [spec scaleFactor])
  {
    return 0;
  }

  subtype = [gamut subtype];
  if (subtype != [spec subtype])
  {
    return 0;
  }

  memoryClass = [gamut memoryClass];
  if (memoryClass != [spec memoryClass])
  {
    return 0;
  }

  v12 = [objc_msgSend(gamut "state")];
  if (v12 != [objc_msgSend(spec "state")])
  {
    return 0;
  }

  v13 = [objc_msgSend(gamut "presentationState")];
  if (v13 != [objc_msgSend(spec "presentationState")])
  {
    return 0;
  }

  v14 = [objc_msgSend(gamut "value")];
  if (v14 != [objc_msgSend(spec "value")])
  {
    return 0;
  }

  v15 = [objc_msgSend(gamut "size")];
  if (v15 != [objc_msgSend(spec "size")])
  {
    return 0;
  }

  v16 = [objc_msgSend(gamut "direction")];
  if (v16 != [objc_msgSend(spec "direction")])
  {
    return 0;
  }

  v17 = [objc_msgSend(gamut "part")];
  if (v17 != [objc_msgSend(spec "part")])
  {
    return 0;
  }

  v18 = [objc_msgSend(gamut "element")];
  if (v18 != [objc_msgSend(spec "element")])
  {
    return 0;
  }

  v19 = [objc_msgSend(gamut "layer")];
  if (v19 != [objc_msgSend(spec "layer")])
  {
    return 0;
  }

  v20 = [objc_msgSend(gamut "previousState")];
  if (v20 != [objc_msgSend(spec "previousState")])
  {
    return 0;
  }

  v21 = [objc_msgSend(gamut "previousValue")];
  if (v21 == [objc_msgSend(spec "previousValue")] && (v22 = objc_msgSend(objc_msgSend(gamut, "idiom"), "identifier"), v22 == objc_msgSend(objc_msgSend(spec, "idiom"), "identifier")) && (v23 = objc_msgSend(objc_msgSend(gamut, "target"), "identifier"), v23 == objc_msgSend(objc_msgSend(spec, "target"), "identifier")) && (v24 = objc_msgSend(objc_msgSend(gamut, "sizeClassHorizontal"), "identifier"), v24 == objc_msgSend(objc_msgSend(spec, "sizeClassHorizontal"), "identifier")) && (v25 = objc_msgSend(objc_msgSend(gamut, "sizeClassVertical"), "identifier"), v25 == objc_msgSend(objc_msgSend(spec, "sizeClassVertical"), "identifier")) && (v26 = objc_msgSend(objc_msgSend(gamut, "appearance"), "identifier"), v26 == objc_msgSend(objc_msgSend(spec, "appearance"), "identifier")) && (v27 = objc_msgSend(objc_msgSend(gamut, "graphicsFeatureSetClass"), "identifier"), v27 == objc_msgSend(objc_msgSend(spec, "graphicsFeatureSetClass"), "identifier")))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldGenerateDisplayGamut:(unsigned int)gamut
{
  v16 = *MEMORY[0x277D85DE8];
  deviceTraits = self->_deviceTraits;
  if (!deviceTraits)
  {
LABEL_11:
    LOBYTE(v5) = 1;
    goto LABEL_12;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMutableArray *)deviceTraits countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(deviceTraits);
      }

      if ([*(*(&v11 + 1) + 8 * v8) displayGamutValue] == gamut)
      {
        goto LABEL_11;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)deviceTraits countByEnumeratingWithState:&v11 objects:v15 count:16];
        LOBYTE(v5) = 0;
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_automaticSRGBGenerationFromP3
{
  v56 = *MEMORY[0x277D85DE8];
  if ([(CoreThemeDocument *)self shouldGenerateDisplayGamut:0])
  {
    v32 = [(CoreThemeDocument *)self displayGamutWithIdentifier:0];
    v3 = [(CoreThemeDocument *)self allObjectsForEntity:@"NamedArtworkProduction" withSortDescriptors:0];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v5)
    {
      v6 = *v50;
      do
      {
        v7 = 0;
        do
        {
          if (*v50 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v4 addObjectsFromArray:{objc_msgSend(objc_msgSend(*(*(&v49 + 1) + 8 * v7++), "renditions"), "allObjects")}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v5);
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __51__CoreThemeDocument__automaticSRGBGenerationFromP3__block_invoke;
    v48[3] = &unk_278EBB3D8;
    v48[4] = v8;
    v48[5] = v9;
    [v4 enumerateObjectsUsingBlock:v48];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v33 = [v8 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v33)
    {
      v10 = *v45;
      v30 = v8;
      v31 = v4;
      v28 = *v45;
      v29 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v44 + 1) + 8 * v11);
          v40 = 0;
          v41 = &v40;
          v42 = 0x2020000000;
          v43 = 0;
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __51__CoreThemeDocument__automaticSRGBGenerationFromP3__block_invoke_2;
          v39[3] = &unk_278EBB400;
          v39[5] = v12;
          v39[6] = &v40;
          v39[4] = self;
          [v9 enumerateObjectsUsingBlock:{v39, v28, v29, v30, v31}];
          if ((v41[3] & 1) == 0)
          {
            v34 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [objc_msgSend(v12 "entity")]);
            slices = [v12 slices];
            if ([slices count])
            {
              v14 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices, "count")}];
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v15 = [slices countByEnumeratingWithState:&v35 objects:v53 count:16];
              if (v15)
              {
                v16 = *v36;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v36 != v16)
                    {
                      objc_enumerationMutation(slices);
                    }

                    [*(*(&v35 + 1) + 8 * v17) sliceRect];
                    v19 = v18;
                    v21 = v20;
                    v23 = v22;
                    v25 = v24;
                    v26 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                    [v26 setSliceRect:{v19, v21, v23, v25}];
                    [v14 addObject:v26];
                    ++v17;
                  }

                  while (v15 != v17);
                  v15 = [slices countByEnumeratingWithState:&v35 objects:v53 count:16];
                }

                while (v15);
              }

              [v34 setSlices:v14];
              v8 = v30;
              v4 = v31;
              v10 = v28;
              v9 = v29;
            }

            [v34 setAsset:{objc_msgSend(v12, "asset")}];
            [v34 setProduction:{objc_msgSend(v12, "production")}];
            [objc_msgSend(v12 "production")];
            [v12 copyAttributesInto:v34];
            [objc_msgSend(v12 "keySpec")];
            [objc_msgSend(v34 "keySpec")];
            [v9 addObject:v34];
          }

          _Block_object_dispose(&v40, 8);
          ++v11;
        }

        while (v11 != v33);
        v33 = [v8 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v33);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __51__CoreThemeDocument__automaticSRGBGenerationFromP3__block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = [objc_msgSend(objc_msgSend(a2 "keySpec")];
    v6 = 40;
    if (v5 == 1)
    {
      v6 = 32;
    }

    v7 = *(a1 + v6);

    return [v7 addObject:a2];
  }

  return result;
}

uint64_t __51__CoreThemeDocument__automaticSRGBGenerationFromP3__block_invoke_2(uint64_t result, void *a2, _BYTE *a3)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v4 = result;
    result = [*(result + 32) _matchesAllExceptGamut:objc_msgSend(*(result + 40) andKeySpec:{"keySpec"), objc_msgSend(a2, "keySpec")}];
    if (result)
    {
      *(*(*(v4 + 48) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

- (BOOL)_testRenditionForP3:(id)p3
{
  v8 = 0;
  v7 = 0;
  v3 = [p3 _createImageRefWithURL:objc_msgSend(objc_msgSend(p3 andDocument:"asset") format:"fileURLWithDocument:" vectorBased:{self), self, &v8, &v7}];
  v4 = 0;
  if (v3)
  {
    if (v8 != 1246774599 && v8 != 1212500294)
    {
      v4 = (CUIImageIsWideGamut() & 1) != 0 || CGImageGetBitsPerComponent(v3) >= 9 && CUIImageIsMonochrome();
    }
  }

  CGImageRelease(v3);
  return v4;
}

- (void)_automaticP3GenerationFromSRGB
{
  v51 = *MEMORY[0x277D85DE8];
  if ([(CoreThemeDocument *)self shouldGenerateDisplayGamut:1])
  {
    v32 = [(CoreThemeDocument *)self displayGamutWithIdentifier:1];
    v3 = [(CoreThemeDocument *)self allObjectsForEntity:@"NamedArtworkProduction" withSortDescriptors:0];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v45;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v45 != v7)
          {
            objc_enumerationMutation(v3);
          }

          [v4 addObjectsFromArray:{objc_msgSend(objc_msgSend(*(*(&v44 + 1) + 8 * i), "renditions"), "allObjects")}];
        }

        v6 = [v3 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v6);
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke;
    v43[3] = &unk_278EBB3D8;
    v43[4] = self;
    v43[5] = v9;
    [v4 enumerateObjectsUsingBlock:v43];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v9;
    v33 = [v9 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v33)
    {
      v31 = *v40;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v39 + 1) + 8 * j);
          v12 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [objc_msgSend(v11 "entity")]);
          slices = [v11 slices];
          if ([slices count])
          {
            v34 = j;
            v14 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices, "count")}];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v15 = [slices countByEnumeratingWithState:&v35 objects:v48 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v36;
              do
              {
                for (k = 0; k != v16; ++k)
                {
                  if (*v36 != v17)
                  {
                    objc_enumerationMutation(slices);
                  }

                  [*(*(&v35 + 1) + 8 * k) sliceRect];
                  v20 = v19;
                  v22 = v21;
                  v24 = v23;
                  v26 = v25;
                  v27 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                  [v27 setSliceRect:{v20, v22, v24, v26}];
                  [v14 addObject:v27];
                }

                v16 = [slices countByEnumeratingWithState:&v35 objects:v48 count:16];
              }

              while (v16);
            }

            [v12 setSlices:v14];
            j = v34;
          }

          [v12 setAsset:{objc_msgSend(v11, "asset")}];
          [v12 setProduction:{objc_msgSend(v11, "production")}];
          [objc_msgSend(v11 "production")];
          [v11 copyAttributesInto:v12];
          [objc_msgSend(v11 "keySpec")];
          [objc_msgSend(v12 "keySpec")];
          compressionType = [v11 compressionType];
          if (compressionType == [(CoreThemeDocument *)self compressionTypeWithIdentifier:3])
          {
            [v12 setAllowsHevcCompression:0];
            [v12 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 2)}];
          }
        }

        v33 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v33);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(a2 "asset")] & 1) == 0 && objc_msgSend(objc_msgSend(a2, "renditionType"), "identifier") != 1006 && !objc_msgSend(objc_msgSend(objc_msgSend(a2, "keySpec"), "gamut"), "identifier") && !objc_msgSend(objc_msgSend(objc_msgSend(a2, "keySpec"), "glyphWeight"), "identifier") && !objc_msgSend(objc_msgSend(objc_msgSend(a2, "keySpec"), "glyphSize"), "identifier"))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_msgSend(a2 "production")];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke_2;
      v16[3] = &unk_278EBB428;
      v16[4] = &v17;
      [v4 enumerateObjectsUsingBlock:v16];
      if ((v18[3] & 1) == 0)
      {
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v5 = [a2 layerReferences];
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v21 count:16];
        if (v6)
        {
          v7 = *v13;
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v13 != v7)
              {
                objc_enumerationMutation(v5);
              }

              if ([*(a1 + 32) _testRenditionForP3:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "reference")}])
              {
                [*(a1 + 40) addObject:a2];
                goto LABEL_22;
              }
            }

            v6 = [v5 countByEnumeratingWithState:&v12 objects:v21 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else
    {
      v9 = [objc_msgSend(a2 "production")];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke_3;
      v11[3] = &unk_278EBB428;
      v11[4] = &v17;
      [v9 enumerateObjectsUsingBlock:v11];
      if ((v18[3] & 1) == 0 && [*(a1 + 32) _testRenditionForP3:a2])
      {
        [*(a1 + 40) addObject:a2];
      }
    }

LABEL_22:
    _Block_object_dispose(&v17, 8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [objc_msgSend(objc_msgSend(a2 "keySpec")];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 0;
  }

  return result;
}

uint64_t __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [objc_msgSend(objc_msgSend(a2 "keySpec")];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 0;
  }

  return result;
}

- (void)_processModelProductions
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self allObjectsForEntity:@"ModelIOProduction" withSortDescriptors:0];
  [(NSMutableArray *)self->_cachedModelAssets removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_msgSend(*(*(&v18 + 1) + 8 * v7) "renditions")];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) processModelObjectsInDocument:self];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (uint64_t)appearanceWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)localizationWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)allObjectsForEntity:withSortDescriptors:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [*v0 localizedDescription];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)objectsForEntity:withPredicate:sortDescriptors:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [*v0 localizedDescription];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)newObjectForEntity:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)deleteObjects:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)deleteObject:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedColorProductionsForImportInfos:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [v0 name];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedGradientProductionsForImportInfos:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [v0 name];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedGradientProductionsForImportInfos:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [v0 name];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedArtworkProductionsForAssets:customInfos:skipLastStep:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedArtworkProductionsForAssets:customInfos:skipLastStep:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedTexturesForCustomInfos:referenceFiles:bitSource:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedTexturesForCustomInfos:referenceFiles:bitSource:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedModelsForCustomInfos:referenceFiles:bitSource:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedModelsForCustomInfos:referenceFiles:bitSource:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedRecognitionObjectsForAssets:customInfos:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedRecognitionObjectsForAssets:customInfos:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedGlyphVectorForCustomInfos:referenceFiles:bitSource:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedGlyphVectorForCustomInfos:referenceFiles:bitSource:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)_addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)_tidyUpLayerStacks
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedRenditionGroupProductionsForImportInfos:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedRenditionGroupProductionsForImportInfos:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)metadatumForKey:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMetadatum:forKey:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMetadatum:forKey:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)checksum
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)catalogGlobals
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)persistentStoreTypeForFileType:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)_updateRenditionPackings:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end