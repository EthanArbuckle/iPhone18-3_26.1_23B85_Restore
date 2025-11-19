@interface _MFActivityMonitorMultiTarget
- (BOOL)addActivityTarget:(id)a3;
- (BOOL)removeActivityTarget:(id)a3;
- (id)displayName;
- (void)dealloc;
- (void)setPrimaryTarget:(id)a3;
@end

@implementation _MFActivityMonitorMultiTarget

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFActivityMonitorMultiTarget;
  [(_MFActivityMonitorMultiTarget *)&v3 dealloc];
}

- (BOOL)addActivityTarget:(id)a3
{
  allTargets = self->_allTargets;
  if (!allTargets)
  {
    allTargets = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->_allTargets = allTargets;
  }

  v6 = [(NSMutableSet *)allTargets containsObject:a3];
  if ((v6 & 1) == 0)
  {
    [(NSMutableSet *)self->_allTargets addObject:a3];
  }

  return v6 ^ 1;
}

- (BOOL)removeActivityTarget:(id)a3
{
  allTargets = self->_allTargets;
  if (allTargets)
  {
    LODWORD(allTargets) = [(NSMutableSet *)allTargets containsObject:?];
    if (allTargets)
    {
      [(NSMutableSet *)self->_allTargets removeObject:a3];
      if (self->_primaryTarget == a3)
      {
        [(_MFActivityMonitorMultiTarget *)self setPrimaryTarget:0];
      }

      LOBYTE(allTargets) = 1;
    }
  }

  return allTargets;
}

- (void)setPrimaryTarget:(id)a3
{
  v5 = a3;

  self->_primaryTarget = a3;
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