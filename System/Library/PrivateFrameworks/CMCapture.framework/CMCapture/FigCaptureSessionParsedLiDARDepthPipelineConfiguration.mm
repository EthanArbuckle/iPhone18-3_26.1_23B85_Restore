@interface FigCaptureSessionParsedLiDARDepthPipelineConfiguration
- (FigCaptureSessionParsedLiDARDepthPipelineConfiguration)initWithTimeOfFlightCameraConfiguration:(id)configuration depthDataConnectionConfiguration:(id)connectionConfiguration;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedLiDARDepthPipelineConfiguration

- (FigCaptureSessionParsedLiDARDepthPipelineConfiguration)initWithTimeOfFlightCameraConfiguration:(id)configuration depthDataConnectionConfiguration:(id)connectionConfiguration
{
  v8.receiver = self;
  v8.super_class = FigCaptureSessionParsedLiDARDepthPipelineConfiguration;
  v6 = [(FigCaptureSessionParsedLiDARDepthPipelineConfiguration *)&v8 init];
  if (v6)
  {
    v6->_timeOfFlightCameraConfiguration = configuration;
    v6->_depthDataConnectionConfiguration = connectionConfiguration;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionParsedLiDARDepthPipelineConfiguration;
  [(FigCaptureSessionParsedLiDARDepthPipelineConfiguration *)&v3 dealloc];
}

@end