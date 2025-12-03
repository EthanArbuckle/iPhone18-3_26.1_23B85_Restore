@interface _DPRandomizerUtils
+ (id)auditedDPParametersWithMetadata:(id)metadata maxCentralEpsilon:(double)epsilon maxCentralDelta:(double)delta;
+ (id)dimensionFromMetadata:(id)metadata;
@end

@implementation _DPRandomizerUtils

+ (id)auditedDPParametersWithMetadata:(id)metadata maxCentralEpsilon:(double)epsilon maxCentralDelta:(double)delta
{
  metadataCopy = metadata;
  IsV2 = _DPMetadataIsV2(metadataCopy);
  v9 = [_DPDPGaussianMechanismParameter alloc];
  if (IsV2)
  {
    v10 = [(_DPDPGaussianMechanismParameter *)v9 initWithV2Metadata:metadataCopy maxCentralEpsilon:epsilon maxCentralDelta:delta];
  }

  else
  {
    v10 = [(_DPDPGaussianMechanismParameter *)v9 initWithV1Metadata:metadataCopy maxCentralEpsilon:epsilon maxCentralDelta:delta];
  }

  v11 = v10;

  if (v11)
  {
    auditedMetadata = [v11 auditedMetadata];
  }

  else
  {
    auditedMetadata = 0;
  }

  return auditedMetadata;
}

+ (id)dimensionFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (_DPMetadataIsV2(metadataCopy))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"DediscoTaskConfig", @"VDAFConfig", @"Dimensionality"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"AlgorithmParameters", @"Dimensionality", v9];
  }
  v4 = ;
  v5 = [metadataCopy valueForKeyPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v7 = +[_DPLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[_DPRandomizerUtils dimensionFromMetadata:];
    }

    v6 = 0;
  }

  return v6;
}

+ (void)dimensionFromMetadata:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end