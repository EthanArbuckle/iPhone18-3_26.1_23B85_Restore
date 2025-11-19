@interface HMDDataStreamBulkSendProtocol
- (BOOL)isActive;
- (HMDDataStreamBulkSendProtocol)initWithQueue:(id)a3 accessory:(id)a4 logIdentifier:(id)a5 bulkSendSessionContextFactory:(id)a6;
- (HMDDataStreamProtocolDelegate)dataStream;
- (id)_createSessionCandidateWithRequestHeader:(id)a3 metadata:(id)a4;
- (id)_createSessionFromCandidate:(id)a3 queue:(id)a4;
- (id)_createSessionIdentifier;
- (id)_getBulkSendSessionForSessionIdentifier:(id)a3;
- (id)accessory;
- (void)_closeAllSessionsWithError:(id)a3;
- (void)_handleCloseMessage:(id)a3;
- (void)_handleDataMessage:(id)a3;
- (void)_handleOpenWithRequestHeader:(id)a3 payload:(id)a4;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)a3;
- (void)_openSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7;
- (void)_pumpMessage:(id)a3 session:(id)a4;
- (void)_pumpReceiveFailure:(id)a3 session:(id)a4;
- (void)_removeBulkSendSessionForSessionIdentifier:(id)a3;
- (void)_sendAckMessageWithIdentifier:(id)a3;
- (void)_sendOpenResponseWithRequestHeader:(id)a3 streamIdentifier:(id)a4;
- (void)_startSessionCandidate:(id)a3 queue:(id)a4 callback:(id)a5;
- (void)addListener:(id)a3 fileType:(id)a4;
- (void)asyncBulkSendSessionCandidate:(id)a3 didAcceptOnQueue:(id)a4 callback:(id)a5;
- (void)asyncBulkSendSessionCandidate:(id)a3 didRejectWithStatus:(unsigned __int16)a4;
- (void)asyncBulkSendSessionDidCancelSessionWithIdentifier:(id)a3 reason:(unsigned __int16)a4 hadReceivedEof:(BOOL)a5;
- (void)dataStream:(id)a3 didFailWithError:(id)a4;
- (void)dataStream:(id)a3 didReceiveEvent:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStreamDidClose:(id)a3;
- (void)dataStreamDidOpen:(id)a3;
- (void)dataStreamInitiatedClose:(id)a3;
- (void)openSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7;
- (void)removeListener:(id)a3;
- (void)timerDidFire:(id)a3;
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

