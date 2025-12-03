@interface MTLDebugPipelineLibrary
- (MTLDebugPipelineLibrary)initWithLibrary:(id)library parent:(id)parent filePath:(id)path;
- (id)newComputePipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (id)newRenderPipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error;
- (void)dealloc;
@end

@implementation MTLDebugPipelineLibrary

- (MTLDebugPipelineLibrary)initWithLibrary:(id)library parent:(id)parent filePath:(id)path
{
  v8.receiver = self;
  v8.super_class = MTLDebugPipelineLibrary;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:library parent:parent];
  if (v6)
  {
    v6->_filePath = [path copy];
  }

  return v6;
}

- (id)newComputePipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  if (name)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugPipelineLibrary newComputePipelineStateWithName:options:reflection:error:];
    }
  }

  else
  {
    [MTLDebugPipelineLibrary newComputePipelineStateWithName:options:reflection:error:];
  }

  v17 = 0;
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = v11;
  if (reflection)
  {
    *reflection = v17;
  }

  if (!v11)
  {
    return 0;
  }

  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  v14 = [MTLDebugComputePipelineState alloc];
  v15 = [(MTLDebugComputePipelineState *)v14 initWithComputePipelineState:v12 reflection:v17 parent:self descriptor:v13];

  return v15;
}

- (id)newRenderPipelineStateWithName:(id)name options:(unint64_t)options reflection:(id *)reflection error:(id *)error
{
  if (name)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugPipelineLibrary newRenderPipelineStateWithName:options:reflection:error:];
    }
  }

  else
  {
    [MTLDebugPipelineLibrary newRenderPipelineStateWithName:options:reflection:error:];
  }

  v17 = 0;
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = v11;
  if (reflection)
  {
    *reflection = v17;
  }

  if (!v11)
  {
    return 0;
  }

  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  v14 = [MTLDebugRenderPipelineState alloc];
  v15 = [(MTLDebugRenderPipelineState *)v14 initWithPipelineState:v12 reflection:v17 parent:self descriptor:v13];

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugPipelineLibrary;
  [(MTLToolsObject *)&v3 dealloc];
}

@end