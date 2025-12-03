@interface BLTSettingsSendSerializer
- (BLTSettingsSendSerializer)init;
- (void)handleFileURL:(id)l;
- (void)sendNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement withTimeout:(id)timeout;
@end

@implementation BLTSettingsSendSerializer

- (BLTSettingsSendSerializer)init
{
  v17.receiver = self;
  v17.super_class = BLTSettingsSendSerializer;
  v2 = [(BLTSettingsSendSerializer *)&v17 init];
  if (v2)
  {
    v3 = [[BLTSendQueueSerializer alloc] initWithUsesMessageIdentifiers:1];
    queueSerializer = v2->_queueSerializer;
    v2->_queueSerializer = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("BLTSettingsSendSerializer", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    array = [MEMORY[0x277CBEB18] array];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    ackHandlers = v2->_ackHandlers;
    v2->_ackHandlers = dictionary;

    v13 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__BLTSettingsSendSerializer_init__block_invoke;
    block[3] = &unk_278D31428;
    v16 = v2;
    dispatch_async(v13, block);
  }

  return v2;
}

void __33__BLTSettingsSendSerializer_init__block_invoke(uint64_t a1)
{
  v2 = BLTFileURLInPairingPathWait(@"settingsynctmpdata");
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = blt_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __33__BLTSettingsSendSerializer_init__block_invoke_cold_1(v3);
  }

  v2 = BLTFileURLInHomePath(@"settingsynctmpdata");
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

  [*(*(a1 + 32) + 24) setSendFileURL:v4];
}

- (void)handleFileURL:(id)l
{
  queueSerializer = self->_queueSerializer;
  lCopy = l;
  delegate = [(BLTSettingsSendSerializerPassthrough *)self delegate];
  [(BLTSendQueueSerializer *)queueSerializer handleFileURL:lCopy protobufHandler:delegate];
}

void __117__BLTSettingsSendSerializer_sendRequest_type_withTimeout_withDescription_onlyOneFor_didSend_andResponse_spoolToFile___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 24);
  v7 = *(a1 + 72);
  v25 = 0;
  [v6 add:v5 type:v7 messageIdentifier:&v25];
  v8 = v25;
  v9 = blt_ids_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    v3 = v10;
    if (!v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = *(a1 + 40);
      v13 = objc_opt_class();
      v1 = NSStringFromClass(v13);
      v2 = [*(a1 + 40) redact];
      v3 = [v11 stringWithFormat:@"%@: %@", v1, v2];
    }

    v14 = *(a1 + 56);
    *buf = 138412802;
    if (v14)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v27 = v3;
    v28 = 2112;
    v29 = v8;
    v30 = 2080;
    v31 = v15;
    _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Setting send stored protobuf %@ got message identifier: %@ with response completion: %s", buf, 0x20u);
    if (!v10)
    {
    }
  }

  if (*(a1 + 56) && v8)
  {
    objc_initWeak(buf, *(a1 + 32));
    v16 = *(a1 + 56);
    if (v16)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __117__BLTSettingsSendSerializer_sendRequest_type_withTimeout_withDescription_onlyOneFor_didSend_andResponse_spoolToFile___block_invoke_26;
      v22[3] = &unk_278D32328;
      v9 = &v24;
      objc_copyWeak(&v24, buf);
      v23 = *(a1 + 56);
      v17 = [v22 copy];
      v3 = &v23;
    }

    else
    {
      v17 = 0;
    }

    [*(*(a1 + 32) + 40) setObject:v17 forKeyedSubscript:v8];
    if (v16)
    {

      objc_destroyWeak(&v9->isa);
    }

    objc_destroyWeak(buf);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = *(*(a1 + 32) + 32);
    v20 = [v18 copy];
    [v19 addObject:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __117__BLTSettingsSendSerializer_sendRequest_type_withTimeout_withDescription_onlyOneFor_didSend_andResponse_spoolToFile___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();

  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[6])
  {
    v6 = WeakRetained[8] + 1;
    WeakRetained[8] = v6;
    v7 = WeakRetained[7];
    if (v7)
    {
      if (v6 >= v7)
      {
        v6 = WeakRetained[7];
      }

      v4.n128_f64[0] = v6 / v7;
    }

    else
    {
      v4.n128_u64[0] = 1.0;
    }

    (*(WeakRetained[6] + 16))(v4);
    v5 = WeakRetained;
  }
}

- (void)sendNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement withTimeout:(id)timeout
{
  sentCopy = sent;
  acknowledgementCopy = acknowledgement;
  timeoutCopy = timeout;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__BLTSettingsSendSerializer_sendNowWithSent_withAcknowledgement_withTimeout___block_invoke;
  v15[3] = &unk_278D323A0;
  v17 = sentCopy;
  v18 = acknowledgementCopy;
  v15[4] = self;
  v16 = timeoutCopy;
  v12 = timeoutCopy;
  v13 = acknowledgementCopy;
  v14 = sentCopy;
  dispatch_sync(queue, v15);
}

void __77__BLTSettingsSendSerializer_sendNowWithSent_withAcknowledgement_withTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  v3 = [*(*(a1 + 32) + 40) copy];
  [*(*(a1 + 32) + 40) removeAllObjects];
  *(*(a1 + 32) + 56) = [v3 count];
  *(*(a1 + 32) + 64) = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __77__BLTSettingsSendSerializer_sendNowWithSent_withAcknowledgement_withTimeout___block_invoke_2;
  v17 = &unk_278D32378;
  v4 = v2;
  v18 = v4;
  v19 = *(a1 + 48);
  v5 = MEMORY[0x245D067A0](&v14);
  v6 = v5;
  if (*(*(a1 + 32) + 56))
  {
    v7 = [*(a1 + 56) copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v10 = *(a1 + 32);
    v11 = v10[3];
    v12 = [v10 delegate];
    [v11 sendWithSender:v12 timeout:*(a1 + 40) responseHandlers:v3 didSend:v6 didQueue:0];
  }

  else
  {
    (*(v5 + 16))(v5, 1, 0);
    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(1.0);
    }
  }
}

void __77__BLTSettingsSendSerializer_sendNowWithSent_withAcknowledgement_withTimeout___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v13 + 1) + 8 * v10) + 16))(*(*(&v13 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end