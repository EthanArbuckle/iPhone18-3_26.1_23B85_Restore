@interface NTKFace
+ (BOOL)_complication:(id)a3 isValidForSlot:(id)a4 forDevice:(id)a5;
+ (BOOL)isFaceStyleAvailableInternal:(int64_t)a3 forDevice:(id)a4;
+ (Class)_faceClassForStyle:(int64_t)a3 onDevice:(id)a4;
+ (NTKArgonKeyDescriptor)keyDescriptor;
+ (id)_complicationSlotDescriptors;
+ (id)_complicationTypeMigrations;
+ (id)_dateComplicationSlotForDevice:(id)a3;
+ (id)_defaultSelectedComplicationSlotForDevice:(id)a3;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
+ (id)allPigmentFaceDomains;
+ (id)argon_overlayAssetArchiveURL;
+ (id)availableInternalFaceDescriptorsForDevice:(id)a3;
+ (id)bundledFaceWithIdentifier:(id)a3 analyticsIdentifier:(id)a4 forDevice:(id)a5 initCustomization:(id)a6;
+ (id)bundledFaceWithIdentifier:(id)a3 forDevice:(id)a4 initCustomization:(id)a5;
+ (id)defaultAnalyticsIdentifierForBundleIdentifier:(id)a3;
+ (id)defaultFaceFromFaceDescriptor:(id)a3 forDevice:(id)a4;
+ (id)defaultFaceOfStyle:(int64_t)a3 forDevice:(id)a4 initCustomization:(id)a5;
+ (id)faceWithInstanceDescriptor:(id)a3;
+ (id)faceWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4 forMigration:(BOOL)a5 allowFallbackFromInvalidFaceStyle:(BOOL)a6;
+ (id)localizedNameForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)possibleComplicationTypesForSlot:(id)a3;
+ (unint64_t)_dateComplicationSlotSupportedStylesForDevice:(id)a3;
+ (unint64_t)maximumRemoteComplicationsOnAnyFace;
+ (void)enumerateComplicationSlots:(id)a3 withBlock:(id)a4;
+ (void)enumerateComplicationSlotsWithBlock:(id)a3;
+ (void)greenfieldFaceWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4 withCompletion:(id)a5;
- (BOOL)_applyConfiguration:(id)a3 allowFailure:(BOOL)a4 forMigration:(BOOL)a5;
- (BOOL)_complication:(id)a3 supportsFamilies:(id)a4 inSlot:(id)a5;
- (BOOL)_complication:(id)a3 supportsFamily:(int64_t)a4 inSlot:(id)a5;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)a3 error:(id *)a4;
- (BOOL)_faceGalleryDidUpdateFaceColorForColorEditOptionClass:(Class)a3 availableHardwareSpecificColorOptions:(id)a4 availableColorOptions:(id)a5;
- (BOOL)_faceGalleryIsRestricted;
- (BOOL)_migrationExistsForComplicationType:(unint64_t)a3 rankedFamilies:(id)a4;
- (BOOL)_option:(id)a3 isValidForCustomEditMode:(int64_t)a4 slot:(id)a5;
- (BOOL)_shouldHideUI;
- (BOOL)_shouldPresentAlertForSharingUnreleasedFace;
- (BOOL)complicationExistenceInvalidatesSnapshot;
- (BOOL)deviceSupportsPigmentEditOption;
- (BOOL)hasCompanionEdits;
- (BOOL)hasGizmoEdits;
- (BOOL)hasValidConfigurationForDevice:(id)a3;
- (BOOL)isEditable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToFace:(id)a3;
- (BOOL)isFullscreenConfiguration;
- (BOOL)multicolored;
- (BOOL)option:(id)a3 migratesToValidOption:(id *)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6;
- (BOOL)slot:(id)a3 supportsFamiliesOfComplications:(id)a4;
- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (BOOL)supportsPigmentEditOption;
- (BOOL)treatAsUsingCustomAsset;
- (BOOL)usesComplications;
- (Class)editOptionClassFromEditMode:(int64_t)a3 resourceDirectoryExists:(BOOL)a4;
- (Class)legacyEditOptionClassFromCustomEditMode:(int64_t)a3 resourceDirectoryExists:(BOOL)a4;
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
- (NTKFace)initWithCoder:(id)a3;
- (NTKFaceView)faceView;
- (id)JSONObjectRepresentation;
- (id)_allComplications;
- (id)_complicationProviderOptionsForSlot:(id)a3;
- (id)_complicationSlotDescriptors;
- (id)_configurationFromOldEncodingWithCoder:(id)a3;
- (id)_defaultComplicationOfType:(unint64_t)a3 forSlot:(id)a4;
- (id)_defaultFace;
- (id)_defaultName;
- (id)_disabledComplicationTypesIndexSet;
- (id)_editOptionsForEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_faceDescriptionForExternal;
- (id)_faceDescriptionForLibrary;
- (id)_faceDescriptionKey;
- (id)_faceDescriptionKeyForExternal;
- (id)_faceDescriptionKeyForLibrary;
- (id)_faceGalleryCalloutName;
- (id)_faceWithRichComplicationSlots;
- (id)_initWithFaceStyle:(int64_t)a3 forDevice:(id)a4;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_migratedBundleFace;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)_orderedComplicationSlots;
- (id)_sortedComplicationSlots;
- (id)_uniqueOptionForCustomEditMode:(int64_t)a3 slot:(id)a4 withExistingOptions:(id)a5;
- (id)_validOptionForOption:(id)a3 mode:(int64_t)a4 slot:(id)a5 configuration:(id)a6;
- (id)addFaceDetailViewController;
- (id)allVisibleComplicationsForCurrentConfiguration;
- (id)allowedComplicationTypesFromDescriptors:(id)a3 slot:(id)a4;
- (id)allowedComplicationsForSlot:(id)a3 includingComplication:(id)a4;
- (id)complicationForSlot:(id)a3;
- (id)complicationVariantForComplication:(id)a3 withSlot:(id)a4;
- (id)configurationJSONRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepCopy;
- (id)defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)editOptionsForCustomEditModes;
- (id)faceDescriptionForAccessibility;
- (id)faceDescriptor;
- (id)greenfieldJSONObjectRepresentation;
- (id)instanceDescriptor;
- (id)libraryDetailViewController;
- (id)nameOfSelectedOptionForCustomEditMode:(int64_t)a3;
- (id)namesOfSelectedOptionsForCustomEditModes;
- (id)newDynamicEditOptionCollectionForSection:(unint64_t)a3;
- (id)optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)possibleComplicationTypesForSlot:(id)a3;
- (id)rankedComplicationFamiliesForSlot:(id)a3;
- (id)replacedOptionWithFulfilledOption:(id)a3 forEditMode:(int64_t)a4 slot:(id)a5;
- (id)selectedOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)selectedOptionsForCustomEditModes;
- (id)selectedSlotForEditMode:(int64_t)a3;
- (id)selectedSlotOptionsForCustomEditMode:(int64_t)a3;
- (id)slotForAddColorsViewFrame;
- (id)slotsForCustomEditMode:(int64_t)a3;
- (int64_t)_customEditModeForUniqueConfiguration;
- (int64_t)editedState;
- (int64_t)origin;
- (int64_t)preferredComplicationFamilyForComplication:(id)a3 withSlot:(id)a4;
- (unint64_t)_collectionTypeForEditMode:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (unint64_t)indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_commonInit;
- (void)_deleteResourceDirectoryIfOwned;
- (void)_handleColorEditOptionsChanged;
- (void)_handleComplicationChangeNotification;
- (void)_handleSingleComplicationDidChangeNotification:(id)a3;
- (void)_notifyObserversComplicationDidChangeForSlot:(id)a3;
- (void)_notifyObserversFaceConfigurationDidChange;
- (void)_notifyObserversFaceResourceDirectoryDidChange;
- (void)_notifyObserversFaceTimeStyleChanged;
- (void)_notifyObserversFaceUpgradeOccurred;
- (void)_notifyObserversOptionsDidChangeForEditMode:(int64_t)a3;
- (void)_notifyObserversThatRespondToSelector:(SEL)a3 callSelector:(id)a4;
- (void)_selectDefaultSlots;
- (void)_setFaceGalleryComplicationTypesForSlots:(id)a3 canRepeat:(BOOL)a4;
- (void)_setResourceDirectory:(id)a3;
- (void)_updateComplicationTombstones;
- (void)addObserver:(id)a3;
- (void)applyDefaultComplicationConfiguration;
- (void)applyDefaultConfiguration;
- (void)applyUniqueConfigurationWithExistingFaces:(id)a3;
- (void)argon_compositedSnapshotWithCompletion:(id)a3;
- (void)argon_notificationContentWithCompletion:(id)a3;
- (void)argon_notificationOverlayImageWithCompletion:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateComplicationSlotsWithBlock:(id)a3;
- (void)enumerateCustomEditModesWithBlock:(id)a3;
- (void)enumerateSlotsForCustomEditMode:(int64_t)a3 withBlock:(id)a4;
- (void)enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:(id)a3;
- (void)handleSharingMetadata:(id)a3;
- (void)incrementNumberOfCompanionEdits;
- (void)incrementNumberOfGizmoEdits;
- (void)removeObserver:(id)a3;
- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)selectOptions:(id)a3 forCustomEditMode:(int64_t)a4;
- (void)setComplication:(id)a3 forSlot:(id)a4;
- (void)setComplicationSlotDescriptors:(id)a3;
- (void)setComplicationsForSlots:(id)a3;
- (void)setCreationDate:(id)a3;
- (void)setCustomData:(id)a3 forKey:(id)a4;
- (void)setEditedState:(int64_t)a3;
- (void)setExternalAssets:(id)a3;
- (void)setLastEditedDate:(id)a3;
- (void)setName:(id)a3;
- (void)setOrigin:(int64_t)a3;
- (void)setResourceDirectory:(id)a3;
- (void)setResourceDirectoryByTransferringOwnership:(id)a3;
- (void)setSelectedSlot:(id)a3 forEditMode:(int64_t)a4;
- (void)toggleComplicationChangeObservation:(BOOL)a3;
@end

