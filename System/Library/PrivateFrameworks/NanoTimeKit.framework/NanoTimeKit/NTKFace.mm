@interface NTKFace
+ (BOOL)_complication:(id)_complication isValidForSlot:(id)slot forDevice:(id)device;
+ (BOOL)isFaceStyleAvailableInternal:(int64_t)internal forDevice:(id)device;
+ (Class)_faceClassForStyle:(int64_t)style onDevice:(id)device;
+ (NTKArgonKeyDescriptor)keyDescriptor;
+ (id)_complicationSlotDescriptors;
+ (id)_complicationTypeMigrations;
+ (id)_dateComplicationSlotForDevice:(id)device;
+ (id)_defaultSelectedComplicationSlotForDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
+ (id)allPigmentFaceDomains;
+ (id)argon_overlayAssetArchiveURL;
+ (id)availableInternalFaceDescriptorsForDevice:(id)device;
+ (id)bundledFaceWithIdentifier:(id)identifier analyticsIdentifier:(id)analyticsIdentifier forDevice:(id)device initCustomization:(id)customization;
+ (id)bundledFaceWithIdentifier:(id)identifier forDevice:(id)device initCustomization:(id)customization;
+ (id)defaultAnalyticsIdentifierForBundleIdentifier:(id)identifier;
+ (id)defaultFaceFromFaceDescriptor:(id)descriptor forDevice:(id)device;
+ (id)defaultFaceOfStyle:(int64_t)style forDevice:(id)device initCustomization:(id)customization;
+ (id)faceWithInstanceDescriptor:(id)descriptor;
+ (id)faceWithJSONObjectRepresentation:(id)representation forDevice:(id)device forMigration:(BOOL)migration allowFallbackFromInvalidFaceStyle:(BOOL)style;
+ (id)localizedNameForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)possibleComplicationTypesForSlot:(id)slot;
+ (unint64_t)_dateComplicationSlotSupportedStylesForDevice:(id)device;
+ (unint64_t)maximumRemoteComplicationsOnAnyFace;
+ (void)enumerateComplicationSlots:(id)slots withBlock:(id)block;
+ (void)enumerateComplicationSlotsWithBlock:(id)block;
+ (void)greenfieldFaceWithJSONObjectRepresentation:(id)representation forDevice:(id)device withCompletion:(id)completion;
- (BOOL)_applyConfiguration:(id)configuration allowFailure:(BOOL)failure forMigration:(BOOL)migration;
- (BOOL)_complication:(id)_complication supportsFamilies:(id)families inSlot:(id)slot;
- (BOOL)_complication:(id)_complication supportsFamily:(int64_t)family inSlot:(id)slot;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error;
- (BOOL)_faceGalleryDidUpdateFaceColorForColorEditOptionClass:(Class)class availableHardwareSpecificColorOptions:(id)options availableColorOptions:(id)colorOptions;
- (BOOL)_faceGalleryIsRestricted;
- (BOOL)_migrationExistsForComplicationType:(unint64_t)type rankedFamilies:(id)families;
- (BOOL)_option:(id)_option isValidForCustomEditMode:(int64_t)mode slot:(id)slot;
- (BOOL)_shouldHideUI;
- (BOOL)_shouldPresentAlertForSharingUnreleasedFace;
- (BOOL)complicationExistenceInvalidatesSnapshot;
- (BOOL)deviceSupportsPigmentEditOption;
- (BOOL)hasCompanionEdits;
- (BOOL)hasGizmoEdits;
- (BOOL)hasValidConfigurationForDevice:(id)device;
- (BOOL)isEditable;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToFace:(id)face;
- (BOOL)isFullscreenConfiguration;
- (BOOL)multicolored;
- (BOOL)option:(id)option migratesToValidOption:(id *)validOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (BOOL)slot:(id)slot supportsFamiliesOfComplications:(id)complications;
- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (BOOL)supportsPigmentEditOption;
- (BOOL)treatAsUsingCustomAsset;
- (BOOL)usesComplications;
- (Class)editOptionClassFromEditMode:(int64_t)mode resourceDirectoryExists:(BOOL)exists;
- (Class)legacyEditOptionClassFromCustomEditMode:(int64_t)mode resourceDirectoryExists:(BOOL)exists;
- (NSArray)editModes;
- (NSArray)externalAssets;
- (NSNumber)numberOfCompanionEdits;
- (NSNumber)numberOfGizmoEdits;
- (NSString)analyticsIdentifier;
- (NSString)dailySnapshotKey;
- (NSString)description;
- (NSString)name;
- (NSString)unadornedSnapshotKey;
- (NSString)unsafeDailySnapshotKey;
- (NTKArgonKeyDescriptor)keyDescriptor;
- (NTKFace)initWithCoder:(id)coder;
- (NTKFaceView)faceView;
- (id)JSONObjectRepresentation;
- (id)_allComplications;
- (id)_complicationProviderOptionsForSlot:(id)slot;
- (id)_complicationSlotDescriptors;
- (id)_configurationFromOldEncodingWithCoder:(id)coder;
- (id)_defaultComplicationOfType:(unint64_t)type forSlot:(id)slot;
- (id)_defaultFace;
- (id)_defaultName;
- (id)_disabledComplicationTypesIndexSet;
- (id)_editOptionsForEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionForExternal;
- (id)_faceDescriptionForLibrary;
- (id)_faceDescriptionKey;
- (id)_faceDescriptionKeyForExternal;
- (id)_faceDescriptionKeyForLibrary;
- (id)_faceGalleryCalloutName;
- (id)_faceWithRichComplicationSlots;
- (id)_initWithFaceStyle:(int64_t)style forDevice:(id)device;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_migratedBundleFace;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_orderedComplicationSlots;
- (id)_sortedComplicationSlots;
- (id)_uniqueOptionForCustomEditMode:(int64_t)mode slot:(id)slot withExistingOptions:(id)options;
- (id)_validOptionForOption:(id)option mode:(int64_t)mode slot:(id)slot configuration:(id)configuration;
- (id)addFaceDetailViewController;
- (id)allVisibleComplicationsForCurrentConfiguration;
- (id)allowedComplicationTypesFromDescriptors:(id)descriptors slot:(id)slot;
- (id)allowedComplicationsForSlot:(id)slot includingComplication:(id)complication;
- (id)complicationForSlot:(id)slot;
- (id)complicationVariantForComplication:(id)complication withSlot:(id)slot;
- (id)configurationJSONRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepCopy;
- (id)defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)editOptionsForCustomEditModes;
- (id)faceDescriptionForAccessibility;
- (id)faceDescriptor;
- (id)greenfieldJSONObjectRepresentation;
- (id)instanceDescriptor;
- (id)libraryDetailViewController;
- (id)nameOfSelectedOptionForCustomEditMode:(int64_t)mode;
- (id)namesOfSelectedOptionsForCustomEditModes;
- (id)newDynamicEditOptionCollectionForSection:(unint64_t)section;
- (id)optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)possibleComplicationTypesForSlot:(id)slot;
- (id)rankedComplicationFamiliesForSlot:(id)slot;
- (id)replacedOptionWithFulfilledOption:(id)option forEditMode:(int64_t)mode slot:(id)slot;
- (id)selectedOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)selectedOptionsForCustomEditModes;
- (id)selectedSlotForEditMode:(int64_t)mode;
- (id)selectedSlotOptionsForCustomEditMode:(int64_t)mode;
- (id)slotForAddColorsViewFrame;
- (id)slotsForCustomEditMode:(int64_t)mode;
- (int64_t)_customEditModeForUniqueConfiguration;
- (int64_t)editedState;
- (int64_t)origin;
- (int64_t)preferredComplicationFamilyForComplication:(id)complication withSlot:(id)slot;
- (unint64_t)_collectionTypeForEditMode:(int64_t)mode;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_commonInit;
- (void)_deleteResourceDirectoryIfOwned;
- (void)_handleColorEditOptionsChanged;
- (void)_handleComplicationChangeNotification;
- (void)_handleSingleComplicationDidChangeNotification:(id)notification;
- (void)_notifyObserversComplicationDidChangeForSlot:(id)slot;
- (void)_notifyObserversFaceConfigurationDidChange;
- (void)_notifyObserversFaceResourceDirectoryDidChange;
- (void)_notifyObserversFaceTimeStyleChanged;
- (void)_notifyObserversFaceUpgradeOccurred;
- (void)_notifyObserversOptionsDidChangeForEditMode:(int64_t)mode;
- (void)_notifyObserversThatRespondToSelector:(SEL)selector callSelector:(id)callSelector;
- (void)_selectDefaultSlots;
- (void)_setFaceGalleryComplicationTypesForSlots:(id)slots canRepeat:(BOOL)repeat;
- (void)_setResourceDirectory:(id)directory;
- (void)_updateComplicationTombstones;
- (void)addObserver:(id)observer;
- (void)applyDefaultComplicationConfiguration;
- (void)applyDefaultConfiguration;
- (void)applyUniqueConfigurationWithExistingFaces:(id)faces;
- (void)argon_compositedSnapshotWithCompletion:(id)completion;
- (void)argon_notificationContentWithCompletion:(id)completion;
- (void)argon_notificationOverlayImageWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateComplicationSlotsWithBlock:(id)block;
- (void)enumerateCustomEditModesWithBlock:(id)block;
- (void)enumerateSlotsForCustomEditMode:(int64_t)mode withBlock:(id)block;
- (void)enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:(id)block;
- (void)handleSharingMetadata:(id)metadata;
- (void)incrementNumberOfCompanionEdits;
- (void)incrementNumberOfGizmoEdits;
- (void)removeObserver:(id)observer;
- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)selectOptions:(id)options forCustomEditMode:(int64_t)mode;
- (void)setComplication:(id)complication forSlot:(id)slot;
- (void)setComplicationSlotDescriptors:(id)descriptors;
- (void)setComplicationsForSlots:(id)slots;
- (void)setCreationDate:(id)date;
- (void)setCustomData:(id)data forKey:(id)key;
- (void)setEditedState:(int64_t)state;
- (void)setExternalAssets:(id)assets;
- (void)setLastEditedDate:(id)date;
- (void)setName:(id)name;
- (void)setOrigin:(int64_t)origin;
- (void)setResourceDirectory:(id)directory;
- (void)setResourceDirectoryByTransferringOwnership:(id)ownership;
- (void)setSelectedSlot:(id)slot forEditMode:(int64_t)mode;
- (void)toggleComplicationChangeObservation:(BOOL)observation;
@end

@implementation NTKFace

- (id)instanceDescriptor
{
  v24 = *MEMORY[0x277D85DE8];
  resourceDirectory = [(NTKFace *)self resourceDirectory];
  v4 = objc_autoreleasePoolPush();
  jSONObjectRepresentation = [(NTKFace *)self JSONObjectRepresentation];
  v15 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:jSONObjectRepresentation options:2 error:&v15];
  v7 = v15;
  if (v6)
  {
    device = [(NTKFace *)self device];
    pairingID = [device pairingID];

    objc_autoreleasePoolPop(v4);
    v10 = [[NTKFaceInstanceDescriptor alloc] initWithJSONRepresentation:v6 pairingID:pairingID resourceDirectory:resourceDirectory];
  }

  else
  {
    v11 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138413058;
      v17 = v13;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = jSONObjectRepresentation;
      v22 = 2112;
      selfCopy = self;
      v14 = v13;
      _os_log_error_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_ERROR, "Face %@ failed to generate JSON %@ - %@ / %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    v10 = 0;
  }

  return v10;
}

+ (id)faceWithInstanceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_autoreleasePoolPush();
  faceJSONRepresentation = [descriptorCopy faceJSONRepresentation];
  if (faceJSONRepresentation)
  {
    v6 = faceJSONRepresentation;
    v17 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:faceJSONRepresentation options:0 error:&v17];
    v8 = v17;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = v7;
      pairingID = [descriptorCopy pairingID];
      v12 = [MEMORY[0x277CBBAE8] deviceForPairingID:pairingID];
    }

    else
    {
      pairingID = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(pairingID, OS_LOG_TYPE_ERROR))
      {
        [(NTKFace(NTKFaceInstanceDescriptorAdditions) *)v8 faceWithInstanceDescriptor:pairingID];
      }

      v12 = 0;
      v10 = 0;
    }

    objc_autoreleasePoolPop(v4);
    if (isKindOfClass)
    {
      v14 = [NTKFace faceWithJSONObjectRepresentation:v10 forDevice:v12];
      resourceDirectory = [descriptorCopy resourceDirectory];
      [v14 setResourceDirectory:resourceDirectory];

      goto LABEL_13;
    }
  }

  else
  {
    v13 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NTKFace(NTKFaceInstanceDescriptorAdditions) *)descriptorCopy faceWithInstanceDescriptor:v13];
    }

    objc_autoreleasePoolPop(v4);
    v10 = 0;
    v12 = 0;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)_setFaceGalleryComplicationTypesForSlots:(id)slots canRepeat:(BOOL)repeat
{
  repeatCopy = repeat;
  slotsCopy = slots;
  device = [(NTKFace *)self device];
  v8 = [NTKComplicationProvider providerForDevice:device];
  disabledComplicationTypes = [v8 disabledComplicationTypes];

  v10 = objc_opt_new();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  allValues = [slotsCopy allValues];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke;
  v26[3] = &unk_278780948;
  v26[4] = &v27;
  [allValues enumerateObjectsUsingBlock:v26];

  if (repeatCopy && *(v28 + 24) == 1)
  {
    v12 = [NTKComplication allComplicationsOfType:5];
  }

  else
  {
    v12 = 0;
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke_3;
  v17[3] = &unk_2787809C0;
  v13 = slotsCopy;
  v18 = v13;
  v24 = repeatCopy;
  v14 = v10;
  v19 = v14;
  v23 = v25;
  v15 = v12;
  v20 = v15;
  selfCopy = self;
  v16 = disabledComplicationTypes;
  v22 = v16;
  [(NTKFace *)self enumerateComplicationSlotsWithBlock:v17];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);
}

uint64_t __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke_2;
  v7[3] = &unk_278780920;
  v7[4] = *(a1 + 32);
  result = [a2 enumerateObjectsUsingBlock:v7];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 unsignedIntegerValue];
  if (result == 5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__13;
  v31 = __Block_byref_object_dispose__13;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke_287;
  v13[3] = &unk_278780998;
  v22 = *(a1 + 80);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v14 = v5;
  v19 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v15 = v7;
  v16 = v8;
  v9 = v3;
  v17 = v9;
  v18 = *(a1 + 64);
  v20 = &v27;
  v21 = &v23;
  [v4 enumerateObjectsUsingBlock:v13];
  if ((v24[3] & 1) == 0)
  {
    v10 = v28[5];
    v11 = *(a1 + 56);
    if (v10)
    {
      [v11 setComplication:v10 forSlot:v9];
    }

    else
    {
      v12 = [NTKComplication anyComplicationOfType:?];
      [v11 setComplication:v12 forSlot:v9];
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

void __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke_287(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 unsignedIntegerValue];
  if ((*(a1 + 96) & 1) != 0 || ([*(a1 + 32) containsIndex:v7] & 1) == 0)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__13;
    v24 = __Block_byref_object_dispose__13;
    v25 = 0;
    if (v7 == 5 && (v8 = *(*(*(a1 + 72) + 8) + 24), v8 < [*(a1 + 40) count]))
    {
      v9 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
      v10 = v21[5];
      v21[5] = v9;

      ++*(*(*(a1 + 72) + 8) + 24);
    }

    else
    {
      v11 = [NTKComplication anyComplicationOfType:v7];
      v12 = v21[5];
      v21[5] = v11;
    }

    v13 = [*(a1 + 48) rankedComplicationFamiliesForSlot:*(a1 + 56)];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke_2_288;
    v19[3] = &unk_278780970;
    v19[4] = *(a1 + 48);
    v19[5] = &v20;
    v19[6] = v7;
    [v13 enumerateObjectsUsingBlock:v19];
    if (v21[5])
    {
      v14 = [*(a1 + 64) containsIndex:v7];
      v15 = v21[5];
      if (v14)
      {
        v16 = [NTKComplicationTombstone tombstoneWithComplication:v15];
        v17 = *(*(a1 + 80) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;
      }

      else
      {
        [*(a1 + 48) setComplication:v15 forSlot:*(a1 + 56)];
        [*(a1 + 32) addIndex:v7];
        *a4 = 1;
        *(*(*(a1 + 88) + 8) + 24) = 1;
      }
    }

    _Block_object_dispose(&v20, 8);
  }
}

void __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke_2_288(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) device];
  v9 = [NTKWidgetComplicationMigrationDefines hasMigratedComplicationType:v7 forDevice:v8];

  if (v9 && ([NTKWidgetComplicationMigrationDefines migrateComplication:*(*(*(a1 + 40) + 8) + 40) forFamily:v6], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }

  else
  {
    v13 = +[NTKBundleComplicationMigrationProvider cachedInstance];
    v14 = *(a1 + 48);
    v15 = [*(a1 + 32) device];
    v20 = [v13 migratedComplicationFromType:v14 family:v6 device:v15];

    v16 = v20;
    if (v20)
    {
      v17 = [NTKWidgetComplication complicationWithDescriptor:v20];
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v16 = v20;
      *a4 = 1;
    }
  }
}

- (BOOL)_faceGalleryDidUpdateFaceColorForColorEditOptionClass:(Class)class availableHardwareSpecificColorOptions:(id)options availableColorOptions:(id)colorOptions
{
  optionsCopy = options;
  colorOptionsCopy = colorOptions;
  if ([optionsCopy count])
  {
    v9 = optionsCopy;
  }

  else
  {
    v9 = colorOptionsCopy;
  }

  firstObject = [v9 firstObject];
  if (firstObject)
  {
    [(NTKFace *)self selectOption:firstObject forCustomEditMode:10 slot:0];
    [optionsCopy removeObject:firstObject];
    [colorOptionsCopy removeObject:firstObject];
  }

  return firstObject != 0;
}

- (id)_faceGalleryCalloutName
{
  device = [(NTKFace *)self device];
  name = [(NTKFace *)self name];
  if (-[NTKFace faceStyle](self, "faceStyle") == 3 && [device deviceCategory] != 1)
  {
    v6 = [(NTKFace *)self selectedOptionForCustomEditMode:15 slot:0];
    localizedName = [v6 localizedName];
    v5 = [name stringByAppendingFormat:@" (%@)", localizedName];
  }

  else
  {
    v5 = name;
  }

  return v5;
}

- (BOOL)_faceGalleryIsRestricted
{
  v3 = +[NTKFaceBundleManager sharedManager];
  device = [(NTKFace *)self device];
  v5 = [v3 faceBundleForFaceStyle:26 onDevice:device];

  v6 = +[NTKFaceBundleManager sharedManager];
  device2 = [(NTKFace *)self device];
  v8 = [v6 faceBundleForFaceStyle:33 onDevice:device2];

  [v5 faceClass];
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    [v8 faceClass];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKFace *)self _faceDescriptionKey];
  v3 = NTKClockFaceLocalizedString(_faceDescriptionKey, @"description");

  return v3;
}

- (id)_faceDescriptionKey
{
  v2 = NTKEffectiveFaceStyleForFaceStyle([(NTKFace *)self faceStyle]);
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v5 = [v3 stringWithFormat:@"FACE_STYLE_%@_DESCRIPTION", v4];

  return v5;
}

