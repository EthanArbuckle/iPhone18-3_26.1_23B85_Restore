@interface VCPMAMLFeatureProvider
+ (id)featureProviderWithCVPixelBuffer:(__CVBuffer *)a3 andFeatureName:(id)a4;
- (VCPMAMLFeatureProvider)initWithCVPixelBuffer:(__CVBuffer *)a3 andFeatureName:(id)a4;
- (id)featureValueForName:(id)a3;
- (void)dealloc;
@end

@implementation VCPMAMLFeatureProvider

- (VCPMAMLFeatureProvider)initWithCVPixelBuffer:(__CVBuffer *)a3 andFeatureName:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VCPMAMLFeatureProvider;
  v8 = [(VCPMAMLFeatureProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_featureName, a4);
    v9->_buffer = CVPixelBufferRetain(a3);
  }

  return v9;
}

+ (id)featureProviderWithCVPixelBuffer:(__CVBuffer *)a3 andFeatureName:(id)a4
{
  v5 = a4;
  v6 = [[VCPMAMLFeatureProvider alloc] initWithCVPixelBuffer:a3 andFeatureName:v5];

  return v6;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_buffer);
  v3.receiver = self;
  v3.super_class = VCPMAMLFeatureProvider;
  [(VCPMAMLFeatureProvider *)&v3 dealloc];
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:self->_featureName] && self->_buffer)
  {
    v5 = [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end