@implementation NTKFace

- (id)instanceDescriptor
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(NTKFace *)self resourceDirectory];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NTKFace *)self JSONObjectRepresentation];
  v15 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:2 error:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = [(NTKFace *)self device];
    v9 = [v8 pairingID];

    objc_autoreleasePoolPop(v4);
    v10 = [[NTKFaceInstanceDescriptor alloc] initWithJSONRepresentation:v6 pairingID:v9 resourceDirectory:v3];
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
      v21 = v5;
      v22 = 2112;
      v23 = self;
      v14 = v13;
      _os_log_error_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_ERROR, "Face %@ failed to generate JSON %@ - %@ / %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    v10 = 0;
  }

  return v10;
}

+ (id)faceWithInstanceDescriptor:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 faceJSONRepresentation];
  if (v5)
  {
    v6 = v5;
    v17 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v17];
    v8 = v17;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = v7;
      v11 = [v3 pairingID];
      v12 = [MEMORY[0x277CBBAE8] deviceForPairingID:v11];
    }

    else
    {
      v11 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(NTKFace(NTKFaceInstanceDescriptorAdditions) *)v8 faceWithInstanceDescriptor:v11];
      }

      v12 = 0;
      v10 = 0;
    }

    objc_autoreleasePoolPop(v4);
    if (isKindOfClass)
    {
      v14 = [NTKFace faceWithJSONObjectRepresentation:v10 forDevice:v12];
      v15 = [v3 resourceDirectory];
      [v14 setResourceDirectory:v15];

      goto LABEL_13;
    }
  }

  else
  {
    v13 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NTKFace(NTKFaceInstanceDescriptorAdditions) *)v3 faceWithInstanceDescriptor:v13];
    }

    objc_autoreleasePoolPop(v4);
    v10 = 0;
    v12 = 0;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)_setFaceGalleryComplicationTypesForSlots:(id)a3 canRepeat:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NTKFace *)self device];
  v8 = [NTKComplicationProvider providerForDevice:v7];
  v9 = [v8 disabledComplicationTypes];

  v10 = objc_opt_new();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = [v6 allValues];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __84__NTKFace_FaceGalleryAdditions___setFaceGalleryComplicationTypesForSlots_canRepeat___block_invoke;
  v26[3] = &unk_278780948;
  v26[4] = &v27;
  [v11 enumerateObjectsUsingBlock:v26];

  if (v4 && *(v28 + 24) == 1)
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
  v13 = v6;
  v18 = v13;
  v24 = v4;
  v14 = v10;
  v19 = v14;
  v23 = v25;
  v15 = v12;
  v20 = v15;
  v21 = self;
  v16 = v9;
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

- (BOOL)_faceGalleryDidUpdateFaceColorForColorEditOptionClass:(Class)a3 availableHardwareSpecificColorOptions:(id)a4 availableColorOptions:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 count])
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v9 firstObject];
  if (v10)
  {
    [(NTKFace *)self selectOption:v10 forCustomEditMode:10 slot:0];
    [v7 removeObject:v10];
    [v8 removeObject:v10];
  }

  return v10 != 0;
}

- (id)_faceGalleryCalloutName
{
  v3 = [(NTKFace *)self device];
  v4 = [(NTKFace *)self name];
  if (-[NTKFace faceStyle](self, "faceStyle") == 3 && [v3 deviceCategory] != 1)
  {
    v6 = [(NTKFace *)self selectedOptionForCustomEditMode:15 slot:0];
    v7 = [v6 localizedName];
    v5 = [v4 stringByAppendingFormat:@" (%@)", v7];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (BOOL)_faceGalleryIsRestricted
{
  v3 = +[NTKFaceBundleManager sharedManager];
  v4 = [(NTKFace *)self device];
  v5 = [v3 faceBundleForFaceStyle:26 onDevice:v4];

  v6 = +[NTKFaceBundleManager sharedManager];
  v7 = [(NTKFace *)self device];
  v8 = [v6 faceBundleForFaceStyle:33 onDevice:v7];

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
  v2 = [(NTKFace *)self _faceDescriptionKey];
  v3 = NTKClockFaceLocalizedString(v2, @"description");

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
  v2 = [(NTKFace *)self _faceDescriptionKeyForLibrary];
  v3 = v2;
  if (v2)
  {
    v4 = NTKClockFaceLocalizedString(v2, @"library description");
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
  v2 = [(NTKFace *)self _faceDescriptionKey];
  v3 = [v2 stringByAppendingString:@"_LIBRARY"];

  return v3;
}

- (id)_faceDescriptionForExternal
{
  v3 = [(NTKFace *)self _faceDescriptionKeyForExternal];
  if (v3)
  {
    v4 = [(NTKFace *)self _localizedStringForExternal:v3 comment:@"external description"];
    if (![v4 isEqualToString:v3])
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
  v2 = [(NTKFace *)self _faceDescriptionKey];
  v3 = [v2 stringByAppendingString:@"_EXTERNAL"];

  return v3;
}

- (id)faceDescriptionForAccessibility
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NTKFace *)self name];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:v3];
  }

  v17 = v3;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NTKFace *)self _customEditModes];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) integerValue];
        v12 = [(NTKFace *)self configuration];
        v13 = [v12 optionForCustomEditMode:v11 slot:0];

        if (v13)
        {
          v14 = [v13 localizedName];
          if (([v5 containsObject:v14] & 1) == 0 && objc_msgSend(v14, "rangeOfString:options:", @"placeholder", 1) == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = MEMORY[0x2318D9590](v5);

  return v15;
}

- (BOOL)treatAsUsingCustomAsset
{
  v2 = [(NTKFace *)self resourceDirectory];
  v3 = v2 != 0;

  return v3;
}

+ (id)allPigmentFaceDomains
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [a1 pigmentFaceDomain];

  if (v4)
  {
    v5 = [a1 pigmentFaceDomain];
    [v3 addObject:v5];
  }

  v6 = [a1 additionalPigmentFaceDomains];

  if (v6)
  {
    v7 = [a1 additionalPigmentFaceDomains];
    [v3 addObjectsFromArray:v7];
  }

  return v3;
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
  v2 = [objc_opt_class() pigmentFaceDomain];
  v3 = [v2 length] != 0;

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

  v5 = [objc_opt_class() complicationConfiguration];
  complicationConfiguration = self->_complicationConfiguration;
  self->_complicationConfiguration = v5;

  v7 = +[NTKSafeHashTable weakObjectsHashTable];
  fvcObservers = self->_fvcObservers;
  self->_fvcObservers = v7;

  v9 = [NTKSafeHashTable hashTableWithOptions:517];
  observers = self->_observers;
  self->_observers = v9;

  v11 = [(NTKFace *)self _complicationSlotDescriptors];
  complicationSlotDescriptors = self->_complicationSlotDescriptors;
  self->_complicationSlotDescriptors = v11;

  self->_mostRecentEditMode = 0;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selectedSlotsByEditMode = self->_selectedSlotsByEditMode;
  self->_selectedSlotsByEditMode = v13;

  v15 = objc_alloc_init(NTKFaceConfiguration);
  configuration = self->_configuration;
  self->_configuration = v15;

  [(NTKFace *)self _selectDefaultSlots];
}

- (id)_initWithFaceStyle:(int64_t)a3 forDevice:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NTKFace;
  v8 = [(NTKFace *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_faceStyle = a3;
    objc_storeStrong(&v8->_device, a4);
    [(NTKFace *)v9 _commonInit];
    [(NTKFace *)v9 toggleComplicationChangeObservation:1];
  }

  return v9;
}

- (void)dealloc
{
  [(NTKFace *)self _deleteResourceDirectoryIfOwned];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"NTKRemoteComplicationProviderComplicationsDidChange" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"NTKComplicationDidChangeNotification" object:0];

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

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKFace;
  return [(NTKFace *)&v4 isEqual:a3];
}

- (void)toggleComplicationChangeObservation:(BOOL)a3
{
  v3 = a3;
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:@"NTKRemoteComplicationProviderComplicationsDidChange" object:0];
  [v6 removeObserver:self name:@"NTKComplicationDidChangeNotification" object:0];
  if (v3)
  {
    [v6 addObserver:self selector:sel__handleComplicationChangeNotification name:@"NTKRemoteComplicationProviderComplicationsDidChange" object:0];
    [v6 addObserver:self selector:sel__handleComplicationChangeNotification name:@"NTKWidgetComplicationProviderComplicationsDidChange" object:0];
    [v6 addObserver:self selector:sel__handleSingleComplicationDidChangeNotification_ name:@"NTKComplicationDidChangeNotification" object:0];
    v5 = [NTKComplicationProvider providerForDevice:self->_device];
    [v5 registerObserver:self];
  }

  else
  {
    v5 = [NTKComplicationProvider providerForDevice:self->_device];
    [v5 unregisterObserver:self];
  }
}

- (void)addObserver:(id)a3
{
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 24;
  if (isKindOfClass)
  {
    v5 = 16;
  }

  [*(&self->super.isa + v5) addObject:v6];
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 24;
  if (isKindOfClass)
  {
    v5 = 16;
  }

  [*(&self->super.isa + v5) removeObject:v6];
}

- (void)setResourceDirectory:(id)a3
{
  v4 = a3;
  if (self->_resourceDirectoryIsOwned || (NTKEqualStrings(v4, self->_resourceDirectory) & 1) == 0)
  {
    [(NTKFace *)self _deleteResourceDirectoryIfOwned];
    [(NTKFace *)self _setResourceDirectory:v4];
  }
}

