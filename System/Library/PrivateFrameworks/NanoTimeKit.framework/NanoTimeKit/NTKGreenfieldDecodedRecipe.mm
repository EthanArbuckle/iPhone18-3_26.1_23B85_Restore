@interface NTKGreenfieldDecodedRecipe
- (BOOL)_template:(id)_template isUnsupportedForComplication:(id)complication;
- (NSDictionary)complicationSlotToTemplateMapping;
- (NTKGreenfieldDecodedRecipe)initWithCoder:(id)coder;
- (NTKGreenfieldDecodedRecipe)initWithWatchFace:(id)face complicationSlotToTemplateMapping:(id)mapping complicationSlotToItemIdMapping:(id)idMapping complicationSlotToNameMapping:(id)nameMapping complicationSlotToBundleIdMapping:(id)bundleIdMapping isUsingModifiedComplicationsSet:(BOOL)set noBorderFacePreviewImagePath:(id)path senderBoxedDeviceSize:(id)self0;
- (id)_overrideTemplateForComplication:(id)complication atSlot:(id)slot face:(id)face;
- (void)collectOverrideTemplates;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKGreenfieldDecodedRecipe

- (NTKGreenfieldDecodedRecipe)initWithWatchFace:(id)face complicationSlotToTemplateMapping:(id)mapping complicationSlotToItemIdMapping:(id)idMapping complicationSlotToNameMapping:(id)nameMapping complicationSlotToBundleIdMapping:(id)bundleIdMapping isUsingModifiedComplicationsSet:(BOOL)set noBorderFacePreviewImagePath:(id)path senderBoxedDeviceSize:(id)self0
{
  faceCopy = face;
  mappingCopy = mapping;
  idMappingCopy = idMapping;
  nameMappingCopy = nameMapping;
  bundleIdMappingCopy = bundleIdMapping;
  pathCopy = path;
  sizeCopy = size;
  v27.receiver = self;
  v27.super_class = NTKGreenfieldDecodedRecipe;
  v18 = [(NTKGreenfieldDecodedRecipe *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_watchFace, face);
    objc_storeStrong(&v19->_complicationSlotToTemplateMapping, mapping);
    objc_storeStrong(&v19->_complicationSlotToItemIdMapping, idMapping);
    objc_storeStrong(&v19->_complicationSlotToNameMapping, nameMapping);
    objc_storeStrong(&v19->_complicationSlotToBundleIdMapping, bundleIdMapping);
    v19->_isUsingModifiedComplicationsSet = set;
    objc_storeStrong(&v19->_noBorderFacePreviewImagePath, path);
    objc_storeStrong(&v19->_senderBoxedDeviceSize, size);
  }

  return v19;
}

- (NSDictionary)complicationSlotToTemplateMapping
{
  v8 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary addEntriesFromDictionary:self->_complicationSlotToTemplateMapping];
  if (self->_complicationSlotToTemplateOverrideMapping)
  {
    [dictionary addEntriesFromDictionary:?];
  }

  v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dictionary;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "complicationSlotToTemplateMapping: %@", &v6, 0xCu);
  }

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  watchFace = [(NTKGreenfieldDecodedRecipe *)self watchFace];
  instanceDescriptor = [watchFace instanceDescriptor];

  [coderCopy encodeObject:instanceDescriptor forKey:@"NTKGreenfieldWatchfaceKey"];
  [coderCopy encodeObject:self->_complicationSlotToTemplateMapping forKey:@"NTKGreenfieldComplicationSlotToTemplateMappingKey"];
  complicationSlotToItemIdMapping = [(NTKGreenfieldDecodedRecipe *)self complicationSlotToItemIdMapping];
  [coderCopy encodeObject:complicationSlotToItemIdMapping forKey:@"kNTKGreenfieldComplicationSlotToItemIdMappingKey"];

  complicationSlotToBundleIdMapping = [(NTKGreenfieldDecodedRecipe *)self complicationSlotToBundleIdMapping];
  [coderCopy encodeObject:complicationSlotToBundleIdMapping forKey:@"kNTKGreenfieldComplicationSlotToBundleIdMappingKey"];

  complicationSlotToNameMapping = [(NTKGreenfieldDecodedRecipe *)self complicationSlotToNameMapping];
  [coderCopy encodeObject:complicationSlotToNameMapping forKey:@"kNTKGreenfieldComplicationSlotToNameMappingKey"];

  [coderCopy encodeBool:self->_isUsingModifiedComplicationsSet forKey:@"kNTKGreenfieldIsUsingModifiedComplicationsSet"];
  noBorderFacePreviewImagePath = [(NTKGreenfieldDecodedRecipe *)self noBorderFacePreviewImagePath];
  [coderCopy encodeObject:noBorderFacePreviewImagePath forKey:@"NTKGreenfieldNoBordersWatchFaceSnapshotPathKey"];

  senderBoxedDeviceSize = [(NTKGreenfieldDecodedRecipe *)self senderBoxedDeviceSize];
  [coderCopy encodeObject:senderBoxedDeviceSize forKey:@"NTKGreenfieldDeviceSizePathKey"];
}

