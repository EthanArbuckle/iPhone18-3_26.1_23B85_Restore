@interface MTLLegacySVBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (MTLLegacySVBinaryArchive)initWithBinaryArchive:(id)a3 device:(id)a4;
@end

@implementation MTLLegacySVBinaryArchive

- (MTLLegacySVBinaryArchive)initWithBinaryArchive:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVBinaryArchive;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v8 = 0x1000000;
  v9 = a3;
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyComputePipelineDescriptor:&v9 options:&v8];
  return [(MTLToolsObject *)self->super.super._baseObject addComputePipelineFunctionsWithDescriptor:v6 options:v8 error:a4];
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v9 = a4;
  v10 = a3;
  v7 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyComputePipelineDescriptor:&v10 options:&v9];
  return [(MTLToolsObject *)self->super.super._baseObject addComputePipelineFunctionsWithDescriptor:v7 options:v9 | 0x1000000 error:a5];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v8 = 0x1000000;
  v9 = a3;
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyRenderPipelineDescriptor:&v9 options:&v8];
  return [(MTLToolsObject *)self->super.super._baseObject addRenderPipelineFunctionsWithDescriptor:v6 options:v8 error:a4];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v9 = a4;
  v10 = a3;
  v7 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyRenderPipelineDescriptor:&v10 options:&v9];
  return [(MTLToolsObject *)self->super.super._baseObject addRenderPipelineFunctionsWithDescriptor:v7 options:v9 | 0x1000000 error:a5];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v8 = 0x1000000;
  v9 = a3;
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyTileRenderPipelineDescriptor:&v9 options:&v8];
  return [(MTLToolsObject *)self->super.super._baseObject addTileRenderPipelineFunctionsWithDescriptor:v6 options:v8 error:a4];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v9 = a4;
  v10 = a3;
  v7 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapAndModifyTileRenderPipelineDescriptor:&v10 options:&v9];
  return [(MTLToolsObject *)self->super.super._baseObject addTileRenderPipelineFunctionsWithDescriptor:v7 options:v9 | 0x1000000 error:a5];
}

@end