- (void)setResourceDirectoryByTransferringOwnership:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_resourceDirectoryIsOwned || (NTKEqualStrings(v4, self->_resourceDirectory) & 1) == 0)
  {
    [(NTKFace *)self _deleteResourceDirectoryIfOwned];
    if (v5)
    {
      v6 = [objc_opt_class() _linkedResourceRootDirectory];
      v7 = [MEMORY[0x277CCAD78] UUID];
      v8 = [v7 UUIDString];
      v9 = [v6 stringByAppendingPathComponent:v8];

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = 0;
      LODWORD(v8) = [v10 copyItemAtPath:v5 toPath:v9 error:&v14];
      v11 = v14;

      if (v8)
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

- (void)setComplicationSlotDescriptors:(id)a3
{
  objc_storeStrong(&self->_complicationSlotDescriptors, a3);

  [(NTKFace *)self _selectDefaultSlots];
}

- (void)_deleteResourceDirectoryIfOwned
{
  if (self->_resourceDirectoryIsOwned)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    [v3 removeItemAtPath:self->_resourceDirectory error:0];

    resourceDirectory = self->_resourceDirectory;
    self->_resourceDirectory = 0;

    self->_resourceDirectoryIsOwned = 0;
  }
}

- (void)_setResourceDirectory:(id)a3
{
  resourceDirectory = self->_resourceDirectory;
  v5 = a3;
  v8 = [(NSString *)resourceDirectory copy];
  v6 = [v5 copy];

  v7 = self->_resourceDirectory;
  self->_resourceDirectory = v6;

  [(NTKFaceConfiguration *)self->_configuration setResourceDirectoryExists:self->_resourceDirectory != 0];
  [(NTKFace *)self _updateForResourceDirectoryChange:v8];
  [(NTKFace *)self _notifyObserversFaceResourceDirectoryDidChange];
}

- (void)_notifyObserversThatRespondToSelector:(SEL)a3 callSelector:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__NTKFace__notifyObserversThatRespondToSelector_callSelector___block_invoke;
  aBlock[3] = &unk_278783458;
  v29 = a3;
  v7 = v6;
  v28 = v7;
  v8 = _Block_copy(aBlock);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(NTKSafeHashTable *)self->_fvcObservers allObjects];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v9);
        }

        v8[2](v8, *(*(&v23 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = [(NTKSafeHashTable *)self->_observers allObjects];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v30 count:16];
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
          objc_enumerationMutation(v14);
        }

        v8[2](v8, *(*(&v19 + 1) + 8 * v18++));
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v30 count:16];
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

- (void)_notifyObserversOptionsDidChangeForEditMode:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__NTKFace__notifyObserversOptionsDidChangeForEditMode___block_invoke;
  v3[3] = &unk_2787834A8;
  v3[4] = self;
  v3[5] = a3;
  [(NTKFace *)self _notifyObserversThatRespondToSelector:sel_face_didChangeOptionsForEditMode_ callSelector:v3];
}

- (void)_notifyObserversComplicationDidChangeForSlot:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NTKFace__notifyObserversComplicationDidChangeForSlot___block_invoke;
  v6[3] = &unk_2787834D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
  v2 = [ViewClassForFace(self) uiSensitivity];
  v3 = [MEMORY[0x277CBBB70] sharedMonitor];
  LOBYTE(v2) = [v3 shouldHideForSensitivity:v2];

  return v2;
}

- (NSString)dailySnapshotKey
{
  v2 = [(NTKFace *)self unsafeDailySnapshotKey];
  v3 = NTKSanitizedFileNameFromStableIdentifier(v2);

  return v3;
}

- (NSString)unadornedSnapshotKey
{
  v2 = [(NTKFace *)self unsafeDailySnapshotKey];
  v3 = [@"unadorned" stringByAppendingString:v2];

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
            v15 = [(NTKFace *)self device];
            v16 = [v12 customDailySnapshotKeyForFamily:v14 device:v15];
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
      v18 = [(NTKFace *)self _sortedComplicationSlots];
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v31 + 1) + 8 * j);
            v24 = [(NTKFace *)self complicationForSlot:v23];
            if ([v24 complicationType])
            {
              [v6 appendString:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v20);
      }

      [v6 appendString:@""]);
    }

    [v6 appendFormat:@"-(%lu)", -[CLKDevice sizeClass](self->_device, "sizeClass")];
    v25 = [(NTKFace *)self _resourceDirectorySnapshotKey];
    v26 = v25;
    if (v25)
    {
      [v6 appendFormat:@"-%@", v25];
    }

    v27 = [(NTKFace *)self device];
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
  v3 = [(NTKFace *)self complicationConfiguration];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NTKFace *)self complicationConfiguration];
  v5 = [v4 complicationExistenceInvalidatesSnapshot];

  return v5;
}

- (NSString)name
{
  v3 = [(NTKFaceConfiguration *)self->_configuration name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NTKFace *)self _defaultName];
  }

  v6 = v5;

  return v6;
}

- (void)setName:(id)a3
{
  v6 = a3;
  v4 = [(NTKFaceConfiguration *)self->_configuration name];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(NTKFaceConfiguration *)self->_configuration setName:v6];
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (id)selectedOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceConfiguration *)self->_configuration optionForCustomEditMode:a3 slot:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [(NTKFace *)self _validOptionForOption:v7 mode:a3 slot:v6 configuration:self->_configuration];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v10 = [(NTKFace *)self replacedOptionWithFulfilledOption:a3 forEditMode:a4 slot:v8];
  v9 = [(NTKFaceConfiguration *)self->_configuration optionForCustomEditMode:a4 slot:v8];
  [(NTKFaceConfiguration *)self->_configuration setOption:v10 forCustomEditMode:a4 slot:v8];
  if ((NTKEqualObjects(v10, v9) & 1) == 0)
  {
    [(NTKFace *)self _noteOptionChangedFrom:v9 to:v10 forCustomEditMode:a4 slot:v8];
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (void)selectOptions:(id)a3 forCustomEditMode:(int64_t)a4
{
  v6 = a3;
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
  v14 = self;
  v15 = &v17;
  v16 = a4;
  [v6 enumerateKeysAndObjectsUsingBlock:&v9];
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

- (id)defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    v7 = [(NTKFace *)self pigmentOptionProvider];
    v8 = [v7 defaultColorOptionForSlot:v6];
  }

  else
  {
    v8 = [(NTKFace *)self _defaultOptionForCustomEditMode:a3 slot:v6];
  }

  return v8;
}

+ (id)localizedNameForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v5 = [a1 _localizedNameOverrideForCustomEditMode:a3 forDevice:a4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = NTKLocalizedNameForCustomEditMode(a3);
  }

  v8 = v7;

  return v8;
}

- (id)selectedSlotOptionsForCustomEditMode:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__NTKFace_selectedSlotOptionsForCustomEditMode___block_invoke;
  v10[3] = &unk_278783520;
  v10[4] = self;
  v12 = a3;
  v6 = v5;
  v11 = v6;
  [(NTKFace *)self enumerateSlotsForCustomEditMode:a3 withBlock:v10];
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
  v3 = [(NTKFace *)self editModes];
  v29 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v3;
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
        v11 = [v10 integerValue];
        if (v11 != 1)
        {
          v12 = v11;
          v13 = [(NTKFace *)self slotsForCustomEditMode:v11];
          v14 = [v13 firstObject];
          v15 = [(NTKFace *)self selectedOptionForCustomEditMode:v12 slot:v14];
          if (v15)
          {
            goto LABEL_11;
          }

          v15 = [(NTKFace *)self defaultOptionForCustomEditMode:v12 slot:v14];
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
          if (v15)
          {
LABEL_11:
            [v29 setObject:v15 forKey:v10];
          }

          else
          {
            v15 = [(NTKFace *)self device];
            v17 = [(NTKFace *)self faceDescriptor];
            v18 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              v27 = NTKFaceBundleStringFromCustomEditMode(v12);
              v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "isRunningGraceOrLater")}];
              v25 = [v15 pdrDevice];
              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v15, "pdrDeviceVersion")}];
              *buf = v22;
              v35 = v27;
              v36 = 2048;
              v37 = v12;
              v38 = 2112;
              v39 = v17;
              v40 = 2112;
              v41 = v15;
              v42 = 2112;
              v43 = v24;
              v44 = 2112;
              v45 = v25;
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

- (id)nameOfSelectedOptionForCustomEditMode:(int64_t)a3
{
  v5 = [(NTKFace *)self slotsForCustomEditMode:?];
  v6 = [v5 firstObject];
  v7 = [(NTKFace *)self selectedOptionForCustomEditMode:a3 slot:v6];
  v8 = [v7 localizedName];

  return v8;
}

