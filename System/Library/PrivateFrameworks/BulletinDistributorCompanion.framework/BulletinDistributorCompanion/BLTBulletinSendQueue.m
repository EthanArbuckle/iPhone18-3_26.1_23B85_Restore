@interface BLTBulletinSendQueue
- (BLTBulletinSendQueue)init;
- (BOOL)handleFileURL:(id)a3;
- (void)_queue_performSend;
- (void)_queue_queuePending;
- (void)_queue_startTimerWithFireDate:(id)a3;
- (void)queuePending;
- (void)sendNow;
- (void)sendRequest:(id)a3 type:(unsigned __int16)a4 didSend:(id)a5 didQueue:(id)a6;
- (void)sendRequest:(id)a3 withTimeout:(id)a4 didSend:(id)a5;
- (void)sendRequest:(id)a3 withTimeout:(id)a4 isTrafficRestricted:(BOOL)a5 didSend:(id)a6;
@end

@implementation BLTBulletinSendQueue

- (void)sendNow
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__BLTBulletinSendQueue_sendNow__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_performSend
{
  lastItemDate = self->_lastItemDate;
  v4 = blt_general_log();
  v5 = os_log_type_enabled(&v4->super.super, OS_LOG_TYPE_INFO);
  if (lastItemDate)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_241FB3000, &v4->super.super, OS_LOG_TYPE_INFO, "Sending queue now", buf, 2u);
    }

    v6 = self->_lastItemDate;
    self->_lastItemDate = 0;

    v7 = [(BLTBulletinSendQueue *)self timer];
    [v7 invalidate];

    [(BLTBulletinSendQueue *)self setTimer:0];
    v4 = self->_timeout;
    timeout = self->_timeout;
    self->_timeout = 0;

    v26 = [(NSMutableArray *)self->_completionHandlers copy];
    [(NSMutableArray *)self->_completionHandlers removeAllObjects];
    v27 = [(NSMutableArray *)self->_queuedBlockHandlers copy];
    [(NSMutableArray *)self->_queuedBlockHandlers removeAllObjects];
    v9 = [MEMORY[0x277CBEAA8] date];
    lastQueueSendDate = self->_lastQueueSendDate;
    self->_lastQueueSendDate = v9;

    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    *buf = 0;
    v54 = buf;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__4;
    v57 = __Block_byref_object_dispose__4;
    v58 = 0;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v52 = 0;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = __Block_byref_object_copy__4;
    v49[4] = __Block_byref_object_dispose__4;
    v50 = 0;
    v11 = dispatch_group_create();
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    attachmentSender = self->_attachmentSender;
    v13 = [(BLTBulletinSendQueuePassthrough *)self delegate];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __42__BLTBulletinSendQueue__queue_performSend__block_invoke;
    v42[3] = &unk_278D321A0;
    v42[4] = self;
    v44 = v47;
    v45 = &v59;
    v46 = buf;
    v14 = v11;
    v43 = v14;
    LODWORD(attachmentSender) = [(BLTBulletinSendQueueAttachmentSender *)attachmentSender sendAttachmentsWithSender:v13 timeout:v4 completion:v42];

    if (attachmentSender)
    {
      dispatch_group_enter(v14);
    }

    else
    {
      *(v60 + 24) = 1;
    }

    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v41 = 0;
    dispatch_group_enter(v14);
    if (self->_firstRequest)
    {
      v15 = [(BLTBulletinSendQueuePassthrough *)self delegate];
      firstRequest = self->_firstRequest;
      firstRequestType = self->_firstRequestType;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __42__BLTBulletinSendQueue__queue_performSend__block_invoke_3;
      v38[3] = &unk_278D321A0;
      v38[4] = self;
      v39[1] = v40;
      v39[2] = v51;
      v39[3] = v49;
      v39[0] = v14;
      v18 = [v27 count];
      if (v18)
      {
        v19 = [v27 objectAtIndexedSubscript:0];
      }

      else
      {
        v19 = 0;
      }

      [v15 sendRequest:firstRequest type:firstRequestType withTimeout:v4 didSend:v38 didQueue:v19];
      v22 = v39;
      if (v18)
      {
      }

      v23 = self->_firstRequest;
      self->_firstRequest = 0;
    }

    else
    {
      queueSerializer = self->_queueSerializer;
      v21 = [(BLTBulletinSendQueuePassthrough *)self delegate];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __42__BLTBulletinSendQueue__queue_performSend__block_invoke_5;
      v36[3] = &unk_278D321A0;
      v36[4] = self;
      v37[1] = v40;
      v37[2] = v51;
      v37[3] = v49;
      v37[0] = v14;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __42__BLTBulletinSendQueue__queue_performSend__block_invoke_7;
      v34[3] = &unk_278D31428;
      v35 = v27;
      [(BLTSendQueueSerializer *)queueSerializer sendWithSender:v21 timeout:v4 responseHandlers:0 didSend:v36 didQueue:v34];
      v22 = v37;

      v23 = v35;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__BLTBulletinSendQueue__queue_performSend__block_invoke_8;
    block[3] = &unk_278D321C8;
    v29 = v26;
    v30 = &v59;
    v31 = v51;
    v32 = buf;
    v33 = v49;
    v25 = v26;
    dispatch_group_notify(v14, queue, block);

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(v47, 8);

    _Block_object_dispose(v49, 8);
    _Block_object_dispose(v51, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v59, 8);
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, &v4->super.super, OS_LOG_TYPE_INFO, "Request to send queue now. Nothing to send.", buf, 2u);
  }
}

