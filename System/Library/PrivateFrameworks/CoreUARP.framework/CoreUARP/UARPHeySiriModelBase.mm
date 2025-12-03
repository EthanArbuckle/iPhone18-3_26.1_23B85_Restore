@interface UARPHeySiriModelBase
- (BOOL)offerDynamicAssetToAccessory:(id)accessory tag:(id)tag error:(id *)error;
- (BOOL)processDynamicAsset:(id *)asset;
- (UARPHeySiriModelBase)init;
- (UARPHeySiriModelBase)initWithAccessory:(id)accessory uarpProtocolVersion:(unint64_t)version controller:(id)controller url:(id)url;
- (UARPHeySiriModelDelegateProtocol)delegate;
- (id)uarpPayloadWithHSModel:(id)model tag:(id)tag;
- (void)checkCurrentHeySiriModel;
- (void)checkCurrentJustSiriModelAvailable;
- (void)offerDownloadModel:(id)model fallbackModel:(id)fallbackModel tag:(id)tag assetVersion:(id)version error:(id)error;
- (void)setEngineType:(unint64_t)type;
- (void)setMajorVersion:(unint64_t)version;
- (void)setMinorVersion:(unint64_t)version;
- (void)setSuperbinary:(id)superbinary;
- (void)setUrl:(id)url;
@end

@implementation UARPHeySiriModelBase