- (id)namesOfSelectedOptionsForCustomEditModes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NTKFace *)self editModes];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) integerValue];
        if (v10 != 1)
        {
          v11 = [(NTKFace *)self nameOfSelectedOptionForCustomEditMode:v10];
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

- (void)setCustomData:(id)a3 forKey:(id)a4
{
  configuration = self->_configuration;
  v7 = a4;
  v8 = a3;
  v9 = [(NTKFaceConfiguration *)configuration customDataForKey:v7];
  [(NTKFaceConfiguration *)self->_configuration setCustomData:v8 forKey:v7];

  LOBYTE(configuration) = NTKEqualObjects(v9, v8);
  if ((configuration & 1) == 0)
  {
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (id)editOptionsForCustomEditModes
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(NTKFace *)self editModes];
  v4 = [v3 mutableCopy];

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

        v7 = [*(*(&v23 + 1) + 8 * i) integerValue];
        v8 = [(NTKFace *)self _editOptionsForEditMode:v7 slot:0];
        if ([v8 count])
        {
          if (!v5)
          {
            v5 = objc_opt_new();
          }

          v9 = [(NTKFace *)self _collectionTypeForEditMode:v7];
          v10 = objc_opt_class();
          v11 = [(NTKFace *)self device];
          v12 = [v10 localizedNameForCustomEditMode:v7 forDevice:v11];
          v13 = [NTKEditOptionCollection editOptionCollectionWithEditMode:v7 localizedName:v12 options:v8 collectionType:v9];

          v14 = [(NTKFace *)self device];
          v15 = [v13 filteredCollectionForDevice:v14];

          if ([(NTKFace *)self dynamicEditMode]!= v7)
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

- (id)_editOptionsForEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(NTKFace *)self slotsForCustomEditMode:a3];
    v8 = [v9 firstObject];
  }

  v10 = [(NTKFace *)self numberOfOptionsForCustomEditMode:a3 slot:v7];
  if (v10)
  {
    v11 = v10;
    if (a3 == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
    {
      v12 = [(NTKFace *)self pigmentOptionProvider];
      v13 = [v12 availableColorsForSlot:v7];
      v14 = [v13 array];
    }

    else
    {
      v14 = [MEMORY[0x277CBEB18] array];
      for (i = 0; i != v11; ++i)
      {
        v16 = [(NTKFace *)self optionAtIndex:i forCustomEditMode:a3 slot:v7];
        [v14 addObject:v16];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)_collectionTypeForEditMode:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(NTKFace *)self device];
  LOBYTE(v5) = [v5 customEditModeIsColor:a3 forDevice:v6];

  if (v5)
  {
    return 1;
  }

  v8 = objc_opt_class();
  v9 = [(NTKFace *)self device];
  LOBYTE(v8) = [v8 customEditModeIsRows:a3 forDevice:v9];

  if (v8)
  {
    return 2;
  }

  v10 = objc_opt_class();
  v11 = [(NTKFace *)self device];
  LOBYTE(v10) = [v10 customEditModeIsShowSeconds:a3 forDevice:v11];

  if (v10)
  {
    return 3;
  }

  v12 = objc_opt_class();
  v13 = [(NTKFace *)self device];
  v14 = [v12 customEditModeDeterminesDynamicSections:a3 forDevice:v13];

  if (v14)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (id)newDynamicEditOptionCollectionForSection:(unint64_t)a3
{
  v5 = [(NTKFace *)self dynamicEditMode];
  v6 = [(NTKFace *)self slotsForCustomEditMode:v5];
  if ([v6 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  v8 = [(NTKFace *)self localizedNameForDynamicSectionCustomEditMode:v5 slot:v7];
  v9 = [NTKEditOptionCollection alloc];
  v10 = [(NTKFace *)self _editOptionsForEditMode:v5 slot:v7];
  v11 = [(NTKEditOptionCollection *)v9 initWithEditMode:v5 localizedName:v8 options:v10 collectionType:[(NTKFace *)self _collectionTypeForEditMode:v5] slot:v7];

  return v11;
}

- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = objc_opt_class();
  v7 = [(NTKFace *)self device];
  v8 = [v6 localizedNameForCustomEditMode:a3 forDevice:v7];

  return v8;
}

- (id)complicationForSlot:(id)a3
{
  v3 = [(NTKFaceConfiguration *)self->_configuration complicationForSlot:a3];
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

- (void)setComplication:(id)a3 forSlot:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!v8)
  {
    v8 = +[NTKComplication nullComplication];
  }

  v7 = [(NTKFace *)self complicationForSlot:v6];
  if ((NTKEqualObjects(v8, v7) & 1) == 0)
  {
    [(NTKFaceConfiguration *)self->_configuration setComplication:v8 forSlot:v6];
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
    [(NTKFace *)self _notifyObserversComplicationDidChangeForSlot:v6];
  }
}

- (void)setComplicationsForSlots:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__NTKFace_setComplicationsForSlots___block_invoke;
  v3[3] = &unk_278780708;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

+ (void)enumerateComplicationSlots:(id)a3 withBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
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

      v6[2](v6, *(*(&v12 + 1) + 8 * v11), &v16);
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

+ (void)enumerateComplicationSlotsWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 _orderedComplicationSlots];
  [v5 enumerateComplicationSlots:v6 withBlock:v4];
}

- (void)enumerateComplicationSlotsWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NTKFace *)self _allComplications];
  [v5 enumerateComplicationSlots:v6 withBlock:v4];
}

- (void)enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NTKFace *)self allVisibleComplicationsForCurrentConfiguration];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
  v3 = [(NTKFace *)self _orderedComplicationSlots];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v5 = [v3 mutableCopy];

  v6 = [(NSDictionary *)self->_complicationSlotDescriptors allKeys];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] setWithArray:v6];
    v8 = [MEMORY[0x277CBEB98] setWithArray:v5];
    [v7 minusSet:v8];
    v9 = [v7 allObjects];
    [v5 addObjectsFromArray:v9];
  }

  return v5;
}

- (id)allVisibleComplicationsForCurrentConfiguration
{
  v3 = [(NTKFace *)self _allComplications];
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
  v4 = [(NTKFace *)self editOptionThatHidesAllComplications];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NTKFace_allVisibleComplicationsForCurrentConfiguration__block_invoke;
  v10[3] = &unk_278783548;
  v10[4] = self;
  v13 = &v15;
  v5 = v4;
  v11 = v5;
  v14 = &v19;
  v6 = v3;
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
  v2 = [(NTKFace *)self allVisibleComplicationsForCurrentConfiguration];
  v3 = v2 == 0;

  return v3;
}

- (int64_t)preferredComplicationFamilyForComplication:(id)a3 withSlot:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NTKFace *)self customComplicationFamilyForComplication:v6 slot:v7];
  if (v8 == *MEMORY[0x277CBB678])
  {
    v9 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:v7];
    v10 = [v9 familiesRankedList];
    if ([v6 complicationType])
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(v11);
          }

          v8 = [*(*(&v27 + 1) + 8 * v15) integerValue];
          if ([v9 allowsFamily:v8 inFace:self])
          {
            if ([(NTKFace *)self _complication:v6 supportsFamily:v8 inSlot:v7])
            {
              goto LABEL_26;
            }
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
      v11 = v11;
      v17 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
            objc_enumerationMutation(v11);
          }

          v8 = [*(*(&v23 + 1) + 8 * v20) integerValue];
          if ([v9 allowsFamily:v8 inFace:self])
          {
            goto LABEL_26;
          }

          if (v18 == ++v20)
          {
            v18 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

    v11 = [v10 firstObject];
    v8 = [v11 integerValue];
LABEL_26:
  }

  return v8;
}

- (BOOL)_complication:(id)a3 supportsFamily:(int64_t)a4 inSlot:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 numberWithInteger:a4];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  LOBYTE(a4) = [(NTKFace *)self _complication:v10 supportsFamilies:v12 inSlot:v9];

  return a4;
}

- (BOOL)_complication:(id)a3 supportsFamilies:(id)a4 inSlot:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), objc_opt_isKindOfClass(), -[NTKFace customComplication:supportsFamilies:forSlot:](self, "customComplication:supportsFamilies:forSlot:", v11, v9, v10)) || [v11 isMemberOfClass:objc_opt_class()] && !objc_msgSend(v11, "complicationType"))
  {
    v12 = 1;
  }

  else
  {
    v14 = [(NTKFace *)self device];
    v15 = [NTKComplicationProvider providerForDevice:v14];
    v12 = [v15 isComplicationAvailable:v11 forFamilies:v9];
  }

  return v12;
}

- (id)complicationVariantForComplication:(id)a3 withSlot:(id)a4
{
  v5 = [(NTKFace *)self preferredComplicationFamilyForComplication:a3 withSlot:a4];
  device = self->_device;

  return [NTKComplicationVariant defaultVariantForFamily:v5 device:device];
}

- (id)rankedComplicationFamiliesForSlot:(id)a3
{
  v3 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:a3];
  v4 = [v3 familiesRankedList];

  return v4;
}

- (BOOL)slot:(id)a3 supportsFamiliesOfComplications:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 supportsFamiliesOfComplications:v7 inFace:self forSlot:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allowedComplicationTypesFromDescriptors:(id)a3 slot:(id)a4
{
  v6 = MEMORY[0x277CCAB58];
  v7 = a4;
  v8 = a3;
  v9 = [v6 indexSet];
  v10 = [v8 objectForKey:v7];

  v11 = [v10 possibleTypes];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__NTKFace_allowedComplicationTypesFromDescriptors_slot___block_invoke;
  v16[3] = &unk_278783570;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  [v11 enumerateIndexesUsingBlock:v16];
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

+ (id)possibleComplicationTypesForSlot:(id)a3
{
  v4 = a3;
  v5 = [a1 _complicationSlotDescriptors];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 possibleTypes];

  return v7;
}

- (id)possibleComplicationTypesForSlot:(id)a3
{
  v3 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:a3];
  v4 = [v3 possibleTypes];

  return v4;
}

- (id)_complicationProviderOptionsForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFace *)self allowedComplicationTypesForSlot:v4];
  v6 = [v5 mutableCopy];

  [v6 addIndex:0];
  v7 = NTKLunarCalendarLocaleID();

  if (!v7)
  {
    [v6 removeIndex:16];
  }

  v8 = objc_opt_class();
  v9 = [(NTKFace *)self device];
  v10 = [v8 _dateComplicationSlotForDevice:v9];
  v11 = [v4 isEqualToString:v10];

  v12 = objc_opt_new();
  if ([v6 containsIndex:1] && v11)
  {
    v13 = objc_opt_class();
    v14 = [(NTKFace *)self device];
    v15 = [v13 _dateComplicationSlotSupportedStylesForDevice:v14];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__NTKFace__complicationProviderOptionsForSlot___block_invoke;
    v20[3] = &unk_2787813B0;
    v21 = v12;
    NTKEnumerateDateStyles(v15, v20);
  }

  v16 = [(NSDictionary *)self->_complicationSlotDescriptors objectForKey:v4];
  v17 = objc_opt_new();
  [v17 setAllowedComplicationTypes:v6];
  [v17 setLocationStyle:1];
  v18 = [v16 familiesRankedList];
  [v17 setRankedFamilies:v18];
  [v17 setSupportedDateStyles:v12];
  [v17 setAllowGenericDateComplication:{((v11 | -[NTKFace _migrationExistsForComplicationType:rankedFamilies:](self, "_migrationExistsForComplicationType:rankedFamilies:", 1, v18)) & 1) == 0}];

  return v17;
}

void __47__NTKFace__complicationProviderOptionsForSlot___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

