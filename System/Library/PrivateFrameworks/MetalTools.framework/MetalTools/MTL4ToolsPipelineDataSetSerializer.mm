@interface MTL4ToolsPipelineDataSetSerializer
- (BOOL)serializeAsArchiveAndFlushToURL:(id)l error:(id *)error;
- (MTL4ToolsPipelineDataSetSerializer)initWithBaseObject:(id)object parent:(id)parent;
- (id)destinationBinaryArchive;
- (id)serializeAsPipelinesScriptWithError:(id *)error;
- (void)addBinaryFunctionWithDescriptor:(id)descriptor;
- (void)addPipelineWithDescriptor:(id)descriptor;
@end

@implementation MTL4ToolsPipelineDataSetSerializer

- (MTL4ToolsPipelineDataSetSerializer)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsPipelineDataSetSerializer;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (id)destinationBinaryArchive
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject destinationBinaryArchive];
}

- (BOOL)serializeAsArchiveAndFlushToURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeAsArchiveAndFlushToURL:l error:error];
}

- (id)serializeAsPipelinesScriptWithError:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeAsPipelinesScriptWithError:error];
}

- (void)addPipelineWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addPipelineWithDescriptor:descriptor];
}

- (void)addBinaryFunctionWithDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject addBinaryFunctionWithDescriptor:descriptor];
}

@end