- (UARPHeySiriModelBase)init
{
  [(UARPHeySiriModelBase *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPHeySiriModelBase)initWithAccessory:(id)accessory uarpProtocolVersion:(unint64_t)version controller:(id)controller url:(id)url
{
  accessoryCopy = accessory;
  controllerCopy = controller;
  urlCopy = url;
  v25.receiver = self;
  v25.super_class = UARPHeySiriModelBase;
  v14 = [(UARPHeySiriModelBase *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accessory, accessory);
    v15->_uarpProtocolVersion = version;
    objc_storeStrong(&v15->_controller, controller);
    objc_storeStrong(&v15->_url, url);
    v16 = os_log_create("com.apple.accessoryupdater.uarp", "heySiri");
    log = v15->_log;
    v15->_log = v16;

    v18 = dispatch_queue_create("com.apple.UARP.UARPHeySiriModelBase", 0);
    queue = v15->_queue;
    v15->_queue = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    downloadedModels = v15->_downloadedModels;
    v15->_downloadedModels = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    preinstalledModels = v15->_preinstalledModels;
    v15->_preinstalledModels = v22;
  }

  return v15;
}

- (void)setUrl:(id)url
{
  urlCopy = url;
  obj = self;
  objc_sync_enter(obj);
  url = obj->_url;
  obj->_url = urlCopy;

  objc_sync_exit(obj);
}

- (void)setSuperbinary:(id)superbinary
{
  superbinaryCopy = superbinary;
  obj = self;
  objc_sync_enter(obj);
  superbinary = obj->_superbinary;
  obj->_superbinary = superbinaryCopy;

  objc_sync_exit(obj);
}

- (void)setMajorVersion:(unint64_t)version
{
  obj = self;
  objc_sync_enter(obj);
  obj->_majorVersion = version;
  objc_sync_exit(obj);
}

- (void)setMinorVersion:(unint64_t)version
{
  obj = self;
  objc_sync_enter(obj);
  obj->_minorVersion = version;
  objc_sync_exit(obj);
}

- (void)setEngineType:(unint64_t)type
{
  obj = self;
  objc_sync_enter(obj);
  obj->_engineType = type;
  objc_sync_exit(obj);
}

- (BOOL)processDynamicAsset:(id *)asset
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = [UARPSuperBinaryAsset alloc];
  selfCopy = self;
  v6 = [(UARPHeySiriModelBase *)self url];
  v7 = [(UARPSuperBinaryAsset *)v5 initWithURL:v6];
  [(UARPHeySiriModelBase *)self setSuperbinary:v7];

  superbinary = [(UARPHeySiriModelBase *)self superbinary];
  v9 = [superbinary expandHeadersAndTLVs:asset];

  if (v9)
  {
    v36 = v9;
    superbinary2 = [(UARPHeySiriModelBase *)selfCopy superbinary];
    tlvs = [superbinary2 tlvs];
    v39 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725831 tlvs:tlvs];

    valueAsVersion = [v39 valueAsVersion];
    -[UARPHeySiriModelBase setMajorVersion:](selfCopy, "setMajorVersion:", [valueAsVersion majorVersion]);
    -[UARPHeySiriModelBase setMinorVersion:](selfCopy, "setMinorVersion:", [valueAsVersion minorVersion]);
    superbinary3 = [(UARPHeySiriModelBase *)selfCopy superbinary];
    tlvs2 = [superbinary3 tlvs];
    v37 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725832 tlvs:tlvs2];

    valueAsNumber = [v37 valueAsNumber];
    -[UARPHeySiriModelBase setEngineType:](selfCopy, "setEngineType:", [valueAsNumber unsignedShortValue]);
    log = selfCopy->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = valueAsNumber;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "HSML: process rx asset; Engine Type %@", buf, 0xCu);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    superbinary4 = [(UARPHeySiriModelBase *)selfCopy superbinary];
    obj = [superbinary4 payloads];

    v16 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v16)
    {
      v42 = *v45;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v44 + 1) + 8 * i);
          tlvs3 = [v18 tlvs];
          v20 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725826 tlvs:tlvs3];

          valueAsString = [v20 valueAsString];
          tlvs4 = [v18 tlvs];
          v23 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725825 tlvs:tlvs4];

          valueAsString2 = [v23 valueAsString];
          tlvs5 = [v18 tlvs];
          v26 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725824 tlvs:tlvs5];

          valueAsNumber2 = [v26 valueAsNumber];
          shortValue = [valueAsNumber2 shortValue];
          v48 = 0;
          v49 = &v48;
          v50 = 0x2050000000;
          v29 = getCSVoiceTriggerRTModelClass_softClass_0;
          v51 = getCSVoiceTriggerRTModelClass_softClass_0;
          if (!getCSVoiceTriggerRTModelClass_softClass_0)
          {
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __getCSVoiceTriggerRTModelClass_block_invoke_0;
            v54 = &unk_278EC24A8;
            v55 = &v48;
            __getCSVoiceTriggerRTModelClass_block_invoke_0(buf);
            v29 = v49[3];
          }

          v30 = v29;
          _Block_object_dispose(&v48, 8);
          v31 = [[v29 alloc] initWithHash:valueAsString locale:valueAsString2];
          if (shortValue == 1)
          {
            v33 = selfCopy->_log;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = valueAsString2;
              *&buf[12] = 2112;
              *&buf[14] = valueAsString;
              _os_log_impl(&dword_247AA7000, v33, OS_LOG_TYPE_INFO, "HSML: rx pre-installed model locale <%@>, hash <%@>", buf, 0x16u);
            }

            [(UARPHeySiriModelBase *)selfCopy addPreInstalledModel:v31];
          }

          else if (!shortValue)
          {
            v32 = selfCopy->_log;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = valueAsString2;
              *&buf[12] = 2112;
              *&buf[14] = valueAsString;
              _os_log_impl(&dword_247AA7000, v32, OS_LOG_TYPE_INFO, "HSML: rx downloaded model locale <%@>, hash <%@>", buf, 0x16u);
            }

            [(UARPHeySiriModelBase *)selfCopy addDownloadedModel:v31];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v16);
    }

    LOBYTE(v9) = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)uarpPayloadWithHSModel:(id)model tag:(id)tag
{
  v43.wbuf[7] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  tagCopy = tag;
  v7 = [[UARPAssetVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
  v8 = [[UARPSuperBinaryAssetPayload alloc] initWithPayloadTag:tagCopy assetVersion:v7];

  modelLocale = [modelCopy modelLocale];

  if (modelLocale)
  {
    v10 = [UARPSuperBinaryAssetTLV alloc];
    modelLocale2 = [modelCopy modelLocale];
    v12 = [(UARPSuperBinaryAssetTLV *)v10 initWithType:1619725825 stringValue:modelLocale2];

    [(UARPSuperBinaryAssetPayload *)v8 addMetaDataTLV:v12];
  }

  modelHash = [modelCopy modelHash];

  if (modelHash)
  {
    v14 = [UARPSuperBinaryAssetTLV alloc];
    modelHash2 = [modelCopy modelHash];
    v16 = [(UARPSuperBinaryAssetTLV *)v14 initWithType:1619725826 stringValue:modelHash2];

    [(UARPSuperBinaryAssetPayload *)v8 addMetaDataTLV:v16];
  }

  digest = [modelCopy digest];

  if (digest)
  {
    v18 = [UARPSuperBinaryAssetTLV alloc];
    digest2 = [modelCopy digest];
    v20 = [(UARPSuperBinaryAssetTLV *)v18 initWithType:1619725828 dataValue:digest2];

    [(UARPSuperBinaryAssetPayload *)v8 addMetaDataTLV:v20];
  }

  signature = [modelCopy signature];

  if (signature)
  {
    v22 = [UARPSuperBinaryAssetTLV alloc];
    signature2 = [modelCopy signature];
    v24 = [(UARPSuperBinaryAssetTLV *)v22 initWithType:1619725829 dataValue:signature2];

    [(UARPSuperBinaryAssetPayload *)v8 addMetaDataTLV:v24];
  }

  certificate = [modelCopy certificate];

  if (certificate)
  {
    v26 = [UARPSuperBinaryAssetTLV alloc];
    certificate2 = [modelCopy certificate];
    v28 = [(UARPSuperBinaryAssetTLV *)v26 initWithType:1619725830 dataValue:certificate2];

    [(UARPSuperBinaryAssetPayload *)v8 addMetaDataTLV:v28];
  }

  modelData = [modelCopy modelData];
  if (modelData)
  {
    v30 = modelData;
    modelData2 = [modelCopy modelData];
    v32 = [modelData2 length];

    if (v32)
    {
      digest3 = [modelCopy digest];

      if (!digest3)
      {
        v34 = [[UARPSuperBinaryAssetTLV alloc] initWithType:3436347666 unsignedInt16:1];
        [(UARPSuperBinaryAssetPayload *)v8 addMetaDataTLV:v34];
        memset(&v43, 0, 104);
        uarpPlatformDarwinHashInit(1, &v43);
        modelData3 = [modelCopy modelData];
        bytes = [modelData3 bytes];
        modelData4 = [modelCopy modelData];
        uarpPlatformDarwinHashUpdate(1, &v43, bytes, [modelData4 length]);

        uarpPlatformDarwinHashFinal(1, &v43, &v43.wbuf[3], 32);
        v38 = [MEMORY[0x277CBEA90] dataWithBytes:&v43.wbuf[3] length:32];
        v39 = [[UARPSuperBinaryAssetTLV alloc] initWithType:3436347655 dataValue:v38];
        [(UARPSuperBinaryAssetPayload *)v8 addMetaDataTLV:v39];
      }

      modelData5 = [modelCopy modelData];
      [(UARPSuperBinaryAssetPayload *)v8 setPayloadToData:modelData5];
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)checkCurrentHeySiriModel
{
  CSCoreSpeechServicesClass = getCSCoreSpeechServicesClass();
  majorVersion = self->_majorVersion;
  minorVersion = self->_minorVersion;
  downloadedModels = self->_downloadedModels;
  preinstalledModels = self->_preinstalledModels;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__UARPHeySiriModelBase_checkCurrentHeySiriModel__block_invoke;
  v8[3] = &unk_278EC2C40;
  v8[4] = self;
  [CSCoreSpeechServicesClass voiceTriggerRTModelForVersion:majorVersion minorVersion:minorVersion downloadedModels:downloadedModels preinstalledModels:preinstalledModels completion:v8];
}

void __48__UARPHeySiriModelBase_checkCurrentHeySiriModel__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "HSML: Voice Trigger Download Model %@", buf, 0xCu);
    }

    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_7:
    v11 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "HSML: Voice Trigger Fallback Model %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (v8)
  {
    goto LABEL_7;
  }

  if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
  {
    __48__UARPHeySiriModelBase_checkCurrentHeySiriModel__block_invoke_cold_1();
  }

LABEL_11:
  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__UARPHeySiriModelBase_checkCurrentHeySiriModel__block_invoke_8;
  v18[3] = &unk_278EC2A58;
  v18[4] = v12;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v13, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __48__UARPHeySiriModelBase_checkCurrentHeySiriModel__block_invoke_8(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 104));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 104));
    [v4 currentHeySiriModel:a1[5] fallbackModel:a1[6] error:a1[7]];
  }
}

