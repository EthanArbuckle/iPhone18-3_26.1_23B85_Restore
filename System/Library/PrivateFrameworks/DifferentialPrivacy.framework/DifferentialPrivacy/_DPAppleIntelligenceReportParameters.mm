@interface _DPAppleIntelligenceReportParameters
+ (BOOL)isValidDonation:(id)donation;
- (_DPAppleIntelligenceReportParameters)initWithDonation:(id)donation;
@end

@implementation _DPAppleIntelligenceReportParameters

- (_DPAppleIntelligenceReportParameters)initWithDonation:(id)donation
{
  donationCopy = donation;
  if ([objc_opt_class() isValidDonation:donationCopy])
  {
    metadata = [donationCopy metadata];
    v6 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];
    v7 = [v6 objectForKeyedSubscript:@"DPConfig"];
    v22.receiver = self;
    v22.super_class = _DPAppleIntelligenceReportParameters;
    v8 = [(_DPAppleIntelligenceReportParameters *)&v22 init];
    if (v8)
    {
      v9 = [donationCopy key];
      v10 = [v9 copy];
      key = v8->_key;
      v8->_key = v10;

      v12 = [v6 objectForKeyedSubscript:@"TaskExpiration"];
      v8->_taskExpiration = [v12 unsignedLongLongValue];

      v13 = [v6 objectForKeyedSubscript:@"MinBatchSize"];
      v8->_minBatchSize = [v13 unsignedIntValue];

      v8->_privateAccessToken = [donationCopy isFeatureEnabled:@"PrivateAccessToken" withError:0];
      v8->_ohttp = [donationCopy isFeatureEnabled:@"OHTTP" withError:0];
      v14 = [v7 objectForKeyedSubscript:@"TargetCentralEpsilon"];
      [v14 doubleValue];
      v8->_targetCentralEpsilon = v15;

      v16 = [v7 objectForKeyedSubscript:@"TargetCentralDelta"];
      [v16 doubleValue];
      v8->_targetCentralDelta = v17;

      v18 = [v7 objectForKeyedSubscript:@"LocalEpsilon"];
      [v18 doubleValue];
      v8->_localEpsilon = v19;
    }

    self = v8;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)isValidDonation:(id)donation
{
  v32 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  metadata = [donationCopy metadata];
  if (_DPDediscoVersionWithMetadata(metadata) <= 1)
  {
    v5 = +[_DPLog framework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_DPAppleIntelligenceReportParameters *)donationCopy isValidDonation:v5];
    }

LABEL_17:
    v16 = 0;
    goto LABEL_23;
  }

  v6 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed kDPMetadataDediscoTaskConfig in metadata, expected a dictionary."];
    v5 = [_DPTransparencyLogError errorWithCode:5 description:v17];

    v18 = +[_DPLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_DPSemanticVersion initWithString:v5 error:v18];
    }

    goto LABEL_17;
  }

  v5 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30[0] = @"MinBatchSize";
  v30[1] = @"TaskExpiration";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:v13];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if ((v15 & 1) == 0)
        {
          v19 = MEMORY[0x277CCACA8];
          v20 = [v5 objectForKeyedSubscript:v13];
          v21 = [v19 stringWithFormat:@"Malformed parameter (%@.%@) in metadata, expected numbers, got=%@", @"DediscoTaskConfig", @"DediscoTaskConfig", objc_opt_class()];
          v22 = [_DPTransparencyLogError errorWithCode:5 description:v21];

          v23 = +[_DPLog framework];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [_DPSemanticVersion initWithString:v22 error:v23];
          }

          v16 = 0;
          goto LABEL_22;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v16 = 1;
  }

  else
  {
    v16 = 1;
  }

LABEL_22:

LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (void)isValidDonation:(void *)a1 .cold.3(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 key];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Unsupported version for collectionID=%@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end