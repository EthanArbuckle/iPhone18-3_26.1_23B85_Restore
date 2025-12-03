@interface FigCaptureSourcePipeline
- (FigCaptureSourcePipeline)initWithGraph:(id)graph name:(id)name sourceID:(id)d;
- (void)dealloc;
@end

@implementation FigCaptureSourcePipeline

- (FigCaptureSourcePipeline)initWithGraph:(id)graph name:(id)name sourceID:(id)d
{
  v8.receiver = self;
  v8.super_class = FigCaptureSourcePipeline;
  v6 = [(FigCapturePipeline *)&v8 initWithGraph:graph name:name];
  if (v6)
  {
    v6->_sourceID = d;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourcePipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

@end