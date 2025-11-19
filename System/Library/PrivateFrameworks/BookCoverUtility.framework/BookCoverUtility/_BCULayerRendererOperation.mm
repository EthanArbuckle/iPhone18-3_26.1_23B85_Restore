@interface _BCULayerRendererOperation
- (_BCULayerRendererOperation)initWithRenderer:(id)a3 priority:(float)a4 waitForCPUSynchronization:(BOOL)a5 logKey:(id)a6 layerBlock:(id)a7 completion:(id)a8;
- (float)priority;
- (id)configureLayer;
- (int64_t)_compareHoldingStateLock:(id)a3;
- (void)cancel;
- (void)completeWithImage:(id)a3;
- (void)dealloc;
- (void)setPriority:(float)a3;
@end

@implementation _BCULayerRendererOperation

- (_BCULayerRendererOperation)initWithRenderer:(id)a3 priority:(float)a4 waitForCPUSynchronization:(BOOL)a5 logKey:(id)a6 layerBlock:(id)a7 completion:(id)a8
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v40.receiver = self;
  v40.super_class = _BCULayerRendererOperation;
  v19 = [(_BCULayerRendererOperation *)&v40 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_renderer, a3);
    v23 = objc_msgSend_copy(v17, v21, v22);
    layerBlock = v20->_layerBlock;
    v20->_layerBlock = v23;

    v27 = objc_msgSend_copy(v18, v25, v26);
    completion = v20->_completion;
    v20->_completion = v27;

    v20->_priority = a4;
    v20->_waitForCPUSynchronization = a5;
    if (objc_msgSend_length(v16, v29, v30))
    {
      v33 = objc_msgSend_copy(v16, v31, v32);
      logKey = v20->_logKey;
      v20->_logKey = v33;
    }

    else
    {
      logKey = objc_msgSend_UUID(MEMORY[0x277CCAD78], v31, v32);
      v37 = objc_msgSend_UUIDString(logKey, v35, v36);
      v38 = v20->_logKey;
      v20->_logKey = v37;
    }

    atomic_store(atomic_fetch_add_explicit(&qword_2810D5158, 1uLL, memory_order_relaxed), &v20->_operationId);
  }

  else
  {
    (*(v18 + 2))(v18, 0, 0);
  }

  return v20;
}

- (void)setPriority:(float)a3
{
  os_unfair_lock_lock(&unk_2810D5150);
  self->_priority = a3;

  os_unfair_lock_unlock(&unk_2810D5150);
}

- (float)priority
{
  os_unfair_lock_lock(&unk_2810D5150);
  priority = self->_priority;
  os_unfair_lock_unlock(&unk_2810D5150);
  return priority;
}

- (id)configureLayer
{
  os_unfair_lock_lock(&unk_2810D5150);
  if (self->_cancelled)
  {
    os_unfair_lock_unlock(&unk_2810D5150);
    v3 = 0;
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  self->_configuring = 1;
  v3 = MEMORY[0x245CFD010](self->_layerBlock);
  os_unfair_lock_unlock(&unk_2810D5150);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3[2](v3);
  os_unfair_lock_lock(&unk_2810D5150);
  self->_configuring = 0;
  if (self->_cancelled)
  {

    v4 = MEMORY[0x245CFD010](self->_completion);
    completion = self->_completion;
    self->_completion = 0;

    os_unfair_lock_unlock(&unk_2810D5150);
    if (!v4)
    {
      goto LABEL_8;
    }

    (v4)[2](v4, self, 0);

    goto LABEL_7;
  }

  os_unfair_lock_unlock(&unk_2810D5150);
LABEL_8:

  return v4;
}

- (void)cancel
{
  os_unfair_lock_lock(&unk_2810D5150);
  self->_cancelled = 1;
  if (self->_configuring)
  {

    os_unfair_lock_unlock(&unk_2810D5150);
  }

  else
  {
    v4 = MEMORY[0x245CFD010](self->_completion);
    completion = self->_completion;
    self->_completion = 0;

    os_unfair_lock_unlock(&unk_2810D5150);
    if (v4)
    {
      v4[2](v4, self, 0);
    }
  }
}

- (void)completeWithImage:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&unk_2810D5150);
  v4 = MEMORY[0x245CFD010](self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  os_unfair_lock_unlock(&unk_2810D5150);
  if (v4)
  {
    (v4)[2](v4, self, v6);
  }
}

- (void)dealloc
{
  objc_msgSend_cancel(self, a2, v2);
  v4.receiver = self;
  v4.super_class = _BCULayerRendererOperation;
  [(_BCULayerRendererOperation *)&v4 dealloc];
}

- (int64_t)_compareHoldingStateLock:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 5);
  priority = self->_priority;
  if (priority >= v5)
  {
    if (priority == v5)
    {
      v8 = atomic_load(&self->_operationId);
      v9 = atomic_load(v4 + 1);
      if (v8 > v9)
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end