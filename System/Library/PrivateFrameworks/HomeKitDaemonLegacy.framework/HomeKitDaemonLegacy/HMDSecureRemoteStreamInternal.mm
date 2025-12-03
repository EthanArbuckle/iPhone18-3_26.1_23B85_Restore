@interface HMDSecureRemoteStreamInternal
+ (id)logCategory;
- (HMDSecureRemoteStreamInternal)init;
- (HMDSecureRemoteStreamInternal)initWithType:(int64_t)type commitTimeout:(unint64_t)timeout clientIdleTimeout:(unint64_t)idleTimeout serverIdleTimeout:(unint64_t)serverIdleTimeout sendInternalTimeout:(unint64_t)internalTimeout sendUserTimeout:(unint64_t)userTimeout;
- (id)_encodeBinaryPlist:(void *)plist;
- (id)logIdentifier;
- (int)_clientHandleCommitResponse:(id)response options:(id)options;
- (int)_clientHandlePrepareResponse:(id)response options:(id)options;
- (int)_clientPairVerifyExchange:(id)exchange;
- (int)_clientSendCommitRequest:(id)request;
- (int)_clientSendPrepareRequest:(id)request;
- (int)_serverHandleCommitRequest:(id)request options:(id)options responseHandler:(id)handler;
- (int)_serverHandleDecryptedRequest:(id)request options:(id)options responseHandler:(id)handler;
- (int)_serverHandlePrepareRequest:(id)request options:(id)options responseHandler:(id)handler;
- (int)_setupEncryption;
- (int)_updateIdleTimer;
- (void)_clientRunStateMachine;
- (void)_completeTransaction:(id)transaction response:(id)response options:(id)options status:(int)status;
- (void)_completeUserTransaction:(id)transaction response:(id)response options:(id)options status:(int)status;
- (void)_runStateMachine;
- (void)_sendRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_sendUserRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_serverCompletePrepareRequest:(id)request;
- (void)_serverHandleEncryptedRequest:(id)request options:(id)options;
- (void)_serverPairVerifyExchange:(id)exchange options:(id)options;
- (void)_serverRunStateMachine;
- (void)_start;
- (void)_transportReceivedMessage:(id)message options:(id)options;
- (void)dealloc;
- (void)sendRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)start;
- (void)stop;
- (void)transportReceivedMessage:(id)message options:(id)options;
@end

@implementation HMDSecureRemoteStreamInternal

- (id)logIdentifier
{
  dispatch_assert_queue_V2(self->_internalQueue);
  type = self->_type;
  if (type == 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"S(%@)", self->_sessionID];
    goto LABEL_5;
  }

  if (type == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"C(%@)", self->_sessionID];
    v4 = LABEL_5:;
    goto LABEL_7;
  }

  v4 = self->_sessionID;
LABEL_7:

  return v4;
}

- (void)_serverCompletePrepareRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [(NSMutableDictionary *)self->_prepareRequests objectForKeyedSubscript:requestCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"timer"];
    v8 = v7;
    if (v7)
    {
      dispatch_source_cancel(v7);
    }

    [(NSMutableDictionary *)self->_prepareRequests removeObjectForKey:requestCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = requestCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing prepare request, tid %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (int)_serverHandleCommitRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v76 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x2020000000;
  v67 = 0;
  v50 = requestCopy;
  [requestCopy objectForKeyedSubscript:@"utid"];
  v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    v52 = 0;
    source = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v9 = [(NSMutableDictionary *)self->_prepareRequests objectForKeyedSubscript:*&v53];
  v10 = v9;
  if (!v9)
  {
    v13 = 0;
    v52 = 0;
    source = 0;
    v34 = -6727;
    goto LABEL_24;
  }

  v11 = [v9 objectForKeyedSubscript:@"processing"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = 0;
    v52 = 0;
    source = 0;
    v34 = -6730;
    goto LABEL_24;
  }

  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"processing"];
  v13 = [v10 objectForKeyedSubscript:@"request"];
  if (!v13)
  {
    v52 = 0;
    source = 0;
    v34 = -6762;
    goto LABEL_24;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v71 = v17;
    v72 = 2112;
    v73 = v53;
    v74 = 2112;
    v75 = *&v50;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Received commit request, utid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*&v53];
  logRemoteMessageEvent(v13, optionsCopy, v18);

  v19 = [v10 objectForKeyedSubscript:@"timer"];
  source = v19;
  if (v19)
  {
    dispatch_source_cancel(v19);
  }

  v52 = [v50 objectForKeyedSubscript:@"timeout"];
  if (!v52)
  {
    sendInternalTimeoutNanos = selfCopy->_sendInternalTimeoutNanos;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_19:
    v34 = -6756;
    goto LABEL_24;
  }

  sendInternalTimeoutNanos = 1000000000 * [v52 longLongValue];
LABEL_13:
  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  HMFGetOSLogHandle();
  v24 = v23 = sendInternalTimeoutNanos - 5000000000;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543874;
    v71 = v25;
    v72 = 2048;
    v73 = (v23 / 1000000000.0);
    v74 = 2112;
    v75 = v53;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Starting commit response timeout of %.03f seconds for transaction: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v22->_internalQueue);
  if (v26)
  {
    v27 = v26;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke;
    handler[3] = &unk_2797346B8;
    v65 = v66;
    handler[4] = v22;
    v28 = *&v53;
    v61 = v28;
    v29 = v13;
    v62 = v29;
    v30 = optionsCopy;
    v63 = v30;
    v31 = handlerCopy;
    v64 = v31;
    dispatch_source_set_event_handler(v27, handler);

    dispatch_source_set_cancel_handler(v27, &__block_literal_global_131_185862);
    v32 = dispatch_walltime(0, v23);
    dispatch_source_set_timer(v27, v32, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v27);
    [v10 setObject:v27 forKeyedSubscript:@"timer"];
    userQueue = v22->_userQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke_2;
    block[3] = &unk_2797346B8;
    block[4] = v22;
    v13 = v29;
    v55 = v13;
    v56 = v30;
    v59 = v66;
    v57 = v28;
    v58 = v31;
    dispatch_async(userQueue, block);

    v34 = 0;
    goto LABEL_17;
  }

  v34 = -6700;
LABEL_24:
  context = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    v39 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA450];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v41 = v40;
    v42 = @"?";
    if (v40)
    {
      v42 = v40;
    }

    v69 = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:{1, v45, context}];
    [v39 errorWithDomain:*MEMORY[0x277CCA590] code:v34 userInfo:v43];
    v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543874;
    v71 = v46;
    v72 = 2112;
    v73 = v44;
    v74 = 2112;
    v75 = *&v50;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Commit failed: %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(context);
LABEL_17:

  _Block_object_dispose(v66, 8);
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

void __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v28 = v5;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Transaction, %@, timed out, sending cancelled error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) _serverCompletePrepareRequest:*(a1 + 40)];
    v25[0] = @"response";
    v23 = @"kIDSMessageResponseErrorDataKey";
    v7 = MEMORY[0x277CCAAB0];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA590];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DebugGetErrorString(), *MEMORY[0x277CCA450]}];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    v22 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [v8 errorWithDomain:v9 code:-6723 userInfo:v13];
    v15 = [v7 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
    v24 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v25[1] = @"utid";
    v26[0] = v16;
    v26[1] = *(a1 + 40);
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

    v18 = [*(a1 + 48) hmf_stringForKey:@"kIDSMessageNameKey"];
    v19 = augmentResponseOptions(*(a1 + 56), v18);
    (*(*(a1 + 64) + 16))();
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 200);
  v5 = *(v2 + 104);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke_3;
  v8[3] = &unk_279734690;
  v6 = *(a1 + 72);
  v8[4] = v2;
  v12 = v6;
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 64);
  (*(v4 + 16))(v4, v3, v5, v7, v8);
}

