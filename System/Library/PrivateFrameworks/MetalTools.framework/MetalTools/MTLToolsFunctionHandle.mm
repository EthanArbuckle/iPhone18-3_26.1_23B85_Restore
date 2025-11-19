@interface MTLToolsFunctionHandle
- (MTLResourceID)gpuResourceID;
- (MTLToolsFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 binaryFunction:(id)a5;
- (MTLToolsFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 function:(id)a5;
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

- (MTLToolsFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 function:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLToolsFunctionHandle;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:a3 parent:a4];
  if (v6)
  {
    v6->_function = a5;
  }

  return v6;
}

- (MTLToolsFunctionHandle)initWithBaseObject:(id)a3 parent:(id)a4 binaryFunction:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLToolsFunctionHandle;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:a3 parent:a4];
  if (v6)
  {
    v6->_binaryFunction = a5;
  }

  return v6;
}

- (unint64_t)functionType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 functionType];
}

- (NSString)name
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 name];
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuResourceID];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

@end