- (id)_faceDescriptionForLibrary
{
  _faceDescriptionKeyForLibrary = [(NTKFace *)self _faceDescriptionKeyForLibrary];
  v3 = _faceDescriptionKeyForLibrary;
  if (_faceDescriptionKeyForLibrary)
  {
    v4 = NTKClockFaceLocalizedString(_faceDescriptionKeyForLibrary, @"library description");
    if (![v4 isEqualToString:v3])
    {
      goto LABEL_5;
    }
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (id)_faceDescriptionKeyForLibrary
{
  _faceDescriptionKey = [(NTKFace *)self _faceDescriptionKey];
  v3 = [_faceDescriptionKey stringByAppendingString:@"_LIBRARY"];

  return v3;
}

- (id)_faceDescriptionForExternal
{
  _faceDescriptionKeyForExternal = [(NTKFace *)self _faceDescriptionKeyForExternal];
  if (_faceDescriptionKeyForExternal)
  {
    v4 = [(NTKFace *)self _localizedStringForExternal:_faceDescriptionKeyForExternal comment:@"external description"];
    if (![v4 isEqualToString:_faceDescriptionKeyForExternal])
    {
      goto LABEL_5;
    }
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (id)_faceDescriptionKeyForExternal
{
  _faceDescriptionKey = [(NTKFace *)self _faceDescriptionKey];
  v3 = [_faceDescriptionKey stringByAppendingString:@"_EXTERNAL"];

  return v3;
}

- (id)faceDescriptionForAccessibility
{
  v23 = *MEMORY[0x277D85DE8];
  name = [(NTKFace *)self name];
  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (name)
  {
    [array addObject:name];
  }

  v17 = name;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  _customEditModes = [(NTKFace *)self _customEditModes];
  v7 = [_customEditModes countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(_customEditModes);
        }

        integerValue = [*(*(&v18 + 1) + 8 * i) integerValue];
        configuration = [(NTKFace *)self configuration];
        v13 = [configuration optionForCustomEditMode:integerValue slot:0];

        if (v13)
        {
          localizedName = [v13 localizedName];
          if (([v5 containsObject:localizedName] & 1) == 0 && objc_msgSend(localizedName, "rangeOfString:options:", @"placeholder", 1) == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addObject:localizedName];
          }
        }
      }

      v8 = [_customEditModes countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = MEMORY[0x2318D9590](v5);

  return v15;
}

- (BOOL)treatAsUsingCustomAsset
{
  resourceDirectory = [(NTKFace *)self resourceDirectory];
  v3 = resourceDirectory != 0;

  return v3;
}

+ (id)allPigmentFaceDomains
{
  array = [MEMORY[0x277CBEB18] array];
  pigmentFaceDomain = [self pigmentFaceDomain];

  if (pigmentFaceDomain)
  {
    pigmentFaceDomain2 = [self pigmentFaceDomain];
    [array addObject:pigmentFaceDomain2];
  }

  additionalPigmentFaceDomains = [self additionalPigmentFaceDomains];

  if (additionalPigmentFaceDomains)
  {
    additionalPigmentFaceDomains2 = [self additionalPigmentFaceDomains];
    [array addObjectsFromArray:additionalPigmentFaceDomains2];
  }

  return array;
}

- (void)_handleColorEditOptionsChanged
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__NTKFace__handleColorEditOptionsChanged__block_invoke;
  aBlock[3] = &unk_27877DB10;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v2);
  }
}

void __41__NTKFace__handleColorEditOptionsChanged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyObserversOptionsDidChangeForEditMode:10];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKColorEditOptionsChangedNotificationName" object:*(a1 + 32)];
}

- (BOOL)deviceSupportsPigmentEditOption
{
  if (self->_forceUsingLegacyColorOptions || ![(CLKDevice *)self->_device supportsPDRCapability:2826773005])
  {
    return 0;
  }

  return [(NTKFace *)self supportsPigmentEditOption];
}

- (BOOL)supportsPigmentEditOption
{
  pigmentFaceDomain = [objc_opt_class() pigmentFaceDomain];
  v3 = [pigmentFaceDomain length] != 0;

  return v3;
}

- (void)_commonInit
{
  if ([(NTKFace *)self supportsPigmentEditOption])
  {
    v3 = [[NTKPigmentEditOptionProvider alloc] initWithFace:self];
    pigmentOptionProvider = self->_pigmentOptionProvider;
    self->_pigmentOptionProvider = v3;
  }

  complicationConfiguration = [objc_opt_class() complicationConfiguration];
  complicationConfiguration = self->_complicationConfiguration;
  self->_complicationConfiguration = complicationConfiguration;

  v7 = +[NTKSafeHashTable weakObjectsHashTable];
  fvcObservers = self->_fvcObservers;
  self->_fvcObservers = v7;

  v9 = [NTKSafeHashTable hashTableWithOptions:517];
  observers = self->_observers;
  self->_observers = v9;

  _complicationSlotDescriptors = [(NTKFace *)self _complicationSlotDescriptors];
  complicationSlotDescriptors = self->_complicationSlotDescriptors;
  self->_complicationSlotDescriptors = _complicationSlotDescriptors;

  self->_mostRecentEditMode = 0;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selectedSlotsByEditMode = self->_selectedSlotsByEditMode;
  self->_selectedSlotsByEditMode = v13;

  v15 = objc_alloc_init(NTKFaceConfiguration);
  configuration = self->_configuration;
  self->_configuration = v15;

  [(NTKFace *)self _selectDefaultSlots];
}

- (id)_initWithFaceStyle:(int64_t)style forDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = NTKFace;
  v8 = [(NTKFace *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_faceStyle = style;
    objc_storeStrong(&v8->_device, device);
    [(NTKFace *)v9 _commonInit];
    [(NTKFace *)v9 toggleComplicationChangeObservation:1];
  }

  return v9;
}

- (void)dealloc
{
  [(NTKFace *)self _deleteResourceDirectoryIfOwned];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"NTKRemoteComplicationProviderComplicationsDidChange" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"NTKComplicationDidChangeNotification" object:0];

  v5.receiver = self;
  v5.super_class = NTKFace;
  [(NTKFace *)&v5 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ [%@] [resources=%@]", v5, self->_configuration, self->_resourceDirectory];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = NTKFace;
  return [(NTKFace *)&v4 isEqual:equal];
}

- (void)toggleComplicationChangeObservation:(BOOL)observation
{
  observationCopy = observation;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"NTKRemoteComplicationProviderComplicationsDidChange" object:0];
  [defaultCenter removeObserver:self name:@"NTKComplicationDidChangeNotification" object:0];
  if (observationCopy)
  {
    [defaultCenter addObserver:self selector:sel__handleComplicationChangeNotification name:@"NTKRemoteComplicationProviderComplicationsDidChange" object:0];
    [defaultCenter addObserver:self selector:sel__handleComplicationChangeNotification name:@"NTKWidgetComplicationProviderComplicationsDidChange" object:0];
    [defaultCenter addObserver:self selector:sel__handleSingleComplicationDidChangeNotification_ name:@"NTKComplicationDidChangeNotification" object:0];
    v5 = [NTKComplicationProvider providerForDevice:self->_device];
    [v5 registerObserver:self];
  }

  else
  {
    v5 = [NTKComplicationProvider providerForDevice:self->_device];
    [v5 unregisterObserver:self];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 24;
  if (isKindOfClass)
  {
    v5 = 16;
  }

  [*(&self->super.isa + v5) addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 24;
  if (isKindOfClass)
  {
    v5 = 16;
  }

  [*(&self->super.isa + v5) removeObject:observerCopy];
}

- (void)setResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if (self->_resourceDirectoryIsOwned || (NTKEqualStrings(directoryCopy, self->_resourceDirectory) & 1) == 0)
  {
    [(NTKFace *)self _deleteResourceDirectoryIfOwned];
    [(NTKFace *)self _setResourceDirectory:directoryCopy];
  }
}

- (void)setResourceDirectoryByTransferringOwnership:(id)ownership
{
  v21 = *MEMORY[0x277D85DE8];
  ownershipCopy = ownership;
  v5 = ownershipCopy;
  if (!self->_resourceDirectoryIsOwned || (NTKEqualStrings(ownershipCopy, self->_resourceDirectory) & 1) == 0)
  {
    [(NTKFace *)self _deleteResourceDirectoryIfOwned];
    if (v5)
    {
      _linkedResourceRootDirectory = [objc_opt_class() _linkedResourceRootDirectory];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v9 = [_linkedResourceRootDirectory stringByAppendingPathComponent:uUIDString];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v14 = 0;
      LODWORD(uUIDString) = [defaultManager copyItemAtPath:v5 toPath:v9 error:&v14];
      v11 = v14;

      if (uUIDString)
      {
        self->_resourceDirectoryIsOwned = 1;
      }

      else
      {
        v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [(NTKFace *)self description];
          *buf = 138412802;
          v16 = v5;
          v17 = 2112;
          v18 = v13;
          v19 = 2112;
          v20 = v11;
          _os_log_error_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_ERROR, "Failed to copy face directory “%@” for face “%@”: %@", buf, 0x20u);
        }

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    [(NTKFace *)self _setResourceDirectory:v9];
  }
}

- (void)setComplicationSlotDescriptors:(id)descriptors
{
  objc_storeStrong(&self->_complicationSlotDescriptors, descriptors);

  [(NTKFace *)self _selectDefaultSlots];
}

- (void)_deleteResourceDirectoryIfOwned
{
  if (self->_resourceDirectoryIsOwned)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:self->_resourceDirectory error:0];

    resourceDirectory = self->_resourceDirectory;
    self->_resourceDirectory = 0;

    self->_resourceDirectoryIsOwned = 0;
  }
}

- (void)_setResourceDirectory:(id)directory
{
  resourceDirectory = self->_resourceDirectory;
  directoryCopy = directory;
  v8 = [(NSString *)resourceDirectory copy];
  v6 = [directoryCopy copy];

  v7 = self->_resourceDirectory;
  self->_resourceDirectory = v6;

  [(NTKFaceConfiguration *)self->_configuration setResourceDirectoryExists:self->_resourceDirectory != 0];
  [(NTKFace *)self _updateForResourceDirectoryChange:v8];
  [(NTKFace *)self _notifyObserversFaceResourceDirectoryDidChange];
}

- (void)_notifyObserversThatRespondToSelector:(SEL)selector callSelector:(id)callSelector
{
  v32 = *MEMORY[0x277D85DE8];
  callSelectorCopy = callSelector;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__NTKFace__notifyObserversThatRespondToSelector_callSelector___block_invoke;
  aBlock[3] = &unk_278783458;
  selectorCopy = selector;
  v7 = callSelectorCopy;
  v28 = v7;
  v8 = _Block_copy(aBlock);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allObjects = [(NTKSafeHashTable *)self->_fvcObservers allObjects];
  v10 = [allObjects countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v8[2](v8, *(*(&v23 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [allObjects countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allObjects2 = [(NTKSafeHashTable *)self->_observers allObjects];
  v15 = [allObjects2 countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(allObjects2);
        }

        v8[2](v8, *(*(&v19 + 1) + 8 * v18++));
      }

      while (v16 != v18);
      v16 = [allObjects2 countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v16);
  }
}

void __62__NTKFace__notifyObserversThatRespondToSelector_callSelector___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_notifyObserversFaceConfigurationDidChange
{
  if (self->_suppressingConfigurationChangeNotifications)
  {
    self->_configurationChangedWhileSuppressingNotifications = 1;
  }

  else
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__NTKFace__notifyObserversFaceConfigurationDidChange__block_invoke;
    v4[3] = &unk_278783480;
    v4[4] = self;
    [(NTKFace *)self _notifyObserversThatRespondToSelector:sel_faceConfigurationDidChange_ callSelector:v4];
  }
}

- (void)_notifyObserversOptionsDidChangeForEditMode:(int64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__NTKFace__notifyObserversOptionsDidChangeForEditMode___block_invoke;
  v3[3] = &unk_2787834A8;
  v3[4] = self;
  v3[5] = mode;
  [(NTKFace *)self _notifyObserversThatRespondToSelector:sel_face_didChangeOptionsForEditMode_ callSelector:v3];
}

- (void)_notifyObserversComplicationDidChangeForSlot:(id)slot
{
  slotCopy = slot;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NTKFace__notifyObserversComplicationDidChangeForSlot___block_invoke;
  v6[3] = &unk_2787834D0;
  v6[4] = self;
  v7 = slotCopy;
  v5 = slotCopy;
  [(NTKFace *)self _notifyObserversThatRespondToSelector:sel_face_didChangeComplicationForSlot_ callSelector:v6];
}

- (void)_notifyObserversFaceResourceDirectoryDidChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__NTKFace__notifyObserversFaceResourceDirectoryDidChange__block_invoke;
  v2[3] = &unk_278783480;
  v2[4] = self;
  [(NTKFace *)self _notifyObserversThatRespondToSelector:sel_faceResourceDirectoryDidChange_ callSelector:v2];
}

- (void)_notifyObserversFaceTimeStyleChanged
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__NTKFace__notifyObserversFaceTimeStyleChanged__block_invoke;
  v2[3] = &unk_278783480;
  v2[4] = self;
  [(NTKFace *)self _notifyObserversThatRespondToSelector:sel_faceDidChangeTimeStyle_ callSelector:v2];
}

- (void)_notifyObserversFaceUpgradeOccurred
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__NTKFace__notifyObserversFaceUpgradeOccurred__block_invoke;
  v2[3] = &unk_278783480;
  v2[4] = self;
  [(NTKFace *)self _notifyObserversThatRespondToSelector:sel_faceUpgradeOccurred_ callSelector:v2];
}

- (BOOL)_shouldHideUI
{
  uiSensitivity = [ViewClassForFace(self) uiSensitivity];
  mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
  LOBYTE(uiSensitivity) = [mEMORY[0x277CBBB70] shouldHideForSensitivity:uiSensitivity];

  return uiSensitivity;
}

- (NSString)dailySnapshotKey
{
  unsafeDailySnapshotKey = [(NTKFace *)self unsafeDailySnapshotKey];
  v3 = NTKSanitizedFileNameFromStableIdentifier(unsafeDailySnapshotKey);

  return v3;
}

- (NSString)unadornedSnapshotKey
{
  unsafeDailySnapshotKey = [(NTKFace *)self unsafeDailySnapshotKey];
  v3 = [@"unadorned" stringByAppendingString:unsafeDailySnapshotKey];

  v4 = NTKSanitizedFileNameFromStableIdentifier(v3);

  return v4;
}

- (NSString)unsafeDailySnapshotKey
{
  v41 = *MEMORY[0x277D85DE8];
  if ([(NTKFace *)self _shouldHideUI])
  {
    v3 = @"sensitive";
  }

  else
  {
    v4 = MEMORY[0x277CCAB68];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_faceStyle];
    v6 = [v4 stringWithFormat:@"face%@", v5];

    [(NTKFaceConfiguration *)self->_configuration appendEditModesToDailySnapshotKey:v6];
    if ([(NSDictionary *)self->_complicationSlotDescriptors count])
    {
      [v6 appendString:@"-"];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [(NTKFace *)self _sortedComplicationSlots];
      v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v36;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v36 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v35 + 1) + 8 * i);
            v12 = [(NTKFace *)self complicationForSlot:v11];
            objc_msgSend(v6, "appendString:", @"(");
            v13 = [MEMORY[0x277CCABB0] numberWithInteger:{NTKPrintableComplicationType(objc_msgSend(v12, "complicationType"))}];
            [v6 appendFormat:@"%@", v13];

            v14 = [(NTKFace *)self preferredComplicationFamilyForComplication:v12 withSlot:v11];
            device = [(NTKFace *)self device];
            v16 = [v12 customDailySnapshotKeyForFamily:v14 device:device];
            v17 = v16;
            if (v16)
            {
              [v6 appendFormat:@"-%@", v16];
            }

            [v6 appendString:@""]);
          }

          v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v8);
      }
    }

    if ([(NTKFace *)self complicationExistenceInvalidatesSnapshot])
    {
      objc_msgSend(v6, "appendString:", @"-(");
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      _sortedComplicationSlots = [(NTKFace *)self _sortedComplicationSlots];
      v19 = [_sortedComplicationSlots countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(_sortedComplicationSlots);
            }

            v23 = *(*(&v31 + 1) + 8 * j);
            v24 = [(NTKFace *)self complicationForSlot:v23];
            if ([v24 complicationType])
            {
              [v6 appendString:v23];
            }
          }

          v20 = [_sortedComplicationSlots countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v20);
      }

      [v6 appendString:@""]);
    }

    [v6 appendFormat:@"-(%lu)", -[CLKDevice sizeClass](self->_device, "sizeClass")];
    _resourceDirectorySnapshotKey = [(NTKFace *)self _resourceDirectorySnapshotKey];
    v26 = _resourceDirectorySnapshotKey;
    if (_resourceDirectorySnapshotKey)
    {
      [v6 appendFormat:@"-%@", _resourceDirectorySnapshotKey];
    }

    device2 = [(NTKFace *)self device];
    v28 = NTKMonochromeComplicationsEnabledForDevice();

    if (v28)
    {
      [v6 appendString:@"-mc"];
    }

    [(NTKFaceConfiguration *)self->_configuration appendCustomDataToDailySnapshotKey:v6];
    v3 = [v6 copy];
  }

  return v3;
}

- (BOOL)complicationExistenceInvalidatesSnapshot
{
  complicationConfiguration = [(NTKFace *)self complicationConfiguration];

  if (!complicationConfiguration)
  {
    return 0;
  }

  complicationConfiguration2 = [(NTKFace *)self complicationConfiguration];
  complicationExistenceInvalidatesSnapshot = [complicationConfiguration2 complicationExistenceInvalidatesSnapshot];

  return complicationExistenceInvalidatesSnapshot;
}

- (NSString)name
{
  name = [(NTKFaceConfiguration *)self->_configuration name];
  v4 = name;
  if (name)
  {
    _defaultName = name;
  }

  else
  {
    _defaultName = [(NTKFace *)self _defaultName];
  }

  v6 = _defaultName;

  return v6;
}