- (NTKGreenfieldDecodedRecipe)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = NTKGreenfieldDecodedRecipe;
  v5 = [(NTKGreenfieldDecodedRecipe *)&v33 init];
  if (v5)
  {
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NTKGreenfieldWatchfaceKey"];
    v6 = [NTKFace faceWithInstanceDescriptor:v32];
    watchFace = v5->_watchFace;
    v5->_watchFace = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"NTKGreenfieldComplicationSlotToTemplateMappingKey"];
    complicationSlotToTemplateMapping = v5->_complicationSlotToTemplateMapping;
    v5->_complicationSlotToTemplateMapping = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];

    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kNTKGreenfieldComplicationSlotToItemIdMappingKey"];
    complicationSlotToItemIdMapping = v5->_complicationSlotToItemIdMapping;
    v5->_complicationSlotToItemIdMapping = v19;

    v21 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kNTKGreenfieldComplicationSlotToBundleIdMappingKey"];
    complicationSlotToBundleIdMapping = v5->_complicationSlotToBundleIdMapping;
    v5->_complicationSlotToBundleIdMapping = v21;

    v23 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kNTKGreenfieldComplicationSlotToNameMappingKey"];
    complicationSlotToNameMapping = v5->_complicationSlotToNameMapping;
    v5->_complicationSlotToNameMapping = v23;

    v5->_isUsingModifiedComplicationsSet = [coderCopy decodeBoolForKey:@"kNTKGreenfieldIsUsingModifiedComplicationsSet"];
    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"NTKGreenfieldNoBordersWatchFaceSnapshotPathKey"];
    noBorderFacePreviewImagePath = v5->_noBorderFacePreviewImagePath;
    v5->_noBorderFacePreviewImagePath = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"NTKGreenfieldDeviceSizePathKey"];
    senderBoxedDeviceSize = v5->_senderBoxedDeviceSize;
    v5->_senderBoxedDeviceSize = v29;
  }

  return v5;
}

