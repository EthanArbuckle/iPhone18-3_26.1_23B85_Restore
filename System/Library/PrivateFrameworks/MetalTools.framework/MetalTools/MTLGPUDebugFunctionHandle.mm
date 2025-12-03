@interface MTLGPUDebugFunctionHandle
- (MTLGPUDebugFunctionHandle)initWithFunctionHandle:(id)handle computePipelineState:(id)state;
- (MTLGPUDebugFunctionHandle)initWithFunctionHandle:(id)handle computePiplineState:(id)state function:(id)function;
- (MTLGPUDebugFunctionHandle)initWithFunctionHandle:(id)handle renderPipelineState:(id)state stage:(unint64_t)stage;
- (MTLGPUDebugFunctionHandle)initWithFunctionHandle:(id)handle renderPipelineState:(id)state stage:(unint64_t)stage function:(id)function;
@end

@implementation MTLGPUDebugFunctionHandle

- (MTLGPUDebugFunctionHandle)initWithFunctionHandle:(id)handle computePiplineState:(id)state function:(id)function
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugFunctionHandle;
  return [(MTLToolsFunctionHandle *)&v6 initWithBaseObject:handle parent:state function:function];
}

- (MTLGPUDebugFunctionHandle)initWithFunctionHandle:(id)handle renderPipelineState:(id)state stage:(unint64_t)stage function:(id)function
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugFunctionHandle;
  return [(MTLToolsFunctionHandle *)&v7 initWithBaseObject:handle parent:state function:function];
}

- (MTLGPUDebugFunctionHandle)initWithFunctionHandle:(id)handle computePipelineState:(id)state
{
  v5.receiver = self;
  v5.super_class = MTLGPUDebugFunctionHandle;
  return [(MTLToolsObject *)&v5 initWithBaseObject:handle parent:state];
}

- (MTLGPUDebugFunctionHandle)initWithFunctionHandle:(id)handle renderPipelineState:(id)state stage:(unint64_t)stage
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugFunctionHandle;
  return [(MTLToolsObject *)&v6 initWithBaseObject:handle parent:state, stage];
}

@end