void __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 104));
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v14 = v13 = v8;
      v15 = *(a1 + 40);
      *buf = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Transaction, %@, has already been completed", buf, 0x16u);

      v8 = v13;
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    [*(a1 + 32) _serverCompletePrepareRequest:*(a1 + 40)];
    v33[0] = @"response";
    v33[1] = @"utid";
    v16 = *(a1 + 40);
    v34[0] = v7;
    v34[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v18 = [*(a1 + 48) hmf_stringForKey:@"kIDSMessageNameKey"];
    v19 = augmentResponseOptions(v8, v18);
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v23 = v26 = v8;
      v24 = *(a1 + 40);
      *buf = 138543874;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@sending commit response, utid %@ %@", buf, 0x20u);

      v8 = v26;
    }

    objc_autoreleasePoolPop(v20);
    (*(*(a1 + 56) + 16))();
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (int)_serverHandlePrepareRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [requestCopy objectForKeyedSubscript:@"utid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v12 = [requestCopy objectForKeyedSubscript:@"request"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v24 = -6756;
    goto LABEL_7;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v36 = v16;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = requestCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Received prepare request, utid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
  logRemoteMessageEvent(v12, optionsCopy, v17);

  v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, selfCopy->_internalQueue);
  if (v18)
  {
    v19 = v18;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __85__HMDSecureRemoteStreamInternal__serverHandlePrepareRequest_options_responseHandler___block_invoke;
    handler[3] = &unk_2797359B0;
    handler[4] = selfCopy;
    v20 = v11;
    v34 = v20;
    dispatch_source_set_event_handler(v19, handler);

    dispatch_source_set_cancel_handler(v19, &__block_literal_global_124_185899);
    v21 = dispatch_walltime(0, selfCopy->_commitTimeoutNanos);
    dispatch_source_set_timer(v19, v21, 0xFFFFFFFFFFFFFFFFLL, selfCopy->_commitTimeoutNanos / 0xA);
    dispatch_resume(v19);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v12 forKeyedSubscript:@"request"];
    [dictionary setObject:v19 forKeyedSubscript:@"timer"];
    [(NSMutableDictionary *)selfCopy->_prepareRequests setObject:dictionary forKey:v20];
    internalQueue = selfCopy->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDSecureRemoteStreamInternal__serverHandlePrepareRequest_options_responseHandler___block_invoke_3;
    block[3] = &unk_279734668;
    v12 = v12;
    v28 = v12;
    v29 = optionsCopy;
    v30 = selfCopy;
    v31 = v20;
    v32 = handlerCopy;
    dispatch_async(internalQueue, block);

    v24 = 0;
  }

  else
  {
    v24 = -6700;
  }

LABEL_7:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void __85__HMDSecureRemoteStreamInternal__serverHandlePrepareRequest_options_responseHandler___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hmf_stringForKey:@"kIDSMessageNameKey"];
  v3 = augmentResponseOptions(*(a1 + 40), v2);
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 48);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 56);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Sending prepare response options %@, utid %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 64) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (int)_serverHandleDecryptedRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [requestCopy objectForKeyedSubscript:@"op"];
  if ([v11 isEqual:@"prepare"])
  {
    v12 = [(HMDSecureRemoteStreamInternal *)self _serverHandlePrepareRequest:requestCopy options:optionsCopy responseHandler:handlerCopy];
  }

  else
  {
    if (![v11 isEqual:@"commit"])
    {
      v13 = -6714;
      goto LABEL_7;
    }

    v12 = [(HMDSecureRemoteStreamInternal *)self _serverHandleCommitRequest:requestCopy options:optionsCopy responseHandler:handlerCopy];
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (void)_serverHandleEncryptedRequest:(id)request options:(id)options
{
  v53 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  if (!self->_sessionID)
  {
    v42 = 0;
    goto LABEL_25;
  }

  v8 = [requestCopy objectForKeyedSubscript:@"tid"];
  objc_opt_class();
  v42 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_25:
    v13 = 0;
    v17 = 0;
    v21 = 0;
    v20 = 4294960534;
    goto LABEL_18;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v48 = v12;
    v49 = 2112;
    v50 = v8;
    v51 = 2112;
    v52 = requestCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Received request, tid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [requestCopy objectForKeyedSubscript:@"edata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 length];
    v15 = v14 - 16;
    if (v14 < 0x10)
    {
      v17 = 0;
      v21 = 0;
      v20 = 4294960553;
    }

    else
    {
      [v13 bytes];
      v16 = [MEMORY[0x277CBEB28] dataWithLength:v15];
      v17 = v16;
      if (v16)
      {
        [v16 mutableBytes];
        cipherReadNonce = selfCopy->_cipherReadNonce;
        v19 = chacha20_poly1305_decrypt_all_64x64();
        if (v19)
        {
          v20 = v19;
          v21 = 0;
        }

        else
        {
          v22 = 0;
          do
          {
            if (++cipherReadNonce[v22])
            {
              v24 = 1;
            }

            else
            {
              v24 = v22 == 7;
            }

            ++v22;
          }

          while (!v24);
          v21 = [MEMORY[0x277CCAC58] propertyListWithData:v17 options:0 format:0 error:0];
          if (v21)
          {
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __71__HMDSecureRemoteStreamInternal__serverHandleEncryptedRequest_options___block_invoke;
            v43[3] = &unk_279734640;
            v43[4] = selfCopy;
            v42 = v42;
            v44 = v42;
            v20 = [(HMDSecureRemoteStreamInternal *)selfCopy _serverHandleDecryptedRequest:v21 options:optionsCopy responseHandler:v43];

            if (!v20)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v20 = 4294960564;
          }
        }
      }

      else
      {
        v21 = 0;
        v20 = 4294960568;
      }
    }
  }

  else
  {
    v17 = 0;
    v21 = 0;
    v20 = 4294960540;
  }

LABEL_18:
  v41 = optionsCopy;
  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    v40 = requestCopy;
    v36 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA590];
    v45 = *MEMORY[0x277CCA450];
    v38 = v25;
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v31 = v30;
    v32 = @"?";
    if (v30)
    {
      v32 = v30;
    }

    v46 = v32;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:{1, v36}];
    v33 = v39 = v21;
    v34 = [v37 errorWithDomain:v29 code:v20 userInfo:v33];
    *buf = 138543874;
    v48 = v28;
    v49 = 2112;
    v50 = v34;
    v51 = 2112;
    v52 = v40;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Request failed: %@, %@", buf, 0x20u);

    requestCopy = v40;
    v21 = v39;

    v25 = v38;
  }

  objc_autoreleasePoolPop(v25);
  [(HMDSecureRemoteStreamInternal *)selfCopy2 _stop:v20];
  optionsCopy = v41;
LABEL_23:

  v35 = *MEMORY[0x277D85DE8];
}

void __71__HMDSecureRemoteStreamInternal__serverHandleEncryptedRequest_options___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v65[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 104));
  v50 = v7;
  if (v9)
  {
    if ([v9 code])
    {
      v33 = [v9 code];
      if (!v33)
      {
        goto LABEL_20;
      }

      v31 = 0;
    }

    else
    {
      v31 = 0;
      v33 = 4294960596;
    }

    goto LABEL_28;
  }

  v10 = *(a1 + 32);
  if (*(v10 + 160) != 1)
  {
    v31 = 0;
    v33 = 4294960576;
    goto LABEL_28;
  }

  if (!*(v10 + 152) || !*(v10 + 224))
  {
LABEL_21:
    v31 = 0;
    v33 = 4294960534;
LABEL_28:
    v34 = objc_autoreleasePoolPush();
    v35 = *(a1 + 32);
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = HMFGetLogIdentifier();
      v47 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA590];
      v49 = v33;
      v56 = *MEMORY[0x277CCA450];
      v52 = v31;
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v39 = v38;
      v40 = @"?";
      if (v38)
      {
        v40 = v38;
      }

      v57 = v40;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:{1, v45, v47}];
      v41 = v34;
      v43 = v42 = v8;
      v44 = [v48 errorWithDomain:v46 code:v33 userInfo:v43];
      *buf = 138543874;
      v59 = v37;
      v60 = 2112;
      v61 = v44;
      v62 = 2112;
      v63 = v50;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Response failed: %@, %@", buf, 0x20u);

      v33 = v49;
      v8 = v42;
      v34 = v41;

      v31 = v52;
    }

    objc_autoreleasePoolPop(v34);
    [*(a1 + 32) _stop:v33];
    v7 = v50;
    goto LABEL_19;
  }

  if (v7)
  {
    v11 = [(HMDSecureRemoteStreamInternal *)v10 _encodeBinaryPlist:v7];
    if (v11)
    {
      v51 = v11;
      v12 = [v11 length];
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v12 = 0;
  v51 = 0;
LABEL_9:
  v13 = [MEMORY[0x277CBEB28] dataWithLength:v12 + 16];
  if (!v13)
  {
    v33 = 4294960568;
    v9 = 0;
    v31 = v51;
    goto LABEL_28;
  }

  v14 = v13;
  v15 = v8;
  [v13 mutableBytes];
  v16 = *(a1 + 32);
  [v51 bytes];
  chacha20_poly1305_encrypt_all_64x64();
  v17 = 0;
  v18 = *(a1 + 32) + 80;
  do
  {
    if (++*(v18 + v17))
    {
      v20 = 1;
    }

    else
    {
      v20 = v17 == 7;
    }

    ++v17;
  }

  while (!v20);
  v65[0] = v14;
  v64[0] = @"edata";
  v64[1] = @"sid";
  v21 = *(a1 + 40);
  v65[1] = *(*(a1 + 32) + 152);
  v65[2] = v21;
  v64[2] = @"tid";
  v64[3] = @"type";
  v65[3] = @"response";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:4];
  v23 = objc_autoreleasePoolPush();
  v24 = *(a1 + 32);
  v25 = HMFGetOSLogHandle();
  v9 = 0;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    v27 = *(a1 + 40);
    *buf = 138543874;
    v59 = v26;
    v60 = 2112;
    v61 = v27;
    v62 = 2112;
    v63 = v22;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Sending response, tid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  v28 = *(a1 + 32);
  v29 = *(v28 + 240);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDSecureRemoteStreamInternal__serverHandleEncryptedRequest_options___block_invoke_122;
  block[3] = &unk_279734960;
  block[4] = v28;
  v54 = v22;
  v8 = v15;
  v55 = v15;
  v30 = v22;
  dispatch_async(v29, block);

  [*(a1 + 32) _updateIdleTimer];
  v7 = v50;
  v31 = v51;
LABEL_19:

LABEL_20:
  v32 = *MEMORY[0x277D85DE8];
}

