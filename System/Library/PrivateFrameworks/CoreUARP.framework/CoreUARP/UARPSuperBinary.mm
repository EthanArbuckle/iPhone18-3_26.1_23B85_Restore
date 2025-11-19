@interface UARPSuperBinary
- (BOOL)expandMetaData:(UARPSuperBinaryHeader *)a3;
- (BOOL)expandSuperBinary;
- (BOOL)expandTLVs;
- (BOOL)generateTatsuMeasurements:(unint64_t)a3 relativeURL:(id)a4;
- (BOOL)preparePayload:(UARPPayloadHeader2 *)a3;
- (BOOL)queryTatsuSigningServer:(id)a3 ssoOnly:(BOOL)a4 error:(id *)a5;
- (UARPSuperBinary)initWithData:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (UARPSuperBinary)initWithFilePath:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (UARPSuperBinary)initWithURL:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (id)composeTSSRequest:(unint64_t)a3 asMeasurement:(BOOL)a4;
- (id)generatePersonalizedSuperBinaryInternal:(id)a3;
- (id)generatePersonalizedSuperBinaryWithoutRRKO;
- (id)getDataBlock:(unint64_t)a3 offset:(unint64_t)a4;
- (id)payloadWith4ccTag:(id)a3;
- (id)payloadsWithout4ccTag:(id)a3;
- (id)personalizedMetaData;
- (id)requiredTSSOptions;
- (id)tatsuMeasurements:(unint64_t)a3;
- (id)tssKeyName:(id)a3 unitNumber:(unint64_t)a4;
- (void)generateTatsuMeasurements:(unint64_t)a3;
- (void)generateTatsuMeasurementsPerPayload:(unint64_t)a3;
- (void)logInternal:(id)a3 arguments:(char *)a4;
- (void)processMeasurementsForTSSOptions:(id)a3 unitNumber:(unint64_t)a4 asMeasurement:(BOOL)a5;
- (void)processTLVsForPersonalization;
@end

@implementation UARPSuperBinary

- (UARPSuperBinary)initWithData:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = UARPSuperBinary;
  v11 = [(UARPSuperBinary *)&v23 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

  objc_storeWeak(&v11->_delegate, v9);
  objc_storeStrong(&v12->_delegateQueue, a5);
  v13 = [v8 copy];
  data = v12->_data;
  v12->_data = v13;

  v15 = objc_opt_new();
  tlvs = v12->_tlvs;
  v12->_tlvs = v15;

  v17 = objc_opt_new();
  trimmedTlvs = v12->_trimmedTlvs;
  v12->_trimmedTlvs = v17;

  v19 = objc_opt_new();
  measurements = v12->_measurements;
  v12->_measurements = v19;

  v12->_totalLength = [(NSData *)v12->_data length];
  if ([(UARPSuperBinary *)v12 expandSuperBinary])
  {
LABEL_4:
    v21 = v12;
  }

  else
  {
LABEL_5:
    v21 = 0;
  }

  return v21;
}

- (UARPSuperBinary)initWithFilePath:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v8 = MEMORY[0x277CBEA90];
  v9 = a5;
  v10 = a4;
  v11 = [a3 stringByExpandingTildeInPath];
  v12 = [v8 dataWithContentsOfFile:v11];
  v13 = [(UARPSuperBinary *)self initWithData:v12 delegate:v10 delegateQueue:v9];

  return v13;
}

- (UARPSuperBinary)initWithURL:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v8 = MEMORY[0x277CBEA90];
  v9 = a5;
  v10 = a4;
  v11 = [v8 dataWithContentsOfURL:a3];
  v12 = [(UARPSuperBinary *)self initWithData:v11 delegate:v10 delegateQueue:v9];

  return v12;
}

