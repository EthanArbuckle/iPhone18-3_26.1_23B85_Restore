@interface SGCoalescingDropBox
- (SGCoalescingDropBox)initWithName:(const char *)name boxMaker:(id)maker handler:(id)handler qos:(unsigned int)qos;
- (void)dealloc;
- (void)updateBox:(id)box delay:(double)delay;
- (void)wait;
@end

@implementation SGCoalescingDropBox

- (void)wait
{
  pthread_mutex_lock(&self->_boxLock);
  if (self->_outstanding >= 1)
  {
    do
    {
      pthread_cond_wait(&self->_cond, &self->_boxLock);
    }

    while (self->_outstanding > 0);
  }

  pthread_mutex_unlock(&self->_boxLock);
}

- (void)dealloc
{
  dispatch_source_cancel(self->_source);
  pthread_mutex_destroy(&self->_boxLock);
  pthread_cond_destroy(&self->_cond);
  v3.receiver = self;
  v3.super_class = SGCoalescingDropBox;
  [(SGCoalescingDropBox *)&v3 dealloc];
}

- (void)updateBox:(id)box delay:(double)delay
{
  v22 = *MEMORY[0x277D85DE8];
  boxCopy = box;
  pthread_mutex_lock(&self->_boxLock);
  v19 = 0;
  boxCopy[2](boxCopy, self->_box, &v19);

  pendingMerge = self->_pendingMerge;
  if (pendingMerge)
  {
    transaction = self->_transaction;
    if ((os_transaction_needs_more_time() & 1) == 0)
    {
      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 136315138;
        v21 = name;
        _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "SGCoalescingDropbox %s unable to extend transaction TTL.", buf, 0xCu);
      }

      queue = self->_queue;
      v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &__block_literal_global_22071);
      dispatch_async(queue, v12);
    }
  }

  else
  {
    v13 = self->_name;
    v14 = os_transaction_create();
    v15 = self->_transaction;
    self->_transaction = v14;

    self->_pendingMerge = 1;
  }

  ++self->_outstanding;
  pthread_mutex_unlock(&self->_boxLock);
  if (delay <= 0.0 || (v19 & 1) != 0)
  {
    dispatch_source_merge_data(self->_source, 1uLL);
  }

  else if (!pendingMerge)
  {
    v16 = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__SGCoalescingDropBox_updateBox_delay___block_invoke_2;
    v18[3] = &unk_278954A30;
    v18[4] = self;
    [MEMORY[0x277D425A0] runAsyncOnQueue:v16 afterDelaySeconds:v18 block:delay];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (SGCoalescingDropBox)initWithName:(const char *)name boxMaker:(id)maker handler:(id)handler qos:(unsigned int)qos
{
  makerCopy = maker;
  handlerCopy = handler;
  v34.receiver = self;
  v34.super_class = SGCoalescingDropBox;
  v12 = [(SGCoalescingDropBox *)&v34 init];
  v13 = v12;
  if (v12)
  {
    v12->_name = name;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    uTF8String = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, qos, 0);
    v19 = dispatch_queue_create(uTF8String, v18);
    queue = v13->_queue;
    v13->_queue = v19;

    v21 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v13->_queue);
    source = v13->_source;
    v13->_source = v21;

    v23 = [makerCopy copy];
    makeEmptyBox = v13->_makeEmptyBox;
    v13->_makeEmptyBox = v23;

    v25 = [handlerCopy copy];
    handler = v13->_handler;
    v13->_handler = v25;

    v27 = (*(v13->_makeEmptyBox + 2))();
    box = v13->_box;
    v13->_box = v27;

    pthread_mutex_init(&v13->_handlerLock, 0);
    pthread_mutex_init(&v13->_boxLock, 0);
    pthread_cond_init(&v13->_cond, 0);
    v13->_pendingMerge = 0;
    v13->_outstanding = 0;
    objc_initWeak(&location, v13);
    v29 = v13->_source;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __57__SGCoalescingDropBox_initWithName_boxMaker_handler_qos___block_invoke;
    v31[3] = &unk_278955AC0;
    objc_copyWeak(&v32, &location);
    dispatch_source_set_event_handler(v29, v31);
    dispatch_resume(v13->_source);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __57__SGCoalescingDropBox_initWithName_boxMaker_handler_qos___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = (*(*(WeakRetained + 4) + 16))();
    pthread_mutex_lock((WeakRetained + 56));
    pthread_mutex_lock((WeakRetained + 120));
    v2 = *(WeakRetained + 6);
    WeakRetained[184] = 0;
    v3 = *(WeakRetained + 47);
    objc_storeStrong(WeakRetained + 6, v1);
    pthread_mutex_unlock((WeakRetained + 120));
    if (v3)
    {
      (*(*(WeakRetained + 5) + 16))();
    }

    pthread_mutex_lock((WeakRetained + 120));
    v4 = *(WeakRetained + 47) - v3;
    *(WeakRetained + 47) = v4;
    if (!v4)
    {
      v5 = *(WeakRetained + 30);
      *(WeakRetained + 30) = 0;
    }

    pthread_cond_signal(WeakRetained + 4);
    pthread_mutex_unlock((WeakRetained + 120));
    pthread_mutex_unlock((WeakRetained + 56));
  }
}

@end