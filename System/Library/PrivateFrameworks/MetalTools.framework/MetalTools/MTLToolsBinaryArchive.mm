@interface MTLToolsBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addFunctionWithDescriptor:(id)a3 library:(id)a4 error:(id *)a5;
- (BOOL)addLibraryWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)enumerateArchivesFromBackingFile:(id)a3;
- (BOOL)enumerateArchivesFromPipelineCollection:(id)a3;
- (BOOL)recompileToArchiveWithURL:(id)a3 error:(id *)a4;
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)storeComputePipelineDescriptor:(id)a3;
- (BOOL)storeMeshRenderPipelineDescriptor:(id)a3;
- (BOOL)storeRenderPipelineDescriptor:(id)a3;
- (BOOL)storeTileRenderPipelineDescriptor:(id)a3;
- (MTLPipelineCollection)pipelineCollection;
- (NSArray)keys;
- (NSString)label;
- (id)archiveFunctionIds;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)options;
- (void)setLabel:(id)a3;
@end

@implementation MTLToolsBinaryArchive

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (void)setLabel:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setLabel:a3];
}

- (unint64_t)options
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 options];
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLComputePipelineDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];

  return [v7 addComputePipelineFunctionsWithDescriptor:v6 error:a4];
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLComputePipelineDescriptor:a3];
  v9 = [(MTLToolsObject *)self baseObject];

  return [v9 addComputePipelineFunctionsWithDescriptor:v8 options:a4 error:a5];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLRenderPipelineDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];

  return [v7 addRenderPipelineFunctionsWithDescriptor:v6 error:a4];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLRenderPipelineDescriptor:a3];
  v9 = [(MTLToolsObject *)self baseObject];

  return [v9 addRenderPipelineFunctionsWithDescriptor:v8 options:a4 error:a5];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLTileRenderPipelineDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];

  return [v7 addTileRenderPipelineFunctionsWithDescriptor:v6 error:a4];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLTileRenderPipelineDescriptor:a3];
  v9 = [(MTLToolsObject *)self baseObject];

  return [v9 addTileRenderPipelineFunctionsWithDescriptor:v8 options:a4 error:a5];
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLMeshRenderPipelineDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];

  return [v7 addMeshRenderPipelineFunctionsWithDescriptor:v6 error:a4];
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLMeshRenderPipelineDescriptor:a3];
  v9 = [(MTLToolsObject *)self baseObject];

  return [v9 addMeshRenderPipelineFunctionsWithDescriptor:v8 options:a4 error:a5];
}

- (BOOL)addLibraryWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLStitchedLibraryDescriptor:a3];
  LOBYTE(a4) = [-[MTLToolsObject baseObject](self "baseObject")];

  return a4;
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 serializeToURL:a3 error:a4];
}

- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 serializeToURL:a3 options:a4 error:a5];
}

- (NSArray)keys
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 keys];
}

- (id)formattedDescription:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 formattedDescription:a3];
}

- (MTLPipelineCollection)pipelineCollection
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 pipelineCollection];
}

- (BOOL)enumerateArchivesFromBackingFile:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 enumerateArchivesFromBackingFile:a3];
}

- (BOOL)enumerateArchivesFromPipelineCollection:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 enumerateArchivesFromPipelineCollection:a3];
}

- (BOOL)storeComputePipelineDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 storeComputePipelineDescriptor:a3];
}

- (BOOL)storeRenderPipelineDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 storeRenderPipelineDescriptor:a3];
}

- (BOOL)storeTileRenderPipelineDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 storeTileRenderPipelineDescriptor:a3];
}

- (BOOL)storeMeshRenderPipelineDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 storeMeshRenderPipelineDescriptor:a3];
}

- (id)archiveFunctionIds
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 archiveFunctionIds];
}

- (BOOL)recompileToArchiveWithURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 recompileToArchiveWithURL:a3 error:a4];
}

- (BOOL)addFunctionWithDescriptor:(id)a3 library:(id)a4 error:(id *)a5
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLFunctionDescriptor:a3];
  LOBYTE(a5) = [-[MTLToolsObject baseObject](self "baseObject")];

  return a5;
}

@end