- (BOOL)expandSuperBinary
{
  v3 = objc_opt_new();
  payloads = self->_payloads;
  self->_payloads = v3;

  data = self->_data;
  if (!data)
  {
    return 0;
  }

  if ([(NSData *)data length]< 0x2C)
  {
    return 0;
  }

  memset(v17, 0, 44);
  [(NSData *)self->_data getBytes:v17 range:0, 44];
  uarpSuperBinaryHeaderEndianSwap(v17, v17);
  v6 = DWORD2(v17[0]);
  if ([(NSData *)self->_data length]< v6)
  {
    return 0;
  }

  self->_formatVersion = v17[0];
  v7 = [UARPAssetVersion alloc];
  v8 = [(UARPAssetVersion *)v7 initWithMajorVersion:HIDWORD(v17[0]) minorVersion:LODWORD(v17[1]) releaseVersion:DWORD1(v17[1]) buildVersion:DWORD2(v17[1])];
  version = self->_version;
  self->_version = v8;

  if (![(UARPSuperBinary *)self expandMetaData:v17])
  {
    return 0;
  }

  v10 = DWORD1(v17[2]);
  v11 = DWORD2(v17[2]);
  do
  {
    v12 = v11 >= 0x28;
    v11 -= 40;
    v13 = !v12;
    if (!v12)
    {
      break;
    }

    v16 = 0;
    memset(v15, 0, sizeof(v15));
    [(NSData *)self->_data getBytes:v15 range:v10, 40];
    uarpPayloadHeaderEndianSwap(v15, v15);
    v10 += 40;
  }

  while ([(UARPSuperBinary *)self preparePayload:v15]);
  return v13;
}

- (BOOL)expandMetaData:(UARPSuperBinaryHeader *)a3
{
  superBinaryMetadataLength = a3->superBinaryMetadataLength;
  if (!superBinaryMetadataLength)
  {
    return 1;
  }

  v6 = a3->superBinaryMetadataOffset + superBinaryMetadataLength;
  if ([(NSData *)self->_data length]< v6)
  {
    return 0;
  }

  v8 = [(NSData *)self->_data subdataWithRange:a3->superBinaryMetadataOffset, a3->superBinaryMetadataLength];
  metaData = self->_metaData;
  self->_metaData = v8;

  return [(UARPSuperBinary *)self expandTLVs];
}

- (BOOL)preparePayload:(UARPPayloadHeader2 *)a3
{
  v5 = [[UARPAssetTag alloc] initWithChar1:a3->var1.char1 char2:a3->var1.char2 char3:a3->var1.char3 char4:a3->var1.char4];
  v6 = [[UARPAssetVersion alloc] initWithMajorVersion:a3->var2.major minorVersion:a3->var2.minor releaseVersion:a3->var2.release buildVersion:a3->var2.build];
  v7 = a3->var4 + a3->var3;
  if ([(NSData *)self->_data length]>= v7)
  {
    if (a3->var4)
    {
      v9 = [(NSData *)self->_data subdataWithRange:a3->var3];
    }

    else
    {
      v9 = 0;
    }

    v10 = a3->var6 + a3->var5;
    if ([(NSData *)self->_data length]>= v10)
    {
      if (a3->var6)
      {
        v11 = [(NSData *)self->_data subdataWithRange:a3->var5];
      }

      else
      {
        v11 = 0;
      }

      v12 = [[UARPSuperBinaryPayload alloc] initWithData:v11 metaData:v9 tag:v5 version:v6];
      v13 = v12;
      if (v12 && [(UARPSuperBinaryPayload *)v12 expandTLVs])
      {
        [(NSMutableArray *)self->_payloads addObject:v13];
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)payloadWith4ccTag:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_payloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 tag];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)payloadsWithout4ccTag:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_payloads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 tag];
        v13 = [v12 isEqual:v4];

        if ((v13 & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)personalizedMetaData
{
  v32 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_trimmedTlvs removeAllObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = self;
  v3 = self->_tlvs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      [(NSMutableArray *)v21->_trimmedTlvs addObject:v8];
                    }
                  }
                }
              }
            }
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  manifest = v21->_manifest;
  if (manifest)
  {
    v10 = [UARPMetaDataTLV tlvFromType:2293403952 length:[(NSData *)manifest length] value:[(NSData *)v21->_manifest bytes]];
    if (v10)
    {
      [(NSMutableArray *)v21->_trimmedTlvs addObject:v10];
    }
  }

  v11 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v21->_trimmedTlvs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v22 + 1) + 8 * j) generateTLV];
        [v11 appendData:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x277CBEA90] dataWithData:v11];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)expandTLVs
{
  v3 = [(NSData *)self->_metaData bytes];
  if ([(NSData *)self->_metaData length])
  {
    v4 = 0;
    do
    {
      if (v4 + 4 > [(NSData *)self->_metaData length])
      {
        break;
      }

      v5 = uarpHtonl(*&v3[v4]);
      v6 = v4 + 8;
      if (v4 + 8 > [(NSData *)self->_metaData length])
      {
        break;
      }

      v7 = uarpHtonl(*&v3[v4 + 4]);
      v4 = v6 + v7;
      if (v4 > [(NSData *)self->_metaData length])
      {
        break;
      }

      v8 = [UARPMetaDataTLV tlvFromType:v5 length:v7 value:&v3[v6]];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      [(NSMutableArray *)self->_tlvs addObject:v8];
    }

    while (v4 < [(NSData *)self->_metaData length]);
  }

  [(UARPSuperBinary *)self processTLVsForPersonalization];
  return 1;
}

