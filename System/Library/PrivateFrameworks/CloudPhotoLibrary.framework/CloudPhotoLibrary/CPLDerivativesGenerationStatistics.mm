@interface CPLDerivativesGenerationStatistics
- (CPLDerivativesGenerationStatistics)initWithSourceResource:(id)resource;
- (void)didEndGeneratingDerivatives;
@end

@implementation CPLDerivativesGenerationStatistics

- (void)didEndGeneratingDerivatives
{
  startTime = self->_startTime;
  Current = CFAbsoluteTimeGetCurrent();
  if (startTime >= Current)
  {
    Current = startTime;
  }

  self->_endTime = Current;
}

- (CPLDerivativesGenerationStatistics)initWithSourceResource:(id)resource
{
  resourceCopy = resource;
  v9.receiver = self;
  v9.super_class = CPLDerivativesGenerationStatistics;
  v6 = [(CPLDerivativesGenerationStatistics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceResource, resource);
    v7->_startTime = CFAbsoluteTimeGetCurrent();
  }

  return v7;
}

@end