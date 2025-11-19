@interface FHTransactionStatistics
- (BOOL)isEqual:(id)a3;
- (FHTransactionStatistics)initWithCoder:(id)a3;
- (FHTransactionStatistics)initWithTransactionAggregateRecords:(id)a3 timeWindow:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHTransactionStatistics

- (void)encodeWithCoder:(id)a3
{
  aggregateRecords = self->_aggregateRecords;
  v5 = a3;
  [v5 encodeObject:aggregateRecords forKey:@"aggregateRecords"];
  [v5 encodeInteger:self->_timeWindow forKey:@"timeWindow"];
}

- (FHTransactionStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FHTransactionStatistics;
  v5 = [(FHTransactionStatistics *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"aggregateRecords"];
    aggregateRecords = v5->_aggregateRecords;
    v5->_aggregateRecords = v6;

    v5->_timeWindow = [v4 decodeIntegerForKey:@"timeWindow"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (timeWindow = self->_timeWindow, timeWindow == [(FHTransactionStatistics *)v5 timeWindow]))
  {
    aggregateRecords = self->_aggregateRecords;
    v8 = [(FHTransactionStatistics *)v5 aggregateRecords];
    v9 = [(NSArray *)aggregateRecords isEqual:v8];
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

- (FHTransactionStatistics)initWithTransactionAggregateRecords:(id)a3 timeWindow:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FHTransactionStatistics;
  v8 = [(FHTransactionStatistics *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_aggregateRecords, a3);
    v9->_timeWindow = a4;
  }

  return v9;
}

@end