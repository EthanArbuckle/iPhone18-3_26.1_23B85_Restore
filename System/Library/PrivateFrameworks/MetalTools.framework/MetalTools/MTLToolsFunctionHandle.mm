@interface MTLToolsFunctionHandle
- (MTLResourceID)gpuResourceID;
- (MTLToolsFunctionHandle)initWithBaseObject:(id)object parent:(id)parent binaryFunction:(id)function;
- (MTLToolsFunctionHandle)initWithBaseObject:(id)object parent:(id)parent function:(id)function;
- (NSString)name;
- (unint64_t)functionType;
- (unint64_t)resourceIndex;
- (void)dealloc;
@end

@implementation MTLToolsFunctionHandle

- (void)dealloc
{
  [(MTLToolsObjectCache *)self->super._device->functionHandleObjectCache removeKey:self->super._baseObject];

  v3.receiver = self;
  v3.super_class = MTLToolsFunctionHandle;
  [(MTLToolsObject *)&v3 dealloc];
}

- (MTLToolsFunctionHandle)initWithBaseObject:(id)object parent:(id)parent function:(id)function
{
  v8.receiver = self;
  v8.super_class = MTLToolsFunctionHandle;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:object parent:parent];
  if (v6)
  {
    v6->_function = function;
  }

  return v6;
}

- (MTLToolsFunctionHandle)initWithBaseObject:(id)object parent:(id)parent binaryFunction:(id)function
{
  v8.receiver = self;
  v8.super_class = MTLToolsFunctionHandle;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:object parent:parent];
  if (v6)
  {
    v6->_binaryFunction = function;
  }

  return v6;
}

- (unint64_t)functionType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject functionType];
}

- (NSString)name
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject name];
}

- (MTLResourceID)gpuResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

@end