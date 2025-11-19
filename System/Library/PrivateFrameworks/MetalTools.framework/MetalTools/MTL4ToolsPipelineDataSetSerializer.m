@interface MTL4ToolsPipelineDataSetSerializer
- (BOOL)serializeAsArchiveAndFlushToURL:(id)a3 error:(id *)a4;
- (MTL4ToolsPipelineDataSetSerializer)initWithBaseObject:(id)a3 parent:(id)a4;
- (id)destinationBinaryArchive;
- (id)serializeAsPipelinesScriptWithError:(id *)a3;
- (void)addBinaryFunctionWithDescriptor:(id)a3;
- (void)addPipelineWithDescriptor:(id)a3;
@end

@implementation MTL4ToolsPipelineDataSetSerializer

- (MTL4ToolsPipelineDataSetSerializer)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsPipelineDataSetSerializer;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (id)destinationBinaryArchive
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 destinationBinaryArchive];
}

- (BOOL)serializeAsArchiveAndFlushToURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 serializeAsArchiveAndFlushToURL:a3 error:a4];
}

- (id)serializeAsPipelinesScriptWithError:(id *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 serializeAsPipelinesScriptWithError:a3];
}

- (void)addPipelineWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 addPipelineWithDescriptor:a3];
}

- (void)addBinaryFunctionWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 addBinaryFunctionWithDescriptor:a3];
}

@end