- (void)setName:(id)name
{
  nameCopy = name;
  name = [(NTKFaceConfiguration *)self->_configuration name];
  v5 = [nameCopy isEqualToString:name];

  if ((v5 & 1) == 0)
  {
    [(NTKFaceConfiguration *)self->_configuration setName:nameCopy];
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (id)selectedOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v7 = [(NTKFaceConfiguration *)self->_configuration optionForCustomEditMode:mode slot:slotCopy];
  if (v7)
  {
    v8 = v7;
    v9 = [(NTKFace *)self _validOptionForOption:v7 mode:mode slot:slotCopy configuration:self->_configuration];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v10 = [(NTKFace *)self replacedOptionWithFulfilledOption:option forEditMode:mode slot:slotCopy];
  v9 = [(NTKFaceConfiguration *)self->_configuration optionForCustomEditMode:mode slot:slotCopy];
  [(NTKFaceConfiguration *)self->_configuration setOption:v10 forCustomEditMode:mode slot:slotCopy];
  if ((NTKEqualObjects(v10, v9) & 1) == 0)
  {
    [(NTKFace *)self _noteOptionChangedFrom:v9 to:v10 forCustomEditMode:mode slot:slotCopy];
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (void)selectOptions:(id)options forCustomEditMode:(int64_t)mode
{
  optionsCopy = options;
  v7 = self->_configuration;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __43__NTKFace_selectOptions_forCustomEditMode___block_invoke;
  v12 = &unk_2787834F8;
  v8 = v7;
  v13 = v8;
  selfCopy = self;
  v15 = &v17;
  modeCopy = mode;
  [optionsCopy enumerateKeysAndObjectsUsingBlock:&v9];
  if (*(v18 + 24) == 1)
  {
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange:v9];
  }

  _Block_object_dispose(&v17, 8);
}

void __43__NTKFace_selectOptions_forCustomEditMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) optionForCustomEditMode:*(a1 + 56) slot:v7];
  [*(a1 + 32) setOption:v5 forCustomEditMode:*(a1 + 56) slot:v7];
  if ((NTKEqualObjects(v5, v6) & 1) == 0)
  {
    [*(a1 + 40) _noteOptionChangedFrom:v6 to:v5 forCustomEditMode:*(a1 + 56) slot:v7];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    pigmentOptionProvider = [(NTKFace *)self pigmentOptionProvider];
    v8 = [pigmentOptionProvider defaultColorOptionForSlot:slotCopy];
  }

  else
  {
    v8 = [(NTKFace *)self _defaultOptionForCustomEditMode:mode slot:slotCopy];
  }

  return v8;
}

+ (id)localizedNameForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  v5 = [self _localizedNameOverrideForCustomEditMode:mode forDevice:device];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = NTKLocalizedNameForCustomEditMode(mode);
  }

  v8 = v7;

  return v8;
}

- (id)selectedSlotOptionsForCustomEditMode:(int64_t)mode
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__NTKFace_selectedSlotOptionsForCustomEditMode___block_invoke;
  v10[3] = &unk_278783520;
  v10[4] = self;
  modeCopy = mode;
  v6 = dictionary;
  v11 = v6;
  [(NTKFace *)self enumerateSlotsForCustomEditMode:mode withBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __48__NTKFace_selectedSlotOptionsForCustomEditMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectedOptionForCustomEditMode:*(a1 + 48) slot:v3];
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) defaultOptionForCustomEditMode:*(a1 + 48) slot:v3];
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __48__NTKFace_selectedSlotOptionsForCustomEditMode___block_invoke_cold_1();
  }

  if (v4)
  {
LABEL_5:
    [*(a1 + 40) setObject:v4 forKey:v3];
  }
}

- (id)selectedOptionsForCustomEditModes
{
  v49 = *MEMORY[0x277D85DE8];
  editModes = [(NTKFace *)self editModes];
  v29 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = editModes;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v48 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v31;
    *&v6 = 138413826;
    v22 = v6;
    v28 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        integerValue = [v10 integerValue];
        if (integerValue != 1)
        {
          v12 = integerValue;
          v13 = [(NTKFace *)self slotsForCustomEditMode:integerValue];
          firstObject = [v13 firstObject];
          device = [(NTKFace *)self selectedOptionForCustomEditMode:v12 slot:firstObject];
          if (device)
          {
            goto LABEL_11;
          }

          device = [(NTKFace *)self defaultOptionForCustomEditMode:v12 slot:firstObject];
          v16 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = objc_opt_class();
            v26 = NSStringFromClass(v19);
            *buf = 138412546;
            v35 = v26;
            v36 = 2048;
            v37 = v12;
            _os_log_error_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_ERROR, "MISSING SELECTION FOR AN EDIT OPTION (face: %@, editMode: %ld). falling back to default edit option.", buf, 0x16u);
          }

          v4 = v28;
          if (device)
          {
LABEL_11:
            [v29 setObject:device forKey:v10];
          }

          else
          {
            device = [(NTKFace *)self device];
            faceDescriptor = [(NTKFace *)self faceDescriptor];
            v18 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              v27 = NTKFaceBundleStringFromCustomEditMode(v12);
              v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(device, "isRunningGraceOrLater")}];
              pdrDevice = [device pdrDevice];
              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(device, "pdrDeviceVersion")}];
              *buf = v22;
              v35 = v27;
              v36 = 2048;
              v37 = v12;
              v38 = 2112;
              v39 = faceDescriptor;
              v40 = 2112;
              v41 = device;
              v42 = 2112;
              v43 = v24;
              v44 = 2112;
              v45 = pdrDevice;
              v46 = 2112;
              v47 = v23;
              _os_log_fault_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_FAULT, "Rare Clock Bug: Edit Mode %@ (%ld) has a bad default option for face %@:\n<<<Face>>> CLKDevice <%@>, isRunningGraceOrLater <%@>, PDRDevice <%@>, PDRDeviceVersion <%@>", buf, 0x48u);
            }

            v4 = v28;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v20 = [v4 countByEnumeratingWithState:&v30 objects:v48 count:16];
      v7 = v20;
    }

    while (v20);
  }

  return v29;
}

- (id)nameOfSelectedOptionForCustomEditMode:(int64_t)mode
{
  v5 = [(NTKFace *)self slotsForCustomEditMode:?];
  firstObject = [v5 firstObject];
  v7 = [(NTKFace *)self selectedOptionForCustomEditMode:mode slot:firstObject];
  localizedName = [v7 localizedName];

  return localizedName;
}

- (id)namesOfSelectedOptionsForCustomEditModes
{
  v18 = *MEMORY[0x277D85DE8];
  editModes = [(NTKFace *)self editModes];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = editModes;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        integerValue = [*(*(&v13 + 1) + 8 * i) integerValue];
        if (integerValue != 1)
        {
          v11 = [(NTKFace *)self nameOfSelectedOptionForCustomEditMode:integerValue];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)setCustomData:(id)data forKey:(id)key
{
  configuration = self->_configuration;
  keyCopy = key;
  dataCopy = data;
  v9 = [(NTKFaceConfiguration *)configuration customDataForKey:keyCopy];
  [(NTKFaceConfiguration *)self->_configuration setCustomData:dataCopy forKey:keyCopy];

  LOBYTE(configuration) = NTKEqualObjects(v9, dataCopy);
  if ((configuration & 1) == 0)
  {
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (id)editOptionsForCustomEditModes
{
  v28 = *MEMORY[0x277D85DE8];
  editModes = [(NTKFace *)self editModes];
  v4 = [editModes mutableCopy];

  [v4 removeObject:&unk_2841832E0];
  v19 = [v4 count];
  if (v19)
  {
    [(NTKFace *)self prepareEditOptions];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  v5 = 0;
  if (v22)
  {
    v21 = *v24;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v23 + 1) + 8 * i) integerValue];
        v8 = [(NTKFace *)self _editOptionsForEditMode:integerValue slot:0];
        if ([v8 count])
        {
          if (!v5)
          {
            v5 = objc_opt_new();
          }

          v9 = [(NTKFace *)self _collectionTypeForEditMode:integerValue];
          v10 = objc_opt_class();
          device = [(NTKFace *)self device];
          v12 = [v10 localizedNameForCustomEditMode:integerValue forDevice:device];
          v13 = [NTKEditOptionCollection editOptionCollectionWithEditMode:integerValue localizedName:v12 options:v8 collectionType:v9];

          device2 = [(NTKFace *)self device];
          v15 = [v13 filteredCollectionForDevice:device2];

          if ([(NTKFace *)self dynamicEditMode]!= integerValue)
          {
            [v5 addObject:v15];
          }

          if (v9 == 5 && [(NTKFace *)self numberOfDynamicSections])
          {
            v16 = 0;
            do
            {
              v17 = [(NTKFace *)self newDynamicEditOptionCollectionForSection:v16];
              [v5 addObject:v17];

              ++v16;
            }

            while (v16 < [(NTKFace *)self numberOfDynamicSections]);
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v22);
  }

  if (v19)
  {
    [(NTKFace *)self cleanupEditOptions];
  }

  return v5;
}

- (id)_editOptionsForEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v7 = slotCopy;
  if (slotCopy)
  {
    firstObject = slotCopy;
  }

  else
  {
    v9 = [(NTKFace *)self slotsForCustomEditMode:mode];
    firstObject = [v9 firstObject];
  }

  v10 = [(NTKFace *)self numberOfOptionsForCustomEditMode:mode slot:v7];
  if (v10)
  {
    v11 = v10;
    if (mode == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
    {
      pigmentOptionProvider = [(NTKFace *)self pigmentOptionProvider];
      v13 = [pigmentOptionProvider availableColorsForSlot:v7];
      array = [v13 array];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      for (i = 0; i != v11; ++i)
      {
        v16 = [(NTKFace *)self optionAtIndex:i forCustomEditMode:mode slot:v7];
        [array addObject:v16];
      }
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (unint64_t)_collectionTypeForEditMode:(int64_t)mode
{
  v5 = objc_opt_class();
  device = [(NTKFace *)self device];
  LOBYTE(v5) = [v5 customEditModeIsColor:mode forDevice:device];

  if (v5)
  {
    return 1;
  }

  v8 = objc_opt_class();
  device2 = [(NTKFace *)self device];
  LOBYTE(v8) = [v8 customEditModeIsRows:mode forDevice:device2];

  if (v8)
  {
    return 2;
  }

  v10 = objc_opt_class();
  device3 = [(NTKFace *)self device];
  LOBYTE(v10) = [v10 customEditModeIsShowSeconds:mode forDevice:device3];

  if (v10)
  {
    return 3;
  }

  v12 = objc_opt_class();
  device4 = [(NTKFace *)self device];
  v14 = [v12 customEditModeDeterminesDynamicSections:mode forDevice:device4];

  if (v14)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (id)newDynamicEditOptionCollectionForSection:(unint64_t)section
{
  dynamicEditMode = [(NTKFace *)self dynamicEditMode];
  v6 = [(NTKFace *)self slotsForCustomEditMode:dynamicEditMode];
  if ([v6 count] <= section)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:section];
  }

  v8 = [(NTKFace *)self localizedNameForDynamicSectionCustomEditMode:dynamicEditMode slot:v7];
  v9 = [NTKEditOptionCollection alloc];
  v10 = [(NTKFace *)self _editOptionsForEditMode:dynamicEditMode slot:v7];
  v11 = [(NTKEditOptionCollection *)v9 initWithEditMode:dynamicEditMode localizedName:v8 options:v10 collectionType:[(NTKFace *)self _collectionTypeForEditMode:dynamicEditMode] slot:v7];

  return v11;
}

- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = objc_opt_class();
  device = [(NTKFace *)self device];
  v8 = [v6 localizedNameForCustomEditMode:mode forDevice:device];

  return v8;
}

- (id)complicationForSlot:(id)slot
{
  v3 = [(NTKFaceConfiguration *)self->_configuration complicationForSlot:slot];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NTKComplication nullComplication];
  }

  v6 = v5;

  return v6;
}

- (void)setComplication:(id)complication forSlot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  if (!complicationCopy)
  {
    complicationCopy = +[NTKComplication nullComplication];
  }

  v7 = [(NTKFace *)self complicationForSlot:slotCopy];
  if ((NTKEqualObjects(complicationCopy, v7) & 1) == 0)
  {
    [(NTKFaceConfiguration *)self->_configuration setComplication:complicationCopy forSlot:slotCopy];
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
    [(NTKFace *)self _notifyObserversComplicationDidChangeForSlot:slotCopy];
  }
}

- (void)setComplicationsForSlots:(id)slots
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__NTKFace_setComplicationsForSlots___block_invoke;
  v3[3] = &unk_278780708;
  v3[4] = self;
  [slots enumerateKeysAndObjectsUsingBlock:v3];
}

+ (void)enumerateComplicationSlots:(id)slots withBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  slotsCopy = slots;
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = slotsCopy;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11), &v16);
      if (v16)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (void)enumerateComplicationSlotsWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_class();
  _orderedComplicationSlots = [self _orderedComplicationSlots];
  [v5 enumerateComplicationSlots:_orderedComplicationSlots withBlock:blockCopy];
}

- (void)enumerateComplicationSlotsWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_class();
  _allComplications = [(NTKFace *)self _allComplications];
  [v5 enumerateComplicationSlots:_allComplications withBlock:blockCopy];
}

- (void)enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allVisibleComplicationsForCurrentConfiguration = [(NTKFace *)self allVisibleComplicationsForCurrentConfiguration];
  v6 = [allVisibleComplicationsForCurrentConfiguration countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(allVisibleComplicationsForCurrentConfiguration);
      }

      blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allVisibleComplicationsForCurrentConfiguration countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)_allComplications
{
  _orderedComplicationSlots = [(NTKFace *)self _orderedComplicationSlots];
  v4 = _orderedComplicationSlots;
  if (!_orderedComplicationSlots)
  {
    _orderedComplicationSlots = MEMORY[0x277CBEBF8];
  }

  v5 = [_orderedComplicationSlots mutableCopy];

  allKeys = [(NSDictionary *)self->_complicationSlotDescriptors allKeys];
  if (allKeys)
  {
    v7 = [MEMORY[0x277CBEB58] setWithArray:allKeys];
    v8 = [MEMORY[0x277CBEB98] setWithArray:v5];
    [v7 minusSet:v8];
    allObjects = [v7 allObjects];
    [v5 addObjectsFromArray:allObjects];
  }

  return v5;
}

- (id)allVisibleComplicationsForCurrentConfiguration
{
  _allComplications = [(NTKFace *)self _allComplications];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__33;
  v23 = __Block_byref_object_dispose__33;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  editOptionThatHidesAllComplications = [(NTKFace *)self editOptionThatHidesAllComplications];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NTKFace_allVisibleComplicationsForCurrentConfiguration__block_invoke;
  v10[3] = &unk_278783548;
  v10[4] = self;
  v13 = &v15;
  v5 = editOptionThatHidesAllComplications;
  v11 = v5;
  v14 = &v19;
  v6 = _allComplications;
  v12 = v6;
  [(NTKFace *)self enumerateCustomEditModesWithBlock:v10];
  if (v16[3])
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if ([v20[5] count])
    {
      v8 = [v6 arrayByExcludingObjectsInArray:v20[5]];
    }

    else
    {
      v8 = v6;
    }

    v7 = v8;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

void __57__NTKFace_allVisibleComplicationsForCurrentConfiguration__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = [*(a1 + 32) selectedOptionForCustomEditMode:a2 slot:0];
  *(*(*(a1 + 56) + 8) + 24) = [v12 isEqual:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) selectedOptionForCustomEditMode:a2 slot:0];
    v7 = [*(a1 + 32) complicationSlotsHiddenByEditOption:v6];
    if ([v7 count])
    {
      v8 = *(*(*(a1 + 64) + 8) + 40);
      if (!v8)
      {
        v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
        v10 = *(*(a1 + 64) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = *(*(*(a1 + 64) + 8) + 40);
      }

      [v8 addObjectsFromArray:v7];
    }
  }
}

- (BOOL)isFullscreenConfiguration
{
  allVisibleComplicationsForCurrentConfiguration = [(NTKFace *)self allVisibleComplicationsForCurrentConfiguration];
  v3 = allVisibleComplicationsForCurrentConfiguration == 0;

  return v3;
}

- (int64_t)preferredComplicationFamilyForComplication:(id)complication withSlot:(id)slot
{
  v33 = *MEMORY[0x277D85DE8];
  complicationCopy = complication;
  slotCopy = slot;
  integerValue = [(NTKFace *)self customComplicationFamilyForComplication:complicationCopy slot:slotCopy];
  if (integerValue == *MEMORY[0x277CBB678])
  {
    v9 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:slotCopy];
    familiesRankedList = [v9 familiesRankedList];
    if ([complicationCopy complicationType])
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      firstObject = familiesRankedList;
      v12 = [firstObject countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
LABEL_5:
        v15 = 0;
        while (1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(firstObject);
          }

          integerValue = [*(*(&v27 + 1) + 8 * v15) integerValue];
          if ([v9 allowsFamily:integerValue inFace:self])
          {
            if ([(NTKFace *)self _complication:complicationCopy supportsFamily:integerValue inSlot:slotCopy])
            {
              goto LABEL_26;
            }
          }

          if (v13 == ++v15)
          {
            v13 = [firstObject countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v13)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v16 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [NTKFace preferredComplicationFamilyForComplication:withSlot:];
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      firstObject = firstObject;
      v17 = [firstObject countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v24;
LABEL_16:
        v20 = 0;
        while (1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(firstObject);
          }

          integerValue = [*(*(&v23 + 1) + 8 * v20) integerValue];
          if ([v9 allowsFamily:integerValue inFace:self])
          {
            goto LABEL_26;
          }

          if (v18 == ++v20)
          {
            v18 = [firstObject countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v18)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }

      v21 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [NTKFace preferredComplicationFamilyForComplication:withSlot:];
      }
    }

    firstObject = [familiesRankedList firstObject];
    integerValue = [firstObject integerValue];
LABEL_26:
  }

  return integerValue;
}

- (BOOL)_complication:(id)_complication supportsFamily:(int64_t)family inSlot:(id)slot
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  slotCopy = slot;
  _complicationCopy = _complication;
  v11 = [v8 numberWithInteger:family];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  LOBYTE(family) = [(NTKFace *)self _complication:_complicationCopy supportsFamilies:v12 inSlot:slotCopy];

  return family;
}

- (BOOL)_complication:(id)_complication supportsFamilies:(id)families inSlot:(id)slot
{
  _complicationCopy = _complication;
  familiesCopy = families;
  slotCopy = slot;
  v11 = _complicationCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), objc_opt_isKindOfClass(), -[NTKFace customComplication:supportsFamilies:forSlot:](self, "customComplication:supportsFamilies:forSlot:", v11, familiesCopy, slotCopy)) || [v11 isMemberOfClass:objc_opt_class()] && !objc_msgSend(v11, "complicationType"))
  {
    v12 = 1;
  }

  else
  {
    device = [(NTKFace *)self device];
    v15 = [NTKComplicationProvider providerForDevice:device];
    v12 = [v15 isComplicationAvailable:v11 forFamilies:familiesCopy];
  }

  return v12;
}

- (id)complicationVariantForComplication:(id)complication withSlot:(id)slot
{
  v5 = [(NTKFace *)self preferredComplicationFamilyForComplication:complication withSlot:slot];
  device = self->_device;

  return [NTKComplicationVariant defaultVariantForFamily:v5 device:device];
}

- (id)rankedComplicationFamiliesForSlot:(id)slot
{
  v3 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:slot];
  familiesRankedList = [v3 familiesRankedList];

  return familiesRankedList;
}

- (BOOL)slot:(id)slot supportsFamiliesOfComplications:(id)complications
{
  slotCopy = slot;
  complicationsCopy = complications;
  v8 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:slotCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 supportsFamiliesOfComplications:complicationsCopy inFace:self forSlot:slotCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allowedComplicationTypesFromDescriptors:(id)descriptors slot:(id)slot
{
  v6 = MEMORY[0x277CCAB58];
  slotCopy = slot;
  descriptorsCopy = descriptors;
  indexSet = [v6 indexSet];
  v10 = [descriptorsCopy objectForKey:slotCopy];

  possibleTypes = [v10 possibleTypes];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__NTKFace_allowedComplicationTypesFromDescriptors_slot___block_invoke;
  v16[3] = &unk_278783570;
  v17 = v10;
  selfCopy = self;
  v19 = indexSet;
  v12 = indexSet;
  v13 = v10;
  [possibleTypes enumerateIndexesUsingBlock:v16];
  v14 = [v12 copy];

  return v14;
}

void __56__NTKFace_allowedComplicationTypesFromDescriptors_slot___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) allowsType:a2 inFace:*(a1 + 40)])
  {
    v4 = +[NTKFace _complicationTypeMigrations];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = *(a1 + 48);

      [v7 addIndex:a2];
    }
  }
}