- (id)_encodeBinaryPlist:(void *)plist
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (plist)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:&v12];
    v5 = v12;
    if (!v4)
    {
      v6 = objc_autoreleasePoolPush();
      plistCopy = plist;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v14 = v9;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode payload as binary PList: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_serverPairVerifyExchange:(id)exchange options:(id)options
{
  v64 = *MEMORY[0x277D85DE8];
  exchangeCopy = exchange;
  optionsCopy = options;
  v54 = 0;
  v55 = 0;
  v8 = [exchangeCopy objectForKeyedSubscript:@"op"];
  v9 = [v8 isEqual:@"pv"];

  v47 = optionsCopy;
  if (!v9)
  {
    v23 = 0;
    v13 = 0;
    v50 = 0;
    v10 = 0;
    v15 = 4294960560;
    goto LABEL_20;
  }

  v10 = [exchangeCopy objectForKeyedSubscript:@"tid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = 0;
    v13 = 0;
    v50 = 0;
    v15 = 4294960588;
    goto LABEL_20;
  }

  v11 = [exchangeCopy objectForKeyedSubscript:@"data"];
  objc_opt_class();
  v50 = v11;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = 0;
    v13 = 0;
    v15 = 4294960540;
    goto LABEL_20;
  }

  if (self->_sessionID)
  {
    v12 = exchangeCopy;
    v13 = 0;
  }

  else
  {
    v13 = [exchangeCopy objectForKeyedSubscript:@"sid"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = 0;
      v15 = 4294960540;
      goto LABEL_20;
    }

    v12 = exchangeCopy;
    objc_storeStrong(&self->_sessionID, v13);
  }

  if (self->_pairVerifySession)
  {
    goto LABEL_9;
  }

  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  *&buf[8] = 0u;
  *buf = self;
  if (self->_findPeerHandler)
  {
    *&v62 = _pairingFindPeer;
  }

  *(&v61 + 1) = _pairingCopyIdentity;
  v24 = PairingSessionCreate();
  if (v24)
  {
    v15 = v24;
    v23 = 0;
    exchangeCopy = v12;
    optionsCopy = v47;
LABEL_20:
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v46 = v13;
      v29 = v10;
      v30 = MEMORY[0x277CCA9B8];
      v45 = v23;
      v31 = *MEMORY[0x277CCA590];
      v32 = exchangeCopy;
      v33 = v15;
      v56 = *MEMORY[0x277CCA450];
      v49 = v15;
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v35 = v34;
      v36 = @"?";
      if (v34)
      {
        v36 = v34;
      }

      v57 = v36;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v37 = v44 = v25;
      v38 = v30;
      v10 = v29;
      v39 = v33;
      exchangeCopy = v32;
      v13 = v46;
      optionsCopy = v47;
      v40 = [v38 errorWithDomain:v31 code:v39 userInfo:v37];
      *buf = 138543874;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v40;
      *&buf[22] = 2112;
      *&v61 = exchangeCopy;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Pair-verify failed: %@, %@", buf, 0x20u);

      v23 = v45;
      v25 = v44;

      v15 = v49;
    }

    objc_autoreleasePoolPop(v25);
    [(HMDSecureRemoteStreamInternal *)selfCopy _stop:v15];
    goto LABEL_25;
  }

  pairVerifySession = self->_pairVerifySession;
  PairingSessionSetLogging();
  v43 = self->_pairVerifySession;
LABEL_9:
  [v50 bytes];
  [v50 length];
  v14 = PairingSessionExchange();
  v15 = v14;
  if (v14)
  {
    v23 = 0;
    exchangeCopy = v12;
    optionsCopy = v47;
  }

  else
  {
    v48 = v14;
    v58[0] = @"data";
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v55 length:v54];
    v59[0] = v16;
    v59[1] = @"pv";
    v58[1] = @"op";
    v58[2] = @"sid";
    v59[2] = self->_sessionID;
    v59[3] = v10;
    v58[3] = @"tid";
    v58[4] = @"type";
    v59[4] = @"response";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:5];

    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    exchangeCopy = v12;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Sending pair-verify response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    userQueue = selfCopy2->_userQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HMDSecureRemoteStreamInternal__serverPairVerifyExchange_options___block_invoke;
    block[3] = &unk_279734960;
    block[4] = selfCopy2;
    v23 = v17;
    v52 = v23;
    optionsCopy = v47;
    v53 = v47;
    dispatch_async(userQueue, block);

    [(HMDSecureRemoteStreamInternal *)selfCopy2 _updateIdleTimer];
    v15 = v48;
    if (v55)
    {
      free(v55);
    }
  }

  if (v15)
  {
    goto LABEL_20;
  }

LABEL_25:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_serverRunStateMachine
{
  v26 = *MEMORY[0x277D85DE8];
  while (1)
  {
    while (1)
    {
      state = self->_state;
      if (state <= 12)
      {
        break;
      }

      switch(state)
      {
        case 13:
          if (!self->_pairVerifyDone)
          {
            goto LABEL_22;
          }

          self->_state = 14;
          break;
        case 14:
          _setupEncryption = [(HMDSecureRemoteStreamInternal *)self _setupEncryption];
          if (_setupEncryption)
          {
            v15 = _setupEncryption;
            goto LABEL_21;
          }

          selfCopy = self;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __55__HMDSecureRemoteStreamInternal__serverRunStateMachine__block_invoke_2;
          v18[3] = &unk_279734618;
          v19 = selfCopy;
          v5 = selfCopy;
          [(HMDSecureRemoteStreamInternal *)v5 setInternalRequestHandler:v18];
          self->_state = 15;
          userQueue = v5->_userQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__HMDSecureRemoteStreamInternal__serverRunStateMachine__block_invoke_3;
          block[3] = &unk_279735D00;
          block[4] = v5;
          dispatch_async(userQueue, block);
          v6 = v19;
LABEL_10:

          break;
        case 15:
          goto LABEL_22;
        default:
          goto LABEL_17;
      }
    }

    if (state != 10)
    {
      break;
    }

    self->_state = 12;
  }

  if (state == 12)
  {
    selfCopy2 = self;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__HMDSecureRemoteStreamInternal__serverRunStateMachine__block_invoke;
    v20[3] = &unk_279734618;
    v21 = selfCopy2;
    v5 = selfCopy2;
    [(HMDSecureRemoteStreamInternal *)v5 setInternalRequestHandler:v20];
    self->_state = 13;
    v6 = v21;
    goto LABEL_10;
  }

  if (state == 11)
  {
    goto LABEL_22;
  }

LABEL_17:
  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = self->_state;
    *buf = 138543618;
    v23 = v13;
    v24 = 1024;
    v25 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Bad state: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = 4294960587;
LABEL_21:
  [(HMDSecureRemoteStreamInternal *)self _stop:v15];
LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
}

