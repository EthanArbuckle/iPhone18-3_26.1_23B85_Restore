@interface FigCaptureSinkPipeline
- (FigCaptureSinkPipeline)initWithGraph:(id)graph name:(id)name sinkID:(id)d;
- (void)dealloc;
- (void)setUpstreamOutput:(id)output;
@end

@implementation FigCaptureSinkPipeline

- (FigCaptureSinkPipeline)initWithGraph:(id)graph name:(id)name sinkID:(id)d
{
  v8.receiver = self;
  v8.super_class = FigCaptureSinkPipeline;
  v6 = [(FigCapturePipeline *)&v8 initWithGraph:graph name:name];
  if (v6)
  {
    v6->_sinkID = d;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSinkPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (void)setUpstreamOutput:(id)output
{
  if (self->_upstreamOutput)
  {
    [FigCaptureSinkPipeline setUpstreamOutput:];
  }

  self->_upstreamOutput = output;
}

@end