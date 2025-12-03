@interface MTLDebugBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
@end

@implementation MTLDebugBinaryArchive

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  if (!descriptor)
  {
    [MTLDebugBinaryArchive addComputePipelineFunctionsWithDescriptor:options:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugBinaryArchive addComputePipelineFunctionsWithDescriptor:options:error:];
  }

  if (![descriptor computeFunction])
  {
    [MTLDebugBinaryArchive addComputePipelineFunctionsWithDescriptor:options:error:];
  }

  v9 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLComputePipelineDescriptor:descriptor];
  v10 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] debugPipelineOptions:options includePipelinePerfStats:0];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addComputePipelineFunctionsWithDescriptor:v9 options:v10 error:error];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  if (!descriptor)
  {
    [MTLDebugBinaryArchive addRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugBinaryArchive addRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  v9 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLRenderPipelineDescriptor:descriptor];
  v10 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] debugPipelineOptions:options includePipelinePerfStats:0];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addRenderPipelineFunctionsWithDescriptor:v9 options:v10 error:error];
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  if (!descriptor)
  {
    [MTLDebugBinaryArchive addMeshRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugBinaryArchive addMeshRenderPipelineFunctionsWithDescriptor:options:error:];
  }

  v9 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLMeshRenderPipelineDescriptor:descriptor];
  v10 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] debugPipelineOptions:options includePipelinePerfStats:0];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addMeshRenderPipelineFunctionsWithDescriptor:v9 options:v10 error:error];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  if (([(MTLDevice *)[(MTLToolsBinaryArchive *)self device] supportsTileShaders]& 1) != 0)
  {
    if (descriptor)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTLDebugBinaryArchive addTileRenderPipelineFunctionsWithDescriptor:options:error:];
    if (descriptor)
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

  v9 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLTileRenderPipelineDescriptor:descriptor];
  v10 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] debugPipelineOptions:options includePipelinePerfStats:0];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addTileRenderPipelineFunctionsWithDescriptor:v9 options:v10 error:error];
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  if (!l)
  {
    [MTLDebugBinaryArchive serializeToURL:error:];
  }

  if (([l isFileURL] & 1) == 0)
  {
    [MTLDebugBinaryArchive serializeToURL:error:];
  }

  v8.receiver = self;
  v8.super_class = MTLDebugBinaryArchive;
  return [(MTLToolsBinaryArchive *)&v8 serializeToURL:l error:error];
}

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  if (!l)
  {
    [MTLDebugBinaryArchive serializeToURL:options:error:];
  }

  if (([l isFileURL] & 1) == 0)
  {
    [MTLDebugBinaryArchive serializeToURL:options:error:];
  }

  v10.receiver = self;
  v10.super_class = MTLDebugBinaryArchive;
  return [(MTLToolsBinaryArchive *)&v10 serializeToURL:l options:options error:error];
}

@end