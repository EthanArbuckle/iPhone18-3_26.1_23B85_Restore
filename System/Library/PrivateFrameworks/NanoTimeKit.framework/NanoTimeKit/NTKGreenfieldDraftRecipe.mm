@interface NTKGreenfieldDraftRecipe
+ (id)descriptionFromComplicationOption:(unint64_t)option;
+ (id)templateForComplicationAtSlot:(id)slot face:(id)face;
+ (id)titleFromComplicationOption:(unint64_t)option;
- (BOOL)_shouldIncludeMetadataForSlot:(id)slot;
- (BOOL)canShareTemplate:(id)template slot:(id)slot;
- (BOOL)hasComplicationSharingOptions;
- (NTKFace)faceForSharing;
- (NTKGreenfieldDraftRecipe)initWithCoder:(id)coder;
- (NTKGreenfieldDraftRecipe)initWithFace:(id)face;
- (id)slotToBundleIdMapping;
- (id)slotToItemIdMapping;
- (id)slotToSampleTemplateMapping;
- (id)sortedComplicationSharingOptions;
- (unint64_t)faceForSharingComplicationOptionsCount;
- (unint64_t)optionForComplicationUniqueIdentifier:(id)identifier;
- (void)_buildOptionTypeMapping;
- (void)_buildSlotToItemIdAndBundleIdMapping;
- (void)_buildSlotToSampleTemplateMapping;
- (void)encodeWithCoder:(id)coder;
- (void)setComplicationOption:(unint64_t)option forComplicationUniqueIdentifier:(id)identifier;
@end

@implementation NTKGreenfieldDraftRecipe

- (NTKGreenfieldDraftRecipe)initWithFace:(id)face
{
  faceCopy = face;
  v11.receiver = self;
  v11.super_class = NTKGreenfieldDraftRecipe;
  v6 = [(NTKGreenfieldDraftRecipe *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalface, face);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    complicationUniqueIdentifierToOptionTypeMapping = v7->_complicationUniqueIdentifierToOptionTypeMapping;
    v7->_complicationUniqueIdentifierToOptionTypeMapping = dictionary;

    [(NTKGreenfieldDraftRecipe *)v7 _buildSlotToSampleTemplateMapping];
    [(NTKGreenfieldDraftRecipe *)v7 _buildSlotToItemIdAndBundleIdMapping];
    [(NTKGreenfieldDraftRecipe *)v7 _buildOptionTypeMapping];
  }

  return v7;
}

- (void)setComplicationOption:(unint64_t)option forComplicationUniqueIdentifier:(id)identifier
{
  v6 = MEMORY[0x277CCABB0];
  identifierCopy = identifier;
  v8 = [v6 numberWithUnsignedInteger:option];
  [(NSMutableDictionary *)self->_complicationUniqueIdentifierToOptionTypeMapping setObject:v8 forKeyedSubscript:identifierCopy];
}

- (unint64_t)optionForComplicationUniqueIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_complicationUniqueIdentifierToOptionTypeMapping objectForKeyedSubscript:identifier];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)hasComplicationSharingOptions
{
  sortedComplicationSharingOptions = [(NTKGreenfieldDraftRecipe *)self sortedComplicationSharingOptions];
  v3 = [sortedComplicationSharingOptions count] != 0;

  return v3;
}

