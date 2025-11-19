@interface GKLimitedPresentationConfig
- (GKLimitedPresentationConfig)init;
- (int64_t)initialLimit;
@end

@implementation GKLimitedPresentationConfig

- (GKLimitedPresentationConfig)init
{
  v3.receiver = self;
  v3.super_class = GKLimitedPresentationConfig;
  result = [(GKLimitedPresentationConfig *)&v3 init];
  if (result)
  {
    result->_limit = -1;
    result->_initialLimit = -1;
    *&result->_resetPeriod = xmmword_227AA00B0;
    result->_enabled = 1;
  }

  return result;
}

- (int64_t)initialLimit
{
  if (self->_initialLimit < 0)
  {
    return [(GKLimitedPresentationConfig *)self limit];
  }

  else
  {
    return self->_initialLimit;
  }
}

@end