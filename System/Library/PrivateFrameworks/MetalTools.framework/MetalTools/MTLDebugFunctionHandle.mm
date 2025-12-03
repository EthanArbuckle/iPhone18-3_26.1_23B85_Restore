@interface MTLDebugFunctionHandle
- (MTLDebugFunctionHandle)initWithBaseObject:(id)object parent:(id)parent binaryFunction:(id)function stage:(unint64_t)stage;
- (MTLDebugFunctionHandle)initWithBaseObject:(id)object parent:(id)parent function:(id)function stage:(unint64_t)stage;
- (MTLDebugFunctionHandle)initWithBaseObject:(id)object parent:(id)parent stage:(unint64_t)stage;
- (MTLResourceID)gpuResourceID;
- (unint64_t)resourceIndex;
@end

@implementation MTLDebugFunctionHandle

- (MTLDebugFunctionHandle)initWithBaseObject:(id)object parent:(id)parent function:(id)function stage:(unint64_t)stage
{
  v8.receiver = self;
  v8.super_class = MTLDebugFunctionHandle;
  result = [(MTLToolsFunctionHandle *)&v8 initWithBaseObject:object parent:parent function:function];
  if (result)
  {
    result->_stage = stage;
  }

  return result;
}

- (MTLDebugFunctionHandle)initWithBaseObject:(id)object parent:(id)parent stage:(unint64_t)stage
{
  v7.receiver = self;
  v7.super_class = MTLDebugFunctionHandle;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:object parent:parent];
  if (result)
  {
    result->_stage = stage;
  }

  return result;
}

- (MTLDebugFunctionHandle)initWithBaseObject:(id)object parent:(id)parent binaryFunction:(id)function stage:(unint64_t)stage
{
  v8.receiver = self;
  v8.super_class = MTLDebugFunctionHandle;
  result = [(MTLToolsFunctionHandle *)&v8 initWithBaseObject:object parent:parent binaryFunction:function];
  if (result)
  {
    result->_stage = stage;
  }

  return result;
}

- (MTLResourceID)gpuResourceID
{
  [[(MTLToolsFunctionHandle *)self function] validateIsIFBFunction];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

@end