@interface HMDDataStreamBulkSendProtocol
- (BOOL)isActive;
- (HMDDataStreamBulkSendProtocol)initWithQueue:(id)queue accessory:(id)accessory logIdentifier:(id)identifier bulkSendSessionContextFactory:(id)factory;
- (HMDDataStreamProtocolDelegate)dataStream;
- (id)_createSessionCandidateWithRequestHeader:(id)header metadata:(id)metadata;
- (id)_createSessionFromCandidate:(id)candidate queue:(id)queue;
- (id)_createSessionIdentifier;
- (id)_getBulkSendSessionForSessionIdentifier:(id)identifier;
- (id)accessory;
- (void)_closeAllSessionsWithError:(id)error;
- (void)_handleCloseMessage:(id)message;
- (void)_handleDataMessage:(id)message;
- (void)_handleOpenWithRequestHeader:(id)header payload:(id)payload;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value;
- (void)_openSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback;
- (void)_pumpMessage:(id)message session:(id)session;
- (void)_pumpReceiveFailure:(id)failure session:(id)session;
- (void)_removeBulkSendSessionForSessionIdentifier:(id)identifier;
- (void)_sendAckMessageWithIdentifier:(id)identifier;
- (void)_sendOpenResponseWithRequestHeader:(id)header streamIdentifier:(id)identifier;
- (void)_startSessionCandidate:(id)candidate queue:(id)queue callback:(id)callback;
- (void)addListener:(id)listener fileType:(id)type;
- (void)asyncBulkSendSessionCandidate:(id)candidate didAcceptOnQueue:(id)queue callback:(id)callback;
- (void)asyncBulkSendSessionCandidate:(id)candidate didRejectWithStatus:(unsigned __int16)status;
- (void)asyncBulkSendSessionDidCancelSessionWithIdentifier:(id)identifier reason:(unsigned __int16)reason hadReceivedEof:(BOOL)eof;
- (void)dataStream:(id)stream didFailWithError:(id)error;
- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload;
- (void)dataStreamDidClose:(id)close;
- (void)dataStreamDidOpen:(id)open;
- (void)dataStreamInitiatedClose:(id)close;
- (void)openSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback;
- (void)removeListener:(id)listener;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDDataStreamBulkSendProtocol

- (id)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDDataStreamProtocolDelegate)dataStream
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStream);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v46 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  queue = [(HMDDataStreamBulkSendProtocol *)self queue];
  dispatch_assert_queue_V2(queue);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  pendingBulkSendSessionContextBySessionIdentifier = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
  v7 = [pendingBulkSendSessionContextBySessionIdentifier countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(pendingBulkSendSessionContextBySessionIdentifier);
      }

      v11 = *(*(&v37 + 1) + 8 * v10);
      pendingBulkSendSessionContextBySessionIdentifier2 = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
      v13 = [pendingBulkSendSessionContextBySessionIdentifier2 objectForKey:v11];

      handleOpenRequestResponseTimer = [v13 handleOpenRequestResponseTimer];

      if (handleOpenRequestResponseTimer == fireCopy)
      {
        [v13 setHandleOpenRequestResponseTimer:0];
        v16 = v11;
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v20;
        v43 = 2112;
        v44 = v16;
        v21 = "%{public}@Session with identifier: %@ open request response timer has expired";
        goto LABEL_15;
      }

      sendCloseEventTimer = [v13 sendCloseEventTimer];

      if (sendCloseEventTimer == fireCopy)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [pendingBulkSendSessionContextBySessionIdentifier countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    [v13 setSendCloseEventTimer:0];
    v16 = v11;
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v20;
    v43 = 2112;
    v44 = v16;
    v21 = "%{public}@Session with identifier: %@ send event close timer has expired";
LABEL_15:
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, v21, buf, 0x16u);