- (BOOL)queryTatsuSigningServer:(id)a3 ssoOnly:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v7 = a3;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:@"https://gs.apple.com:443"];
  }

  tssRequest = self->_tssRequest;
  if (v5)
  {
    UARPPersonalizationTSSRequestWithSigningServerSSO(tssRequest, v7);
  }

  else
  {
    UARPPersonalizationTSSRequestWithSigningServer(tssRequest, v7);
  }
  v9 = ;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:self->_keyManifest];
    manifest = self->_manifest;
    self->_manifest = v11;
  }

  return v10 != 0;
}

- (id)generatePersonalizedSuperBinaryWithoutRRKO
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [[UARPAssetTag alloc] initWithString:@"RRKO"];
  v4 = [[UARPAssetTag alloc] initWithString:@"rrko"];
  v17 = self;
  v18 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_payloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 tag];
        if ([v11 isEqual:v3])
        {
        }

        else
        {
          v12 = [v10 tag];
          v13 = [v12 isEqual:v4];

          if ((v13 & 1) == 0)
          {
            [v18 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = [(UARPSuperBinary *)v17 generatePersonalizedSuperBinaryInternal:v18];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)generatePersonalizedSuperBinaryInternal:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v33 = objc_opt_new();
  v34[0] = self->_formatVersion;
  v34[1] = 44;
  v36 = [(UARPAssetVersion *)self->_version majorVersion];
  v37 = [(UARPAssetVersion *)self->_version minorVersion];
  v38 = [(UARPAssetVersion *)self->_version releaseVersion];
  v39 = [(UARPAssetVersion *)self->_version buildVersion];
  v42 = 44;
  v43 = 40 * [v4 count];
  v7 = [(UARPSuperBinary *)self personalizedMetaData];
  v40 = v43 + 44;
  v8 = [v7 length];
  v9 = v43 + 44 + v8;
  v41 = v8;
  v35 = v9;
  v32 = v7;
  [v6 appendData:v7];
  v10 = malloc_type_calloc([v4 count], 0x28uLL, 0x10000400A747E1EuLL);
  if ([v4 count])
  {
    v11 = 0;
    v12 = v10 + 4;
    do
    {
      v13 = [v4 objectAtIndex:v11];
      v14 = [v13 personalizedMetaData];
      *(v12 - 4) = 40;
      v15 = [v13 tag];
      *(v12 - 12) = [v15 char1];

      v16 = [v13 tag];
      *(v12 - 11) = [v16 char2];

      v17 = [v13 tag];
      *(v12 - 10) = [v17 char3];

      v18 = [v13 tag];
      *(v12 - 9) = [v18 char4];

      v19 = [v13 version];
      *(v12 - 2) = [v19 majorVersion];

      v20 = [v13 version];
      *(v12 - 1) = [v20 minorVersion];

      v21 = [v13 version];
      *v12 = [v21 releaseVersion];

      v22 = [v13 version];
      v12[1] = [v22 buildVersion];

      v12[2] = v9;
      v23 = [v14 length];
      v12[3] = v23;
      v9 += v23;
      [v6 appendData:v14];

      ++v11;
      v12 += 10;
    }

    while (v11 < [v4 count]);
  }

  if ([v4 count])
  {
    v24 = 0;
    v25 = v10 + 9;
    v26 = v33;
    do
    {
      v27 = [v4 objectAtIndex:v24];
      v28 = [v27 personalizedData];
      *(v25 - 1) = v9;
      v29 = [v28 length];
      *v25 = v29;
      v25 += 10;
      v9 += v29;
      [v33 appendData:v28];

      ++v24;
    }

    while (v24 < [v4 count]);
  }

  else
  {
    v26 = v33;
  }

  v35 = v9;
  uarpSuperBinaryHeaderEndianSwap(v34, v34);
  [v5 appendBytes:v34 length:44];
  if ([v4 count])
  {
    v30 = 0;
    do
    {
      uarpPayloadHeaderEndianSwap(v10, v10);
      [v5 appendBytes:v10 length:40];
      ++v30;
      v10 += 10;
    }

    while (v30 < [v4 count]);
  }

  [v5 appendData:v6];
  [v5 appendData:v26];

  return v5;
}

- (BOOL)generateTatsuMeasurements:(unint64_t)a3 relativeURL:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  tatsuMeasurements = self->_tatsuMeasurements;
  self->_tatsuMeasurements = v7;

  if ([(UARPSuperBinary *)self expandTLVs])
  {
    [(UARPSuperBinary *)self processTLVsForPersonalization];
  }

  if (self->_needsHostPersonalization)
  {
    [(UARPSuperBinary *)self generateTatsuMeasurements:a3];
  }

  else
  {
    [(UARPSuperBinary *)self generateTatsuMeasurementsPerPayload:a3];
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [v6 lastPathComponent];
  v11 = [v9 stringWithFormat:@"%@.plist", v10];

  v12 = MEMORY[0x277CBEBC0];
  v13 = [v6 URLByDeletingLastPathComponent];

  v14 = [v12 fileURLWithPath:v11 isDirectory:0 relativeToURL:v13];

  v15 = [(NSMutableDictionary *)self->_tatsuMeasurements writeToURL:v14 error:0];
  return v15;
}

- (void)generateTatsuMeasurementsPerPayload:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_payloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (a3)
        {
          v10 = *(*(&v14 + 1) + 8 * v9);
          v11 = 1;
          do
          {
            v12 = [v10 tatsuMeasurements:{v11, v14}];
            if (v12)
            {
              [(NSMutableDictionary *)self->_tatsuMeasurements addEntriesFromDictionary:v12];
            }

            ++v11;
          }

          while (v11 <= a3);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)generateTatsuMeasurements:(unint64_t)a3
{
  manifest = self->_manifest;
  self->_manifest = 0;

  v6 = objc_opt_new();
  tssRequest = self->_tssRequest;
  self->_tssRequest = v6;

  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = [(UARPSuperBinary *)self tatsuMeasurements:v8];
      if (v9)
      {
        [(NSMutableDictionary *)self->_tatsuMeasurements addEntriesFromDictionary:v9];
      }

      ++v8;
    }

    while (a3 != v8);
  }
}