- (BOOL)_migrationExistsForComplicationType:(unint64_t)a3 rankedFamilies:(id)a4
{
  v6 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__NTKFace__migrationExistsForComplicationType_rankedFamilies___block_invoke;
  v8[3] = &unk_278780970;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = self;
  [v6 enumerateObjectsUsingBlock:v8];
  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return a3;
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

- (id)allowedComplicationsForSlot:(id)a3 includingComplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKFace *)self _complicationProviderOptionsForSlot:v6];
  v9 = [(NTKFace *)self device];
  v10 = [NTKComplicationProvider providerForDevice:v9];

  v11 = [v10 complicationsWithOptions:v8];
  v12 = [v11 mutableCopy];

  v13 = [(NTKFace *)self customComplicationsForSlot:v6];
  if (v13)
  {
    [v12 addObjectsFromArray:v13];
  }

  v14 = [(NTKFace *)self complicationForSlot:v6];
  if (([v12 containsObject:v14] & 1) == 0)
  {
    [v10 appendOrReplaceConfigurableDefaultComplication:v14 toComplications:v12];
  }

  if (v7 && ([v12 containsObject:v7] & 1) == 0)
  {
    v15 = objc_opt_class();
    v16 = [(NTKFace *)self device];
    v17 = [v15 _dateComplicationSlotForDevice:v16];
    if ([v6 isEqualToString:v17])
    {
    }

    else
    {
      v24 = objc_opt_class();
      v22 = [(NTKFace *)self device];
      [v24 _monogramComplicationSlotForDevice:v22];
      v18 = v25 = v16;
      v23 = [v6 isEqualToString:v18];

      if ((v23 & 1) == 0)
      {
        v19 = [(NTKFace *)self possibleComplicationTypesForSlot:v6];
        v20 = [v19 containsIndex:{objc_msgSend(v7, "complicationType")}];

        if (v20)
        {
          [v12 addObject:v7];
        }
      }
    }
  }

  return v12;
}

- (id)_disabledComplicationTypesIndexSet
{
  v2 = [NTKComplicationProvider providerForDevice:self->_device];
  v3 = [v2 disabledComplicationTypes];

  return v3;
}

- (void)_handleComplicationChangeNotification
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = self;
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling complication change", &v5, 0x16u);
  }

  [(NTKFace *)self _complicationsDidChange];
  objc_autoreleasePoolPop(v3);
}

- (void)_handleSingleComplicationDidChangeNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2048;
    v15 = self;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling single complication change", buf, 0x16u);
  }

  if ((NTKIsDaemonOrFaceSnapshotService() & 1) == 0)
  {
    v6 = [v4 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v4 object];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __58__NTKFace__handleSingleComplicationDidChangeNotification___block_invoke;
      v10[3] = &unk_27877F498;
      v10[4] = self;
      v11 = v8;
      v9 = v8;
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
    v3 = [MEMORY[0x277CCACC8] isMainThread];
    if (v3)
    {
      __40__NTKFace__updateComplicationTombstones__block_invoke_2(v3, self->_device);
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
      v4 = self;
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

+ (id)defaultFaceOfStyle:(int64_t)a3 forDevice:(id)a4 initCustomization:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 == 44)
  {
    if (objc_opt_class() == a1)
    {
      v11 = 0;
      goto LABEL_9;
    }

    a3 = 44;
  }

  else
  {
    a1 = [a1 _faceClassForStyle:a3 onDevice:v8];
  }

  v10 = [[a1 alloc] _initWithFaceStyle:a3 forDevice:v8];
  v11 = v10;
  if (v10)
  {
    [v10 applyDefaultConfiguration];
    if (v9)
    {
      v9[2](v9, v11);
    }
  }

LABEL_9:

  return v11;
}

+ (id)bundledFaceWithIdentifier:(id)a3 forDevice:(id)a4 initCustomization:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = [NTKFace defaultAnalyticsIdentifierForBundleIdentifier:v9];
  v12 = [v10 bundledFaceWithIdentifier:v9 analyticsIdentifier:v11 forDevice:v8 initCustomization:v7];

  return v12;
}

+ (id)bundledFaceWithIdentifier:(id)a3 analyticsIdentifier:(id)a4 forDevice:(id)a5 initCustomization:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a1 defaultFaceOfStyle:44 forDevice:a5 initCustomization:a6];
  if (v12)
  {
    v13 = [v10 copy];
    v14 = v12[12];
    v12[12] = v13;

    v15 = [v11 copy];
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

+ (id)defaultAnalyticsIdentifierForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length];
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
    v8 = [v9 lowercaseString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unint64_t)maximumRemoteComplicationsOnAnyFace
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = [a1 maximumRemoteComplicationsOnAnyFaceForDevice:v3];

  return v4;
}

- (NSArray)editModes
{
  v3 = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __20__NTKFace_editModes__block_invoke;
  v11 = &unk_2787835C0;
  v12 = self;
  v4 = v3;
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

- (id)selectedSlotForEditMode:(int64_t)a3
{
  selectedSlotsByEditMode = self->_selectedSlotsByEditMode;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)selectedSlotsByEditMode objectForKey:v6];

  if (!v7)
  {
    if (a3 == 1)
    {
      v8 = [(NTKFace *)self _sortedComplicationSlots];
      v7 = [v8 firstObject];
    }

    else
    {
      v9 = objc_opt_class();
      v8 = [(NTKFace *)self device];
      v10 = [v9 _slotsForCustomEditMode:a3 forDevice:v8];
      v7 = [v10 firstObject];
    }
  }

  return v7;
}

- (void)setSelectedSlot:(id)a3 forEditMode:(int64_t)a4
{
  v8 = a3;
  selectedSlotsByEditMode = self->_selectedSlotsByEditMode;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  if (v8)
  {
    [(NSMutableDictionary *)selectedSlotsByEditMode setObject:v8 forKey:v7];
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

- (id)_uniqueOptionForCustomEditMode:(int64_t)a3 slot:(id)a4 withExistingOptions:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NTKFace *)self defaultOptionForCustomEditMode:a3 slot:v8];
  v11 = [(NTKFace *)self indexOfOption:v10 forCustomEditMode:a3 slot:v8];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [(NTKFace *)self numberOfOptionsForCustomEditMode:a3 slot:v8];
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    while (1)
    {
      v16 = [(NTKFace *)self optionAtIndex:v12 % v14 forCustomEditMode:a3 slot:v8];
      if (![v9 containsObject:v16])
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

- (void)applyUniqueConfigurationWithExistingFaces:(id)a3
{
  v4 = a3;
  [(NTKFace *)self prepareEditOptions];
  v5 = [(NTKFace *)self _customEditModeForUniqueConfiguration];
  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__NTKFace_applyUniqueConfigurationWithExistingFaces___block_invoke;
    v6[3] = &unk_278783520;
    v8 = self;
    v9 = v5;
    v7 = v4;
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

- (unint64_t)numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    v7 = [(NTKFace *)self pigmentOptionProvider];
    v8 = [v7 numberOfOptionsForSlot:v6];
  }

  else
  {
    v8 = [(NTKFace *)self _numberOfOptionsForCustomEditMode:a3 slot:v6];
  }

  return v8;
}

- (id)optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  if (a4 == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    v9 = [(NTKFace *)self pigmentOptionProvider];
    v10 = [v9 optionAtIndex:a3 slot:v8];
  }

  else
  {
    v10 = [(NTKFace *)self _optionAtIndex:a3 forCustomEditMode:a4 slot:v8];
  }

  return v10;
}

- (unint64_t)indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    v10 = [(NTKFace *)self pigmentOptionProvider];
    v11 = [v10 indexOfOption:v8 slot:v9];
  }

  else
  {
    v11 = [(NTKFace *)self _indexOfOption:v8 forCustomEditMode:a4 slot:v9];
  }

  return v11;
}

- (void)enumerateCustomEditModesWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NTKFace *)self _customEditModes];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v4[2](v4, [v10 integerValue], &v16);
      LOBYTE(v10) = v16;
      objc_autoreleasePoolPop(v11);
      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateSlotsForCustomEditMode:(int64_t)a3 withBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NTKFace *)self slotsForCustomEditMode:a3];
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

        v6[2](v6, *(*(&v13 + 1) + 8 * v12), &v17);
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
    v6[2](v6, 0, &v17);
  }
}

- (id)slotsForCustomEditMode:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(NTKFace *)self device];
  v7 = [v5 _slotsForCustomEditMode:a3 forDevice:v6];

  return v7;
}

- (id)slotForAddColorsViewFrame
{
  v2 = objc_opt_class();

  return [v2 _slotForAddColorsViewFrame];
}

- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = [v6 buildVersionMatchesContext:v7];
  *(v22 + 24) = v8 ^ 1;
  if ((v8 ^ 1) & 1) != 0 || (v13 = MEMORY[0x277D85DD0], v14 = 3221225472, v15 = __52__NTKFace_snapshotContext_isStaleRelativeToContext___block_invoke, v16 = &unk_278783688, v17 = self, v9 = v6, v18 = v9, v10 = v7, v19 = v10, v20 = &v21, [(NTKFace *)self enumerateComplicationSlotsWithBlock:&v13], v19, v18, (v22[3]))
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