+ (id)possibleComplicationTypesForSlot:(id)slot
{
  slotCopy = slot;
  _complicationSlotDescriptors = [self _complicationSlotDescriptors];
  v6 = [_complicationSlotDescriptors objectForKey:slotCopy];

  possibleTypes = [v6 possibleTypes];

  return possibleTypes;
}

- (id)possibleComplicationTypesForSlot:(id)slot
{
  v3 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:slot];
  possibleTypes = [v3 possibleTypes];

  return possibleTypes;
}

- (id)_complicationProviderOptionsForSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NTKFace *)self allowedComplicationTypesForSlot:slotCopy];
  v6 = [v5 mutableCopy];

  [v6 addIndex:0];
  v7 = NTKLunarCalendarLocaleID();

  if (!v7)
  {
    [v6 removeIndex:16];
  }

  v8 = objc_opt_class();
  device = [(NTKFace *)self device];
  v10 = [v8 _dateComplicationSlotForDevice:device];
  v11 = [slotCopy isEqualToString:v10];

  v12 = objc_opt_new();
  if ([v6 containsIndex:1] && v11)
  {
    v13 = objc_opt_class();
    device2 = [(NTKFace *)self device];
    v15 = [v13 _dateComplicationSlotSupportedStylesForDevice:device2];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__NTKFace__complicationProviderOptionsForSlot___block_invoke;
    v20[3] = &unk_2787813B0;
    v21 = v12;
    NTKEnumerateDateStyles(v15, v20);
  }

  v16 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:slotCopy];
  v17 = objc_opt_new();
  [v17 setAllowedComplicationTypes:v6];
  [v17 setLocationStyle:1];
  familiesRankedList = [v16 familiesRankedList];
  [v17 setRankedFamilies:familiesRankedList];
  [v17 setSupportedDateStyles:v12];
  [v17 setAllowGenericDateComplication:{((v11 | -[NTKFace _migrationExistsForComplicationType:rankedFamilies:](self, "_migrationExistsForComplicationType:rankedFamilies:", 1, familiesRankedList)) & 1) == 0}];

  return v17;
}

void __47__NTKFace__complicationProviderOptionsForSlot___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

- (BOOL)_migrationExistsForComplicationType:(unint64_t)type rankedFamilies:(id)families
{
  familiesCopy = families;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__NTKFace__migrationExistsForComplicationType_rankedFamilies___block_invoke;
  v8[3] = &unk_278780970;
  v8[5] = &v9;
  v8[6] = type;
  v8[4] = self;
  [familiesCopy enumerateObjectsUsingBlock:v8];
  LOBYTE(type) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return type;
}

void __62__NTKFace__migrationExistsForComplicationType_rankedFamilies___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  v7 = +[NTKBundleComplicationMigrationProvider cachedInstance];
  v8 = [v7 migratedComplicationFromType:a1[6] family:v6 device:*(a1[4] + 104)];

  if (v8)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)allowedComplicationsForSlot:(id)slot includingComplication:(id)complication
{
  slotCopy = slot;
  complicationCopy = complication;
  v8 = [(NTKFace *)self _complicationProviderOptionsForSlot:slotCopy];
  device = [(NTKFace *)self device];
  v10 = [NTKComplicationProvider providerForDevice:device];

  v11 = [v10 complicationsWithOptions:v8];
  v12 = [v11 mutableCopy];

  v13 = [(NTKFace *)self customComplicationsForSlot:slotCopy];
  if (v13)
  {
    [v12 addObjectsFromArray:v13];
  }

  v14 = [(NTKFace *)self complicationForSlot:slotCopy];
  if (([v12 containsObject:v14] & 1) == 0)
  {
    [v10 appendOrReplaceConfigurableDefaultComplication:v14 toComplications:v12];
  }

  if (complicationCopy && ([v12 containsObject:complicationCopy] & 1) == 0)
  {
    v15 = objc_opt_class();
    device2 = [(NTKFace *)self device];
    v17 = [v15 _dateComplicationSlotForDevice:device2];
    if ([slotCopy isEqualToString:v17])
    {
    }

    else
    {
      v24 = objc_opt_class();
      device3 = [(NTKFace *)self device];
      [v24 _monogramComplicationSlotForDevice:device3];
      v18 = v25 = device2;
      v23 = [slotCopy isEqualToString:v18];

      if ((v23 & 1) == 0)
      {
        v19 = [(NTKFace *)self possibleComplicationTypesForSlot:slotCopy];
        v20 = [v19 containsIndex:{objc_msgSend(complicationCopy, "complicationType")}];

        if (v20)
        {
          [v12 addObject:complicationCopy];
        }
      }
    }
  }

  return v12;
}

- (id)_disabledComplicationTypesIndexSet
{
  v2 = [NTKComplicationProvider providerForDevice:self->_device];
  disabledComplicationTypes = [v2 disabledComplicationTypes];

  return disabledComplicationTypes;
}

- (void)_handleComplicationChangeNotification
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    selfCopy = self;
    v7 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling complication change", &v5, 0x16u);
  }

  [(NTKFace *)self _complicationsDidChange];
  objc_autoreleasePoolPop(v3);
}

- (void)_handleSingleComplicationDidChangeNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling single complication change", buf, 0x16u);
  }

  if ((NTKIsDaemonOrFaceSnapshotService() & 1) == 0)
  {
    object = [notificationCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      object2 = [notificationCopy object];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __58__NTKFace__handleSingleComplicationDidChangeNotification___block_invoke;
      v10[3] = &unk_27877F498;
      v10[4] = self;
      v11 = object2;
      v9 = object2;
      [(NTKFace *)self enumerateComplicationSlotsWithBlock:v10];
    }
  }
}

void __58__NTKFace__handleSingleComplicationDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) complicationForSlot:?];
  v4 = v3;
  if (v3 == *(a1 + 40))
  {
    v5 = [v3 complicationType];
    v6 = *(a1 + 32);
    if (v5)
    {
      [v6 _notifyObserversFaceConfigurationDidChange];
    }

    else
    {
      [v6 setComplication:0 forSlot:v7];
    }
  }
}

- (void)_updateComplicationTombstones
{
  if (CLKIsBridge())
  {
    isMainThread = [MEMORY[0x277CCACC8] isMainThread];
    if (isMainThread)
    {
      __40__NTKFace__updateComplicationTombstones__block_invoke_2(isMainThread, self->_device);
      v6 = 0;
      v7 = &v6;
      v8 = 0x2020000000;
      v9 = 0;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __40__NTKFace__updateComplicationTombstones__block_invoke_6;
      v5[3] = &unk_27877FB58;
      v5[4] = self;
      v5[5] = &v6;
      [(NTKFace *)self enumerateComplicationSlotsWithBlock:v5];
      if (*(v7 + 24) == 1)
      {
        [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
      }

      _Block_object_dispose(&v6, 8);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__NTKFace__updateComplicationTombstones__block_invoke;
      block[3] = &unk_27877DB10;
      block[4] = self;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __40__NTKFace__updateComplicationTombstones__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKColorEditOptionsChangedNotificationName_block_invoke_lock);
  if (NTKColorEditOptionsChangedNotificationName_block_invoke___cachedDevice)
  {
    v3 = NTKColorEditOptionsChangedNotificationName_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKColorEditOptionsChangedNotificationName_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NTKColorEditOptionsChangedNotificationName_block_invoke_value;
  }

  else
  {
    NTKColorEditOptionsChangedNotificationName_block_invoke___cachedDevice = v2;
    NTKColorEditOptionsChangedNotificationName_block_invoke___previousCLKDeviceVersion = [v2 version];
    v6 = +[NTKCompanionAppLibrary sharedAppLibrary];
    [v6 prewarmCompanionDaemonWithCompletion:&__block_literal_global_106];

    v5 = 1;
    NTKColorEditOptionsChangedNotificationName_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&NTKColorEditOptionsChangedNotificationName_block_invoke_lock);

  return v5;
}

void __40__NTKFace__updateComplicationTombstones__block_invoke_6(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) complicationForSlot:v3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __40__NTKFace__updateComplicationTombstones__block_invoke_7;
  v18 = &unk_278783598;
  v19 = *(a1 + 32);
  v7 = v3;
  v20 = v7;
  v8 = _Block_copy(&v15);
  v9 = v8;
  if (v6)
  {
    v10 = v4;
    v11 = [v10 complication:v15];
    if ((v9)[2](v9, v11))
    {
      v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v11;
        v23 = 2112;
        v24 = v10;
        v13 = "Tombstone: %@ is no longer a greenfield placeholder (%@)";
LABEL_9:
        _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (isKindOfClass)
  {
    v10 = v4;
    v11 = [v10 complication:v15];
    if ((v9)[2](v9, v11))
    {
      v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v11;
        v23 = 2112;
        v24 = v10;
        v13 = "Tombstone: %@ is no longer a tombstone (%@)";
        goto LABEL_9;
      }

LABEL_10:

      v14 = v11;
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if ((*(v8 + 2))(v8, v4))
  {
    v14 = 0;
    goto LABEL_15;
  }

  v14 = [NTKComplicationTombstone tombstoneWithComplication:v4, v15, v16, v17, v18, v19];
  v10 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v4;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Tombstone: %@ is now a tombstone (%@)", buf, 0x16u);
  }

LABEL_13:

  if (v14)
  {
    [*(a1 + 32) setComplication:v14 forSlot:v7];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_15:
}

uint64_t __40__NTKFace__updateComplicationTombstones__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 rankedComplicationFamiliesForSlot:v4];
  v7 = [v3 _complication:v5 supportsFamilies:v6 inSlot:*(a1 + 40)];

  return v7;
}

+ (id)_complicationTypeMigrations
{
  if (_complicationTypeMigrations_onceToken != -1)
  {
    +[NTKFace _complicationTypeMigrations];
  }

  v3 = _complicationTypeMigrations___complicationTypeMigrations;

  return v3;
}

void __38__NTKFace__complicationTypeMigrations__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = _complicationTypeMigrations___complicationTypeMigrations;
  _complicationTypeMigrations___complicationTypeMigrations = v0;
}

+ (id)defaultFaceOfStyle:(int64_t)style forDevice:(id)device initCustomization:(id)customization
{
  deviceCopy = device;
  customizationCopy = customization;
  if (style == 44)
  {
    if (objc_opt_class() == self)
    {
      v11 = 0;
      goto LABEL_9;
    }

    style = 44;
  }

  else
  {
    self = [self _faceClassForStyle:style onDevice:deviceCopy];
  }

  v10 = [[self alloc] _initWithFaceStyle:style forDevice:deviceCopy];
  v11 = v10;
  if (v10)
  {
    [v10 applyDefaultConfiguration];
    if (customizationCopy)
    {
      customizationCopy[2](customizationCopy, v11);
    }
  }

LABEL_9:

  return v11;
}

+ (id)bundledFaceWithIdentifier:(id)identifier forDevice:(id)device initCustomization:(id)customization
{
  customizationCopy = customization;
  deviceCopy = device;
  identifierCopy = identifier;
  v10 = objc_opt_class();
  v11 = [NTKFace defaultAnalyticsIdentifierForBundleIdentifier:identifierCopy];
  v12 = [v10 bundledFaceWithIdentifier:identifierCopy analyticsIdentifier:v11 forDevice:deviceCopy initCustomization:customizationCopy];

  return v12;
}

+ (id)bundledFaceWithIdentifier:(id)identifier analyticsIdentifier:(id)analyticsIdentifier forDevice:(id)device initCustomization:(id)customization
{
  identifierCopy = identifier;
  analyticsIdentifierCopy = analyticsIdentifier;
  v12 = [self defaultFaceOfStyle:44 forDevice:device initCustomization:customization];
  if (v12)
  {
    v13 = [identifierCopy copy];
    v14 = v12[12];
    v12[12] = v13;

    v15 = [analyticsIdentifierCopy copy];
    v16 = v12[9];
    v12[9] = v15;
  }

  return v12;
}

- (NSString)analyticsIdentifier
{
  analyticsIdentifier = self->_analyticsIdentifier;
  if (analyticsIdentifier)
  {
    v3 = analyticsIdentifier;
  }

  else
  {
    v3 = [NTKFace defaultAnalyticsIdentifierForBundleIdentifier:self->_bundleIdentifier];
  }

  return v3;
}

+ (id)defaultAnalyticsIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    v5 = [identifierCopy length];
    v6 = @"com.apple.NTK";
    if (([v4 hasPrefix:@"com.apple.NTK"] & 1) != 0 || (v6 = @"com.apple.NanoTimeKit.NTK", objc_msgSend(v4, "hasPrefix:", @"com.apple.NanoTimeKit.NTK")))
    {
      v7 = [(__CFString *)v6 length];
    }

    else
    {
      v7 = 0;
    }

    if ([v4 hasSuffix:@"FaceBundle"])
    {
      v5 -= [@"FaceBundle" length];
    }

    v9 = [v4 substringWithRange:{v7, v5 - v7}];
    lowercaseString = [v9 lowercaseString];
  }

  else
  {
    lowercaseString = 0;
  }

  return lowercaseString;
}

+ (unint64_t)maximumRemoteComplicationsOnAnyFace
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = [self maximumRemoteComplicationsOnAnyFaceForDevice:currentDevice];

  return v4;
}

- (NSArray)editModes
{
  array = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __20__NTKFace_editModes__block_invoke;
  v11 = &unk_2787835C0;
  selfCopy = self;
  v4 = array;
  v13 = v4;
  [(NTKFace *)self enumerateCustomEditModesWithBlock:&v8];
  if ([(NSDictionary *)self->_complicationSlotDescriptors count:v8])
  {
    [(NSArray *)v4 addObject:&unk_2841832E0];
  }

  v5 = v13;
  v6 = v4;

  return v4;
}

void __20__NTKFace_editModes__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _hasOptionsForCustomEditMode:a2])
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v4 addObject:v5];
  }
}

- (BOOL)isEditable
{
  result = 0;
  if ([(NTKFace *)self _allowsEditing])
  {
    if (![(NTKFace *)self _shouldHideUI])
    {
      if ([(NSDictionary *)self->_complicationSlotDescriptors count])
      {
        return 1;
      }

      v6 = 0;
      v7 = &v6;
      v8 = 0x2020000000;
      v9 = 0;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __21__NTKFace_isEditable__block_invoke;
      v5[3] = &unk_2787835E8;
      v5[4] = self;
      v5[5] = &v6;
      [(NTKFace *)self enumerateCustomEditModesWithBlock:v5];
      v4 = *(v7 + 24);
      _Block_object_dispose(&v6, 8);
      if (v4)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t __21__NTKFace_isEditable__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) _hasOptionsForCustomEditMode:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)selectedSlotForEditMode:(int64_t)mode
{
  selectedSlotsByEditMode = self->_selectedSlotsByEditMode;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  firstObject = [(NSMutableDictionary *)selectedSlotsByEditMode objectForKey:v6];

  if (!firstObject)
  {
    if (mode == 1)
    {
      _sortedComplicationSlots = [(NTKFace *)self _sortedComplicationSlots];
      firstObject = [_sortedComplicationSlots firstObject];
    }

    else
    {
      v9 = objc_opt_class();
      _sortedComplicationSlots = [(NTKFace *)self device];
      v10 = [v9 _slotsForCustomEditMode:mode forDevice:_sortedComplicationSlots];
      firstObject = [v10 firstObject];
    }
  }

  return firstObject;
}

- (void)setSelectedSlot:(id)slot forEditMode:(int64_t)mode
{
  slotCopy = slot;
  selectedSlotsByEditMode = self->_selectedSlotsByEditMode;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  if (slotCopy)
  {
    [(NSMutableDictionary *)selectedSlotsByEditMode setObject:slotCopy forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)selectedSlotsByEditMode removeObjectForKey:v7];
  }
}

- (void)applyDefaultConfiguration
{
  [(NTKFace *)self applyDefaultComplicationConfiguration];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__NTKFace_applyDefaultConfiguration__block_invoke;
  v3[3] = &unk_278783638;
  v3[4] = self;
  [(NTKFace *)self enumerateCustomEditModesWithBlock:v3];
}

uint64_t __36__NTKFace_applyDefaultConfiguration__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__NTKFace_applyDefaultConfiguration__block_invoke_2;
  v4[3] = &unk_278783610;
  v4[4] = v2;
  v4[5] = a2;
  return [v2 enumerateSlotsForCustomEditMode:a2 withBlock:v4];
}

void __36__NTKFace_applyDefaultConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 defaultOptionForCustomEditMode:v4 slot:v5];
  [*(a1 + 32) selectOption:v6 forCustomEditMode:*(a1 + 40) slot:v5];
}

- (void)applyDefaultComplicationConfiguration
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__33;
  v8[4] = __Block_byref_object_dispose__33;
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v3 = +[NTKBundleComplicationMigrationProvider cachedInstance];
  v4 = [v3 hasTypeLookupForDevice:self->_device];

  if ((v4 & 1) == 0)
  {
    v5 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NTKFace *)v5 applyDefaultComplicationConfiguration];
    }
  }

  complicationSlotDescriptors = self->_complicationSlotDescriptors;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NTKFace_applyDefaultComplicationConfiguration__block_invoke;
  v7[3] = &unk_278783660;
  v7[4] = self;
  v7[5] = v8;
  [(NSDictionary *)complicationSlotDescriptors enumerateKeysAndObjectsUsingBlock:v7];
  _Block_object_dispose(v8, 8);
}

void __48__NTKFace_applyDefaultComplicationConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__33;
  v33 = __Block_byref_object_dispose__33;
  v7 = objc_opt_class();
  v8 = [*(a1 + 32) device];
  v34 = [v7 _initialDefaultComplicationForSlot:v5 forDevice:v8];

  v9 = v30[5];
  if (!v9)
  {
    v10 = [v6 typesRankedList];
    v11 = [v10 count];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v6 typesRankedList];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v13)
    {
      v14 = *v26;
      v22 = v24;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v25 + 1) + 8 * v15) unsignedIntegerValue];
        if (!v16)
        {
          break;
        }

        if (v11 < 2 || ([*(*(*(a1 + 40) + 8) + 40) containsIndex:v16] & 1) == 0)
        {
          if ([v6 allowsType:v16 inFace:*(a1 + 32)])
          {
            v17 = [*(a1 + 32) _defaultComplicationOfType:v16 forSlot:v5];
            v18 = v30[5];
            v30[5] = v17;

            v19 = [*(a1 + 32) rankedComplicationFamiliesForSlot:v5];
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v24[0] = __48__NTKFace_applyDefaultComplicationConfiguration__block_invoke_2;
            v24[1] = &unk_278780970;
            v24[2] = *(a1 + 32);
            v24[3] = &v29;
            v24[4] = v16;
            [v19 enumerateObjectsUsingBlock:v23];

            if (v30[5])
            {
              [*(*(*(a1 + 40) + 8) + 40) addIndex:v16];
              break;
            }
          }
        }

        if (v13 == ++v15)
        {
          v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v9 = v30[5];
    if (!v9)
    {
      v20 = [*(a1 + 32) _defaultComplicationOfType:0 forSlot:v5];
      v21 = v30[5];
      v30[5] = v20;

      v9 = v30[5];
    }
  }

  [*(a1 + 32) setComplication:v9 forSlot:v5];
  _Block_object_dispose(&v29, 8);
}

