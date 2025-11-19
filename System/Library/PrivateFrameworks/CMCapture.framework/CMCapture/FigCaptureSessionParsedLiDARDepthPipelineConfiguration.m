@interface FigCaptureSessionParsedLiDARDepthPipelineConfiguration
- (FigCaptureSessionParsedLiDARDepthPipelineConfiguration)initWithTimeOfFlightCameraConfiguration:(id)a3 depthDataConnectionConfiguration:(id)a4;
- (void)dealloc;
@end

@implementation FigCaptureSessionParsedLiDARDepthPipelineConfiguration

- (FigCaptureSessionParsedLiDARDepthPipelineConfiguration)initWithTimeOfFlightCameraConfiguration:(id)a3 depthDataConnectionConfiguration:(id)a4
{
  v8.receiver = self;
  v8.super_class = FigCaptureSessionParsedLiDARDepthPipelineConfiguration;
  v6 = [(FigCaptureSessionParsedLiDARDepthPipelineConfiguration *)&v8 init];
  if (v6)
  {
    v6->_timeOfFlightCameraConfiguration = a3;
    v6->_depthDataConnectionConfiguration = a4;
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