- (BOOL)isEquivalentToFace:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = [(NTKFace *)v4 faceStyle];
    if (v6 == -[NTKFace faceStyle](self, "faceStyle") && (-[NTKFace device](v5, "device"), v7 = objc_claimAutoreleasedReturnValue(), -[NTKFace device](self, "device"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9))
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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setOrigin:(int64_t)a3
{
  if (![(NTKFace *)self origin])
  {
    configuration = self->_configuration;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NTKFaceConfiguration *)configuration setMetric:v6 forKey:@"origin"];

    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (void)setCreationDate:(id)a3
{
  v4 = a3;
  v6 = [(NTKFace *)self creationDate];
  [(NTKFaceConfiguration *)self->_configuration setMetric:v4 forKey:@"dateCreated"];
  v5 = NTKEqualObjects(v4, v6);

  if ((v5 & 1) == 0)
  {
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (void)setLastEditedDate:(id)a3
{
  v4 = a3;
  v6 = [(NTKFace *)self lastEditedDate];
  [(NTKFaceConfiguration *)self->_configuration setMetric:v4 forKey:@"dateLastEdited"];
  v5 = NTKEqualObjects(v4, v6);

  if ((v5 & 1) == 0)
  {
    [(NTKFace *)self _notifyObserversFaceConfigurationDidChange];
  }
}

- (int64_t)editedState
{
  v2 = [(NTKFaceConfiguration *)self->_configuration metricForKey:@"editedState"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setEditedState:(int64_t)a3
{
  if (![(NTKFace *)self editedState]|| [(NTKFace *)self editedState]== 1)
  {
    configuration = self->_configuration;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
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
  v2 = [(NTKFace *)self _customEditModes];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_complicationSlotDescriptors
{
  v2 = objc_opt_class();

  return [v2 _complicationSlotDescriptors];
}

+ (id)_complicationSlotDescriptors
{
  v3 = [a1 complicationConfiguration];

  if (v3)
  {
    v4 = [a1 complicationConfiguration];
    v5 = [v4 complicationSlotDescriptors];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (id)_defaultSelectedComplicationSlotForDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 complicationConfiguration];

  if (v5)
  {
    v6 = [a1 complicationConfiguration];
    v7 = [v6 defaultSelectedComplicationSlotForDevice:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_defaultComplicationOfType:(unint64_t)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = [(NTKFace *)self _complicationProviderOptionsForSlot:v6];
  v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
  [v7 setAllowedComplicationTypes:v8];

  v9 = objc_opt_new();
  v10 = [(NTKFace *)self customComplicationsForSlot:v6];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __46__NTKFace__defaultComplicationOfType_forSlot___block_invoke;
  v20 = &unk_278783700;
  v22 = a3;
  v11 = v9;
  v21 = v11;
  [v10 enumerateObjectsUsingBlock:&v17];

  if ([v11 count])
  {
    v12 = [v11 firstObject];
  }

  else
  {
    v13 = [(NTKFace *)self device];
    v14 = [NTKComplicationProvider providerForDevice:v13];

    v15 = [v14 complicationsWithOptions:v7];
    v12 = [v15 firstObject];
  }

  return v12;
}

void __46__NTKFace__defaultComplicationOfType_forSlot___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 complicationType] == *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)_option:(id)a3 isValidForCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4 == 10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(NTKFace *)self pigmentOptionProvider];
      v11 = [v10 indexOfOption:v8 slot:v9];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = 1;
        goto LABEL_10;
      }

      v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = [objc_opt_class() pigmentFaceDomain];
        v16 = [(NTKFace *)self pigmentOptionProvider];
        v17 = [v16 availableColorsForSlot:v9];
        v18 = 138543874;
        v19 = v8;
        v20 = 2114;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        _os_log_error_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_ERROR, "Invalid pigment option - %{public}@ - Face: %{public}@ - Available Options: %{public}@", &v18, 0x20u);
      }

      goto LABEL_9;
    }
  }

  [(NTKFace *)self editOptionClassFromEditMode:a4 resourceDirectoryExists:[(NTKFaceConfiguration *)self->_configuration resourceDirectoryExists]];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v13 = [v8 isValidOption];
LABEL_10:

  return v13;
}

- (BOOL)option:(id)a3 migratesToValidOption:(id *)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (a5 != 10)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v10;
      v17 = [objc_opt_class() optionByValidatingValueOfInvalidOption:v16];

      v18 = v17;
      *a4 = v17;
      v15 = v17 != 0;
      goto LABEL_7;
    }

LABEL_6:
    v15 = [(NTKFace *)self _option:v10 migratesToValidOption:a4 forCustomEditMode:a5 slot:v11];
    goto LABEL_7;
  }

  v12 = [(NTKFace *)self pigmentOptionProvider];
  v13 = [v12 migratedOptionForInvalidOption:v10 slot:v11];

  v14 = v13;
  *a4 = v13;
  v15 = v13 != 0;

LABEL_7:
  return v15;
}

+ (BOOL)_complication:(id)a3 isValidForSlot:(id)a4 forDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([a1 _dateComplicationSlotForDevice:v10], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqual:", v11), v11, v12))
  {
    v13 = [v8 dateStyle];
    v14 = ([a1 _dateComplicationSlotSupportedStylesForDevice:v10] & v13) != 0;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

+ (id)_dateComplicationSlotForDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 complicationConfiguration];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [a1 complicationConfiguration];
    v7 = [v6 dateComplicationSlotForDevice:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)_dateComplicationSlotSupportedStylesForDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 complicationConfiguration];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [a1 complicationConfiguration];
    v7 = [v6 dateComplicationSlotSupportedStylesForDevice:v4];
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
  v3 = [a1 complicationConfiguration];

  if (v3)
  {
    v4 = [a1 complicationConfiguration];
    v5 = [v4 orderedComplicationSlots];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFace *)self complicationConfiguration];

  if (v5)
  {
    v6 = [(NTKFace *)self complicationConfiguration];
    v7 = [v6 localizedNameForComplicationSlot:v4];
  }

  else
  {
    v7 = [NTKFaceComplicationConfiguration defaultLocalizedNameForComplicationSlot:v4];
  }

  return v7;
}

- (id)_defaultName
{
  cachedDefaultName = self->_cachedDefaultName;
  if (!cachedDefaultName)
  {
    v4 = [(NTKFace *)self faceSharingName];
    if (!v4)
    {
      v4 = NTKLocalizedNameForFaceStyle(self->_faceStyle);
    }

    v5 = self->_cachedDefaultName;
    self->_cachedDefaultName = v4;

    cachedDefaultName = self->_cachedDefaultName;
  }

  return cachedDefaultName;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 complicationConfiguration];

  if (v5)
  {
    v6 = [a1 complicationConfiguration];
    v7 = [v6 richComplicationSlotsForDevice:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) _initWithFaceStyle:self->_faceStyle forDevice:self->_device];
  v5 = [(NTKFaceConfiguration *)self->_configuration copy];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  v7 = [v4 _complicationSlotDescriptors];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

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

- (void)encodeWithCoder:(id)a3
{
  faceStyle = self->_faceStyle;
  v6 = a3;
  [v6 encodeInteger:faceStyle forKey:@"FaceStyle"];
  [v6 encodeObject:self->_bundleIdentifier forKey:@"FaceBundleIdentifier"];
  [v6 encodeObject:self->_analyticsIdentifier forKey:@"FaceBundleAnalyticsIdentifier"];
  v5 = [(CLKDevice *)self->_device pairingID];
  [v6 encodeObject:v5 forKey:@"DeviceUUID"];

  [v6 encodeObject:self->_resourceDirectory forKey:@"ResourceDirectory"];
  [v6 encodeObject:self->_configuration forKey:@"Configuration"];
}

- (NTKFace)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NTKFace;
  v5 = [(NTKFace *)&v19 init];
  if (v5)
  {
    v5->_faceStyle = [v4 decodeIntegerForKey:@"FaceStyle"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FaceBundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FaceBundleAnalyticsIdentifier"];
    analyticsIdentifier = v5->_analyticsIdentifier;
    v5->_analyticsIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceUUID"];
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

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ResourceDirectory"];
    resourceDirectory = v5->_resourceDirectory;
    v5->_resourceDirectory = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Configuration"];
    if (!v17)
    {
      v17 = [(NTKFace *)v5 _configurationFromOldEncodingWithCoder:v4];
    }

    [(NTKFace *)v5 _applyConfiguration:v17 allowFailure:0];

    [(NTKFace *)v5 toggleComplicationChangeObservation:1];
  }

  return v5;
}

- (id)_configurationFromOldEncodingWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NTKFaceConfiguration);
  v6 = [(NTKFace *)self _complicationMigrationPaths];
  complicationSlotDescriptors = self->_complicationSlotDescriptors;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke;
  v35[3] = &unk_278783728;
  v30 = v6;
  v36 = v30;
  v8 = v4;
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
    v25 = [MEMORY[0x277CBEB38] dictionary];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __50__NTKFace__configurationFromOldEncodingWithCoder___block_invoke_2;
    v33[3] = &unk_278783750;
    v15 = v25;
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
  v3 = [MEMORY[0x277CBBB70] sharedMonitor];
  LOBYTE(self) = [v3 considersUISensitivitySensitive:{objc_msgSend(ViewClassForFace(self), "uiSensitivity")}];

  return self;
}

- (void)handleSharingMetadata:(id)a3
{
  v4 = a3;
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

  if (v4)
  {
    [(NTKFace *)self _handleSharingMetadata:v4];
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

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NTKFace *)self resourceDirectory];

  if (v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [(NTKFace *)self resourceDirectory];
    v10 = [v8 copyItemAtPath:v9 toPath:v6 error:a4];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)deepCopy
{
  v3 = [(NTKFace *)self device];
  v4 = [(NTKFace *)self JSONObjectRepresentation];
  v5 = [NTKFace faceWithJSONObjectRepresentation:v4 forDevice:v3];

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

  v5 = [(NTKFace *)self bundleIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"bundle id"];

  v6 = NTKAnalyticsValueForFace(self);
  [v3 setObject:v6 forKeyedSubscript:@"analytics id"];

  v7 = [(NTKFace *)self keyDescriptor];
  v8 = [v7 argon_JSONRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"argon"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[NTKFace forMigration](self, "forMigration")}];
  [v3 setObject:v9 forKeyedSubscript:@"forMigration"];

  [(NTKFaceConfiguration *)self->_configuration addConfigurationKeysToJSONDictionary:v3 face:self];
  v10 = [v3 copy];

  return v10;
}

- (id)greenfieldJSONObjectRepresentation
{
  v3 = NTKEffectiveFaceStyleForFaceStyle([(NTKFace *)self faceStyle]);
  v4 = [(NTKFace *)self faceStyle];
  v5 = [(NTKFace *)self JSONObjectRepresentation];
  v6 = v5;
  if (v3 != v4)
  {
    v7 = [v5 mutableCopy];

    v8 = NTKFaceBundleStringFromFaceStyle(v3);
    [v7 setObject:v8 forKeyedSubscript:@"face type"];

    v6 = [v7 copy];
  }

  return v6;
}

