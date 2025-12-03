@interface MTLLegacySVFunctionHandle
- (MTLLegacySVFunctionHandle)initWithFunctionHandle:(id)handle computePiplineState:(id)state function:(id)function;
- (MTLLegacySVFunctionHandle)initWithFunctionHandle:(id)handle renderPipelineState:(id)state stage:(unint64_t)stage function:(id)function;
@end

@implementation MTLLegacySVFunctionHandle

- (MTLLegacySVFunctionHandle)initWithFunctionHandle:(id)handle computePiplineState:(id)state function:(id)function
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVFunctionHandle;
  return [(MTLToolsFunctionHandle *)&v6 initWithBaseObject:handle parent:state function:function];
}

- (MTLLegacySVFunctionHandle)initWithFunctionHandle:(id)handle renderPipelineState:(id)state stage:(unint64_t)stage function:(id)function
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVFunctionHandle;
  return [(MTLToolsFunctionHandle *)&v7 initWithBaseObject:handle parent:state function:function];
}

@end