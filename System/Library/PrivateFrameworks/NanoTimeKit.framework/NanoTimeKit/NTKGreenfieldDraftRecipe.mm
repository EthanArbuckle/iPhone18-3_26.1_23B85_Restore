@interface NTKGreenfieldDraftRecipe
+ (id)descriptionFromComplicationOption:(unint64_t)a3;
+ (id)templateForComplicationAtSlot:(id)a3 face:(id)a4;
+ (id)titleFromComplicationOption:(unint64_t)a3;
- (BOOL)_shouldIncludeMetadataForSlot:(id)a3;
- (BOOL)canShareTemplate:(id)a3 slot:(id)a4;
- (BOOL)hasComplicationSharingOptions;
- (NTKFace)faceForSharing;
- (NTKGreenfieldDraftRecipe)initWithCoder:(id)a3;
- (NTKGreenfieldDraftRecipe)initWithFace:(id)a3;
- (id)slotToBundleIdMapping;
- (id)slotToItemIdMapping;
- (id)slotToSampleTemplateMapping;
- (id)sortedComplicationSharingOptions;
- (unint64_t)faceForSharingComplicationOptionsCount;
- (unint64_t)optionForComplicationUniqueIdentifier:(id)a3;
- (void)_buildOptionTypeMapping;
- (void)_buildSlotToItemIdAndBundleIdMapping;
- (void)_buildSlotToSampleTemplateMapping;
- (void)encodeWithCoder:(id)a3;
- (void)setComplicationOption:(unint64_t)a3 forComplicationUniqueIdentifier:(id)a4;
@end

@implementation NTKGreenfieldDraftRecipe

- (NTKGreenfieldDraftRecipe)initWithFace:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKGreenfieldDraftRecipe;
  v6 = [(NTKGreenfieldDraftRecipe *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalface, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    complicationUniqueIdentifierToOptionTypeMapping = v7->_complicationUniqueIdentifierToOptionTypeMapping;
    v7->_complicationUniqueIdentifierToOptionTypeMapping = v8;

    [(NTKGreenfieldDraftRecipe *)v7 _buildSlotToSampleTemplateMapping];
    [(NTKGreenfieldDraftRecipe *)v7 _buildSlotToItemIdAndBundleIdMapping];
    [(NTKGreenfieldDraftRecipe *)v7 _buildOptionTypeMapping];
  }

  return v7;
}

- (void)setComplicationOption:(unint64_t)a3 forComplicationUniqueIdentifier:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_complicationUniqueIdentifierToOptionTypeMapping setObject:v8 forKeyedSubscript:v7];
}

- (unint64_t)optionForComplicationUniqueIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_complicationUniqueIdentifierToOptionTypeMapping objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)hasComplicationSharingOptions
{
  v2 = [(NTKGreenfieldDraftRecipe *)self sortedComplicationSharingOptions];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)slotToItemIdMapping
{
  v3 = [(NSMutableDictionary *)self->_slotToItemIdMapping mutableCopy];
  v4 = [(NSMutableDictionary *)self->_slotToItemIdMapping allKeys];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__NTKGreenfieldDraftRecipe_slotToItemIdMapping__block_invoke;
  v11 = &unk_27877DEA8;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

void __47__NTKGreenfieldDraftRecipe_slotToItemIdMapping__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) _shouldIncludeMetadataForSlot:?] & 1) == 0)
  {
    [*(a1 + 40) removeObjectForKey:v3];
  }
}

- (id)slotToSampleTemplateMapping
{
  v3 = [(NSMutableDictionary *)self->_slotToSampleTemplateMapping mutableCopy];
  v4 = [(NSMutableDictionary *)self->_slotToSampleTemplateMapping allKeys];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__NTKGreenfieldDraftRecipe_slotToSampleTemplateMapping__block_invoke;
  v11 = &unk_27877DEA8;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

void __55__NTKGreenfieldDraftRecipe_slotToSampleTemplateMapping__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) _shouldIncludeMetadataForSlot:?] & 1) == 0)
  {
    [*(a1 + 40) removeObjectForKey:v3];
  }
}