void __48__NTKFace_applyDefaultComplicationConfiguration__block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  v7 = +[NTKBundleComplicationMigrationProvider cachedInstance];
  v12 = [v7 migratedComplicationFromType:a1[6] family:v6 device:*(a1[4] + 104)];

  v8 = v12;
  if (v12)
  {
    v9 = [NTKWidgetComplication complicationWithDescriptor:v12];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = v12;
    *a4 = 1;
  }
}

- (id)_uniqueOptionForCustomEditMode:(int64_t)mode slot:(id)slot withExistingOptions:(id)options
{
  slotCopy = slot;
  optionsCopy = options;
  v10 = [(NTKFace *)self defaultOptionForCustomEditMode:mode slot:slotCopy];
  v11 = [(NTKFace *)self indexOfOption:v10 forCustomEditMode:mode slot:slotCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [(NTKFace *)self numberOfOptionsForCustomEditMode:mode slot:slotCopy];
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    while (1)
    {
      v16 = [(NTKFace *)self optionAtIndex:v12 % v14 forCustomEditMode:mode slot:slotCopy];
      if (![optionsCopy containsObject:v16])
      {
        break;
      }

      ++v12;
      if (!--v15)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  return v16;
}

- (void)applyUniqueConfigurationWithExistingFaces:(id)faces
{
  facesCopy = faces;
  [(NTKFace *)self prepareEditOptions];
  _customEditModeForUniqueConfiguration = [(NTKFace *)self _customEditModeForUniqueConfiguration];
  if (_customEditModeForUniqueConfiguration)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__NTKFace_applyUniqueConfigurationWithExistingFaces___block_invoke;
    v6[3] = &unk_278783520;
    selfCopy = self;
    v9 = _customEditModeForUniqueConfiguration;
    v7 = facesCopy;
    [(NTKFace *)self enumerateSlotsForCustomEditMode:v9 withBlock:v6];
  }

  [(NTKFace *)self cleanupEditOptions];
}

void __53__NTKFace_applyUniqueConfigurationWithExistingFaces___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) selectedOptionForCustomEditMode:*(a1 + 48) slot:{v3, v14}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 40) _uniqueOptionForCustomEditMode:*(a1 + 48) slot:v3 withExistingOptions:v4];
  if (!v11)
  {
    v11 = [*(a1 + 40) defaultOptionForCustomEditMode:*(a1 + 48) slot:v3];
  }

  v12 = *(a1 + 48);
  if (v12 == 19 || v12 == 13)
  {
    v13 = [*(a1 + 40) defaultOptionForCustomEditMode:*(a1 + 48) slot:{v3, v14}];

    v12 = *(a1 + 48);
    v11 = v13;
  }

  [*(a1 + 40) selectOption:v11 forCustomEditMode:v12 slot:{v3, v14}];
}

- (unint64_t)numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    pigmentOptionProvider = [(NTKFace *)self pigmentOptionProvider];
    v8 = [pigmentOptionProvider numberOfOptionsForSlot:slotCopy];
  }

  else
  {
    v8 = [(NTKFace *)self _numberOfOptionsForCustomEditMode:mode slot:slotCopy];
  }

  return v8;
}

- (id)optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    pigmentOptionProvider = [(NTKFace *)self pigmentOptionProvider];
    v10 = [pigmentOptionProvider optionAtIndex:index slot:slotCopy];
  }

  else
  {
    v10 = [(NTKFace *)self _optionAtIndex:index forCustomEditMode:mode slot:slotCopy];
  }

  return v10;
}

- (unint64_t)indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    pigmentOptionProvider = [(NTKFace *)self pigmentOptionProvider];
    v11 = [pigmentOptionProvider indexOfOption:optionCopy slot:slotCopy];
  }

  else
  {
    v11 = [(NTKFace *)self _indexOfOption:optionCopy forCustomEditMode:mode slot:slotCopy];
  }

  return v11;
}

- (void)enumerateCustomEditModesWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _customEditModes = [(NTKFace *)self _customEditModes];
  v6 = [_customEditModes countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(_customEditModes);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, [v10 integerValue], &v16);
      LOBYTE(v10) = v16;
      objc_autoreleasePoolPop(v11);
      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [_customEditModes countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateSlotsForCustomEditMode:(int64_t)mode withBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = [(NTKFace *)self slotsForCustomEditMode:mode];
  v17 = 0;
  if ([v7 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        blockCopy[2](blockCopy, *(*(&v13 + 1) + 8 * v12), &v17);
        if (v17)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0, &v17);
  }
}

- (id)slotsForCustomEditMode:(int64_t)mode
{
  v5 = objc_opt_class();
  device = [(NTKFace *)self device];
  v7 = [v5 _slotsForCustomEditMode:mode forDevice:device];

  return v7;
}

- (id)slotForAddColorsViewFrame
{
  v2 = objc_opt_class();

  return [v2 _slotForAddColorsViewFrame];
}

- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = [contextCopy buildVersionMatchesContext:toContextCopy];
  *(v22 + 24) = v8 ^ 1;
  if ((v8 ^ 1) & 1) != 0 || (v13 = MEMORY[0x277D85DD0], v14 = 3221225472, v15 = __52__NTKFace_snapshotContext_isStaleRelativeToContext___block_invoke, v16 = &unk_278783688, v17 = self, v9 = contextCopy, v18 = v9, v10 = toContextCopy, v19 = v10, v20 = &v21, [(NTKFace *)self enumerateComplicationSlotsWithBlock:&v13], v19, v18, (v22[3]))
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NTKFace *)self _snapshotContext:v9 isStaleRelativeToContext:v10, v13, v14, v15, v16, v17];
    *(v22 + 24) = v11;
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __52__NTKFace_snapshotContext_isStaleRelativeToContext___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) complicationForSlot:a2];
  if ([v5 snapshotContext:*(a1 + 40) isStaleRelativeToContext:*(a1 + 48)])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (BOOL)isEquivalentToFace:(id)face
{
  faceCopy = face;
  v5 = faceCopy;
  if (faceCopy == self)
  {
    v11 = 1;
  }

  else
  {
    faceStyle = [(NTKFace *)faceCopy faceStyle];
    if (faceStyle == -[NTKFace faceStyle](self, "faceStyle") && (-[NTKFace device](v5, "device"), v7 = objc_claimAutoreleasedReturnValue(), -[NTKFace device](self, "device"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9))
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __30__NTKFace_isEquivalentToFace___block_invoke;
      v16[3] = &unk_2787836D8;
      v16[4] = self;
      v10 = v5;
      v17 = v10;
      v18 = &v19;
      [(NTKFace *)self enumerateCustomEditModesWithBlock:v16];
      if (v20[3])
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __30__NTKFace_isEquivalentToFace___block_invoke_3;
        v13[3] = &unk_278780C38;
        v13[4] = self;
        v14 = v10;
        v15 = &v19;
        [(NTKFace *)self enumerateComplicationSlotsWithBlock:v13];
        v11 = *(v20 + 24);
      }

      else
      {
        v11 = 0;
      }

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

void __30__NTKFace_isEquivalentToFace___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__NTKFace_isEquivalentToFace___block_invoke_2;
  v9[3] = &unk_2787836B0;
  v9[4] = v6;
  v12 = a2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  [v6 enumerateSlotsForCustomEditMode:a2 withBlock:v9];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void __30__NTKFace_isEquivalentToFace___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = a2;
  v12 = [v5 selectedOptionForCustomEditMode:v6 slot:v7];
  v8 = [*(a1 + 40) selectedOptionForCustomEditMode:*(a1 + 56) slot:v7];

  *(*(*(a1 + 48) + 8) + 24) = [v8 isEqual:v12];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && [v8 conformsToProtocol:&unk_28A87B948])
  {
    v9 = [v8 pigmentEditOption];
    v10 = [v9 JSONObjectRepresentation];
    v11 = [v12 JSONObjectRepresentation];
    *(*(*(a1 + 48) + 8) + 24) = [v10 isEqualToString:v11];
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void __30__NTKFace_isEquivalentToFace___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v5 complicationForSlot:v6];
  v7 = [*(a1 + 40) complicationForSlot:v6];

  *(*(*(a1 + 48) + 8) + 24) = [v7 isEqual:v8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (int64_t)origin
{
  v2 = [(NTKFaceConfiguration *)self->_configuration metricForKey:@"origin"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setOrigin:(int64_t)origin
{
  if (![(NTKFace *)self origin])
  {
    configuration = self->_configuration;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:origin];
    [(NTKFaceConfiguration *)configuration setMetric:v6 forKey:@"origin"];

    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  creationDate = [(NTKFace *)self creationDate];
  [(NTKFaceConfiguration *)self->_configuration setMetric:dateCopy forKey:@"dateCreated"];
  v5 = NTKEqualObjects(dateCopy, creationDate);

  if ((v5 & 1) == 0)
  {
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (void)setLastEditedDate:(id)date
{
  dateCopy = date;
  lastEditedDate = [(NTKFace *)self lastEditedDate];
  [(NTKFaceConfiguration *)self->_configuration setMetric:dateCopy forKey:@"dateLastEdited"];
  v5 = NTKEqualObjects(dateCopy, lastEditedDate);

  if ((v5 & 1) == 0)
  {
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (int64_t)editedState
{
  v2 = [(NTKFaceConfiguration *)self->_configuration metricForKey:@"editedState"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setEditedState:(int64_t)state
{
  if (![(NTKFace *)self editedState]|| [(NTKFace *)self editedState]== 1)
  {
    configuration = self->_configuration;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    [(NTKFaceConfiguration *)configuration setMetric:v6 forKey:@"editedState"];

    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (NSNumber)numberOfGizmoEdits
{
  v2 = [(NTKFaceConfiguration *)self->_configuration metricForKey:@"numberOfGizmoEdits"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_2841832F8;
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasGizmoEdits
{
  v2 = [(NTKFaceConfiguration *)self->_configuration metricForKey:@"numberOfGizmoEdits"];
  v3 = v2 != 0;

  return v3;
}

- (void)incrementNumberOfGizmoEdits
{
  [(NTKFaceConfiguration *)self->_configuration incrementMetricForKey:@"numberOfGizmoEdits"];

  [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
}

- (NSNumber)numberOfCompanionEdits
{
  v2 = [(NTKFaceConfiguration *)self->_configuration metricForKey:@"numberOfCompanionEdits"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_2841832F8;
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasCompanionEdits
{
  v2 = [(NTKFaceConfiguration *)self->_configuration metricForKey:@"numberOfCompanionEdits"];
  v3 = v2 != 0;

  return v3;
}

- (void)incrementNumberOfCompanionEdits
{
  [(NTKFaceConfiguration *)self->_configuration incrementMetricForKey:@"numberOfCompanionEdits"];

  [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
}

- (int64_t)_customEditModeForUniqueConfiguration
{
  _customEditModes = [(NTKFace *)self _customEditModes];
  firstObject = [_customEditModes firstObject];

  if (firstObject)
  {
    integerValue = [firstObject integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)_complicationSlotDescriptors
{
  v2 = objc_opt_class();

  return [v2 _complicationSlotDescriptors];
}

+ (id)_complicationSlotDescriptors
{
  complicationConfiguration = [self complicationConfiguration];

  if (complicationConfiguration)
  {
    complicationConfiguration2 = [self complicationConfiguration];
    complicationSlotDescriptors = [complicationConfiguration2 complicationSlotDescriptors];
  }

  else
  {
    complicationSlotDescriptors = MEMORY[0x277CBEC10];
  }

  return complicationSlotDescriptors;
}

+ (id)_defaultSelectedComplicationSlotForDevice:(id)device
{
  deviceCopy = device;
  complicationConfiguration = [self complicationConfiguration];

  if (complicationConfiguration)
  {
    complicationConfiguration2 = [self complicationConfiguration];
    v7 = [complicationConfiguration2 defaultSelectedComplicationSlotForDevice:deviceCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_defaultComplicationOfType:(unint64_t)type forSlot:(id)slot
{
  slotCopy = slot;
  v7 = [(NTKFace *)self _complicationProviderOptionsForSlot:slotCopy];
  v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:type];
  [v7 setAllowedComplicationTypes:v8];

  v9 = objc_opt_new();
  v10 = [(NTKFace *)self customComplicationsForSlot:slotCopy];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __46__NTKFace__defaultComplicationOfType_forSlot___block_invoke;
  v20 = &unk_278783700;
  typeCopy = type;
  v11 = v9;
  v21 = v11;
  [v10 enumerateObjectsUsingBlock:&v17];

  if ([v11 count])
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    device = [(NTKFace *)self device];
    v14 = [NTKComplicationProvider providerForDevice:device];

    v15 = [v14 complicationsWithOptions:v7];
    firstObject = [v15 firstObject];
  }

  return firstObject;
}

void __46__NTKFace__defaultComplicationOfType_forSlot___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 complicationType] == *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)_option:(id)_option isValidForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v24 = *MEMORY[0x277D85DE8];
  _optionCopy = _option;
  slotCopy = slot;
  if (mode == 10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pigmentOptionProvider = [(NTKFace *)self pigmentOptionProvider];
      v11 = [pigmentOptionProvider indexOfOption:_optionCopy slot:slotCopy];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        isValidOption = 1;
        goto LABEL_10;
      }

      v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        pigmentFaceDomain = [objc_opt_class() pigmentFaceDomain];
        pigmentOptionProvider2 = [(NTKFace *)self pigmentOptionProvider];
        v17 = [pigmentOptionProvider2 availableColorsForSlot:slotCopy];
        v18 = 138543874;
        v19 = _optionCopy;
        v20 = 2114;
        v21 = pigmentFaceDomain;
        v22 = 2114;
        v23 = v17;
        _os_log_error_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_ERROR, "Invalid pigment option - %{public}@ - Face: %{public}@ - Available Options: %{public}@", &v18, 0x20u);
      }

      goto LABEL_9;
    }
  }

  [(NTKFace *)self editOptionClassFromEditMode:mode resourceDirectoryExists:[(NTKFaceConfiguration *)self->_configuration resourceDirectoryExists]];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    isValidOption = 0;
    goto LABEL_10;
  }

  isValidOption = [_optionCopy isValidOption];
LABEL_10:

  return isValidOption;
}

- (BOOL)option:(id)option migratesToValidOption:(id *)validOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode != 10)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = optionCopy;
      v17 = [objc_opt_class() optionByValidatingValueOfInvalidOption:v16];

      v18 = v17;
      *validOption = v17;
      v15 = v17 != 0;
      goto LABEL_7;
    }

LABEL_6:
    v15 = [(NTKFace *)self _option:optionCopy migratesToValidOption:validOption forCustomEditMode:mode slot:slotCopy];
    goto LABEL_7;
  }

  pigmentOptionProvider = [(NTKFace *)self pigmentOptionProvider];
  v13 = [pigmentOptionProvider migratedOptionForInvalidOption:optionCopy slot:slotCopy];

  v14 = v13;
  *validOption = v13;
  v15 = v13 != 0;

LABEL_7:
  return v15;
}

+ (BOOL)_complication:(id)_complication isValidForSlot:(id)slot forDevice:(id)device
{
  _complicationCopy = _complication;
  slotCopy = slot;
  deviceCopy = device;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([self _dateComplicationSlotForDevice:deviceCopy], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(slotCopy, "isEqual:", v11), v11, v12))
  {
    dateStyle = [_complicationCopy dateStyle];
    v14 = ([self _dateComplicationSlotSupportedStylesForDevice:deviceCopy] & dateStyle) != 0;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

+ (id)_dateComplicationSlotForDevice:(id)device
{
  deviceCopy = device;
  complicationConfiguration = [self complicationConfiguration];
  if (complicationConfiguration && (objc_opt_respondsToSelector() & 1) != 0)
  {
    complicationConfiguration2 = [self complicationConfiguration];
    v7 = [complicationConfiguration2 dateComplicationSlotForDevice:deviceCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)_dateComplicationSlotSupportedStylesForDevice:(id)device
{
  deviceCopy = device;
  complicationConfiguration = [self complicationConfiguration];
  if (complicationConfiguration && (objc_opt_respondsToSelector() & 1) != 0)
  {
    complicationConfiguration2 = [self complicationConfiguration];
    v7 = [complicationConfiguration2 dateComplicationSlotSupportedStylesForDevice:deviceCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_orderedComplicationSlots
{
  v2 = objc_opt_class();

  return [v2 _orderedComplicationSlots];
}

+ (id)_orderedComplicationSlots
{
  complicationConfiguration = [self complicationConfiguration];

  if (complicationConfiguration)
  {
    complicationConfiguration2 = [self complicationConfiguration];
    orderedComplicationSlots = [complicationConfiguration2 orderedComplicationSlots];
  }

  else
  {
    orderedComplicationSlots = 0;
  }

  return orderedComplicationSlots;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  complicationConfiguration = [(NTKFace *)self complicationConfiguration];

  if (complicationConfiguration)
  {
    complicationConfiguration2 = [(NTKFace *)self complicationConfiguration];
    v7 = [complicationConfiguration2 localizedNameForComplicationSlot:slotCopy];
  }

  else
  {
    v7 = [NTKFaceComplicationConfiguration defaultLocalizedNameForComplicationSlot:slotCopy];
  }

  return v7;
}

- (id)_defaultName
{
  cachedDefaultName = self->_cachedDefaultName;
  if (!cachedDefaultName)
  {
    faceSharingName = [(NTKFace *)self faceSharingName];
    if (!faceSharingName)
    {
      faceSharingName = NTKLocalizedNameForFaceStyle(self->_faceStyle);
    }

    v5 = self->_cachedDefaultName;
    self->_cachedDefaultName = faceSharingName;

    cachedDefaultName = self->_cachedDefaultName;
  }

  return cachedDefaultName;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  deviceCopy = device;
  complicationConfiguration = [self complicationConfiguration];

  if (complicationConfiguration)
  {
    complicationConfiguration2 = [self complicationConfiguration];
    v7 = [complicationConfiguration2 richComplicationSlotsForDevice:deviceCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) _initWithFaceStyle:self->_faceStyle forDevice:self->_device];
  v5 = [(NTKFaceConfiguration *)self->_configuration copy];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  _complicationSlotDescriptors = [v4 _complicationSlotDescriptors];
  v8 = *(v4 + 32);
  *(v4 + 32) = _complicationSlotDescriptors;

  v9 = [(NSString *)self->_bundleIdentifier copy];
  v10 = *(v4 + 96);
  *(v4 + 96) = v9;

  v11 = [(NSString *)self->_analyticsIdentifier copy];
  v12 = *(v4 + 72);
  *(v4 + 72) = v11;

  *(v4 + 80) = self->_forMigration;
  resourceDirectory = self->_resourceDirectory;
  if (self->_resourceDirectoryIsOwned)
  {
    [v4 setResourceDirectoryByTransferringOwnership:resourceDirectory];
  }

  else
  {
    [v4 setResourceDirectory:resourceDirectory];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  faceStyle = self->_faceStyle;
  coderCopy = coder;
  [coderCopy encodeInteger:faceStyle forKey:@"FaceStyle"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"FaceBundleIdentifier"];
  [coderCopy encodeObject:self->_analyticsIdentifier forKey:@"FaceBundleAnalyticsIdentifier"];
  pairingID = [(CLKDevice *)self->_device pairingID];
  [coderCopy encodeObject:pairingID forKey:@"DeviceUUID"];

  [coderCopy encodeObject:self->_resourceDirectory forKey:@"ResourceDirectory"];
  [coderCopy encodeObject:self->_configuration forKey:@"Configuration"];
}

- (NTKFace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NTKFace;
  v5 = [(NTKFace *)&v19 init];
  if (v5)
  {
    v5->_faceStyle = [coderCopy decodeIntegerForKey:@"FaceStyle"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FaceBundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FaceBundleAnalyticsIdentifier"];
    analyticsIdentifier = v5->_analyticsIdentifier;
    v5->_analyticsIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceUUID"];
    v11 = [MEMORY[0x277CBBAE8] deviceForPairingID:v10];
    device = v5->_device;
    v5->_device = v11;

    [(NTKFace *)v5 _commonInit];
    if (NTKUglyBooleanToSignalThisIsFaceMigration == 1)
    {
      v13 = NTKMigratableFaceStyles();
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v5->_faceStyle];
      [v13 containsObject:v14];
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ResourceDirectory"];
    resourceDirectory = v5->_resourceDirectory;
    v5->_resourceDirectory = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Configuration"];
    if (!v17)
    {
      v17 = [(NTKFace *)v5 _configurationFromOldEncodingWithCoder:coderCopy];
    }

    [(NTKFace *)v5 _applyConfiguration:v17 allowFailure:0];

    [(NTKFace *)v5 toggleComplicationChangeObservation:1];
  }

  return v5;
}

- (id)_configurationFromOldEncodingWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(NTKFaceConfiguration);
  _complicationMigrationPaths = [(NTKFace *)self _complicationMigrationPaths];
  complicationSlotDescriptors = self->_complicationSlotDescriptors;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke;
  v35[3] = &unk_278783728;
  v30 = _complicationMigrationPaths;
  v36 = v30;
  v8 = coderCopy;
  v37 = v8;
  v9 = v5;
  v38 = v9;
  [(NSDictionary *)complicationSlotDescriptors enumerateKeysAndObjectsUsingBlock:v35];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v8 decodeObjectOfClasses:v13 forKey:@"EditConfigurations"];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    NTKValidateDictionary(v15, v16, v17);
  }

  else
  {
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
    v22 = [v8 decodeObjectOfClasses:v21 forKey:@"EditOptions"];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    NTKValidateDictionary(v22, v23, v24);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke_2;
    v33[3] = &unk_278783750;
    v15 = dictionary;
    v34 = v15;
    [v22 enumerateKeysAndObjectsUsingBlock:v33];
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke_3;
  v31[3] = &unk_278783778;
  v31[4] = self;
  v26 = v9;
  v32 = v26;
  [v15 enumerateKeysAndObjectsUsingBlock:v31];
  v27 = v32;
  v28 = v26;

  return v26;
}

void __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v6 = v3;
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKey:{v10, v17}];
        v12 = [v11 isEqualToString:v3];

        if (v12)
        {
          v6 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v6 = v3;
  }

LABEL_11:

  v13 = *(a1 + 40);
  v14 = objc_opt_class();
  v15 = [@"ComplicationSlot-" stringByAppendingString:v6];
  v16 = [v13 decodeObjectOfClass:v14 forKey:v15];

  [*(a1 + 48) setComplication:v16 forSlot:v3];
}

void __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(NTKEditModeConfiguration);
  [(NTKEditModeConfiguration *)v7 setEditOption:v5 forSlot:0];

  [*(a1 + 32) setObject:v7 forKey:v6];
}

void __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [*(a1 + 32) _editModeForOldEncodingIndex:v6];
  if (!v7)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CCA2A8];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v8 raise:v9 format:{@"invalid old edit mode index: %@", v10}];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke_4;
  v12[3] = &unk_278783520;
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = v7;
  v11 = v5;
  [v11 enumerateSlotsWithBlock:v12];
}

void __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 editOptionForSlot:v5];
  [v3 setOption:v6 forCustomEditMode:a1[6] slot:v5];
}

- (BOOL)_shouldPresentAlertForSharingUnreleasedFace
{
  mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
  LOBYTE(self) = [mEMORY[0x277CBBB70] considersUISensitivitySensitive:{objc_msgSend(ViewClassForFace(self), "uiSensitivity")}];

  return self;
}

- (void)handleSharingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__NTKFace_handleSharingMetadata___block_invoke;
  v5[3] = &unk_27877FB58;
  v5[4] = self;
  v5[5] = &v6;
  [(NTKFace *)self enumerateComplicationSlotsWithBlock:v5];
  if (*(v7 + 24) == 1)
  {
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }

  if (metadataCopy)
  {
    [(NTKFace *)self _handleSharingMetadata:metadataCopy];
  }

  _Block_object_dispose(&v6, 8);
}

void __33__NTKFace_handleSharingMetadata___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) complicationForSlot:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v5 complication];

    v5 = v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 complicationDescriptor];
    [v4 setNeedsAppNotify:1];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  resourceDirectory = [(NTKFace *)self resourceDirectory];

  if (resourceDirectory)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    resourceDirectory2 = [(NTKFace *)self resourceDirectory];
    v10 = [defaultManager copyItemAtPath:resourceDirectory2 toPath:pathCopy error:error];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)deepCopy
{
  device = [(NTKFace *)self device];
  jSONObjectRepresentation = [(NTKFace *)self JSONObjectRepresentation];
  v5 = [NTKFace faceWithJSONObjectRepresentation:jSONObjectRepresentation forDevice:device];

  resourceDirectory = self->_resourceDirectory;
  if (self->_resourceDirectoryIsOwned)
  {
    [v5 setResourceDirectoryByTransferringOwnership:resourceDirectory];
  }

  else
  {
    [v5 setResourceDirectory:resourceDirectory];
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v3 = objc_opt_new();
  [v3 setObject:&unk_284188CD8 forKeyedSubscript:@"version"];
  v4 = NTKFaceBundleStringFromFaceStyle([(NTKFace *)self faceStyle]);
  [v3 setObject:v4 forKeyedSubscript:@"face type"];

  bundleIdentifier = [(NTKFace *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"bundle id"];

  v6 = NTKAnalyticsValueForFace(self);
  [v3 setObject:v6 forKeyedSubscript:@"analytics id"];

  keyDescriptor = [(NTKFace *)self keyDescriptor];
  argon_JSONRepresentation = [keyDescriptor argon_JSONRepresentation];
  [v3 setObject:argon_JSONRepresentation forKeyedSubscript:@"argon"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[NTKFace forMigration](self, "forMigration")}];
  [v3 setObject:v9 forKeyedSubscript:@"forMigration"];

  [(NTKFaceConfiguration *)self->_configuration addConfigurationKeysToJSONDictionary:v3 face:self];
  v10 = [v3 copy];

  return v10;
}

- (id)greenfieldJSONObjectRepresentation
{
  v3 = NTKEffectiveFaceStyleForFaceStyle([(NTKFace *)self faceStyle]);
  faceStyle = [(NTKFace *)self faceStyle];
  jSONObjectRepresentation = [(NTKFace *)self JSONObjectRepresentation];
  v6 = jSONObjectRepresentation;
  if (v3 != faceStyle)
  {
    v7 = [jSONObjectRepresentation mutableCopy];

    v8 = NTKFaceBundleStringFromFaceStyle(v3);
    [v7 setObject:v8 forKeyedSubscript:@"face type"];

    v6 = [v7 copy];
  }

  return v6;
}

- (id)configurationJSONRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(NTKFaceConfiguration *)self->_configuration addConfigurationKeysToJSONDictionary:dictionary face:self];

  return dictionary;
}

+ (void)greenfieldFaceWithJSONObjectRepresentation:(id)representation forDevice:(id)device withCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  deviceCopy = device;
  completionCopy = completion;
  v10 = objc_opt_new();
  v11 = dispatch_group_create();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33;
  v25 = __Block_byref_object_dispose__33;
  v26 = [NTKFace faceWithJSONObjectRepresentation:representationCopy forDevice:deviceCopy forMigration:1 allowFallbackFromInvalidFaceStyle:0];
  if (v22[5])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__NTKFace_greenfieldFaceWithJSONObjectRepresentation_forDevice_withCompletion___block_invoke;
    aBlock[3] = &unk_2787837A0;
    aBlock[4] = &v21;
    v12 = _Block_copy(aBlock);
    v12[2](v12, v22[5], 1);
    if (NTKShowBlueRidgeUI(deviceCopy))
    {
      _faceWithRichComplicationSlots = [v22[5] _faceWithRichComplicationSlots];
      (v12)[2](v12, _faceWithRichComplicationSlots, 0);
    }

    _migratedBundleFace = [v22[5] _migratedBundleFace];
    (v12)[2](v12, _migratedBundleFace, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__NTKFace_greenfieldFaceWithJSONObjectRepresentation_forDevice_withCompletion___block_invoke_2;
    v16[3] = &unk_2787837F0;
    v17 = v10;
    v19 = &v21;
    v18 = completionCopy;
    dispatch_group_notify(v11, MEMORY[0x277D85CD0], v16);
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = representationCopy;
      _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "Could not create new greenfield face because the base face from description:%@ is nil", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(&v21, 8);
}

void __79__NTKFace_greenfieldFaceWithJSONObjectRepresentation_forDevice_withCompletion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (v9 != v6 || a3 != 0)
    {
      v11 = v6;
      objc_storeStrong(v8, a2);
      v6 = v11;
    }
  }
}

