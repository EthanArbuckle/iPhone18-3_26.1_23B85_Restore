@interface MTLDebugIndirectCommandBuffer
- (MTLDebugIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)buffer device:(id)device descriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options;
- (id)indirectComputeCommandAtIndex:(unint64_t)index;
- (id)indirectRenderCommandAtIndex:(unint64_t)index;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)dealloc;
- (void)resetWithRange:(_NSRange)range;
@end

@implementation MTLDebugIndirectCommandBuffer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugIndirectCommandBuffer;
  [(MTLToolsResource *)&v3 dealloc];
}

- (MTLDebugIndirectCommandBuffer)initWithIndirectCommandBuffer:(id)buffer device:(id)device descriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options
{
  v15.receiver = self;
  v15.super_class = MTLDebugIndirectCommandBuffer;
  v11 = [(MTLToolsResource *)&v15 initWithBaseObject:buffer parent:device];
  if (v11)
  {
    array = [MEMORY[0x277CBEB18] array];
    v11->_optimizedRangeList = array;
    v13 = array;
    v11->_desc = [descriptor copy];
    v11->_maxCommandCount = count;
    v11->_iCB = buffer;
    v11->super.super._options = options;
    atomic_store(0, &v11->_purgeableStateToken);
    v11->_purgeableStateHasBeenSet = 0;
    v11->_isRender = ([(MTLIndirectCommandBufferDescriptor *)v11->_desc commandTypes]& 0x18F) != 0;
  }

  return v11;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)index
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

  if ([-[MTLToolsObject baseObject](self "baseObject")] <= index)
  {
    [MTLDebugIndirectCommandBuffer indirectRenderCommandAtIndex:?];
  }

  _MTLMessageContextEnd();
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLDebugIndirectRenderCommand alloc] initWithBaseObject:v6 descriptor:self->_desc indexCount:index indirectCommandBuffer:self];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (id)indirectComputeCommandAtIndex:(unint64_t)index
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

  if ([-[MTLToolsObject baseObject](self "baseObject")] <= index)
  {
    [MTLDebugIndirectCommandBuffer indirectRenderCommandAtIndex:?];
  }

  _MTLMessageContextEnd();
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLDebugIndirectComputeCommand alloc] initWithBaseObject:v6 descriptor:self->_desc indexCount:index indirectCommandBuffer:self];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  if (state != 1)
  {
    if (state != 2)
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

- (void)resetWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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