- (id)slotToBundleIdMapping
{
  v3 = [(NSMutableDictionary *)self->_slotToAppIdentifierMapping mutableCopy];
  v4 = [(NSMutableDictionary *)self->_slotToAppIdentifierMapping allKeys];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__NTKGreenfieldDraftRecipe_slotToBundleIdMapping__block_invoke;
  v11 = &unk_27877DEA8;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

void __49__NTKGreenfieldDraftRecipe_slotToBundleIdMapping__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) _shouldIncludeMetadataForSlot:?] & 1) == 0)
  {
    [*(a1 + 40) removeObjectForKey:v3];
  }
}

- (id)sortedComplicationSharingOptions
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = objc_opt_class();
  v6 = [(NTKFace *)self->_originalface device];
  originalface = self->_originalface;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__NTKGreenfieldDraftRecipe_sortedComplicationSharingOptions__block_invoke;
  v13[3] = &unk_278783EB0;
  v13[4] = self;
  v14 = v4;
  v16 = v3;
  v17 = v5;
  v15 = v6;
  v8 = v3;
  v9 = v6;
  v10 = v4;
  [(NTKFace *)originalface enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:v13];
  [v8 sortUsingComparator:&__block_literal_global_113];
  v11 = [v8 copy];

  return v11;
}

void __60__NTKGreenfieldDraftRecipe_sortedComplicationSharingOptions__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(*(a1 + 32) + 8) complicationForSlot:?];
  if ([v3 complicationType])
  {
    v4 = [v3 uniqueIdentifier];
    if (([*(a1 + 40) containsObject:v4] & 1) == 0)
    {
      [*(a1 + 40) addObject:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v3 complicationDescriptor];
        v6 = [v5 hasUserInfo];

        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = [*(a1 + 64) richComplicationSlotsForDevice:*(a1 + 48)];
      v9 = [v3 ntk_localizedNameWithOptions:3 forRichComplicationSlot:{objc_msgSend(v8, "containsObject:", v11)}];
      v10 = [NTKGreenfieldComplicationSharingOption optionWithName:v9 uniqueIdentifier:v4 optionType:v7];
      [*(a1 + 56) addObject:v10];
    }
  }
}

uint64_t __60__NTKGreenfieldDraftRecipe_sortedComplicationSharingOptions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (NTKFace)faceForSharing
{
  v3 = [(NTKFace *)self->_originalface deepCopy];
  v4 = [(NTKFace *)self->_originalface allVisibleComplicationsForCurrentConfiguration];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__NTKGreenfieldDraftRecipe_faceForSharing__block_invoke;
  v10[3] = &unk_27877F4E8;
  v5 = v3;
  v11 = v5;
  v12 = self;
  v13 = v4;
  v6 = v4;
  [(NTKFace *)v5 enumerateComplicationSlotsWithBlock:v10];
  v7 = v13;
  v8 = v5;

  return v5;
}

void __42__NTKGreenfieldDraftRecipe_faceForSharing__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) complicationForSlot:v3];
  v5 = *(a1 + 40);
  v6 = [v4 uniqueIdentifier];
  v7 = [v5 optionForComplicationUniqueIdentifier:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 2;
  }

  if ([*(a1 + 48) containsObject:v3])
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    v9 = *(a1 + 32);
    v10 = +[NTKComplication nullComplication];
    [v9 setComplication:v10 forSlot:v3];

    goto LABEL_18;
  }

  if (v8 != 1)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 resetComplicationDescriptor];
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [NTKComplication anyComplicationOfType:24];
    [*(a1 + 32) setComplication:v11 forSlot:v3];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    v11 = v4;
    v12 = [v11 complication];
    v13 = [v12 bundleIdentifier];

    if ([v13 isEqualToString:@"com.apple.NanoCompass.complications.waypoints"])
    {
      v14 = [v11 complication];
      v15 = [v14 appBundleIdentifier];

      v16 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.waypoint" appBundleIdentifier:v15 complicationDescriptor:0];

      [*(a1 + 32) setComplication:v16 forSlot:v3];
      v11 = v16;
    }
  }

LABEL_18:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NTKFaceStyleDescription([*(*(a1 + 40) + 8) faceStyle]);
      v21 = 138412546;
      v22 = v3;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "Removing placeholder complication at slot: %@ face: %@", &v21, 0x16u);
    }

    v19 = *(a1 + 32);
    v20 = +[NTKComplication nullComplication];
    [v19 setComplication:v20 forSlot:v3];
  }
}

