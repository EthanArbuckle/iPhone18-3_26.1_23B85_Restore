@interface CPLSyncSessionThroughputMetrics
- (CPLSyncSessionThroughputMetrics)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CPLSyncSessionThroughputMetrics

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p %@>", objc_opt_class(), self, self->_metricsIdentifier];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CPLSyncSessionThroughputMetrics alloc] initWithIdentifier:self->_metricsIdentifier];
  objc_storeStrong(&v4->_startTime, self->_startTime);
  v4->_totalCount = self->_totalCount;
  return v4;
}

- (CPLSyncSessionThroughputMetrics)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CPLSyncSessionThroughputMetrics;
  v6 = [(CPLSyncSessionThroughputMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricsIdentifier, identifier);
  }

  return v7;
}

@end