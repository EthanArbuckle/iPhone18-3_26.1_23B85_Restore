@interface HDClinicalDataCollectionExtractionResult
- (HDClinicalDataCollectionExtractionResult)initWithCoder:(id)coder;
- (HDClinicalDataCollectionExtractionResult)initWithRedactedResources:(id)resources rulesVersion:(id)version;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalDataCollectionExtractionResult

- (HDClinicalDataCollectionExtractionResult)initWithRedactedResources:(id)resources rulesVersion:(id)version
{
  resourcesCopy = resources;
  versionCopy = version;
  v8 = [(HDClinicalDataCollectionExtractionResult *)self init];
  if (v8)
  {
    v9 = [resourcesCopy copy];
    redactedResources = v8->_redactedResources;
    v8->_redactedResources = v9;

    v11 = [versionCopy copy];
    rulesVersion = v8->_rulesVersion;
    v8->_rulesVersion = v11;
  }

  return v8;
}

- (HDClinicalDataCollectionExtractionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"RedactedResources"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RulesVersion"];
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
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    self = [(HDClinicalDataCollectionExtractionResult *)self initWithRedactedResources:v6 rulesVersion:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  redactedResources = self->_redactedResources;
  coderCopy = coder;
  [coderCopy encodeObject:redactedResources forKey:@"RedactedResources"];
  [coderCopy encodeObject:self->_rulesVersion forKey:@"RulesVersion"];
}

@end