uint64_t __79__NTKFace_greenfieldFaceWithJSONObjectRepresentation_forDevice_withCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__NTKFace_greenfieldFaceWithJSONObjectRepresentation_forDevice_withCompletion___block_invoke_3;
  v4[3] = &unk_2787837C8;
  v4[4] = a1[6];
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  return (*(a1[5] + 16))();
}

void __79__NTKFace_greenfieldFaceWithJSONObjectRepresentation_forDevice_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(*(*(a1 + 32) + 8) + 40) complicationForSlot:v8];
  v7 = [v6 isEqual:v5];

  if ((v7 & 1) == 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) setComplication:v5 forSlot:v8];
  }
}

+ (id)faceWithJSONObjectRepresentation:(id)representation forDevice:(id)device forMigration:(BOOL)migration allowFallbackFromInvalidFaceStyle:(BOOL)style
{
  migrationCopy = migration;
  v43 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  deviceCopy = device;
  if (!representationCopy)
  {
    v36 = 0;
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"top level object must be a dictionary. Invalid value: %@", representationCopy}];
  }

  v11 = [representationCopy objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"'%@' must be a string. Invalid value: %@", @"version", v11}];
  }

  selfCopy = self;
  v40 = migrationCopy;
  v12 = [representationCopy objectForKeyedSubscript:@"face type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"'%@' must be a string. Invalid value: %@", @"face type", v12}];
  }

  v13 = [representationCopy objectForKeyedSubscript:@"bundle id"];
  obj = [representationCopy objectForKeyedSubscript:@"analytics id"];
  *buf = 0;
  if (!NTKFaceBundleGetFaceStyleFromString(v12, buf))
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"invalid value for '%@': %@", @"face type", v12}];
  }

  if (*buf == 12 && NTKShowBlueRidgeUI(deviceCopy))
  {
    v14 = [representationCopy objectForKeyedSubscript:@"customization"];
    v15 = NTKFaceBundleStringFromCustomEditMode(17);
    v16 = [v14 valueForKey:v15];
    v17 = v16 == 0;

    if (!v17)
    {
      *buf = 212;
    }
  }

  v18 = [representationCopy objectForKeyedSubscript:@"forMigration"];
  bOOLValue = [v18 BOOLValue];

  if (*buf == 44)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v21 = [representationCopy objectForKeyedSubscript:@"argon"];
  if (v21)
  {
    objc_opt_class();
    if (isKindOfClass & objc_opt_isKindOfClass())
    {
      v22 = +[NTKFaceBundleManager sharedManager];
      v23 = [v22 faceBundleForBundleIdentifier:v13 onDevice:deviceCopy];

      if (!v23)
      {
        v24 = [NTKArgonKeyDescriptor alloc];
        v25 = [(NTKArgonKeyDescriptor *)v24 argon_initWithJSONRepresentation:v21];

        if (v25 && (+[NTKFaceBundleManager sharedManager](NTKFaceBundleManager, "sharedManager"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 loadKeyDescriptor:v25], v26, (v27 & 1) != 0))
        {
          v28 = +[NTKFaceBundleManager sharedManager];
          v23 = [v28 faceBundleForBundleIdentifier:v13 onDevice:deviceCopy];
        }

        else
        {
          v23 = 0;
        }
      }
    }
  }

  if (*buf != 44)
  {
    goto LABEL_33;
  }

  if (![v13 length])
  {
    if (*buf == 44)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"invalid pair for '%@': %@", v13, v12}];
LABEL_36:
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"Unable to determine NTKFace subclass for style %@", v12}];
      faceClass = 0;
      goto LABEL_37;
    }

LABEL_33:
    if (v40)
    {
      v32 = NTKMigratableFaceStyles();
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:*buf];
      [v32 containsObject:v33];
    }

    faceClass = [selfCopy _faceClassForStyle:? onDevice:?];
    if (faceClass)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v29 = +[NTKFaceBundleManager sharedManager];
  v30 = [v29 faceBundleForBundleIdentifier:v13 onDevice:deviceCopy forMigration:bOOLValue];

  faceClass = [v30 faceClass];
  if (!faceClass)
  {
    goto LABEL_36;
  }

LABEL_37:
  v34 = [faceClass alloc];
  v35 = [v34 _initWithFaceStyle:*buf forDevice:deviceCopy];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong((v35 + 96), v13);
    objc_storeStrong((v36 + 72), obj);
    *(v36 + 80) = bOOLValue;
    v37 = [[NTKFaceConfiguration alloc] initWithJSONDictionary:representationCopy editModeMapping:v36 forDevice:deviceCopy];
    [v36 _customizeWithJSONDescription:representationCopy];
    [v36 _applyConfiguration:v37 allowFailure:0 forMigration:v40];
  }

LABEL_41:

  return v36;
}

- (NTKArgonKeyDescriptor)keyDescriptor
{
  v2 = objc_opt_class();

  return [v2 keyDescriptor];
}

+ (NTKArgonKeyDescriptor)keyDescriptor
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v3 = [NTKArgonKeyDescriptor keyDescriptorFromBundle:v2];

  return v3;
}

- (Class)editOptionClassFromEditMode:(int64_t)mode resourceDirectoryExists:(BOOL)exists
{
  existsCopy = exists;
  if (mode == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = [(NTKFace *)self _optionClassForCustomEditMode:mode resourceDirectoryExists:existsCopy];
  }

  return v7;
}

- (Class)legacyEditOptionClassFromCustomEditMode:(int64_t)mode resourceDirectoryExists:(BOOL)exists
{
  v5 = [(NTKFace *)self _optionClassForCustomEditMode:mode resourceDirectoryExists:exists];
  if (v5)
  {
    v6 = objc_opt_class();
    if (mode == 10 && v5 == v6)
    {
      goto LABEL_4;
    }
  }

  else if (mode == 10)
  {
LABEL_4:
    v7 = objc_opt_class();
    goto LABEL_7;
  }

  v7 = v5;
LABEL_7:

  return v7;
}

- (BOOL)_applyConfiguration:(id)configuration allowFailure:(BOOL)failure forMigration:(BOOL)migration
{
  failureCopy = failure;
  configurationCopy = configuration;
  if (failureCopy && ![(NTKFace *)self _verifyCompatibilityOfConfiguration:configurationCopy])
  {
    v16 = 0;
  }

  else
  {
    *&self->_suppressingConfigurationChangeNotifications = 1;
    resourceDirectoryExists = [configurationCopy resourceDirectoryExists];
    configuration = [(NTKFace *)self configuration];
    [configuration setResourceDirectoryExists:resourceDirectoryExists];

    _complicationMigrationPaths = [(NTKFace *)self _complicationMigrationPaths];
    complicationSlotDescriptors = self->_complicationSlotDescriptors;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__NTKFace__applyConfiguration_allowFailure_forMigration___block_invoke;
    v24[3] = &unk_278783818;
    v13 = _complicationMigrationPaths;
    v25 = v13;
    v14 = configurationCopy;
    migrationCopy = migration;
    v26 = v14;
    selfCopy = self;
    [(NSDictionary *)complicationSlotDescriptors enumerateKeysAndObjectsUsingBlock:v24];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __57__NTKFace__applyConfiguration_allowFailure_forMigration___block_invoke_245;
    v21 = &unk_2787835C0;
    selfCopy2 = self;
    v15 = v14;
    v23 = v15;
    [(NTKFace *)self enumerateCustomEditModesWithBlock:&v18];
    [(NTKFace *)self _complicationsDidChange:v18];
    [(NTKFaceConfiguration *)self->_configuration setMetricsFromConfiguration:v15];
    [(NTKFaceConfiguration *)self->_configuration setCustomDataFromConfiguration:v15];
    self->_suppressingConfigurationChangeNotifications = 0;
    if (self->_configurationChangedWhileSuppressingNotifications)
    {
      [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
    }

    v16 = 1;
  }

  return v16;
}

void __57__NTKFace__applyConfiguration_allowFailure_forMigration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  v12 = [*(a1 + 40) complicationForSlot:v11];
  if (v12 && (*(a1 + 56) & 1) == 0)
  {
    v13 = objc_opt_class();
    v14 = [*(a1 + 48) device];
    LOBYTE(v13) = [v13 _complication:v12 isValidForSlot:v11 forDevice:v14];

    if ((v13 & 1) == 0)
    {
      v16 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 138412802;
        *&v23[4] = objc_opt_class();
        *&v23[12] = 2112;
        *&v23[14] = v11;
        *&v23[22] = 2112;
        v24 = v12;
        v20 = *&v23[4];
        _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "%@ has invalid complication for slot %@: %@ → nil", v23, 0x20u);
      }

      goto LABEL_14;
    }

    if (([v5 allowsType:objc_msgSend(v12 inFace:{"complicationType"), *(a1 + 48)}] & 1) == 0)
    {
      v15 = [v5 supportsType:{objc_msgSend(v12, "complicationType")}];
      v16 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          *v23 = 138412802;
          *&v23[4] = objc_opt_class();
          *&v23[12] = 2112;
          *&v23[14] = v11;
          *&v23[22] = 2112;
          v24 = v12;
          v18 = *&v23[4];
          _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "%@ has disallowed complication for slot %@: %@ → Tombstone", v23, 0x20u);
        }

        v19 = [NTKComplicationTombstone tombstoneWithComplication:v12];
        goto LABEL_15;
      }

      if (v17)
      {
        v21 = objc_opt_class();
        v22 = v21;
        *v23 = 138413058;
        *&v23[4] = v21;
        *&v23[12] = 2112;
        *&v23[14] = v11;
        *&v23[22] = 2112;
        v24 = v12;
        v25 = 2048;
        v26 = [v12 complicationType];
        _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "%@ has impossible complication for slot %@: %@ (%lu) → nil", v23, 0x2Au);
      }

LABEL_14:

      v19 = 0;
