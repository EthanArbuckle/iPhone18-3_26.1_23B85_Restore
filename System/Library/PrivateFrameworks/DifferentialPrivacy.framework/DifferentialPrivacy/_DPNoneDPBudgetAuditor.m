@interface _DPNoneDPBudgetAuditor
- (_DPNoneDPBudgetAuditor)initWithMetadata:(id)a3 plistParameters:(id)a4 error:(id *)a5;
@end

@implementation _DPNoneDPBudgetAuditor

- (_DPNoneDPBudgetAuditor)initWithMetadata:(id)a3 plistParameters:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([_DPAlgorithmParameters allowDPMechanismNone:v9])
  {
    if (_DPMetadataIsDPMechanismNone(v8))
    {
      v17.receiver = self;
      v17.super_class = _DPNoneDPBudgetAuditor;
      self = [(_DPBudgetAuditor *)&v17 initWithMetadata:v8 plistParameters:v9 targetADP:0 maxADP:0 analysis:0 error:a5];
      v10 = self;
      goto LABEL_11;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid DPMechanism=%@.", v8];
    v12 = _DPPrivacyBudgetError(8, v14);

    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPMechanismNone is not allowed with plistParameters=%@.", v9];
    v12 = _DPPrivacyBudgetError(7, v11);

    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      [_DPSemanticVersion initWithString:v12 error:v13];
    }
  }

  if (a5)
  {
    v15 = v12;
    *a5 = v12;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

@end