void __55__HMDSecureRemoteStreamInternal__serverRunStateMachine__block_invoke_3(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 208));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 208);
    *(v3 + 208) = 0;
    v5 = v2;

    v5[2](v5, 0);
    v2 = v5;
  }
}

- (int)_clientHandleCommitResponse:(id)response options:(id)options
{
  v37 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  optionsCopy = options;
  v8 = [responseCopy objectForKeyedSubscript:@"edata"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_24;
  }

  v9 = [v8 length];
  v10 = v9 - 16;
  if (v9 < 0x10)
  {
    v12 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v15 = -6743;
    goto LABEL_18;
  }

  [v8 bytes];
  v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
  v12 = v11;
  if (!v11)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v15 = -6728;
    goto LABEL_18;
  }

  [v11 mutableBytes];
  cipherReadNonce = self->_cipherReadNonce;
  v14 = chacha20_poly1305_decrypt_all_64x64();
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  v19 = 0;
  do
  {
    if (++cipherReadNonce[v19])
    {
      v21 = 1;
    }

    else
    {
      v21 = v19 == 7;
    }

    ++v19;
  }

  while (!v21);
  v22 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:0];
  v16 = v22;
  if (!v22)
  {
    v17 = 0;
    v18 = 0;
    v15 = -6732;
    goto LABEL_18;
  }

  v18 = [v22 objectForKeyedSubscript:@"utid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_24;
  }

  v17 = [v16 objectForKeyedSubscript:@"response"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_24:
    v15 = -6756;
    goto LABEL_18;
  }

  v30 = optionsCopy;
  self->_commitResponded = 1;
  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v26;
    v33 = 2112;
    v34 = v18;
    v35 = 2112;
    v36 = v16;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Received commit response, utid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  optionsCopy = v30;
  [(HMDSecureRemoteStreamInternal *)selfCopy _completeUserTransaction:v18 response:v17 options:v30 status:0];
  v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v18];
  logRemoteMessageEvent(responseCopy, v30, v27);

  v15 = 0;
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

- (int)_clientSendCommitRequest:(id)request
{
  v51[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy objectForKeyedSubscript:@"utid"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sendInternalTimeoutNanos / 1000000000.0];
    v50[0] = @"op";
    v50[1] = @"utid";
    v51[0] = @"commit";
    v51[1] = v5;
    v50[2] = @"timeout";
    v51[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
    v8 = [(HMDSecureRemoteStreamInternal *)self _encodeBinaryPlist:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 length];
      v11 = [MEMORY[0x277CBEB28] dataWithLength:v10 + 16];
      if (v11)
      {
        v12 = v11;
        [v11 mutableBytes];
        cipherWriteNonce = self->_cipherWriteNonce;
        [v9 bytes];
        chacha20_poly1305_encrypt_all_64x64();
        v14 = 0;
        do
        {
          if (++cipherWriteNonce[v14])
          {
            v16 = 1;
          }

          else
          {
            v16 = v14 == 7;
          }

          ++v14;
        }

        while (!v16);
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543874;
          v45 = v20;
          v46 = 2112;
          v47 = v5;
          v48 = 2112;
          v49 = v7;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Sending commit request, utid %@ %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v42 = @"edata";
        v43 = v12;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v22 = [requestCopy objectForKeyedSubscript:@"options"];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __58__HMDSecureRemoteStreamInternal__clientSendCommitRequest___block_invoke;
        v39[3] = &unk_2797345F0;
        v39[4] = selfCopy;
        [(HMDSecureRemoteStreamInternal *)selfCopy _sendRequest:v21 options:v22 responseHandler:v39];

        v23 = 0;
        goto LABEL_13;
      }

      v23 = -6728;
    }

    else
    {
      v23 = -6732;
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
    v7 = 0;
    v23 = -6762;
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    v35 = MEMORY[0x277CCA9B8];
    v36 = v29;
    v34 = *MEMORY[0x277CCA590];
    v40 = *MEMORY[0x277CCA450];
    v38 = v26;
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v37 = v30;
    v31 = @"?";
    if (v30)
    {
      v31 = v30;
    }

    v41 = v31;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v32 = [v35 errorWithDomain:v34 code:v23 userInfo:v33];
    *buf = 138543618;
    v45 = v36;
    v46 = 2112;
    v47 = v32;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Send commit request failed: %@", buf, 0x16u);

    v26 = v38;
  }

  objc_autoreleasePoolPop(v26);
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void __58__HMDSecureRemoteStreamInternal__clientSendCommitRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (![v9 code])
  {
    v11 = 4294960596;
    goto LABEL_7;
  }

  v11 = [v10 code];
  if (!v11)
  {
LABEL_4:
    v11 = [*(a1 + 32) _clientHandleCommitResponse:v7 options:v8];
    if (!v11)
    {
      [*(a1 + 32) _runStateMachine];
      goto LABEL_13;
    }
  }

LABEL_7:
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA590];
    v25 = v12;
    v26 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v16 = v15;
    v17 = @"?";
    if (v15)
    {
      v17 = v15;
    }

    v27 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:{1, v21}];
    v19 = [v24 errorWithDomain:v22 code:v11 userInfo:v18];
    *buf = 138543618;
    v29 = v23;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Commit response failed: %@", buf, 0x16u);

    v12 = v25;
  }

  objc_autoreleasePoolPop(v12);
  if (v11 != -6752)
  {
    [*(a1 + 32) _stop:v11];
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

- (int)_clientHandlePrepareResponse:(id)response options:(id)options
{
  v27 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  optionsCopy = options;
  v8 = [responseCopy objectForKeyedSubscript:@"edata"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    v12 = -6756;
    goto LABEL_18;
  }

  v9 = [v8 length];
  if (v9 < 0x10)
  {
    v11 = 0;
    v12 = -6743;
    goto LABEL_18;
  }

  v10 = v9;
  [v8 bytes];
  if (v10 == 16)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB28] dataWithLength:v10 - 16];
    if (!v11)
    {
      v12 = -6728;
      goto LABEL_18;
    }
  }

  cipherReadNonce = self->_cipherReadNonce;
  [v11 mutableBytes];
  v14 = chacha20_poly1305_decrypt_all_64x64();
  if (v14)
  {
    v12 = v14;
  }

  else
  {
    v15 = 0;
    do
    {
      if (++cipherReadNonce[v15])
      {
        v17 = 1;
      }

      else
      {
        v17 = v15 == 7;
      }

      ++v15;
    }

    while (!v17);
    self->_prepareResponded = 1;
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Received prepare response", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [optionsCopy hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
    logRemoteMessageEvent(responseCopy, optionsCopy, v22);

    v12 = 0;
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)_clientSendPrepareRequest:(id)request
{
  v51[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy objectForKeyedSubscript:@"utid"];
  if (!v5)
  {
    v10 = 0;
    v8 = 0;
    v7 = 0;
LABEL_17:
    v24 = -6762;
    goto LABEL_20;
  }

  v6 = [requestCopy objectForKeyedSubscript:@"request"];
  v7 = v6;
  if (!v6)
  {
    v10 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v50[0] = @"op";
  v50[1] = @"request";
  v51[0] = @"prepare";
  v51[1] = v6;
  v50[2] = @"utid";
  v51[2] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
  v9 = [(HMDSecureRemoteStreamInternal *)self _encodeBinaryPlist:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 length];
    v12 = [MEMORY[0x277CBEB28] dataWithLength:v11 + 16];
    if (v12)
    {
      v13 = v12;
      [v12 mutableBytes];
      cipherWriteNonce = self->_cipherWriteNonce;
      [v10 bytes];
      chacha20_poly1305_encrypt_all_64x64();
      v15 = 0;
      do
      {
        if (++cipherWriteNonce[v15])
        {
          v17 = 1;
        }

        else
        {
          v17 = v15 == 7;
        }

        ++v15;
      }

      while (!v17);
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v45 = v21;
        v46 = 2112;
        v47 = v5;
        v48 = 2112;
        v49 = v8;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Sending prepare request, utid %@ %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v42 = @"edata";
      v43 = v13;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v23 = [requestCopy objectForKeyedSubscript:@"options"];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __59__HMDSecureRemoteStreamInternal__clientSendPrepareRequest___block_invoke;
      v39[3] = &unk_2797345F0;
      v39[4] = selfCopy;
      [(HMDSecureRemoteStreamInternal *)selfCopy _sendRequest:v22 options:v23 responseHandler:v39];

      v24 = 0;
      goto LABEL_14;
    }

    v24 = -6728;
  }

  else
  {
    v24 = -6732;
  }

LABEL_20:
  v27 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    v36 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA590];
    v40 = *MEMORY[0x277CCA450];
    v38 = v27;
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v37 = v31;
    v32 = @"?";
    if (v31)
    {
      v32 = v31;
    }

    v41 = v32;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v33 = [v36 errorWithDomain:v35 code:v24 userInfo:v34];
    *buf = 138543618;
    v45 = v30;
    v46 = 2112;
    v47 = v33;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Send prepare request failed: %@", buf, 0x16u);

    v27 = v38;
  }

  objc_autoreleasePoolPop(v27);
