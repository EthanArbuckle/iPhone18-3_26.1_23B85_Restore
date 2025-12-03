@interface UARPHeySiriModelVoiceAssist
+ (id)tag;
- (BOOL)processDynamicAsset:(id *)asset;
- (UARPHeySiriModelVoiceAssist)init;
- (id)generateAsset:(id *)asset;
- (void)currentHeySiriModel:(id)model fallbackModel:(id)fallbackModel error:(id)error;
@end

@implementation UARPHeySiriModelVoiceAssist

- (UARPHeySiriModelVoiceAssist)init
{
  [(UARPHeySiriModelVoiceAssist *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)processDynamicAsset:(id *)asset
{
  v5 = [UARPSuperBinaryAsset alloc];
  v6 = [(UARPHeySiriModelBase *)self url];
  v7 = [(UARPSuperBinaryAsset *)v5 initWithURL:v6];
  [(UARPHeySiriModelBase *)self setSuperbinary:v7];

  superbinary = [(UARPHeySiriModelBase *)self superbinary];
  LOBYTE(asset) = [superbinary expandHeadersAndTLVs:asset];

  superbinary2 = [(UARPHeySiriModelBase *)self superbinary];
  tlvs = [superbinary2 tlvs];
  v11 = [UARPSuperBinaryAssetTLV findTLVWithType:76079623 tlvs:tlvs];

  valueAsVersion = [v11 valueAsVersion];
  -[UARPHeySiriModelBase setMajorVersion:](self, "setMajorVersion:", [valueAsVersion majorVersion]);
  -[UARPHeySiriModelBase setMinorVersion:](self, "setMinorVersion:", [valueAsVersion minorVersion]);
  v15.receiver = self;
  v15.super_class = UARPHeySiriModelVoiceAssist;
  [(UARPHeySiriModelBase *)&v15 setDelegate:self];
  v14.receiver = self;
  v14.super_class = UARPHeySiriModelVoiceAssist;
  [(UARPHeySiriModelBase *)&v14 checkCurrentHeySiriModel];

  return asset;
}

- (void)currentHeySiriModel:(id)model fallbackModel:(id)fallbackModel error:(id)error
{
  v128 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  fallbackModelCopy = fallbackModel;
  v123.receiver = self;
  v123.super_class = UARPHeySiriModelVoiceAssist;
  accessory = [(UARPHeySiriModelBase *)&v123 accessory];
  modelNumber = [accessory modelNumber];
  v9 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  if (v9)
  {
    v10 = MEMORY[0x277CCAB68];
    v11 = UARPStringSupplementalAssetsFilepath();
    supplementalMobileAssetAppleModelNumber = [v9 supplementalMobileAssetAppleModelNumber];
    v13 = [v10 stringWithFormat:@"%@/%@-%@", v11, supplementalMobileAssetAppleModelNumber, @"VoiceAssist"];

    v120 = 0;
    LOBYTE(v10) = appendFirstUarpFilenameToFilepath(v13, &v120);
    v14 = v120;
    if ((v10 & 1) == 0)
    {
      v119.receiver = self;
      v119.super_class = UARPHeySiriModelVoiceAssist;
      v16 = [(UARPHeySiriModelBase *)&v119 log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(UARPHeySiriModelVoiceAssist *)v13 currentHeySiriModel:v16 fallbackModel:v60 error:v61, v62, v63, v64, v65];
      }

      goto LABEL_60;
    }

    v118.receiver = self;
    v118.super_class = UARPHeySiriModelVoiceAssist;
    v15 = [(UARPHeySiriModelBase *)&v118 log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v127 = v13;
      _os_log_impl(&dword_247AA7000, v15, OS_LOG_TYPE_DEFAULT, "Filename for voice assist is %@", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CBEBC0] URLWithString:v13];
    v17 = [[UARPSuperBinaryAsset alloc] initWithURL:v16];
    asset = self->_asset;
    self->_asset = v17;

    v19 = self->_asset;
    if (!v19)
    {
      v117.receiver = self;
      v117.super_class = UARPHeySiriModelVoiceAssist;
      v57 = [(UARPHeySiriModelBase *)&v117 log];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [UARPHeySiriModelVoiceAssist currentHeySiriModel:? fallbackModel:? error:?];
      }

      goto LABEL_59;
    }

    if (![(UARPSuperBinaryAsset *)v19 expandHeadersAndTLVs:0])
    {
      v116.receiver = self;
      v116.super_class = UARPHeySiriModelVoiceAssist;
      v57 = [(UARPHeySiriModelBase *)&v116 log];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [UARPHeySiriModelVoiceAssist currentHeySiriModel:? fallbackModel:? error:?];
      }

      goto LABEL_59;
    }

    v84 = v14;
    v85 = v16;
    v87 = v13;
    v88 = v9;
    p_payloadModel = &self->_payloadModel;
    payloadModel = self->_payloadModel;
    self->_payloadModel = 0;

    payloadFallbackModel = self->_payloadFallbackModel;
    location = &self->_payloadFallbackModel;
    self->_payloadFallbackModel = 0;

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    selfCopy = self;
    obj = [(UARPSuperBinaryAsset *)self->_asset payloads];
    v91 = [obj countByEnumeratingWithState:&v112 objects:v125 count:16];
    if (v91)
    {
      v90 = *v113;
      do
      {
        v23 = 0;
        do
        {
          if (*v113 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v92 = v23;
          v24 = *(*(&v112 + 1) + 8 * v23);
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          tlvs = [v24 tlvs];
          v26 = [tlvs countByEnumeratingWithState:&v108 objects:v124 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v109;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v109 != v28)
                {
                  objc_enumerationMutation(tlvs);
                }

                v30 = *(*(&v108 + 1) + 8 * i);
                if ([v30 type] == 76079617)
                {
                  valueAsString = [v30 valueAsString];
                  modelLocale = [modelCopy modelLocale];
                  v33 = [valueAsString isEqualToString:modelLocale];

                  v34 = p_payloadModel;
                  if ((v33 & 1) != 0 || ([fallbackModelCopy modelLocale], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(valueAsString, "isEqualToString:", v35), v35, v34 = location, v36))
                  {
                    objc_storeStrong(v34, v24);
                  }
                }
              }

              v27 = [tlvs countByEnumeratingWithState:&v108 objects:v124 count:16];
            }

            while (v27);
          }

          v23 = v92 + 1;
        }

        while (v92 + 1 != v91);
        v91 = [obj countByEnumeratingWithState:&v112 objects:v125 count:16];
      }

      while (v91);
    }

    v37 = UARPUtilsBuildURLForTemporaryFile();
    v38 = selfCopy[15];
    selfCopy[15] = v37;

    v39 = selfCopy[20];
    v40 = selfCopy[15];
    rangeMetadata = [v39 rangeMetadata];
    v107 = 0;
    LOBYTE(v39) = [v39 exportSuperBinaryContentToFilepath:v40 range:rangeMetadata error:{v42, &v107}];
    v43 = v107;

    if ((v39 & 1) == 0)
    {
      v106.receiver = selfCopy;
      v106.super_class = UARPHeySiriModelVoiceAssist;
      v57 = [(UARPHeySiriModelBase *)&v106 log];
      v16 = v85;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [UARPHeySiriModelVoiceAssist currentHeySiriModel:? fallbackModel:? error:?];
      }

      v14 = v43;
      v9 = v88;
      goto LABEL_59;
    }

    if (*p_payloadModel)
    {
      v44 = UARPUtilsBuildURLForTemporaryFile();
      v45 = selfCopy[16];
      selfCopy[16] = v44;

      v46 = selfCopy[20];
      v47 = selfCopy[16];
      rangeMetadata2 = [(UARPSuperBinaryAssetPayload *)*p_payloadModel rangeMetadata];
      v105 = 0;
      LOBYTE(v46) = [v46 exportSuperBinaryContentToFilepath:v47 range:rangeMetadata2 error:{v49, &v105}];
      v50 = v105;

      if ((v46 & 1) == 0)
      {
        v14 = v50;
        v104.receiver = selfCopy;
        v104.super_class = UARPHeySiriModelVoiceAssist;
        v57 = [(UARPHeySiriModelBase *)&v104 log];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:? fallbackModel:? error:?];
        }

        v13 = v87;
        v9 = v88;
        goto LABEL_58;
      }

      v51 = UARPUtilsBuildURLForTemporaryFile();
      v52 = selfCopy[17];
      selfCopy[17] = v51;

      v53 = selfCopy[20];
      v54 = selfCopy[17];
      rangePayload = [(UARPSuperBinaryAssetPayload *)*p_payloadModel rangePayload];
      v103 = 0;
      LOBYTE(v53) = [v53 exportSuperBinaryContentToFilepath:v54 range:rangePayload error:{v56, &v103}];
      v43 = v103;

      if ((v53 & 1) == 0)
      {
        v102.receiver = selfCopy;
        v102.super_class = UARPHeySiriModelVoiceAssist;
        v57 = [(UARPHeySiriModelBase *)&v102 log];
        v13 = v87;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:? fallbackModel:? error:?];
        }

