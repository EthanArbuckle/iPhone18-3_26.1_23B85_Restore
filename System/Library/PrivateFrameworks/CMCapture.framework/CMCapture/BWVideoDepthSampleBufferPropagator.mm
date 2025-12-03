@interface BWVideoDepthSampleBufferPropagator
- (BWVideoDepthSampleBufferPropagator)initWithVideoRequirements:(id)requirements cloneRequirements:(id)cloneRequirements;
@end

@implementation BWVideoDepthSampleBufferPropagator

- (BWVideoDepthSampleBufferPropagator)initWithVideoRequirements:(id)requirements cloneRequirements:(id)cloneRequirements
{
  v5.receiver = self;
  v5.super_class = BWVideoDepthSampleBufferPropagator;
  return [(BWInferenceSampleBufferPropagator *)&v5 initWithVideoRequirements:requirements cloneRequirements:cloneRequirements metadataRequirements:0 updateMetadataWithCropRect:0];
}

@end