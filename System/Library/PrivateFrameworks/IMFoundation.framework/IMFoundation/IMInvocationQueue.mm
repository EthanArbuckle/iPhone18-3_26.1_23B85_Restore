@interface IMInvocationQueue
- (BOOL)_acceptsOptions:(unint64_t)options;
- (BOOL)_insertInvocation:(id)invocation options:(unint64_t)options;
- (BOOL)_invokeInvocation:(id)invocation;
- (BOOL)_replaceSimilarInvocation:(id)invocation;
- (IMInvocationQueue)init;
- (id)_dequeueInvocation;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)peek;
- (int)_maxQueueLimitSize;
- (int)_numberOfLimitedMessagesInQueue;
- (int64_t)_enqueueInvocation:(id)invocation options:(unint64_t)options;
- (unint64_t)_optionsForInvocation:(id)invocation;
- (void)_checkQueue;
- (void)_setQueueTimer;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)invokeAll;
- (void)removeAllInvocations;
- (void)setProtocol:(id)protocol;
@end

@implementation IMInvocationQueue

- (IMInvocationQueue)init
{
  v8.receiver = self;
  v8.super_class = IMInvocationQueue;
  v2 = [(IMInvocationQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    options = v2->_options;
    v2->_options = v5;

    v2->_holdQueue = 0;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMInvocationQueue;
  [(IMInvocationQueue *)&v2 dealloc];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  objc_msgSend_retainArguments(invocationCopy, v5, v6);
  v8 = objc_msgSend__optionsForInvocation_(self, v7, invocationCopy);
  if (v8)
  {
    v11 = v8;
    if ((v8 & 0x10) != 0 && !objc_msgSend_count(self->_queue, v9, v10))
    {
      objc_msgSend__invokeInvocation_(self, v9, invocationCopy);
    }

    else
    {
      v17 = objc_msgSend__enqueueInvocation_options_(self, v9, invocationCopy, v11) == 0;
      if (objc_msgSend_wantsReturnValue(invocationCopy, v12, v13))
      {
        objc_msgSend_setReturnValue_(invocationCopy, v14, &v17);
      }
    }
  }

  else if (objc_msgSend_wantsReturnValue(invocationCopy, v9, v10))
  {
    v16 = 0;
    objc_msgSend_setReturnValue_(invocationCopy, v15, &v16);
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  protocolChecker = self->_protocolChecker;
  if (protocolChecker)
  {
    v6 = objc_msgSend_methodSignatureForSelector_(protocolChecker, a2, selector);
  }

  else
  {
    v7 = objc_msgSend_target(self, a2, selector);
    v6 = objc_msgSend_methodSignatureForSelector_(v7, v8, selector);
  }

  return v6;
}

- (void)setProtocol:(id)protocol
{
  protocolCopy = protocol;
  protocolChecker = self->_protocolChecker;
  self->_protocolChecker = 0;

  if (protocolCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E696AE48]);
    v7 = objc_msgSend_initWithProtocol_(v5, v6, protocolCopy);
    v8 = self->_protocolChecker;
    self->_protocolChecker = v7;
  }
}

- (void)_setQueueTimer
{
  if (!self->_holdQueue)
  {
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel__checkQueue, 0);
    if (self->_dequeueRate >= 0.0)
    {

      objc_msgSend_performSelector_withObject_afterDelay_(self, v3, sel__checkQueue, 0);
    }
  }
}

- (BOOL)_invokeInvocation:(id)invocation
{
  invocationCopy = invocation;
  v7 = objc_msgSend_target(self, v5, v6);
  objc_msgSend_invokeWithTarget_(invocationCopy, v8, v7);

  v9 = 1;
  v14 = 1;
  if (objc_msgSend_wantsReturnValue(invocationCopy, v10, v11))
  {
    objc_msgSend_getReturnValue_(invocationCopy, v12, &v14);
    v9 = v14;
  }

  return v9 & 1;
}

- (void)_checkQueue
{
  v17 = objc_msgSend_peek(self, a2, v2);
  if (!v17)
  {
    goto LABEL_10;
  }

  v6 = objc_msgSend_delegate(self, v4, v5);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    if (objc_msgSend__invokeInvocation_(self, v12, v17))
    {
      v14 = objc_msgSend__dequeueInvocation(self, v12, v13);
    }

    goto LABEL_8;
  }

  v9 = objc_msgSend_delegate(self, v7, v8);
  v11 = objc_msgSend_queue_shouldInvoke_(v9, v10, self, v17);

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_8:
  if ((objc_msgSend_isEmpty(self, v12, v13) & 1) == 0)
  {
    objc_msgSend__setQueueTimer(self, v15, v16);
  }

LABEL_10:
}

