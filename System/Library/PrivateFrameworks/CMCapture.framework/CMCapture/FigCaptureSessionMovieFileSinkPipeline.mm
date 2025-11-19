@interface FigCaptureSessionMovieFileSinkPipeline
- (void)dealloc;
@end

@implementation FigCaptureSessionMovieFileSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSessionMovieFileSinkPipeline;
  [(FigCaptureMovieFileSinkPipeline *)&v3 dealloc];
}

@end