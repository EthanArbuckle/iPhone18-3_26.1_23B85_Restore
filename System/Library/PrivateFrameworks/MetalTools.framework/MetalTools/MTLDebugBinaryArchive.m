@interface MTLDebugBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation MTLDebugBinaryArchive

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    [MTLDebugBinaryArchive addComputePipelineFunctionsWithDescriptor:options:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugBinaryArchive addComputePipelineFunctionsWithDescriptor:options:error:];
  }

  if (![a3 computeFunction])
  {
    [MTLDebugBinaryArchive addComputePipelineFunctionsWithDescriptor:options:error:];
  }

  v9 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLComputePipelineDescriptor:a3];
  v10 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] debugPipelineOptions:a4 includePipelinePerfStats:0];
  v11 = [(MTLToolsObject *)self baseObject];

  return [v11 addComputePipelineFunctionsWithDescriptor:v9 options:v10 error:a5];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    [MTLDebugBinaryArchive addRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugBinaryArchive addRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  v9 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLRenderPipelineDescriptor:a3];
  v10 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] debugPipelineOptions:a4 includePipelinePerfStats:0];
  v11 = [(MTLToolsObject *)self baseObject];

  return [v11 addRenderPipelineFunctionsWithDescriptor:v9 options:v10 error:a5];
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    [MTLDebugBinaryArchive addMeshRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugBinaryArchive addMeshRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  v9 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLMeshRenderPipelineDescriptor:a3];
  v10 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] debugPipelineOptions:a4 includePipelinePerfStats:0];
  v11 = [(MTLToolsObject *)self baseObject];

  return [v11 addMeshRenderPipelineFunctionsWithDescriptor:v9 options:v10 error:a5];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (([(MTLDevice *)[(MTLToolsBinaryArchive *)self device] supportsTileShaders]& 1) != 0)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTLDebugBinaryArchive addTileRenderPipelineFunctionsWithDescriptor:options:error:];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [MTLDebugBinaryArchive addTileRenderPipelineFunctionsWithDescriptor:options:error:];
LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugBinaryArchive addTileRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  v9 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLTileRenderPipelineDescriptor:a3];
  v10 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] debugPipelineOptions:a4 includePipelinePerfStats:0];
  v11 = [(MTLToolsObject *)self baseObject];

  return [v11 addTileRenderPipelineFunctionsWithDescriptor:v9 options:v10 error:a5];
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    [MTLDebugBinaryArchive serializeToURL:error:];
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MTLDebugBinaryArchive serializeToURL:error:];
  }

  v8.receiver = self;
  v8.super_class = MTLDebugBinaryArchive;
  return [(MTLToolsBinaryArchive *)&v8 serializeToURL:a3 error:a4];
}

- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    [MTLDebugBinaryArchive serializeToURL:options:error:];
  }

  if (([a3 isFileURL] & 1) == 0)
  {
    [MTLDebugBinaryArchive serializeToURL:options:error:];
  }

  v10.receiver = self;
  v10.super_class = MTLDebugBinaryArchive;
  return [(MTLToolsBinaryArchive *)&v10 serializeToURL:a3 options:a4 error:a5];
}

@end