LABEL_14:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void __59__HMDSecureRemoteStreamInternal__clientSendPrepareRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (![v9 code])
  {
    v11 = 4294960596;
    goto LABEL_7;
  }

  v11 = [v10 code];
  if (!v11)
  {
LABEL_4:
    v11 = [*(a1 + 32) _clientHandlePrepareResponse:v7 options:v8];
    if (!v11)
    {
      [*(a1 + 32) _runStateMachine];
      goto LABEL_13;
    }
  }

LABEL_7:
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA590];
    v25 = v12;
    v26 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v16 = v15;
    v17 = @"?";
    if (v15)
    {
      v17 = v15;
    }

    v27 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:{1, v21}];
    v19 = [v24 errorWithDomain:v22 code:v11 userInfo:v18];
    *buf = 138543618;
    v29 = v23;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Prepare response failed: %@", buf, 0x16u);

    v12 = v25;
  }

  objc_autoreleasePoolPop(v12);
  if (v11 != -6752)
  {
    [*(a1 + 32) _stop:v11];
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

- (int)_clientPairVerifyExchange:(id)exchange
{
  v36 = *MEMORY[0x277D85DE8];
  exchangeCopy = exchange;
  v26 = 0;
  v27 = 0;
  if (!self->_pairVerifySession)
  {
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    *&buf[8] = 0u;
    *buf = self;
    if (self->_findPeerHandler)
    {
      *&v34 = _pairingFindPeer;
    }

    *(&v33 + 1) = _pairingCopyIdentity;
    v8 = PairingSessionCreate();
    if (v8)
    {
      v5 = v8;
      goto LABEL_10;
    }

    pairVerifySession = self->_pairVerifySession;
    PairingSessionSetLogging();
    v22 = self->_pairVerifySession;
  }

  [exchangeCopy bytes];
  [exchangeCopy length];
  v5 = PairingSessionExchange();
  if (!v5)
  {
    if (!self->_pairVerifyDone)
    {
      v30[0] = @"data";
      v6 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:v26];
      v30[1] = @"op";
      v31[0] = v6;
      v31[1] = @"pv";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __59__HMDSecureRemoteStreamInternal__clientPairVerifyExchange___block_invoke;
      v25[3] = &unk_2797345F0;
      v25[4] = self;
      [(HMDSecureRemoteStreamInternal *)self _sendRequest:v7 options:0 responseHandler:v25];
    }

    v5 = 0;
  }

LABEL_10:
  if (v27)
  {
    free(v27);
  }

  if (v5)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA590];
      v28 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v15 = v14;
      v16 = @"?";
      if (v14)
      {
        v16 = v14;
      }

      v29 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:{1, v23}];
      v18 = [v12 errorWithDomain:v13 code:v5 userInfo:v17];
      *buf = 138543618;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Pair-verify failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

void __59__HMDSecureRemoteStreamInternal__clientPairVerifyExchange___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if ([v9 code])
    {
      v13 = [v10 code];
      v11 = 0;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      v13 = 4294960596;
    }
  }

  else
  {
    v11 = [v7 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [*(a1 + 32) _clientPairVerifyExchange:v11];
      if (!v12)
      {
        [*(a1 + 32) _runStateMachine];
        goto LABEL_12;
      }

      v13 = v12;
    }

    else
    {
      v13 = 4294960540;
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    v25 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA590];
    v27 = v8;
    v28 = *MEMORY[0x277CCA450];
    v26 = v14;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v18 = v17;
    v19 = @"?";
    if (v17)
    {
      v19 = v17;
    }

    v29 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = [v25 errorWithDomain:v23 code:v13 userInfo:v20];
    *buf = 138543618;
    v31 = v24;
    v32 = 2112;
    v33 = v21;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Pair-verify response failed: %@", buf, 0x16u);

    v8 = v27;
    v14 = v26;
  }

  objc_autoreleasePoolPop(v14);
  if (v13 != -6752)
  {
    [*(a1 + 32) _stop:v13];
  }

LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_clientRunStateMachine
{
  v20 = *MEMORY[0x277D85DE8];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          state = self->_state;
          if (state <= 4)
          {
            break;
          }

          if (state <= 6)
          {
            if (state == 5)
            {
              if (![(NSMutableArray *)self->_userTransactions count])
              {
                goto LABEL_36;
              }

              self->_state = 6;
            }

            else
            {
              self->_prepareResponded = 0;
              firstObject = [(NSMutableArray *)self->_userTransactions firstObject];
              v7 = [(HMDSecureRemoteStreamInternal *)self _clientSendPrepareRequest:firstObject];

              if (v7)
              {
                goto LABEL_35;
              }

              self->_state = 7;
            }
          }

          else
          {
            switch(state)
            {
              case 7:
                if (!self->_prepareResponded)
                {
                  goto LABEL_36;
                }

                self->_state = 8;
                break;
              case 8:
                self->_commitResponded = 0;
                firstObject2 = [(NSMutableArray *)self->_userTransactions firstObject];
                v7 = [(HMDSecureRemoteStreamInternal *)self _clientSendCommitRequest:firstObject2];

                if (v7)
                {
                  goto LABEL_35;
                }

                self->_state = 9;
                break;
              case 9:
                if (!self->_commitResponded)
                {
                  goto LABEL_36;
                }

                goto LABEL_17;
              default:
                goto LABEL_32;
            }
          }
        }

        if (state <= 2)
        {
          break;
        }

        if (state == 3)
        {
          if (!self->_pairVerifyDone)
          {
            goto LABEL_36;
          }

          self->_state = 4;
        }

        else
        {
          _setupEncryption = [(HMDSecureRemoteStreamInternal *)self _setupEncryption];
          if (_setupEncryption)
          {
LABEL_30:
            v7 = _setupEncryption;
            goto LABEL_35;
          }

          userQueue = self->_userQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__HMDSecureRemoteStreamInternal__clientRunStateMachine__block_invoke;
          block[3] = &unk_279735D00;
          block[4] = self;
          dispatch_async(userQueue, block);
LABEL_17:
          self->_state = 5;
        }
      }

      if (state)
      {
        break;
      }

      self->_state = 2;
    }

    if (state != 2)
    {
      break;
    }

    _setupEncryption = [(HMDSecureRemoteStreamInternal *)self _clientPairVerifyExchange:0];
    if (_setupEncryption)
    {
      goto LABEL_30;
    }

    self->_state = 3;
  }

  if (state == 1)
  {
    goto LABEL_36;
  }

LABEL_32:
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = self->_state;
    *buf = 138543618;
    v17 = v12;
    v18 = 1024;
    v19 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Bad state: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v9);
  v7 = 4294960587;
LABEL_35:
  [(HMDSecureRemoteStreamInternal *)self _stop:v7];
LABEL_36:
  v14 = *MEMORY[0x277D85DE8];
}

void __55__HMDSecureRemoteStreamInternal__clientRunStateMachine__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 208));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 208);
    *(v3 + 208) = 0;
    v5 = v2;

    v5[2](v5, 0);
    v2 = v5;
  }
}