- (void)timerDidFire:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamBulkSendProtocol *)self queue];
  dispatch_assert_queue_V2(v5);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v37 + 1) + 8 * v10);
      v12 = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
      v13 = [v12 objectForKey:v11];

      v14 = [v13 handleOpenRequestResponseTimer];

      if (v14 == v4)
      {
        [v13 setHandleOpenRequestResponseTimer:0];
        v16 = v11;
        v17 = objc_autoreleasePoolPush();
        v18 = self;
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

      v15 = [v13 sendCloseEventTimer];

      if (v15 == v4)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
    v22 = self;
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

    v23 = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
    v24 = [v23 objectForKeyedSubscript:v16];

    if ([v24 shouldCloseSessionWithTimeoutReason])
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
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
      v33 = [v24 sessionStartCallback];
      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:8 userInfo:0];
      (v33)[2](v33, 0, v34);
      v35 = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
      [v35 setObject:0 forKeyedSubscript:v16];
    }
  }

  else
  {
LABEL_10:

LABEL_21:
    v29 = objc_autoreleasePoolPush();
    v30 = self;
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

- (void)_openSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7
{
  v54[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDDataStreamBulkSendProtocol *)self queue];
  dispatch_assert_queue_V2(v17);

  v18 = [(HMDDataStreamBulkSendProtocol *)self _createSessionIdentifier];
  v53[0] = @"type";
  v53[1] = @"streamId";
  v41 = v13;
  v42 = v12;
  v54[0] = v12;
  v54[1] = v18;
  v53[2] = @"target";
  v53[3] = @"reason";
  v54[2] = @"controller";
  v54[3] = v13;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:4];
  v20 = [v19 mutableCopy];

  if (v14 && [v14 count])
  {
    [v20 setObject:v14 forKeyedSubscript:@"metadata"];
  }

  v21 = [(HMDDataStreamBulkSendProtocol *)self bulkSendSessionContextFactory];
  v22 = (v21)[2](v21, v16);

  v23 = [(HMDDataStreamBulkSendProtocol *)self pendingBulkSendSessionContextBySessionIdentifier];
  [v23 setObject:v22 forKeyedSubscript:v18];

  v24 = [v22 handleOpenRequestResponseTimer];
  [v24 setDelegate:self];

  v25 = [(HMDDataStreamBulkSendProtocol *)self queue];
  v26 = [v22 handleOpenRequestResponseTimer];
  [v26 setDelegateQueue:v25];

  v27 = [v22 handleOpenRequestResponseTimer];
  [v27 resume];

  v28 = [v22 sendCloseEventTimer];
  [v28 setDelegate:self];

  v29 = [(HMDDataStreamBulkSendProtocol *)self queue];
  v30 = [v22 sendCloseEventTimer];
  [v30 setDelegateQueue:v29];

  v31 = [v22 sendCloseEventTimer];
  [v31 resume];

  v32 = objc_autoreleasePoolPush();
  v33 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543874;
    v48 = v35;
    v49 = 2112;
    v50 = v18;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Starting bulk session with identifier: %@ and metadata: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v32);
  v36 = [(HMDDataStreamBulkSendProtocol *)v33 dataStream];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __88__HMDDataStreamBulkSendProtocol__openSessionForFileType_reason_metadata_queue_callback___block_invoke;
  v43[3] = &unk_27972C290;
  v43[4] = v33;
  v44 = v18;
  v45 = v15;
  v46 = v16;
  v37 = v15;
  v38 = v16;
  v39 = v18;
  [v36 sendRequestForProtocol:@"dataSend" topic:@"open" payload:v20 completion:v43];

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

- (void)openSessionForFileType:(id)a3 reason:(id)a4 metadata:(id)a5 queue:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDDataStreamBulkSendProtocol *)self queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87__HMDDataStreamBulkSendProtocol_openSessionForFileType_reason_metadata_queue_callback___block_invoke;
  v23[3] = &unk_279734848;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, v23);
}

- (void)_sendAckMessageWithIdentifier:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamBulkSendProtocol *)self dataStream];
  if (v5)
  {
    v16[0] = @"streamId";
    v16[1] = @"endOfStream";
    v17[0] = v4;
    v17[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending 'ack' for sid=%@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v5 sendEventForProtocol:@"dataSend" topic:@"ack" payload:v6 completion:&__block_literal_global_46_124492];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_pumpReceiveFailure:(id)a3 session:(id)a4
{
  v6 = a4;
  [v6 asyncHandleRemoteCloseWithError:a3];
  v7 = [v6 sessionIdentifier];

  [(HMDDataStreamBulkSendProtocol *)self _removeBulkSendSessionForSessionIdentifier:v7];
}

- (void)_pumpMessage:(id)a3 session:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"packets"];
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

  v11 = [v6 objectForKeyedSubscript:@"endOfStream"];
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

  v14 = [v13 BOOLValue];
  v15 = v14;
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

  if (v14)
  {
    v15 = 1;
LABEL_18:
    [v7 asyncHandleIncomingPackets:v10 isEof:v15];
    goto LABEL_19;
  }

LABEL_15:
  v17 = objc_autoreleasePoolPush();
  v18 = self;
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

- (void)_handleDataMessage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"streamId"];
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
      [(HMDDataStreamBulkSendProtocol *)self _pumpMessage:v4 session:v8];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
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
    v10 = self;
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

