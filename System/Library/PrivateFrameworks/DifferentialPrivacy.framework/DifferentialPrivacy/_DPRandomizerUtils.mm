@interface _DPRandomizerUtils
+ (id)auditedDPParametersWithMetadata:(id)a3 maxCentralEpsilon:(double)a4 maxCentralDelta:(double)a5;
+ (id)dimensionFromMetadata:(id)a3;
@end

@implementation _DPRandomizerUtils

+ (id)auditedDPParametersWithMetadata:(id)a3 maxCentralEpsilon:(double)a4 maxCentralDelta:(double)a5
{
  v7 = a3;
  IsV2 = _DPMetadataIsV2(v7);
  v9 = [_DPDPGaussianMechanismParameter alloc];
  if (IsV2)
  {
    v10 = [(_DPDPGaussianMechanismParameter *)v9 initWithV2Metadata:v7 maxCentralEpsilon:a4 maxCentralDelta:a5];
  }

  else
  {
    v10 = [(_DPDPGaussianMechanismParameter *)v9 initWithV1Metadata:v7 maxCentralEpsilon:a4 maxCentralDelta:a5];
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 auditedMetadata];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)dimensionFromMetadata:(id)a3
{
  v3 = a3;
  if (_DPMetadataIsV2(v3))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"DediscoTaskConfig", @"VDAFConfig", @"Dimensionality"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"AlgorithmParameters", @"Dimensionality", v9];
  }
  v4 = ;
  v5 = [v3 valueForKeyPath:v4];

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