- (unint64_t)faceForSharingComplicationOptionsCount
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = [(NTKGreenfieldDraftRecipe *)self faceForSharing];
  v4 = [(NTKFace *)self->_originalface deepCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__NTKGreenfieldDraftRecipe_faceForSharingComplicationOptionsCount__block_invoke;
  v8[3] = &unk_278780C38;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  [v3 enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:v8];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __66__NTKGreenfieldDraftRecipe_faceForSharingComplicationOptionsCount__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) complicationForSlot:a2];
  v3 = *(a1 + 40);
  v4 = [v7 uniqueIdentifier];
  v5 = [v3 optionForComplicationUniqueIdentifier:v4];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ([v7 complicationType] && (isKindOfClass & 1) == 0 && v5 <= 1)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

+ (id)titleFromComplicationOption:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = @"GREENFIELD_SHARE_OPTIONS_REMOVE_COMPLICATION";
    v4 = @"Don't include";
  }

  else if (a3 == 1)
  {
    v3 = @"GREENFIELD_SHARE_OPTIONS_KEEP_COMPLICATION_WITHOUT_USER_INFO";
    v4 = @"Include without data";
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v3 = @"GREENFIELD_SHARE_OPTIONS_KEEP_COMPLICATION_INCLUDE_USER_INFO";
    v4 = @"Include with data";
  }

  a1 = NTKClockFaceLocalizedString(v3, v4);
LABEL_8:

  return a1;
}

+ (id)descriptionFromComplicationOption:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = @"GREENFIELD_SHARE_OPTIONS_REMOVE_COMPLICATION_FOOTER";
    v4 = @"This complication will not be shared as part of the watch face.";
  }

  else if (a3 == 1)
  {
    v3 = @"GREENFIELD_SHARE_OPTIONS_KEEP_COMPLICATION_WITHOUT_USER_INFO_FOOTER";
    v4 = @"Including this complication without data will share a generic complication that launches the app but will not include personal data.";
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v3 = @"GREENFIELD_SHARE_OPTIONS_KEEP_COMPLICATION_INCLUDE_USER_INFO_FOOTER";
    v4 = @"Including this complication with data could share location, descriptions, keywords, names, or other personally identifiable information.";
  }

  a1 = NTKClockFaceLocalizedString(v3, v4);
LABEL_8:

  return a1;
}

- (BOOL)_shouldIncludeMetadataForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFace *)self->_originalface allVisibleComplicationsForCurrentConfiguration];
  if ([v5 containsObject:v4])
  {
    v6 = [(NTKFace *)self->_originalface complicationForSlot:v4];
    v7 = [v6 uniqueIdentifier];
    v8 = [(NTKGreenfieldDraftRecipe *)self optionForComplicationUniqueIdentifier:v7];

    v9 = v8 != 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_buildSlotToSampleTemplateMapping
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  slotToSampleTemplateMapping = self->_slotToSampleTemplateMapping;
  self->_slotToSampleTemplateMapping = v3;

  originalface = self->_originalface;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NTKGreenfieldDraftRecipe__buildSlotToSampleTemplateMapping__block_invoke;
  v6[3] = &unk_278781568;
  v6[4] = self;
  [(NTKFace *)originalface enumerateComplicationSlotsWithBlock:v6];
}

void __61__NTKGreenfieldDraftRecipe__buildSlotToSampleTemplateMapping__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [objc_opt_class() templateForComplicationAtSlot:v3 face:v4];
  if (v5)
  {
    if ([*(a1 + 32) canShareTemplate:v5 slot:v3])
    {
      [*(*(a1 + 32) + 16) setObject:v5 forKey:v3];
    }
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__NTKGreenfieldDraftRecipe__buildSlotToSampleTemplateMapping__block_invoke_cold_1(v3, v4, v6);
    }
  }
}

