@interface UARPHeySiriModel
+ (id)hsModelWithUarpPayload:(id)payload;
+ (id)uarpPayloadWithHSModel:(id)model;
- (BOOL)expandURL:(id *)l;
- (UARPHeySiriModel)initWithURL:(id)l;
- (id)exportAsSuperBinary:(id *)binary;
- (void)addHeySiriDownloadedModel:(id)model;
- (void)addHeySiriFallbackModel:(id)model;
- (void)addHeySiriPreinstalledModel:(id)model;
- (void)addHeySiriPrimaryModel:(id)model;
- (void)expandSuperBinaryMetaData:(id)data;
- (void)expandSuperBinaryPayloads:(id)payloads;
@end

@implementation UARPHeySiriModel

- (UARPHeySiriModel)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = UARPHeySiriModel;
  v5 = [(UARPHeySiriModel *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)addHeySiriPrimaryModel:(id)model
{
  modelCopy = model;
  newModels = self->_newModels;
  v8 = modelCopy;
  if (!newModels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_newModels;
    self->_newModels = v6;

    modelCopy = v8;
    newModels = self->_newModels;
  }

  [(NSMutableArray *)newModels addObject:modelCopy];
}

- (void)addHeySiriFallbackModel:(id)model
{
  modelCopy = model;
  fallbackModels = self->_fallbackModels;
  v8 = modelCopy;
  if (!fallbackModels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fallbackModels;
    self->_fallbackModels = v6;

    modelCopy = v8;
    fallbackModels = self->_fallbackModels;
  }

  [(NSMutableArray *)fallbackModels addObject:modelCopy];
}

- (void)addHeySiriDownloadedModel:(id)model
{
  modelCopy = model;
  downloadedModels = self->_downloadedModels;
  v8 = modelCopy;
  if (!downloadedModels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_downloadedModels;
    self->_downloadedModels = v6;

    modelCopy = v8;
    downloadedModels = self->_downloadedModels;
  }

  [(NSMutableArray *)downloadedModels addObject:modelCopy];
}

- (void)addHeySiriPreinstalledModel:(id)model
{
  modelCopy = model;
  preInstalledModels = self->_preInstalledModels;
  v8 = modelCopy;
  if (!preInstalledModels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_preInstalledModels;
    self->_preInstalledModels = v6;

    modelCopy = v8;
    preInstalledModels = self->_preInstalledModels;
  }

  [(NSMutableArray *)preInstalledModels addObject:modelCopy];
}

- (void)expandSuperBinaryMetaData:(id)data
{
  dataCopy = data;
  v8 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725832 tlvs:dataCopy];
  valueAsNumber = [v8 valueAsNumber];
  self->_engineType = [valueAsNumber unsignedShortValue];
  v6 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725831 tlvs:dataCopy];

  valueAsVersion = [v6 valueAsVersion];
  self->_majorVersion = [valueAsVersion majorVersion];
  self->_minorVersion = [valueAsVersion minorVersion];
}

