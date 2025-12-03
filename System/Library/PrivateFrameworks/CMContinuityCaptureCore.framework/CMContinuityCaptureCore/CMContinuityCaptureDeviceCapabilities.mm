@interface CMContinuityCaptureDeviceCapabilities
+ (BOOL)avcaptureDeviceSupportsBackgroundReplacement:(id)replacement;
+ (BOOL)avcaptureDeviceSupportsCenterStage:(id)stage;
+ (BOOL)avcaptureDeviceSupportsPortraitEffect:(id)effect;
+ (BOOL)avcaptureDeviceSupportsReactionEffects:(id)effects;
+ (BOOL)avcaptureDeviceSupportsStudioLighting:(id)lighting;
+ (id)_resolvedControlsForEntityType:(int64_t)type;
+ (id)capabilitiesForEntityType:(int64_t)type;
- (BOOL)supportsControlWithName:(id)name;
- (CMContinuityCaptureDeviceCapabilities)initWithDictionaryRepresentation:(id)representation;
- (CMContinuityCaptureDeviceCapabilities)initWithEntityType:(int64_t)type streamFormats:(id)formats manualFramingSupportedStreamFormats:(id)streamFormats controls:(id)controls;
- (NSString)debugDescription;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation CMContinuityCaptureDeviceCapabilities

- (CMContinuityCaptureDeviceCapabilities)initWithEntityType:(int64_t)type streamFormats:(id)formats manualFramingSupportedStreamFormats:(id)streamFormats controls:(id)controls
{
  formatsCopy = formats;
  streamFormatsCopy = streamFormats;
  controlsCopy = controls;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureDeviceCapabilities;
  v14 = [(CMContinuityCaptureDeviceCapabilities *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_entityType = type;
    objc_storeStrong(&v14->_streamFormats, formats);
    objc_storeStrong(&v15->_manualFramingSupportedStreamFormats, streamFormats);
    objc_storeStrong(&v15->_controls, controls);
  }

  return v15;
}

- (CMContinuityCaptureDeviceCapabilities)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v7 = [representationCopy objectForKeyedSubscript:@"EntityType"];

  if (!v7)
  {
    obj = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureDeviceCapabilities *)obj initWithDictionaryRepresentation:v38, v39];
    }

    goto LABEL_46;
  }

  v8 = [representationCopy objectForKeyedSubscript:@"EntityType"];
  integerValue = [v8 integerValue];

  v10 = [representationCopy objectForKeyedSubscript:@"StreamFormats"];

  if (!v10)
  {
    obj = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureDeviceCapabilities *)obj initWithDictionaryRepresentation:v40, v41];
    }

LABEL_46:
    selfCopy2 = 0;
LABEL_48:
    v36 = array3;
    goto LABEL_41;
  }

  v43 = integerValue;
  selfCopy = self;
  v47 = array2;
  [representationCopy objectForKeyedSubscript:@"StreamFormats"];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v64 = 0u;
  v11 = [obj countByEnumeratingWithState:&v61 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v62;
    do
    {
      v14 = 0;
      do
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v61 + 1) + 8 * v14);
        v16 = [[CMContinuityCaptureStreamFormat alloc] initWithDictionaryRepresentation:v15];
        if (v16)
        {
          [array addObject:v16];
        }

        else
        {
          v17 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v15;
            _os_log_error_impl(&dword_242545000, v17, OS_LOG_TYPE_ERROR, "Could not create stream format: %@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v61 objects:v60 count:16];
    }

    while (v12);
  }

  v18 = [representationCopy objectForKeyedSubscript:@"ManualFramingSupportedStreamFormats"];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v54 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v55;
    do
    {
      v22 = 0;
      do
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v54 + 1) + 8 * v22);
        v24 = [[CMContinuityCaptureStreamFormat alloc] initWithDictionaryRepresentation:v23];
        if (v24)
        {
          [v47 addObject:v24];
        }

        else
        {
          v25 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v23;
            _os_log_error_impl(&dword_242545000, v25, OS_LOG_TYPE_ERROR, "Could not create manual framing supported stream format: %@", buf, 0xCu);
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v54 objects:v53 count:16];
    }

    while (v20);
  }

  selfCopy2 = [representationCopy objectForKeyedSubscript:@"Controls"];

  if (!selfCopy2)
  {
    [CMContinuityCaptureDeviceCapabilities initWithDictionaryRepresentation:v18];
    self = selfCopy;
    array2 = v47;
    goto LABEL_48;
  }

  v42 = representationCopy;
  v27 = [representationCopy objectForKeyedSubscript:@"Controls"];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = [v27 countByEnumeratingWithState:&v49 objects:v48 count:16];
  v29 = array3;
  if (v28)
  {
    v30 = v28;
    v31 = *v50;
    do
    {
      v32 = 0;
      do
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v49 + 1) + 8 * v32);
        v34 = [[CMContinuityCaptureControl alloc] initWithDictionaryRepresentation:v33];
        if (v34)
        {
          [v29 addObject:v34];
        }

        else
        {
          v35 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v33;
            _os_log_error_impl(&dword_242545000, v35, OS_LOG_TYPE_ERROR, "Could not create control: %@", buf, 0xCu);
          }

          v29 = array3;
        }

        ++v32;
      }

      while (v30 != v32);
      v30 = [v27 countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v30);
  }

  array2 = v47;
  v36 = v29;
  self = [(CMContinuityCaptureDeviceCapabilities *)selfCopy initWithEntityType:v43 streamFormats:array manualFramingSupportedStreamFormats:v47 controls:v29];

  selfCopy2 = self;
  representationCopy = v42;
