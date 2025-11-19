@interface CPLDerivativesGenerationStatistics
- (CPLDerivativesGenerationStatistics)initWithSourceResource:(id)a3;
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

- (CPLDerivativesGenerationStatistics)initWithSourceResource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLDerivativesGenerationStatistics;
  v6 = [(CPLDerivativesGenerationStatistics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceResource, a3);
    v7->_startTime = CFAbsoluteTimeGetCurrent();
  }

  return v7;
}

@end