@interface MTLDebugAccelerationStructure
- (MTLDebugAccelerationStructure)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTLDebugAccelerationStructure)initWithBaseObject:(id)a3 parent:(id)a4 heap:(id)a5;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLDebugAccelerationStructure

- (MTLDebugAccelerationStructure)initWithBaseObject:(id)a3 parent:(id)a4
{
  v10.receiver = self;
  v10.super_class = MTLDebugAccelerationStructure;
  v6 = [MTLToolsAccelerationStructure initWithBaseObject:sel_initWithBaseObject_parent_ parent:?];
  v7 = v6;
  if (v6)
  {
    atomic_store(0, &v6->_purgeableStateToken);
    v6->_purgeableStateHasBeenSet = 0;
    v8 = [a3 buffer];
    if (v8)
    {
      v7->_debugBuffer = -[MTLDebugBuffer initWithBuffer:device:options:]([MTLDebugBuffer alloc], "initWithBuffer:device:options:", v8, a4, [v8 resourceOptions]);
    }
  }

  return v7;
}

- (MTLDebugAccelerationStructure)initWithBaseObject:(id)a3 parent:(id)a4 heap:(id)a5
{
  v12.receiver = self;
  v12.super_class = MTLDebugAccelerationStructure;
  v8 = [MTLToolsAccelerationStructure initWithBaseObject:sel_initWithBaseObject_parent_heap_ parent:? heap:?];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_purgeableStateToken);
    v8->_purgeableStateHasBeenSet = 0;
    v10 = [a3 buffer];
    if (v10)
    {
      v9->_debugBuffer = -[MTLDebugBuffer initWithBuffer:heap:device:options:]([MTLDebugBuffer alloc], "initWithBuffer:heap:device:options:", v10, a5, a4, [v10 resourceOptions]);
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

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugAccelerationStructure setPurgeableState:];
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (atomic_load(&self->_purgeableStateToken))
      {
        [MTLDebugAccelerationStructure setPurgeableState:];
      }
    }

    self->_purgeableStateHasBeenSet = 1;
  }

  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 setPurgeableState:a3];
}

- (id)formattedDescription:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MTLDebugAccelerationStructure;
  return [(MTLToolsObject *)&v4 description];
}

@end