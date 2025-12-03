@interface XRMainThreadSpace
+ (XRMainThreadSpace)sharedInstance;
- (XRMainThreadSpace)init;
- (XRMainThreadSpace)initWithQueue:(id)queue;
- (id)_activeRunLoopModes;
- (id)_scheduleOperationFromCurrentQueue:(id)queue;
- (void)_executeOp:(id)op;
- (void)_queueOperationToRunOnMainThread:(id)thread;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation XRMainThreadSpace

- (XRMainThreadSpace)init
{
  v6 = objc_msgSend_mainQueue(MEMORY[0x277CCABD8], a2, v2, v3, v4);
  v15.receiver = self;
  v15.super_class = XRMainThreadSpace;
  v7 = [(XRSpace *)&v15 initWithQueue:v6];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB58]);
    v12 = objc_msgSend_initWithCapacity_(v8, v9, 100, v10, v11);
    mainThreadOps = v7->_mainThreadOps;
    v7->_mainThreadOps = v12;
  }

  return v7;
}

- (XRMainThreadSpace)initWithQueue:(id)queue
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, v3, v4);

  return 0;
}

- (void)_executeOp:(id)op
{
  opCopy = op;
  if ((objc_msgSend_isFinished(opCopy, v3, v4, v5, v6) & 1) != 0 || !objc_msgSend_isReady(opCopy, v7, v8, v9, v10))
  {
    NSLog(&cfstr_XruispaceOpHas.isa, opCopy);
  }

  else
  {
    objc_msgSend_start(opCopy, v11, v12, v13, v14);
    if (objc_msgSend_isConcurrent(opCopy, v15, v16, v17, v18))
    {
      objc_msgSend_waitUntilFinished(opCopy, v19, v20, v21, v22);
    }
  }
}

- (id)_activeRunLoopModes
{
  if (qword_27EE86730 != -1)
  {
    sub_2480B35E4();
  }

  v3 = qword_27EE86728;

  return v3;
}

- (void)_queueOperationToRunOnMainThread:(id)thread
{
  v4 = MEMORY[0x277CBEB88];
  threadCopy = thread;
  v10 = objc_msgSend_mainRunLoop(v4, v6, v7, v8, v9);
  v15 = objc_msgSend__activeRunLoopModes(self, v11, v12, v13, v14);
  objc_msgSend_performSelector_target_argument_order_modes_(v10, v16, sel__executeOp_, self, threadCopy, 0, v15);

  v26 = objc_msgSend_mainRunLoop(MEMORY[0x277CBEB88], v17, v18, v19, v20);
  CFRunLoop = objc_msgSend_getCFRunLoop(v26, v21, v22, v23, v24);
  CFRunLoopWakeUp(CFRunLoop);
}

- (id)_scheduleOperationFromCurrentQueue:(id)queue
{
  queueCopy = queue;
  if (objc_msgSend_supportsOpNames(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_name(queueCopy, v9, v10, v11, v12);

    if (!v13)
    {
      objc_msgSend_setName_(queueCopy, v9, @"UI space op", v11, v12);
    }
  }

  if ((objc_msgSend_isCancelled(queueCopy, v9, v10, v11, v12) & 1) == 0)
  {
    if (!objc_msgSend_isReady(queueCopy, v14, v15, v16, v17))
    {
      v21 = self->_mainThreadOps;
      objc_sync_enter(v21);
      objc_msgSend_addObserver_forKeyPath_options_context_(queueCopy, v22, self, @"isReady", 1, qword_27EE85EC8);
      objc_msgSend_addObject_(self->_mainThreadOps, v23, queueCopy, v24, v25);
      objc_sync_exit(v21);

      if (!objc_msgSend_isReady(queueCopy, v26, v27, v28, v29))
      {
        goto LABEL_11;
      }

      v30 = self->_mainThreadOps;
      objc_sync_enter(v30);
      if (objc_msgSend_containsObject_(self->_mainThreadOps, v31, queueCopy, v32, v33))
      {
        objc_msgSend_addObserver_forKeyPath_options_context_(queueCopy, v34, self, @"isReady", 1, qword_27EE85EC8);
        objc_msgSend_removeObject_(self->_mainThreadOps, v35, queueCopy, v36, v37);
      }

      objc_sync_exit(v30);
    }

    objc_msgSend__queueOperationToRunOnMainThread_(self, v18, queueCopy, v19, v20);
  }

LABEL_11:

  return queueCopy;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (qword_27EE85EC8 == context)
  {
    if (objc_msgSend_isEqualToString_(pathCopy, v12, @"isReady", v13, v14))
    {
      v16 = self->_mainThreadOps;
      objc_sync_enter(v16);
      if (objc_msgSend_containsObject_(self->_mainThreadOps, v17, objectCopy, v18, v19))
      {
        objc_msgSend__queueOperationToRunOnMainThread_(self, v20, objectCopy, v21, v22);
        objc_msgSend_removeObject_(self->_mainThreadOps, v23, objectCopy, v24, v25);
        objc_msgSend_removeObserver_forKeyPath_context_(objectCopy, v26, self, @"isReady", qword_27EE85EC8);
      }

      objc_sync_exit(v16);
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = XRMainThreadSpace;
    [(XRSpace *)&v27 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

+ (XRMainThreadSpace)sharedInstance
{
  if (qword_27EE86738 != -1)
  {
    sub_2480B35F8();
  }

  v3 = qword_27EE86740;

  return v3;
}

@end