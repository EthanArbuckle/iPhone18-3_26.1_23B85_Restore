@interface HMDDataStreamBulkSendSession
- (BOOL)isActive;
- (HMDDataStreamBulkSendProtocol)bulkSendProtocol;
- (HMDDataStreamBulkSendSession)initWithProtocol:(id)protocol sessionIdentifier:(id)identifier queue:(id)queue logIdentifier:(id)logIdentifier;
- (void)_closeSession;
- (void)_pumpReadDataIfPossible;
- (void)asyncHandleIncomingPackets:(id)packets isEof:(BOOL)eof;
- (void)asyncHandleRemoteCloseWithError:(id)error;
- (void)dealloc;
- (void)read:(id)read;
@end

@implementation HMDDataStreamBulkSendSession

- (HMDDataStreamBulkSendProtocol)bulkSendProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_bulkSendProtocol);

  return WeakRetained;
}

- (void)_pumpReadDataIfPossible
{
  activeReadHandler = [(HMDDataStreamBulkSendSession *)self activeReadHandler];

  if (activeReadHandler)
  {
    pendingReads = [(HMDDataStreamBulkSendSession *)self pendingReads];
    hmf_maybeDequeue = [pendingReads hmf_maybeDequeue];

    if (!hmf_maybeDequeue)
    {
      pendingError = [(HMDDataStreamBulkSendSession *)self pendingError];
      [(HMDDataStreamBulkSendSession *)self setPendingError:0];
      if (pendingError)
      {
        goto LABEL_5;
      }

      if (!self->_hasReceivedEof)
      {
        goto LABEL_6;
      }
    }

    pendingError = 0;
LABEL_5:
    activeReadHandler2 = [(HMDDataStreamBulkSendSession *)self activeReadHandler];
    [(HMDDataStreamBulkSendSession *)self setActiveReadHandler:0];
    queue = [(HMDDataStreamBulkSendSession *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDDataStreamBulkSendSession__pumpReadDataIfPossible__block_invoke;
    block[3] = &unk_278689F98;
    v14 = activeReadHandler2;
    v12 = hmf_maybeDequeue;
    v13 = pendingError;
    v9 = pendingError;
    v10 = activeReadHandler2;
    dispatch_async(queue, block);

LABEL_6:
  }
}

- (void)_closeSession
{
  if (!self->_isClosed)
  {
    self->_isClosed = 1;
    activeReadHandler = [(HMDDataStreamBulkSendSession *)self activeReadHandler];
    [(HMDDataStreamBulkSendSession *)self setActiveReadHandler:0];
    if (activeReadHandler)
    {
      queue = [(HMDDataStreamBulkSendSession *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__HMDDataStreamBulkSendSession__closeSession__block_invoke;
      block[3] = &unk_278688B80;
      v6 = activeReadHandler;
      dispatch_async(queue, block);
    }
  }
}

- (void)asyncHandleRemoteCloseWithError:(id)error
{
  errorCopy = error;
  queue = [(HMDDataStreamBulkSendSession *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDDataStreamBulkSendSession_asyncHandleRemoteCloseWithError___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received remote close with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  *(*(a1 + 32) + 9) = 1;
  [*(a1 + 32) setPendingError:*(a1 + 40)];
  result = [*(a1 + 32) _pumpReadDataIfPossible];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)asyncHandleIncomingPackets:(id)packets isEof:(BOOL)eof
{
  packetsCopy = packets;
  queue = [(HMDDataStreamBulkSendSession *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDDataStreamBulkSendSession_asyncHandleIncomingPackets_isEof___block_invoke;
  block[3] = &unk_278688BD0;
  eofCopy = eof;
  block[4] = self;
  v10 = packetsCopy;
  v8 = packetsCopy;
  dispatch_async(queue, block);
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
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received EOF from accessory.", &v9, 0xCu);
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

- (void)read:(id)read
{
  readCopy = read;
  queue = [(HMDDataStreamBulkSendSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_isClosed)
  {
    queue2 = [(HMDDataStreamBulkSendSession *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__HMDDataStreamBulkSendSession_read___block_invoke;
    block[3] = &unk_278688B80;
    v9 = readCopy;
    dispatch_async(queue2, block);
  }

  else
  {
    activeReadHandler = [(HMDDataStreamBulkSendSession *)self activeReadHandler];

    if (activeReadHandler)
    {
      [(HMDDataStreamBulkSendSession *)self cancelWithReason:5];
    }

    else
    {
      [(HMDDataStreamBulkSendSession *)self setActiveReadHandler:readCopy];
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
    pendingReads = [(HMDDataStreamBulkSendSession *)self pendingReads];
    if ([pendingReads count])
    {
    }

    else
    {
      pendingError = [(HMDDataStreamBulkSendSession *)self pendingError];

      if (!pendingError)
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
    bulkSendProtocol = [(HMDDataStreamBulkSendSession *)self bulkSendProtocol];
    if (bulkSendProtocol)
    {
      sessionIdentifier = [(HMDDataStreamBulkSendSession *)self sessionIdentifier];
      [bulkSendProtocol asyncBulkSendSessionDidCancelSessionWithIdentifier:sessionIdentifier reason:5 hadReceivedEof:self->_hasReceivedEof];
    }
  }

  v5.receiver = self;
  v5.super_class = HMDDataStreamBulkSendSession;
  [(HMDDataStreamBulkSendSession *)&v5 dealloc];
}

- (HMDDataStreamBulkSendSession)initWithProtocol:(id)protocol sessionIdentifier:(id)identifier queue:(id)queue logIdentifier:(id)logIdentifier
{
  protocolCopy = protocol;
  identifierCopy = identifier;
  queueCopy = queue;
  logIdentifierCopy = logIdentifier;
  v21.receiver = self;
  v21.super_class = HMDDataStreamBulkSendSession;
  v14 = [(HMDDataStreamBulkSendSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    *&v14->_isClosed = 0;
    objc_storeWeak(&v14->_bulkSendProtocol, protocolCopy);
    objc_storeStrong(&v15->_sessionIdentifier, identifier);
    objc_storeStrong(&v15->_queue, queue);
    array = [MEMORY[0x277CBEB18] array];
    pendingReads = v15->_pendingReads;
    v15->_pendingReads = array;

    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", logIdentifierCopy, identifierCopy];
    logIdentifier = v15->_logIdentifier;
    v15->_logIdentifier = identifierCopy;
  }

  return v15;
}

@end