- (void)_handleCloseMessage:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"streamId"];
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

  v8 = [v4 objectForKeyedSubscript:@"reason"];
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
    v17 = self;
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
      [(HMDDataStreamBulkSendProtocol *)v17 _pumpReceiveFailure:v14 session:v15];
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
    v22 = self;
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

- (void)_handleOpenWithRequestHeader:(id)a3 payload:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"type"];
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

  v11 = [v7 objectForKeyedSubscript:@"target"];
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

  v14 = [v7 objectForKeyedSubscript:@"metadata"];
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
    v17 = [(HMDDataStreamBulkSendProtocol *)self listeners];
    v18 = [v17 objectForKey:v10];

    v19 = objc_autoreleasePoolPush();
    v20 = self;
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
      v24 = [(HMDDataStreamBulkSendProtocol *)v20 _createSessionCandidateWithRequestHeader:v6 metadata:v16];
      v25 = [(HMDDataStreamBulkSendProtocol *)v20 accessory];
      [v18 accessory:v25 didReceiveBulkSessionCandidate:v24];
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
      [(HMDDataStreamBulkSendProtocol *)v20 _maybeSubmitMetricForDroppedOpenRequestOfType:v10];
      [(HMDDataStreamBulkSendProtocol *)v20 _sendOpenResponseWithRequestHeader:v6 bulkSendStatus:1];
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
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
    [(HMDDataStreamBulkSendProtocol *)v27 _sendOpenResponseWithRequestHeader:v6 status:4];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_removeBulkSendSessionForSessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamBulkSendProtocol *)self activeBulkSendSessions];
  [v5 removeObjectForKey:v4];
}

- (id)_getBulkSendSessionForSessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStreamBulkSendProtocol *)self activeBulkSendSessions];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)_startSessionCandidate:(id)a3 queue:(id)a4 callback:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDDataStreamBulkSendProtocol *)self _createSessionFromCandidate:v8 queue:v9];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [v8 pendingReads];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v12);
        }

        [(HMDDataStreamBulkSendProtocol *)self _pumpMessage:*(*(&v25 + 1) + 8 * v16++) session:v11];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v17 = [v8 receivedFailure];

  if (v17)
  {
    v18 = [v8 receivedFailure];
    [(HMDDataStreamBulkSendProtocol *)self _pumpReceiveFailure:v18 session:v11];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__HMDDataStreamBulkSendProtocol__startSessionCandidate_queue_callback___block_invoke;
  v22[3] = &unk_279735738;
  v23 = v11;
  v24 = v10;
  v19 = v11;
  v20 = v10;
  dispatch_async(v9, v22);

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_createSessionIdentifier
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(HMDDataStreamBulkSendProtocol *)self nextSessionIdentifier];
  [(HMDDataStreamBulkSendProtocol *)self setNextSessionIdentifier:(v4 + 1)];

  return [v3 numberWithUnsignedInt:v4];
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

