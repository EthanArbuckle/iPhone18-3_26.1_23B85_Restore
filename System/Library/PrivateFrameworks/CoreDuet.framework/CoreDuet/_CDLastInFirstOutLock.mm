@interface _CDLastInFirstOutLock
- (_CDLastInFirstOutLock)init;
- (void)runWithLockAcquired:(id)a3;
@end

@implementation _CDLastInFirstOutLock

- (_CDLastInFirstOutLock)init
{
  v10.receiver = self;
  v10.super_class = _CDLastInFirstOutLock;
  v2 = [(_CDLastInFirstOutLock *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    workLock = v2->_workLock;
    v2->_workLock = v3;

    v5 = objc_opt_new();
    stateLock = v2->_stateLock;
    v2->_stateLock = v5;

    v7 = objc_opt_new();
    requestStack = v2->_requestStack;
    v2->_requestStack = v7;

    v2->_nextRequestId = 0;
  }

  return v2;
}

- (void)runWithLockAcquired:(id)a3
{
  v11 = a3;
  [(NSLock *)self->_stateLock lock];
  requestStack = self->_requestStack;
  nextRequestId = self->_nextRequestId;
  self->_nextRequestId = nextRequestId + 1;
  v6 = [(NSIndexPath *)requestStack indexPathByAddingIndex:nextRequestId];
  v7 = self->_requestStack;
  self->_requestStack = v6;

  for (i = self->_stateLock; ; i = self->_workLock)
  {
    [(NSLock *)i unlock];
    [(NSLock *)self->_workLock lock];
    [(NSLock *)self->_stateLock lock];
    if ([(NSIndexPath *)self->_requestStack indexAtPosition:[(NSIndexPath *)self->_requestStack length]- 1]== nextRequestId)
    {
      break;
    }

    [(NSLock *)self->_stateLock unlock];
  }

  v9 = [(NSIndexPath *)self->_requestStack indexPathByRemovingLastIndex];
  v10 = self->_requestStack;
  self->_requestStack = v9;

  [(NSLock *)self->_stateLock unlock];
  v11[2]();
  [(NSLock *)self->_workLock unlock];
}

@end