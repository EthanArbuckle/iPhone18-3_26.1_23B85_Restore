@interface MTLToolsBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addFunctionWithDescriptor:(id)descriptor library:(id)library error:(id *)error;
- (BOOL)addLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)enumerateArchivesFromBackingFile:(id)file;
- (BOOL)enumerateArchivesFromPipelineCollection:(id)collection;
- (BOOL)recompileToArchiveWithURL:(id)l error:(id *)error;
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)storeComputePipelineDescriptor:(id)descriptor;
- (BOOL)storeMeshRenderPipelineDescriptor:(id)descriptor;
- (BOOL)storeRenderPipelineDescriptor:(id)descriptor;
- (BOOL)storeTileRenderPipelineDescriptor:(id)descriptor;
- (MTLPipelineCollection)pipelineCollection;
- (NSArray)keys;
- (NSString)label;
- (id)archiveFunctionIds;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)options;
- (void)setLabel:(id)label;
@end

@implementation MTLToolsBinaryArchive

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject options];
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLComputePipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addComputePipelineFunctionsWithDescriptor:v6 error:error];
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLComputePipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addComputePipelineFunctionsWithDescriptor:v8 options:options error:error];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addRenderPipelineFunctionsWithDescriptor:v6 error:error];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addRenderPipelineFunctionsWithDescriptor:v8 options:options error:error];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLTileRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addTileRenderPipelineFunctionsWithDescriptor:v6 error:error];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLTileRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addTileRenderPipelineFunctionsWithDescriptor:v8 options:options error:error];
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLMeshRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addMeshRenderPipelineFunctionsWithDescriptor:v6 error:error];
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLMeshRenderPipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject addMeshRenderPipelineFunctionsWithDescriptor:v8 options:options error:error];
}

- (BOOL)addLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLStitchedLibraryDescriptor:descriptor];
  LOBYTE(error) = [-[MTLToolsObject baseObject](self "baseObject")];

  return error;
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeToURL:l error:error];
}

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeToURL:l options:options error:error];
}

- (NSArray)keys
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject keys];
}

- (id)formattedDescription:(unint64_t)description
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject formattedDescription:description];
}

- (MTLPipelineCollection)pipelineCollection
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pipelineCollection];
}

- (BOOL)enumerateArchivesFromBackingFile:(id)file
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject enumerateArchivesFromBackingFile:file];
}

- (BOOL)enumerateArchivesFromPipelineCollection:(id)collection
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject enumerateArchivesFromPipelineCollection:collection];
}

- (BOOL)storeComputePipelineDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject storeComputePipelineDescriptor:descriptor];
}

- (BOOL)storeRenderPipelineDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject storeRenderPipelineDescriptor:descriptor];
}

- (BOOL)storeTileRenderPipelineDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject storeTileRenderPipelineDescriptor:descriptor];
}

- (BOOL)storeMeshRenderPipelineDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject storeMeshRenderPipelineDescriptor:descriptor];
}

- (id)archiveFunctionIds
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject archiveFunctionIds];
}

- (BOOL)recompileToArchiveWithURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject recompileToArchiveWithURL:l error:error];
}

- (BOOL)addFunctionWithDescriptor:(id)descriptor library:(id)library error:(id *)error
{
  v8 = [(MTLDevice *)[(MTLToolsBinaryArchive *)self device] unwrapMTLFunctionDescriptor:descriptor];
  LOBYTE(error) = [-[MTLToolsObject baseObject](self "baseObject")];

  return error;
}

@end