- (void)_sendOpenResponseWithRequestHeader:(id)a3 streamIdentifier:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"streamId";
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(HMDDataStreamBulkSendProtocol *)self _sendOpenResponseWithRequestHeader:v8 payload:v9 status:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_createSessionFromCandidate:(id)a3 queue:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStreamBulkSendProtocol *)self _createSessionIdentifier];
  v9 = [HMDDataStreamBulkSendSession alloc];
  v10 = [(HMDDataStreamBulkSendProtocol *)self logIdentifier];
  v11 = [(HMDDataStreamBulkSendSession *)v9 initWithProtocol:self sessionIdentifier:v8 queue:v7 logIdentifier:v10];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Creating new receive session with streamIdentifier=%@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDDataStreamBulkSendProtocol *)v13 activeBulkSendSessions];
  [v16 setObject:v11 forKey:v8];

  v17 = [v6 requestHeader];
  [(HMDDataStreamBulkSendProtocol *)v13 _sendOpenResponseWithRequestHeader:v17 streamIdentifier:v8];

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_createSessionCandidateWithRequestHeader:(id)a3 metadata:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Creating new receive candidate session (header %@)", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [[HMDDataStreamBulkSendSessionCandidate alloc] initWithProtocol:v9 requestHeader:v6 metadata:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)asyncBulkSendSessionDidCancelSessionWithIdentifier:(id)a3 reason:(unsigned __int16)a4 hadReceivedEof:(BOOL)a5
{
  v8 = a3;
  v9 = [(HMDDataStreamBulkSendProtocol *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__HMDDataStreamBulkSendProtocol_asyncBulkSendSessionDidCancelSessionWithIdentifier_reason_hadReceivedEof___block_invoke;
  block[3] = &unk_27972C268;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(v9, block);
}

- (void)asyncBulkSendSessionCandidate:(id)a3 didRejectWithStatus:(unsigned __int16)a4
{
  v6 = a3;
  v7 = [(HMDDataStreamBulkSendProtocol *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDDataStreamBulkSendProtocol_asyncBulkSendSessionCandidate_didRejectWithStatus___block_invoke;
  block[3] = &unk_27972EBD8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)asyncBulkSendSessionCandidate:(id)a3 didAcceptOnQueue:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDDataStreamBulkSendProtocol *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HMDDataStreamBulkSendProtocol_asyncBulkSendSessionCandidate_didAcceptOnQueue_callback___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(HMDDataStreamBulkSendProtocol *)self isConnected])
  {
    if ([v11 isEqualToString:@"open"])
    {
      [(HMDDataStreamBulkSendProtocol *)self _handleOpenWithRequestHeader:v12 payload:v13];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@DataSend received unexpected request '%@'", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)dataStream:(id)a3 didReceiveEvent:(id)a4 header:(id)a5 payload:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(HMDDataStreamBulkSendProtocol *)self isConnected])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
    v25 = v11;
    v18 = "%{public}@BulkSend dropping message because it is not running (topic=%@).";
    v19 = v16;
    v20 = OS_LOG_TYPE_DEBUG;
LABEL_6:
    _os_log_impl(&dword_2531F8000, v19, v20, v18, &v22, 0x16u);

    goto LABEL_7;
  }

  if (![v11 isEqualToString:@"data"])
  {
    if ([v11 isEqualToString:@"close"])
    {
      [(HMDDataStreamBulkSendProtocol *)self _handleCloseMessage:v13];
      goto LABEL_8;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v17;
    v24 = 2112;
    v25 = v11;
    v18 = "%{public}@DataSend received unexpected event '%@'";
    v19 = v16;
    v20 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  [(HMDDataStreamBulkSendProtocol *)self _handleDataMessage:v13];
LABEL_8:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamDidOpen:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@DataStream did open; connected.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamBulkSendProtocol *)v6 setIsConnected:1];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(HMDDataStreamBulkSendProtocol *)v6 listeners];
  v10 = [v9 objectEnumerator];

  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (v15)
        {
          v16 = [(HMDDataStreamBulkSendProtocol *)v6 accessory];
          [v15 accessoryDidStartListening:v16];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamDidClose:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@DataStream closed; cleaning up", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamBulkSendProtocol *)v6 _closeAllSessionsWithError:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dataStreamInitiatedClose:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
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

- (void)dataStream:(id)a3 didFailWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@DataStream failed with error; cleaning up. (%@)", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDDataStreamBulkSendProtocol *)v9 _closeAllSessionsWithError:v7];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActive
{
  v2 = [(HMDDataStreamBulkSendProtocol *)self listeners];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_closeAllSessionsWithError:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDDataStreamBulkSendProtocol *)v6 listeners];
    v10 = [v9 count];
    v11 = [(HMDDataStreamBulkSendProtocol *)v6 activeBulkSendSessions];
    *buf = 138543874;
    v44 = v8;
    v45 = 2048;
    v46 = v10;
    v47 = 2048;
    v48 = [v11 count];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Session closed; removing %lu listeners and closing %lu sessions", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDDataStreamBulkSendProtocol *)v6 setIsConnected:0];
  if (v4)
  {
    v41 = *MEMORY[0x277CCA7E8];
    v42 = v4;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1005 userInfo:v12];
  v14 = [(HMDDataStreamBulkSendProtocol *)v6 accessory];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [(HMDDataStreamBulkSendProtocol *)v6 activeBulkSendSessions];
  v16 = [v15 objectEnumerator];

  v17 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * v20);
        if (v21)
        {
          [v21 asyncHandleRemoteCloseWithError:v13];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v18);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = [(HMDDataStreamBulkSendProtocol *)v6 listeners];
  v23 = [v22 objectEnumerator];

  v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(v23);
        }

        [*(*(&v31 + 1) + 8 * v27++) accessory:v14 didCloseDataStreamWithError:v4];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  v28 = [(HMDDataStreamBulkSendProtocol *)v6 listeners];
  [v28 removeAllObjects];

  v29 = [(HMDDataStreamBulkSendProtocol *)v6 activeBulkSendSessions];
  [v29 removeAllObjects];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDDataStreamBulkSendProtocol *)self isActive]!= a3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      [(HMDDataStreamBulkSendProtocol *)v5 isActive];
      v8 = HMFBooleanToString();
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@BulkSend protocol changes active to %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(HMDDataStreamBulkSendProtocol *)v5 dataStream];
    [v9 protocolDidUpdateActiveStatus:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeListener:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStreamBulkSendProtocol *)self isActive];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(HMDDataStreamBulkSendProtocol *)self listeners];
  v7 = [v6 keyEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(HMDDataStreamBulkSendProtocol *)self listeners];
        v14 = [v13 objectForKey:v12];

        if (v14 == v4)
        {
          v15 = [(HMDDataStreamBulkSendProtocol *)self listeners];
          [v15 removeObjectForKey:v12];

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = [(HMDDataStreamBulkSendProtocol *)self accessory];
  [v4 accessory:v16 didCloseDataStreamWithError:0];

  [(HMDDataStreamBulkSendProtocol *)self _notifyActiveStatusChangedFromPreviousValue:v5];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)a3 fileType:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStreamBulkSendProtocol *)self isActive];
  v9 = [(HMDDataStreamBulkSendProtocol *)self listeners];
  v10 = [v9 objectForKey:v7];

  v11 = [(HMDDataStreamBulkSendProtocol *)self accessory];
  if (v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Rejecting BulkSend registration for file type %@; handler already exists", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v6 accessory:v11 didCloseDataStreamWithError:0];
  }

  else
  {
    v16 = [(HMDDataStreamBulkSendProtocol *)self listeners];
    [v16 setObject:v6 forKey:v7];

    if ([(HMDDataStreamBulkSendProtocol *)self isConnected])
    {
      [v6 accessoryDidStartListening:v11];
    }

    [(HMDDataStreamBulkSendProtocol *)self _notifyActiveStatusChangedFromPreviousValue:v8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDDataStreamBulkSendProtocol)initWithQueue:(id)a3 accessory:(id)a4 logIdentifier:(id)a5 bulkSendSessionContextFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = HMDDataStreamBulkSendProtocol;
  v15 = [(HMDDataStreamBulkSendProtocol *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeWeak(&v16->_accessory, v12);
    v17 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    listeners = v16->_listeners;
    v16->_listeners = v17;

    v19 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    activeBulkSendSessions = v16->_activeBulkSendSessions;
    v16->_activeBulkSendSessions = v19;

    v16->_isConnected = 0;
    v16->_nextSessionIdentifier = 1;
    v21 = _Block_copy(v14);
    bulkSendSessionContextFactory = v16->_bulkSendSessionContextFactory;
    v16->_bulkSendSessionContextFactory = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingBulkSendSessionContextBySessionIdentifier = v16->_pendingBulkSendSessionContextBySessionIdentifier;
    v16->_pendingBulkSendSessionContextBySessionIdentifier = v23;

    v25 = [v13 copy];
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