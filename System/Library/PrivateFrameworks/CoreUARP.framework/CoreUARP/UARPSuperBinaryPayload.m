@interface UARPSuperBinaryPayload
- (BOOL)expandTLVs;
- (BOOL)queryTatsuSigningServer:(id)a3 ssoOnly:(BOOL)a4 error:(id *)a5;
- (UARPSuperBinaryPayload)initWithData:(id)a3 metaData:(id)a4 tag:(id)a5 version:(id)a6;
- (id)description;
- (id)personalizedData;
- (id)personalizedMetaData;
- (id)requiredTSSOptions;
- (id)tatsuMeasurements:(unint64_t)a3;
- (id)tssKeyName:(id)a3 unitNumber:(unint64_t)a4;
- (void)addSubfile:(id)a3 tag:(id)a4;
- (void)processMeasurementsForTSSOptions:(id)a3 unitNumber:(unint64_t)a4 asMeasurement:(BOOL)a5;
- (void)processTLVsForPersonalization;
- (void)removeSubfile:(id)a3 tag:(id)a4;
@end

@implementation UARPSuperBinaryPayload

- (UARPSuperBinaryPayload)initWithData:(id)a3 metaData:(id)a4 tag:(id)a5 version:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v36.receiver = self;
  v36.super_class = UARPSuperBinaryPayload;
  v14 = [(UARPSuperBinaryPayload *)&v36 init];
  if (v14)
  {
    v15 = [v12 copy];
    tag = v14->_tag;
    v14->_tag = v15;

    v17 = [v13 copy];
    version = v14->_version;
    v14->_version = v17;

    v19 = [v10 copy];
    payloadData = v14->_payloadData;
    v14->_payloadData = v19;

    v21 = [v11 copy];
    metaData = v14->_metaData;
    v14->_metaData = v21;

    v23 = objc_opt_new();
    tlvs = v14->_tlvs;
    v14->_tlvs = v23;

    v25 = objc_opt_new();
    measurements = v14->_measurements;
    v14->_measurements = v25;

    v27 = objc_opt_new();
    tssRequest = v14->_tssRequest;
    v14->_tssRequest = v27;

    v29 = objc_opt_new();
    trimmedTlvs = v14->_trimmedTlvs;
    v14->_trimmedTlvs = v29;

    v31 = objc_opt_new();
    subfiles = v14->_subfiles;
    v14->_subfiles = v31;

    v33 = [[FTABFile alloc] initWithData:v14->_payloadData];
    ftab = v14->_ftab;
    v14->_ftab = v33;
  }

  return v14;
}

- (id)personalizedData
{
  if (self->_ftab)
  {
    if ([(NSMutableArray *)self->_subfiles count])
    {
      [(FTABFile *)self->_ftab addSubfiles:self->_subfiles];
    }

    if (self->_manifest)
    {
      [(FTABFile *)self->_ftab setManifest:?];
    }

    v3 = [(FTABFile *)self->_ftab writeToData];
  }

  else
  {
    v3 = self->_payloadData;
  }

  return v3;
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

  if (!v21->_ftab)
  {
    manifest = v21->_manifest;
    if (manifest)
    {
      v10 = [UARPMetaDataTLV tlvFromType:2293403952 length:[(NSData *)manifest length] value:[(NSData *)v21->_manifest bytes]];
      if (v10)
      {
        [(NSMutableArray *)v21->_trimmedTlvs addObject:v10];
      }
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

  [(UARPSuperBinaryPayload *)self processTLVsForPersonalization];
  return 1;
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

- (void)processTLVsForPersonalization
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_tlvs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_needsHostPersonalization = [v8 isRequired] != 0;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            v10 = [v9 ticketPrefix];
            ticketPrefix = self->_ticketPrefix;
            self->_ticketPrefix = v10;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              self->_ticketNeedsUnitNumber = [v8 ticketNeedsLogicalUnitNumber] != 0;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                self->_prefixNeedsUnitNumber = [v8 prefixNeedsLogicalUnitNumber] != 0;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  self->_suffixNeedsUnitNumber = [v8 suffixNeedsLogicalUnitNumber] != 0;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSMutableArray *)self->_measurements addObject:v8, v13];
                  }
                }
              }
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processMeasurementsForTSSOptions:(id)a3 unitNumber:(unint64_t)a4 asMeasurement:(BOOL)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = self;
  obj = self->_measurements;
  v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v29)
  {
    v26 = *v38;
    do
    {
      v6 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v6;
        v7 = *(*(&v37 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = [v7 tlvs];
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (!v10)
        {
          v12 = 0;
          goto LABEL_38;
        }

        v11 = v10;
        v12 = 0;
        v13 = *v34;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v33 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
              v17 = [v16 longname];

              v12 = v17;
              continue;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v15 digest];
              [v8 setObject:v18 forKeyedSubscript:@"Digest"];

              continue;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (a5)
              {
                continue;
              }

              if ([(UARPSuperBinaryPayload *)v31 securityMode])
              {
                v19 = MEMORY[0x277CBEC38];
              }

              else
              {
                v19 = MEMORY[0x277CBEC28];
              }

              v20 = v8;
              v21 = @"ESEC";
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (a5)
              {
                continue;
              }

              if ([(UARPSuperBinaryPayload *)v31 productionMode])
              {
                v19 = MEMORY[0x277CBEC38];
              }

              else
              {
                v19 = MEMORY[0x277CBEC28];
              }

              v20 = v8;
              v21 = @"EPRO";
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [v15 trusted];
              if (!a5)
              {
                if (v22)
                {
                  v19 = MEMORY[0x277CBEC38];
                }

                else
                {
                  v19 = MEMORY[0x277CBEC28];
                }

                v20 = v8;
                v21 = @"Trusted";
LABEL_33:
                [v20 setObject:v19 forKeyedSubscript:v21];
                continue;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v11);
LABEL_38:

        v23 = objc_opt_new();
        [v23 appendFormat:@"%@", v31->_ticketPrefix];
        if (v31->_prefixNeedsUnitNumber)
        {
          [v23 appendFormat:@"%lu", a4];
        }

        [v23 appendFormat:@", %@", v12];
        if (v31->_suffixNeedsUnitNumber)
        {
          [v23 appendFormat:@", %lu", a4];
        }

        [v28 setObject:v8 forKeyedSubscript:v23];

        v6 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v29);
  }

  v24 = *MEMORY[0x277D85DE8];
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

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Payload - 4cc <%@> - Version <%@> - TLVs - %@", self->_tag, self->_version, self->_tlvs];
  v4 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v4;
}

- (id)tatsuMeasurements:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_tlvs count];
  if (v5)
  {
    v5 = [(UARPSuperBinaryPayload *)self composeTSSRequest:a3 asMeasurement:1];
  }

  return v5;
}

- (void)addSubfile:(id)a3 tag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[FTABSubfile alloc] initWithTag:v6 data:v7];

  [(NSMutableArray *)self->_subfiles addObject:v8];
}

- (void)removeSubfile:(id)a3 tag:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_subfiles;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      v12 = [v11 tag];
      v13 = [v12 compare:v5];

      if (!v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v14 = v11;

    if (!v14)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)self->_subfiles removeObject:v14];
    v6 = v14;
  }

LABEL_12:

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
}

@end