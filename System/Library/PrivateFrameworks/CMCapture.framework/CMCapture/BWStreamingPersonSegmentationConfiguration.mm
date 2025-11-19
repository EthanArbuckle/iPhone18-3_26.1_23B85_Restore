@interface BWStreamingPersonSegmentationConfiguration
- (void)dealloc;
@end

@implementation BWStreamingPersonSegmentationConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStreamingPersonSegmentationConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

@end