@interface MTL4DebugMachineLearningPipelineState
- (MTL4DebugMachineLearningPipelineState)initWithMLPipelineState:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (void)dealloc;
@end

@implementation MTL4DebugMachineLearningPipelineState

- (MTL4DebugMachineLearningPipelineState)initWithMLPipelineState:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTL4DebugMachineLearningPipelineState;
  v6 = [(MTL4ToolsMachineLearningPipelineState *)&v8 initWithBaseObject:a3 parent:a4];
  if (v6)
  {
    v6->_descriptor = [a5 copy];
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