- (void)checkCurrentJustSiriModelAvailable
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getCSCoreSpeechServicesAccessoryInfoClass_softClass;
  v17 = getCSCoreSpeechServicesAccessoryInfoClass_softClass;
  if (!getCSCoreSpeechServicesAccessoryInfoClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getCSCoreSpeechServicesAccessoryInfoClass_block_invoke;
    v13[3] = &unk_278EC24A8;
    v13[4] = &v14;
    __getCSCoreSpeechServicesAccessoryInfoClass_block_invoke(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v6 = objc_alloc_init(v4);
  [v6 setSupportsJustSiri:1];
  CSCoreSpeechServicesClass = getCSCoreSpeechServicesClass();
  majorVersion = self->_majorVersion;
  minorVersion = self->_minorVersion;
  downloadedModels = self->_downloadedModels;
  preinstalledModels = self->_preinstalledModels;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__UARPHeySiriModelBase_checkCurrentJustSiriModelAvailable__block_invoke;
  v12[3] = &unk_278EC2C40;
  v12[4] = self;
  [CSCoreSpeechServicesClass voiceTriggerRTModelForVersion:majorVersion minorVersion:minorVersion accessoryRTModelType:0 accessoryInfo:v6 endpointId:uUID downloadedModels:downloadedModels preinstalledModels:preinstalledModels completion:v12];
}

void __58__UARPHeySiriModelBase_checkCurrentJustSiriModelAvailable__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Download Model %@", buf, 0xCu);
    }
  }

  if (v8)
  {
    v11 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "Fallback Model %@", buf, 0xCu);
    }
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__UARPHeySiriModelBase_checkCurrentJustSiriModelAvailable__block_invoke_14;
  v18[3] = &unk_278EC2A58;
  v18[4] = v12;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v13, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __58__UARPHeySiriModelBase_checkCurrentJustSiriModelAvailable__block_invoke_14(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 104));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 104));
    [v4 currentHeySiriModel:a1[5] fallbackModel:a1[6] error:a1[7]];
  }
}

