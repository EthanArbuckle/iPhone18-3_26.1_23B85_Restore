@interface CPLBatchExtractionStep
- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6;
- (CPLBatchExtractionStep)initWithStorage:(id)a3 scopeIdentifier:(id)a4;
- (id)description;
- (void)resetConditionallyFromNewIncomingChange:(id)a3;
@end

@implementation CPLBatchExtractionStep

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CPLBatchExtractionStep *)self shortDescription];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, v5];

  return v6;
}

- (void)resetConditionallyFromNewIncomingChange:(id)a3
{
  if ([(CPLBatchExtractionStep *)self shouldResetFromThisStepWithIncomingChange:a3])
  {

    [(CPLBatchExtractionStep *)self reset];
  }
}

- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [CPLErrors notImplementedError:a3];
  }

  return 0;
}

- (CPLBatchExtractionStep)initWithStorage:(id)a3 scopeIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CPLBatchExtractionStep;
  v9 = [(CPLBatchExtractionStep *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, a3);
    v11 = [v8 copy];
    scopeIdentifier = v10->_scopeIdentifier;
    v10->_scopeIdentifier = v11;
  }

  return v10;
}

@end