- (void)processTLVsForPersonalization
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_tlvs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0x278EC0000uLL;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = *(v6 + 3656);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_needsHostPersonalization = [v9 isRequired] != 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          v12 = [v11 ticketPrefix];
          ticketPrefix = self->_ticketPrefix;
          self->_ticketPrefix = v12;
LABEL_12:

          v6 = 0x278EC0000;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          v14 = [v11 manifestSuffix];
          ticketPrefix = self->_ticketSuffix;
          self->_ticketSuffix = v14;
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_ticketNeedsUnitNumber = [v9 ticketNeedsLogicalUnitNumber] != 0;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            self->_prefixNeedsUnitNumber = [v9 prefixNeedsLogicalUnitNumber] != 0;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              self->_suffixNeedsUnitNumber = [v9 suffixNeedsLogicalUnitNumber] != 0;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(NSMutableArray *)self->_measurements addObject:v9, v17];
              }
            }
          }
        }

LABEL_13:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_life = [v9 life];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_provisioning = [v9 provisioning] != 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_manifestEpoch = [v9 manifestEpoch];
        }

        ++v8;
      }

      while (v5 != v8);
      v15 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v5 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)tatsuMeasurements:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_tlvs count];
  if (v5)
  {
    v5 = [(UARPSuperBinary *)self composeTSSRequest:a3 asMeasurement:1];
  }

  return v5;
}