LABEL_49:
        v14 = v43;
LABEL_57:
        v9 = v88;
LABEL_58:
        v16 = v85;
LABEL_59:

LABEL_60:
        goto LABEL_61;
      }
    }

    else
    {
      v66 = selfCopy[16];
      selfCopy[16] = 0;

      v67 = selfCopy[17];
      selfCopy[17] = 0;
    }

    v13 = v87;
    if (*location)
    {
      v68 = UARPUtilsBuildURLForTemporaryFile();
      v69 = selfCopy[18];
      selfCopy[18] = v68;

      v70 = selfCopy[20];
      v71 = selfCopy[18];
      rangeMetadata3 = [*location rangeMetadata];
      v101 = 0;
      LOBYTE(v70) = [v70 exportSuperBinaryContentToFilepath:v71 range:rangeMetadata3 error:{v73, &v101}];
      v14 = v101;

      if ((v70 & 1) == 0)
      {
        v100.receiver = selfCopy;
        v100.super_class = UARPHeySiriModelVoiceAssist;
        v57 = [(UARPHeySiriModelBase *)&v100 log];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:? fallbackModel:? error:?];
        }

        goto LABEL_57;
      }

      v74 = UARPUtilsBuildURLForTemporaryFile();
      v75 = selfCopy[19];
      selfCopy[19] = v74;

      v76 = selfCopy[20];
      v77 = selfCopy[19];
      rangePayload2 = [*location rangePayload];
      v99 = 0;
      LOBYTE(v76) = [v76 exportSuperBinaryContentToFilepath:v77 range:rangePayload2 error:{v79, &v99}];
      v43 = v99;

      if ((v76 & 1) == 0)
      {
        v98.receiver = selfCopy;
        v98.super_class = UARPHeySiriModelVoiceAssist;
        v57 = [(UARPHeySiriModelBase *)&v98 log];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:? fallbackModel:? error:?];
        }

        goto LABEL_49;
      }
    }

    else
    {
      v80 = selfCopy[18];
      selfCopy[18] = 0;

      v81 = selfCopy[19];
      selfCopy[19] = 0;
    }

    v97 = v43;
    v57 = [selfCopy generateAsset:&v97];
    v14 = v97;

    v82 = +[UARPHeySiriModelVoiceAssist tag];
    v96.receiver = selfCopy;
    v96.super_class = UARPHeySiriModelVoiceAssist;
    [(UARPHeySiriModelBase *)&v96 offerDynamicAssetToAccessory:v57 tag:v82 error:0];

    goto LABEL_57;
  }

  v122.receiver = self;
  v122.super_class = UARPHeySiriModelVoiceAssist;
  v14 = [(UARPHeySiriModelBase *)&v122 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v121.receiver = self;
    v121.super_class = UARPHeySiriModelVoiceAssist;
    accessory2 = [(UARPHeySiriModelBase *)&v121 accessory];
    modelNumber2 = [accessory2 modelNumber];
    *buf = 138412290;
    v127 = modelNumber2;
    _os_log_error_impl(&dword_247AA7000, v14, OS_LOG_TYPE_ERROR, "Could not find supported accessory for  %@", buf, 0xCu);
  }

