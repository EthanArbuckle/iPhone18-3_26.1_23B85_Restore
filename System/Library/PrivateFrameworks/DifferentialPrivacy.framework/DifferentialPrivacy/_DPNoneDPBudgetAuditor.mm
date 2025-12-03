@interface _DPNoneDPBudgetAuditor
- (_DPNoneDPBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error;
@end

@implementation _DPNoneDPBudgetAuditor

- (_DPNoneDPBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error
{
  metadataCopy = metadata;
  parametersCopy = parameters;
  if ([_DPAlgorithmParameters allowDPMechanismNone:parametersCopy])
  {
    if (_DPMetadataIsDPMechanismNone(metadataCopy))
    {
      v17.receiver = self;
      v17.super_class = _DPNoneDPBudgetAuditor;
      self = [(_DPBudgetAuditor *)&v17 initWithMetadata:metadataCopy plistParameters:parametersCopy targetADP:0 maxADP:0 analysis:0 error:error];
      selfCopy = self;
      goto LABEL_11;
    }

    metadataCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid DPMechanism=%@.", metadataCopy];
    v12 = _DPPrivacyBudgetError(8, metadataCopy);

    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }
  }

  else
  {
    parametersCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DPMechanismNone is not allowed with plistParameters=%@.", parametersCopy];
    v12 = _DPPrivacyBudgetError(7, parametersCopy);

    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      [_DPSemanticVersion initWithString:v12 error:v13];
    }
  }

  if (error)
  {
    v15 = v12;
    *error = v12;
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

@end