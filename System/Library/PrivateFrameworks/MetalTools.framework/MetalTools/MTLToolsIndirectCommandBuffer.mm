@interface MTLToolsIndirectCommandBuffer
- (MTLResourceID)gpuResourceID;
- (id)indirectComputeCommandAtIndex:(unint64_t)index;
- (id)indirectRenderCommandAtIndex:(unint64_t)index;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)resourceIndex;
- (unint64_t)size;
- (unint64_t)storageMode;
- (unint64_t)uniqueIdentifier;
- (void)getHeader:(void *)header headerSize:(unint64_t *)size;
- (void)resetWithRange:(_NSRange)range;
@end

@implementation MTLToolsIndirectCommandBuffer

- (id)indirectComputeCommandAtIndex:(unint64_t)index
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [(MTLToolsObject *)[MTLToolsIndirectComputeCommand alloc] initWithBaseObject:v6 parent:self];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)index
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [(MTLToolsObject *)[MTLToolsIndirectRenderCommand alloc] initWithBaseObject:v6 parent:self];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject size];
}

- (unint64_t)storageMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject storageMode];
}

- (void)getHeader:(void *)header headerSize:(unint64_t *)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject getHeader:header headerSize:size];
}

- (void)resetWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject resetWithRange:{location, length}];
}

- (unint64_t)uniqueIdentifier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject uniqueIdentifier];
}

- (unint64_t)gpuAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuAddress];
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

@end