@interface MTLGPUDebugBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (MTLGPUDebugBinaryArchive)initWithBinaryArchive:(id)archive device:(id)device;
@end

@implementation MTLGPUDebugBinaryArchive

- (MTLGPUDebugBinaryArchive)initWithBinaryArchive:(id)archive device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTLGPUDebugBinaryArchive;
  return [(MTLToolsObject *)&v5 initWithBaseObject:archive parent:device];
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v8 = 0x1000000;
  descriptorCopy = descriptor;
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyComputePipelineDescriptor:&descriptorCopy options:&v8];
  return [(MTLToolsObject *)self->super.super._baseObject addComputePipelineFunctionsWithDescriptor:v6 options:v8 error:error];
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  descriptorCopy = descriptor;
  v7 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyComputePipelineDescriptor:&descriptorCopy options:&optionsCopy];
  return [(MTLToolsObject *)self->super.super._baseObject addComputePipelineFunctionsWithDescriptor:v7 options:optionsCopy | 0x1000000 error:error];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v8 = 0x1000000;
  descriptorCopy = descriptor;
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyRenderPipelineDescriptor:&descriptorCopy options:&v8];
  return [(MTLToolsObject *)self->super.super._baseObject addRenderPipelineFunctionsWithDescriptor:v6 options:v8 error:error];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  descriptorCopy = descriptor;
  v7 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyRenderPipelineDescriptor:&descriptorCopy options:&optionsCopy];
  return [(MTLToolsObject *)self->super.super._baseObject addRenderPipelineFunctionsWithDescriptor:v7 options:optionsCopy | 0x1000000 error:error];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v8 = 0x1000000;
  descriptorCopy = descriptor;
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyTileRenderPipelineDescriptor:&descriptorCopy options:&v8];
  return [(MTLToolsObject *)self->super.super._baseObject addTileRenderPipelineFunctionsWithDescriptor:v6 options:v8 error:error];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  descriptorCopy = descriptor;
  v7 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyTileRenderPipelineDescriptor:&descriptorCopy options:&optionsCopy];
  return [(MTLToolsObject *)self->super.super._baseObject addTileRenderPipelineFunctionsWithDescriptor:v7 options:optionsCopy | 0x1000000 error:error];
}

@end