@interface MTLToolsParallelRenderCommandEncoder
- (BOOL)isMemorylessRender;
- (MTLToolsParallelRenderCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTLToolsParallelRenderCommandEncoder)initWithParallelRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)renderCommandEncoder;
- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4;
- (void)endEncoding;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setDepthStoreActionOptions:(unint64_t)a3;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setStencilStoreActionOptions:(unint64_t)a3;
@end

@implementation MTLToolsParallelRenderCommandEncoder

- (MTLToolsParallelRenderCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLToolsParallelRenderCommandEncoder;
  return [(MTLToolsCommandEncoder *)&v5 initWithBaseObject:a3 parent:a4];
}

- (MTLToolsParallelRenderCommandEncoder)initWithParallelRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTLToolsParallelRenderCommandEncoder;
  v7 = [(MTLToolsCommandEncoder *)&v9 initWithBaseObject:a3 parent:?];
  if (v7)
  {
    [a4 retainObjectsFromRenderPassDescriptor:a5];
    [a4 setUseRetainedObjectsLock:1];
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
  v3 = [(MTLToolsObject *)self baseObject];

  return [v3 endEncodingAndRetrieveProgramAddressTable];
}

- (BOOL)isMemorylessRender
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isMemorylessRender];
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

- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4
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

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setColorStoreAction:a3 atIndex:a4];
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthStoreAction:a3];
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setStencilStoreAction:a3];
}

- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setColorStoreActionOptions:a3 atIndex:a4];
}

- (void)setDepthStoreActionOptions:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDepthStoreActionOptions:a3];
}

- (void)setStencilStoreActionOptions:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setStencilStoreActionOptions:a3];
}

@end