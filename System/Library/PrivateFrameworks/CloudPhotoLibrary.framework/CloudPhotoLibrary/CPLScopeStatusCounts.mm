@interface CPLScopeStatusCounts
- (CPLScopeStatusCounts)initWithCoder:(id)coder;
- (CPLScopeStatusCounts)initWithFlagsCounts:(id)counts;
- (id)description;
- (void)_computeSummariesIfNecessary;
@end

@implementation CPLScopeStatusCounts

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ ", objc_opt_class()];
  [(CPLScopeStatusCounts *)self _computeSummariesIfNecessary];
  [v3 appendFormat:@"sharing records: %tu / unsharing records: %tu", self->_countOfSharingRecords, self->_countOfUnsharingRecords];
  [v3 appendString:@">"];

  return v3;
}

- (void)_computeSummariesIfNecessary
{
  if (!self->_hasCachedSummaries)
  {
    countPerFlags = self->_countPerFlags;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__CPLScopeStatusCounts__computeSummariesIfNecessary__block_invoke;
    v4[3] = &unk_1E8620B60;
    v4[4] = self;
    [(NSDictionary *)countPerFlags enumerateKeysAndObjectsUsingBlock:v4];
    self->_hasCachedSummaries = 1;
  }
}

uint64_t __52__CPLScopeStatusCounts__computeSummariesIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 integerValue];
  if (v5)
  {
    v7 = 16;
    v8 = v10;
  }

  else
  {
    v6 = v10;
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = 24;
    v8 = v10;
  }

  v5 = [v8 unsignedIntegerValue];
  v6 = v10;
  *(*(a1 + 32) + v7) += v5;
LABEL_6:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (CPLScopeStatusCounts)initWithCoder:(id)coder
{
  v4 = initWithCoder__onceToken_24881;
  coderCopy = coder;
  if (v4 != -1)
  {
    dispatch_once(&initWithCoder__onceToken_24881, &__block_literal_global_24882);
  }

  v6 = [coderCopy decodeObjectOfClasses:initWithCoder__countPerFlagsClasses forKey:@"counts"];

  v7 = [(CPLScopeStatusCounts *)self initWithFlagsCounts:v6];
  return v7;
}

uint64_t __38__CPLScopeStatusCounts_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  v3 = initWithCoder__countPerFlagsClasses;
  initWithCoder__countPerFlagsClasses = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (CPLScopeStatusCounts)initWithFlagsCounts:(id)counts
{
  countsCopy = counts;
  v9.receiver = self;
  v9.super_class = CPLScopeStatusCounts;
  v5 = [(CPLScopeStatusCounts *)&v9 init];
  if (v5)
  {
    v6 = [countsCopy copy];
    countPerFlags = v5->_countPerFlags;
    v5->_countPerFlags = v6;
  }

  return v5;
}

@end