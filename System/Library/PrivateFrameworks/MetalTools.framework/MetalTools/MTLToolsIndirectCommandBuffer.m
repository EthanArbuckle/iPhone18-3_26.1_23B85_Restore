@interface MTLToolsIndirectCommandBuffer
- (MTLResourceID)gpuResourceID;
- (id)indirectComputeCommandAtIndex:(unint64_t)a3;
- (id)indirectRenderCommandAtIndex:(unint64_t)a3;
- (unint64_t)gpuAddress;
- (unint64_t)gpuHandle;
- (unint64_t)resourceIndex;
- (unint64_t)size;
- (unint64_t)storageMode;
- (unint64_t)uniqueIdentifier;
- (void)getHeader:(void *)a3 headerSize:(unint64_t *)a4;
- (void)resetWithRange:(_NSRange)a3;
@end

@implementation MTLToolsIndirectCommandBuffer

- (id)indirectComputeCommandAtIndex:(unint64_t)a3
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

- (id)indirectRenderCommandAtIndex:(unint64_t)a3
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 size];
}

- (unint64_t)storageMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 storageMode];
}

- (void)getHeader:(void *)a3 headerSize:(unint64_t *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 getHeader:a3 headerSize:a4];
}

- (void)resetWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 resetWithRange:{location, length}];
}

- (unint64_t)uniqueIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 uniqueIdentifier];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
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

@end