LABEL_15:

      v12 = v19;
    }
  }

  [*(a1 + 48) setComplication:v12 forSlot:{v11, *v23, *&v23[16], v24}];
}

void __57__NTKFace__applyConfiguration_allowFailure_forMigration___block_invoke_245(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__NTKFace__applyConfiguration_allowFailure_forMigration___block_invoke_2;
  v7[3] = &unk_278783520;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = a2;
  [v4 enumerateSlotsForCustomEditMode:a2 withBlock:v7];
}

void __57__NTKFace__applyConfiguration_allowFailure_forMigration___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) optionForCustomEditMode:*(a1 + 48) slot:v3];
  v5 = [*(a1 + 40) replacedOptionWithFulfilledOption:v4 forEditMode:*(a1 + 48) slot:v3];

  v6 = [*(a1 + 40) _validOptionForOption:v5 mode:*(a1 + 48) slot:v3 configuration:*(a1 + 32)];
  if (v6 != v5)
  {
    if ([*(a1 + 40) deviceSupportsPigmentEditOption] && *(a1 + 48) == 10 && objc_msgSend(v6, "conformsToProtocol:", &unk_28A87B948))
    {
      v7 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [objc_opt_class() pigmentFaceDomain];
        v9 = [*(a1 + 40) pigmentOptionProvider];
        v10 = [v9 availableColorsForSlot:v3];
        v12 = 138544130;
        v13 = v5;
        v14 = 2114;
        v15 = v6;
        v16 = 2114;
        v17 = v8;
        v18 = 2114;
        v19 = v10;
        _os_log_error_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_ERROR, "Invalid option %{public}@ - substitute: %{public}@ - Face: %{public}@ - Available Options: %{public}@", &v12, 0x2Au);
      }
    }

    else
    {
      v7 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v12 = 138543874;
        v13 = v5;
        v14 = 2114;
        v15 = v6;
        v16 = 2114;
        v17 = v11;
        _os_log_error_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_ERROR, "Invalid option %{public}@ - substitute: %{public}@ - Face: %{public}@", &v12, 0x20u);
      }
    }

    *(*(a1 + 40) + 50) = 1;
  }

  [*(a1 + 40) selectOption:v6 forCustomEditMode:*(a1 + 48) slot:v3];
}

- (id)_validOptionForOption:(id)option mode:(int64_t)mode slot:(id)slot configuration:(id)configuration
{
  optionCopy = option;
  slotCopy = slot;
  configurationCopy = configuration;
  if (optionCopy)
  {
    if (![(NTKFace *)self _option:optionCopy isValidForCustomEditMode:mode slot:slotCopy configuration:configurationCopy])
    {
      v16 = optionCopy;
      v13 = [(NTKFace *)self option:optionCopy migratesToValidOption:&v16 forCustomEditMode:mode slot:slotCopy];
      v14 = v16;

      if (v13)
      {
        optionCopy = v14;
      }

      else
      {
        optionCopy = [(NTKFace *)self defaultOptionForCustomEditMode:mode slot:slotCopy];
      }
    }
  }

  else
  {
    optionCopy = [(NTKFace *)self _defaultOptionForMissingCustomEditMode:mode slot:slotCopy];
  }

  return optionCopy;
}

- (id)replacedOptionWithFulfilledOption:(id)option forEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  deviceSupportsPigmentEditOption = [(NTKFace *)self deviceSupportsPigmentEditOption];
  if (mode != 10 || !deviceSupportsPigmentEditOption || ![optionCopy conformsToProtocol:&unk_28A87B948] || (objc_msgSend(optionCopy, "pigmentEditOption"), v11 = objc_claimAutoreleasedReturnValue(), -[NTKFace pigmentOptionProvider](self, "pigmentOptionProvider"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "fulfilledOptionForOption:slot:", v11, slotCopy), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
  {
    v13 = optionCopy;
  }

  return v13;
}

- (id)_sortedComplicationSlots
{
  allKeys = [(NSDictionary *)self->_complicationSlotDescriptors allKeys];
  v3 = [allKeys sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (void)_selectDefaultSlots
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__NTKFace__selectDefaultSlots__block_invoke;
  v6[3] = &unk_278783638;
  v6[4] = self;
  [(NTKFace *)self enumerateCustomEditModesWithBlock:v6];
  v3 = objc_opt_class();
  device = [(NTKFace *)self device];
  v5 = [v3 _defaultSelectedComplicationSlotForDevice:device];

  if (v5)
  {
    [(NSMutableDictionary *)self->_selectedSlotsByEditMode setObject:v5 forKey:&unk_2841832E0];
  }
}

void __30__NTKFace__selectDefaultSlots__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) device];
  v11 = [v4 _slotsForCustomEditMode:a2 forDevice:v5];

  if ([v11 count])
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 32) device];
    v8 = [v6 _defaultSelectedSlotForCustomEditMode:a2 forDevice:v7];

    if (v8)
    {
      v9 = *(*(a1 + 32) + 40);
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      [v9 setObject:v8 forKey:v10];
    }
  }
}

+ (Class)_faceClassForStyle:(int64_t)style onDevice:(id)device
{
  deviceCopy = device;
  faceClass = 0;
  switch(style)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 41:
    case 42:
      goto LABEL_4;
    case 5:
    case 13:
    case 22:
    case 34:
    case 40:
    case 43:
      faceClass = objc_opt_class();
      break;
    case 11:
    case 15:
      break;
    default:
      if ((style - 200) <= 0x21 && ((1 << (style + 56)) & 0x399BF140FLL) != 0)
      {
LABEL_4:
        v7 = +[NTKFaceBundleManager sharedManager];
        v8 = [v7 faceBundleForFaceStyle:style onDevice:deviceCopy];
        faceClass = [v8 faceClass];
      }

      break;
  }

  return faceClass;
}

+ (id)availableInternalFaceDescriptorsForDevice:(id)device
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e19_B16__0__CLKDevice_8l;
  v5[4] = self;
  __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke(v5, device);
  v3 = availableInternalFaceDescriptorsForDevice____availableInternalFaceDescriptors;

  return v3;
}

uint64_t __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_OldEditConfigurationsKey_block_invoke_2_lock);
  if (_OldEditConfigurationsKey_block_invoke_2___cachedDevice)
  {
    v4 = _OldEditConfigurationsKey_block_invoke_2___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && (v5 = [v3 version], v5 == _OldEditConfigurationsKey_block_invoke_2___previousCLKDeviceVersion))
  {
    v6 = _OldEditConfigurationsKey_block_invoke_2_value;
  }

  else
  {
    _OldEditConfigurationsKey_block_invoke_2___cachedDevice = v3;
    _OldEditConfigurationsKey_block_invoke_2___previousCLKDeviceVersion = [v3 version];
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke_3;
    v9[3] = &__block_descriptor_40_e19_v16__0__CLKDevice_8l;
    v9[4] = v8;
    __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke_3(v9, v3);
    v6 = 1;
    _OldEditConfigurationsKey_block_invoke_2_value = 1;
  }

  os_unfair_lock_unlock(&_OldEditConfigurationsKey_block_invoke_2_lock);

  return v6;
}

uint64_t __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke_3;
  v3[3] = &__block_descriptor_40_e19_v16__0__CLKDevice_8l;
  v3[4] = *(a1 + 32);
  __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke_3(v3, a2);
  return 1;
}

void __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  for (i = 100; i != 102; ++i)
  {
    if ([objc_msgSend(*(a1 + 32) _faceClassForStyle:i onDevice:{v3), "_isInternalOnlyForDevice:", v3}])
    {
      v6 = [[NTKFaceDescriptor alloc] initWithFaceStyle:i];
      if (v6)
      {
        [v4 addObject:v6];
      }
    }
  }

  v7 = +[NTKFaceBundleManager sharedManager];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke_4;
  v15 = &unk_27877EA00;
  v16 = v3;
  v17 = v4;
  v8 = v4;
  v9 = v3;
  [v7 enumerateFaceBundlesOnDevice:v9 withBlock:&v12];

  v10 = [v8 copy];
  v11 = availableInternalFaceDescriptorsForDevice____availableInternalFaceDescriptors;
  availableInternalFaceDescriptorsForDevice____availableInternalFaceDescriptors = v10;
}

void __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([objc_msgSend(v6 "faceClass")])
  {
    v3 = [NTKFaceDescriptor alloc];
    v4 = [objc_opt_class() identifier];
    v5 = [(NTKFaceDescriptor *)v3 initWithBundleIdentifier:v4];

    [*(a1 + 40) addObject:v5];
  }
}

+ (BOOL)isFaceStyleAvailableInternal:(int64_t)internal forDevice:(id)device
{
  deviceCopy = device;
  if (internal == 44)
  {
    v7 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8 = [self availableInternalFaceDescriptorsForDevice:deviceCopy];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__NTKFace_isFaceStyleAvailableInternal_forDevice___block_invoke;
    v10[3] = &unk_278783840;
    v10[4] = &v11;
    v10[5] = internal;
    [v8 enumerateObjectsUsingBlock:v10];
    v7 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return v7 & 1;
}

uint64_t __50__NTKFace_isFaceStyleAvailableInternal_forDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 faceStyle];
  if (*(a1 + 40) == result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)hasValidConfigurationForDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  [(NTKFace *)self selectedOptionsForCustomEditModes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        if (([v10 optionExistsInDevice:deviceCopy] & 1) == 0)
        {
          v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [NTKFace hasValidConfigurationForDevice:v10];
          }

          v11 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (NTKFaceView)faceView
{
  v2 = [NTKFaceView newFaceViewForFace:self];

  return v2;
}

- (id)libraryDetailViewController
{
  v2 = [[NTKCFaceDetailViewController alloc] initWithLibraryFace:self];

  return v2;
}

- (id)addFaceDetailViewController
{
  v2 = [[NTKCFaceDetailViewController alloc] initWithCandidateFace:self externalAssets:0];

  return v2;
}

- (NSArray)externalAssets
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_externalAssets copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setExternalAssets:(id)assets
{
  assetsCopy = assets;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [assetsCopy copy];

  objc_storeStrong(&selfCopy->_externalAssets, v6);
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__NTKFace_ExternalAssets__setExternalAssets___block_invoke;
  v8[3] = &unk_278783890;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [(NTKFace *)selfCopy companionEditorWithAssets:v7 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__NTKFace_ExternalAssets__setExternalAssets___block_invoke(uint64_t a1, void *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__33;
  v13 = __Block_byref_object_dispose__33;
  v3 = a2;
  v14 = v3;
  v4 = v10[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NTKFace_ExternalAssets__setExternalAssets___block_invoke_2;
  v5[3] = &unk_278783868;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = &v9;
  [v4 generateGalleryPreviewResourceDirectoryWithCompletion:v5];

  objc_destroyWeak(&v8);
  _Block_object_dispose(&v9, 8);
}

void __45__NTKFace_ExternalAssets__setExternalAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_copyWeak(&to, (a1 + 48));
  v4 = objc_loadWeakRetained(&to);
  v5 = v4 == 0;

  if (!v5)
  {
    v6 = objc_loadWeakRetained(&to);
    objc_sync_enter(v6);
    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 externalAssets];
    v9 = v8 == *(a1 + 32);

    objc_sync_exit(v6);
    if (v9)
    {
      v12 = objc_loadWeakRetained(&to);
      [v12 setResourceDirectory:v3];

      v13 = *(*(a1 + 40) + 8);
      v10 = *(v13 + 40);
      *(v13 + 40) = 0;
    }

    else
    {
      v10 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Skipping assets %@ - changed", buf, 0xCu);
      }
    }
  }

  objc_destroyWeak(&to);
}

- (BOOL)usesComplications
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__NTKFace_GalleryLiteSupport__usesComplications__block_invoke;
  v4[3] = &unk_27877FB58;
  v4[4] = self;
  v4[5] = &v5;
  [(NTKFace *)self enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __48__NTKFace_GalleryLiteSupport__usesComplications__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) complicationForSlot:a2];
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    v7 = [v5 complicationType];
    v6 = v8;
    if (v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      if (a3)
      {
        *a3 = 1;
      }
    }
  }
}

- (BOOL)multicolored
{
  v3 = [(NTKFace *)self selectedOptionForCustomEditMode:10 slot:0];
  if (!v3)
  {
    v3 = [(NTKFace *)self defaultOptionForCustomEditMode:10 slot:0];
    if (!v3)
    {
      return 0;
    }
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isMultiColor = [v4 isMultiColor];
  }

  else
  {
    isMultiColor = 0;
  }

  return isMultiColor;
}

+ (id)argon_overlayAssetArchiveURL
{
  v12 = *MEMORY[0x277D85DE8];
  keyDescriptor = [self keyDescriptor];
  v3 = BSCurrentUserDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"/Library/NanoTimeKit/FaceSupport/Assets/"];
  fileName = [keyDescriptor fileName];
  v6 = [v4 stringByAppendingPathComponent:fileName];
  v7 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Reading from %@", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];

  return v8;
}

- (void)argon_notificationContentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__NTKFace_ArgonSupport__argon_notificationContentWithCompletion___block_invoke;
    v6[3] = &unk_278783CA8;
    v6[4] = self;
    v7 = completionCopy;
    [(NTKFace *)self argon_compositedSnapshotWithCompletion:v6];
  }
}

void __65__NTKFace_ArgonSupport__argon_notificationContentWithCompletion___block_invoke(uint64_t a1, UIImage *image, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (image)
  {
    v5 = UIImageJPEGRepresentation(image, 0.7);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 stringByAppendingPathExtension:@"jpeg"];

    v9 = NTKFaceArgonSupportCreateAttachmentWithImageData(v5, v8);
    v10 = objc_alloc_init(MEMORY[0x277CE1F60]);
    if (v9)
    {
      v20[0] = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [v10 setAttachments:v11];
    }

    if (a3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v10 argon_setArtworkUsed:v12];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{a3, @"defaultImage"}];
    v19 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v10 setUserInfo:v14];

    v15 = *(a1 + 40);
    v16 = [v10 copy];
    (*(v15 + 16))(v15, v16, 0);
  }

  else
  {
    v17 = *(*(a1 + 40) + 16);

    v17();
  }
}

- (void)argon_compositedSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_group_create();
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__35;
    v32[4] = __Block_byref_object_dispose__35;
    v33 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = __Block_byref_object_copy__35;
    v30[4] = __Block_byref_object_dispose__35;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    dispatch_group_enter(v5);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke;
    v23[3] = &unk_278783CD0;
    v25 = v32;
    v26 = v30;
    v27 = v28;
    v6 = v5;
    v24 = v6;
    [(NTKFace *)self argon_notificationOverlayImageWithCompletion:v23];
    v7 = +[NTKFaceSnapshotClient sharedInstance];
    v8 = +[NTKFaceSnapshotter defaultModernSnapshotOptions];
    v9 = [v8 mutableCopy];
    [v9 removeObjectForKey:@"NTKSnapshotPersistableKey"];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__35;
    v21[4] = __Block_byref_object_dispose__35;
    v22 = 0;
    dispatch_group_enter(v6);
    v10 = [v9 copy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke_2;
    v18[3] = &unk_278783CF8;
    v20 = v21;
    v11 = v6;
    v19 = v11;
    [v7 snapshotFace:self options:v10 completion:v18];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke_3;
    v12[3] = &unk_278783D48;
    v14 = v32;
    v15 = v30;
    v16 = v21;
    v12[4] = self;
    v13 = completionCopy;
    v17 = v28;
    dispatch_group_notify(v11, MEMORY[0x277D85CD0], v12);

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);

    _Block_object_dispose(v32, 8);
  }
}

void __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(*(a1 + 56) + 8) + 24) = a3;
  dispatch_group_leave(*(a1 + 32));
}

void __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v2 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke_3_cold_1(a1 + 56, v2);
      }
    }

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v15 = *(a1 + 40);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDomain" code:202 userInfo:&unk_284189C50];
      (*(v15 + 16))(v15, 0, 1, v16);

      return;
    }

    [*(*(*(a1 + 48) + 8) + 40) size];
    v4 = v3;
    v6 = v5;
    [*(*(*(a1 + 48) + 8) + 40) scale];
    v8 = v7;
    v9 = [MEMORY[0x277D75568] preferredFormat];
    [v9 setScale:v8];
    v10 = [*(a1 + 32) device];
    v11 = [v10 sizeClass];

    if (v11 <= 9)
    {
      if (((1 << v11) & 0x3C0) != 0)
      {
        v17 = *(a1 + 40);
        v18 = MEMORY[0x277CCA9B8];
        v19 = &unk_284189CA0;
LABEL_22:
        v22 = [v18 errorWithDomain:@"NTKFaceSupportDomain" code:503 userInfo:v19];
        (*(v17 + 16))(v17, 0, 1, v22);
        goto LABEL_23;
      }

      if (((1 << v11) & 0xC) != 0)
      {
        v12 = 69.0;
        v13 = 64.0;
        goto LABEL_20;
      }

      if (((1 << v11) & 0x30) != 0)
      {
        v12 = 65.0;
        v13 = 60.0;
LABEL_20:
        v20 = floor(v13 * 1.33333333);
        v21 = floor(v12 * 1.33333333);
        v22 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v9 format:{v4, v6}];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke_45;
        v25[3] = &unk_278783D20;
        *&v25[6] = v4;
        *&v25[7] = v6;
        *&v25[8] = v8;
        *&v25[9] = v20;
        *&v25[10] = v21;
        v23 = *(a1 + 48);
        v25[4] = *(a1 + 64);
        v25[5] = v23;
        v24 = [v22 imageWithActions:v25];
        (*(*(a1 + 40) + 16))();

LABEL_23:
        return;
      }
    }

    v17 = *(a1 + 40);
    v18 = MEMORY[0x277CCA9B8];
    if (v11 >= 2)
    {
      v19 = &unk_284189CC8;
    }

    else
    {
      v19 = &unk_284189C78;
    }

    goto LABEL_22;
  }

  v14 = *(*(a1 + 40) + 16);

  v14();
}

uint64_t __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = MEMORY[0x277D75348];
  v6 = a2;
  v7 = [v5 whiteColor];
  [v7 setFill];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v3;
  v19.size.height = v4;
  UIRectFill(v19);
  v8 = [v6 CGContext];

  CGContextTranslateCTM(v8, -3.0 / *(a1 + 64), 0.0);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v3;
  v20.size.height = v4;
  v21 = CGRectInset(v20, *(a1 + 72), *(a1 + 80));
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v13 = [MEMORY[0x277D75348] blackColor];
  [v13 setFill];

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  UIRectFill(v22);
  [*(*(*(a1 + 32) + 8) + 40) drawInRect:{x, y, width, height}];
  v14 = *(*(*(a1 + 40) + 8) + 40);
  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);

  return [v14 drawAtPoint:{v15, v16}];
}

