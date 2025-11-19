@interface HMDDataStreamBulkSendSession
- (BOOL)isActive;
- (HMDDataStreamBulkSendProtocol)bulkSendProtocol;
- (HMDDataStreamBulkSendSession)initWithProtocol:(id)a3 sessionIdentifier:(id)a4 queue:(id)a5 logIdentifier:(id)a6;
- (void)_closeSession;
- (void)_pumpReadDataIfPossible;
- (void)asyncHandleIncomingPackets:(id)a3 isEof:(BOOL)a4;
- (void)asyncHandleRemoteCloseWithError:(id)a3;
- (void)dealloc;
- (void)read:(id)a3;
@end

@implementation HMDDataStreamBulkSendSession

- (HMDDataStreamBulkSendProtocol)bulkSendProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_bulkSendProtocol);

  return WeakRetained;
}

- (void)_pumpReadDataIfPossible
{
  v3 = [(HMDDataStreamBulkSendSession *)self activeReadHandler];

  if (v3)
  {
    v4 = [(HMDDataStreamBulkSendSession *)self pendingReads];
    v5 = [v4 hmf_maybeDequeue];

    if (!v5)
    {
      v6 = [(HMDDataStreamBulkSendSession *)self pendingError];
      [(HMDDataStreamBulkSendSession *)self setPendingError:0];
      if (v6)
      {
        goto LABEL_5;
      }

      if (!self->_hasReceivedEof)
      {
        goto LABEL_6;
      }
    }

    v6 = 0;
LABEL_5:
    v7 = [(HMDDataStreamBulkSendSession *)self activeReadHandler];
    [(HMDDataStreamBulkSendSession *)self setActiveReadHandler:0];
    v8 = [(HMDDataStreamBulkSendSession *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDDataStreamBulkSendSession__pumpReadDataIfPossible__block_invoke;
    block[3] = &unk_2797355D0;
    v14 = v7;
    v12 = v5;
    v13 = v6;
    v9 = v6;
    v10 = v7;
    dispatch_async(v8, block);

LABEL_6:
  }
}

- (void)_closeSession
{
  if (!self->_isClosed)
  {
    self->_isClosed = 1;
    v3 = [(HMDDataStreamBulkSendSession *)self activeReadHandler];
    [(HMDDataStreamBulkSendSession *)self setActiveReadHandler:0];
    if (v3)
    {
      v4 = [(HMDDataStreamBulkSendSession *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__HMDDataStreamBulkSendSession__closeSession__block_invoke;
      block[3] = &unk_2797348C0;
      v6 = v3;
      dispatch_async(v4, block);
    }
  }
}

- (void)asyncHandleRemoteCloseWithError:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamBulkSendSession *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDDataStreamBulkSendSession_asyncHandleRemoteCloseWithError___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __64__HMDDataStreamBulkSendSession_asyncHandleRemoteCloseWithError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received remote close with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  *(*(a1 + 32) + 9) = 1;
  [*(a1 + 32) setPendingError:*(a1 + 40)];
  result = [*(a1 + 32) _pumpReadDataIfPossible];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)asyncHandleIncomingPackets:(id)a3 isEof:(BOOL)a4
{
  v6 = a3;
  v7 = [(HMDDataStreamBulkSendSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDDataStreamBulkSendSession_asyncHandleIncomingPackets_isEof___block_invoke;
  block[3] = &unk_279734938;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

uint64_t __65__HMDDataStreamBulkSendSession_asyncHandleIncomingPackets_isEof___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received EOF from accessory.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    *(*(a1 + 32) + 9) = 1;
  }

  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) pendingReads];
    [v6 hmf_enqueueMultiple:*(a1 + 40)];
  }

  result = [*(a1 + 32) _pumpReadDataIfPossible];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)read:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamBulkSendSession *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_isClosed)
  {
    v6 = [(HMDDataStreamBulkSendSession *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__HMDDataStreamBulkSendSession_read___block_invoke;
    block[3] = &unk_2797348C0;
    v9 = v4;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = [(HMDDataStreamBulkSendSession *)self activeReadHandler];

    if (v7)
    {
      [(HMDDataStreamBulkSendSession *)self cancelWithReason:5];
    }

    else
    {
      [(HMDDataStreamBulkSendSession *)self setActiveReadHandler:v4];
      [(HMDDataStreamBulkSendSession *)self _pumpReadDataIfPossible];
    }
  }
}

- (BOOL)isActive
{
  if (self->_isClosed)
  {
    return 0;
  }

  else
  {
    v4 = [(HMDDataStreamBulkSendSession *)self pendingReads];
    if ([v4 count])
    {
    }

    else
    {
      v5 = [(HMDDataStreamBulkSendSession *)self pendingError];

      if (!v5)
      {
        return !self->_hasReceivedEof;
      }
    }

    return 1;
  }
}

- (void)dealloc
{
  if (!self->_isClosed)
  {
    v3 = [(HMDDataStreamBulkSendSession *)self bulkSendProtocol];
    if (v3)
    {
      v4 = [(HMDDataStreamBulkSendSession *)self sessionIdentifier];
      [v3 asyncBulkSendSessionDidCancelSessionWithIdentifier:v4 reason:5 hadReceivedEof:self->_hasReceivedEof];
    }
  }

  v5.receiver = self;
  v5.super_class = HMDDataStreamBulkSendSession;
  [(HMDDataStreamBulkSendSession *)&v5 dealloc];
}

- (HMDDataStreamBulkSendSession)initWithProtocol:(id)a3 sessionIdentifier:(id)a4 queue:(id)a5 logIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = HMDDataStreamBulkSendSession;
  v14 = [(HMDDataStreamBulkSendSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    *&v14->_isClosed = 0;
    objc_storeWeak(&v14->_bulkSendProtocol, v10);
    objc_storeStrong(&v15->_sessionIdentifier, a4);
    objc_storeStrong(&v15->_queue, a5);
    v16 = [MEMORY[0x277CBEB18] array];
    pendingReads = v15->_pendingReads;
    v15->_pendingReads = v16;

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v13, v11];
    logIdentifier = v15->_logIdentifier;
    v15->_logIdentifier = v18;
  }

  return v15;
}

@end