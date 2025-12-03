@interface NNMKSyncEndpoint
- (NNMKSyncEndpoint)initWithQueue:(id)queue;
- (unint64_t)newResendIntervalForPreviousResendInterval:(unint64_t)interval errorCode:(int64_t)code;
- (void)dealloc;
- (void)enqueueIDSIdentifierForResend:(id)resend atDate:(id)date silent:(BOOL)silent;
- (void)enqueueIDSIdentifiersForResend:(id)resend;
- (void)resendAllIDSIdentifiers;
- (void)resendReadyIDSIdentifiers;
@end

@implementation NNMKSyncEndpoint

- (NNMKSyncEndpoint)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = NNMKSyncEndpoint;
  v6 = [(NNMKSyncEndpoint *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointQueue, queue);
    v8 = dispatch_queue_create("com.apple.NanoMail.resendingQueue", MEMORY[0x277D85CD8]);
    resendingQueue = v7->_resendingQueue;
    v7->_resendingQueue = v8;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    datesForIDSIdentifiersScheduledToBeResent = v7->_datesForIDSIdentifiersScheduledToBeResent;
    v7->_datesForIDSIdentifiersScheduledToBeResent = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    lastResendIntervalByIDSIdentifier = v7->_lastResendIntervalByIDSIdentifier;
    v7->_lastResendIntervalByIDSIdentifier = dictionary2;
  }

  return v7;
}

- (void)dealloc
{
  resendingQueue = self->_resendingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__NNMKSyncEndpoint_dealloc__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_sync(resendingQueue, block);
  v4.receiver = self;
  v4.super_class = NNMKSyncEndpoint;
  [(NNMKSyncEndpoint *)&v4 dealloc];
}

uint64_t __27__NNMKSyncEndpoint_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(*(a1 + 32) + 32);

  return [v2 removeAllObjects];
}

- (void)enqueueIDSIdentifiersForResend:(id)resend
{
  v19 = *MEMORY[0x277D85DE8];
  if (resend)
  {
    v4 = [resend mutableCopy];
    datesForIDSIdentifiersScheduledToBeResent = self->_datesForIDSIdentifiersScheduledToBeResent;
    self->_datesForIDSIdentifiersScheduledToBeResent = v4;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [(NSMutableDictionary *)self->_datesForIDSIdentifiersScheduledToBeResent allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_datesForIDSIdentifiersScheduledToBeResent objectForKeyedSubscript:v11];
          [(NNMKSyncEndpoint *)self enqueueIDSIdentifierForResend:v11 atDate:v12 silent:0];
        }

        v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enqueueIDSIdentifierForResend:(id)resend atDate:(id)date silent:(BOOL)silent
{
  resendCopy = resend;
  dateCopy = date;
  v10 = [(NSMutableDictionary *)self->_datesForIDSIdentifiersScheduledToBeResent objectForKeyedSubscript:resendCopy];

  if (v10)
  {
    if (silent)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_datesForIDSIdentifiersScheduledToBeResent setObject:dateCopy forKeyedSubscript:resendCopy];
    if (silent)
    {
      goto LABEL_9;
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__NNMKSyncEndpoint_enqueueIDSIdentifierForResend_atDate_silent___block_invoke;
  v17[3] = &unk_279935CD8;
  v17[4] = self;
  v18 = resendCopy;
  v11 = MEMORY[0x25F864490](v17);
  [dateCopy timeIntervalSinceNow];
  if (v12 <= 0.0)
  {
    v11[2](v11);
  }

  else
  {
    v13 = dispatch_time(0, (v12 * 1000000000.0));
    resendingQueue = self->_resendingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__NNMKSyncEndpoint_enqueueIDSIdentifierForResend_atDate_silent___block_invoke_3;
    block[3] = &unk_279935D00;
    v16 = v11;
    dispatch_after(v13, resendingQueue, block);
  }

LABEL_9:
}

void __64__NNMKSyncEndpoint_enqueueIDSIdentifierForResend_atDate_silent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NNMKSyncEndpoint_enqueueIDSIdentifierForResend_atDate_silent___block_invoke_2;
  v4[3] = &unk_279935CD8;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __64__NNMKSyncEndpoint_enqueueIDSIdentifierForResend_atDate_silent___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v5 = v2;
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [v5 compare:v3];

    v2 = v5;
    if (v4 != 1)
    {
      [*(a1 + 32) resendObjectsForIDSIdentifier:*(a1 + 40)];
      v2 = v5;
    }
  }
}

- (void)resendReadyIDSIdentifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->_datesForIDSIdentifiersScheduledToBeResent allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_datesForIDSIdentifiersScheduledToBeResent objectForKeyedSubscript:v8];
        [v9 timeIntervalSinceNow];
        if (v10 <= 0.0)
        {
          [(NNMKSyncEndpoint *)self resendObjectsForIDSIdentifier:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resendAllIDSIdentifiers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_datesForIDSIdentifiersScheduledToBeResent allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [(NNMKSyncEndpoint *)self resendObjectsForIDSIdentifier:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)newResendIntervalForPreviousResendInterval:(unint64_t)interval errorCode:(int64_t)code
{
  if (code == 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (!interval)
  {
    return 1;
  }

  if (5 * interval >= 0xE10)
  {
    return 3600;
  }

  return 5 * interval;
}

@end