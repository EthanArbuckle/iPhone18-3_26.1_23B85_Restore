@interface UARPDynamicAssetVersions
+ (id)tag;
- (BOOL)decomposeUARP;
- (UARPDynamicAssetVersions)init;
- (UARPDynamicAssetVersions)initWithURL:(id)l;
- (id)description;
@end

@implementation UARPDynamicAssetVersions

- (UARPDynamicAssetVersions)init
{
  [(UARPDynamicAssetVersions *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetVersions)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = UARPDynamicAssetVersions;
  v5 = [(UARPDynamicAssetVersions *)&v11 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    serialNumbers = v5->_serialNumbers;
    v5->_serialNumbers = v8;
  }

  return v5;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"Partner Serial Numbers: "];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_serialNumbers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@, ", *(*(&v11 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)decomposeUARP
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if ([(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0])
  {
    tlvs = [(UARPSuperBinaryAsset *)self->_asset tlvs];
    v6 = [UARPSuperBinaryAssetTLV findTLVsWithType:1155952129 tlvs:tlvs];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          valueAsString = [*(*(&v16 + 1) + 8 * i) valueAsString];
          if (!valueAsString || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [UARPDynamicAssetVersions decomposeUARP];
            }

            v13 = 0;
            goto LABEL_17;
          }

          [(NSMutableArray *)self->_serialNumbers addObject:valueAsString];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v13 = 1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 1;
    }

LABEL_17:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)tag
{
  v2 = uarpAssetTagStructVersions();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

@end