LABEL_16:
    objc_autoreleasePoolPop(v17);

    if (!v16)
    {
      goto LABEL_21;
    }

    pendingBulkSendSessionContextBySessionIdentifier3 = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
    v24 = [pendingBulkSendSessionContextBySessionIdentifier3 objectForKeyedSubscript:v16];

    if ([v24 shouldCloseSessionWithTimeoutReason])
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping invoking the session start callback since handle response timer hasn't expired", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      sessionStartCallback = [v24 sessionStartCallback];
      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:8 userInfo:0];
      (sessionStartCallback)[2](sessionStartCallback, 0, v34);
      pendingBulkSendSessionContextBySessionIdentifier4 = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
      [pendingBulkSendSessionContextBySessionIdentifier4 setObject:0 forKeyedSubscript:v16];
    }
  }

  else
  {
LABEL_10:

LABEL_21:
    v29 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v32;
      v43 = 2112;
      v44 = 0;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Could not find expired timer for session with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_openSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback
{
  v54[4] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  reasonCopy = reason;
  metadataCopy = metadata;
  queueCopy = queue;
  callbackCopy = callback;
  queue = [(HMDDataStreamBulkSendProtocol *)self queue];
  dispatch_assert_queue_V2(queue);

  _createSessionIdentifier = [(HMDDataStreamBulkSendProtocol *)self _createSessionIdentifier];
  v53[0] = @"type";
  v53[1] = @"streamId";
  v41 = reasonCopy;
  v42 = typeCopy;
  v54[0] = typeCopy;
  v54[1] = _createSessionIdentifier;
  v53[2] = @"target";
  v53[3] = @"reason";
  v54[2] = @"controller";
  v54[3] = reasonCopy;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:4];
  v20 = [v19 mutableCopy];

  if (metadataCopy && [metadataCopy count])
  {
    [v20 setObject:metadataCopy forKeyedSubscript:@"metadata"];
  }

  bulkSendSessionContextFactory = [(HMDDataStreamBulkSendProtocol *)self bulkSendSessionContextFactory];
  v22 = (bulkSendSessionContextFactory)[2](bulkSendSessionContextFactory, callbackCopy);

  pendingBulkSendSessionContextBySessionIdentifier = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
  [pendingBulkSendSessionContextBySessionIdentifier setObject:v22 forKeyedSubscript:_createSessionIdentifier];

  handleOpenRequestResponseTimer = [v22 handleOpenRequestResponseTimer];
  [handleOpenRequestResponseTimer setDelegate:self];

  queue2 = [(HMDDataStreamBulkSendProtocol *)self queue];
  handleOpenRequestResponseTimer2 = [v22 handleOpenRequestResponseTimer];
  [handleOpenRequestResponseTimer2 setDelegateQueue:queue2];

  handleOpenRequestResponseTimer3 = [v22 handleOpenRequestResponseTimer];
  [handleOpenRequestResponseTimer3 resume];

  sendCloseEventTimer = [v22 sendCloseEventTimer];
  [sendCloseEventTimer setDelegate:self];

  queue3 = [(HMDDataStreamBulkSendProtocol *)self queue];
  sendCloseEventTimer2 = [v22 sendCloseEventTimer];
  [sendCloseEventTimer2 setDelegateQueue:queue3];

  sendCloseEventTimer3 = [v22 sendCloseEventTimer];
  [sendCloseEventTimer3 resume];

  v32 = objc_autoreleasePoolPush();
  selfCopy = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543874;
    v48 = v35;
    v49 = 2112;
    v50 = _createSessionIdentifier;
    v51 = 2112;
    v52 = metadataCopy;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Starting bulk session with identifier: %@ and metadata: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v32);
  dataStream = [(HMDDataStreamBulkSendProtocol *)selfCopy dataStream];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __88__HMDDataStreamBulkSendProtocol__openSessionForFileType_reason_metadata_queue_callback___block_invoke;
  v43[3] = &unk_27972C290;
  v43[4] = selfCopy;
  v44 = _createSessionIdentifier;
  v45 = queueCopy;
  v46 = callbackCopy;
  v37 = queueCopy;
  v38 = callbackCopy;
  v39 = _createSessionIdentifier;
  [dataStream sendRequestForProtocol:@"dataSend" topic:@"open" payload:v20 completion:v43];

  v40 = *MEMORY[0x277D85DE8];
}

