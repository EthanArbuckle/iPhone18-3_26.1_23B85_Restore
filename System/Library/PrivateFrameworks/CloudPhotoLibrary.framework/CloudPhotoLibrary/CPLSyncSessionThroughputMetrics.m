@interface CPLSyncSessionThroughputMetrics
- (CPLSyncSessionThroughputMetrics)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CPLSyncSessionThroughputMetrics

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p %@>", objc_opt_class(), self, self->_metricsIdentifier];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CPLSyncSessionThroughputMetrics alloc] initWithIdentifier:self->_metricsIdentifier];
  objc_storeStrong(&v4->_startTime, self->_startTime);
  v4->_totalCount = self->_totalCount;
  return v4;
}

- (CPLSyncSessionThroughputMetrics)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLSyncSessionThroughputMetrics;
  v6 = [(CPLSyncSessionThroughputMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricsIdentifier, a3);
  }

  return v7;
}

@end