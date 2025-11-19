@interface IMAVDaemonListener
- (IMAVDaemonListener)init;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)addHandler:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)removeHandler:(id)a3;
@end

@implementation IMAVDaemonListener

- (IMAVDaemonListener)init
{
  v6.receiver = self;
  v6.super_class = IMAVDaemonListener;
  v2 = [(IMAVDaemonListener *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_setupComplete = 0;
    v4 = v2;
  }

  return v3;
}

- (void)addHandler:(id)a3
{
  v13 = a3;
  if ((objc_msgSend_containsObjectIdenticalTo_(self->_handlers, v4, v13, v5, v6) & 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = self->_handlers;
      self->_handlers = v11;

      handlers = self->_handlers;
    }

    objc_msgSend_addObject_(handlers, v7, v13, v8, v9);
  }
}

- (void)removeHandler:(id)a3
{
  objc_msgSend_removeObjectIdenticalTo_(self->_handlers, a2, a3, v3, v4);
  if (!objc_msgSend_count(self->_handlers, v6, v7, v8, v9))
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  types = protocol_getMethodDescription(&unk_28669E058, a3, 1, 1).types;
  v6 = MEMORY[0x277CBEB08];

  return MEMORY[0x2821F9670](v6, sel_signatureWithObjCTypes_, types, v4, v5);
}

- (void)forwardInvocation:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10 = objc_msgSend__copyForEnumerating(self->_handlers, v6, v7, v8, v9);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v10;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v26, v30, 16);
  if (v17)
  {
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        objc_msgSend_selector(v4, v13, v14, v15, v16);
        if (objc_opt_respondsToSelector())
        {
          v21 = objc_autoreleasePoolPush();
          objc_msgSend_invokeWithTarget_(v4, v22, v20, v23, v24);
          objc_autoreleasePoolPop(v21);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v26, v30, 16);
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v5);
  v25 = *MEMORY[0x277D85DE8];
}

@end