@interface MTLDebugFunctionHandle
- (MTLDebugFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 binaryFunction:(id)a5 stage:(unint64_t)a6;
- (MTLDebugFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 function:(id)a5 stage:(unint64_t)a6;
- (MTLDebugFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 stage:(unint64_t)a5;
- (MTLResourceID)gpuResourceID;
- (unint64_t)resourceIndex;
@end

@implementation MTLDebugFunctionHandle

- (MTLDebugFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 function:(id)a5 stage:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = MTLDebugFunctionHandle;
  result = [(MTLToolsFunctionHandle *)&v8 initWithBaseObject:a3 parent:a4 function:a5];
  if (result)
  {
    result->_stage = a6;
  }

  return result;
}

- (MTLDebugFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 stage:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = MTLDebugFunctionHandle;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:a4];
  if (result)
  {
    result->_stage = a5;
  }

  return result;
}

- (MTLDebugFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 binaryFunction:(id)a5 stage:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = MTLDebugFunctionHandle;
  result = [(MTLToolsFunctionHandle *)&v8 initWithBaseObject:a3 parent:a4 binaryFunction:a5];
  if (result)
  {
    result->_stage = a6;
  }

  return result;
}

- (MTLResourceID)gpuResourceID
{
  [[(MTLToolsFunctionHandle *)self function] validateIsIFBFunction];
  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 gpuResourceID];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

@end