- (void)argon_notificationOverlayImageWithCompletion:(id)completion
{
  v33[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__NTKFace_ArgonSupport__argon_notificationOverlayImageWithCompletion___block_invoke;
    aBlock[3] = &unk_278782A50;
    v6 = completionCopy;
    v27 = v6;
    v7 = _Block_copy(aBlock);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__NTKFace_ArgonSupport__argon_notificationOverlayImageWithCompletion___block_invoke_2;
    v23[3] = &unk_278783D90;
    v8 = v7;
    v24 = v8;
    v9 = v6;
    v25 = v9;
    v10 = _Block_copy(v23);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    argon_overlayAssetType = [(NTKFace *)self argon_overlayAssetType];
    if (argon_overlayAssetType == 1)
    {
      argon_embeddedOverlayAssetURL = [(NTKFace *)self argon_embeddedOverlayAssetURL];
      v15 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      v16 = v15;
      if (argon_embeddedOverlayAssetURL)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v29 = v11;
          v30 = 2114;
          v31 = argon_embeddedOverlayAssetURL;
          _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "Notification: Displaying in-bundle overlay asset for bundle %{public}@ at %{public}@", buf, 0x16u);
        }

        v22 = 0;
        v17 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:argon_embeddedOverlayAssetURL options:0 error:&v22];
        v18 = v22;
        if (v17)
        {
          v10[2](v10, v17, 0);
        }

        else
        {
          (*(v9 + 2))(v9, 0, 1, v18);
        }
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [NTKFace(ArgonSupport) argon_notificationOverlayImageWithCompletion:v16];
        }

        v19 = MEMORY[0x277CCA9B8];
        v33[0] = @"overlay asset missing";
        v32[0] = @"description";
        v32[1] = @"bundleID";
        bundleIdentifier = [(NTKFace *)self bundleIdentifier];
        v33[1] = bundleIdentifier;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        v18 = [v19 errorWithDomain:@"NTKFaceSupportDomain" code:800 userInfo:v21];

        (*(v9 + 2))(v9, 0, 1, v18);
      }
    }

    else
    {
      if (!argon_overlayAssetType)
      {
        v13 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v11;
          _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Notification: Displaying default overlay asset for bundle %{public}@.", buf, 0xCu);
        }
      }

      (*(v8 + 2))(v8, 0);
    }
  }
}

void __70__NTKFace_ArgonSupport__argon_notificationOverlayImageWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDomain" code:606 userInfo:&unk_284189CF0];
  (*(v1 + 16))(v1, 0, 1, v2);
}

void __70__NTKFace_ArgonSupport__argon_notificationOverlayImageWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = CGDataProviderCreateWithCFData(v5);
    if (v7)
    {
      v8 = v7;
      v9 = CGPDFDocumentCreateWithProvider(v7);
      if (v9)
      {
        v10 = v9;
        Page = CGPDFDocumentGetPage(v9, 1uLL);
        if (Page)
        {
          v12 = Page;
          BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
          width = BoxRect.size.width;
          height = BoxRect.size.height;
          v15 = [MEMORY[0x277D75568] preferredFormat];
          [v15 setOpaque:0];
          v16 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v15 format:{width, height}];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __70__NTKFace_ArgonSupport__argon_notificationOverlayImageWithCompletion___block_invoke_3;
          v22[3] = &__block_descriptor_72_e40_v16__0__UIGraphicsImageRendererContext_8l;
          v22[4] = 0;
          v22[5] = 0;
          *&v22[6] = width;
          *&v22[7] = height;
          v22[8] = v12;
          v17 = [v16 imageWithActions:v22];
          CFRelease(v8);
          CFRelease(v10);
          if (v17)
          {
            (*(*(a1 + 40) + 16))();
          }

          else
          {
            v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKFaceSupportDomain" code:707 userInfo:&unk_284189D90];
            (*(*(a1 + 32) + 16))();
          }

          goto LABEL_14;
        }

        CFRelease(v8);
        CFRelease(v10);
        v18 = MEMORY[0x277CCA9B8];
        v19 = &unk_284189D68;
        v20 = 704;
      }

      else
      {
        CFRelease(v8);
        v18 = MEMORY[0x277CCA9B8];
        v19 = &unk_284189D40;
        v20 = 702;
      }
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = &unk_284189D18;
      v20 = 701;
    }

    v15 = [v18 errorWithDomain:@"NTKFaceSupportDomain" code:v20 userInfo:v19];
    (*(*(a1 + 32) + 16))();
LABEL_14:

    goto LABEL_15;
  }

  (*(*(a1 + 32) + 16))();
LABEL_15:
}

void __70__NTKFace_ArgonSupport__argon_notificationOverlayImageWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  Height = CGRectGetHeight(*(a1 + 32));
  CGContextTranslateCTM(v3, 0.0, Height);
  CGContextScaleCTM(v3, 1.0, -1.0);
  v5 = *(a1 + 64);

  CGContextDrawPDFPage(v3, v5);
}

+ (id)defaultFaceFromFaceDescriptor:(id)descriptor forDevice:(id)device
{
  descriptorCopy = descriptor;
  deviceCopy = device;
  currentDevice = deviceCopy;
  if (!descriptorCopy)
  {
    bundleIdentifier = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
    {
      [NTKFace(NTKFaceDescriptorAdditions) defaultFaceFromFaceDescriptor:bundleIdentifier forDevice:?];
    }

    v14 = 0;
    goto LABEL_26;
  }

  if (!deviceCopy)
  {
    v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[NTKFace(NTKFaceDescriptorAdditions) defaultFaceFromFaceDescriptor:forDevice:];
    }

    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  }

  faceStyle = [descriptorCopy faceStyle];
  if (faceStyle == 44)
  {
    bundleIdentifier = [descriptorCopy bundleIdentifier];
    if (!bundleIdentifier)
    {
      v13 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NTKFaceDescriptor faceClass];
      }

      v14 = 0;
      goto LABEL_25;
    }

    v12 = +[NTKFaceBundleManager sharedManager];
    v13 = [v12 faceBundleForBundleIdentifier:bundleIdentifier onDevice:currentDevice];

    if (v13)
    {
      v14 = [v13 defaultFaceForDevice:currentDevice];
      if (v14)
      {
LABEL_25:

        goto LABEL_26;
      }

      v15 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[NTKFace(NTKFaceDescriptorAdditions) defaultFaceFromFaceDescriptor:forDevice:];
      }
    }

    else
    {
      v15 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[NTKFace(NTKFaceDescriptorAdditions) defaultFaceFromFaceDescriptor:forDevice:];
      }

      v14 = 0;
    }

    goto LABEL_25;
  }

  v16 = faceStyle;
  v14 = [self defaultFaceOfStyle:faceStyle forDevice:currentDevice];
  if (v14)
  {
    goto LABEL_27;
  }

  bundleIdentifier = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
  {
    [(NTKFace(NTKFaceDescriptorAdditions) *)v16 defaultFaceFromFaceDescriptor:descriptorCopy forDevice:bundleIdentifier];
  }

LABEL_26:

LABEL_27:

  return v14;
}

- (id)faceDescriptor
{
  faceStyle = [(NTKFace *)self faceStyle];
  v4 = [NTKFaceDescriptor alloc];
  if (faceStyle == 44)
  {
    bundleIdentifier = [(NTKFace *)self bundleIdentifier];
    v6 = [(NTKFaceDescriptor *)v4 initWithBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v6 = [(NTKFaceDescriptor *)v4 initWithFaceStyle:[(NTKFace *)self faceStyle]];
  }

  return v6;
}

- (id)_faceWithRichComplicationSlots
{
  v18 = *MEMORY[0x277D85DE8];
  device = [(NTKFace *)self device];
  if (!NTKShowBlueRidgeUI(device))
  {
    goto LABEL_9;
  }

  faceStyle = [(NTKFace *)self faceStyle];
  v5 = __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke(faceStyle, faceStyle);
  if (v5 == -1)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if ([(NTKFace *)self faceStyle]!= 4)
  {
    faceClass = [objc_opt_class() _faceClassOfFaceWithRichComplicationSlotsForDevice:device];
    if (faceClass)
    {
      goto LABEL_5;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = +[NTKFaceBundleManager sharedManager];
  v8 = [v7 faceBundleForFaceStyle:v6 onDevice:device];
  faceClass = [v8 faceClass];

  if (!faceClass)
  {
    goto LABEL_9;
  }

LABEL_5:
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke_2;
  v13[3] = &unk_278787068;
  v13[4] = self;
  v10 = [faceClass defaultFaceOfStyle:v6 forDevice:device initCustomization:v13];
  v11 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "***** blue_ridge migration from face %@ to face %@", buf, 0x16u);
  }

LABEL_10:

  return v10;
}

uint64_t __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 <= 15)
  {
    if (a2 > 3)
    {
      switch(a2)
      {
        case 4:
          return 29;
        case 10:
          return 210;
        case 12:
          return 212;
      }
    }

    else
    {
      switch(a2)
      {
        case 0:
          return 200;
        case 1:
          return 201;
        case 3:
          return 203;
      }
    }
  }

  else if (a2 <= 19)
  {
    switch(a2)
    {
      case 16:
        return 216;
      case 17:
        return 217;
      case 19:
        return 219;
    }
  }

  else if (a2 > 26)
  {
    if (a2 == 27)
    {
      return 227;
    }

    if (a2 == 33)
    {
      return 233;
    }
  }

  else
  {
    if (a2 == 20)
    {
      return 220;
    }

    if (a2 == 23)
    {
      return 223;
    }
  }

  return -1;
}

void __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 editModes];
  v5 = [*(a1 + 32) editModes];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v4 containsObject:v10])
        {
          v11 = [v10 integerValue];
          if (v11 != 1)
          {
            v12 = v11;
            v13 = [*(a1 + 32) selectedOptionForCustomEditMode:v11 slot:0];
            [v3 selectOption:v13 forCustomEditMode:v12 slot:0];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v14 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke_3;
  v23[3] = &unk_27877F498;
  v23[4] = v14;
  v15 = v3;
  v24 = v15;
  [v14 enumerateComplicationSlotsWithBlock:v23];
  v16 = [*(a1 + 32) resourceDirectory];

  if (v16)
  {
    v17 = NTKNewUniqueTeporaryResourceDirectory();
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [*(a1 + 32) resourceDirectory];
    v22 = 0;
    [v18 copyItemAtPath:v19 toPath:v17 error:&v22];
    v20 = v22;

    if (v20)
    {
      v21 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke_2_cold_1(v15, v21);
      }

      v17 = 0;
    }

    [v15 setResourceDirectory:v17];
  }
}

void __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) complicationForSlot:v12];
  v4 = [*(a1 + 40) rankedComplicationFamiliesForSlot:v12];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 integerValue];
    v7 = [*(a1 + 40) allowedComplicationsForSlot:v12];
    v8 = [v3 _migrateToFamily:v6 withAllowedComplications:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }

    v11 = v10;

    v3 = v11;
  }

  [*(a1 + 40) setComplication:v3 forSlot:v12];
}

- (id)_migratedBundleFace
{
  v51 = *MEMORY[0x277D85DE8];
  device = [(NTKFace *)self device];
  faceStyle = [(NTKFace *)self faceStyle];
  _defaultFace = 0;
  if (faceStyle <= 201)
  {
    if (faceStyle > 20)
    {
      if (faceStyle > 0x29)
      {
LABEL_67:
        if (faceStyle != 21)
        {
          goto LABEL_86;
        }

LABEL_68:
        deviceCategory = [device deviceCategory];
        v36 = +[NTKFaceBundleManager sharedManager];
        v37 = v36;
        if (deviceCategory < 3)
        {
          v7 = [v36 faceBundleForFaceStyle:29 onDevice:device];

          if (!v7)
          {
            v41 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              [NTKFace(Migration) _migratedBundleFace];
            }
          }

          v39 = [v7 defaultFaceForDevice:device];
          if (!v39)
          {
            v40 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              [NTKFace(Migration) _migratedBundleFace];
            }

            goto LABEL_84;
          }
        }

        else
        {
          v7 = [v36 faceBundleForBundleIdentifier:@"com.apple.NTKCloudrakerFaceBundle" onDevice:device];

          if (!v7)
          {
            v38 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
            if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              [NTKFace(Migration) _migratedBundleFace];
            }
          }

          v39 = [v7 defaultFaceForDevice:device];
          if (!v39)
          {
            v40 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              [NTKFace(Migration) _migratedBundleFace];
            }

LABEL_84:

            _defaultFace = 0;
            goto LABEL_85;
          }
        }

        _defaultFace = v39;
        goto LABEL_85;
      }

      if (((1 << faceStyle) & 0x20190000000) != 0)
      {
        goto LABEL_33;
      }

      if (faceStyle != 24)
      {
        if (faceStyle == 25)
        {
          if ([device isTinker])
          {
            v6 = +[NTKFaceBundleManager sharedManager];
            v7 = [v6 faceBundleForBundleIdentifier:@"com.apple.NTKEsterbrookFaceBundle" onDevice:device];

            if (!v7)
            {
              v8 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
              if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
              {
                [NTKFace(Migration) _migratedBundleFace];
              }
            }

            _defaultFace = [v7 defaultFaceForDevice:device];
            if (_defaultFace)
            {
              goto LABEL_85;
            }

            v9 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
            if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
            {
              [NTKFace(Migration) _migratedBundleFace];
            }

            goto LABEL_50;
          }

LABEL_33:
          _defaultFace = [(NTKFace *)self _defaultFace];
          goto LABEL_86;
        }

        goto LABEL_67;
      }

      goto LABEL_41;
    }

    if (faceStyle != 2)
    {
      if (faceStyle != 9)
      {
        if (faceStyle != 18)
        {
          goto LABEL_86;
        }

        goto LABEL_23;
      }

      v20 = +[NTKFaceBundleManager sharedManager];
      v21 = [v20 faceBundleForBundleIdentifier:@"com.apple.NTKAegirFaceBundle" onDevice:device];

      if (!v21)
      {
        v22 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [NTKFace(Migration) _migratedBundleFace];
        }
      }

      v23 = [v21 defaultFaceForDevice:device];
      if (!v23)
      {
        v24 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [NTKFace(Migration) _migratedBundleFace];
        }
      }

      v43 = v21;
      [v23 setForMigration:1];
      selectedOptionsForCustomEditModes = [(NTKFace *)self selectedOptionsForCustomEditModes];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v26 = [selectedOptionsForCustomEditModes countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v47;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v47 != v28)
            {
              objc_enumerationMutation(selectedOptionsForCustomEditModes);
            }

            unsignedIntValue = [*(*(&v46 + 1) + 8 * i) unsignedIntValue];
            v31 = [(NTKFace *)self selectedOptionForCustomEditMode:unsignedIntValue slot:0];
            v32 = [v23 optionAtIndex:-[NTKFace indexOfOption:forCustomEditMode:slot:](self forCustomEditMode:"indexOfOption:forCustomEditMode:slot:" slot:{v31, unsignedIntValue, 0), unsignedIntValue, 0}];
            [v23 selectOption:v32 forCustomEditMode:unsignedIntValue slot:0];
          }

          v27 = [selectedOptionsForCustomEditModes countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v27);
      }

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __41__NTKFace_Migration___migratedBundleFace__block_invoke;
      v44[3] = &unk_27877F498;
      v44[4] = self;
      v33 = v23;
      v45 = v33;
      [(NTKFace *)self enumerateComplicationSlotsWithBlock:v44];
      v34 = v45;
      _defaultFace = v33;

      goto LABEL_86;
    }

LABEL_34:
    v12 = +[NTKFaceBundleManager sharedManager];
    v7 = [v12 faceBundleForBundleIdentifier:@"com.apple.NTKAlaskanFaceBundle.NTKSharkFaceBundle" onDevice:device];

    if (!v7)
    {
      v13 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [NTKFace(Migration) _migratedBundleFace];
      }
    }

    _defaultFace = [v7 defaultFaceForDevice:device];
    if (_defaultFace)
    {
      goto LABEL_85;
    }

    v9 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [NTKFace(Migration) _migratedBundleFace];
    }

    goto LABEL_50;
  }

  if (faceStyle > 223)
  {
    if ((faceStyle - 231) < 2)
    {
      goto LABEL_33;
    }

    if (faceStyle != 224)
    {
      if (faceStyle != 228)
      {
        goto LABEL_86;
      }

      goto LABEL_33;
    }

LABEL_41:
    v14 = +[NTKFaceBundleManager sharedManager];
    v7 = [v14 faceBundleForFaceStyle:30 onDevice:device];

    if (!v7)
    {
      v15 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [NTKFace(Migration) _migratedBundleFace];
      }
    }

    _defaultFace = [v7 defaultFaceForDevice:device];
    if (!_defaultFace)
    {
      v16 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [NTKFace(Migration) _migratedBundleFace];
      }
    }

    v9 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:@"com.apple.NanoTimeKit.NTKCellularConnectivityComplicationDataSource" appBundleIdentifier:0 complicationDescriptor:0];
    v17 = [NTKBundleComplication bundledComplicationWithComplication:v9];
    [_defaultFace setComplication:v17 forSlot:@"bezel"];

    v18 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:@"com.apple.NanoTimeKit.AnalogSeconds" appBundleIdentifier:0 complicationDescriptor:0];
    v19 = [NTKBundleComplication bundledComplicationWithComplication:v18];
    [_defaultFace setComplication:v19 forSlot:@"slot3"];

LABEL_50:
LABEL_85:

    goto LABEL_86;
  }

  switch(faceStyle)
  {
    case 202:
      goto LABEL_34;
    case 218:
LABEL_23:
      v10 = +[NTKFaceBundleManager sharedManager];
      v7 = [v10 faceBundleForBundleIdentifier:@"com.apple.NTKBigNumeralsAnalogFaceBundle" onDevice:device];

      if (!v7)
      {
        v11 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [NTKFace(Migration) _migratedBundleFace];
        }
      }

      _defaultFace = [v7 defaultFaceForDevice:device];
      if (_defaultFace)
      {
        goto LABEL_85;
      }

      v9 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [NTKFace(Migration) _migratedBundleFace];
      }

      goto LABEL_50;
    case 221:
      goto LABEL_68;
  }

LABEL_86:

  return _defaultFace;
}

void __41__NTKFace_Migration___migratedBundleFace__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 complicationForSlot:v4];
  [*(a1 + 40) setComplication:v5 forSlot:v4];
}

- (id)_defaultFace
{
  v25 = *MEMORY[0x277D85DE8];
  device = [(NTKFace *)self device];
  v4 = NTKDefaultLibraryFaceDescriptors(device);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [(NTKFace *)self device:v17];
        v13 = [NTKFace defaultFaceFromFaceDescriptor:v11 forDevice:v12];

        if (v13)
        {
          v15 = v5;
          goto LABEL_15;
        }

        v14 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = v17;
          v23 = v11;
          _os_log_fault_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_FAULT, "Expected default face for descriptor: %@, but face is nil.", buf, 0xCu);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [NTKFace(Migration) _defaultFace];
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

void __48__NTKFace_selectedSlotOptionsForCustomEditMode___block_invoke_cold_1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v2, v3, "MISSING SELECTION FOR AN EDIT OPTION (face: %@, editMode: %ld). falling back to default edit option.", v4, v5, v6, v7, 2u);
}

+ (void)faceWithJSONObjectRepresentation:(os_log_t)log forDevice:forMigration:allowFallbackFromInvalidFaceStyle:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Face bundle fatal error: %@", buf, 0xCu);
}

- (void)hasValidConfigurationForDevice:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v2, v3, "Edit option %@ does not exist in device %@", v4, v5, v6, v7, v8);
}

void __64__NTKFace_ArgonSupport__argon_compositedSnapshotWithCompletion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Error getting overlay %@ - using fallback…", &v3, 0xCu);
}

void __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 resourceDirectory];
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "***** blue_ridge cannot copy resource directory %@ of face %@", &v5, 0x16u);
}

@end