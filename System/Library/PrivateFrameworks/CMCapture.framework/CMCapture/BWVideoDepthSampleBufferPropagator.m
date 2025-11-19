@interface BWVideoDepthSampleBufferPropagator
- (BWVideoDepthSampleBufferPropagator)initWithVideoRequirements:(id)a3 cloneRequirements:(id)a4;
@end

@implementation BWVideoDepthSampleBufferPropagator

- (BWVideoDepthSampleBufferPropagator)initWithVideoRequirements:(id)a3 cloneRequirements:(id)a4
{
  v5.receiver = self;
  v5.super_class = BWVideoDepthSampleBufferPropagator;
  return [(BWInferenceSampleBufferPropagator *)&v5 initWithVideoRequirements:a3 cloneRequirements:a4 metadataRequirements:0 updateMetadataWithCropRect:0];
}

@end