@interface MTL4DebugMachineLearningPipelineState
- (MTL4DebugMachineLearningPipelineState)initWithMLPipelineState:(id)state parent:(id)parent descriptor:(id)descriptor;
- (void)dealloc;
@end

@implementation MTL4DebugMachineLearningPipelineState

- (MTL4DebugMachineLearningPipelineState)initWithMLPipelineState:(id)state parent:(id)parent descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTL4DebugMachineLearningPipelineState;
  v6 = [(MTL4ToolsMachineLearningPipelineState *)&v8 initWithBaseObject:state parent:parent];
  if (v6)
  {
    v6->_descriptor = [descriptor copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4DebugMachineLearningPipelineState;
  [(MTLToolsObject *)&v3 dealloc];
}

@end