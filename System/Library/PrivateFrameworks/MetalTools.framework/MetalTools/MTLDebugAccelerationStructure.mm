@interface MTLDebugAccelerationStructure
- (MTLDebugAccelerationStructure)initWithBaseObject:(id)object parent:(id)parent;
- (MTLDebugAccelerationStructure)initWithBaseObject:(id)object parent:(id)parent heap:(id)heap;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)dealloc;
@end

@implementation MTLDebugAccelerationStructure

- (MTLDebugAccelerationStructure)initWithBaseObject:(id)object parent:(id)parent
{
  v10.receiver = self;
  v10.super_class = MTLDebugAccelerationStructure;
  v6 = [MTLToolsAccelerationStructure initWithBaseObject:sel_initWithBaseObject_parent_ parent:?];
  v7 = v6;
  if (v6)
  {
    atomic_store(0, &v6->_purgeableStateToken);
    v6->_purgeableStateHasBeenSet = 0;
    buffer = [object buffer];
    if (buffer)
    {
      v7->_debugBuffer = -[MTLDebugBuffer initWithBuffer:device:options:]([MTLDebugBuffer alloc], "initWithBuffer:device:options:", buffer, parent, [buffer resourceOptions]);
    }
  }

  return v7;
}

- (MTLDebugAccelerationStructure)initWithBaseObject:(id)object parent:(id)parent heap:(id)heap
{
  v12.receiver = self;
  v12.super_class = MTLDebugAccelerationStructure;
  v8 = [MTLToolsAccelerationStructure initWithBaseObject:sel_initWithBaseObject_parent_heap_ parent:? heap:?];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_purgeableStateToken);
    v8->_purgeableStateHasBeenSet = 0;
    buffer = [object buffer];
    if (buffer)
    {
      v9->_debugBuffer = -[MTLDebugBuffer initWithBuffer:heap:device:options:]([MTLDebugBuffer alloc], "initWithBuffer:heap:device:options:", buffer, heap, parent, [buffer resourceOptions]);
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugAccelerationStructure;
  [(MTLToolsAccelerationStructure *)&v3 dealloc];
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugAccelerationStructure setPurgeableState:];
  }

  if (state != 1)
  {
    if (state != 2)
    {
      if (atomic_load(&self->_purgeableStateToken))
      {
        [MTLDebugAccelerationStructure setPurgeableState:];
      }
    }

    self->_purgeableStateHasBeenSet = 1;
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setPurgeableState:state];
}

- (id)formattedDescription:(unint64_t)description
{
  v4.receiver = self;
  v4.super_class = MTLDebugAccelerationStructure;
  return [(MTLToolsObject *)&v4 description];
}

@end