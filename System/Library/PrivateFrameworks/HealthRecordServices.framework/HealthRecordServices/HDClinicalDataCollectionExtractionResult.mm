@interface HDClinicalDataCollectionExtractionResult
- (HDClinicalDataCollectionExtractionResult)initWithCoder:(id)a3;
- (HDClinicalDataCollectionExtractionResult)initWithRedactedResources:(id)a3 rulesVersion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalDataCollectionExtractionResult

- (HDClinicalDataCollectionExtractionResult)initWithRedactedResources:(id)a3 rulesVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDClinicalDataCollectionExtractionResult *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    redactedResources = v8->_redactedResources;
    v8->_redactedResources = v9;

    v11 = [v7 copy];
    rulesVersion = v8->_rulesVersion;
    v8->_rulesVersion = v11;
  }

  return v8;
}

- (HDClinicalDataCollectionExtractionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"RedactedResources"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RulesVersion"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  else
  {
    self = [(HDClinicalDataCollectionExtractionResult *)self initWithRedactedResources:v6 rulesVersion:v7];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  redactedResources = self->_redactedResources;
  v5 = a3;
  [v5 encodeObject:redactedResources forKey:@"RedactedResources"];
  [v5 encodeObject:self->_rulesVersion forKey:@"RulesVersion"];
}

@end