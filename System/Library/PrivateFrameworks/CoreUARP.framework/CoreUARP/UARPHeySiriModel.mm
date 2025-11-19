@interface UARPHeySiriModel
+ (id)hsModelWithUarpPayload:(id)a3;
+ (id)uarpPayloadWithHSModel:(id)a3;
- (BOOL)expandURL:(id *)a3;
- (UARPHeySiriModel)initWithURL:(id)a3;
- (id)exportAsSuperBinary:(id *)a3;
- (void)addHeySiriDownloadedModel:(id)a3;
- (void)addHeySiriFallbackModel:(id)a3;
- (void)addHeySiriPreinstalledModel:(id)a3;
- (void)addHeySiriPrimaryModel:(id)a3;
- (void)expandSuperBinaryMetaData:(id)a3;
- (void)expandSuperBinaryPayloads:(id)a3;
@end

@implementation UARPHeySiriModel

- (UARPHeySiriModel)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UARPHeySiriModel;
  v5 = [(UARPHeySiriModel *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)addHeySiriPrimaryModel:(id)a3
{
  v4 = a3;
  newModels = self->_newModels;
  v8 = v4;
  if (!newModels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_newModels;
    self->_newModels = v6;

    v4 = v8;
    newModels = self->_newModels;
  }

  [(NSMutableArray *)newModels addObject:v4];
}

- (void)addHeySiriFallbackModel:(id)a3
{
  v4 = a3;
  fallbackModels = self->_fallbackModels;
  v8 = v4;
  if (!fallbackModels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fallbackModels;
    self->_fallbackModels = v6;

    v4 = v8;
    fallbackModels = self->_fallbackModels;
  }

  [(NSMutableArray *)fallbackModels addObject:v4];
}

- (void)addHeySiriDownloadedModel:(id)a3
{
  v4 = a3;
  downloadedModels = self->_downloadedModels;
  v8 = v4;
  if (!downloadedModels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_downloadedModels;
    self->_downloadedModels = v6;

    v4 = v8;
    downloadedModels = self->_downloadedModels;
  }

  [(NSMutableArray *)downloadedModels addObject:v4];
}

- (void)addHeySiriPreinstalledModel:(id)a3
{
  v4 = a3;
  preInstalledModels = self->_preInstalledModels;
  v8 = v4;
  if (!preInstalledModels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_preInstalledModels;
    self->_preInstalledModels = v6;

    v4 = v8;
    preInstalledModels = self->_preInstalledModels;
  }

  [(NSMutableArray *)preInstalledModels addObject:v4];
}

- (void)expandSuperBinaryMetaData:(id)a3
{
  v4 = a3;
  v8 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725832 tlvs:v4];
  v5 = [v8 valueAsNumber];
  self->_engineType = [v5 unsignedShortValue];
  v6 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725831 tlvs:v4];

  v7 = [v6 valueAsVersion];
  self->_majorVersion = [v7 majorVersion];
  self->_minorVersion = [v7 minorVersion];
}

- (void)expandSuperBinaryPayloads:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a3;
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
        v10 = [v8 tlvs];
        v11 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725824 tlvs:v10];

        v12 = [v11 valueAsNumber];
        if ([v12 unsignedShortValue] == 1)
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