- (id)composeTSSRequest:(unint64_t)a3 asMeasurement:(BOOL)a4
{
  v33 = a4;
  v39 = *MEMORY[0x277D85DE8];
  manifest = self->_manifest;
  self->_manifest = 0;

  v7 = objc_opt_new();
  tssRequest = self->_tssRequest;
  self->_tssRequest = v7;

  v9 = [(UARPSuperBinary *)self requiredTSSOptions];
  v10 = objc_opt_new();
  keyManifest = self->_keyManifest;
  self->_keyManifest = v10;

  [(NSMutableString *)self->_keyManifest appendFormat:@"%@", self->_ticketPrefix];
  if (self->_ticketNeedsUnitNumber)
  {
    [(NSMutableString *)self->_keyManifest appendFormat:@"%lu", a3];
  }

  [(NSMutableString *)self->_keyManifest appendFormat:@", Ticket"];
  v12 = objc_opt_new();
  [v12 appendFormat:@"@%@", self->_keyManifest];
  [(NSMutableDictionary *)self->_tssRequest setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v34 + 1) + 8 * v17) unsignedLongValue];
        if (v18 <= 9)
        {
          if (v18 <= 6)
          {
            if (v18 == 4)
            {
              v19 = [(UARPSuperBinary *)self tssKeyName:@"BoardID" unitNumber:a3];
              v24 = MEMORY[0x277CCABB0];
              v25 = [(UARPSuperBinary *)self boardID];
            }

            else
            {
              if (v18 != 5)
              {
                goto LABEL_40;
              }

              v19 = [(UARPSuperBinary *)self tssKeyName:@"ChipID" unitNumber:a3];
              v24 = MEMORY[0x277CCABB0];
              v25 = [(UARPSuperBinary *)self chipID];
            }

            v26 = [v24 numberWithUnsignedInt:v25];
            goto LABEL_32;
          }

          if (v18 == 7)
          {
            v19 = [(UARPSuperBinary *)self tssKeyName:@"ECID" unitNumber:a3];
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[UARPSuperBinary ecID](self, "ecID")}];
            goto LABEL_32;
          }

          if (v18 != 8)
          {
            v19 = [(UARPSuperBinary *)self tssKeyName:@"SecurityMode" unitNumber:a3];
            v22 = [(UARPSuperBinary *)self securityMode];
            goto LABEL_34;
          }

          v19 = [(UARPSuperBinary *)self tssKeyName:@"SecurityDomain" unitNumber:a3];
          v20 = MEMORY[0x277CCABB0];
          v21 = [(UARPSuperBinary *)self securityDomain];
          goto LABEL_30;
        }

        if (v18 > 25)
        {
          if (v18 == 26)
          {
            v19 = [(UARPSuperBinary *)self tssKeyName:@"Provisioning" unitNumber:a3];
            if (![(UARPSuperBinary *)self provisioning])
            {
              goto LABEL_39;
            }

            v28 = self->_tssRequest;
            ecidData = MEMORY[0x277CBEC38];
            goto LABEL_38;
          }

          if (v18 != 27)
          {
            if (v18 != 29)
            {
              goto LABEL_40;
            }

            v19 = [(UARPSuperBinary *)self tssKeyName:@"ECID" unitNumber:a3];
            ecidData = self->_ecidData;
LABEL_37:
            v28 = self->_tssRequest;
LABEL_38:
            [(NSMutableDictionary *)v28 setObject:ecidData forKeyedSubscript:v19];
            goto LABEL_39;
          }

          v19 = [(UARPSuperBinary *)self tssKeyName:@"ManifestEpoch" unitNumber:a3];
          v20 = MEMORY[0x277CCABB0];
          v21 = [(UARPSuperBinary *)self manifestEpoch];
          goto LABEL_30;
        }

        if (v18 == 10)
        {
          v19 = [(UARPSuperBinary *)self tssKeyName:@"ProductionMode" unitNumber:a3];
          v22 = [(UARPSuperBinary *)self productionMode];
LABEL_34:
          if (v22)
          {
            ecidData = MEMORY[0x277CBEC38];
          }

          else
          {
            ecidData = MEMORY[0x277CBEC28];
          }

          goto LABEL_37;
        }

        if (v18 != 24)
        {
          if (v18 != 25)
          {
            goto LABEL_40;
          }

          v19 = [(UARPSuperBinary *)self tssKeyName:@"Life" unitNumber:a3];
          v20 = MEMORY[0x277CCABB0];
          v21 = [(UARPSuperBinary *)self life];
LABEL_30:
          v26 = [v20 numberWithUnsignedChar:v21];
          goto LABEL_32;
        }

        v19 = [(UARPSuperBinary *)self tssKeyName:@"Nonce" unitNumber:a3];
        v26 = [(UARPSuperBinary *)self nonce];
LABEL_32:
        v27 = v26;
        [(NSMutableDictionary *)self->_tssRequest setObject:v26 forKeyedSubscript:v19];

