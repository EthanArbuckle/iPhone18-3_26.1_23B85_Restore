@interface MTLToolsPipelineLibrary
- (BOOL)disableRunTimeCompilation;
- (MTLPipelineCache)functionCache;
- (MTLPipelineCache)pipelineCache;
- (NSArray)pipelineNames;
- (NSString)label;
- (id)newComputePipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newRenderPipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (void)setLabel:(id)a3;
@end

@implementation MTLToolsPipelineLibrary

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

- (NSArray)pipelineNames
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 pipelineNames];
}

- (BOOL)disableRunTimeCompilation
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 disableRunTimeCompilation];
}

- (id)newComputePipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (id)newRenderPipelineStateWithName:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:result parent:self];

    return v9;
  }

  return result;
}

- (MTLPipelineCache)pipelineCache
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 pipelineCache];
}

- (MTLPipelineCache)functionCache
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 functionCache];
}

@end