void __88__HMDDataStreamBulkSendProtocol__openSessionForFileType_reason_metadata_queue_callback___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v10);

  v11 = [*(a1 + 32) pendingBulkSendSessionContextBySessionIdentifier];
  v12 = [v11 objectForKey:*(a1 + 40)];

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      *buf = 138543874;
      v61 = v17;
      v62 = 2112;
      v63 = v18;
      v64 = 2112;
      v65 = v7;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Received bulk send open response for session with identifier: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [*(a1 + 32) pendingBulkSendSessionContextBySessionIdentifier];
    [v19 removeObjectForKey:*(a1 + 40)];

    if ([v12 shouldCloseSessionWithTimeoutReason])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = *(a1 + 40);
        *buf = 138543618;
        v61 = v23;
        v62 = 2112;
        v63 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Session with identifier: %@ has timed out, sending close event to accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 32) _sendCloseMessageWithIdentifier:*(a1 + 40) reason:6];
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:8 userInfo:0];
      (*(*(a1 + 56) + 16))();
      goto LABEL_32;
    }

    if (v7)
    {
      (*(*(a1 + 56) + 16))();
      goto LABEL_33;
    }

    v28 = [v8 hmf_numberForKey:@"status"];
    v25 = v28;
    if (!v28)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = *(a1 + 32);
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v37;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not find a status in header", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:27 userInfo:0];
      (*(*(a1 + 56) + 16))();
      goto LABEL_31;
    }

    v59 = v28;
    v29 = [v28 integerValue];
    if (!v29)
    {
      v38 = [HMDDataStreamBulkSendSession alloc];
      v39 = *(a1 + 32);
      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      v42 = [v39 logIdentifier];
      v31 = [(HMDDataStreamBulkSendSession *)v38 initWithProtocol:v39 sessionIdentifier:v40 queue:v41 logIdentifier:v42];

      v43 = [*(a1 + 32) activeBulkSendSessions];
      [v43 setObject:v31 forKey:*(a1 + 40)];

      v44 = [[HMDDataStreamBulkSendOpenSessionResult alloc] initWithSession:v31 payload:v9];
      (*(*(a1 + 56) + 16))();

      v25 = v59;
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    v30 = v29;
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v32 = [v9 hmf_numberForKey:@"status"];
    v58 = v32;
    if (!v32)
    {
      context = objc_autoreleasePoolPush();
      v45 = *(a1 + 32);
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        v48 = HMDStringFromDataStreamMessageStatus(v30);
        *buf = 138543874;
        v61 = v47;
        v62 = 2112;
        v63 = v48;
        v64 = 2112;
        v65 = v31;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Received non-success status in header: %@, mapped error: %@", buf, 0x20u);
      }

      v25 = v59;
      goto LABEL_30;
    }

    v56 = [v32 integerValue];
    if (v56 == 2)
    {
      v33 = 14;
    }

    else
    {
      if (v56 != 9)
      {
        goto LABEL_28;
      }

      v33 = 21;
    }

    v49 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v33];

    v31 = v49;
LABEL_28:
    context = objc_autoreleasePoolPush();
    v45 = *(a1 + 32);
    v46 = HMFGetOSLogHandle();
    v25 = v59;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      v55 = v45;
      v50 = HMDStringFromDataStreamMessageStatus(v30);
      v51 = HMDStringFromDataStreamBulkSendResponsePayloadStatus(v56);
      *buf = 138544130;
      v61 = v54;
      v62 = 2112;
      v63 = v50;
      v64 = 2112;
      v65 = v51;
      v52 = v51;
      v66 = 2112;
      v67 = v31;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Received non-success status in header: %@, payload status: %@, mapped error: %@", buf, 0x2Au);

      v45 = v55;
    }

