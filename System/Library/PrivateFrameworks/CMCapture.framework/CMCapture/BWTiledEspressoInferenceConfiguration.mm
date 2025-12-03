@interface BWTiledEspressoInferenceConfiguration
- (BWTiledEspressoInferenceConfiguration)initWithInferenceType:(int)type metalCommandQueue:(id)queue;
- (void)dealloc;
@end

@implementation BWTiledEspressoInferenceConfiguration

- (BWTiledEspressoInferenceConfiguration)initWithInferenceType:(int)type metalCommandQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = BWTiledEspressoInferenceConfiguration;
  v5 = [(BWInferenceConfiguration *)&v7 initWithInferenceType:*&type];
  if (v5)
  {
    v5->_metalCommandQueue = queue;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTiledEspressoInferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

@end