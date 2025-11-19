@interface UARPHeySiriModelVoiceAssist
+ (id)tag;
- (BOOL)processDynamicAsset:(id *)a3;
- (UARPHeySiriModelVoiceAssist)init;
- (id)generateAsset:(id *)a3;
- (void)currentHeySiriModel:(id)a3 fallbackModel:(id)a4 error:(id)a5;
@end

@implementation UARPHeySiriModelVoiceAssist

- (UARPHeySiriModelVoiceAssist)init
{
  [(UARPHeySiriModelVoiceAssist *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)processDynamicAsset:(id *)a3
{
  v5 = [UARPSuperBinaryAsset alloc];
  v6 = [(UARPHeySiriModelBase *)self url];
  v7 = [(UARPSuperBinaryAsset *)v5 initWithURL:v6];
  [(UARPHeySiriModelBase *)self setSuperbinary:v7];

  v8 = [(UARPHeySiriModelBase *)self superbinary];
  LOBYTE(a3) = [v8 expandHeadersAndTLVs:a3];

  v9 = [(UARPHeySiriModelBase *)self superbinary];
  v10 = [v9 tlvs];
  v11 = [UARPSuperBinaryAssetTLV findTLVWithType:76079623 tlvs:v10];

  v12 = [v11 valueAsVersion];
  -[UARPHeySiriModelBase setMajorVersion:](self, "setMajorVersion:", [v12 majorVersion]);
  -[UARPHeySiriModelBase setMinorVersion:](self, "setMinorVersion:", [v12 minorVersion]);
  v15.receiver = self;
  v15.super_class = UARPHeySiriModelVoiceAssist;
  [(UARPHeySiriModelBase *)&v15 setDelegate:self];
  v14.receiver = self;
  v14.super_class = UARPHeySiriModelVoiceAssist;
  [(UARPHeySiriModelBase *)&v14 checkCurrentHeySiriModel];

  return a3;
}

- (void)currentHeySiriModel:(id)a3 fallbackModel:(id)a4 error:(id)a5
{
  v128 = *MEMORY[0x277D85DE8];
  v95 = a3;
  v94 = a4;
  v123.receiver = self;
  v123.super_class = UARPHeySiriModelVoiceAssist;
  v7 = [(UARPHeySiriModelBase *)&v123 accessory];
  v8 = [v7 modelNumber];
  v9 = [UARPSupportedAccessory findByAppleModelNumber:v8];

  if (v9)
  {
    v10 = MEMORY[0x277CCAB68];
    v11 = UARPStringSupplementalAssetsFilepath();
    v12 = [v9 supplementalMobileAssetAppleModelNumber];
    v13 = [v10 stringWithFormat:@"%@/%@-%@", v11, v12, @"VoiceAssist"];

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
    v86 = self;
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
          v25 = [v24 tlvs];
          v26 = [v25 countByEnumeratingWithState:&v108 objects:v124 count:16];
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
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v108 + 1) + 8 * i);
                if ([v30 type] == 76079617)
                {
                  v31 = [v30 valueAsString];
                  v32 = [v95 modelLocale];
                  v33 = [v31 isEqualToString:v32];

                  v34 = p_payloadModel;
                  if ((v33 & 1) != 0 || ([v94 modelLocale], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v31, "isEqualToString:", v35), v35, v34 = location, v36))
                  {
                    objc_storeStrong(v34, v24);
                  }
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v108 objects:v124 count:16];
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
    v38 = v86[15];
    v86[15] = v37;

    v39 = v86[20];
    v40 = v86[15];
    v41 = [v39 rangeMetadata];
    v107 = 0;
    LOBYTE(v39) = [v39 exportSuperBinaryContentToFilepath:v40 range:v41 error:{v42, &v107}];
    v43 = v107;

    if ((v39 & 1) == 0)
    {
      v106.receiver = v86;
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
      v45 = v86[16];
      v86[16] = v44;

      v46 = v86[20];
      v47 = v86[16];
      v48 = [(UARPSuperBinaryAssetPayload *)*p_payloadModel rangeMetadata];
      v105 = 0;
      LOBYTE(v46) = [v46 exportSuperBinaryContentToFilepath:v47 range:v48 error:{v49, &v105}];
      v50 = v105;

      if ((v46 & 1) == 0)
      {
        v14 = v50;
        v104.receiver = v86;
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
      v52 = v86[17];
      v86[17] = v51;

      v53 = v86[20];
      v54 = v86[17];
      v55 = [(UARPSuperBinaryAssetPayload *)*p_payloadModel rangePayload];
      v103 = 0;
      LOBYTE(v53) = [v53 exportSuperBinaryContentToFilepath:v54 range:v55 error:{v56, &v103}];
      v43 = v103;

      if ((v53 & 1) == 0)
      {
        v102.receiver = v86;
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
      v66 = v86[16];
      v86[16] = 0;

      v67 = v86[17];
      v86[17] = 0;
    }

    v13 = v87;
    if (*location)
    {
      v68 = UARPUtilsBuildURLForTemporaryFile();
      v69 = v86[18];
      v86[18] = v68;

      v70 = v86[20];
      v71 = v86[18];
      v72 = [*location rangeMetadata];
      v101 = 0;
      LOBYTE(v70) = [v70 exportSuperBinaryContentToFilepath:v71 range:v72 error:{v73, &v101}];
      v14 = v101;

      if ((v70 & 1) == 0)
      {
        v100.receiver = v86;
        v100.super_class = UARPHeySiriModelVoiceAssist;
        v57 = [(UARPHeySiriModelBase *)&v100 log];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [UARPHeySiriModelVoiceAssist currentHeySiriModel:? fallbackModel:? error:?];
        }

        goto LABEL_57;
      }

      v74 = UARPUtilsBuildURLForTemporaryFile();
      v75 = v86[19];
      v86[19] = v74;

      v76 = v86[20];
      v77 = v86[19];
      v78 = [*location rangePayload];
      v99 = 0;
      LOBYTE(v76) = [v76 exportSuperBinaryContentToFilepath:v77 range:v78 error:{v79, &v99}];
      v43 = v99;

      if ((v76 & 1) == 0)
      {
        v98.receiver = v86;
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
      v80 = v86[18];
      v86[18] = 0;

      v81 = v86[19];
      v86[19] = 0;
    }

    v97 = v43;
    v57 = [v86 generateAsset:&v97];
    v14 = v97;

    v82 = +[UARPHeySiriModelVoiceAssist tag];
    v96.receiver = v86;
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
    v58 = [(UARPHeySiriModelBase *)&v121 accessory];
    v59 = [v58 modelNumber];
    *buf = 138412290;
    v127 = v59;
    _os_log_error_impl(&dword_247AA7000, v14, OS_LOG_TYPE_ERROR, "Could not find supported accessory for  %@", buf, 0xCu);
  }

LABEL_61:

  v83 = *MEMORY[0x277D85DE8];
}

- (id)generateAsset:(id *)a3
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
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [(NSURL *)self->_superBinaryMetaDataURL absoluteString];
    v13 = [v11 attributesOfItemAtPath:v12 error:a3];

    v14 = [v13 objectForKeyedSubscript:*v10];
    v15 = [v14 unsignedLongValue];
    v9 += v15;
    HIDWORD(v55) = v15;
    v52 = v9;
  }

  v16 = +[UARPHeySiriModelVoiceAssist tag];
  v43 = v16;
  if (self->_payloadModel)
  {
    LODWORD(v48) = 40;
    DWORD1(v48) = [v16 tag];
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [(NSURL *)self->_modelMetaDataURL absoluteString];
    v19 = [v17 attributesOfItemAtPath:v18 error:a3];

    v20 = *v10;
    v21 = [v19 objectForKeyedSubscript:*v10];
    DWORD2(v49) = v9;
    HIDWORD(v49) = [v21 unsignedLongValue];
    v22 = v9 + HIDWORD(v49);
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = [(NSURL *)self->_modelDataURL absoluteString];
    v25 = [v23 attributesOfItemAtPath:v24 error:a3];

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
    v27 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = [(NSURL *)self->_fallbackModelMetaDataURL absoluteString];
    v29 = [v27 attributesOfItemAtPath:v28 error:a3];

    v30 = *MEMORY[0x277CCA1C0];
    v31 = [v29 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
    DWORD2(v46) = v9;
    HIDWORD(v46) = [v31 unsignedLongValue];
    v32 = v9 + HIDWORD(v46);
    v33 = [MEMORY[0x277CCAA00] defaultManager];
    v34 = [(NSURL *)self->_fallbackModelDataURL absoluteString];
    v35 = [v33 attributesOfItemAtPath:v34 error:a3];

    v36 = [v35 objectForKeyedSubscript:v30];
    LODWORD(v47) = v32;
    HIDWORD(v47) = [v36 unsignedLongValue];
    v52 = v32 + HIDWORD(v47);
  }

  uarpSuperBinaryHeaderEndianSwap(v51, v51);
  uarpPayloadHeaderEndianSwap(&v48, &v48);
  uarpPayloadHeaderEndianSwap(&v45, &v45);
  v37 = UARPUtilsBuildURLForTemporaryFile();
  v38 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v37 error:a3];
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

    if ([v38 uarpWriteData:v39 error:a3] && objc_msgSend(v38, "uarpCloseAndReturnError:", a3) && uarpUtilsConcatenateURLs(v37, *(&self->super.super.isa + v42), a3) && uarpUtilsConcatenateURLs(v37, self->_modelMetaDataURL, a3) && uarpUtilsConcatenateURLs(v37, self->_modelDataURL, a3) && uarpUtilsConcatenateURLs(v37, self->_fallbackModelMetaDataURL, a3) && uarpUtilsConcatenateURLs(v37, self->_fallbackModelDataURL, a3))
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