LABEL_30:

    objc_autoreleasePoolPop(context);
    (*(*(a1 + 56) + 16))();

    goto LABEL_31;
  }

  if (v16)
  {
    v26 = HMFGetLogIdentifier();
    v27 = *(a1 + 40);
    *buf = 138543618;
    v61 = v26;
    v62 = 2112;
    v63 = v27;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Could not find pending bulk send session context for session identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  [*(a1 + 32) _sendCloseMessageWithIdentifier:*(a1 + 40) reason:6];
LABEL_33:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)openSessionForFileType:(id)type reason:(id)reason metadata:(id)metadata queue:(id)queue callback:(id)callback
{
  typeCopy = type;
  reasonCopy = reason;
  metadataCopy = metadata;
  queueCopy = queue;
  callbackCopy = callback;
  queue = [(HMDDataStreamBulkSendProtocol *)self queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87__HMDDataStreamBulkSendProtocol_openSessionForFileType_reason_metadata_queue_callback___block_invoke;
  v23[3] = &unk_279734848;
  v23[4] = self;
  v24 = typeCopy;
  v25 = reasonCopy;
  v26 = metadataCopy;
  v27 = queueCopy;
  v28 = callbackCopy;
  v18 = callbackCopy;
  v19 = queueCopy;
  v20 = metadataCopy;
  v21 = reasonCopy;
  v22 = typeCopy;
  dispatch_async(queue, v23);
}

- (void)_sendAckMessageWithIdentifier:(id)identifier
{
  v17[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataStream = [(HMDDataStreamBulkSendProtocol *)self dataStream];
  if (dataStream)
  {
    v16[0] = @"streamId";
    v16[1] = @"endOfStream";
    v17[0] = identifierCopy;
    v17[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending 'ack' for sid=%@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [dataStream sendEventForProtocol:@"dataSend" topic:@"ack" payload:v6 completion:&__block_literal_global_46_124492];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_pumpReceiveFailure:(id)failure session:(id)session
{
  sessionCopy = session;
  [sessionCopy asyncHandleRemoteCloseWithError:failure];
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [(HMDDataStreamBulkSendProtocol *)self _removeBulkSendSessionForSessionIdentifier:sessionIdentifier];
}

- (void)_pumpMessage:(id)message session:(id)session
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  sessionCopy = session;
  v8 = [messageCopy objectForKeyedSubscript:@"packets"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [messageCopy objectForKeyedSubscript:@"endOfStream"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    v15 = 0;
    goto LABEL_13;
  }

  bOOLValue = [v13 BOOLValue];
  v15 = bOOLValue;
  if (v10)
  {
LABEL_13:
    v16 = [v10 count];
    if ((v15 & 1) != 0 || v16)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (bOOLValue)
  {
    v15 = 1;
LABEL_18:
    [sessionCopy asyncHandleIncomingPackets:v10 isEof:v15];
    goto LABEL_19;
  }

LABEL_15:
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v20;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Received message with no packets", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleDataMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"streamId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HMDDataStreamBulkSendProtocol *)self _getBulkSendSessionForSessionIdentifier:v7];
    if (v8)
    {
      [(HMDDataStreamBulkSendProtocol *)self _pumpMessage:messageCopy session:v8];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v16;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Data packet for streamIdentifier=%@ dropped because no session is active", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Data packet dropped because no session identifier was present", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloseMessage:(id)message
{
  v32[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"streamId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [messageCopy objectForKeyedSubscript:@"reason"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v7)
  {
    if (v10)
    {
      v10 = v8;
    }

    else
    {
      v10 = &unk_286628EE8;
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCFD28];
    v31 = @"reason";
    v32[0] = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v14 = [v11 errorWithDomain:v12 code:1054 userInfo:v13];

    v15 = [(HMDDataStreamBulkSendProtocol *)self _getBulkSendSessionForSessionIdentifier:v7];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Received close packet for stream identifier: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [(HMDDataStreamBulkSendProtocol *)selfCopy _pumpReceiveFailure:v14 session:v15];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v25;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Close packet for streamIdentifier=%@ dropped because no session is active", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Close dropped because streamIdentifier was not included", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenWithRequestHeader:(id)header payload:(id)payload
{
  v38 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  payloadCopy = payload;
  v8 = [payloadCopy objectForKeyedSubscript:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [payloadCopy objectForKeyedSubscript:@"target"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [payloadCopy objectForKeyedSubscript:@"metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v10 && v13)
  {
    listeners = [(HMDDataStreamBulkSendProtocol *)self listeners];
    v18 = [listeners objectForKey:v10];

    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (v18)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v23 = HMFGetLogIdentifier();
        v32 = 138543618;
        v33 = v23;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Received 'open' with type=%@; passing to listener", &v32, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [(HMDDataStreamBulkSendProtocol *)selfCopy _createSessionCandidateWithRequestHeader:headerCopy metadata:v16];
      accessory = [(HMDDataStreamBulkSendProtocol *)selfCopy accessory];
      [v18 accessory:accessory didReceiveBulkSessionCandidate:v24];
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v32 = 138543618;
        v33 = v30;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Received 'open' for type=%@ but no active listener accepted it", &v32, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [(HMDDataStreamBulkSendProtocol *)selfCopy _maybeSubmitMetricForDroppedOpenRequestOfType:v10];
      [(HMDDataStreamBulkSendProtocol *)selfCopy _sendOpenResponseWithRequestHeader:headerCopy bulkSendStatus:1];
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v32 = 138543874;
      v33 = v29;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Dropping 'open' because it is missing required keys (type=%@, target=%@)", &v32, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    [(HMDDataStreamBulkSendProtocol *)selfCopy2 _sendOpenResponseWithRequestHeader:headerCopy status:4];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_removeBulkSendSessionForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeBulkSendSessions = [(HMDDataStreamBulkSendProtocol *)self activeBulkSendSessions];
  [activeBulkSendSessions removeObjectForKey:identifierCopy];
}

- (id)_getBulkSendSessionForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeBulkSendSessions = [(HMDDataStreamBulkSendProtocol *)self activeBulkSendSessions];
  v6 = [activeBulkSendSessions objectForKey:identifierCopy];

  return v6;
}

- (void)_startSessionCandidate:(id)candidate queue:(id)queue callback:(id)callback
{
  v30 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  queueCopy = queue;
  callbackCopy = callback;
  v11 = [(HMDDataStreamBulkSendProtocol *)self _createSessionFromCandidate:candidateCopy queue:queueCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  pendingReads = [candidateCopy pendingReads];
  v13 = [pendingReads countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(pendingReads);
        }

        [(HMDDataStreamBulkSendProtocol *)self _pumpMessage:*(*(&v25 + 1) + 8 * v16++) session:v11];
      }

      while (v14 != v16);
      v14 = [pendingReads countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  receivedFailure = [candidateCopy receivedFailure];

  if (receivedFailure)
  {
    receivedFailure2 = [candidateCopy receivedFailure];
    [(HMDDataStreamBulkSendProtocol *)self _pumpReceiveFailure:receivedFailure2 session:v11];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__HMDDataStreamBulkSendProtocol__startSessionCandidate_queue_callback___block_invoke;
  v22[3] = &unk_279735738;
  v23 = v11;
  v24 = callbackCopy;
  v19 = v11;
  v20 = callbackCopy;
  dispatch_async(queueCopy, v22);

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_createSessionIdentifier
{
  v3 = MEMORY[0x277CCABB0];
  nextSessionIdentifier = [(HMDDataStreamBulkSendProtocol *)self nextSessionIdentifier];
  [(HMDDataStreamBulkSendProtocol *)self setNextSessionIdentifier:(nextSessionIdentifier + 1)];

  return [v3 numberWithUnsignedInt:nextSessionIdentifier];
}

void __83__HMDDataStreamBulkSendProtocol__sendOpenResponseWithRequestHeader_payload_status___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v9 = "%{public}@Failed to send open response: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Sent open response";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendOpenResponseWithRequestHeader:(id)header streamIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"streamId";
  v12[0] = identifier;
  v6 = MEMORY[0x277CBEAC0];
  identifierCopy = identifier;
  headerCopy = header;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(HMDDataStreamBulkSendProtocol *)self _sendOpenResponseWithRequestHeader:headerCopy payload:v9 status:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_createSessionFromCandidate:(id)candidate queue:(id)queue
{
  v24 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  queueCopy = queue;
  _createSessionIdentifier = [(HMDDataStreamBulkSendProtocol *)self _createSessionIdentifier];
  v9 = [HMDDataStreamBulkSendSession alloc];
  logIdentifier = [(HMDDataStreamBulkSendProtocol *)self logIdentifier];
  v11 = [(HMDDataStreamBulkSendSession *)v9 initWithProtocol:self sessionIdentifier:_createSessionIdentifier queue:queueCopy logIdentifier:logIdentifier];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = _createSessionIdentifier;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Creating new receive session with streamIdentifier=%@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  activeBulkSendSessions = [(HMDDataStreamBulkSendProtocol *)selfCopy activeBulkSendSessions];
  [activeBulkSendSessions setObject:v11 forKey:_createSessionIdentifier];

  requestHeader = [candidateCopy requestHeader];
  [(HMDDataStreamBulkSendProtocol *)selfCopy _sendOpenResponseWithRequestHeader:requestHeader streamIdentifier:_createSessionIdentifier];

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_createSessionCandidateWithRequestHeader:(id)header metadata:(id)metadata
{
  v19 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  metadataCopy = metadata;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = headerCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Creating new receive candidate session (header %@)", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [[HMDDataStreamBulkSendSessionCandidate alloc] initWithProtocol:selfCopy requestHeader:headerCopy metadata:metadataCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)asyncBulkSendSessionDidCancelSessionWithIdentifier:(id)identifier reason:(unsigned __int16)reason hadReceivedEof:(BOOL)eof
{
  identifierCopy = identifier;
  queue = [(HMDDataStreamBulkSendProtocol *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__HMDDataStreamBulkSendProtocol_asyncBulkSendSessionDidCancelSessionWithIdentifier_reason_hadReceivedEof___block_invoke;
  block[3] = &unk_27972C268;
  block[4] = self;
  v12 = identifierCopy;
  reasonCopy = reason;
  eofCopy = eof;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)asyncBulkSendSessionCandidate:(id)candidate didRejectWithStatus:(unsigned __int16)status
{
  candidateCopy = candidate;
  queue = [(HMDDataStreamBulkSendProtocol *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDDataStreamBulkSendProtocol_asyncBulkSendSessionCandidate_didRejectWithStatus___block_invoke;
  block[3] = &unk_27972EBD8;
  block[4] = self;
  v10 = candidateCopy;
  statusCopy = status;
  v8 = candidateCopy;
  dispatch_async(queue, block);
}

- (void)asyncBulkSendSessionCandidate:(id)candidate didAcceptOnQueue:(id)queue callback:(id)callback
{
  candidateCopy = candidate;
  queueCopy = queue;
  callbackCopy = callback;
  queue = [(HMDDataStreamBulkSendProtocol *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HMDDataStreamBulkSendProtocol_asyncBulkSendSessionCandidate_didAcceptOnQueue_callback___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = candidateCopy;
  v17 = queueCopy;
  v18 = callbackCopy;
  v12 = callbackCopy;
  v13 = queueCopy;
  v14 = candidateCopy;
  dispatch_async(queue, v15);
}

- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload
{
  v23 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  requestCopy = request;
  headerCopy = header;
  payloadCopy = payload;
  if ([(HMDDataStreamBulkSendProtocol *)self isConnected])
  {
    if ([requestCopy isEqualToString:@"open"])
    {
      [(HMDDataStreamBulkSendProtocol *)self _handleOpenWithRequestHeader:headerCopy payload:payloadCopy];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = requestCopy;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@DataSend received unexpected request '%@'", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload
{
  v26 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  eventCopy = event;
  headerCopy = header;
  payloadCopy = payload;
  if (![(HMDDataStreamBulkSendProtocol *)self isConnected])
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_7:

      objc_autoreleasePoolPop(v14);
      goto LABEL_8;
    }

    v17 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v17;
    v24 = 2112;
    v25 = eventCopy;
    v18 = "%{public}@BulkSend dropping message because it is not running (topic=%@).";
    v19 = v16;
    v20 = OS_LOG_TYPE_DEBUG;
LABEL_6:
    _os_log_impl(&dword_2531F8000, v19, v20, v18, &v22, 0x16u);

    goto LABEL_7;
  }

  if (![eventCopy isEqualToString:@"data"])
  {
    if ([eventCopy isEqualToString:@"close"])
    {
      [(HMDDataStreamBulkSendProtocol *)self _handleCloseMessage:payloadCopy];
      goto LABEL_8;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v17;
    v24 = 2112;
    v25 = eventCopy;
    v18 = "%{public}@DataSend received unexpected event '%@'";
    v19 = v16;
    v20 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  [(HMDDataStreamBulkSendProtocol *)self _handleDataMessage:payloadCopy];
LABEL_8:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamDidOpen:(id)open
{
  v25 = *MEMORY[0x277D85DE8];
  openCopy = open;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@DataStream did open; connected.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamBulkSendProtocol *)selfCopy setIsConnected:1];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  listeners = [(HMDDataStreamBulkSendProtocol *)selfCopy listeners];
  objectEnumerator = [listeners objectEnumerator];

  v11 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (v15)
        {
          accessory = [(HMDDataStreamBulkSendProtocol *)selfCopy accessory];
          [v15 accessoryDidStartListening:accessory];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamDidClose:(id)close
{
  v12 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream closed; cleaning up", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamBulkSendProtocol *)selfCopy _closeAllSessionsWithError:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamInitiatedClose:(id)close
{
  v12 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream initiated closing...", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)stream didFailWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@DataStream failed with error; cleaning up. (%@)", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDDataStreamBulkSendProtocol *)selfCopy _closeAllSessionsWithError:errorCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActive
{
  listeners = [(HMDDataStreamBulkSendProtocol *)self listeners];
  v3 = [listeners count] != 0;

  return v3;
}

- (void)_closeAllSessionsWithError:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    listeners = [(HMDDataStreamBulkSendProtocol *)selfCopy listeners];
    v10 = [listeners count];
    activeBulkSendSessions = [(HMDDataStreamBulkSendProtocol *)selfCopy activeBulkSendSessions];
    *buf = 138543874;
    v44 = v8;
    v45 = 2048;
    v46 = v10;
    v47 = 2048;
    v48 = [activeBulkSendSessions count];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Session closed; removing %lu listeners and closing %lu sessions", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamBulkSendProtocol *)selfCopy setIsConnected:0];
  if (errorCopy)
  {
    v41 = *MEMORY[0x277CCA7E8];
    v42 = errorCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1005 userInfo:v12];
  accessory = [(HMDDataStreamBulkSendProtocol *)selfCopy accessory];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  activeBulkSendSessions2 = [(HMDDataStreamBulkSendProtocol *)selfCopy activeBulkSendSessions];
  objectEnumerator = [activeBulkSendSessions2 objectEnumerator];

  v17 = [objectEnumerator countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v21 = *(*(&v35 + 1) + 8 * v20);
        if (v21)
        {
          [v21 asyncHandleRemoteCloseWithError:v13];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [objectEnumerator countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v18);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  listeners2 = [(HMDDataStreamBulkSendProtocol *)selfCopy listeners];
  objectEnumerator2 = [listeners2 objectEnumerator];

  v24 = [objectEnumerator2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        [*(*(&v31 + 1) + 8 * v27++) accessory:accessory didCloseDataStreamWithError:errorCopy];
      }

      while (v25 != v27);
      v25 = [objectEnumerator2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  listeners3 = [(HMDDataStreamBulkSendProtocol *)selfCopy listeners];
  [listeners3 removeAllObjects];

  activeBulkSendSessions3 = [(HMDDataStreamBulkSendProtocol *)selfCopy activeBulkSendSessions];
  [activeBulkSendSessions3 removeAllObjects];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDDataStreamBulkSendProtocol *)self isActive]!= value)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      [(HMDDataStreamBulkSendProtocol *)selfCopy isActive];
      v8 = HMFBooleanToString();
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@BulkSend protocol changes active to %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    dataStream = [(HMDDataStreamBulkSendProtocol *)selfCopy dataStream];
    [dataStream protocolDidUpdateActiveStatus:selfCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeListener:(id)listener
{
  v23 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  isActive = [(HMDDataStreamBulkSendProtocol *)self isActive];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  listeners = [(HMDDataStreamBulkSendProtocol *)self listeners];
  keyEnumerator = [listeners keyEnumerator];

  v8 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        listeners2 = [(HMDDataStreamBulkSendProtocol *)self listeners];
        v14 = [listeners2 objectForKey:v12];

        if (v14 == listenerCopy)
        {
          listeners3 = [(HMDDataStreamBulkSendProtocol *)self listeners];
          [listeners3 removeObjectForKey:v12];

          goto LABEL_11;
        }
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  accessory = [(HMDDataStreamBulkSendProtocol *)self accessory];
  [listenerCopy accessory:accessory didCloseDataStreamWithError:0];

  [(HMDDataStreamBulkSendProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)listener fileType:(id)type
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  typeCopy = type;
  isActive = [(HMDDataStreamBulkSendProtocol *)self isActive];
  listeners = [(HMDDataStreamBulkSendProtocol *)self listeners];
  v10 = [listeners objectForKey:typeCopy];

  accessory = [(HMDDataStreamBulkSendProtocol *)self accessory];
  if (v10)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = typeCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Rejecting BulkSend registration for file type %@; handler already exists", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [listenerCopy accessory:accessory didCloseDataStreamWithError:0];
  }

  else
  {
    listeners2 = [(HMDDataStreamBulkSendProtocol *)self listeners];
    [listeners2 setObject:listenerCopy forKey:typeCopy];

    if ([(HMDDataStreamBulkSendProtocol *)self isConnected])
    {
      [listenerCopy accessoryDidStartListening:accessory];
    }

    [(HMDDataStreamBulkSendProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDDataStreamBulkSendProtocol)initWithQueue:(id)queue accessory:(id)accessory logIdentifier:(id)identifier bulkSendSessionContextFactory:(id)factory
{
  queueCopy = queue;
  accessoryCopy = accessory;
  identifierCopy = identifier;
  factoryCopy = factory;
  v28.receiver = self;
  v28.super_class = HMDDataStreamBulkSendProtocol;
  v15 = [(HMDDataStreamBulkSendProtocol *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    objc_storeWeak(&v16->_accessory, accessoryCopy);
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    listeners = v16->_listeners;
    v16->_listeners = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    activeBulkSendSessions = v16->_activeBulkSendSessions;
    v16->_activeBulkSendSessions = strongToWeakObjectsMapTable2;

    v16->_isConnected = 0;
    v16->_nextSessionIdentifier = 1;
    v21 = _Block_copy(factoryCopy);
    bulkSendSessionContextFactory = v16->_bulkSendSessionContextFactory;
    v16->_bulkSendSessionContextFactory = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingBulkSendSessionContextBySessionIdentifier = v16->_pendingBulkSendSessionContextBySessionIdentifier;
    v16->_pendingBulkSendSessionContextBySessionIdentifier = v23;

    v25 = [identifierCopy copy];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v25;
  }

  return v16;
}

HMDDataStreamBulkSendPendingSessionContext *__71__HMDDataStreamBulkSendProtocol_initWithQueue_accessory_logIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0F920];
  v3 = a2;
  v4 = [[v2 alloc] initWithTimeInterval:0 options:5.0];
  v5 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:10.0];
  v6 = [[HMDDataStreamBulkSendPendingSessionContext alloc] initWithSessionStartCallback:v3 handleOpenRequestResponseTimer:v4 sendCloseEventTimer:v5];

  return v6;
}

@end