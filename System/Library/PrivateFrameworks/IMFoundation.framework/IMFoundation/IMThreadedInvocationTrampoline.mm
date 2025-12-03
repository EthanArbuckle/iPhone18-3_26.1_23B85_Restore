@interface IMThreadedInvocationTrampoline
- (IMThreadedInvocationTrampoline)initWithTarget:(id)target thread:(id)thread immediateForMatchingThread:(BOOL)matchingThread;
- (void)forwardInvocation:(id)invocation;
@end

@implementation IMThreadedInvocationTrampoline

- (IMThreadedInvocationTrampoline)initWithTarget:(id)target thread:(id)thread immediateForMatchingThread:(BOOL)matchingThread
{
  targetCopy = target;
  threadCopy = thread;
  v14.receiver = self;
  v14.super_class = IMThreadedInvocationTrampoline;
  v10 = [(IMThreadedInvocationTrampoline *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setTarget_(v10, v11, targetCopy);
    objc_storeStrong(&v12->_thread, thread);
    v12->_immediateForMatchingThread = matchingThread;
  }

  return v12;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  objc_msgSend_retainArguments(invocationCopy, v4, v5);
  thread = self->_thread;
  if (thread)
  {
    if (self->_immediateForMatchingThread)
    {
      v9 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v6, v7);
      isEqual = objc_msgSend_isEqual_(v9, v10, self->_thread);

      if (isEqual)
      {
        objc_msgSend_performInvocation_(self, v6, invocationCopy);
        goto LABEL_8;
      }

      thread = self->_thread;
    }

    objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(self, v6, sel_performInvocation_, thread, invocationCopy, 0);
  }

  else
  {
    objc_msgSend_performSelectorInBackground_withObject_(self, v6, sel_performInvocation_, invocationCopy);
  }

LABEL_8:
}

@end