- (BOOL)expandURL:(id *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  v6 = v5;
  if (v5 && [(UARPSuperBinaryAsset *)v5 expandHeadersAndTLVs:a3])
  {
    v7 = [(UARPSuperBinaryAsset *)v6 tlvs];
    v8 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725831 tlvs:v7];

    if (v8)
    {
      v9 = [v8 valueAsVersion];
      self->_majorVersion = [v9 majorVersion];
      self->_minorVersion = [v9 minorVersion];
    }

    v28 = v8;
    v10 = [(UARPSuperBinaryAsset *)v6 tlvs];
    v11 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725832 tlvs:v10];

    if (v11)
    {
      v12 = [v11 valueAsNumber];
      self->_engineType = [v12 unsignedShortValue];
    }

    v27 = v11;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = v6;
    v13 = [(UARPSuperBinaryAsset *)v6 payloads];
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [UARPHeySiriModel hsModelWithUarpPayload:v18];
          v20 = [v18 tlvs];
          v21 = [UARPSuperBinaryAssetTLV findTLVWithType:1619725824 tlvs:v20];

          if (v21 && ([v21 valueAsNumber], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "unsignedShortValue"), v22, v23 == 1))
          {
            [(UARPHeySiriModel *)self addHeySiriPreinstalledModel:v19];
          }

          else
          {
            [(UARPHeySiriModel *)self addHeySiriDownloadedModel:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
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

+ (id)uarpPayloadWithHSModel:(id)a3
{
  v3 = a3;
  v4 = uarpAssetTagHeySiriModel4cc();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%c%c%c%c", *v4, v4[1], v4[2], v4[3]];
  v6 = [[UARPSuperBinaryAssetPayload alloc] initWithTag:v5 majorVersion:&unk_2859CAC40 minorVersion:&unk_2859CAC40 releaseVersion:&unk_2859CAC40 buildVersion:&unk_2859CAC40];
  v7 = [v3 modelLocale];

  if (v7)
  {
    v8 = [UARPSuperBinaryAssetTLV alloc];
    v9 = [v3 modelLocale];
    v10 = [(UARPSuperBinaryAssetTLV *)v8 initWithType:1619725825 stringValue:v9];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v10];
  }

  v11 = [v3 modelHash];

  if (v11)
  {
    v12 = [UARPSuperBinaryAssetTLV alloc];
    v13 = [v3 modelHash];
    v14 = [(UARPSuperBinaryAssetTLV *)v12 initWithType:1619725826 stringValue:v13];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v14];
  }

  v15 = [v3 digest];

  if (v15)
  {
    v16 = [UARPSuperBinaryAssetTLV alloc];
    v17 = [v3 digest];
    v18 = [(UARPSuperBinaryAssetTLV *)v16 initWithType:1619725828 dataValue:v17];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v18];
  }

  v19 = [v3 signature];

  if (v19)
  {
    v20 = [UARPSuperBinaryAssetTLV alloc];
    v21 = [v3 signature];
    v22 = [(UARPSuperBinaryAssetTLV *)v20 initWithType:1619725829 dataValue:v21];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v22];
  }

  v23 = [v3 certificate];

  if (v23)
  {
    v24 = [UARPSuperBinaryAssetTLV alloc];
    v25 = [v3 certificate];
    v26 = [(UARPSuperBinaryAssetTLV *)v24 initWithType:1619725830 dataValue:v25];

    [(UARPSuperBinaryAssetPayload *)v6 addMetaDataTLV:v26];
  }

  v27 = [v3 modelData];

  if (v27)
  {
    v28 = [v3 modelData];
    [(UARPSuperBinaryAssetPayload *)v6 setPayloadToData:v28];
  }

  return v6;
}

+ (id)hsModelWithUarpPayload:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v3 = [v26 tlvs];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      v12 = [v11 type];
      if (v12 <= 1619725827)
      {
        if (v12 == 1619725825)
        {
          v18 = [v11 valueAsString];
          v14 = v8;
          v8 = v18;
        }

        else
        {
          if (v12 != 1619725826)
          {
            continue;
          }

          v15 = [v11 valueAsString];
          v14 = v7;
          v7 = v15;
        }
      }

      else
      {
        switch(v12)
        {
          case 1619725828:
            v16 = [v11 valueAsData];
            v14 = v6;
            v6 = v16;
            break;
          case 1619725829:
            v17 = [v11 valueAsData];
            v14 = v28;
            v28 = v17;
            break;
          case 1619725830:
            v13 = [v11 valueAsData];
            v14 = v27;
            v27 = v13;
            break;
          default:
            continue;
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v5);
LABEL_22:
  v19 = [v26 payload];
  v20 = objc_alloc(getCSVoiceTriggerRTModelClass());
  if (v19)
  {
    v22 = v27;
    v21 = v28;
    v23 = [v20 initWithData:v19 hash:v7 locale:v8 digest:v6 signature:v28 certificate:v27];
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

- (id)exportAsSuperBinary:(id *)a3
{
  v4 = [[UARPAssetVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
  v5 = [[UARPSuperBinaryAsset alloc] initWithFormatVersion:4 assetVersion:v4];
  if ([(NSMutableArray *)self->_newModels count])
  {
    v6 = [(NSMutableArray *)self->_newModels firstObject];
    v7 = [UARPHeySiriModel uarpPayloadWithHSModel:v6];

    v8 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1619725827 unsignedInt16:0];
    [v7 addMetaDataTLV:v8];
    [(UARPSuperBinaryAsset *)v5 addPayload:v7];
  }

  if ([(NSMutableArray *)self->_fallbackModels count])
  {
    v9 = [(NSMutableArray *)self->_fallbackModels firstObject];
    v10 = [UARPHeySiriModel uarpPayloadWithHSModel:v9];

    v11 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1619725827 unsignedInt16:1];
    [v10 addMetaDataTLV:v11];
    [(UARPSuperBinaryAsset *)v5 addPayload:v10];
  }

  return v5;
}

@end