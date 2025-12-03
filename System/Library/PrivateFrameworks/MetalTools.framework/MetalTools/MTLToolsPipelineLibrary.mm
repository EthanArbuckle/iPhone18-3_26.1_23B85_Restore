@interface MTLToolsPipelineLibrary
- (BOOL)disableRunTimeCompilation;
- (MTLPipelineCache)functionCache;
- (MTLPipelineCache)pipelineCache;
- (NSArray)pipelineNames;
- (NSString)label;
- (id)newComputePipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (void)setLabel:(id)label;
@end

@implementation MTLToolsPipelineLibrary

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

- (NSArray)pipelineNames
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pipelineNames];
}

- (BOOL)disableRunTimeCompilation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject disableRunTimeCompilation];
}

- (id)newComputePipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error
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

- (id)newRenderPipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pipelineCache];
}

- (MTLPipelineCache)functionCache
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject functionCache];
}

@end