- (id)slotToItemIdMapping
{
  v3 = [(NSMutableDictionary *)self->_slotToItemIdMapping mutableCopy];
  allKeys = [(NSMutableDictionary *)self->_slotToItemIdMapping allKeys];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__NTKGreenfieldDraftRecipe_slotToItemIdMapping__block_invoke;
  v11 = &unk_27877DEA8;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [allKeys enumerateObjectsUsingBlock:&v8];

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
  allKeys = [(NSMutableDictionary *)self->_slotToSampleTemplateMapping allKeys];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__NTKGreenfieldDraftRecipe_slotToSampleTemplateMapping__block_invoke;
  v11 = &unk_27877DEA8;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [allKeys enumerateObjectsUsingBlock:&v8];

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
  allKeys = [(NSMutableDictionary *)self->_slotToAppIdentifierMapping allKeys];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__NTKGreenfieldDraftRecipe_slotToBundleIdMapping__block_invoke;
  v11 = &unk_27877DEA8;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [allKeys enumerateObjectsUsingBlock:&v8];

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
  device = [(NTKFace *)self->_originalface device];
  originalface = self->_originalface;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__NTKGreenfieldDraftRecipe_sortedComplicationSharingOptions__block_invoke;
  v13[3] = &unk_278783EB0;
  v13[4] = self;
  v14 = v4;
  v16 = v3;
  v17 = v5;
  v15 = device;
  v8 = v3;
  v9 = device;
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
  deepCopy = [(NTKFace *)self->_originalface deepCopy];
  allVisibleComplicationsForCurrentConfiguration = [(NTKFace *)self->_originalface allVisibleComplicationsForCurrentConfiguration];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__NTKGreenfieldDraftRecipe_faceForSharing__block_invoke;
  v10[3] = &unk_27877F4E8;
  v5 = deepCopy;
  v11 = v5;
  selfCopy = self;
  v13 = allVisibleComplicationsForCurrentConfiguration;
  v6 = allVisibleComplicationsForCurrentConfiguration;
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
  faceForSharing = [(NTKGreenfieldDraftRecipe *)self faceForSharing];
  deepCopy = [(NTKFace *)self->_originalface deepCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__NTKGreenfieldDraftRecipe_faceForSharingComplicationOptionsCount__block_invoke;
  v8[3] = &unk_278780C38;
  v5 = deepCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [faceForSharing enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:v8];
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

+ (id)titleFromComplicationOption:(unint64_t)option
{
  if (option == 2)
  {
    v3 = @"GREENFIELD_SHARE_OPTIONS_REMOVE_COMPLICATION";
    v4 = @"Don't include";
  }

  else if (option == 1)
  {
    v3 = @"GREENFIELD_SHARE_OPTIONS_KEEP_COMPLICATION_WITHOUT_USER_INFO";
    v4 = @"Include without data";
  }

  else
  {
    if (option)
    {
      goto LABEL_8;
    }

    v3 = @"GREENFIELD_SHARE_OPTIONS_KEEP_COMPLICATION_INCLUDE_USER_INFO";
    v4 = @"Include with data";
  }

  self = NTKClockFaceLocalizedString(v3, v4);
LABEL_8:

  return self;
}

+ (id)descriptionFromComplicationOption:(unint64_t)option
{
  if (option == 2)
  {
    v3 = @"GREENFIELD_SHARE_OPTIONS_REMOVE_COMPLICATION_FOOTER";
    v4 = @"This complication will not be shared as part of the watch face.";
  }

  else if (option == 1)
  {
    v3 = @"GREENFIELD_SHARE_OPTIONS_KEEP_COMPLICATION_WITHOUT_USER_INFO_FOOTER";
    v4 = @"Including this complication without data will share a generic complication that launches the app but will not include personal data.";
  }

  else
  {
    if (option)
    {
      goto LABEL_8;
    }

    v3 = @"GREENFIELD_SHARE_OPTIONS_KEEP_COMPLICATION_INCLUDE_USER_INFO_FOOTER";
    v4 = @"Including this complication with data could share location, descriptions, keywords, names, or other personally identifiable information.";
  }

  self = NTKClockFaceLocalizedString(v3, v4);
LABEL_8:

  return self;
}

- (BOOL)_shouldIncludeMetadataForSlot:(id)slot
{
  slotCopy = slot;
  allVisibleComplicationsForCurrentConfiguration = [(NTKFace *)self->_originalface allVisibleComplicationsForCurrentConfiguration];
  if ([allVisibleComplicationsForCurrentConfiguration containsObject:slotCopy])
  {
    v6 = [(NTKFace *)self->_originalface complicationForSlot:slotCopy];
    uniqueIdentifier = [v6 uniqueIdentifier];
    v8 = [(NTKGreenfieldDraftRecipe *)self optionForComplicationUniqueIdentifier:uniqueIdentifier];

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

+ (id)templateForComplicationAtSlot:(id)slot face:(id)face
{
  slotCopy = slot;
  faceCopy = face;
  v7 = [faceCopy complicationForSlot:slotCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
  }

  else
  {
    v9 = [faceCopy complicationVariantForComplication:v7 withSlot:slotCopy];
    family = [v9 family];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      device = [faceCopy device];
      v12 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:?];
      clientIdentifier = [v11 clientIdentifier];
      complicationDescriptor = [v11 complicationDescriptor];
      appBundleIdentifier = [v11 appBundleIdentifier];
      v23 = v12;
      currentSwitcherTemplate = [v12 sampleTemplateForClientIdentifier:clientIdentifier descriptor:complicationDescriptor applicationID:appBundleIdentifier family:family];

      if (!currentSwitcherTemplate)
      {
        v17 = [NTKCompanionRemoteComplicationDataSource alloc];
        device2 = [faceCopy device];
        v19 = objc_opt_new();
        v20 = [(CLKCComplicationDataSource *)v17 initWithComplication:v11 family:family forDevice:device2 context:v19];

        currentSwitcherTemplate = [(NTKCompanionRemoteComplicationDataSource *)v20 currentSwitcherTemplate];
      }
    }

    else
    {
      device3 = [faceCopy device];
      v11 = [NTKComplicationController controllerForComplication:v7 variant:v9 device:device3];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        currentSwitcherTemplate = [v11 sharingTemplate];
      }

      else
      {
        currentSwitcherTemplate = 0;
      }
    }

    v8 = currentSwitcherTemplate;
  }

  return v8;
}

- (BOOL)canShareTemplate:(id)template slot:(id)slot
{
  v45 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  slotCopy = slot;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __50__NTKGreenfieldDraftRecipe_canShareTemplate_slot___block_invoke;
  v33[3] = &unk_278783EF8;
  v8 = templateCopy;
  v34 = v8;
  v36 = &v37;
  v9 = slotCopy;
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
      metadata = [v12 metadata];
      LOBYTE(v14) = [v14 dictionaryIsCompatibleWithJSONSerialization:metadata];

      if ((v14 & 1) == 0)
      {
        *(v38 + 24) = 0;
        v16 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          metadata2 = [v12 metadata];
          *buf = 138412546;
          v42 = v13;
          v43 = 2112;
          v44 = metadata2;
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
        selfCopy = self;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  complicationUniqueIdentifierToOptionTypeMapping = self->_complicationUniqueIdentifierToOptionTypeMapping;
  self->_complicationUniqueIdentifierToOptionTypeMapping = dictionary;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sortedComplicationSharingOptions = [(NTKGreenfieldDraftRecipe *)self sortedComplicationSharingOptions];
  v6 = [sortedComplicationSharingOptions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sortedComplicationSharingOptions);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uniqueIdentifier = [v10 uniqueIdentifier];
        optionType = [v10 optionType];
        if (optionType)
        {
          if (optionType != 1)
          {
            goto LABEL_11;
          }

          v13 = &unk_2841836B8;
        }

        else
        {
          v13 = &unk_2841836A0;
        }

        [(NSMutableDictionary *)self->_complicationUniqueIdentifierToOptionTypeMapping setObject:v13 forKeyedSubscript:uniqueIdentifier];
LABEL_11:
      }

      v7 = [sortedComplicationSharingOptions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)encodeWithCoder:(id)coder
{
  originalface = self->_originalface;
  coderCopy = coder;
  instanceDescriptor = [(NTKFace *)originalface instanceDescriptor];
  [coderCopy encodeObject:instanceDescriptor forKey:@"kNTKGreenfieldWatchfaceKey"];
  [coderCopy encodeObject:self->_complicationUniqueIdentifierToOptionTypeMapping forKey:@"kNTKGreenfieldComplicationUniqueIdentifierToOptionTypeMappingKey"];
  [coderCopy encodeObject:self->_tempPathOverride forKey:@"kNTKGreenfieldTempPathKey"];
  [coderCopy encodeObject:self->_slotToSampleTemplateMapping forKey:@"kNTKGreenfieldSlotToSampleTemplateMappingKey"];
  [coderCopy encodeObject:self->_slotToItemIdMapping forKey:@"kNTKGreenfieldSlotToItemIdMappingKey"];
  [coderCopy encodeObject:self->_slotToAppIdentifierMapping forKey:@"kNTKGreenfieldSlotToBundleIdMappingKey"];
}

- (NTKGreenfieldDraftRecipe)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = NTKGreenfieldDraftRecipe;
  v5 = [(NTKGreenfieldDraftRecipe *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNTKGreenfieldWatchfaceKey"];
    v7 = [NTKFace faceWithInstanceDescriptor:v6];
    originalface = v5->_originalface;
    v5->_originalface = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kNTKGreenfieldComplicationUniqueIdentifierToOptionTypeMappingKey"];
    complicationUniqueIdentifierToOptionTypeMapping = v5->_complicationUniqueIdentifierToOptionTypeMapping;
    v5->_complicationUniqueIdentifierToOptionTypeMapping = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNTKGreenfieldTempPathKey"];
    tempPathOverride = v5->_tempPathOverride;
    v5->_tempPathOverride = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];

    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"kNTKGreenfieldSlotToSampleTemplateMappingKey"];
    slotToSampleTemplateMapping = v5->_slotToSampleTemplateMapping;
    v5->_slotToSampleTemplateMapping = v22;

    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];

    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"kNTKGreenfieldSlotToItemIdMappingKey"];
    slotToItemIdMapping = v5->_slotToItemIdMapping;
    v5->_slotToItemIdMapping = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];

    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"kNTKGreenfieldSlotToBundleIdMappingKey"];
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