- (id)configurationJSONRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(NTKFaceConfiguration *)self->_configuration addConfigurationKeysToJSONDictionary:v3 face:self];

  return v3;
}

+ (void)greenfieldFaceWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4 withCompletion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = dispatch_group_create();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33;
  v25 = __Block_byref_object_dispose__33;
  v26 = [NTKFace faceWithJSONObjectRepresentation:v7 forDevice:v8 forMigration:1 allowFallbackFromInvalidFaceStyle:0];
  if (v22[5])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__NTKFace_greenfieldFaceWithJSONObjectRepresentation_forDevice_withCompletion___block_invoke;
    aBlock[3] = &unk_2787837A0;
    aBlock[4] = &v21;
    v12 = _Block_copy(aBlock);
    v12[2](v12, v22[5], 1);
    if (NTKShowBlueRidgeUI(v8))
    {
      v13 = [v22[5] _faceWithRichComplicationSlots];
      (v12)[2](v12, v13, 0);
    }

    v14 = [v22[5] _migratedBundleFace];
    (v12)[2](v12, v14, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__NTKFace_greenfieldFaceWithJSONObjectRepresentation_forDevice_withCompletion___block_invoke_2;
    v16[3] = &unk_2787837F0;
    v17 = v10;
    v19 = &v21;
    v18 = v9;
    dispatch_group_notify(v11, MEMORY[0x277D85CD0], v16);
  }

  else
  {
    v15 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "Could not create new greenfield face because the base face from description:%@ is nil", buf, 0xCu);
    }

    (*(v9 + 2))(v9, 0);
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

+ (id)faceWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4 forMigration:(BOOL)a5 allowFallbackFromInvalidFaceStyle:(BOOL)a6
{
  v6 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v36 = 0;
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"top level object must be a dictionary. Invalid value: %@", v9}];
  }

  v11 = [v9 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"'%@' must be a string. Invalid value: %@", @"version", v11}];
  }

  v39 = a1;
  v40 = v6;
  v12 = [v9 objectForKeyedSubscript:@"face type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"'%@' must be a string. Invalid value: %@", @"face type", v12}];
  }

  v13 = [v9 objectForKeyedSubscript:@"bundle id"];
  obj = [v9 objectForKeyedSubscript:@"analytics id"];
  *buf = 0;
  if (!NTKFaceBundleGetFaceStyleFromString(v12, buf))
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"invalid value for '%@': %@", @"face type", v12}];
  }

  if (*buf == 12 && NTKShowBlueRidgeUI(v10))
  {
    v14 = [v9 objectForKeyedSubscript:@"customization"];
    v15 = NTKFaceBundleStringFromCustomEditMode(17);
    v16 = [v14 valueForKey:v15];
    v17 = v16 == 0;

    if (!v17)
    {
      *buf = 212;
    }
  }

  v18 = [v9 objectForKeyedSubscript:@"forMigration"];
  v19 = [v18 BOOLValue];

  if (*buf == 44)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v21 = [v9 objectForKeyedSubscript:@"argon"];
  if (v21)
  {
    objc_opt_class();
    if (isKindOfClass & objc_opt_isKindOfClass())
    {
      v22 = +[NTKFaceBundleManager sharedManager];
      v23 = [v22 faceBundleForBundleIdentifier:v13 onDevice:v10];

      if (!v23)
      {
        v24 = [NTKArgonKeyDescriptor alloc];
        v25 = [(NTKArgonKeyDescriptor *)v24 argon_initWithJSONRepresentation:v21];

        if (v25 && (+[NTKFaceBundleManager sharedManager](NTKFaceBundleManager, "sharedManager"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 loadKeyDescriptor:v25], v26, (v27 & 1) != 0))
        {
          v28 = +[NTKFaceBundleManager sharedManager];
          v23 = [v28 faceBundleForBundleIdentifier:v13 onDevice:v10];
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
      v31 = 0;
      goto LABEL_37;
    }

LABEL_33:
    if (v40)
    {
      v32 = NTKMigratableFaceStyles();
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:*buf];
      [v32 containsObject:v33];
    }

    v31 = [v39 _faceClassForStyle:? onDevice:?];
    if (v31)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v29 = +[NTKFaceBundleManager sharedManager];
  v30 = [v29 faceBundleForBundleIdentifier:v13 onDevice:v10 forMigration:v19];

  v31 = [v30 faceClass];
  if (!v31)
  {
    goto LABEL_36;
  }

LABEL_37:
  v34 = [v31 alloc];
  v35 = [v34 _initWithFaceStyle:*buf forDevice:v10];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong((v35 + 96), v13);
    objc_storeStrong((v36 + 72), obj);
    *(v36 + 80) = v19;
    v37 = [[NTKFaceConfiguration alloc] initWithJSONDictionary:v9 editModeMapping:v36 forDevice:v10];
    [v36 _customizeWithJSONDescription:v9];
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
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v3 = [NTKArgonKeyDescriptor keyDescriptorFromBundle:v2];

  return v3;
}

- (Class)editOptionClassFromEditMode:(int64_t)a3 resourceDirectoryExists:(BOOL)a4
{
  v4 = a4;
  if (a3 == 10 && [(NTKFace *)self deviceSupportsPigmentEditOption])
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = [(NTKFace *)self _optionClassForCustomEditMode:a3 resourceDirectoryExists:v4];
  }

  return v7;
}

- (Class)legacyEditOptionClassFromCustomEditMode:(int64_t)a3 resourceDirectoryExists:(BOOL)a4
{
  v5 = [(NTKFace *)self _optionClassForCustomEditMode:a3 resourceDirectoryExists:a4];
  if (v5)
  {
    v6 = objc_opt_class();
    if (a3 == 10 && v5 == v6)
    {
      goto LABEL_4;
    }
  }

  else if (a3 == 10)
  {
LABEL_4:
    v7 = objc_opt_class();
    goto LABEL_7;
  }

  v7 = v5;
LABEL_7:

  return v7;
}

- (BOOL)_applyConfiguration:(id)a3 allowFailure:(BOOL)a4 forMigration:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  if (v6 && ![(NTKFace *)self _verifyCompatibilityOfConfiguration:v8])
  {
    v16 = 0;
  }

  else
  {
    *&self->_suppressingConfigurationChangeNotifications = 1;
    v9 = [v8 resourceDirectoryExists];
    v10 = [(NTKFace *)self configuration];
    [v10 setResourceDirectoryExists:v9];

    v11 = [(NTKFace *)self _complicationMigrationPaths];
    complicationSlotDescriptors = self->_complicationSlotDescriptors;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__NTKFace__applyConfiguration_allowFailure_forMigration___block_invoke;
    v24[3] = &unk_278783818;
    v13 = v11;
    v25 = v13;
    v14 = v8;
    v28 = a5;
    v26 = v14;
    v27 = self;
    [(NSDictionary *)complicationSlotDescriptors enumerateKeysAndObjectsUsingBlock:v24];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __57__NTKFace__applyConfiguration_allowFailure_forMigration___block_invoke_245;
    v21 = &unk_2787835C0;
    v22 = self;
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

- (id)_validOptionForOption:(id)a3 mode:(int64_t)a4 slot:(id)a5 configuration:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    if (![(NTKFace *)self _option:v10 isValidForCustomEditMode:a4 slot:v11 configuration:v12])
    {
      v16 = v10;
      v13 = [(NTKFace *)self option:v10 migratesToValidOption:&v16 forCustomEditMode:a4 slot:v11];
      v14 = v16;

      if (v13)
      {
        v10 = v14;
      }

      else
      {
        v10 = [(NTKFace *)self defaultOptionForCustomEditMode:a4 slot:v11];
      }
    }
  }

  else
  {
    v10 = [(NTKFace *)self _defaultOptionForMissingCustomEditMode:a4 slot:v11];
  }

  return v10;
}

- (id)replacedOptionWithFulfilledOption:(id)a3 forEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKFace *)self deviceSupportsPigmentEditOption];
  if (a4 != 10 || !v10 || ![v8 conformsToProtocol:&unk_28A87B948] || (objc_msgSend(v8, "pigmentEditOption"), v11 = objc_claimAutoreleasedReturnValue(), -[NTKFace pigmentOptionProvider](self, "pigmentOptionProvider"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "fulfilledOptionForOption:slot:", v11, v9), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
  {
    v13 = v8;
  }

  return v13;
}

- (id)_sortedComplicationSlots
{
  v2 = [(NSDictionary *)self->_complicationSlotDescriptors allKeys];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

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
  v4 = [(NTKFace *)self device];
  v5 = [v3 _defaultSelectedComplicationSlotForDevice:v4];

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

+ (Class)_faceClassForStyle:(int64_t)a3 onDevice:(id)a4
{
  v5 = a4;
  v6 = 0;
  switch(a3)
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
      v6 = objc_opt_class();
      break;
    case 11:
    case 15:
      break;
    default:
      if ((a3 - 200) <= 0x21 && ((1 << (a3 + 56)) & 0x399BF140FLL) != 0)
      {
LABEL_4:
        v7 = +[NTKFaceBundleManager sharedManager];
        v8 = [v7 faceBundleForFaceStyle:a3 onDevice:v5];
        v6 = [v8 faceClass];
      }

      break;
  }

  return v6;
}

+ (id)availableInternalFaceDescriptorsForDevice:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e19_B16__0__CLKDevice_8l;
  v5[4] = a1;
  __53__NTKFace_availableInternalFaceDescriptorsForDevice___block_invoke(v5, a3);
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

+ (BOOL)isFaceStyleAvailableInternal:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 44)
  {
    v7 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8 = [a1 availableInternalFaceDescriptorsForDevice:v6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__NTKFace_isFaceStyleAvailableInternal_forDevice___block_invoke;
    v10[3] = &unk_278783840;
    v10[4] = &v11;
    v10[5] = a3;
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

- (BOOL)hasValidConfigurationForDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        if (([v10 optionExistsInDevice:v4] & 1) == 0)
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_externalAssets copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setExternalAssets:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 copy];

  objc_storeStrong(&v5->_externalAssets, v6);
  objc_sync_exit(v5);

  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__NTKFace_ExternalAssets__setExternalAssets___block_invoke;
  v8[3] = &unk_278783890;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [(NTKFace *)v5 companionEditorWithAssets:v7 completion:v8];

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
    v5 = [v4 isMultiColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)argon_overlayAssetArchiveURL
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 keyDescriptor];
  v3 = BSCurrentUserDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"/Library/NanoTimeKit/FaceSupport/Assets/"];
  v5 = [v2 fileName];
  v6 = [v4 stringByAppendingPathComponent:v5];
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