+ (id)templateForComplicationAtSlot:(id)a3 face:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 complicationForSlot:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 complicationVariantForComplication:v7 withSlot:v5];
    v10 = [v9 family];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      v24 = [v6 device];
      v12 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:?];
      v13 = [v11 clientIdentifier];
      v14 = [v11 complicationDescriptor];
      v15 = [v11 appBundleIdentifier];
      v23 = v12;
      v16 = [v12 sampleTemplateForClientIdentifier:v13 descriptor:v14 applicationID:v15 family:v10];

      if (!v16)
      {
        v17 = [NTKCompanionRemoteComplicationDataSource alloc];
        v18 = [v6 device];
        v19 = objc_opt_new();
        v20 = [(CLKCComplicationDataSource *)v17 initWithComplication:v11 family:v10 forDevice:v18 context:v19];

        v16 = [(NTKCompanionRemoteComplicationDataSource *)v20 currentSwitcherTemplate];
      }
    }

    else
    {
      v21 = [v6 device];
      v11 = [NTKComplicationController controllerForComplication:v7 variant:v9 device:v21];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v11 sharingTemplate];
      }

      else
      {
        v16 = 0;
      }
    }

    v8 = v16;
  }

  return v8;
}

- (BOOL)canShareTemplate:(id)a3 slot:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke;
  v33[3] = &unk_278783EF8;
  v8 = v6;
  v34 = v8;
  v36 = &v37;
  v9 = v7;
  v35 = v9;
  [v8 _enumerateFullColorImageProviderKeysWithBlock:v33];
  if (*(v38 + 24))
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke_54;
    v29[3] = &unk_278783F20;
    v10 = v8;
    v30 = v10;
    v32 = &v37;
    v11 = v9;
    v31 = v11;
    [v10 enumerateTextProviderKeysWithBlock:v29];
    if (*(v38 + 24))
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke_60;
      v25[3] = &unk_278783F20;
      v12 = v10;
      v26 = v12;
      v28 = &v37;
      v13 = v11;
      v27 = v13;
      [v12 enumerateImageProviderKeysWithBlock:v25];
      if (!*(v38 + 24))
      {
        goto LABEL_11;
      }

      v14 = objc_opt_class();
      v15 = [v12 metadata];
      LOBYTE(v14) = [v14 dictionaryIsCompatibleWithJSONSerialization:v15];

      if ((v14 & 1) == 0)
      {
        *(v38 + 24) = 0;
        v16 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v12 metadata];
          *buf = 138412546;
          v42 = v13;
          v43 = 2112;
          v44 = v17;
          _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "Sample template for slot: %@ can't be shared because it has a non JSON representable dictionary %@.", buf, 0x16u);
        }
      }

      if (*(v38 + 24))
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke_62;
        v20[3] = &unk_278783F48;
        v21 = v12;
        v22 = self;
        v23 = v13;
        v24 = &v37;
        [v21 _enumerateEmbeddedTemplateKeysWithBlock:v20];
        v18 = *(v38 + 24);
      }

      else
      {
LABEL_11:
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v37, 8);
  return v18;
}

void __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = [*(a1 + 32) valueForKey:a2];
  if ([v9 ImageViewClass])
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a7 = 1;
    v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Sample template for slot: %@ can't be shared because it has a custom view class.", &v12, 0xCu);
    }
  }
}

void __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = [*(a1 + 32) valueForKey:a2];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [v9 isEqualToString:@"DoseTextProvider"])
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
    v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Sample template for slot: %@ can't be shared because it is CLKOverrideTextProvider.", &v12, 0xCu);
    }
  }
}

void __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = [*(a1 + 32) valueForKey:a2];
  v8 = [v7 imageViewCreationHandler];

  if (v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a5 = 1;
    v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Sample template for slot: %@ can't be shared because it is has a custom image view class.", &v11, 0xCu);
    }
  }
}

void __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [*(a1 + 32) valueForKey:a2];
  if (([*(a1 + 40) canShareTemplate:? slot:?] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a5 = 1;
  }
}

- (void)_buildSlotToItemIdAndBundleIdMapping
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  slotToItemIdMapping = self->_slotToItemIdMapping;
  self->_slotToItemIdMapping = v3;

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  slotToAppIdentifierMapping = self->_slotToAppIdentifierMapping;
  self->_slotToAppIdentifierMapping = v5;

  originalface = self->_originalface;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__NTKGreenfieldDraftRecipe__buildSlotToItemIdAndBundleIdMapping__block_invoke;
  v8[3] = &unk_278781568;
  v8[4] = self;
  [(NTKFace *)originalface enumerateComplicationSlotsWithBlock:v8];
}

