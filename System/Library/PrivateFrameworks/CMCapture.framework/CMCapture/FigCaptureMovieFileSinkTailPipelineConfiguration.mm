@interface FigCaptureMovieFileSinkTailPipelineConfiguration
- (FigCaptureMovieFileSinkTailPipelineConfiguration)init;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkTailPipelineConfiguration

- (FigCaptureMovieFileSinkTailPipelineConfiguration)init
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkTailPipelineConfiguration;
  result = [(FigCaptureMovieFileSinkTailPipelineConfiguration *)&v3 init];
  if (result)
  {
    result->_indexOfVideoOrientationInMetadataOutputs = -1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkTailPipelineConfiguration;
  [(FigCaptureMovieFileSinkTailPipelineConfiguration *)&v3 dealloc];
}

@end