- (void)offerDownloadModel:(id)model fallbackModel:(id)fallbackModel tag:(id)tag assetVersion:(id)version error:(id)error
{
  modelCopy = model;
  fallbackModelCopy = fallbackModel;
  tagCopy = tag;
  uarpProtocolVersion_low = LOWORD(self->_uarpProtocolVersion);
  versionCopy = version;
  v16 = [[UARPSuperBinaryAsset alloc] initWithFormatVersion:uarpAssetSuperBinaryVersionForProtocolVersion(uarpProtocolVersion_low) assetVersion:versionCopy];

  if ([(UARPHeySiriModelBase *)self engineType]&& [(UARPHeySiriModelBase *)self engineType]!= 1)
  {
    v17 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1619725832 unsignedInt16:[(UARPHeySiriModelBase *)self engineType]];
    [(UARPSuperBinaryAsset *)v16 addMetaDataTLV:v17];
  }

  if (modelCopy)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPHeySiriModelBase offerDownloadModel:fallbackModel:tag:assetVersion:error:];
    }

    v18 = [(UARPHeySiriModelBase *)self uarpPayloadWithHSModel:modelCopy tag:tagCopy];
    v19 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1619725827 unsignedInt16:0];
    [v18 addMetaDataTLV:v19];
    [(UARPSuperBinaryAsset *)v16 addPayload:v18];
  }

  if (fallbackModelCopy)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPHeySiriModelBase offerDownloadModel:fallbackModel:tag:assetVersion:error:];
    }

    v20 = [(UARPHeySiriModelBase *)self uarpPayloadWithHSModel:fallbackModelCopy tag:tagCopy];
    v21 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1619725827 unsignedInt16:1];
    [v20 addMetaDataTLV:v21];
    [(UARPSuperBinaryAsset *)v16 addPayload:v20];
  }

  v22 = uarpDynamicAssetComponentURL(tagCopy);
  v28 = 0;
  v23 = [(UARPSuperBinaryAsset *)v16 writeToURL:v22 error:&v28];
  v24 = v28;
  if (v23)
  {
    v27 = 0;
    v25 = [(UARPHeySiriModelBase *)self offerDynamicAssetToAccessory:v22 tag:tagCopy error:&v27];
    v26 = v27;

    if (!v25 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPHeySiriModelBase offerDownloadModel:fallbackModel:tag:assetVersion:error:];
    }

    v24 = v26;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPHeySiriModelBase offerDownloadModel:fallbackModel:tag:assetVersion:error:];
  }
}

- (BOOL)offerDynamicAssetToAccessory:(id)accessory tag:(id)tag error:(id *)error
{
  tagCopy = tag;
  accessoryCopy = accessory;
  v10 = [[UARPAssetID alloc] initWithLocationType:0 assetTag:tagCopy url:accessoryCopy];

  if (v10)
  {
    [(UARPAssetID *)v10 setReportProgressToDelegates:0];
    v11 = [(UARPController *)self->_controller dynamicAssetAvailableForAccessory:self->_accessory assetID:v10 error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UARPHeySiriModelDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)offerDownloadModel:fallbackModel:tag:assetVersion:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)offerDownloadModel:fallbackModel:tag:assetVersion:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end