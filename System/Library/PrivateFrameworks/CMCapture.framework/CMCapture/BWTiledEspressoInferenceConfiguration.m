@interface BWTiledEspressoInferenceConfiguration
- (BWTiledEspressoInferenceConfiguration)initWithInferenceType:(int)a3 metalCommandQueue:(id)a4;
- (void)dealloc;
@end

@implementation BWTiledEspressoInferenceConfiguration

- (BWTiledEspressoInferenceConfiguration)initWithInferenceType:(int)a3 metalCommandQueue:(id)a4
{
  v7.receiver = self;
  v7.super_class = BWTiledEspressoInferenceConfiguration;
  v5 = [(BWInferenceConfiguration *)&v7 initWithInferenceType:*&a3];
  if (v5)
  {
    v5->_metalCommandQueue = a4;
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