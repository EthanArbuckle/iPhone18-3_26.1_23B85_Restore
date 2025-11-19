@interface UARPMetaDataTLV
+ (id)metaDataTable;
+ (id)tlvFromKey:(id)a3 value:(id)a4;
- (UARPMetaDataTLV)init;
- (UARPMetaDataTLV)initWithType:(unsigned int)a3 length:(unsigned int)a4 value:(void *)a5;
- (id)generateTLV;
@end

@implementation UARPMetaDataTLV

- (UARPMetaDataTLV)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (UARPMetaDataTLV)initWithType:(unsigned int)a3 length:(unsigned int)a4 value:(void *)a5
{
  v13.receiver = self;
  v13.super_class = UARPMetaDataTLV;
  v8 = [(UARPMetaDataTLV *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvType = a3;
    v8->_tlvLength = a4;
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:a5 length:a4];
    tlvValue = v9->_tlvValue;
    v9->_tlvValue = v10;
  }

  return v9;
}

+ (id)tlvFromKey:(id)a3 value:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = a4;
  v6 = +[UARPMetaDataTLV metaDataTable];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"Name"];
        if (![v5 caseInsensitiveCompare:v13])
        {
          v14 = [v12 objectForKeyedSubscript:@"Value"];
          v15 = [v14 unsignedLongValue] + 2001563392;
          if (v15 <= 0x35 && ((0x3F036601FFFFFFuLL >> v15) & 1) != 0)
          {
            v16 = [(__objc2_class *)*off_278EC1180[v15] tlvFromPropertyListValue:v20];
            v17 = v9;
            v9 = v16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)metaDataTable
{
  if (metaDataTable_once != -1)
  {
    +[UARPMetaDataTLV metaDataTable];
  }

  v3 = metaDataTable_table;

  return v3;
}

void __32__UARPMetaDataTLV_metaDataTable__block_invoke()
{
  v39 = objc_opt_new();
  v0 = +[UARPTLVPersonalizationRequired metaDataTableEntry];
  [v39 addObject:v0];

  v1 = +[UARPTLVPersonalizationPayloadTag metaDataTableEntry];
  [v39 addObject:v1];

  v2 = +[UARPTLVPersonalizationSuperBinaryAssetID metaDataTableEntry];
  [v39 addObject:v2];

  v3 = +[UARPTLVPersonalizationManifestPrefix metaDataTableEntry];
  [v39 addObject:v3];

  v4 = +[UARPTLVPersonalizationBoardID metaDataTableEntry];
  [v39 addObject:v4];

  v5 = +[UARPTLVPersonalizationChipID metaDataTableEntry];
  [v39 addObject:v5];

  v6 = +[UARPTLVPersonalizationECID metaDataTableEntry];
  [v39 addObject:v6];

  v7 = +[UARPTLVPersonalizationECIDData metaDataTableEntry];
  [v39 addObject:v7];

  v8 = +[UARPTLVPersonalizationNonce metaDataTableEntry];
  [v39 addObject:v8];

  v9 = +[UARPTLVPersonalizationNonceHash metaDataTableEntry];
  [v39 addObject:v9];

  v10 = +[UARPTLVPersonalizationSecurityDomain metaDataTableEntry];
  [v39 addObject:v10];

  v11 = +[UARPTLVPersonalizationSecurityMode metaDataTableEntry];
  [v39 addObject:v11];

  v12 = +[UARPTLVPersonalizationProductionMode metaDataTableEntry];
  [v39 addObject:v12];

  v13 = +[UARPTLVPersonalizationChipEpoch metaDataTableEntry];
  [v39 addObject:v13];

  v14 = +[UARPTLVPersonalizationEnableMixMatch metaDataTableEntry];
  [v39 addObject:v14];

  v15 = +[UARPTLVPersonalizationSuperBinaryPayloadIndex metaDataTableEntry];
  [v39 addObject:v15];

  v16 = +[UARPTLVPersonalizationChipRevision metaDataTableEntry];
  [v39 addObject:v16];

  v17 = +[UARPTLVPersonalizationFTABSubfileTag metaDataTableEntry];
  [v39 addObject:v17];

  v18 = +[UARPTLVPersonalizationFTABSubfileLongname metaDataTableEntry];
  [v39 addObject:v18];

  v19 = +[UARPTLVPersonalizationFTABSubfileDigest metaDataTableEntry];
  [v39 addObject:v19];

  v20 = +[UARPTLVPersonalizationFTABSubfileHashAlgorithm metaDataTableEntry];
  [v39 addObject:v20];

  v21 = +[UARPTLVPersonalizationFTABSubfileESEC metaDataTableEntry];
  [v39 addObject:v21];

  v22 = +[UARPTLVPersonalizationFTABSubfileEPRO metaDataTableEntry];
  [v39 addObject:v22];

  v23 = +[UARPTLVPersonalizationFTABSubfileTrusted metaDataTableEntry];
  [v39 addObject:v23];

  v24 = +[UARPTLVPersonalizationSoCLiveNonce metaDataTableEntry];
  [v39 addObject:v24];

  v25 = +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumber metaDataTableEntry];
  [v39 addObject:v25];

  v26 = +[UARPTLVPersonalizationSuffixNeedsLogicalUnitNumber metaDataTableEntry];
  [v39 addObject:v26];

  v27 = +[UARPTLVPersonalizationLogicalUnitNumber metaDataTableEntry];
  [v39 addObject:v27];

  v28 = +[UARPTLVPersonalizationTicketNeedsLogicalUnitNumber metaDataTableEntry];
  [v39 addObject:v28];

  v29 = +[UARPTLVHostPersonalizationRequired metaDataTableEntry];
  [v39 addObject:v29];

  v30 = +[UARPTLVRequiredPersonalizationOption metaDataTableEntry];
  [v39 addObject:v30];

  v31 = +[UARPTLVPersonalizationFTABPayload metaDataTableEntry];
  [v39 addObject:v31];

  v32 = +[UARPTLVPersonalizedManifest metaDataTableEntry];
  [v39 addObject:v32];

  v33 = +[UARPTLVPersonalizationLife metaDataTableEntry];
  [v39 addObject:v33];

  v34 = +[UARPTLVPersonalizationProvisioning metaDataTableEntry];
  [v39 addObject:v34];

  v35 = +[UARPTLVPersonalizationManifestEpoch metaDataTableEntry];
  [v39 addObject:v35];

  v36 = +[UARPTLVPersonalizationManifestSuffix metaDataTableEntry];
  [v39 addObject:v36];

  v37 = [MEMORY[0x277CBEA60] arrayWithArray:v39];
  v38 = metaDataTable_table;
  metaDataTable_table = v37;
}

- (id)generateTLV
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v7 = uarpHtonl(self->_tlvType);
  [v3 appendBytes:&v7 length:4];
  v6 = uarpHtonl(self->_tlvLength);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_tlvValue];
  v4 = [MEMORY[0x277CBEA90] dataWithData:v3];

  return v4;
}

@end