- (void)_transportReceivedMessage:(id)message options:(id)options
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  optionsCopy = options;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v11;
    v42 = 2112;
    v43 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Transport received message %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (!selfCopy->_started)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v21 = -6703;
    goto LABEL_19;
  }

  v12 = [messageCopy objectForKeyedSubscript:@"sid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || selfCopy->_sessionID && ![v12 isEqual:?])
  {
    v14 = 0;
    v13 = 0;
LABEL_28:
    v21 = -6708;
    goto LABEL_19;
  }

  v13 = [messageCopy objectForKeyedSubscript:@"tid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v14 = [messageCopy objectForKeyedSubscript:@"type"];
  if ([v14 isEqual:@"request"])
  {
    v15 = [(NSMutableDictionary *)selfCopy->_transactions objectForKeyedSubscript:v13];

    if (v15)
    {
      goto LABEL_24;
    }

    internalRequestHandler = selfCopy->_internalRequestHandler;
    if (internalRequestHandler)
    {
      internalRequestHandler[2](internalRequestHandler, messageCopy, optionsCopy);
LABEL_17:
      [(HMDSecureRemoteStreamInternal *)selfCopy _runStateMachine];
      goto LABEL_24;
    }

    v21 = -6714;
  }

  else if ([v14 isEqual:@"response"])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v20 = v36 = optionsCopy;
      *buf = 138543874;
      v41 = v20;
      v42 = 2112;
      v43 = v13;
      v44 = 2112;
      v45 = messageCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Received response, tid %@, %@", buf, 0x20u);

      optionsCopy = v36;
    }

    objc_autoreleasePoolPop(v17);
    if (selfCopy->_sessionID)
    {
      [(HMDSecureRemoteStreamInternal *)v18 _completeTransaction:v13 response:messageCopy options:optionsCopy status:0];
      goto LABEL_17;
    }

    v21 = -6736;
  }

  else
  {
    v21 = -6702;
  }

LABEL_19:
  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    v33 = MEMORY[0x277CCA9B8];
    v34 = v25;
    v32 = *MEMORY[0x277CCA590];
    v37 = v22;
    v38 = *MEMORY[0x277CCA450];
    v26 = optionsCopy;
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v35 = v27;
    v28 = @"?";
    if (v27)
    {
      v28 = v27;
    }

    v39 = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v30 = [v33 errorWithDomain:v32 code:v21 userInfo:v29];
    *buf = 138543874;
    v41 = v34;
    v42 = 2112;
    v43 = v30;
    v44 = 2112;
    v45 = messageCopy;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Transport message error: %@, %@", buf, 0x20u);

    optionsCopy = v26;
    v22 = v37;
  }

  objc_autoreleasePoolPop(v22);
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)transportReceivedMessage:(id)message options:(id)options
{
  messageCopy = message;
  optionsCopy = options;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDSecureRemoteStreamInternal_transportReceivedMessage_options___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = messageCopy;
  v13 = optionsCopy;
  v9 = optionsCopy;
  v10 = messageCopy;
  dispatch_async(internalQueue, block);
}

void __66__HMDSecureRemoteStreamInternal_transportReceivedMessage_options___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) copy];
  [v1 _transportReceivedMessage:v2 options:v3];
}

- (void)_completeTransaction:(id)transaction response:(id)response options:(id)options status:(int)status
{
  v63 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  responseCopy = response;
  optionsCopy = options;
  v13 = [(NSMutableDictionary *)self->_transactions objectForKeyedSubscript:transactionCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v45 = v14;
      v47 = responseCopy;
      v49 = optionsCopy;
      v18 = HMFGetLogIdentifier();
      if (status)
      {
        v43 = MEMORY[0x277CCA9B8];
        v41 = *MEMORY[0x277CCA590];
        v53 = *MEMORY[0x277CCA450];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        responseCopy = v19;
        v20 = @"?";
        if (v19)
        {
          v20 = v19;
        }

        v54 = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v22 = v43;
        v42 = v21;
        v23 = [v22 errorWithDomain:v41 code:status userInfo:?];
      }

      else
      {
        v23 = 0;
      }

      v26 = &stru_286509E58;
      *buf = 138544130;
      if (v47)
      {
        v26 = v47;
      }

      v56 = v18;
      v57 = 2112;
      v58 = transactionCopy;
      v59 = 2112;
      v60 = v23;
      v61 = 2112;
      v62 = v26;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Completed request, tid %@, status %@\n%@", buf, 0x2Au);
      if (status)
      {
      }

      responseCopy = v47;
      optionsCopy = v49;
      v14 = v45;
    }

    objc_autoreleasePoolPop(v14);
    v27 = [v13 objectForKeyedSubscript:@"timer"];
    v28 = v27;
    if (v27)
    {
      dispatch_source_cancel(v27);
    }

    [(NSMutableDictionary *)self->_transactions removeObjectForKey:transactionCopy];
    v29 = [v13 objectForKeyedSubscript:@"responseHandler"];
    if (v29)
    {
      v30 = [v13 hmf_dictionaryForKey:@"options"];
      v31 = [v30 hmf_stringForKey:@"kRemoteMessageAttributedMessageNameKey"];
      v32 = augmentResponseOptions(optionsCopy, v31);
      if (status)
      {
        v46 = MEMORY[0x277CCA9B8];
        v44 = *MEMORY[0x277CCA590];
        v50 = optionsCopy;
        statusCopy = status;
        v51 = *MEMORY[0x277CCA450];
        v48 = v30;
        v34 = responseCopy;
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        v36 = v35;
        v37 = @"?";
        if (v35)
        {
          v37 = v35;
        }

        v52 = v37;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v39 = [v46 errorWithDomain:v44 code:statusCopy userInfo:v38];
        (v29)[2](v29, v34, v32, v39);

        optionsCopy = v50;
        responseCopy = v34;
        v30 = v48;
      }

      else
      {
        (v29)[2](v29, responseCopy, v32, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v25 = v24 = optionsCopy;
      *buf = 138543618;
      v56 = v25;
      v57 = 2112;
      v58 = transactionCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Missing, tid %@", buf, 0x16u);

      optionsCopy = v24;
    }

    objc_autoreleasePoolPop(v14);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v48[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  if (v12)
  {
    v13 = v12;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __70__HMDSecureRemoteStreamInternal__sendRequest_options_responseHandler___block_invoke;
    handler[3] = &unk_2797359B0;
    handler[4] = self;
    v14 = uUIDString;
    v40 = v14;
    dispatch_source_set_event_handler(v13, handler);

    dispatch_source_set_cancel_handler(v13, &__block_literal_global_80_185972);
    v15 = dispatch_walltime(0, self->_sendInternalTimeoutNanos);
    dispatch_source_set_timer(v13, v15, 0xFFFFFFFFFFFFFFFFLL, self->_sendInternalTimeoutNanos / 0xA);
    dispatch_resume(v13);
    v16 = [handlerCopy copy];
    v17 = v16;
    v18 = MEMORY[0x277CBEC10];
    if (optionsCopy)
    {
      v18 = optionsCopy;
    }

    v48[0] = v18;
    v47[0] = @"options";
    v47[1] = @"responseHandler";
    v19 = _Block_copy(v16);
    v47[2] = @"timer";
    v48[1] = v19;
    v48[2] = v13;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];

    v31 = v20;
    [(NSMutableDictionary *)self->_transactions setObject:v20 forKey:v14];
    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:requestCopy];
    [v21 setObject:self->_sessionID forKeyedSubscript:@"sid"];
    [v21 setObject:v14 forKeyedSubscript:@"tid"];
    [v21 setObject:@"request" forKeyedSubscript:@"type"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v25 = v30 = optionsCopy;
      *buf = 138543874;
      v42 = v25;
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v21;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Sending request, tid %@\n%@", buf, 0x20u);

      optionsCopy = v30;
    }

    objc_autoreleasePoolPop(v22);
    userQueue = selfCopy->_userQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDSecureRemoteStreamInternal__sendRequest_options_responseHandler___block_invoke_90;
    block[3] = &unk_279734960;
    block[4] = selfCopy;
    v37 = v21;
    v38 = optionsCopy;
    v27 = v21;
    dispatch_async(userQueue, block);

    [(HMDSecureRemoteStreamInternal *)selfCopy _updateIdleTimer];
  }

  else
  {
    internalQueue = self->_internalQueue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __70__HMDSecureRemoteStreamInternal__sendRequest_options_responseHandler___block_invoke_2_91;
    v33[3] = &unk_2797345A0;
    v34 = handlerCopy;
    v35 = -6700;
    dispatch_async(internalQueue, v33);
    v17 = v34;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __70__HMDSecureRemoteStreamInternal__sendRequest_options_responseHandler___block_invoke_2_91(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v6 = v5;
    v7 = @"?";
    if (v5)
    {
      v7 = v5;
    }

    v15[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:{1, v1 + 16}];
    v9 = [v3 errorWithDomain:v4 code:v2 userInfo:v8];
    (*(v1 + 16))(v1, 0, 0, v9);

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(v1 + 16);
    v12 = *MEMORY[0x277D85DE8];
    v13 = *(a1 + 32);

    v11(v13, 0, 0, 0);
  }
}

- (void)_completeUserTransaction:(id)transaction response:(id)response options:(id)options status:(int)status
{
  v60 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  responseCopy = response;
  optionsCopy = options;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v42 = responseCopy;
    v16 = HMFGetLogIdentifier();
    if (status)
    {
      v41 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA590];
      v50 = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      responseCopy = v18;
      v19 = @"?";
      if (v18)
      {
        v19 = v18;
      }

      v51 = v19;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v20 = [v41 errorWithDomain:v17 code:status userInfo:v6];
    }

    else
    {
      v20 = 0;
    }

    v21 = &stru_286509E58;
    *buf = 138544130;
    if (v42)
    {
      v21 = v42;
    }

    v53 = v16;
    v54 = 2112;
    v55 = transactionCopy;
    v56 = 2112;
    v57 = v20;
    v58 = 2112;
    v59 = v21;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Completed user request, utid %@, status %@\n%@", buf, 0x2Au);
    if (status)
    {
    }

    responseCopy = v42;
  }

  objc_autoreleasePoolPop(v13);
  v22 = [(NSMutableArray *)selfCopy->_userTransactions count];
  if (!v22)
  {
    v25 = 0;
LABEL_24:
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543874;
      v53 = v39;
      v54 = 2112;
      v55 = transactionCopy;
      v56 = 2112;
      v57 = responseCopy;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Missing, utid %@ for response %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    goto LABEL_27;
  }

  v23 = v22;
  statusCopy = status;
  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = v25;
    v25 = [(NSMutableArray *)selfCopy->_userTransactions objectAtIndexedSubscript:v24];

    v27 = [v25 objectForKeyedSubscript:@"utid"];
    v28 = [v27 isEqual:transactionCopy];

    if (v28)
    {
      break;
    }

    if (v23 == ++v24)
    {
      goto LABEL_24;
    }
  }

  v29 = v25;
  v25 = v29;
  if (!v29)
  {
    goto LABEL_24;
  }

  v30 = responseCopy;
  v31 = [v29 objectForKeyedSubscript:@"timer"];
  v32 = v31;
  if (v31)
  {
    dispatch_source_cancel(v31);
  }

  v33 = [v25 objectForKeyedSubscript:@"responseHandler"];
  v34 = v33;
  if (v33)
  {
    userQueue = selfCopy->_userQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDSecureRemoteStreamInternal__completeUserTransaction_response_options_status___block_invoke;
    block[3] = &unk_2797345C8;
    v48 = v33;
    v46 = v30;
    v47 = optionsCopy;
    v49 = statusCopy;
    dispatch_async(userQueue, block);
  }

  [(NSMutableArray *)selfCopy->_userTransactions removeObjectAtIndex:v24];

  responseCopy = v30;
