@interface _DPSymmetricRAPPORLegacyBudgetAuditor
- (_DPSymmetricRAPPORLegacyBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error;
@end

@implementation _DPSymmetricRAPPORLegacyBudgetAuditor

- (_DPSymmetricRAPPORLegacyBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error
{
  metadataCopy = metadata;
  parametersCopy = parameters;
  v10 = [parametersCopy objectForKeyedSubscript:@"DefaultMinBatchSize"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@) in plist, expected numbers.", @"DefaultMinBatchSize"];
    v17 = _DPPrivacyBudgetError(7, v20);

    v21 = +[_DPLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_DPSemanticVersion initWithString:v17 error:v21];
    }

    if (error)
    {
      v22 = v17;
      selfCopy = 0;
      *error = v17;
      goto LABEL_11;
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  v12 = [parametersCopy objectForKeyedSubscript:@"DefaultMinBatchSize"];
  unsignedIntValue = [v12 unsignedIntValue];

  v14 = [parametersCopy objectForKeyedSubscript:@"epsilon"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [[_DPSymmetricRAPPORWithOHE alloc] initWithBatchSize:unsignedIntValue localEpsilon:error error:v16];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = +[_DPLog framework];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [_DPSymmetricRAPPORLegacyBudgetAuditor initWithMetadata:unsignedIntValue plistParameters:v18 error:v16];
  }

  v24.receiver = self;
  v24.super_class = _DPSymmetricRAPPORLegacyBudgetAuditor;
  self = [(_DPBudgetAuditor *)&v24 initWithMetadata:metadataCopy plistParameters:parametersCopy targetADP:0 maxADP:0 analysis:v17 error:error];
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (void)initWithMetadata:(int)a1 plistParameters:(NSObject *)a2 error:(double)a3 .cold.2(int a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_22622D000, a2, OS_LOG_TYPE_DEBUG, "Symmetric RAPPOR legacy budget auditor uses min batch size = %d, local epsilon = %f", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end