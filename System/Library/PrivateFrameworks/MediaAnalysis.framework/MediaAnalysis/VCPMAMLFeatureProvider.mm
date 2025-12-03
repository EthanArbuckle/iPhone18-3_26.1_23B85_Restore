@interface VCPMAMLFeatureProvider
+ (id)featureProviderWithCVPixelBuffer:(__CVBuffer *)buffer andFeatureName:(id)name;
- (VCPMAMLFeatureProvider)initWithCVPixelBuffer:(__CVBuffer *)buffer andFeatureName:(id)name;
- (id)featureValueForName:(id)name;
- (void)dealloc;
@end

@implementation VCPMAMLFeatureProvider

- (VCPMAMLFeatureProvider)initWithCVPixelBuffer:(__CVBuffer *)buffer andFeatureName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = VCPMAMLFeatureProvider;
  v8 = [(VCPMAMLFeatureProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_featureName, name);
    v9->_buffer = CVPixelBufferRetain(buffer);
  }

  return v9;
}

+ (id)featureProviderWithCVPixelBuffer:(__CVBuffer *)buffer andFeatureName:(id)name
{
  nameCopy = name;
  v6 = [[VCPMAMLFeatureProvider alloc] initWithCVPixelBuffer:buffer andFeatureName:nameCopy];

  return v6;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_buffer);
  v3.receiver = self;
  v3.super_class = VCPMAMLFeatureProvider;
  [(VCPMAMLFeatureProvider *)&v3 dealloc];
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:self->_featureName] && self->_buffer)
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