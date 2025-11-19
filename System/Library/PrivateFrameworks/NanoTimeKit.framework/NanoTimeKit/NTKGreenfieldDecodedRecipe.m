@interface NTKGreenfieldDecodedRecipe
- (BOOL)_template:(id)a3 isUnsupportedForComplication:(id)a4;
- (NSDictionary)complicationSlotToTemplateMapping;
- (NTKGreenfieldDecodedRecipe)initWithCoder:(id)a3;
- (NTKGreenfieldDecodedRecipe)initWithWatchFace:(id)a3 complicationSlotToTemplateMapping:(id)a4 complicationSlotToItemIdMapping:(id)a5 complicationSlotToNameMapping:(id)a6 complicationSlotToBundleIdMapping:(id)a7 isUsingModifiedComplicationsSet:(BOOL)a8 noBorderFacePreviewImagePath:(id)a9 senderBoxedDeviceSize:(id)a10;
- (id)_overrideTemplateForComplication:(id)a3 atSlot:(id)a4 face:(id)a5;
- (void)collectOverrideTemplates;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKGreenfieldDecodedRecipe

- (NTKGreenfieldDecodedRecipe)initWithWatchFace:(id)a3 complicationSlotToTemplateMapping:(id)a4 complicationSlotToItemIdMapping:(id)a5 complicationSlotToNameMapping:(id)a6 complicationSlotToBundleIdMapping:(id)a7 isUsingModifiedComplicationsSet:(BOOL)a8 noBorderFacePreviewImagePath:(id)a9 senderBoxedDeviceSize:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = NTKGreenfieldDecodedRecipe;
  v18 = [(NTKGreenfieldDecodedRecipe *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_watchFace, a3);
    objc_storeStrong(&v19->_complicationSlotToTemplateMapping, a4);
    objc_storeStrong(&v19->_complicationSlotToItemIdMapping, a5);
    objc_storeStrong(&v19->_complicationSlotToNameMapping, a6);
    objc_storeStrong(&v19->_complicationSlotToBundleIdMapping, a7);
    v19->_isUsingModifiedComplicationsSet = a8;
    objc_storeStrong(&v19->_noBorderFacePreviewImagePath, a9);
    objc_storeStrong(&v19->_senderBoxedDeviceSize, a10);
  }

  return v19;
}

- (NSDictionary)complicationSlotToTemplateMapping
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 addEntriesFromDictionary:self->_complicationSlotToTemplateMapping];
  if (self->_complicationSlotToTemplateOverrideMapping)
  {
    [v3 addEntriesFromDictionary:?];
  }

  v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "complicationSlotToTemplateMapping: %@", &v6, 0xCu);
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKGreenfieldDecodedRecipe *)self watchFace];
  v11 = [v5 instanceDescriptor];

  [v4 encodeObject:v11 forKey:@"NTKGreenfieldWatchfaceKey"];
  [v4 encodeObject:self->_complicationSlotToTemplateMapping forKey:@"NTKGreenfieldComplicationSlotToTemplateMappingKey"];
  v6 = [(NTKGreenfieldDecodedRecipe *)self complicationSlotToItemIdMapping];
  [v4 encodeObject:v6 forKey:@"kNTKGreenfieldComplicationSlotToItemIdMappingKey"];

  v7 = [(NTKGreenfieldDecodedRecipe *)self complicationSlotToBundleIdMapping];
  [v4 encodeObject:v7 forKey:@"kNTKGreenfieldComplicationSlotToBundleIdMappingKey"];

  v8 = [(NTKGreenfieldDecodedRecipe *)self complicationSlotToNameMapping];
  [v4 encodeObject:v8 forKey:@"kNTKGreenfieldComplicationSlotToNameMappingKey"];

  [v4 encodeBool:self->_isUsingModifiedComplicationsSet forKey:@"kNTKGreenfieldIsUsingModifiedComplicationsSet"];
  v9 = [(NTKGreenfieldDecodedRecipe *)self noBorderFacePreviewImagePath];
  [v4 encodeObject:v9 forKey:@"NTKGreenfieldNoBordersWatchFaceSnapshotPathKey"];

  v10 = [(NTKGreenfieldDecodedRecipe *)self senderBoxedDeviceSize];
  [v4 encodeObject:v10 forKey:@"NTKGreenfieldDeviceSizePathKey"];
}