LABEL_27:

  v40 = *MEMORY[0x277D85DE8];
}

void __82__HMDSecureRemoteStreamInternal__completeUserTransaction_response_options_status___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA590];
    v16 = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v8 = v7;
    v9 = @"?";
    if (v7)
    {
      v9 = v7;
    }

    v17[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:{1, v1 + 16}];
    v11 = [v5 errorWithDomain:v6 code:v4 userInfo:v10];
    (*(v1 + 16))(v1, v3, v2, v11);

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *(v1 + 16);
    v14 = *MEMORY[0x277D85DE8];
    v15 = *(a1 + 48);

    v13(v15, v3, v2, 0);
  }
}

- (void)_sendUserRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v59[5] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_started)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
    if (v13)
    {
      v14 = v13;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __74__HMDSecureRemoteStreamInternal__sendUserRequest_options_responseHandler___block_invoke;
      handler[3] = &unk_279735D00;
      handler[4] = self;
      dispatch_source_set_event_handler(v13, handler);
      dispatch_source_set_cancel_handler(v14, &__block_literal_global_62_185977);
      v15 = dispatch_walltime(0, self->_sendUserTimeoutNanos);
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, self->_sendUserTimeoutNanos / 0xA);
      dispatch_resume(v14);
      v16 = [handlerCopy copy];
      v17 = v16;
      userTransactions = self->_userTransactions;
      v58[0] = @"options";
      v58[1] = @"request";
      v19 = MEMORY[0x277CBEC10];
      if (optionsCopy)
      {
        v19 = optionsCopy;
      }

      v59[0] = v19;
      v59[1] = requestCopy;
      v58[2] = @"responseHandler";
      v20 = _Block_copy(v16);
      v59[2] = v20;
      v59[3] = v14;
      v58[3] = @"timer";
      v58[4] = @"utid";
      v59[4] = uUIDString;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:5];
      [(NSMutableArray *)userTransactions addObject:v21];

      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v53 = v25;
        v54 = 2112;
        v55 = uUIDString;
        v56 = 2112;
        v57 = requestCopy;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Scheduled user request, utid %@\n%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDSecureRemoteStreamInternal *)selfCopy _runStateMachine];

      goto LABEL_8;
    }

    v27 = -6700;
  }

  else
  {
    uUIDString = 0;
    v27 = -6703;
  }

  v28 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    v41 = MEMORY[0x277CCA9B8];
    v43 = v31;
    v39 = *MEMORY[0x277CCA590];
    v32 = v27;
    v50 = *MEMORY[0x277CCA450];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v44 = v33;
    v34 = @"?";
    if (v33)
    {
      v34 = v33;
    }

    v51 = v34;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:{1, v39, v41}];
    v45 = v27;
    v36 = v35 = v28;
    v37 = [v42 errorWithDomain:v40 code:v32 userInfo:v36];
    *buf = 138543618;
    v53 = v43;
    v54 = 2112;
    v55 = v37;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Send user request failed: %@", buf, 0x16u);

    v28 = v35;
    v27 = v45;
  }

  objc_autoreleasePoolPop(v28);
  userQueue = selfCopy2->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDSecureRemoteStreamInternal__sendUserRequest_options_responseHandler___block_invoke_75;
  block[3] = &unk_2797345A0;
  v47 = handlerCopy;
  v48 = v27;
  dispatch_async(userQueue, block);
  v14 = v47;
LABEL_8:

  v26 = *MEMORY[0x277D85DE8];
}

void __74__HMDSecureRemoteStreamInternal__sendUserRequest_options_responseHandler___block_invoke_75(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v6 = v5;
    v7 = @"?";
    if (v5)
    {
      v7 = v5;
    }

    v15[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:{1, v1 + 16}];
    v9 = [v3 errorWithDomain:v4 code:v2 userInfo:v8];
    (*(v1 + 16))(v1, 0, 0, v9);

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(v1 + 16);
    v12 = *MEMORY[0x277D85DE8];
    v13 = *(a1 + 32);

    v11(v13, 0, 0, 0);
  }
}

- (void)sendRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDSecureRemoteStreamInternal_sendRequest_options_responseHandler___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = requestCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = requestCopy;
  dispatch_async(internalQueue, v15);
}

