@interface MTLDebugIndirectCommandBuffer
- (MTLDebugIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)a3 device:(id)a4 descriptor:(id)a5 maxCommandCount:(unint64_t)a6 options:(unint64_t)a7;
- (id)indirectComputeCommandAtIndex:(unint64_t)a3;
- (id)indirectRenderCommandAtIndex:(unint64_t)a3;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (void)dealloc;
- (void)resetWithRange:(_NSRange)a3;
@end

@implementation MTLDebugIndirectCommandBuffer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugIndirectCommandBuffer;
  [(MTLToolsResource *)&v3 dealloc];
}

- (MTLDebugIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)a3 device:(id)a4 descriptor:(id)a5 maxCommandCount:(unint64_t)a6 options:(unint64_t)a7
{
  v15.receiver = self;
  v15.super_class = MTLDebugIndirectCommandBuffer;
  v11 = [(MTLToolsResource *)&v15 initWithBaseObject:a3 parent:a4];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB18] array];
    v11->_optimizedRangeList = v12;
    v13 = v12;
    v11->_desc = [a5 copy];
    v11->_maxCommandCount = a6;
    v11->_iCB = a3;
    v11->super.super._options = a7;
    atomic_store(0, &v11->_purgeableStateToken);
    v11->_purgeableStateHasBeenSet = 0;
    v11->_isRender = ([(MTLIndirectCommandBufferDescriptor *)v11->_desc commandTypes]& 0x18F) != 0;
  }

  return v11;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)a3
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")] == 2)
  {
    _MTLMessageContextPush_();
  }

  if (!self->_isRender)
  {
    [MTLDebugIndirectCommandBuffer indirectRenderCommandAtIndex:?];
  }

  if ([-[MTLToolsObject baseObject](self "baseObject")] <= a3)
  {
    [MTLDebugIndirectCommandBuffer indirectRenderCommandAtIndex:?];
  }

  _MTLMessageContextEnd();
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLDebugIndirectRenderCommand alloc] initWithBaseObject:v6 descriptor:self->_desc indexCount:a3 indirectCommandBuffer:self];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (id)indirectComputeCommandAtIndex:(unint64_t)a3
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")] == 2)
  {
    _MTLMessageContextPush_();
  }

  if (self->_isRender)
  {
    [MTLDebugIndirectCommandBuffer indirectComputeCommandAtIndex:?];
  }

  if ([-[MTLToolsObject baseObject](self "baseObject")] <= a3)
  {
    [MTLDebugIndirectCommandBuffer indirectRenderCommandAtIndex:?];
  }

  _MTLMessageContextEnd();
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLDebugIndirectComputeCommand alloc] initWithBaseObject:v6 descriptor:self->_desc indexCount:a3 indirectCommandBuffer:self];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (atomic_load(&self->_purgeableStateToken))
      {
        _MTLMessageContextPush_();
      }
    }

    self->_purgeableStateHasBeenSet = 1;
  }

  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)resetWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v13.length = [(MTLToolsIndirectCommandBuffer *)self size];
  v12.location = location;
  v12.length = length;
  v13.location = 0;
  v6 = NSIntersectionRange(v12, v13);
  if (v6.location != location || v6.length != length)
  {
    v9 = length;
    v10 = [(MTLToolsIndirectCommandBuffer *)self size];
    v8 = location;
    MTLReportFailure();
  }

  v11.receiver = self;
  v11.super_class = MTLDebugIndirectCommandBuffer;
  [(MTLToolsIndirectCommandBuffer *)&v11 resetWithRange:location, length, v8, v9, v10];
}

@end