LABEL_41:

  return selfCopy2;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_entityType];
  [dictionary setObject:v7 forKeyedSubscript:@"EntityType"];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_streamFormats;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        dictionaryRepresentation = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v10);
  }

  [dictionary setObject:array forKeyedSubscript:@"StreamFormats"];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = self->_manualFramingSupportedStreamFormats;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        dictionaryRepresentation2 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
        [array2 addObject:dictionaryRepresentation2];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v16);
  }

  if ([array2 count])
  {
    [dictionary setObject:array2 forKeyedSubscript:@"ManualFramingSupportedStreamFormats"];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = self->_controls;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        dictionaryRepresentation3 = [*(*(&v28 + 1) + 8 * k) dictionaryRepresentation];
        [array3 addObject:dictionaryRepresentation3];
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v22);
  }

  [dictionary setObject:array3 forKeyedSubscript:@"Controls"];

  return dictionary;
}

uint64_t __105__CMContinuityCaptureDeviceCapabilities__resolvedStreamFormatsForEntityType_requireManualFramingSupport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 width];
  if (v6 < [v5 width])
  {
    goto LABEL_2;
  }

  v8 = [v4 width];
  if (v8 > [v5 width])
  {
LABEL_4:
    v7 = 1;
    goto LABEL_5;
  }

  v10 = [v4 height];
  if (v10 >= [v5 height])
  {
    v11 = [v4 height];
    if (v11 > [v5 height])
    {
      goto LABEL_4;
    }

    v12 = [v4 minFrameRate];
    if (v12 >= [v5 minFrameRate])
    {
      v13 = [v4 minFrameRate];
      if (v13 <= [v5 minFrameRate])
      {
        v14 = [v4 maxFrameRate];
        if (v14 >= [v5 maxFrameRate])
        {
          v15 = [v4 maxFrameRate];
          v7 = v15 > [v5 maxFrameRate];
          goto LABEL_5;
        }

        goto LABEL_2;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v7 = -1;
LABEL_5:

  return v7;
}

+ (id)_resolvedControlsForEntityType:(int64_t)type
{
  array = [MEMORY[0x277CBEB18] array];
  if (type != 2)
  {
    if (type != 1)
    {
      goto LABEL_45;
    }

    if (_os_feature_enabled_impl())
    {
      v6 = *MEMORY[0x277CE5878];
      v144[0] = *MEMORY[0x277CE5848];
      v144[1] = v6;
      v7 = MEMORY[0x277CBEA60];
      v8 = v144;
      v9 = 2;
    }

    else
    {
      v6 = *MEMORY[0x277CE5878];
      v143 = *MEMORY[0x277CE5878];
      v7 = MEMORY[0x277CBEA60];
      v8 = &v143;
      v9 = 1;
    }

    v10 = [v7 arrayWithObjects:v8 count:v9];
    v11 = CMContinuityCaptureDevicePosition();
    v12 = *MEMORY[0x277CE5EA8];
    v140 = [MEMORY[0x277CE5AD0] discoverySessionWithDeviceTypes:v10 mediaType:*MEMORY[0x277CE5EA8] position:v11];
    if (!v140)
    {
      goto LABEL_48;
    }

    devices = [v140 devices];
    if (!devices || (v14 = devices, [v140 devices], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14, !v16))
    {
LABEL_48:
      [CMContinuityCaptureDeviceCapabilities _resolvedControlsForEntityType:?];
      firstObject = v141;
LABEL_43:

      goto LABEL_44;
    }

    v130 = v10;
    devices2 = [v140 devices];
    firstObject = [devices2 firstObject];

    v19 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5870] mediaType:v12 position:v11];
    v20 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:v6 mediaType:v12 position:v11];
    v21 = [self avcaptureDeviceSupportsCenterStage:v19];
    v139 = v20;
    v22 = [self avcaptureDeviceSupportsCenterStage:v20];
    v133 = v19;
    if ((v21 & 1) != 0 || v22)
    {
      v23 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v24 = MEMORY[0x277CBEC28];
      v134 = [(CMContinuityCaptureControl *)v23 initWithName:@"4cc_cfen_glob_0000" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
      [array addObject:v134];
      v25 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v131 = [(CMContinuityCaptureControl *)v25 initWithName:@"4cc_cfac_glob_0000" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v24];
      [array addObject:v131];
      v26 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v128 = [(CMContinuityCaptureControl *)v26 initWithName:@"4cc_cfri_glob_0000" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0x2854ECD88];
      [array addObject:v128];
      v27 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v28 = [(CMContinuityCaptureControl *)v27 initWithName:@"4cc_cffm_glob_0000" attributes:0 entity:1 minimumSupportedVersion:&v141 value:&unk_2854EC998];
      [array addObject:v28];
      v29 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      selfCopy = self;
      v30 = [(CMContinuityCaptureControl *)v29 initWithName:@"StartPanningAtPoint" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
      [array addObject:v30];
      v31 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v32 = [(CMContinuityCaptureControl *)v31 initWithName:@"PanWithTranslation" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
      [array addObject:v32];
      v33 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v34 = [(CMContinuityCaptureControl *)v33 initWithName:@"PerformOneShotFraming" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
      [array addObject:v34];
      v35 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v36 = [(CMContinuityCaptureControl *)v35 initWithName:@"ResetFraming" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
      [array addObject:v36];
      v37 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v38 = firstObject;
      v39 = [(CMContinuityCaptureControl *)v37 initWithName:@"CenterStageFieldOfViewRestrictedToWide" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
      [array addObject:v39];
      v40 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v41 = [(CMContinuityCaptureControl *)v40 initWithName:@"ManualFramingDeviceType" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
      [array addObject:v41];
      v42 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v43 = [(CMContinuityCaptureControl *)v42 initWithName:@"ManualFramingSupported" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
      [array addObject:v43];

      v19 = v133;
      firstObject = v38;

      self = selfCopy;
    }

    DeviceClass = GestaltGetDeviceClass();
    v45 = [CMContinuityCaptureControl alloc];
    v141 = xmmword_2425D8240;
    v142 = 1;
    v135 = [(CMContinuityCaptureControl *)v45 initWithName:@"DeviceHasWideCamera" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC38]];
    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v137 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v138 = v46;
    if (DeviceClass == 3)
    {
      if (v139 && !v19)
      {
        [array addObject:v135];
        goto LABEL_21;
      }
    }

    else if (v139)
    {
      [array addObject:v135];
      v47 = MEMORY[0x277CCABB0];
      [v139 manualFramingMinZoomFactor];
      v48 = [v47 numberWithDouble:?];
      [v137 setObject:v48 forKeyedSubscript:*MEMORY[0x277CF3B98]];

      v49 = MEMORY[0x277CCABB0];
      [v139 manualFramingMaxZoomFactor];
      v50 = [v49 numberWithDouble:?];
      [v137 setObject:v50 forKeyedSubscript:*MEMORY[0x277CF3B90]];

      v51 = MEMORY[0x277CCABB0];
      [v139 manualFramingDefaultZoomFactor];
      v52 = [v51 numberWithDouble:?];
      [v137 setObject:v52 forKeyedSubscript:*MEMORY[0x277CF3B88]];

      v53 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v137];
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
      [v46 setObject:v53 forKeyedSubscript:v54];
    }

    if (v19)
    {
      v55 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v56 = [(CMContinuityCaptureControl *)v55 initWithName:@"DeviceHasUltraWideCamera" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC38]];
      [array addObject:v56];
      v57 = MEMORY[0x277CCABB0];
      [v19 manualFramingMinZoomFactor];
      v58 = [v57 numberWithDouble:?];
      [v137 setObject:v58 forKeyedSubscript:*MEMORY[0x277CF3B98]];

      v59 = MEMORY[0x277CCABB0];
      [v19 manualFramingMaxZoomFactor];
      v60 = [v59 numberWithDouble:?];
      [v137 setObject:v60 forKeyedSubscript:*MEMORY[0x277CF3B90]];

      v61 = MEMORY[0x277CCABB0];
      [v19 manualFramingDefaultZoomFactor];
      v62 = [v61 numberWithDouble:?];
      [v137 setObject:v62 forKeyedSubscript:*MEMORY[0x277CF3B88]];

      v63 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v137];
      v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 2];
      [v138 setObject:v63 forKeyedSubscript:v64];

      v46 = v138;
    }

LABEL_21:
    if ([v46 count])
    {
      v65 = [CMContinuityCaptureControl alloc];
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v46];
      v141 = xmmword_2425D8240;
      v142 = 1;
      v67 = [(CMContinuityCaptureControl *)v65 initWithName:@"ZoomFactorConstantsByManualFramingDeviceType" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v66];

      [array addObject:v67];
    }

    v68 = [CMContinuityCaptureControl alloc];
    v142 = 0;
    v141 = 1uLL;
    v69 = [(CMContinuityCaptureControl *)v68 initWithName:@"FaceDetectionEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
    [array addObject:v69];
    if (([self avcaptureDeviceSupportsFlash:firstObject] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsFlash:", v19))
    {
      v70 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v71 = [(CMContinuityCaptureControl *)v70 initWithName:@"Flash" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC38]];
      [array addObject:v71];
    }

    v72 = [CMContinuityCaptureControl alloc];
    v142 = 0;
    v141 = 1uLL;
    v73 = MEMORY[0x277CBEC28];
    v74 = [(CMContinuityCaptureControl *)v72 initWithName:@"AsyncStillCaptureEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
    [array addObject:v74];
    v75 = [CMContinuityCaptureControl alloc];
    v142 = 0;
    v141 = 1uLL;
    v132 = [(CMContinuityCaptureControl *)v75 initWithName:@"AsyncStillCaptureConfigurations" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
    [array addObject:?];
    v76 = [CMContinuityCaptureControl alloc];
    v142 = 0;
    v141 = 1uLL;
    v129 = [(CMContinuityCaptureControl *)v76 initWithName:@"HumanBodyDetectionEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v73];
    [array addObject:?];
    supportedMetadataObjectIdentifiers = [v139 supportedMetadataObjectIdentifiers];
    if ([supportedMetadataObjectIdentifiers containsObject:@"mdta/com.apple.quicktime.detected-human-full-body"])
    {
    }

    else
    {
      supportedMetadataObjectIdentifiers2 = [v19 supportedMetadataObjectIdentifiers];
      v79 = [supportedMetadataObjectIdentifiers2 containsObject:@"mdta/com.apple.quicktime.detected-human-full-body"];

      if (!v79)
      {
        goto LABEL_30;
      }
    }

    v80 = [CMContinuityCaptureControl alloc];
    v142 = 0;
    v141 = 1uLL;
    v81 = [(CMContinuityCaptureControl *)v80 initWithName:@"HumanFullBodyDetectionEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
    [array addObject:v81];

LABEL_30:
    v82 = [CMContinuityCaptureControl alloc];
    v142 = 0;
    v141 = 1uLL;
    v127 = [(CMContinuityCaptureControl *)v82 initWithName:@"SuppressVideoEffects" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
    [array addObject:?];
    if (([self avcaptureDeviceSupportsPortraitEffect:firstObject] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsPortraitEffect:", v19))
    {
      v83 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v84 = MEMORY[0x277CBEC28];
      v85 = [(CMContinuityCaptureControl *)v83 initWithName:@"PortraitEffectEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
      [array addObject:v85];
      v86 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v87 = [(CMContinuityCaptureControl *)v86 initWithName:@"PortraitEffectActive" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v84];
      [array addObject:v87];
      v88 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v89 = [(CMContinuityCaptureControl *)v88 initWithName:@"PortraitEffectAperture" attributes:0 entity:1 minimumSupportedVersion:&v141 value:&unk_2854ECCE8];
      [array addObject:v89];
    }

    v90 = [CMContinuityCaptureControl alloc];
    v142 = 0;
    v141 = 1uLL;
    v126 = [(CMContinuityCaptureControl *)v90 initWithName:@"PerFrameExifDataEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
    [array addObject:?];
    if (([self avcaptureDeviceSupportsStudioLighting:firstObject] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsStudioLighting:", v19))
    {
      v91 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v92 = MEMORY[0x277CBEC28];
      v93 = [(CMContinuityCaptureControl *)v91 initWithName:@"StudioLightingEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
      [array addObject:v93];
      v94 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v95 = [(CMContinuityCaptureControl *)v94 initWithName:@"StudioLightingActive" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v92];
      [array addObject:v95];
      v96 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v97 = [(CMContinuityCaptureControl *)v96 initWithName:@"StudioLightingIntensity" attributes:0 entity:1 minimumSupportedVersion:&v141 value:&unk_2854ECCF8];
      [array addObject:v97];
    }

    if (([self avcaptureDeviceSupportsReactionEffects:firstObject] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsReactionEffects:", v19))
    {
      v98 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v124 = v74;
      v99 = MEMORY[0x277CBEC28];
      v100 = [(CMContinuityCaptureControl *)v98 initWithName:@"ReactionEffectsEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
      [array addObject:v100];
      v101 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v125 = firstObject;
      v102 = [(CMContinuityCaptureControl *)v101 initWithName:@"ReactionEffectsActive" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v99];
      [array addObject:v102];
      v103 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v104 = [(CMContinuityCaptureControl *)v103 initWithName:@"GesturesEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v99];
      [array addObject:v104];
      v105 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8090;
      v142 = 1;
      v106 = v69;
      selfCopy2 = self;
      v108 = [(CMContinuityCaptureControl *)v105 initWithName:@"SuppressedGesturesEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v99];
      [array addObject:v108];
      v109 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v110 = [(CMContinuityCaptureControl *)v109 initWithName:@"ReactionsInProgress" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEBF8]];
      [array addObject:v110];
      v111 = [CMContinuityCaptureControl alloc];
      v141 = xmmword_2425D8090;
      v142 = 1;
      v112 = [(CMContinuityCaptureControl *)v111 initWithName:@"SuppressedGesture" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v99];
      [array addObject:v112];

      v74 = v124;
      self = selfCopy2;
      v69 = v106;

      firstObject = v125;
      v19 = v133;
    }

    if (([self avcaptureDeviceSupportsBackgroundReplacement:firstObject] & 1) != 0 || objc_msgSend(self, "avcaptureDeviceSupportsBackgroundReplacement:", v19))
    {
      v113 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v114 = MEMORY[0x277CBEC28];
      v115 = [(CMContinuityCaptureControl *)v113 initWithName:@"BackgroundReplacementEnabled" attributes:0 entity:1 minimumSupportedVersion:&v141 value:MEMORY[0x277CBEC28]];
      [array addObject:v115];
      v116 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v117 = [(CMContinuityCaptureControl *)v116 initWithName:@"BackgroundReplacementActive" attributes:0 entity:1 minimumSupportedVersion:&v141 value:v114];
      [array addObject:v117];
      v118 = [CMContinuityCaptureControl alloc];
      v142 = 0;
      v141 = 1uLL;
      v119 = [(CMContinuityCaptureControl *)v118 initWithName:@"BackgroundReplacementPixelBuffer" attributes:0 entity:1 minimumSupportedVersion:&v141 value:0];
      [array addObject:v119];
    }

    v120 = [CMContinuityCaptureControl alloc];
    v142 = 0;
    v141 = 1uLL;
    v121 = [(CMContinuityCaptureControl *)v120 initWithName:@"VideoZoomFactor" attributes:0 entity:1 minimumSupportedVersion:&v141 value:&unk_2854EC9B0];
    [array addObject:v121];

    v10 = v130;
    goto LABEL_43;
  }

  v142 = 0;
  v141 = 1uLL;
  v10 = [[CMContinuityCaptureControl alloc] initWithName:@"OverheadCameraMode" attributes:0 entity:2 minimumSupportedVersion:&v141 value:&unk_2854EC9C8];
  [array addObject:v10];
LABEL_44:

LABEL_45:
  v122 = [array copy];

  return v122;
}

+ (BOOL)avcaptureDeviceSupportsStudioLighting:(id)lighting
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  formats = [lighting formats];
  v4 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isStudioLightSupported] & 1) != 0 || (objc_msgSend(v8, "isStudioLightingSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)avcaptureDeviceSupportsReactionEffects:(id)effects
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  formats = [effects formats];
  v4 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 reactionEffectsSupported] & 1) != 0 || (objc_msgSend(v8, "reactionEffectsSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)avcaptureDeviceSupportsBackgroundReplacement:(id)replacement
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  formats = [replacement formats];
  v4 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isBackgroundReplacementSupported] & 1) != 0 || (objc_msgSend(v8, "isBackgroundReplacementSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)avcaptureDeviceSupportsCenterStage:(id)stage
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  formats = [stage formats];
  v4 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isCenterStageSupported] & 1) != 0 || (objc_msgSend(v8, "isCenterStageSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

+ (BOOL)avcaptureDeviceSupportsPortraitEffect:(id)effect
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  formats = [effect formats];
  v4 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(formats);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isBackgroundBlurSupported] & 1) != 0 || (objc_msgSend(v8, "isBackgroundBlurSupportedForContinuityCamera"))
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [formats countByEnumeratingWithState:&v12 objects:v11 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (BOOL)supportsControlWithName:(id)name
{
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  controls = [(CMContinuityCaptureDeviceCapabilities *)self controls];
  v6 = [controls countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(controls);
        }

        name = [*(*(&v13 + 1) + 8 * i) name];
        v10 = [name isEqualToString:nameCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [controls countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSString)debugDescription
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = self->_streamFormats;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        name = [*(*(&v42 + 1) + 8 * i) name];
        [array addObject:name];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v8);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = self->_manualFramingSupportedStreamFormats;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        name2 = [*(*(&v37 + 1) + 8 * j) name];
        [array2 addObject:name2];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v14);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = self->_controls;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        name3 = [*(*(&v32 + 1) + 8 * k) name];
        [array3 addObject:name3];
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v20);
  }

  v24 = MEMORY[0x277CCACA8];
  entityType = self->_entityType;
  v26 = [array componentsJoinedByString:{@", "}];
  v27 = [array2 componentsJoinedByString:{@", "}];
  v28 = [array3 componentsJoinedByString:{@", "}];
  v29 = [v24 stringWithFormat:@"entity: %d, formats: [%@], ManualFraming formats: [%@], controls: [%@]", entityType, v26, v27, v28];

  return v29;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureDeviceCapabilities *)self debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

+ (id)capabilitiesForEntityType:(int64_t)type
{
  v5 = *MEMORY[0x277CE59F0];
  if (AVGestaltGetBoolAnswer() && (type != 2 || ([MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5888] mediaType:*MEMORY[0x277CE5EA8] position:1], v6 = objc_claimAutoreleasedReturnValue(), v6, v6)))
  {
    v7 = [self _resolvedStreamFormatsForEntityType:type requireManualFramingSupport:0];
    v8 = [self _resolvedStreamFormatsForEntityType:type requireManualFramingSupport:1];
    v9 = [self _resolvedControlsForEntityType:type];
    v10 = [objc_alloc(objc_opt_class()) initWithEntityType:type streamFormats:v7 manualFramingSupportedStreamFormats:v8 controls:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.1(void *a1)
{
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

+ (void)_resolvedStreamFormatsForEntityType:(void *)a1 requireManualFramingSupport:.cold.1(void *a1)
{
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

+ (void)_resolvedStreamFormatsForEntityType:(int)a1 requireManualFramingSupport:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "Unexpected entity type: %d", v2, 8u);
}

+ (void)_resolvedControlsForEntityType:(void *)a1 .cold.1(void *a1)
{
  v3 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v3))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  *a1 = v1;
}

@end