- (int)_updateIdleTimer
{
  v31 = *MEMORY[0x277D85DE8];
  idleTimer = self->_idleTimer;
  v4 = idleTimer;
  if (idleTimer)
  {
LABEL_4:
    if (self->_type == 1)
    {
      v8 = &OBJC_IVAR___HMDSecureRemoteStreamInternal__clientIdleTimeoutNanos;
    }

    else
    {
      v8 = &OBJC_IVAR___HMDSecureRemoteStreamInternal__serverIdleTimeoutNanos;
    }

    v9 = *(&self->super.super.isa + *v8);
    v10 = dispatch_walltime(0, v9);
    dispatch_source_set_timer(v4, v10, 0xFFFFFFFFFFFFFFFFLL, v9 / 0xA);
    if (!idleTimer)
    {
      dispatch_resume(self->_idleTimer);
    }

    result = 0;
    goto LABEL_10;
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  v6 = self->_idleTimer;
  self->_idleTimer = v5;

  v7 = self->_idleTimer;
  if (v7)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__HMDSecureRemoteStreamInternal__updateIdleTimer__block_invoke;
    handler[3] = &unk_279735D00;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_source_set_cancel_handler(self->_idleTimer, &__block_literal_global_60_185981);
    v4 = self->_idleTimer;
    goto LABEL_4;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v25 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v20 = v19;
    v21 = @"?";
    if (v19)
    {
      v21 = v19;
    }

    v26 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v23 = [v17 errorWithDomain:v18 code:-6700 userInfo:v22];
    *buf = 138543618;
    v28 = v16;
    v29 = 2112;
    v30 = v23;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@idle timer failed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  result = -6700;
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)_setupEncryption
{
  type = self->_type;
  if (type == 1)
  {
    v4 = &OBJC_IVAR___HMDSecureRemoteStreamInternal__cipherWriteKey;
  }

  else
  {
    v4 = &OBJC_IVAR___HMDSecureRemoteStreamInternal__cipherReadKey;
  }

  if (!self->_pairVerifySession)
  {
    return -6745;
  }

  v5 = *v4;
  if (type == 1)
  {
    v6 = &OBJC_IVAR___HMDSecureRemoteStreamInternal__cipherReadKey;
  }

  else
  {
    v6 = &OBJC_IVAR___HMDSecureRemoteStreamInternal__cipherWriteKey;
  }

  v7 = *v6;
  v8 = PairingSessionDeriveKey();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    pairVerifySession = self->_pairVerifySession;
    v9 = PairingSessionDeriveKey();
    if (!v9)
    {
      *self->_cipherReadNonce = 0;
      *self->_cipherWriteNonce = 0;
    }
  }

  v11 = self->_pairVerifySession;
  if (v11)
  {
    CFRelease(v11);
    self->_pairVerifySession = 0;
  }

  return v9;
}

- (void)_runStateMachine
{
  if (self->_type == 1)
  {
    [(HMDSecureRemoteStreamInternal *)self _clientRunStateMachine];
  }

  else
  {
    [(HMDSecureRemoteStreamInternal *)self _serverRunStateMachine];
  }
}

void __39__HMDSecureRemoteStreamInternal__stop___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = _Block_copy(*(*(a1 + 32) + 208));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 208);
    *(v3 + 208) = 0;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = *MEMORY[0x277CCA590];
      v14 = *MEMORY[0x277CCA450];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v9 = v8;
      v10 = @"?";
      if (v8)
      {
        v10 = v8;
      }

      v15[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v12 = [v6 errorWithDomain:v7 code:v5 userInfo:v11];
      v2[2](v2, v12);
    }

    else
    {
      v2[2](v2, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __39__HMDSecureRemoteStreamInternal__stop___block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = _Block_copy(*(*(a1 + 32) + 216));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 216);
    *(v3 + 216) = 0;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = v5 == -6752;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v2[2](v2, 0);
    }

    else
    {
      v7 = v5;
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA590];
      v16 = *MEMORY[0x277CCA450];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v11 = v10;
      v12 = @"?";
      if (v10)
      {
        v12 = v10;
      }

      v17[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v14 = [v8 errorWithDomain:v9 code:v7 userInfo:v13];
      (v2)[2](v2, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDSecureRemoteStreamInternal_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_start
{
  v49 = *MEMORY[0x277D85DE8];
  started = self->_started;
  if (!started)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    self->_started = 1;
  }

  state = self->_state;
  if (state == 11 || state == 1)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Start failed, attempt to restart session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    _updateIdleTimer = 4294960593;
    goto LABEL_13;
  }

  if (!self->_transportSendMessage)
  {
    goto LABEL_38;
  }

  sessionID = self->_sessionID;
  self->_sessionID = 0;

  type = self->_type;
  if (type == 2)
  {
    if (self->_requestHandler)
    {
      v32 = 10;
      goto LABEL_25;
    }

LABEL_38:
    _updateIdleTimer = 4294960551;
    goto LABEL_13;
  }

  if (type != 1)
  {
    _updateIdleTimer = 4294960591;
    goto LABEL_13;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v31 = self->_sessionID;
  self->_sessionID = uUIDString;

  v32 = 0;
LABEL_25:
  self->_state = v32;
  if (!self->_prepareRequests)
  {
    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    prepareRequests = self->_prepareRequests;
    self->_prepareRequests = v33;
  }

  if (!self->_transactions)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transactions = self->_transactions;
    self->_transactions = v35;
  }

  if (!self->_userTransactions)
  {
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    userTransactions = self->_userTransactions;
    self->_userTransactions = v37;
  }

  _updateIdleTimer = [(HMDSecureRemoteStreamInternal *)self _updateIdleTimer];
  if (!_updateIdleTimer)
  {
    if (!started)
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v42;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Started", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v39);
    }

    [(HMDSecureRemoteStreamInternal *)self _runStateMachine];
    goto LABEL_18;
  }

LABEL_13:
  v15 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DebugGetErrorString(), *MEMORY[0x277CCA450]}];
    v22 = v21;
    v23 = @"?";
    if (v21)
    {
      v23 = v21;
    }

    v44 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v25 = [v19 errorWithDomain:v20 code:_updateIdleTimer userInfo:v24];
    *buf = 138543618;
    v46 = v18;
    v47 = 2112;
    v48 = v25;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Start failed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDSecureRemoteStreamInternal *)selfCopy4 _stop:_updateIdleTimer];
LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDSecureRemoteStreamInternal_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dealloc
{
  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    self->_internalQueue = 0;
  }

  requestHandler = self->_requestHandler;
  self->_requestHandler = 0;

  startedHandler = self->_startedHandler;
  self->_startedHandler = 0;

  stoppedHandler = self->_stoppedHandler;
  self->_stoppedHandler = 0;

  transportSendMessage = self->_transportSendMessage;
  self->_transportSendMessage = 0;

  userQueue = self->_userQueue;
  if (userQueue)
  {
    self->_userQueue = 0;
  }

  v9.receiver = self;
  v9.super_class = HMDSecureRemoteStreamInternal;
  [(HMDSecureRemoteStreamInternal *)&v9 dealloc];
}

- (HMDSecureRemoteStreamInternal)initWithType:(int64_t)type commitTimeout:(unint64_t)timeout clientIdleTimeout:(unint64_t)idleTimeout serverIdleTimeout:(unint64_t)serverIdleTimeout sendInternalTimeout:(unint64_t)internalTimeout sendUserTimeout:(unint64_t)userTimeout
{
  v27.receiver = self;
  v27.super_class = HMDSecureRemoteStreamInternal;
  v14 = [(HMDSecureRemoteStreamInternal *)&v27 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  if (type != 1)
  {
    if (type == 2)
    {
      v16 = 10;
      goto LABEL_6;
    }

LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_6:
  v14->_state = v16;
  v14->_type = type;
  if (initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_t0 != -1)
  {
    dispatch_once(&initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_t0, &__block_literal_global_185997);
  }

  v17 = MEMORY[0x277CCACA8];
  v18 = initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_v1;
  v19 = [v17 stringWithFormat:@"HMDSecureRemoteStream.Internal.%tu", -[HMDSecureRemoteStreamInternal hash](v15, "hash")];
  uTF8String = [v19 UTF8String];
  v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v22 = dispatch_queue_create_with_target_V2(uTF8String, v21, v18);
  internalQueue = v15->_internalQueue;
  v15->_internalQueue = v22;

  v24 = v15->_internalQueue;
  if (!v24)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v15->_userQueue, MEMORY[0x277D85CD0]);
  v15->_commitTimeoutNanos = timeout;
  v15->_clientIdleTimeoutNanos = idleTimeout;
  v15->_serverIdleTimeoutNanos = serverIdleTimeout;
  v15->_sendInternalTimeoutNanos = internalTimeout;
  v15->_sendUserTimeoutNanos = userTimeout;
  v25 = v15;
LABEL_11:

  return v25;
}

uint64_t __132__HMDSecureRemoteStreamInternal_initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___block_invoke()
{
  v0 = dispatch_workloop_create("HMDSecureRemoteStream.Internal");
  v1 = initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_v1;
  initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_v1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMDSecureRemoteStreamInternal)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"-init is not a valid initializer for HMDSecureRemoteStream"];

  return 0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t49 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t49, &__block_literal_global_133_186010);
  }

  v3 = logCategory__hmf_once_v50;

  return v3;
}

uint64_t __44__HMDSecureRemoteStreamInternal_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v50;
  logCategory__hmf_once_v50 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end