- (BLTBulletinSendQueue)init
{
  v19.receiver = self;
  v19.super_class = BLTBulletinSendQueue;
  v2 = [(BLTBulletinSendQueue *)&v19 init];
  if (v2)
  {
    if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAttachmentFiles])
    {
      v3 = objc_alloc_init(BLTBulletinSendQueueAttachmentSender);
      attachmentSender = v2->_attachmentSender;
      v2->_attachmentSender = v3;
    }

    v5 = [[BLTSendQueueSerializer alloc] initWithUsesMessageIdentifiers:0];
    queueSerializer = v2->_queueSerializer;
    v2->_queueSerializer = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("BLTBulletinSendQueueSupported", v8);
    queue = v2->_queue;
    v2->_queue = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    queuedBlockHandlers = v2->_queuedBlockHandlers;
    v2->_queuedBlockHandlers = v13;

    v15 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__BLTBulletinSendQueue_init__block_invoke;
    block[3] = &unk_278D31428;
    v18 = v2;
    dispatch_async(v15, block);
  }

  return v2;
}

void __28__BLTBulletinSendQueue_init__block_invoke(uint64_t a1)
{
  v2 = BLTFileURLInPairingPathWait(@"bulletintmpdata");
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = blt_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __28__BLTBulletinSendQueue_init__block_invoke_cold_1(v3);
  }

  v2 = BLTFileURLInHomePath(@"bulletintmpdata");
  if (v2)
  {
LABEL_5:
    v4 = v2;
  }

  else
  {
    v5 = blt_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __28__BLTBulletinSendQueue_init__block_invoke_cold_2(v5);
    }

    v4 = 0;
  }

  [*(*(a1 + 32) + 88) setSendFileURL:v4];
}

- (void)sendRequest:(id)a3 type:(unsigned __int16)a4 didSend:(id)a5 didQueue:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BLTBulletinSendQueue_sendRequest_type_didSend_didQueue___block_invoke;
  block[3] = &unk_278D32128;
  block[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

uint64_t __58__BLTBulletinSendQueue_sendRequest_type_didSend_didQueue___block_invoke(uint64_t a1)
{
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "Queuing new request", v4, 2u);
  }

  return [*(a1 + 32) _queue_sendRequest:*(a1 + 40) type:*(a1 + 64) withTimeout:0 isTrafficRestricted:0 didSend:*(a1 + 48) didQueue:*(a1 + 56)];
}

- (void)sendRequest:(id)a3 withTimeout:(id)a4 didSend:(id)a5
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BLTBulletinSendQueue_sendRequest_withTimeout_didSend___block_invoke;
  block[3] = &unk_278D316C8;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