- (unint64_t)_optionsForInvocation:(id)invocation
{
  invocationCopy = invocation;
  v7 = objc_msgSend_delegate(self, v5, v6);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v11 = objc_msgSend_delegate(self, v9, v10);
    v13 = objc_msgSend_queue_optionsForInvocation_(v11, v12, self, invocationCopy);
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (int)_numberOfLimitedMessagesInQueue
{
  v3 = self->_queue;
  objc_sync_enter(v3);
  v6 = 0;
  v7 = 0;
  while (objc_msgSend_count(self->_queue, v4, v5) > v6)
  {
    v9 = objc_msgSend_objectAtIndex_(self->_options, v8, v6);
    v12 = objc_msgSend_unsignedIntegerValue(v9, v10, v11);

    v7 += (v12 >> 3) & 1;
    ++v6;
  }

  objc_sync_exit(v3);

  return v7;
}

- (int)_maxQueueLimitSize
{
  result = dword_1EAED7F68;
  if (dword_1EAED7F68 < 0)
  {
    result = IMGetAppIntForKey(@"MaxQueueSize");
    if (!result)
    {
      result = 3;
    }

    dword_1EAED7F68 = result;
  }

  return result;
}

- (BOOL)_acceptsOptions:(unint64_t)options
{
  result = 1;
  if ((options & 8) != 0)
  {
    v4 = objc_msgSend__numberOfLimitedMessagesInQueue(self, a2, options);
    if (v4 >= objc_msgSend__maxQueueLimitSize(self, v5, v6))
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)_replaceSimilarInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = self->_queue;
  objc_sync_enter(v5);
  for (i = 0; ; ++i)
  {
    v10 = objc_msgSend_count(self->_queue, v6, v7);
    if (v10 <= i)
    {
      break;
    }

    v11 = objc_msgSend_objectAtIndex_(self->_queue, v9, i);
    v14 = objc_msgSend_selector(v11, v12, v13);
    if (v14 == objc_msgSend_selector(invocationCopy, v15, v16))
    {
      objc_msgSend_replaceObjectAtIndex_withObject_(self->_queue, v17, i, invocationCopy);

      break;
    }
  }

  objc_sync_exit(v5);

  return v10 > i;
}

- (BOOL)_insertInvocation:(id)invocation options:(unint64_t)options
{
  invocationCopy = invocation;
  v7 = self->_queue;
  objc_sync_enter(v7);
  v10 = 0;
  while (1)
  {
    v12 = objc_msgSend_count(self->_queue, v8, v9);
    v13 = v10;
    if (v12 <= v10)
    {
      break;
    }

    v14 = objc_msgSend_objectAtIndex_(self->_options, v11, v10);
    v17 = objc_msgSend_unsignedIntegerValue(v14, v15, v16);

    v10 = v13 + 1;
    if ((v17 & 2) == 0)
    {
      objc_msgSend_insertObject_atIndex_(self->_queue, v8, invocationCopy, v13);
      options = self->_options;
      v20 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v19, options);
      objc_msgSend_insertObject_atIndex_(options, v21, v20, v13);

      break;
    }
  }

  objc_sync_exit(v7);

  return v12 > v13;
}

- (int64_t)_enqueueInvocation:(id)invocation options:(unint64_t)options
{
  invocationCopy = invocation;
  objc_msgSend_retainArguments(invocationCopy, v7, v8);
  if (!objc_msgSend__acceptsOptions_(self, v9, options))
  {
    v13 = 2;
    goto LABEL_12;
  }

  if ((options & 4) == 0)
  {
    if (options & 2) != 0 && (objc_msgSend__insertInvocation_options_(self, v10, invocationCopy, options))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((objc_msgSend__replaceSimilarInvocation_(self, v10, invocationCopy) & 1) == 0)
  {
LABEL_8:
    v14 = self->_queue;
    objc_sync_enter(v14);
    objc_msgSend_addObject_(self->_queue, v15, invocationCopy);
    options = self->_options;
    v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v17, options);
    objc_msgSend_addObject_(options, v19, v18);

    objc_sync_exit(v14);
  }

LABEL_9:
  if (!self->_holdQueue)
  {
    objc_msgSend__checkQueue(self, v11, v12);
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (id)_dequeueInvocation
{
  if (objc_msgSend_isEmpty(self, a2, v2))
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend___imFirstObject(self->_queue, v4, v5);
    v7 = self->_queue;
    objc_sync_enter(v7);
    objc_msgSend_removeFirstObject(self->_queue, v8, v9);
    objc_msgSend_removeFirstObject(self->_options, v10, v11);
    objc_sync_exit(v7);
  }

  return v6;
}

- (void)removeAllInvocations
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel__checkQueue, 0);
  obj = self->_queue;
  objc_sync_enter(obj);
  objc_msgSend_removeAllObjects(self->_queue, v3, v4);
  objc_msgSend_removeAllObjects(self->_options, v5, v6);
  objc_sync_exit(obj);
}

- (void)invokeAll
{
  holdQueue = self->_holdQueue;
  self->_holdQueue = 1;
  if ((objc_msgSend_isEmpty(self, a2, v2) & 1) == 0)
  {
    do
    {
      objc_msgSend__checkQueue(self, v5, v6);
    }

    while (!objc_msgSend_isEmpty(self, v7, v8));
  }

  self->_holdQueue = holdQueue;
}

- (id)peek
{
  if (objc_msgSend_isEmpty(self, a2, v2))
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend___imFirstObject(self->_queue, v4, v5);
  }

  return v6;
}

@end