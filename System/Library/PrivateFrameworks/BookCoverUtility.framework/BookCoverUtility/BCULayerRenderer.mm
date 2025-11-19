@interface BCULayerRenderer
- (BCULayerRenderer)initWithSuspended:(BOOL)a3;
- (id)newOperationWithPriority:(float)a3 renderLayer:(id)a4 completion:(id)a5;
- (id)newOperationWithPriority:(float)a3 waitForCPUSynchronization:(BOOL)a4 logKey:(id)a5 renderLayer:(id)a6 completion:(id)a7;
- (void)_disconnectLayer:(id)a3;
- (void)_processOperations;
- (void)_startOperation:(id)a3;
- (void)resume;
- (void)suspend;
@end

@implementation BCULayerRenderer

- (void)resume
{
  os_unfair_lock_lock(&unk_2810D5150);
  if (self->_suspended)
  {
    self->_suspended = 0;
    v3 = sub_241C7D850();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241C7C000, v3, OS_LOG_TYPE_DEFAULT, "resuming renderQueue", v6, 2u);
    }

    dispatch_resume(self->_renderQueue);
    objc_msgSend__processOperations(self, v4, v5);
  }

  os_unfair_lock_unlock(&unk_2810D5150);
}

- (void)_processOperations
{
  renderQueue = self->_renderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241C7D94C;
  block[3] = &unk_278D13FC0;
  block[4] = self;
  dispatch_async(renderQueue, block);
}

- (BCULayerRenderer)initWithSuspended:(BOOL)a3
{
  v3 = a3;
  v18.receiver = self;
  v18.super_class = BCULayerRenderer;
  v4 = [(BCULayerRenderer *)&v18 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("BCULayerRenderer.accessQueue", v5);
    v7 = *(v4 + 1);
    *(v4 + 1) = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("BCULayerRenderer.renderQueue", v8);
    v10 = *(v4 + 2);
    *(v4 + 2) = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("BCULayerRenderer.completionQueue", v11);
    v13 = *(v4 + 3);
    *(v4 + 3) = v12;

    v15 = objc_msgSend_hashTableWithOptions_(MEMORY[0x277CCAA50], v14, 517);
    v16 = *(v4 + 4);
    *(v4 + 4) = v15;

    if (v3)
    {
      *(v4 + 64) = 1;
      dispatch_suspend(*(v4 + 2));
    }
  }

  return v4;
}

- (void)suspend
{
  os_unfair_lock_lock(&unk_2810D5150);
  if (!self->_suspended)
  {
    v3 = sub_241C7D850();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241C7C000, v3, OS_LOG_TYPE_DEFAULT, "suspending renderQueue", v4, 2u);
    }

    self->_suspended = 1;
    dispatch_suspend(self->_renderQueue);
  }

  os_unfair_lock_unlock(&unk_2810D5150);
}

- (id)newOperationWithPriority:(float)a3 waitForCPUSynchronization:(BOOL)a4 logKey:(id)a5 renderLayer:(id)a6 completion:(id)a7
{
  v9 = a4;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = [_BCULayerRendererOperation alloc];
  *&v16 = a3;
  v18 = objc_msgSend_initWithRenderer_priority_waitForCPUSynchronization_logKey_layerBlock_completion_(v15, v17, self, v9, v14, v13, v12, v16);

  return v18;
}

- (id)newOperationWithPriority:(float)a3 renderLayer:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [_BCULayerRendererOperation alloc];
  *&v11 = a3;
  v13 = objc_msgSend_initWithRenderer_priority_waitForCPUSynchronization_logKey_layerBlock_completion_(v10, v12, self, 0, 0, v9, v8, v11);

  return v13;
}

- (void)_startOperation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241C7F59C;
    block[3] = &unk_278D13F20;
    block[4] = self;
    v11 = &v12;
    v10 = v4;
    dispatch_sync(accessQueue, block);
    if (*(v13 + 24) == 1)
    {
      objc_msgSend__processOperations(self, v7, v8);
    }

    _Block_object_dispose(&v12, 8);
  }
}

- (void)_disconnectLayer:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = objc_msgSend_sublayers(v4, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend__disconnectLayer_(self, v10, *(*(&v16 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v16, v20, 16);
    }

    while (v11);
  }

  objc_msgSend_setSublayers_(v4, v14, 0);
  objc_msgSend_setMask_(v4, v15, 0);
}

@end