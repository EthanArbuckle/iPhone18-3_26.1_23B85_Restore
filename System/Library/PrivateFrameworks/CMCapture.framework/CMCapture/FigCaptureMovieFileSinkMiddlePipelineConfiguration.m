@interface FigCaptureMovieFileSinkMiddlePipelineConfiguration
- (FigCaptureMovieFileSinkMiddlePipelineConfiguration)init;
- (void)dealloc;
@end

@implementation FigCaptureMovieFileSinkMiddlePipelineConfiguration

- (FigCaptureMovieFileSinkMiddlePipelineConfiguration)init
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkMiddlePipelineConfiguration;
  return [(FigCaptureMovieFileSinkMiddlePipelineConfiguration *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkMiddlePipelineConfiguration;
  [(FigCaptureMovieFileSinkMiddlePipelineConfiguration *)&v3 dealloc];
}

@end