uint64_t __56__BLTBulletinSendQueue_sendRequest_withTimeout_didSend___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) redact];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "Queuing new intelligent summary request %@", &v6, 0xCu);
  }

  result = [*(a1 + 40) _queue_sendRequest:*(a1 + 32) type:27 withTimeout:*(a1 + 48) isTrafficRestricted:0 didSend:0 didQueue:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendRequest:(id)a3 withTimeout:(id)a4 isTrafficRestricted:(BOOL)a5 didSend:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__BLTBulletinSendQueue_sendRequest_withTimeout_isTrafficRestricted_didSend___block_invoke;
  block[3] = &unk_278D32150;
  v18 = v10;
  v19 = self;
  v22 = a5;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

void __76__BLTBulletinSendQueue_sendRequest_withTimeout_isTrafficRestricted_didSend___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) redact];
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_INFO, "Queuing new add bulletin request %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) bulletin];
  v5 = *(*(a1 + 40) + 80);
  v6 = [v4 attachmentURLURL];
  v7 = [v4 attachmentKey:0];
  [v5 addAttachment:v6 key:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v4 additionalAttachments];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = *(*(a1 + 40) + 80);
        v14 = [v12 attachmentURLURL];
        v15 = [v12 identifier];
        v16 = [v4 attachmentKey:v15];
        [v13 addAttachment:v14 key:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [*(a1 + 40) _queue_sendRequest:*(a1 + 32) type:1 withTimeout:*(a1 + 48) isTrafficRestricted:*(a1 + 64) didSend:*(a1 + 56) didQueue:0];
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleFileURL:(id)a3
{
  queueSerializer = self->_queueSerializer;
  v5 = a3;
  v6 = [(BLTBulletinSendQueuePassthrough *)self delegate];
  LOBYTE(queueSerializer) = [(BLTSendQueueSerializer *)queueSerializer handleFileURL:v5 protobufHandler:v6];

  return queueSerializer;
}

- (void)queuePending
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__BLTBulletinSendQueue_queuePending__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__BLTBulletinSendQueue__queue_performSend__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__BLTBulletinSendQueue__queue_performSend__block_invoke_2;
  block[3] = &unk_278D32178;
  v14 = a2;
  v13 = *(a1 + 56);
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __42__BLTBulletinSendQueue__queue_performSend__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }
}

void __42__BLTBulletinSendQueue__queue_performSend__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__BLTBulletinSendQueue__queue_performSend__block_invoke_4;
  block[3] = &unk_278D32178;
  v14 = a2;
  v13 = *(a1 + 56);
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __42__BLTBulletinSendQueue__queue_performSend__block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }
}

void __42__BLTBulletinSendQueue__queue_performSend__block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__BLTBulletinSendQueue__queue_performSend__block_invoke_6;
  block[3] = &unk_278D32178;
  v14 = a2;
  v13 = *(a1 + 56);
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __42__BLTBulletinSendQueue__queue_performSend__block_invoke_6(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }
}

void __42__BLTBulletinSendQueue__queue_performSend__block_invoke_7(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __42__BLTBulletinSendQueue__queue_performSend__block_invoke_8(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(*(a1 + 48) + 8) + 24))
        {
          v7 = 56;
        }

        else
        {
          v7 = 64;
        }

        (*(*(*(&v9 + 1) + 8 * i) + 16))(*(*(&v9 + 1) + 8 * i), (*(*(*(a1 + 48) + 8) + 24) & 1) & *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + v7) + 8) + 40));
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_startTimerWithFireDate:(id)a3
{
  v4 = a3;
  v5 = [(BLTBulletinSendQueue *)self timer];
  [v5 invalidate];

  v6 = [objc_alloc(MEMORY[0x277D6C0A8]) initWithIdentifier:@"com.apple.bulletindistributor.coalescebulletinrequest"];
  [(BLTBulletinSendQueue *)self setTimer:v6];

  objc_initWeak(&location, self);
  v7 = [(BLTBulletinSendQueue *)self timer];
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__BLTBulletinSendQueue__queue_startTimerWithFireDate___block_invoke;
  v9[3] = &unk_278D321F0;
  objc_copyWeak(&v10, &location);
  [v7 scheduleForDate:v4 leewayInterval:queue queue:v9 handler:1.0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__BLTBulletinSendQueue__queue_startTimerWithFireDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_performSend];
}

- (void)_queue_queuePending
{
  firstRequest = self->_firstRequest;
  if (firstRequest)
  {
    [(BLTSendQueueSerializer *)self->_queueSerializer add:firstRequest type:self->_firstRequestType];
    v4 = self->_firstRequest;
    self->_firstRequest = 0;
  }
}

@end