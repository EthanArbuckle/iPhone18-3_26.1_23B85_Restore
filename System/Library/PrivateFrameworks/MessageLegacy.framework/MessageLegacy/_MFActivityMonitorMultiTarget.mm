@interface _MFActivityMonitorMultiTarget
- (BOOL)addActivityTarget:(id)target;
- (BOOL)removeActivityTarget:(id)target;
- (id)displayName;
- (void)dealloc;
- (void)setPrimaryTarget:(id)target;
@end

@implementation _MFActivityMonitorMultiTarget

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFActivityMonitorMultiTarget;
  [(_MFActivityMonitorMultiTarget *)&v3 dealloc];
}

- (BOOL)addActivityTarget:(id)target
{
  allTargets = self->_allTargets;
  if (!allTargets)
  {
    allTargets = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->_allTargets = allTargets;
  }

  v6 = [(NSMutableSet *)allTargets containsObject:target];
  if ((v6 & 1) == 0)
  {
    [(NSMutableSet *)self->_allTargets addObject:target];
  }

  return v6 ^ 1;
}

- (BOOL)removeActivityTarget:(id)target
{
  allTargets = self->_allTargets;
  if (allTargets)
  {
    LODWORD(allTargets) = [(NSMutableSet *)allTargets containsObject:?];
    if (allTargets)
    {
      [(NSMutableSet *)self->_allTargets removeObject:target];
      if (self->_primaryTarget == target)
      {
        [(_MFActivityMonitorMultiTarget *)self setPrimaryTarget:0];
      }

      LOBYTE(allTargets) = 1;
    }
  }

  return allTargets;
}

- (void)setPrimaryTarget:(id)target
{
  targetCopy = target;

  self->_primaryTarget = target;
}

- (id)displayName
{
  if (!self->_primaryTarget || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  primaryTarget = self->_primaryTarget;

  return [primaryTarget displayName];
}

@end