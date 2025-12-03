@interface MTLToolsAccelerationStructure
- (MTLAccelerationStructureDescriptor)descriptor;
- (MTLResourceID)gpuResourceID;
- (MTLToolsAccelerationStructure)initWithBaseObject:(id)object parent:(id)parent;
- (MTLToolsAccelerationStructure)initWithBaseObject:(id)object parent:(id)parent heap:(id)heap;
- (unint64_t)accelerationStructureUniqueIdentifier;
- (unint64_t)bufferOffset;
- (unint64_t)gpuHandle;
- (unint64_t)resourceIndex;
- (unint64_t)size;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
- (void)setDescriptor:(id)descriptor;
@end

@implementation MTLToolsAccelerationStructure

- (unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject size];
}

- (unint64_t)bufferOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bufferOffset];
}

- (unint64_t)uniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject uniqueIdentifier];
}

- (unint64_t)accelerationStructureUniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject accelerationStructureUniqueIdentifier];
}

- (MTLAccelerationStructureDescriptor)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject descriptor];
}

- (void)setDescriptor:(id)descriptor
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDescriptor:descriptor];
}

- (unint64_t)resourceIndex
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceIndex];
}

- (unint64_t)gpuHandle
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuResourceID];
}

- (MTLToolsAccelerationStructure)initWithBaseObject:(id)object parent:(id)parent
{
  v9.receiver = self;
  v9.super_class = MTLToolsAccelerationStructure;
  v6 = [MTLToolsResource initWithBaseObject:sel_initWithBaseObject_parent_ parent:?];
  if (v6)
  {
    buffer = [object buffer];
    if (buffer)
    {
      v6->_toolsBuffer = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:buffer parent:parent];
    }
  }

  return v6;
}

- (MTLToolsAccelerationStructure)initWithBaseObject:(id)object parent:(id)parent heap:(id)heap
{
  v10.receiver = self;
  v10.super_class = MTLToolsAccelerationStructure;
  v7 = [(MTLToolsResource *)&v10 initWithBaseObject:object parent:parent heap:heap];
  if (v7)
  {
    buffer = [object buffer];
    if (buffer)
    {
      v7->_toolsBuffer = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:buffer parent:parent];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsAccelerationStructure;
  [(MTLToolsResource *)&v3 dealloc];
}

@end