- (id)_overrideTemplateForComplication:(id)complication atSlot:(id)slot face:(id)face
{
  v39 = *MEMORY[0x277D85DE8];
  complicationCopy = complication;
  slotCopy = slot;
  faceCopy = face;
  v10 = [(NTKFace *)self->_watchFace complicationVariantForComplication:complicationCopy withSlot:slotCopy];
  family = [v10 family];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = complicationCopy;
    appBundleIdentifier = [v12 appBundleIdentifier];
    v14 = [NTKComplicationCollection lsSDKVersionForApplicationID:appBundleIdentifier];

    device = [faceCopy device];
    [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:device];
    v30 = v10;
    v16 = v31 = slotCopy;
    [v12 clientIdentifier];
    v17 = complicationCopy;
    v19 = v18 = self;
    complicationDescriptor = [v12 complicationDescriptor];
    appBundleIdentifier2 = [v12 appBundleIdentifier];

    sharingTemplate = [v16 sampleTemplateForClientIdentifier:v19 descriptor:complicationDescriptor applicationID:appBundleIdentifier2 family:family];

    self = v18;
    complicationCopy = v17;

    v10 = v30;
    slotCopy = v31;
  }

  else
  {
    device2 = [faceCopy device];
    device = [NTKComplicationController controllerForComplication:complicationCopy variant:v10 device:device2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sharingTemplate = [device sharingTemplate];
      v14 = 0;
    }

    else
    {
      v14 = 0;
      sharingTemplate = 0;
    }
  }

  v24 = v14;
  if (sharingTemplate || (-[NSDictionary objectForKeyedSubscript:](self->_complicationSlotToNameMapping, "objectForKeyedSubscript:", slotCopy), v25 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](self->_complicationSlotToBundleIdMapping, "objectForKeyedSubscript:", slotCopy), v26 = objc_claimAutoreleasedReturnValue(), [faceCopy device], v27 = objc_claimAutoreleasedReturnValue(), +[NTKGreenfieldFallbackTemplateProvider templateForClientIdentifier:displayName:family:device:sdkVersion:](NTKGreenfieldFallbackTemplateProvider, "templateForClientIdentifier:displayName:family:device:sdkVersion:", v26, v25, family, v27, v14), sharingTemplate = objc_claimAutoreleasedReturnValue(), v27, v26, v25, sharingTemplate))
  {
    v28 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = complicationCopy;
      v35 = 2112;
      v36 = slotCopy;
      v37 = 2112;
      v38 = sharingTemplate;
      _os_log_impl(&dword_22D9C5000, v28, OS_LOG_TYPE_DEFAULT, "_overrideTemplateForComplication: '%@' at slot '%@': %@", buf, 0x20u);
    }
  }

  else
  {
    v28 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [NTKGreenfieldDecodedRecipe _overrideTemplateForComplication:v28 atSlot:? face:?];
    }

    sharingTemplate = 0;
  }

  return sharingTemplate;
}

- (void)collectOverrideTemplates
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  watchFace = self->_watchFace;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NTKGreenfieldDecodedRecipe_collectOverrideTemplates__block_invoke;
  v8[3] = &unk_27877F498;
  v8[4] = self;
  v5 = dictionary;
  v9 = v5;
  [(NTKFace *)watchFace enumerateComplicationSlotsWithBlock:v8];
  complicationSlotToTemplateOverrideMapping = self->_complicationSlotToTemplateOverrideMapping;
  self->_complicationSlotToTemplateOverrideMapping = v5;
  v7 = v5;
}

void __54__NTKGreenfieldDecodedRecipe_collectOverrideTemplates__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) complicationForSlot:v3];
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v4;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "collectOverrideTemplates: original complication '%@' in slot '%@'", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(*(a1 + 32) + 32) complicationForSlot:v3];
    v7 = [v6 complication];

    v4 = v7;
  }

  v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v3];
  if ([v4 complicationType])
  {
    v9 = [*(*(a1 + 32) + 32) preferredComplicationFamilyForComplication:v4 withSlot:v3];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = *(*(a1 + 32) + 32), v11 = v4, [v10 device], v12 = objc_claimAutoreleasedReturnValue(), NTKSharedWidgetComplicationProvider(v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v9), v19 = v9, v20 = objc_claimAutoreleasedReturnValue(), v14 = v20, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v20, 1), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "isComplicationAvailable:forFamilies:", v11, v15), v11, v15, v14, v9 = v19, v13, v12, (v16 & 1) == 0))
    {
      if (!v8 || ![v8 isCompatibleWithFamily:v9] || objc_msgSend(*(a1 + 32), "_template:isUnsupportedForComplication:", v8, v4))
      {
        v17 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v22 = v3;
          v23 = 2112;
          v24 = v8;
          _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "collectOverrideTemplates: slot '%@' has invalid template: %@", buf, 0x16u);
        }

        v18 = [*(a1 + 32) _overrideTemplateForComplication:v4 atSlot:v3 face:*(*(a1 + 32) + 32)];
        [*(a1 + 40) setObject:v18 forKeyedSubscript:v3];
      }
    }
  }
}

- (BOOL)_template:(id)_template isUnsupportedForComplication:(id)complication
{
  _templateCopy = _template;
  complicationType = [complication complicationType];
  v7 = 0;
  if (complicationType > 15)
  {
    if (complicationType != 16)
    {
      if (complicationType != 18)
      {
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_14;
      }

LABEL_12:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

LABEL_11:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (complicationType == 1)
  {
    goto LABEL_11;
  }

  if (complicationType == 8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_13:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_15;
      }
    }

LABEL_14:
    v7 = 1;
  }

LABEL_15:

  return v7;
}

@end