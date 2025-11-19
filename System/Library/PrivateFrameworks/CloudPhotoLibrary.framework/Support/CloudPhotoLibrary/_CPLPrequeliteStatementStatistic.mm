@interface _CPLPrequeliteStatementStatistic
- (_CPLPrequeliteStatementStatistic)initWithStatement:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation _CPLPrequeliteStatementStatistic

- (_CPLPrequeliteStatementStatistic)initWithStatement:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _CPLPrequeliteStatementStatistic;
  v5 = [(_CPLPrequeliteStatementStatistic *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    statement = v5->_statement;
    v5->_statement = v6;
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  durationInNanoSeconds = self->_durationInNanoSeconds;
  v4 = *(a3 + 4);
  v5 = durationInNanoSeconds > v4;
  v6 = durationInNanoSeconds != v4;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"%lu * %@", self->_count, self->_statement];
  v4 = v3;
  resultsCount = self->_resultsCount;
  durationInNanoSeconds = self->_durationInNanoSeconds;
  if (durationInNanoSeconds)
  {
    v7 = durationInNanoSeconds * 0.000001;
    if (resultsCount)
    {
      [v3 appendFormat:@" (%lu results - %0.0fms)", resultsCount, *&v7];
    }

    else
    {
      [v3 appendFormat:@" (%0.0fms)", *&v7, v9];
    }
  }

  else if (resultsCount)
  {
    [v3 appendFormat:@" (%lu results)", self->_resultsCount, v9];
  }

  return v4;
}

@end