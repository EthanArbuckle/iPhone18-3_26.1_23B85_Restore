@interface MTLToolsAccelerationStructure
- (MTLAccelerationStructureDescriptor)descriptor;
- (MTLResourceID)gpuResourceID;
- (MTLToolsAccelerationStructure)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTLToolsAccelerationStructure)initWithBaseObject:(id)a3 parent:(id)a4 heap:(id)a5;
- (unint64_t)accelerationStructureUniqueIdentifier;
- (unint64_t)bufferOffset;
- (unint64_t)gpuHandle;
- (unint64_t)resourceIndex;
- (unint64_t)size;
- (unint64_t)uniqueIdentifier;
- (void)dealloc;
- (void)setDescriptor:(id)a3;
@end

@implementation MTLToolsAccelerationStructure

- (unint64_t)size
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 size];
}

- (unint64_t)bufferOffset
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bufferOffset];
}

- (unint64_t)uniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 uniqueIdentifier];
}

- (unint64_t)accelerationStructureUniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 accelerationStructureUniqueIdentifier];
}

- (MTLAccelerationStructureDescriptor)descriptor
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 descriptor];
}

- (void)setDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDescriptor:a3];
}

- (unint64_t)resourceIndex
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceIndex];
}

- (unint64_t)gpuHandle
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuHandle];
}

- (MTLResourceID)gpuResourceID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuResourceID];
}

- (MTLToolsAccelerationStructure)initWithBaseObject:(id)a3 parent:(id)a4
{
  v9.receiver = self;
  v9.super_class = MTLToolsAccelerationStructure;
  v6 = [MTLToolsResource initWithBaseObject:sel_initWithBaseObject_parent_ parent:?];
  if (v6)
  {
    v7 = [a3 buffer];
    if (v7)
    {
      v6->_toolsBuffer = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:v7 parent:a4];
    }
  }

  return v6;
}

- (MTLToolsAccelerationStructure)initWithBaseObject:(id)a3 parent:(id)a4 heap:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLToolsAccelerationStructure;
  v7 = [(MTLToolsResource *)&v10 initWithBaseObject:a3 parent:a4 heap:a5];
  if (v7)
  {
    v8 = [a3 buffer];
    if (v8)
    {
      v7->_toolsBuffer = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:v8 parent:a4];
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