LABEL_39:
LABEL_40:
        ++v17;
      }

      while (v15 != v17);
      v29 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      v15 = v29;
    }

    while (v29);
  }

  [(UARPSuperBinary *)self processMeasurementsForTSSOptions:self->_tssRequest unitNumber:a3 asMeasurement:v33];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_tssRequest];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)tssKeyName:(id)a3 unitNumber:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 appendFormat:@"%@", self->_ticketPrefix];
  if (self->_prefixNeedsUnitNumber)
  {
    [v7 appendFormat:@"%lu", a4];
  }

  [v7 appendFormat:@", %@", v6];
  if (self->_suffixNeedsUnitNumber)
  {
    [v7 appendFormat:@", %lu", a4];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithString:v7];

  return v8;
}

- (void)processMeasurementsForTSSOptions:(id)a3 unitNumber:(unint64_t)a4 asMeasurement:(BOOL)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v35 = self;
  v36 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_payloads;
  v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v29)
  {
    v28 = *v47;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v46 + 1) + 8 * i) measurements];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v31 = v7;
        v33 = [v7 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v33)
        {
          v30 = i;
          v8 = 0;
          v9 = 0;
          v32 = *v43;
          do
          {
            v10 = 0;
            do
            {
              if (*v43 != v32)
              {
                objc_enumerationMutation(v31);
              }

              v34 = v10;
              v11 = *(*(&v42 + 1) + 8 * v10);
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v12 = [v11 tlvs];
              v13 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v39;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v39 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = *(*(&v38 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v18 = v17;
                      v19 = [v18 longname];

                      v9 = v19;
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v20 = v17;
                        v21 = [v20 digest];

                        v8 = v21;
                      }

                      else
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) != 0 && !a5)
                        {
                          if ([(UARPSuperBinary *)v35 productionMode])
                          {
                            v22 = MEMORY[0x277CBEC38];
                          }

                          else
                          {
                            v22 = MEMORY[0x277CBEC28];
                          }

                          [v36 setObject:v22 forKeyedSubscript:@"EPRO"];
                        }
                      }
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v38 objects:v50 count:16];
                }

                while (v14);
              }

              v10 = v34 + 1;
            }

            while (v34 + 1 != v33);
            v33 = [v31 countByEnumeratingWithState:&v42 objects:v51 count:16];
          }

          while (v33);
          if (v9)
          {
            i = v30;
            if (v8)
            {
              [v36 setObject:v8 forKeyedSubscript:v9];
            }
          }

          else
          {
            i = v30;
          }
        }

        else
        {
          v9 = 0;
          v8 = 0;
        }
      }

      v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v29);
  }

  v23 = objc_opt_new();
  [v23 appendFormat:@"%@", v35->_ticketPrefix];
  if (v35->_prefixNeedsUnitNumber)
  {
    [v23 appendFormat:@"%lu", a4];
  }

  [v23 appendFormat:@", %@", v35->_ticketSuffix];
  [v26 setObject:v36 forKeyedSubscript:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)requiredTSSOptions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_tlvs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 tssOption] == -2001563388)
          {
            v11 = 4;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563387)
          {
            v11 = 5;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563386)
          {
            v11 = 7;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563339)
          {
            v11 = 29;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563385)
          {
            v11 = 24;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563383)
          {
            v11 = 8;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563382)
          {
            v11 = 9;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563381)
          {
            v11 = 10;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563343)
          {
            v11 = 25;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563342)
          {
            v11 = 26;
            goto LABEL_29;
          }

          if ([v10 tssOption] == -2001563341)
          {
            v11 = 27;
LABEL_29:
            v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
            [v3 addObject:v12];
          }

          continue;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)getDataBlock:(unint64_t)a3 offset:(unint64_t)a4
{
  v5 = [(NSData *)self->_data subdataWithRange:a4, a3];
  self->_totalBytesRequested += [v5 length];

  return v5;
}

- (void)logInternal:(id)a3 arguments:(char *)a4
{
  v6 = MEMORY[0x277CCAB68];
  v7 = a3;
  v8 = [[v6 alloc] initWithFormat:v7 arguments:a4];

  [v8 appendString:@"\n"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    delegateQueue = self->_delegateQueue;
    if (delegateQueue)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __41__UARPSuperBinary_logInternal_arguments___block_invoke;
      v12[3] = &unk_278EC1140;
      v12[4] = self;
      v13 = v8;
      dispatch_async(delegateQueue, v12);
    }

    else
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 superbinary:self logString:v8];
    }
  }
}

void __41__UARPSuperBinary_logInternal_arguments___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained superbinary:*(a1 + 32) logString:*(a1 + 40)];
}

@end