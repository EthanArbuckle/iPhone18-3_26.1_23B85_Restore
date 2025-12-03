@interface MTLToolsParallelRenderCommandEncoder
- (BOOL)isMemorylessRender;
- (MTLToolsParallelRenderCommandEncoder)initWithBaseObject:(id)object parent:(id)parent;
- (MTLToolsParallelRenderCommandEncoder)initWithParallelRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)renderCommandEncoder;
- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (void)endEncoding;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthStoreActionOptions:(unint64_t)options;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setStencilStoreActionOptions:(unint64_t)options;
@end

@implementation MTLToolsParallelRenderCommandEncoder

- (MTLToolsParallelRenderCommandEncoder)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLToolsParallelRenderCommandEncoder;
  return [(MTLToolsCommandEncoder *)&v5 initWithBaseObject:object parent:parent];
}

- (MTLToolsParallelRenderCommandEncoder)initWithParallelRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v9.receiver = self;
  v9.super_class = MTLToolsParallelRenderCommandEncoder;
  v7 = [(MTLToolsCommandEncoder *)&v9 initWithBaseObject:encoder parent:?];
  if (v7)
  {
    [parent retainObjectsFromRenderPassDescriptor:descriptor];
    [parent setUseRetainedObjectsLock:1];
  }

  return v7;
}

- (void)endEncoding
{
  [(MTLToolsObject *)self->super.super._parent setUseRetainedObjectsLock:0];
  v3.receiver = self;
  v3.super_class = MTLToolsParallelRenderCommandEncoder;
  [(MTLToolsCommandEncoder *)&v3 endEncoding];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  [(MTLToolsObject *)self->super.super._parent setUseRetainedObjectsLock:0];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (BOOL)isMemorylessRender
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isMemorylessRender];
}

- (id)renderCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [(MTLToolsCommandEncoder *)[MTLToolsRenderCommandEncoder alloc] initWithBaseObject:v4 parallelRenderCommandEncoder:self];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [(MTLToolsCommandEncoder *)[MTLToolsRenderCommandEncoder alloc] initWithBaseObject:v8 parallelRenderCommandEncoder:self];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v9;
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorStoreAction:action atIndex:index];
}

- (void)setDepthStoreAction:(unint64_t)action
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthStoreAction:action];
}

- (void)setStencilStoreAction:(unint64_t)action
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilStoreAction:action];
}

- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorStoreActionOptions:options atIndex:index];
}

- (void)setDepthStoreActionOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthStoreActionOptions:options];
}

- (void)setStencilStoreActionOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilStoreActionOptions:options];
}

@end