@interface FigCaptureSinkPipeline
- (FigCaptureSinkPipeline)initWithGraph:(id)a3 name:(id)a4 sinkID:(id)a5;
- (void)dealloc;
- (void)setUpstreamOutput:(id)a3;
@end

@implementation FigCaptureSinkPipeline

- (FigCaptureSinkPipeline)initWithGraph:(id)a3 name:(id)a4 sinkID:(id)a5
{
  v8.receiver = self;
  v8.super_class = FigCaptureSinkPipeline;
  v6 = [(FigCapturePipeline *)&v8 initWithGraph:a3 name:a4];
  if (v6)
  {
    v6->_sinkID = a5;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSinkPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (void)setUpstreamOutput:(id)a3
{
  if (self->_upstreamOutput)
  {
    [FigCaptureSinkPipeline setUpstreamOutput:];
  }

  self->_upstreamOutput = a3;
}

@end