LABEL_61:

  v83 = *MEMORY[0x277D85DE8];
}

- (id)generateAsset:(id *)asset
{
  v54 = 0;
  v53 = 0;
  v55 = 0;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44.receiver = self;
  v44.super_class = UARPHeySiriModelVoiceAssist;
  v51[0] = [(UARPHeySiriModelBase *)&v44 uarpProtocolVersion];
  v51[1] = 44;
  payloadModel = self->_payloadModel;
  v6 = payloadModel == 0;
  v7 = payloadModel != 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (self->_fallbackModelMetaDataURL)
  {
    v7 = v8;
  }

  v56 = 44;
  v57 = 40 * v7;
  v9 = 40 * v7 + 44;
  v52 = v9;
  LODWORD(v55) = v9;
  v10 = MEMORY[0x277CCA1C0];
  if (self->_superBinaryMetaDataURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString = [(NSURL *)self->_superBinaryMetaDataURL absoluteString];
    v13 = [defaultManager attributesOfItemAtPath:absoluteString error:asset];

    v14 = [v13 objectForKeyedSubscript:*v10];
    unsignedLongValue = [v14 unsignedLongValue];
    v9 += unsignedLongValue;
    HIDWORD(v55) = unsignedLongValue;
    v52 = v9;
  }

  v16 = +[UARPHeySiriModelVoiceAssist tag];
  v43 = v16;
  if (self->_payloadModel)
  {
    LODWORD(v48) = 40;
    DWORD1(v48) = [v16 tag];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString2 = [(NSURL *)self->_modelMetaDataURL absoluteString];
    v19 = [defaultManager2 attributesOfItemAtPath:absoluteString2 error:asset];

    v20 = *v10;
    v21 = [v19 objectForKeyedSubscript:*v10];
    DWORD2(v49) = v9;
    HIDWORD(v49) = [v21 unsignedLongValue];
    v22 = v9 + HIDWORD(v49);
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString3 = [(NSURL *)self->_modelDataURL absoluteString];
    v25 = [defaultManager3 attributesOfItemAtPath:absoluteString3 error:asset];

    v26 = [v25 objectForKeyedSubscript:v20];
    LODWORD(v50) = v22;
    HIDWORD(v50) = [v26 unsignedLongValue];
    v9 = v22 + HIDWORD(v50);
    v52 = v22 + HIDWORD(v50);
  }

  if (self->_payloadFallbackModel)
  {
    LODWORD(v45) = 40;
    DWORD1(v45) = [v43 tag];
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString4 = [(NSURL *)self->_fallbackModelMetaDataURL absoluteString];
    v29 = [defaultManager4 attributesOfItemAtPath:absoluteString4 error:asset];

    v30 = *MEMORY[0x277CCA1C0];
    v31 = [v29 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
    DWORD2(v46) = v9;
    HIDWORD(v46) = [v31 unsignedLongValue];
    v32 = v9 + HIDWORD(v46);
    defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
    absoluteString5 = [(NSURL *)self->_fallbackModelDataURL absoluteString];
    v35 = [defaultManager5 attributesOfItemAtPath:absoluteString5 error:asset];

    v36 = [v35 objectForKeyedSubscript:v30];
    LODWORD(v47) = v32;
    HIDWORD(v47) = [v36 unsignedLongValue];
    v52 = v32 + HIDWORD(v47);
  }

  uarpSuperBinaryHeaderEndianSwap(v51, v51);
  uarpPayloadHeaderEndianSwap(&v48, &v48);
  uarpPayloadHeaderEndianSwap(&v45, &v45);
  v37 = UARPUtilsBuildURLForTemporaryFile();
  v38 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v37 error:asset];
  if (v38)
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v39 appendBytes:v51 length:44];
    if (self->_payloadModel)
    {
      [v39 appendBytes:&v48 length:40];
    }

    if (self->_payloadFallbackModel)
    {
      [v39 appendBytes:&v45 length:40];
    }

    if ([v38 uarpWriteData:v39 error:asset] && objc_msgSend(v38, "uarpCloseAndReturnError:", asset) && uarpUtilsConcatenateURLs(v37, *(&self->super.super.isa + v42), asset) && uarpUtilsConcatenateURLs(v37, self->_modelMetaDataURL, asset) && uarpUtilsConcatenateURLs(v37, self->_modelDataURL, asset) && uarpUtilsConcatenateURLs(v37, self->_fallbackModelMetaDataURL, asset) && uarpUtilsConcatenateURLs(v37, self->_fallbackModelDataURL, asset))
    {
      v40 = v37;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

+ (id)tag
{
  v2 = uarpAssetTagStructVoiceAssist();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

- (void)currentHeySiriModel:(uint64_t)a3 fallbackModel:(uint64_t)a4 error:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a2, a3, "NO voice assist ?! located at %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)currentHeySiriModel:(uint64_t *)a1 fallbackModel:error:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v1, v2, "Could not expand uarp superbinary  %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)currentHeySiriModel:(uint64_t *)a1 fallbackModel:error:.cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v1, v2, "Failed to export SuperBinary MetaData URL %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)currentHeySiriModel:(uint64_t *)a1 fallbackModel:error:.cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v1, v2, "Failed to export Model MetaData URL %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)currentHeySiriModel:(uint64_t *)a1 fallbackModel:error:.cold.5(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v1, v2, "Failed to export Model URL %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)currentHeySiriModel:(uint64_t *)a1 fallbackModel:error:.cold.6(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v1, v2, "Failed to export Fallback Model MetaData URL %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)currentHeySiriModel:(uint64_t *)a1 fallbackModel:error:.cold.7(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v1, v2, "Failed to export Fallback Model URL %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)currentHeySiriModel:(uint64_t *)a1 fallbackModel:error:.cold.8(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v1, v2, "Could not init uarp superbinary %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end