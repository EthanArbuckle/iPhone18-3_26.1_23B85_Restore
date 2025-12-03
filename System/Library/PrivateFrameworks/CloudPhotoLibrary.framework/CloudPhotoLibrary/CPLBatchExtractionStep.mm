@interface CPLBatchExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
- (CPLBatchExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier;
- (id)description;
- (void)resetConditionallyFromNewIncomingChange:(id)change;
@end

@implementation CPLBatchExtractionStep

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  shortDescription = [(CPLBatchExtractionStep *)self shortDescription];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, shortDescription];

  return v6;
}

- (void)resetConditionallyFromNewIncomingChange:(id)change
{
  if ([(CPLBatchExtractionStep *)self shouldResetFromThisStepWithIncomingChange:change])
  {

    [(CPLBatchExtractionStep *)self reset];
  }
}

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  if (error)
  {
    *error = [CPLErrors notImplementedError:batch];
  }

  return 0;
}

- (CPLBatchExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier
{
  storageCopy = storage;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CPLBatchExtractionStep;
  v9 = [(CPLBatchExtractionStep *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, storage);
    v11 = [identifierCopy copy];
    scopeIdentifier = v10->_scopeIdentifier;
    v10->_scopeIdentifier = v11;
  }

  return v10;
}

@end