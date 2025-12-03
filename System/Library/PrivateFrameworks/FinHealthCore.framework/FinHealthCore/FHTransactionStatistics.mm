@interface FHTransactionStatistics
- (BOOL)isEqual:(id)equal;
- (FHTransactionStatistics)initWithCoder:(id)coder;
- (FHTransactionStatistics)initWithTransactionAggregateRecords:(id)records timeWindow:(unint64_t)window;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransactionStatistics

- (void)encodeWithCoder:(id)coder
{
  aggregateRecords = self->_aggregateRecords;
  coderCopy = coder;
  [coderCopy encodeObject:aggregateRecords forKey:@"aggregateRecords"];
  [coderCopy encodeInteger:self->_timeWindow forKey:@"timeWindow"];
}

- (FHTransactionStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FHTransactionStatistics;
  v5 = [(FHTransactionStatistics *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"aggregateRecords"];
    aggregateRecords = v5->_aggregateRecords;
    v5->_aggregateRecords = v6;

    v5->_timeWindow = [coderCopy decodeIntegerForKey:@"timeWindow"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (timeWindow = self->_timeWindow, timeWindow == [(FHTransactionStatistics *)v5 timeWindow]))
  {
    aggregateRecords = self->_aggregateRecords;
    aggregateRecords = [(FHTransactionStatistics *)v5 aggregateRecords];
    v9 = [(NSArray *)aggregateRecords isEqual:aggregateRecords];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"aggregateRecords", self->_aggregateRecords];
  [v3 appendFormat:@"%@: '%lu'; ", @"timeWindow", self->_timeWindow];

  return v3;
}

- (FHTransactionStatistics)initWithTransactionAggregateRecords:(id)records timeWindow:(unint64_t)window
{
  recordsCopy = records;
  v11.receiver = self;
  v11.super_class = FHTransactionStatistics;
  v8 = [(FHTransactionStatistics *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_aggregateRecords, records);
    v9->_timeWindow = window;
  }

  return v9;
}

@end