- (void)argon_notificationContentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__NTKFace_ArgonSupport__argon_notificationContentWithCompletion___block_invoke;
    v6[3] = &unk_278783CA8;
    v6[4] = self;
    v7 = v4;
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

- (void)argon_compositedSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
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
    v13 = v4;
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

- (void)argon_notificationOverlayImageWithCompletion:(id)a3
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__NTKFace_ArgonSupport__argon_notificationOverlayImageWithCompletion___block_invoke;
    aBlock[3] = &unk_278782A50;
    v6 = v4;
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
    v12 = [(NTKFace *)self argon_overlayAssetType];
    if (v12 == 1)
    {
      v14 = [(NTKFace *)self argon_embeddedOverlayAssetURL];
      v15 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v29 = v11;
          v30 = 2114;
          v31 = v14;
          _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "Notification: Displaying in-bundle overlay asset for bundle %{public}@ at %{public}@", buf, 0x16u);
        }

        v22 = 0;
        v17 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v14 options:0 error:&v22];
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
        v20 = [(NTKFace *)self bundleIdentifier];
        v33[1] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        v18 = [v19 errorWithDomain:@"NTKFaceSupportDomain" code:800 userInfo:v21];

        (*(v9 + 2))(v9, 0, 1, v18);
      }
    }

    else
    {
      if (!v12)
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

+ (id)defaultFaceFromFaceDescriptor:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NTKFace(NTKFaceDescriptorAdditions) defaultFaceFromFaceDescriptor:v11 forDevice:?];
    }

    v14 = 0;
    goto LABEL_26;
  }

  if (!v7)
  {
    v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[NTKFace(NTKFaceDescriptorAdditions) defaultFaceFromFaceDescriptor:forDevice:];
    }

    v8 = [MEMORY[0x277CBBAE8] currentDevice];
  }

  v10 = [v6 faceStyle];
  if (v10 == 44)
  {
    v11 = [v6 bundleIdentifier];
    if (!v11)
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
    v13 = [v12 faceBundleForBundleIdentifier:v11 onDevice:v8];

    if (v13)
    {
      v14 = [v13 defaultFaceForDevice:v8];
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

  v16 = v10;
  v14 = [a1 defaultFaceOfStyle:v10 forDevice:v8];
  if (v14)
  {
    goto LABEL_27;
  }

  v11 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(NTKFace(NTKFaceDescriptorAdditions) *)v16 defaultFaceFromFaceDescriptor:v6 forDevice:v11];
  }

LABEL_26:

LABEL_27:

  return v14;
}

- (id)faceDescriptor
{
  v3 = [(NTKFace *)self faceStyle];
  v4 = [NTKFaceDescriptor alloc];
  if (v3 == 44)
  {
    v5 = [(NTKFace *)self bundleIdentifier];
    v6 = [(NTKFaceDescriptor *)v4 initWithBundleIdentifier:v5];
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
  v3 = [(NTKFace *)self device];
  if (!NTKShowBlueRidgeUI(v3))
  {
    goto LABEL_9;
  }

  v4 = [(NTKFace *)self faceStyle];
  v5 = __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke(v4, v4);
  if (v5 == -1)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if ([(NTKFace *)self faceStyle]!= 4)
  {
    v9 = [objc_opt_class() _faceClassOfFaceWithRichComplicationSlotsForDevice:v3];
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = +[NTKFaceBundleManager sharedManager];
  v8 = [v7 faceBundleForFaceStyle:v6 onDevice:v3];
  v9 = [v8 faceClass];

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_5:
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__NTKFace_Migration___faceWithRichComplicationSlots__block_invoke_2;
  v13[3] = &unk_278787068;
  v13[4] = self;
  v10 = [v9 defaultFaceOfStyle:v6 forDevice:v3 initCustomization:v13];
  v11 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = self;
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
  v3 = [(NTKFace *)self device];
  v4 = [(NTKFace *)self faceStyle];
  v5 = 0;
  if (v4 <= 201)
  {
    if (v4 > 20)
    {
      if (v4 > 0x29)
      {
LABEL_67:
        if (v4 != 21)
        {
          goto LABEL_86;
        }

LABEL_68:
        v35 = [v3 deviceCategory];
        v36 = +[NTKFaceBundleManager sharedManager];
        v37 = v36;
        if (v35 < 3)
        {
          v7 = [v36 faceBundleForFaceStyle:29 onDevice:v3];

          if (!v7)
          {
            v41 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              [NTKFace(Migration) _migratedBundleFace];
            }
          }

          v39 = [v7 defaultFaceForDevice:v3];
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
          v7 = [v36 faceBundleForBundleIdentifier:@"com.apple.NTKCloudrakerFaceBundle" onDevice:v3];

          if (!v7)
          {
            v38 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
            if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              [NTKFace(Migration) _migratedBundleFace];
            }
          }

          v39 = [v7 defaultFaceForDevice:v3];
          if (!v39)
          {
            v40 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              [NTKFace(Migration) _migratedBundleFace];
            }

LABEL_84:

            v5 = 0;
            goto LABEL_85;
          }
        }

        v5 = v39;
        goto LABEL_85;
      }

      if (((1 << v4) & 0x20190000000) != 0)
      {
        goto LABEL_33;
      }

      if (v4 != 24)
      {
        if (v4 == 25)
        {
          if ([v3 isTinker])
          {
            v6 = +[NTKFaceBundleManager sharedManager];
            v7 = [v6 faceBundleForBundleIdentifier:@"com.apple.NTKEsterbrookFaceBundle" onDevice:v3];

            if (!v7)
            {
              v8 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
              if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
              {
                [NTKFace(Migration) _migratedBundleFace];
              }
            }

            v5 = [v7 defaultFaceForDevice:v3];
            if (v5)
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
          v5 = [(NTKFace *)self _defaultFace];
          goto LABEL_86;
        }

        goto LABEL_67;
      }

      goto LABEL_41;
    }

    if (v4 != 2)
    {
      if (v4 != 9)
      {
        if (v4 != 18)
        {
          goto LABEL_86;
        }

        goto LABEL_23;
      }

      v20 = +[NTKFaceBundleManager sharedManager];
      v21 = [v20 faceBundleForBundleIdentifier:@"com.apple.NTKAegirFaceBundle" onDevice:v3];

      if (!v21)
      {
        v22 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [NTKFace(Migration) _migratedBundleFace];
        }
      }

      v23 = [v21 defaultFaceForDevice:v3];
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
      v25 = [(NTKFace *)self selectedOptionsForCustomEditModes];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
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
              objc_enumerationMutation(v25);
            }

            v30 = [*(*(&v46 + 1) + 8 * i) unsignedIntValue];
            v31 = [(NTKFace *)self selectedOptionForCustomEditMode:v30 slot:0];
            v32 = [v23 optionAtIndex:-[NTKFace indexOfOption:forCustomEditMode:slot:](self forCustomEditMode:"indexOfOption:forCustomEditMode:slot:" slot:{v31, v30, 0), v30, 0}];
            [v23 selectOption:v32 forCustomEditMode:v30 slot:0];
          }

          v27 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
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
      v5 = v33;

      goto LABEL_86;
    }

LABEL_34:
    v12 = +[NTKFaceBundleManager sharedManager];
    v7 = [v12 faceBundleForBundleIdentifier:@"com.apple.NTKAlaskanFaceBundle.NTKSharkFaceBundle" onDevice:v3];

    if (!v7)
    {
      v13 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [NTKFace(Migration) _migratedBundleFace];
      }
    }

    v5 = [v7 defaultFaceForDevice:v3];
    if (v5)
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

  if (v4 > 223)
  {
    if ((v4 - 231) < 2)
    {
      goto LABEL_33;
    }

    if (v4 != 224)
    {
      if (v4 != 228)
      {
        goto LABEL_86;
      }

      goto LABEL_33;
    }

LABEL_41:
    v14 = +[NTKFaceBundleManager sharedManager];
    v7 = [v14 faceBundleForFaceStyle:30 onDevice:v3];

    if (!v7)
    {
      v15 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [NTKFace(Migration) _migratedBundleFace];
      }
    }

    v5 = [v7 defaultFaceForDevice:v3];
    if (!v5)
    {
      v16 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [NTKFace(Migration) _migratedBundleFace];
      }
    }

    v9 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:@"com.apple.NanoTimeKit.NTKCellularConnectivityComplicationDataSource" appBundleIdentifier:0 complicationDescriptor:0];
    v17 = [NTKBundleComplication bundledComplicationWithComplication:v9];
    [v5 setComplication:v17 forSlot:@"bezel"];

    v18 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:@"com.apple.NanoTimeKit.AnalogSeconds" appBundleIdentifier:0 complicationDescriptor:0];
    v19 = [NTKBundleComplication bundledComplicationWithComplication:v18];
    [v5 setComplication:v19 forSlot:@"slot3"];

LABEL_50:
LABEL_85:

    goto LABEL_86;
  }

  switch(v4)
  {
    case 202:
      goto LABEL_34;
    case 218:
LABEL_23:
      v10 = +[NTKFaceBundleManager sharedManager];
      v7 = [v10 faceBundleForBundleIdentifier:@"com.apple.NTKBigNumeralsAnalogFaceBundle" onDevice:v3];

      if (!v7)
      {
        v11 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [NTKFace(Migration) _migratedBundleFace];
        }
      }

      v5 = [v7 defaultFaceForDevice:v3];
      if (v5)
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

  return v5;
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
  v3 = [(NTKFace *)self device];
  v4 = NTKDefaultLibraryFaceDescriptors(v3);

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

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
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