@interface IMThreadedInvocationTrampoline
- (IMThreadedInvocationTrampoline)initWithTarget:(id)a3 thread:(id)a4 immediateForMatchingThread:(BOOL)a5;
- (void)forwardInvocation:(id)a3;
@end

@implementation IMThreadedInvocationTrampoline

- (IMThreadedInvocationTrampoline)initWithTarget:(id)a3 thread:(id)a4 immediateForMatchingThread:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = IMThreadedInvocationTrampoline;
  v10 = [(IMThreadedInvocationTrampoline *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setTarget_(v10, v11, v8);
    objc_storeStrong(&v12->_thread, a4);
    v12->_immediateForMatchingThread = a5;
  }

  return v12;
}

- (void)forwardInvocation:(id)a3
{
  v12 = a3;
  objc_msgSend_retainArguments(v12, v4, v5);
  thread = self->_thread;
  if (thread)
  {
    if (self->_immediateForMatchingThread)
    {
      v9 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v6, v7);
      isEqual = objc_msgSend_isEqual_(v9, v10, self->_thread);

      if (isEqual)
      {
        objc_msgSend_performInvocation_(self, v6, v12);
        goto LABEL_8;
      }

      thread = self->_thread;
    }

    objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(self, v6, sel_performInvocation_, thread, v12, 0);
  }

  else
  {
    objc_msgSend_performSelectorInBackground_withObject_(self, v6, sel_performInvocation_, v12);
  }

LABEL_8:
}

@end