void __64__NTKGreenfieldDraftRecipe__buildSlotToItemIdAndBundleIdMapping__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(*(a1 + 32) + 8) complicationForSlot:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 clientIdentifier];
    }

    else
    {
      [v3 appIdentifier];
    }
    v4 = ;
    if (v4)
    {
      v5 = NTKSharedRemoteComplicationProvider();
      v6 = [v5 itemIdForVendorWithClientIdentifier:v4];

      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = &unk_284183688;
      }

      [*(*(a1 + 32) + 24) setObject:v7 forKeyedSubscript:v9];
      v8 = [v3 appIdentifier];
      [*(*(a1 + 32) + 40) setObject:v8 forKeyedSubscript:v9];
    }
  }
}

- (void)_buildOptionTypeMapping
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  complicationUniqueIdentifierToOptionTypeMapping = self->_complicationUniqueIdentifierToOptionTypeMapping;
  self->_complicationUniqueIdentifierToOptionTypeMapping = v3;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NTKGreenfieldDraftRecipe *)self sortedComplicationSharingOptions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        v12 = [v10 optionType];
        if (v12)
        {
          if (v12 != 1)
          {
            goto LABEL_11;
          }

          v13 = &unk_2841836B8;
        }

        else
        {
          v13 = &unk_2841836A0;
        }

        [(NSMutableDictionary *)self->_complicationUniqueIdentifierToOptionTypeMapping setObject:v13 forKeyedSubscript:v11];
LABEL_11:
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)encodeWithCoder:(id)a3
{
  originalface = self->_originalface;
  v5 = a3;
  v6 = [(NTKFace *)originalface instanceDescriptor];
  [v5 encodeObject:v6 forKey:@"kNTKGreenfieldWatchfaceKey"];
  [v5 encodeObject:self->_complicationUniqueIdentifierToOptionTypeMapping forKey:@"kNTKGreenfieldComplicationUniqueIdentifierToOptionTypeMappingKey"];
  [v5 encodeObject:self->_tempPathOverride forKey:@"kNTKGreenfieldTempPathKey"];
  [v5 encodeObject:self->_slotToSampleTemplateMapping forKey:@"kNTKGreenfieldSlotToSampleTemplateMappingKey"];
  [v5 encodeObject:self->_slotToItemIdMapping forKey:@"kNTKGreenfieldSlotToItemIdMappingKey"];
  [v5 encodeObject:self->_slotToAppIdentifierMapping forKey:@"kNTKGreenfieldSlotToBundleIdMappingKey"];
}

- (NTKGreenfieldDraftRecipe)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = NTKGreenfieldDraftRecipe;
  v5 = [(NTKGreenfieldDraftRecipe *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNTKGreenfieldWatchfaceKey"];
    v7 = [NTKFace faceWithInstanceDescriptor:v6];
    originalface = v5->_originalface;
    v5->_originalface = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kNTKGreenfieldComplicationUniqueIdentifierToOptionTypeMappingKey"];
    complicationUniqueIdentifierToOptionTypeMapping = v5->_complicationUniqueIdentifierToOptionTypeMapping;
    v5->_complicationUniqueIdentifierToOptionTypeMapping = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNTKGreenfieldTempPathKey"];
    tempPathOverride = v5->_tempPathOverride;
    v5->_tempPathOverride = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];

    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"kNTKGreenfieldSlotToSampleTemplateMappingKey"];
    slotToSampleTemplateMapping = v5->_slotToSampleTemplateMapping;
    v5->_slotToSampleTemplateMapping = v22;

    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];

    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"kNTKGreenfieldSlotToItemIdMappingKey"];
    slotToItemIdMapping = v5->_slotToItemIdMapping;
    v5->_slotToItemIdMapping = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];

    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"kNTKGreenfieldSlotToBundleIdMappingKey"];
    slotToAppIdentifierMapping = v5->_slotToAppIdentifierMapping;
    v5->_slotToAppIdentifierMapping = v33;
  }

  return v5;
}

void __61__NTKGreenfieldDraftRecipe__buildSlotToSampleTemplateMapping__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = NTKFaceStyleDescription([a2 faceStyle]);
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "Missing sample template for slot: %@ face: %@", &v6, 0x16u);
}

@end