- (void)expandSuperBinaryPayloads:(id)payloads
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = payloads;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [UARPHeySiriModel hsModelWithUarpPayload:v8];
        tlvs = [v8 tlvs];
        v11 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725824 tlvs:tlvs];

        valueAsNumber = [v11 valueAsNumber];
        if ([valueAsNumber unsignedShortValue] == 1)
        {
          [(UARPHeySiriModel *)self addHeySiriPreinstalledModel:v9];
        }

        else
        {
          [(UARPHeySiriModel *)self addHeySiriDownloadedModel:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)expandURL:(id *)l
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  v6 = v5;
  if (v5 && [(UARPSuperBinaryAsset *)v5 expandHeadersAndTLVs:l])
  {
    tlvs = [(UARPSuperBinaryAsset *)v6 tlvs];
    v8 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725831 tlvs:tlvs];

    if (v8)
    {
      valueAsVersion = [v8 valueAsVersion];
      self->_majorVersion = [valueAsVersion majorVersion];
      self->_minorVersion = [valueAsVersion minorVersion];
    }

    v28 = v8;
    tlvs2 = [(UARPSuperBinaryAsset *)v6 tlvs];
    v11 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725832 tlvs:tlvs2];

    if (v11)
    {
      valueAsNumber = [v11 valueAsNumber];
      self->_engineType = [valueAsNumber unsignedShortValue];
    }

    v27 = v11;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = v6;
    payloads = [(UARPSuperBinaryAsset *)v6 payloads];
    v14 = [payloads countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(payloads);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [UARPHeySiriModel hsModelWithUarpPayload:v18];
          tlvs3 = [v18 tlvs];
          v21 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725824 tlvs:tlvs3];

          if (v21 && ([v21 valueAsNumber], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "unsignedShortValue"), v22, v23 == 1))
          {
            [(UARPHeySiriModel *)self addHeySiriPreinstalledModel:v19];
          }

          else
          {
            [(UARPHeySiriModel *)self addHeySiriDownloadedModel:v19];
          }
        }

        v15 = [payloads countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    v24 = 1;
    v6 = v29;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)uarpPayloadWithHSModel:(id)model
{
  modelCopy = model;
  v4 = uarpAssetTagHeySiriModel4cc();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%c%c%c%c", *v4, v4[1], v4[2], v4[3]];
  v6 = [[UARPSuperBinaryAssetPayload alloc] initWithTag:v5 majorVersion:&unk_2859CAC40 minorVersion:&unk_2859CAC40 releaseVersion:&unk_2859CAC40 buildVersion:&unk_2859CAC40];
  modelLocale = [modelCopy modelLocale];

  if (modelLocale)
  {
    v8 = [UARPSuperBinaryAssetTLV alloc];
    modelLocale2 = [modelCopy modelLocale];
    v10 = [(UARPSuperBinaryAssetTLV *)v8 initWithType:1619725825 stringValue:modelLocale2];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v10];
  }

  modelHash = [modelCopy modelHash];

  if (modelHash)
  {
    v12 = [UARPSuperBinaryAssetTLV alloc];
    modelHash2 = [modelCopy modelHash];
    v14 = [(UARPSuperBinaryAssetTLV *)v12 initWithType:1619725826 stringValue:modelHash2];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v14];
  }

  digest = [modelCopy digest];

  if (digest)
  {
    v16 = [UARPSuperBinaryAssetTLV alloc];
    digest2 = [modelCopy digest];
    v18 = [(UARPSuperBinaryAssetTLV *)v16 initWithType:1619725828 dataValue:digest2];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v18];
  }

  signature = [modelCopy signature];

  if (signature)
  {
    v20 = [UARPSuperBinaryAssetTLV alloc];
    signature2 = [modelCopy signature];
    v22 = [(UARPSuperBinaryAssetTLV *)v20 initWithType:1619725829 dataValue:signature2];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v22];
  }

  certificate = [modelCopy certificate];

  if (certificate)
  {
    v24 = [UARPSuperBinaryAssetTLV alloc];
    certificate2 = [modelCopy certificate];
    v26 = [(UARPSuperBinaryAssetTLV *)v24 initWithType:1619725830 dataValue:certificate2];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v26];
  }

  modelData = [modelCopy modelData];

  if (modelData)
  {
    modelData2 = [modelCopy modelData];
    [(UARPSuperBinaryAssetPayload *)v6 setPayloadToData:modelData2];
  }

  return v6;
}

+ (id)hsModelWithUarpPayload:(id)payload
{
  v34 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  tlvs = [payloadCopy tlvs];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [tlvs countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v4)
  {
    v27 = 0;
    v28 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  v5 = v4;
  v27 = 0;
  v28 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v30;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(tlvs);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      type = [v11 type];
      if (type <= 1619725827)
      {
        if (type == 1619725825)
        {
          valueAsString = [v11 valueAsString];
          v14 = v8;
          v8 = valueAsString;
        }

        else
        {
          if (type != 1619725826)
          {
            continue;
          }

          valueAsString2 = [v11 valueAsString];
          v14 = v7;
          v7 = valueAsString2;
        }
      }

      else
      {
        switch(type)
        {
          case 1619725828:
            valueAsData = [v11 valueAsData];
            v14 = v6;
            v6 = valueAsData;
            break;
          case 1619725829:
            valueAsData2 = [v11 valueAsData];
            v14 = v28;
            v28 = valueAsData2;
            break;
          case 1619725830:
            valueAsData3 = [v11 valueAsData];
            v14 = v27;
            v27 = valueAsData3;
            break;
          default:
            continue;
        }
      }
    }

    v5 = [tlvs countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v5);
LABEL_22:
  payload = [payloadCopy payload];
  v20 = objc_alloc(getCSVoiceTriggerRTModelClass());
  if (payload)
  {
    v22 = v27;
    v21 = v28;
    v23 = [v20 initWithData:payload hash:v7 locale:v8 digest:v6 signature:v28 certificate:v27];
  }

  else
  {
    v23 = [v20 initWithHash:v7 locale:v8];
    v22 = v27;
    v21 = v28;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)exportAsSuperBinary:(id *)binary
{
  v4 = [[UARPAssetVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
  v5 = [[UARPSuperBinaryAsset alloc] initWithFormatVersion:4 assetVersion:v4];
  if ([(NSMutableArray *)self->_newModels count])
  {
    firstObject = [(NSMutableArray *)self->_newModels firstObject];
    v7 = [UARPHeySiriModel uarpPayloadWithHSModel:firstObject];

    v8 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1619725827 unsignedInt16:0];
    [v7 addMetaDataTLV:v8];
    [(UARPSuperBinaryAsset *)v5 addPayload:v7];
  }

  if ([(NSMutableArray *)self->_fallbackModels count])
  {
    firstObject2 = [(NSMutableArray *)self->_fallbackModels firstObject];
    v10 = [UARPHeySiriModel uarpPayloadWithHSModel:firstObject2];

    v11 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1619725827 unsignedInt16:1];
    [v10 addMetaDataTLV:v11];
    [(UARPSuperBinaryAsset *)v5 addPayload:v10];
  }

  return v5;
}

@end