- (NTKGreenfieldDecodedRecipe)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NTKGreenfieldDecodedRecipe;
  v5 = [(NTKGreenfieldDecodedRecipe *)&v33 init];
  if (v5)
  {
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NTKGreenfieldWatchfaceKey"];
    v6 = [NTKFace faceWithInstanceDescriptor:v32];
    watchFace = v5->_watchFace;
    v5->_watchFace = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"NTKGreenfieldComplicationSlotToTemplateMappingKey"];
    complicationSlotToTemplateMapping = v5->_complicationSlotToTemplateMapping;
    v5->_complicationSlotToTemplateMapping = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];

    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kNTKGreenfieldComplicationSlotToItemIdMappingKey"];
    complicationSlotToItemIdMapping = v5->_complicationSlotToItemIdMapping;
    v5->_complicationSlotToItemIdMapping = v19;

    v21 = [v4 decodeObjectOfClasses:v18 forKey:@"kNTKGreenfieldComplicationSlotToBundleIdMappingKey"];
    complicationSlotToBundleIdMapping = v5->_complicationSlotToBundleIdMapping;
    v5->_complicationSlotToBundleIdMapping = v21;

    v23 = [v4 decodeObjectOfClasses:v18 forKey:@"kNTKGreenfieldComplicationSlotToNameMappingKey"];
    complicationSlotToNameMapping = v5->_complicationSlotToNameMapping;
    v5->_complicationSlotToNameMapping = v23;

    v5->_isUsingModifiedComplicationsSet = [v4 decodeBoolForKey:@"kNTKGreenfieldIsUsingModifiedComplicationsSet"];
    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"NTKGreenfieldNoBordersWatchFaceSnapshotPathKey"];
    noBorderFacePreviewImagePath = v5->_noBorderFacePreviewImagePath;
    v5->_noBorderFacePreviewImagePath = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"NTKGreenfieldDeviceSizePathKey"];
    senderBoxedDeviceSize = v5->_senderBoxedDeviceSize;
    v5->_senderBoxedDeviceSize = v29;
  }

  return v5;
}

- (id)_overrideTemplateForComplication:(id)a3 atSlot:(id)a4 face:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v32 = a5;
  v10 = [(NTKFace *)self->_watchFace complicationVariantForComplication:v8 withSlot:v9];
  v11 = [v10 family];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    v13 = [v12 appBundleIdentifier];
    v14 = [NTKComplicationCollection lsSDKVersionForApplicationID:v13];

    v15 = [v32 device];
    [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:v15];
    v30 = v10;
    v16 = v31 = v9;
    [v12 clientIdentifier];
    v17 = v8;
    v19 = v18 = self;
    v20 = [v12 complicationDescriptor];
    v21 = [v12 appBundleIdentifier];

    v22 = [v16 sampleTemplateForClientIdentifier:v19 descriptor:v20 applicationID:v21 family:v11];

    self = v18;
    v8 = v17;

    v10 = v30;
    v9 = v31;
  }

  else
  {
    v23 = [v32 device];
    v15 = [NTKComplicationController controllerForComplication:v8 variant:v10 device:v23];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v15 sharingTemplate];
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v22 = 0;
    }
  }

  v24 = v14;
  if (v22 || (-[NSDictionary objectForKeyedSubscript:](self->_complicationSlotToNameMapping, "objectForKeyedSubscript:", v9), v25 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](self->_complicationSlotToBundleIdMapping, "objectForKeyedSubscript:", v9), v26 = objc_claimAutoreleasedReturnValue(), [v32 device], v27 = objc_claimAutoreleasedReturnValue(), +[NTKGreenfieldFallbackTemplateProvider templateForClientIdentifier:displayName:family:device:sdkVersion:](NTKGreenfieldFallbackTemplateProvider, "templateForClientIdentifier:displayName:family:device:sdkVersion:", v26, v25, v11, v27, v14), v22 = objc_claimAutoreleasedReturnValue(), v27, v26, v25, v22))
  {
    v28 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = v8;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v22;
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

    v22 = 0;
  }

  return v22;
}

- (void)collectOverrideTemplates
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [MEMORY[0x277CBEB38] dictionary];
  watchFace = self->_watchFace;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NTKGreenfieldDecodedRecipe_collectOverrideTemplates__block_invoke;
  v8[3] = &unk_27877F498;
  v8[4] = self;
  v5 = v3;
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

- (BOOL)_template:(id)a3 isUnsupportedForComplication:(id)a4
{
  v5 = a3;
  v6 = [a4 complicationType];
  v7 = 0;
  if (v6 > 15)
  {
    if (v6 != 16)
    {
      if (v6 != 18)
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

  if (v6 == 1)
  {
    goto LABEL_11;
  }

  if (v6 == 8)
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