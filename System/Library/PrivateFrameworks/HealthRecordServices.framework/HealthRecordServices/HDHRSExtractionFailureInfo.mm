@interface HDHRSExtractionFailureInfo
- (HDHRSExtractionFailureInfo)init;
- (HDHRSExtractionFailureInfo)initWithCoder:(id)coder;
- (NSArray)failureRecords;
- (id)description;
- (void)addFailureRecord:(id)record;
@end

@implementation HDHRSExtractionFailureInfo

- (HDHRSExtractionFailureInfo)init
{
  v3.receiver = self;
  v3.super_class = HDHRSExtractionFailureInfo;
  return [(HDHRSExtractionFailureInfo *)&v3 init];
}

- (HDHRSExtractionFailureInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HDHRSExtractionFailureInfo;
  v5 = [(HDHRSExtractionFailureInfo *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"FailureRecords"];
    failureRecords = v5->_failureRecords;
    v5->_failureRecords = v7;
  }

  return v5;
}

- (void)addFailureRecord:(id)record
{
  recordCopy = record;
  failureRecords = self->_failureRecords;
  v8 = recordCopy;
  if (!failureRecords)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_failureRecords;
    self->_failureRecords = v6;

    recordCopy = v8;
    failureRecords = self->_failureRecords;
  }

  [(NSMutableArray *)failureRecords addObject:recordCopy];
}

- (NSArray)failureRecords
{
  failureRecords = self->_failureRecords;
  if (failureRecords)
  {
    v4 = [(NSMutableArray *)failureRecords copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)description
{
  v3 = [(NSMutableArray *)self->_failureRecords count];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v7 = [(NSMutableArray *)self->_failureRecords hk_map:&__block_literal_global_6];
    v8 = [v7 componentsJoinedByString:@"\n\t"];
    v9 = [v4 stringWithFormat:@"<%@ %p>\n\t%@", v6, self, v8];
  }

  else
  {
    v9 = [v4 stringWithFormat:@"<%@ %p> (no failure records)", v5, self];
  }

  return v9;
}

@end