@interface MTL4DebugCounterHeap
- (MTL4DebugCounterHeap)initWithCounterHeap:(id)heap device:(id)device;
- (id)resolveCounterRange:(_NSRange)range;
- (void)invalidateCounterRange:(_NSRange)range;
@end

@implementation MTL4DebugCounterHeap

- (MTL4DebugCounterHeap)initWithCounterHeap:(id)heap device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTL4DebugCounterHeap;
  return [(MTL4ToolsCounterHeap *)&v5 initWithBaseObject:heap parent:device];
}

- (void)invalidateCounterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (location + length > [(MTL4ToolsCounterHeap *)self count])
  {
    v7 = length;
    v8 = [(MTL4ToolsCounterHeap *)self count];
    v6 = location;
    _MTLMessageContextPush_();
  }

  v9.receiver = self;
  v9.super_class = MTL4DebugCounterHeap;
  [(MTL4ToolsCounterHeap *)&v9 invalidateCounterRange:location, length, v6, v7, v8];
  _MTLMessageContextEnd();
}

- (id)resolveCounterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (location + length > [(MTL4ToolsCounterHeap *)self count])
  {
    v9 = length;
    v10 = [(MTL4ToolsCounterHeap *)self count];
    v8 = location;
    _MTLMessageContextPush_();
  }

  v11.receiver = self;
  v11.super_class = MTL4DebugCounterHeap;
  v6 = [(MTL4ToolsCounterHeap *)&v11 resolveCounterRange:location, length, v8, v9, v10];
  _MTLMessageContextEnd();
  return v6;
}

@end