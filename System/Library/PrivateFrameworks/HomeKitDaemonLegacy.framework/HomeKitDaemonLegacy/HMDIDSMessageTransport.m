@interface HMDIDSMessageTransport
+ (_HMFRate)sendMessageRate;
+ (id)logCategory;
+ (id)queueOneIdentifierWithMessageName:(id)a3 target:(id)a4 collapseID:(id)a5 timeToLive:(double)a6 now:(id)a7;
+ (id)stringFromHMDIDSResidentInfo:(int64_t)a3;
+ (unint64_t)sendMessageLimit;
- (BOOL)_shouldAddLocalHandleToDevice:(id)a3;
- (BOOL)_shouldProcessLegacyIDSMessageFromID:(id)a3 context:(id)a4 message:(id *)a5 service:(id)a6;
- (BOOL)canSendMessage:(id)a3;
- (BOOL)isSecure;
- (BOOL)isValidMessage:(id)a3;
- (HMDIDSMessageTransport)initWithAccountRegistry:(id)a3 forServiceName:(id)a4;
- (HMDIDSMessageTransport)initWithAccountRegistry:(id)a3 service:(id)a4 serviceName:(id)a5 appleAccountManager:(id)a6 remoteAccountManager:(id)a7 featuresDataSource:(id)a8;
- (double)defaultTimeout;
- (id)deviceForSenderContext:(id)a3;
- (id)logIdentifier;
- (id)sendMessage:(id)a3 fromHandle:(id)a4 destination:(id)a5 priority:(int64_t)a6 timeout:(double)a7 options:(unint64_t)a8 queueOneID:(id)a9 senderResidentInfo:(int64_t)a10 destinationResidentInfo:(int64_t)a11 error:(id *)a12;
- (id)start;
- (unint64_t)maximumNumberOfRetries;
- (void)_pendingResponseTimeoutFor:(id)a3;
- (void)_removePendingResponseTimerForTransaction:(id)a3;
- (void)_removePendingResponseTransaction:(id)a3;
- (void)_restartPendingResponseTimerFor:(id)a3 withReducedFactor:(unint64_t)a4;
- (void)_startPendingResponseTimer:(id)a3 responseTimeout:(double)a4 identifier:(id)a5;
- (void)legacyHandleIncomingRemoteMessage:(id)a3 sourceDevice:(id)a4 senderDeviceHandle:(id)a5 isSecure:(BOOL)a6 incomingMessage:(id)a7 fromID:(id)a8 context:(id)a9;
- (void)sendMessage:(id)a3 senderResidentInfo:(int64_t)a4 destinationResidentInfo:(int64_t)a5 completionHandler:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation HMDIDSMessageTransport

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12)
  {
    v14 = [(HMDIDSMessageTransport *)self featuresDataSource];
    v15 = [v14 isTransportRetryEnabled];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543875;
        v31 = v19;
        v32 = 2114;
        v33 = v12;
        v34 = 2113;
        v35 = v11;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Receipt of message with IDS GUID %{public}@ from account: %{private}@ confirmed.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [(HMDIDSMessageTransport *)v17 messageContexts];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __81__HMDIDSMessageTransport_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
      v28[3] = &unk_279725088;
      v29 = v12;
      v21 = [v20 hmf_objectPassingTest:v28];

      if (v21)
      {
        v22 = [v21 userInfo];
        v23 = [v22 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

        v24 = _Block_copy(v23);
        v25 = v24;
        if (v24)
        {
          (*(v24 + 2))(v24, 0);
        }

        v26 = [(HMDIDSMessageTransport *)v17 messageContexts];
        [v26 removeObject:v21];
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __81__HMDIDSMessageTransport_service_account_identifier_hasBeenDeliveredWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUIDString:*(a1 + 32)];

  return v4;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v71 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (v16)
  {
    v19 = [(HMDIDSMessageTransport *)self messageContexts];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke;
    v61[3] = &unk_279725088;
    v20 = v16;
    v62 = v20;
    v21 = [v19 hmf_objectPassingTest:v61];

    if (v21)
    {
      v55 = v14;
      if (v17)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:v17];
        v58 = [v22 hmErrorWithCode:54 description:@"Communication failure." reason:0 suggestion:0 underlyingError:v23];
      }

      else
      {
        v58 = 0;
      }

      v24 = [(HMDIDSMessageTransport *)self featuresDataSource];
      v25 = [v24 isTransportRetryEnabled];

      if ((v25 & 1) == 0)
      {
        v26 = [v21 userInfo];
        v27 = [v26 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

        v28 = _Block_copy(v27);
        v29 = v28;
        if (v28)
        {
          (*(v28 + 2))(v28, v58);
        }
      }

      v57 = v15;
      if (!a6)
      {
        v30 = [(HMDIDSMessageTransport *)self featuresDataSource];
        v31 = [v30 isTransportRetryEnabled];

        if (v31)
        {
          v32 = [v21 userInfo];
          v33 = [v32 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

          v34 = _Block_copy(v33);
          v35 = v34;
          if (v34)
          {
            (*(v34 + 2))(v34, v58);
          }
        }

        v36 = objc_autoreleasePoolPush();
        v37 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138544131;
          v64 = v39;
          v65 = 2114;
          v66 = v20;
          v67 = 2113;
          v68 = v57;
          v69 = 2112;
          v70 = v17;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message with IDS GUID %{public}@ from account: %{private}@ with error: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v36);
        v40 = [v21 destination];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41;

        if (v17 && v42)
        {
          v43 = [v42 allRemoteDestinationStrings];
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke_141;
          v59[3] = &unk_279732AC0;
          v59[4] = v37;
          v60 = v17;
          [v43 na_each:v59];
        }

        v44 = [v21 userInfo];
        v45 = [v44 objectForKeyedSubscript:@"HMDIDSMessageTransportTransactionIdentifierKey"];

        if (v45)
        {
          v46 = [(HMDIDSMessageTransport *)v37 pendingResponses];
          v47 = [v46 objectForKeyedSubscript:v45];

          if (v47)
          {
            (v47)[2](v47, v58, 0);
          }

          [(HMDIDSMessageTransport *)v37 _removePendingResponseTransaction:v45];
        }

        v48 = [(HMDIDSMessageTransport *)v37 featuresDataSource];
        v49 = [v48 isTransportRetryEnabled];

        if (v49)
        {
          v50 = [(HMDIDSMessageTransport *)v37 messageContexts];
          [v50 removeObject:v21];
        }
      }

      v51 = [(HMDIDSMessageTransport *)self featuresDataSource];
      v52 = [v51 isTransportRetryEnabled];

      if ((v52 & 1) == 0)
      {
        v53 = [(HMDIDSMessageTransport *)self messageContexts];
        [v53 removeObject:v21];
      }

      v14 = v56;
      v15 = v57;
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUIDString:*(a1 + 32)];

  return v4;
}

void __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke_141(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 remoteAccountManager];
  [v5 __handleSendMessageFailureWithError:*(a1 + 40) destination:v4];
}

- (void)legacyHandleIncomingRemoteMessage:(id)a3 sourceDevice:(id)a4 senderDeviceHandle:(id)a5 isSecure:(BOOL)a6 incomingMessage:(id)a7 fromID:(id)a8 context:(id)a9
{
  v102 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v83 = a4;
  v79 = a5;
  v82 = a7;
  v78 = a8;
  v80 = a9;
  v16 = [v15 name];
  v81 = [v15 destination];
  v17 = [v15 transactionIdentifier];
  objc_initWeak(&location, self);
  if (![v15 type])
  {
    v36 = aBlock;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke;
    aBlock[3] = &unk_2797250D8;
    v37 = &v93;
    objc_copyWeak(&v93, &location);
    aBlock[4] = v16;
    v88 = v81;
    v94 = a6;
    v89 = v17;
    v90 = v80;
    v91 = v83;
    v92 = v79;
    v24 = _Block_copy(aBlock);

LABEL_14:
    objc_destroyWeak(v37);
    [v15 setInternalResponseHandler:v24];
    v27 = [(HMFMessageTransport *)self delegate];
    [v27 messageTransport:self didReceiveMessage:v15];
LABEL_45:

    goto LABEL_46;
  }

  if ([v15 type] != 1)
  {
    v36 = v84;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_137;
    v84[3] = &unk_279733AE8;
    v37 = &v85;
    objc_copyWeak(&v85, &location);
    v84[4] = v16;
    v24 = _Block_copy(v84);
    goto LABEL_14;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v17 UUIDString];
    *buf = 138543618;
    v97 = v21;
    v98 = 2114;
    v99 = v22;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Received response to IDS message with transaction ID: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v23 = [(HMDIDSMessageTransport *)v19 pendingResponses];
  v24 = [v23 objectForKeyedSubscript:v17];

  if (v24)
  {
    v25 = MEMORY[0x277CBEB38];
    v26 = [v82 hmf_dictionaryForKey:@"kIDSMessagePayloadKey"];
    v27 = [v25 dictionaryWithDictionary:v26];

    [v27 setObject:v78 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
    v28 = [v82 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
    if (v28)
    {
      v29 = MEMORY[0x277CCAAC8];
      v30 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v86 = 0;
      v31 = [v29 _strictlyUnarchivedObjectOfClasses:v30 fromData:v28 error:&v86];
      v32 = v86;

      if (!v31)
      {
        context = objc_autoreleasePoolPush();
        v33 = v19;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v97 = v35;
          v98 = 2112;
          v99 = v32;
          v74 = v35;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize error with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Generic error." reason:@"Failed to deserialize remote error." suggestion:0 underlyingError:v32];
      }

      [v27 setObject:v31 forKeyedSubscript:{@"kIDSMessageResponseErrorDataKey", v74}];

      v75 = v31;
    }

    else
    {
      v75 = 0;
    }

    v42 = [(HMDIDSMessageTransport *)v19 requestedCapabilities];
    v43 = [v42 objectForKeyedSubscript:v17];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    contexta = v44;

    if ([contexta count])
    {
      v45 = [(HMDIDSMessageTransport *)v19 destinationAddress];
      v46 = [v45 objectForKeyedSubscript:v17];
      v47 = [v46 isEqualToString:v78];

      if (!v47)
      {
        v54 = [(HMDIDSMessageTransport *)v19 receivedResponses];
        v55 = [v54 objectForKeyedSubscript:v17];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v57 = v56;

        if (!v57)
        {
          v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v58 = [(HMDIDSMessageTransport *)v19 receivedResponses];
          [v58 setObject:v55 forKeyedSubscript:v17];
        }

        [v55 addObject:{v27, v75}];
        v59 = [v55 count];
        if ([(HMDRemoteMessageTransport *)v19 doesResponse:v27 matchAllCapabilities:contexta])
        {
          v60 = objc_autoreleasePoolPush();
          v61 = v19;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            *buf = 138543362;
            v97 = v63;
            _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Response Matched all capabilities", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v60);
          [(HMDIDSMessageTransport *)v61 _removePendingResponseTimerForTransaction:v17];
          [(HMDIDSMessageTransport *)v61 _pendingResponseTimeoutFor:v17];
        }

        else
        {
          [(HMDIDSMessageTransport *)v19 _restartPendingResponseTimerFor:v17 withReducedFactor:v59 + 1];
          v64 = objc_autoreleasePoolPush();
          v65 = v19;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543618;
            v97 = v67;
            v98 = 2112;
            v99 = v27;
            _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Not Calling response handler with response %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v64);
          v68 = objc_autoreleasePoolPush();
          v69 = v65;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            v71 = HMFGetLogIdentifier();
            v72 = [v55 count];
            *buf = 138543618;
            v97 = v71;
            v98 = 2048;
            v99 = v72;
            _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_INFO, "%{public}@Currently received responses = %lu", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
        }

        goto LABEL_44;
      }

      v48 = objc_autoreleasePoolPush();
      v49 = v19;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543874;
        v97 = v51;
        v98 = 2160;
        v99 = 1752392040;
        v100 = 2112;
        v101 = v78;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Received response to directed message - selecting response from %{mask.hash}@", buf, 0x20u);
      }
    }

    else
    {
      v48 = objc_autoreleasePoolPush();
      v52 = v19;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543362;
        v97 = v53;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@No Capabilities were requested - selecting the first response", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v48);
    (v24)[2](v24, v75, v27);
    [(HMDIDSMessageTransport *)v19 _removePendingResponseTransaction:v17];
LABEL_44:

    goto LABEL_45;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = v19;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138543618;
    v97 = v41;
    v98 = 2112;
    v99 = v15;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@No response handler, dropping message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  [(HMDRemoteMessageTransport *)v39 postDidReceiveRemoteMessageWithNoListenerFromDevice:v83];
  v24 = 0;
LABEL_46:

  objc_destroyWeak(&location);
  v73 = *MEMORY[0x277D85DE8];
}

void __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_2;
    v10[3] = &unk_2797250B0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v6;
    v20 = *(a1 + 88);
    v14 = *(a1 + 48);
    v15 = v5;
    v16 = *(a1 + 56);
    v17 = v8;
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    dispatch_async(v9, v10);
  }
}

void __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_137(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v14 = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Command %{public}@ completed with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

void __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_2(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [[HMDRemoteMessage alloc] initWithName:*(a1 + 32) destination:*(a1 + 40) payload:*(a1 + 48) type:1 timeout:*(a1 + 104) secure:0.0];
  [(HMDRemoteMessage *)v2 setTransactionIdentifier:*(a1 + 56)];
  v43 = 0;
  v3 = [HMDRemoteMessageSerialization dictionaryForMessage:v2 error:&v43];
  v4 = v43;
  v5 = [v3 mutableCopy];

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    [v5 setObject:v7 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
  }

  if ([*(a1 + 72) fromServerStorage])
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 80);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      *buf = 138543874;
      v45 = v12;
      v46 = 2114;
      v47 = v13;
      v48 = 2114;
      v49 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Responding to non-server storage message, %{public}@ (%{public}@), as direct message", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 1;
  }

  v15 = [*(a1 + 72) toID];
  if ([v15 length])
  {
    v16 = [*(a1 + 88) account];
    v17 = [v16 isCurrentAccount];

    if (v17)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v15 = [*(a1 + 72) toID];
    v18 = [HMDAccountHandle accountHandleForDestination:v15];
  }

  else
  {
    v18 = 0;
  }

LABEL_14:
  v19 = [HMDRemoteDeviceMessageDestination alloc];
  v20 = [*(a1 + 40) target];
  v21 = [(HMDRemoteDeviceMessageDestination *)v19 initWithTarget:v20 device:*(a1 + 88)];

  [(HMDRemoteDeviceMessageDestination *)v21 setPreferredHandle:*(a1 + 96)];
  v22 = *(a1 + 80);
  v42 = 0;
  v40 = v5;
  v23 = [v22 sendMessage:v5 fromHandle:v18 destination:v21 priority:300 timeout:v8 options:0 queueOneID:0.0 error:&v42];
  v41 = v42;
  v24 = objc_autoreleasePoolPush();
  v25 = *(a1 + 80);
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (v23)
  {
    v28 = v2;
    v29 = v4;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v30;
      v46 = 2114;
      v47 = v23;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@IDS message response ack'd with identifier %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v31 = [HMDIDSMessageContext alloc];
    v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
    v33 = [(HMDIDSMessageContext *)v31 initWithIdentifier:v32 destination:v21 userInfo:0];

    v34 = [*(a1 + 80) messageContexts];
    [v34 addObject:v33];

    v4 = v29;
    v2 = v28;
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      [(HMFObject *)v2 shortDescription];
      v36 = v2;
      v38 = v37 = v4;
      *buf = 138543874;
      v45 = v35;
      v46 = 2112;
      v47 = v38;
      v48 = 2112;
      v49 = v41;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@IDS message response, %@, failed with error: %@", buf, 0x20u);

      v4 = v37;
      v2 = v36;
    }

    objc_autoreleasePoolPop(v24);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v175 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v16 originalGUID];
  if (!v17)
  {
LABEL_12:
    v157 = v13;
    if (self && [(HMDIDSMessageTransport *)self isModernTransport])
    {
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      v36 = HMFGetLogIdentifier();
      v37 = [v14 shortDescription];
      *buf = 138544130;
      v164 = v36;
      v165 = 2112;
      v166 = v37;
      v167 = 2160;
      v168 = 1752392040;
      v169 = 2112;
      v170 = v15;
      v38 = v35;
      v39 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v36 = HMFGetLogIdentifier();
      v37 = [v14 shortDescription];
      *buf = 138544130;
      v164 = v36;
      v165 = 2112;
      v166 = v37;
      v167 = 2160;
      v168 = 1752392040;
      v169 = 2112;
      v170 = v15;
      v38 = v35;
      v39 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_2531F8000, v38, v39, "%{public}@Received incoming IDS message: %@, from: %{mask.hash}@", buf, 0x2Au);

LABEL_19:
    objc_autoreleasePoolPop(v33);
    v40 = [v14 objectForKeyedSubscript:@"kIDSMessageNameKey"];
    v41 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    [v41 reportIncomingIDSPush:v40 fromToken:v15];

    if (!v15)
    {
      v118 = objc_autoreleasePoolPush();
      v119 = self;
      v120 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
      {
        v121 = HMFGetLogIdentifier();
        *buf = 138543362;
        v164 = v121;
        _os_log_impl(&dword_2531F8000, v120, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received incoming message with nil fromID", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v118);
      v122 = [[HMDAssertionLogEvent alloc] initWithReason:@"Received incoming message with nil fromID"];
      v123 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v123 submitLogEvent:v122];

      v124 = objc_autoreleasePoolPush();
      v125 = v119;
      v126 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        v127 = HMFGetLogIdentifier();
        [v16 originalGUID];
        v129 = v128 = v12;
        *buf = 138543618;
        v164 = v127;
        v165 = 2114;
        v166 = v129;
        _os_log_impl(&dword_2531F8000, v126, OS_LOG_TYPE_ERROR, "%{public}@Received incoming message, %{public}@, with nil fromID", buf, 0x16u);

        v12 = v128;
      }

      objc_autoreleasePoolPop(v124);
      v13 = v157;
      goto LABEL_65;
    }

    v42 = [HMDDeviceHandle deviceHandleForDestination:v15];
    v43 = [HMDAccountHandle accountHandleForDestination:v15];
    v158 = [HMDAccountIdentifier accountIdentifierForMessageContext:v16];
    v162 = v14;
    v156 = v12;
    v44 = [(HMDIDSMessageTransport *)self _shouldProcessLegacyIDSMessageFromID:v15 context:v16 message:&v162 service:v12];
    v45 = v162;

    v155 = v43;
    if (!v44)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        v54 = [v16 senderCorrelationIdentifier];
        *buf = 138543874;
        v164 = v53;
        v165 = 2114;
        v166 = v40;
        v167 = 2112;
        v168 = v54;
        _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Dropping incoming message %{public}@ from unknown mergeID %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v50);
      v13 = v157;
      goto LABEL_64;
    }

    v161 = 0;
    v46 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v45 error:&v161];
    v47 = v161;
    if (v46)
    {
      if ([(HMDIDSMessageTransport *)self isSecure])
      {
        [v46 setSecure:1];
      }

      if (v42)
      {
        v148 = v47;
        if ([v46 isSecure] && (objc_msgSend(v46, "sourceVersion"), v48 = objc_claimAutoreleasedReturnValue(), v48, v48))
        {
          v49 = [v46 sourceVersion];
        }

        else
        {
          v49 = 0;
        }

        v149 = v42;
        v153 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v42 accountHandle:v43 accountIdentifier:v158 deviceVersion:v49 pairingIdentityIdentifier:0];
        v60 = [(HMDIDSMessageTransport *)self deviceForSenderContext:?];
        if (v60)
        {
          v61 = v60;
          v152 = v40;

          v62 = MEMORY[0x277CBEB38];
          v63 = [v46 messagePayload];
          v64 = [v62 dictionaryWithDictionary:v63];

          [v64 setObject:v15 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
          v147 = v64;
          [v46 setMessagePayload:v64];
          [v46 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
          v65 = [v46 isSecure];
          v66 = [HMDRemoteDeviceMessageDestination alloc];
          v67 = [v46 destination];
          v68 = [v67 target];
          v150 = v61;
          v69 = [(HMDRemoteDeviceMessageDestination *)v66 initWithTarget:v68 device:v61];

          [v46 setDestination:v69];
          v70 = v65;
          if ((v65 & 1) != 0 || ![HMDSecureRemoteSession isSecureRemoteSessionMessage:v46])
          {
            v71 = +[HMDMetricsManager sharedLogEventSubmitter];
            v72 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v46 transportType:[(HMDIDSMessageTransport *)self transportType]];
            [v71 submitLogEvent:v72];
          }

          v73 = [v46 userInfo];
          v74 = [v73 mutableCopy];

          v75 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDIDSMessageTransport transportType](self, "transportType")}];
          [v74 setObject:v75 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

          v146 = v69;
          if (self && [(HMDIDSMessageTransport *)self isModernTransport])
          {
            v145 = v74;
            v76 = [(HMDRemoteMessageSenderContext *)v153 deviceHandle];
            [(HMDRemoteDeviceMessageDestination *)v69 setPreferredHandle:v76];

            v144 = [v45 hmf_stringForKey:@"idsId"];
            v77 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v144];
            v78 = v150;
            v79 = v77;
            v80 = v78;
            v81 = v79;
            v40 = v152;
            if (v79)
            {
              v143 = v79;
              [v78 account];
              v83 = v82 = v78;
              v84 = [v83 isCurrentAccount];

              if (v84)
              {
                v85 = objc_autoreleasePoolPush();
                v86 = self;
                v87 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
                {
                  HMFGetLogIdentifier();
                  v88 = contexta = v85;
                  *buf = 138543618;
                  v164 = v88;
                  v165 = 2112;
                  v166 = v82;
                  _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_DEBUG, "%{public}@Not updating IDS device identifier for device because it belongs to the current account: %@", buf, 0x16u);

                  v85 = contexta;
                }

                objc_autoreleasePoolPop(v85);
                v80 = v82;
                v81 = v143;
              }

              else
              {
                v99 = [v82 sharedUserIDSIdentifier];
                v100 = [v99 isEqual:v143];

                v80 = v82;
                v81 = v143;
                if ((v100 & 1) == 0)
                {
                  context = objc_autoreleasePoolPush();
                  v101 = self;
                  v102 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                  {
                    v103 = HMFGetLogIdentifier();
                    [v80 sharedUserIDSIdentifier];
                    v104 = v140 = v101;
                    *buf = 138544642;
                    v164 = v103;
                    v165 = 2160;
                    v166 = 1752392040;
                    v167 = 2112;
                    v168 = v143;
                    v169 = 2160;
                    v170 = 1752392040;
                    v171 = 2112;
                    v172 = v104;
                    v173 = 2112;
                    v174 = v80;
                    _os_log_impl(&dword_2531F8000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@Setting shared user's IDS device identifier to: %{mask.hash}@, was: %{mask.hash}@, for device: %@", buf, 0x3Eu);

                    v101 = v140;
                    v81 = v143;
                  }

                  objc_autoreleasePoolPop(context);
                  [v80 setSharedUserIDSIdentifier:v81];
                }
              }
            }

            [v145 setObject:v15 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
            v105 = [v16 toID];
            [v145 setObject:v105 forKeyedSubscript:@"kRemoteMessageIDSToIDKey"];

            v106 = [v45 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
            [v145 setObject:v106 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

            v107 = [v46 internal];
            [v107 setUserInfo:v145];

            [v46 setSenderContext:v153];
            v108 = [(HMFMessageTransport *)self delegate];
            [v108 messageTransport:self didReceiveMessage:v46];

            v109 = [(HMDIDSMessageTransport *)self featuresDataSource];
            LODWORD(v106) = [v109 isTransportRetryEnabled];

            if (v106)
            {
              v110 = [(HMDIDSMessageTransport *)self messageContexts];
              v159[0] = MEMORY[0x277D85DD0];
              v159[1] = 3221225472;
              v159[2] = __73__HMDIDSMessageTransport_service_account_incomingMessage_fromID_context___block_invoke;
              v159[3] = &unk_279725088;
              v160 = v16;
              v111 = [v110 hmf_objectPassingTest:v159];

              v42 = v149;
              if (v111)
              {
                v112 = [v111 userInfo];
                v113 = [v112 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

                v114 = _Block_copy(v113);
                v115 = v114;
                if (v114)
                {
                  (*(v114 + 2))(v114, 0);
                }

                v116 = [(HMDIDSMessageTransport *)self messageContexts];
                [v116 removeObject:v111];
              }
            }

            else
            {
              v42 = v149;
            }

            v93 = v153;
            v97 = v150;
            v96 = v144;
            v98 = v145;
          }

          else
          {
            v92 = [v46 internal];
            [v92 setUserInfo:v74];

            v93 = v153;
            [v46 setSenderContext:v153];
            v94 = [(HMDRemoteMessageSenderContext *)v153 deviceHandle];
            v95 = self;
            v96 = v94;
            v97 = v150;
            [(HMDIDSMessageTransport *)v95 legacyHandleIncomingRemoteMessage:v46 sourceDevice:v150 senderDeviceHandle:v94 isSecure:v70 incomingMessage:v45 fromID:v15 context:v16];
            v42 = v149;
            v98 = v74;
            v40 = v152;
          }

          v13 = v157;
        }

        else
        {
          v130 = objc_autoreleasePoolPush();
          v131 = self;
          v132 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
          {
            v133 = HMFGetLogIdentifier();
            *buf = 138543362;
            v164 = v133;
            _os_log_impl(&dword_2531F8000, v132, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Failed to determine source device", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v130);
          v134 = [[HMDAssertionLogEvent alloc] initWithReason:@"Failed to determine source device"];
          v135 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v135 submitLogEvent:v134];

          v136 = objc_autoreleasePoolPush();
          v137 = v131;
          v138 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = HMFGetLogIdentifier();
            *buf = 138543618;
            v164 = v139;
            v165 = 2112;
            v166 = v46;
            _os_log_impl(&dword_2531F8000, v138, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine source device, dropping message: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v136);
          v13 = v157;
          v42 = v149;
        }

        v47 = v148;
        goto LABEL_63;
      }

      v55 = objc_autoreleasePoolPush();
      v56 = self;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v154 = v45;
        v89 = v40;
        v91 = v90 = v47;
        *buf = 138543874;
        v164 = v91;
        v165 = 2160;
        v166 = 1752392040;
        v167 = 2112;
        v168 = v15;
        _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Unable to create sender device handle from fromID: %{mask.hash}@", buf, 0x20u);

        v47 = v90;
        v40 = v89;
        v45 = v154;
      }
    }

    else
    {
      v55 = objc_autoreleasePoolPush();
      v56 = self;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v151 = v40;
        v59 = v58 = v47;
        *buf = 138544386;
        v164 = v59;
        v165 = 2112;
        v166 = v45;
        v167 = 2160;
        v168 = 1752392040;
        v169 = 2112;
        v170 = v15;
        v171 = 2112;
        v172 = v58;
        _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Dropping invalid IDS message payload, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

        v47 = v58;
        v40 = v151;
      }
    }

    objc_autoreleasePoolPop(v55);
    v13 = v157;
LABEL_63:

LABEL_64:
    v14 = v45;
    v12 = v156;
LABEL_65:

    goto LABEL_66;
  }

  v18 = v17;
  v19 = [v16 originalGUID];
  v20 = v19;
  if (!self || !v19)
  {
LABEL_11:

    goto LABEL_12;
  }

  v21 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
  v22 = [v21 containsObject:v20];

  if ((v22 & 1) == 0)
  {
    v29 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
    v30 = [v29 count];

    if (v30 >= 0x1E)
    {
      v31 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
      [v31 removeObjectAtIndex:0];
    }

    v32 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
    [v32 addObject:v20];

    goto LABEL_11;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [v16 originalGUID];
    v28 = v27 = v13;
    *buf = 138543618;
    v164 = v26;
    v165 = 2114;
    v166 = v28;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Received duplicate message with GUID: %{public}@", buf, 0x16u);

    v13 = v27;
  }

  objc_autoreleasePoolPop(v23);
LABEL_66:

  v117 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDIDSMessageTransport_service_account_incomingMessage_fromID_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) originalGUID];
  v5 = [v3 hmf_isEqualToUUIDString:v4];

  return v5;
}

- (BOOL)_shouldProcessLegacyIDSMessageFromID:(id)a3 context:(id)a4 message:(id *)a5 service:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(HMDIDSMessageTransport *)self transportType]== 4)
  {
    v13 = [v12 deviceForFromID:v10];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 isDefaultPairedDevice];
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_15;
  }

  if (!self || ![(HMDIDSMessageTransport *)self isModernTransport])
  {
    v16 = [(HMDIDSMessageTransport *)self appleAccountManager];
    v14 = [v16 account];

    v17 = [v11 senderCorrelationIdentifier];
    v18 = *a5;
    v19 = [v18 objectForKeyedSubscript:@"kIDSMessagePayloadKey"];
    v35 = [v18 objectForKeyedSubscript:@"kIDSMessageNameKey"];
    v37 = [(HMDRemoteMessageTransport *)self homeMembershipVerifier];
    v36 = [HMDDeviceHandle deviceHandleForDestination:v10];
    v20 = [HMDAccountHandle accountHandleForDestination:v10];
    v21 = [v14 senderCorrelationIdentifier];
    if ([v21 isEqual:v17])
    {
      v15 = 1;
    }

    else
    {
      v33 = v19;
      v34 = v17;
      v22 = [v14 handles];
      v23 = [v22 containsObject:v20];

      if (v23)
      {
        goto LABEL_13;
      }

      v24 = [(HMDIDSMessageTransport *)self pendingResponses];
      v25 = [v18 hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      v26 = [v24 objectForKey:v25];

      if (v26)
      {
LABEL_13:
        v15 = 1;
        v19 = v33;
        v17 = v34;
        goto LABEL_14;
      }

      v21 = [HMDAccountIdentifier accountIdentifierForMessageContext:v11];
      v28 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v36 accountHandle:v20 accountIdentifier:v21 deviceVersion:0 pairingIdentityIdentifier:0];
      v29 = [(HMDIDSMessageTransport *)self remoteAccountManager];
      v32 = v28;
      v30 = [v29 deviceForSenderContext:v28];

      v17 = v34;
      if ([v37 userWithMergeIdIsMemberOfAHome:v34])
      {
        v15 = 1;
        v19 = v33;
      }

      else
      {
        v19 = v33;
        v31 = [v33 hmf_UUIDForKey:@"kInvitationIdentifierKey"];
        if ([v37 expectingInvitationResponseForIdentifier:?])
        {
          v15 = 1;
        }

        else
        {
          v15 = [v35 isEqual:@"kAccessHomeInviteRequestKey"];
        }
      }
    }

LABEL_14:
LABEL_15:

    goto LABEL_16;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (void)_removePendingResponseTransaction:(id)a3
{
  v4 = a3;
  v5 = [(HMDIDSMessageTransport *)self pendingResponses];
  [v5 removeObjectForKey:v4];

  v6 = [(HMDIDSMessageTransport *)self requestedCapabilities];
  [v6 removeObjectForKey:v4];

  v7 = [(HMDIDSMessageTransport *)self destinationAddress];
  [v7 removeObjectForKey:v4];

  [(HMDIDSMessageTransport *)self _removePendingResponseTimerForTransaction:v4];
  v8 = [(HMDIDSMessageTransport *)self featuresDataSource];
  v9 = [v8 isTransportRetryEnabled];

  if (v9)
  {
    v10 = [(HMDIDSMessageTransport *)self messageContexts];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__HMDIDSMessageTransport__removePendingResponseTransaction___block_invoke;
    v13[3] = &unk_279725088;
    v14 = v4;
    v11 = [v10 hmf_objectPassingTest:v13];

    v12 = [(HMDIDSMessageTransport *)self messageContexts];
    [v12 removeObject:v11];
  }
}

uint64_t __60__HMDIDSMessageTransport__removePendingResponseTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)_removePendingResponseTimerForTransaction:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling timer for transaction: %{public}@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDIDSMessageTransport *)v6 pendingResponseTimers];
  v10 = [v9 objectForKeyedSubscript:v4];

  if (v10)
  {
    dispatch_source_cancel(v10);
  }

  v11 = [(HMDIDSMessageTransport *)v6 pendingResponseTimers];
  [v11 removeObjectForKey:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startPendingResponseTimer:(id)a3 responseTimeout:(double)a4 identifier:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4 < 2.22044605e-16 || a4 <= 0.0)
  {
    v11 = remotePendingResponseTimerNanoseconds;
  }

  else
  {
    v11 = (a4 * 1000000000.0);
  }

  v12 = [(HMDIDSMessageTransport *)self workQueue];
  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v12);

  v14 = dispatch_time(0, v11);
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, remotePendingResponseLeewayNanoseconds);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __80__HMDIDSMessageTransport__startPendingResponseTimer_responseTimeout_identifier___block_invoke;
  handler[3] = &unk_279732E78;
  objc_copyWeak(&v25, &location);
  v15 = v8;
  v24 = v15;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_resume(v13);
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v15 UUIDString];
    *buf = 138543874;
    v28 = v19;
    v29 = 2114;
    v30 = v20;
    v31 = 2048;
    v32 = v11 / 0x3B9ACA00;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Starting poll to track response for message with transaction %{public}@ for %lld secs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [(HMDIDSMessageTransport *)v17 pendingResponseTimers];
  [v21 setObject:v13 forKeyedSubscript:v15];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x277D85DE8];
}

void __80__HMDIDSMessageTransport__startPendingResponseTimer_responseTimeout_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pendingResponseTimeoutFor:*(a1 + 32)];
}

- (void)_pendingResponseTimeoutFor:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUIDString];
    v27 = 138543618;
    v28 = v8;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Pending Response timeout for transaction: %{public}@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDIDSMessageTransport *)v6 pendingResponses];
  v11 = [v10 objectForKeyedSubscript:v4];

  if (v11)
  {
    v12 = [(HMDIDSMessageTransport *)v6 receivedResponses];
    v13 = [v12 objectForKeyedSubscript:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [(HMDIDSMessageTransport *)v6 requestedCapabilities];
    v17 = [v16 objectForKeyedSubscript:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if ([v15 count])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v6;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@ Selecting response based on requested capabilities", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [(HMDRemoteMessageTransport *)v21 matchResponse:v15 requestedCapabilities:v19];
      v25 = [v24 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
      (v11)[2](v11, v25, v24);
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:8 userInfo:0];
      (v11)[2](v11, v24, 0);
    }
  }

  [(HMDIDSMessageTransport *)v6 _removePendingResponseTransaction:v4];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_restartPendingResponseTimerFor:(id)a3 withReducedFactor:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = remotePendingResponseTimerNanoseconds;
  v8 = remotePendingResponseDecayScale;
  v9 = [(HMDIDSMessageTransport *)self pendingResponseTimers];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = v7 / (v8 * a4);
    v12 = dispatch_time(0, v11);
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, remotePendingResponseLeewayNanoseconds);
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = v11 / 0x3B9ACA00;
      v18 = [v6 UUIDString];
      v23 = 138543874;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Restarted Pending response timer for %lld sec, for transaction: %{public}@", &v23, 0x20u);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v19 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v6 UUIDString];
      v23 = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Timer already expired for transaction: %{public}@", &v23, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v13);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)sendMessage:(id)a3 fromHandle:(id)a4 destination:(id)a5 priority:(int64_t)a6 timeout:(double)a7 options:(unint64_t)a8 queueOneID:(id)a9 senderResidentInfo:(int64_t)a10 destinationResidentInfo:(int64_t)a11 error:(id *)a12
{
  v13 = a8;
  v18 = a11;
  v131[1] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a9;
  if (v21)
  {
    v108 = [(HMDIDSMessageTransport *)v21 allRemoteDestinationStrings];
    if (![(__CFString *)v108 count])
    {
      v34 = objc_autoreleasePoolPush();
      v35 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v38 = v37 = v22;
        *buf = 138543618;
        v116 = v38;
        v117 = 2112;
        v118 = v21;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@No valid destination strings for destination: %@", buf, 0x16u);

        v22 = v37;
      }

      objc_autoreleasePoolPop(v34);
      if (!a12)
      {
        v33 = 0;
LABEL_95:

        goto LABEL_96;
      }

      v106 = v21;
      v109 = v19;
      v39 = MEMORY[0x277CCA9B8];
      v130 = *MEMORY[0x277CCA7E8];
      v23 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3214];
      v40 = [v39 hmInternalErrorWithCode:3203 underlyingError:v23];
      v131[0] = v40;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:&v130 count:1];
      *a12 = [v39 hmErrorWithCode:54 userInfo:v33];
      goto LABEL_93;
    }

    v106 = v21;
    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v24 = [(HMDIDSMessageTransport *)self featuresDataSource];
    v25 = [v24 isTransportRetryEnabled];

    if (v25)
    {
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18678]];
      if ((v13 & 1) == 0)
      {
LABEL_5:
        if ((v13 & 2) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_5;
    }

    v41 = MEMORY[0x277CBEC38];
    [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185C0]];
    [v23 setObject:v41 forKeyedSubscript:*MEMORY[0x277D185E8]];
    if ((v13 & 2) == 0)
    {
LABEL_6:
      if ((v13 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18600]];
    if ((v13 & 8) == 0)
    {
LABEL_7:
      if ((v13 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_22:
    [v23 setObject:&unk_286627CD0 forKeyedSubscript:*MEMORY[0x277D18620]];
    if ((v13 & 4) == 0)
    {
LABEL_9:
      if (a7 <= 0.0)
      {
        if ((v13 & 2) == 0)
        {
          [v23 setObject:&unk_28662BDF8 forKeyedSubscript:*MEMORY[0x277D18650]];
        }
      }

      else
      {
        v27 = [MEMORY[0x277CCABB0] numberWithDouble:a7];
        [v23 setObject:v27 forKeyedSubscript:*MEMORY[0x277D18650]];
      }

      [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x277D18630]];
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18570]];
      v109 = v19;
      v105 = v22;
      if (isInternalBuild())
      {
        v42 = [v19 objectForKeyedSubscript:@"kRemoteMessageQoSKey"];
        v43 = [v42 integerValue];

        v44 = v106;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v46 = v44;
        }

        else
        {
          v46 = 0;
        }

        v104 = v46;

        if (isKindOfClass)
        {
          v47 = objc_autoreleasePoolPush();
          v48 = self;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v50 = v102 = v43;
            v51 = [(HMDIDSMessageTransport *)v44 device];
            [v51 productInfo];
            v52 = v103 = v47;
            [v52 productPlatform];
            v53 = HMFProductPlatformToString();
            *buf = 138543618;
            v116 = v50;
            v117 = 2112;
            v118 = v53;
            _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@destination device's platform: %@", buf, 0x16u);

            v47 = v103;
            v43 = v102;
          }

          objc_autoreleasePoolPop(v47);
          v19 = v109;
          v18 = a11;
        }

        v54 = (v43 > 24) << 31;
        v55 = [v19 objectForKeyedSubscript:@"kIDSMessageRequiresResponseKey"];
        v56 = [v55 isEqual:MEMORY[0x277CBEC38]];

        if (v56)
        {
          v57 = 100;
        }

        else
        {
          v58 = [v19 objectForKeyedSubscript:@"kIDSMessageIsResponseToRequest"];
          v59 = [v58 isEqual:MEMORY[0x277CBEC38]];

          if (v59)
          {
            v57 = 200;
          }

          else
          {
            v60 = [v19 objectForKeyedSubscript:@"kIDSMessageIsNotificationKey"];
            v61 = [v60 isEqual:MEMORY[0x277CBEC38]];

            v57 = 400;
            if (v61)
            {
              v57 = 300;
            }
          }
        }

        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v18 + 10 * a10 + v54 + v57)];
        [v23 setObject:v62 forKeyedSubscript:*MEMORY[0x277D18618]];
      }

      if (v20)
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v63 = [(HMDIDSMessageTransport *)self service];
        v64 = [v63 accounts];

        v65 = [v64 countByEnumeratingWithState:&v111 objects:v129 count:16];
        if (v65)
        {
          v66 = v65;
          v67 = *v112;
          while (2)
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v112 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v69 = *(*(&v111 + 1) + 8 * i);
              v70 = [v69 hmd_handles];
              v71 = [v70 containsObject:v20];

              if (v71)
              {
                v72 = [v20 URI];
                v73 = [v72 prefixedURI];
                [v23 setObject:v73 forKeyedSubscript:*MEMORY[0x277D185E0]];

                v40 = v69;
                goto LABEL_54;
              }
            }

            v66 = [v64 countByEnumeratingWithState:&v111 objects:v129 count:16];
            if (v66)
            {
              continue;
            }

            break;
          }
        }

        v40 = 0;
LABEL_54:

        if (!self)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v40 = 0;
        if (!self)
        {
          goto LABEL_59;
        }
      }

      if ([(HMDIDSMessageTransport *)self isModernTransport])
      {
        v74 = [v109 hmf_stringForKey:@"kIDSMessageIdentifierKey"];
        goto LABEL_60;
      }

LABEL_59:
      v74 = [v109 shortDescription];
LABEL_60:
      v75 = v74;
      if (shouldLogPrivateInformation())
      {
        v76 = v23;
      }

      else
      {
        v77 = [v23 mutableCopy];
        v78 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277D185E0]];
        [v77 removeObjectsForKeys:v78];

        v76 = [v77 copy];
      }

      v79 = isInternalBuild();
      v80 = objc_autoreleasePoolPush();
      v81 = self;
      v82 = HMFGetOSLogHandle();
      v83 = os_log_type_enabled(v82, OS_LOG_TYPE_INFO);
      if (v79)
      {
        if (v83)
        {
          v84 = HMFGetLogIdentifier();
          v85 = v84;
          switch(a6)
          {
            case 100:
              v86 = @"Sync";
              break;
            case 200:
              v86 = @"Default";
              break;
            case 300:
              v86 = @"Urgent";
              break;
            default:
              v86 = @"Unknown";
              break;
          }

          *buf = 138544899;
          v116 = v84;
          v117 = 2114;
          v118 = v75;
          v119 = 2160;
          v120 = 1752392040;
          v121 = 2112;
          v122 = v108;
          v123 = 2113;
          v124 = v40;
          v125 = 2114;
          v126 = v86;
          v127 = 2114;
          v128 = v76;
          v89 = "%{public}@Sending IDS message %{public}@ to %{mask.hash}@, from account %{private}@ with priority, %{public}@, options: %{public}@";
          v90 = v82;
          v91 = 72;
LABEL_82:
          _os_log_impl(&dword_2531F8000, v90, OS_LOG_TYPE_INFO, v89, buf, v91);
        }
      }

      else if (v83)
      {
        v87 = HMFGetLogIdentifier();
        v85 = v87;
        switch(a6)
        {
          case 100:
            v88 = @"Sync";
            break;
          case 200:
            v88 = @"Default";
            break;
          case 300:
            v88 = @"Urgent";
            break;
          default:
            v88 = @"Unknown";
            break;
        }

        *buf = 138544643;
        v116 = v87;
        v117 = 2114;
        v118 = v75;
        v119 = 2117;
        v120 = v108;
        v121 = 2113;
        v122 = v40;
        v123 = 2114;
        v124 = v88;
        v125 = 2114;
        v126 = v76;
        v89 = "%{public}@Sending IDS message %{public}@ to %{sensitive}@, from account %{private}@ with priority, %{public}@, options: %{public}@";
        v90 = v82;
        v91 = 62;
        goto LABEL_82;
      }

      objc_autoreleasePoolPop(v80);
      v92 = [(HMDIDSMessageTransport *)v81 service];
      v93 = [MEMORY[0x277CBEB98] setWithArray:v108];
      v110 = 0;
      v94 = [v92 sendMessage:v109 fromAccount:v40 toDestinations:v93 priority:a6 options:v23 identifier:&v110 error:a12];
      v33 = v110;

      if (v94)
      {
        v22 = v105;
LABEL_94:

        v19 = v109;
        v21 = v106;
        goto LABEL_95;
      }

      v95 = objc_autoreleasePoolPush();
      v96 = v81;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        if (self)
        {
          self = [v109 hmf_stringForKey:@"kIDSMessageIdentifierKey"];
        }

        if (a12)
        {
          v99 = *a12;
        }

        else
        {
          v99 = @"<nil>";
        }

        *buf = 138543874;
        v116 = v98;
        v117 = 2114;
        v118 = self;
        v119 = 2112;
        v120 = v99;
        _os_log_impl(&dword_2531F8000, v97, OS_LOG_TYPE_INFO, "%{public}@Failed to send IDS message %{public}@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v95);
      v22 = v105;
LABEL_93:

      v33 = 0;
      goto LABEL_94;
    }

LABEL_8:
    v26 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D188A8]];
    [v23 setObject:v26 forKeyedSubscript:*MEMORY[0x277D18638]];

    goto LABEL_9;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v32 = v31 = v22;
    *buf = 138543362;
    v116 = v32;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Destination is required", buf, 0xCu);

    v22 = v31;
  }

  objc_autoreleasePoolPop(v28);
  if (a12)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a12 = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_96:

  v100 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)sendMessage:(id)a3 senderResidentInfo:(int64_t)a4 destinationResidentInfo:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(HMDIDSMessageTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke;
  block[3] = &unk_279725060;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v19 = a4;
  v20 = a5;
  v13 = v10;
  v14 = v11;
  dispatch_async(v12, block);
}

void __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke(uint64_t a1)
{
  v178 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke_2;
  aBlock[3] = &unk_279733F30;
  v169 = *(a1 + 48);
  v168 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 40);
  if (!v3 || ![v3 isModernTransport])
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) responseHandler];

  if (v4)
  {
    v131 = objc_autoreleasePoolPush();
    v132 = *(a1 + 40);
    v133 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
    {
      v134 = HMFGetLogIdentifier();
      *buf = 138543362;
      v171 = v134;
      _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Response handler should not be set in modern transport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v131);
    v135 = [[HMDAssertionLogEvent alloc] initWithReason:@"Response handler should not be set in modern transport"];
    v136 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v136 submitLogEvent:v135];
  }

  v5 = [*(a1 + 32) responseHandler];

  if (!v5)
  {
LABEL_6:
    v7 = [*(a1 + 32) destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;

    if (!v6)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 40);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [*(a1 + 32) identifier];
        v26 = [v25 UUIDString];
        v27 = [*(a1 + 32) destination];
        *buf = 138543874;
        v171 = v24;
        v172 = 2114;
        v173 = v26;
        v174 = 2112;
        v175 = v27;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message %{public}@ invalid destination: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter." reason:@"Invalid destination." suggestion:0];
      v2[2](v2, v9);
      goto LABEL_98;
    }

    v9 = [*(a1 + 40) remoteMessageFromMessage:*(a1 + 32)];
    v166 = 0;
    v10 = [HMDRemoteMessageSerialization dictionaryForMessage:v9 error:&v166];
    v11 = v166;
    if (!v10)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 40);
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [*(a1 + 32) identifier];
        *buf = 138543874;
        v171 = v31;
        v172 = 2114;
        v173 = v32;
        v174 = 2112;
        v175 = v11;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize message %{public}@ with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v2[2](v2, v11);
      goto LABEL_97;
    }

    v12 = *(a1 + 40);
    v154 = v11;
    if (!v12 || ![v12 isModernTransport])
    {
      context = 0;
LABEL_59:
      v149 = v2;
      [v9 timeout];
      v59 = 0.0;
      if (v60 > 0.0)
      {
        [v9 timeout];
        v59 = v61;
      }

      v62 = [v9 collapseID];
      if (v62)
      {
        v63 = *(a1 + 40);
        v64 = objc_opt_class();
        v65 = [v9 name];
        v66 = [v6 target];
        v67 = [MEMORY[0x277CBEAA8] now];
        v164 = [v64 queueOneIdentifierWithMessageName:v65 target:v66 collapseID:v62 timeToLive:v67 now:v59];
      }

      else
      {
        v164 = 0;
      }

      if ([v9 sendOptions])
      {
        v68 = 8;
      }

      else
      {
        v68 = *(a1 + 40);
        v69 = v9;
        v70 = v164;
        if (v68)
        {
          v71 = [v68 isModernTransport];
          v68 = 0;
          if (!v70 && (v71 & 1) == 0)
          {
            v68 = [v69 type] == 3;
          }
        }
      }

      v72 = [*(a1 + 32) destination];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = v72;
      }

      else
      {
        v73 = 0;
      }

      v74 = v73;

      if (v74 && [v74 restrictToResidentCapable])
      {
        v68 |= 4uLL;
      }

      v148 = v74;
      v75 = *(a1 + 40);
      v76 = [objc_opt_class() priorityForMessage:v9];
      v77 = *(a1 + 40);
      v78 = *(a1 + 56);
      v79 = *(a1 + 64);
      v165 = 0;
      v80 = [v77 sendMessage:v10 fromHandle:context destination:v6 priority:v76 timeout:v68 options:v164 queueOneID:v59 senderResidentInfo:v78 destinationResidentInfo:v79 error:&v165];
      v145 = v62;
      v146 = v165;
      v156 = v80;
      if (v80)
      {
        v81 = +[HMDMetricsManager sharedLogEventSubmitter];
        v82 = +[HMDRemoteMessageLogEvent sentRemoteMessage:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:transportType:", v9, [*(a1 + 40) transportType]);
        [v81 submitLogEvent:v82];

        v83 = objc_autoreleasePoolPush();
        v84 = *(a1 + 40);
        v85 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v86 = HMFGetLogIdentifier();
          [*(a1 + 32) identifier];
          v88 = v87 = v10;
          *buf = 138543874;
          v171 = v86;
          v172 = 2114;
          v173 = v88;
          v174 = 2114;
          v175 = v156;
          _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ ack'd with IDS GUID %{public}@", buf, 0x20u);

          v10 = v87;
        }

        objc_autoreleasePoolPop(v83);
        v89 = [MEMORY[0x277CBEB38] dictionary];
        v90 = *(a1 + 48);
        if (v90)
        {
          v91 = [v90 copy];
          [v89 setObject:v91 forKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];
        }

        v152 = v10;
        v92 = [*(a1 + 32) responseHandler];

        v2 = v149;
        if (v92)
        {
          v93 = [v9 transactionIdentifier];
          [v89 setObject:v93 forKeyedSubscript:@"HMDIDSMessageTransportTransactionIdentifierKey"];
          v94 = [*(a1 + 32) responseHandler];
          v95 = _Block_copy(v94);
          v96 = [*(a1 + 40) pendingResponses];
          [v96 setObject:v95 forKeyedSubscript:v93];

          v97 = [v9 messagePayload];
          v98 = [v97 objectForKeyedSubscript:@"kRequestedCapabilitiesKey"];
          v99 = [*(a1 + 40) requestedCapabilities];
          [v99 setObject:v98 forKeyedSubscript:v93];

          v100 = [v6 remoteDestinationString];
          v101 = [*(a1 + 40) destinationAddress];
          [v101 setObject:v100 forKeyedSubscript:v93];

          v102 = *(a1 + 40);
          [v9 timeout];
          [v102 _startPendingResponseTimer:v93 responseTimeout:v156 identifier:?];
        }

        v103 = [HMDIDSMessageContext alloc];
        v104 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v156];
        v105 = [*(a1 + 32) destination];
        v106 = [(HMDIDSMessageContext *)v103 initWithIdentifier:v104 destination:v105 userInfo:v89];

        v107 = [*(a1 + 40) messageContexts];
        [v107 addObject:v106];

        v108 = [*(a1 + 40) sendMessageBudget];
        LODWORD(v104) = [v108 decrement];

        if (v104)
        {
          v109 = [*(a1 + 40) sendMessageBudget];
          v110 = [v109 isEmpty];

          v10 = v152;
          v111 = v146;
          if (v110)
          {
            v144 = objc_autoreleasePoolPush();
            v112 = *(a1 + 40);
            v113 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              v114 = HMFGetLogIdentifier();
              *buf = 138543362;
              v171 = v114;
              _os_log_impl(&dword_2531F8000, v113, OS_LOG_TYPE_ERROR, "%{public}@Exceeded send message budget", buf, 0xCu);

              v10 = v152;
            }

            objc_autoreleasePoolPop(v144);
            v115 = [*(a1 + 40) sendMessageBudget];
            v116 = [v115 rate];
            v118 = [HMDRemoteMessageExceedBudgetLogEvent eventWithBudgetRate:v116, v117];

            v119 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v119 submitLogEvent:v118];
          }
        }

        else
        {
          v126 = objc_autoreleasePoolPush();
          v127 = *(a1 + 40);
          v128 = HMFGetOSLogHandle();
          v111 = v146;
          if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
          {
            v129 = HMFGetLogIdentifier();
            *buf = 138543362;
            v171 = v129;
            _os_log_impl(&dword_2531F8000, v128, OS_LOG_TYPE_INFO, "%{public}@Over send message budget", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v126);
          v10 = v152;
        }

        v11 = v154;
      }

      else
      {
        v120 = objc_autoreleasePoolPush();
        v121 = *(a1 + 40);
        v122 = HMFGetOSLogHandle();
        v111 = v146;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          v123 = HMFGetLogIdentifier();
          [*(a1 + 32) identifier];
          v124 = v153 = v10;
          v125 = [*(a1 + 32) name];
          *buf = 138544130;
          v171 = v123;
          v172 = 2114;
          v173 = v124;
          v174 = 2112;
          v175 = v125;
          v176 = 2112;
          v177 = v146;
          _os_log_impl(&dword_2531F8000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message %{public}@ / %@ with error: %@", buf, 0x2Au);

          v10 = v153;
          v11 = v154;
        }

        objc_autoreleasePoolPop(v120);
        v2 = v149;
        v149[2](v149, v146);
      }

LABEL_97:
LABEL_98:

      goto LABEL_99;
    }

    v13 = [v10 mutableCopy];
    v14 = *(a1 + 40);
    v15 = v13;
    if (v14)
    {
      v16 = [v14 appleAccountManager];
      v17 = [v16 device];

      if (v17)
      {
        v18 = [v17 idsIdentifier];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 UUIDString];
          [v15 setObject:v20 forKeyedSubscript:@"idsId"];
        }

        else
        {
          v150 = v10;
          v38 = objc_autoreleasePoolPush();
          v39 = v14;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v41 = v162 = v38;
            *buf = 138543618;
            v171 = v41;
            v172 = 2112;
            v173 = v17;
            _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Cannot set the source IDS device identifier because IDS identifier is unknown for current device: %@", buf, 0x16u);

            v38 = v162;
          }

          objc_autoreleasePoolPop(v38);
          v10 = v150;
        }
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v14;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v161 = v15;
          v37 = v36 = v10;
          *buf = 138543362;
          v171 = v37;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot set the source IDS device identifier because current device is unknown", buf, 0xCu);

          v10 = v36;
          v15 = v161;
        }

        objc_autoreleasePoolPop(v33);
      }
    }

    if ([v9 type] != 1)
    {
      context = 0;
      v11 = v154;
LABEL_58:
      v58 = [v15 copy];

      v10 = v58;
      goto LABEL_59;
    }

    v42 = [*(a1 + 32) userInfo];
    v43 = [v42 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

    if (v43)
    {
      [v15 setObject:v43 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    }

    v44 = *(a1 + 40);
    v45 = v9;
    v46 = v45;
    if (!v44 || [v45 type] != 1)
    {
      context = 0;
      v11 = v154;
LABEL_57:

      goto LABEL_58;
    }

    v47 = [v46 remoteToID];
    v48 = v47;
    if (!v47)
    {
      context = 0;
      v11 = v154;
LABEL_56:

      goto LABEL_57;
    }

    v163 = v47;
    v151 = v10;
    v49 = [v46 destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;

    v155 = v51;
    if (v51)
    {
      v52 = [v51 device];
      v53 = [v52 account];

      if (v53)
      {
        v48 = v163;
        if (([(HMDAssertionLogEvent *)v53 isCurrentAccount]& 1) != 0)
        {
          context = 0;
          v11 = v154;
LABEL_55:

          v10 = v151;
          goto LABEL_56;
        }

        v54 = [HMDAccountHandle accountHandleForDestination:v163];
        if (v54)
        {
          v55 = v54;
          context = v55;
LABEL_54:
          v11 = v154;

          v48 = v163;
          goto LABEL_55;
        }

        contexta = objc_autoreleasePoolPush();
        v56 = v44;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v147 = HMFGetLogIdentifier();
          *buf = 138543618;
          v171 = v147;
          v172 = 2112;
          v173 = v163;
          _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Invalid toID to create an account handle: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contexta);
        v55 = 0;
      }

      else
      {
        contextc = objc_autoreleasePoolPush();
        v140 = v44;
        v141 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v141, OS_LOG_TYPE_FAULT))
        {
          v142 = HMFGetLogIdentifier();
          *buf = 138543362;
          v171 = v142;
          _os_log_impl(&dword_2531F8000, v141, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Destination device does not have an associated account", buf, 0xCu);
        }

        objc_autoreleasePoolPop(contextc);
        v55 = [[HMDAssertionLogEvent alloc] initWithReason:@"Destination device does not have an associated account"];
        v143 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v143 submitLogEvent:v55];

        v53 = 0;
      }
    }

    else
    {
      contextb = objc_autoreleasePoolPush();
      v137 = v44;
      v138 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
      {
        v139 = HMFGetLogIdentifier();
        *buf = 138543362;
        v171 = v139;
        _os_log_impl(&dword_2531F8000, v138, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Response message is not a device destination", buf, 0xCu);
      }

      objc_autoreleasePoolPop(contextb);
      v53 = [[HMDAssertionLogEvent alloc] initWithReason:@"Response message is not a device destination"];
      v55 = +[HMDMetricsManager sharedLogEventSubmitter];
      [(HMDAssertionLogEvent *)v55 submitLogEvent:v53];
    }

    context = 0;
    goto LABEL_54;
  }

  v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported." reason:@"Response handler should not be set when using IDS transport for modern transport" suggestion:0];
  v2[2](v2, v6);
LABEL_99:

  v130 = *MEMORY[0x277D85DE8];
}

void __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }

  [*(a1 + 32) respondWithPayload:0 error:v5];
}

- (BOOL)isValidMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v5 = [v3 destination];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_6;
    }
  }

  v7 = [v3 restriction] & 1;
LABEL_6:

  return v7;
}

- (BOOL)canSendMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(HMDIDSMessageTransport *)self isValidMessage:v4])
  {
    goto LABEL_13;
  }

  if (self && [(HMDIDSMessageTransport *)self isModernTransport])
  {
    goto LABEL_6;
  }

  v5 = [(HMDIDSMessageTransport *)self appleAccountManager];
  v6 = [v5 device];

  if (!v6)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v13;
      v14 = "%{public}@Cannot send message, not currently registered";
LABEL_11:
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, v14, &v18, 0xCu);
    }

LABEL_12:

    objc_autoreleasePoolPop(v10);
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v7 = [(HMDIDSMessageTransport *)self service];
  v8 = [v7 hmd_isActive];

  if ((v8 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v15 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v13;
      v14 = "%{public}@Cannot send message, service is inactive";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_6:
  v9 = 1;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isSecure
{
  if (self && [(HMDIDSMessageTransport *)self isModernTransport])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = HMDIDSMessageTransport;
  return [(HMDRemoteMessageTransport *)&v4 isSecure];
}

- (id)deviceForSenderContext:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSMessageTransport *)self appleAccountManager];
  v6 = [v5 account];

  v7 = [v6 handles];
  v8 = [v4 accountHandle];
  v9 = [v7 containsObject:v8];

  if (!v9)
  {
    v32 = [(HMDIDSMessageTransport *)self remoteAccountManager];
    v11 = [v32 deviceForSenderContext:v4];
LABEL_16:

    goto LABEL_17;
  }

  v10 = [v4 deviceHandle];
  v11 = [v6 deviceForHandle:v10];

  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received message from unknown device on our account, creating placeholder device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = MEMORY[0x277CBEB18];
    v17 = [v4 deviceHandle];
    v18 = [v16 arrayWithObject:v17];

    v19 = [v4 localDeviceHandle];

    if (v19)
    {
      v20 = [v4 localDeviceHandle];
      [v18 addObject:v20];
    }

    v21 = [HMDDevice alloc];
    v22 = [v4 deviceHandle];
    v23 = [v22 identifier];
    v24 = [v18 copy];
    v25 = [v4 deviceVersion];
    v11 = [(HMDDevice *)v21 initWithIdentifier:v23 handles:v24 name:0 productInfo:0 version:v25 capabilities:0 account:v6];

    [v6 addDevice:v11];
  }

  v26 = objc_autoreleasePoolPush();
  v27 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v29;
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated sender on our account: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = [v6 senderCorrelationIdentifier];

  if (!v30)
  {
    v31 = [v4 accountIdentifier];
    v32 = [v31 senderCorrelationIdentifier];

    if (v32)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v27;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [v6 identifier];
        v38 = [v37 shortDescription];
        *buf = 138544130;
        v43 = v36;
        v44 = 2114;
        v45 = v38;
        v46 = 2160;
        v47 = 1752392040;
        v48 = 2112;
        v49 = v32;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account %{public}@ with inferred mergeID %{mask.hash}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v33);
      v39 = [(HMDIDSMessageTransport *)v34 appleAccountManager];
      [v39 updateSenderCorrelationIdentifier:v32];
    }

    goto LABEL_16;
  }

LABEL_17:

  v40 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_shouldAddLocalHandleToDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 localHandles];
  v5 = [v4 hmf_isEmpty];

  if (v5)
  {
    v6 = [v3 globalHandles];
    v7 = [v6 count] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)logIdentifier
{
  v2 = [(HMDIDSMessageTransport *)self service];
  v3 = [v2 serviceIdentifier];

  return v3;
}

- (id)start
{
  v16 = *MEMORY[0x277D85DE8];
  if (self && [(HMDIDSMessageTransport *)self isModernTransport])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    v7 = "%{public}@Starting using modern transport";
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    v7 = "%{public}@Starting using legacy service";
  }

  _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, v7, &v14, 0xCu);

LABEL_8:
  objc_autoreleasePoolPop(v3);
  v8 = [(HMDIDSMessageTransport *)self service];
  v9 = [(HMDIDSMessageTransport *)self workQueue];
  [v8 addDelegate:self queue:v9];

  v10 = [(HMDRemoteMessageTransport *)self startPromise];
  [v10 fulfillWithValue:0];

  v11 = [(HMDRemoteMessageTransport *)self startFuture];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDIDSMessageTransport)initWithAccountRegistry:(id)a3 service:(id)a4 serviceName:(id)a5 appleAccountManager:(id)a6 remoteAccountManager:(id)a7 featuresDataSource:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v49 = a7;
  v18 = a8;
  v50.receiver = self;
  v50.super_class = HMDIDSMessageTransport;
  v19 = [(HMDRemoteMessageTransport *)&v50 initWithAccountRegistry:a3];
  v20 = v19;
  if (v19)
  {
    v47 = v17;
    v48 = v15;
    if (v16 == @"com.apple.private.alloy.home")
    {
      v19->_modernTransport = 1;
    }

    v21 = HMDispatchQueueNameString();
    v22 = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(v22, v23);
    workQueue = v20->_workQueue;
    v20->_workQueue = v24;

    objc_storeStrong(&v20->_service, a4);
    objc_storeStrong(&v20->_appleAccountManager, a6);
    objc_storeStrong(&v20->_remoteAccountManager, a7);
    objc_storeStrong(&v20->_featuresDataSource, a8);
    v26 = objc_alloc(MEMORY[0x277D0F8A0]);
    v27 = [objc_opt_class() sendMessageLimit];
    v28 = [objc_opt_class() sendMessageRate];
    v30 = [v26 initWithLimit:v27 rate:{v28, v29}];
    sendMessageBudget = v20->_sendMessageBudget;
    v20->_sendMessageBudget = v30;

    v32 = [MEMORY[0x277CBEB18] array];
    messageContexts = v20->_messageContexts;
    v20->_messageContexts = v32;

    v34 = [MEMORY[0x277CBEB38] dictionary];
    pendingResponses = v20->_pendingResponses;
    v20->_pendingResponses = v34;

    v36 = [MEMORY[0x277CBEB38] dictionary];
    receivedResponses = v20->_receivedResponses;
    v20->_receivedResponses = v36;

    v38 = [MEMORY[0x277CBEB38] dictionary];
    requestedCapabilities = v20->_requestedCapabilities;
    v20->_requestedCapabilities = v38;

    v40 = [MEMORY[0x277CBEB38] dictionary];
    destinationAddress = v20->_destinationAddress;
    v20->_destinationAddress = v40;

    v42 = [MEMORY[0x277CBEB38] dictionary];
    pendingResponseTimers = v20->_pendingResponseTimers;
    v20->_pendingResponseTimers = v42;

    v44 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:30];
    messageDedupBuffer = v20->_messageDedupBuffer;
    v20->_messageDedupBuffer = v44;

    v17 = v47;
    v15 = v48;
  }

  return v20;
}

- (HMDIDSMessageTransport)initWithAccountRegistry:(id)a3 forServiceName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDIDSServiceManager sharedManager];
  v9 = [v8 serviceWithName:v6];
  v10 = +[HMDAppleAccountManager sharedManager];
  v11 = +[HMDRemoteAccountManager sharedManager];
  v12 = +[HMDFeaturesDataSource defaultDataSource];
  v13 = [(HMDIDSMessageTransport *)self initWithAccountRegistry:v7 service:v9 serviceName:v6 appleAccountManager:v10 remoteAccountManager:v11 featuresDataSource:v12];

  return v13;
}

- (unint64_t)maximumNumberOfRetries
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDIDSMessageTransportSendMessageNumberOfRetriesKey"];
  v4 = [v3 numberValue];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (double)defaultTimeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDIDSMessageTransportSendMessageDefaultTimeoutKey"];
  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

+ (id)queueOneIdentifierWithMessageName:(id)a3 target:(id)a4 collapseID:(id)a5 timeToLive:(double)a6 now:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v13)
  {
LABEL_9:
    v40 = _HMFPreconditionFailure();
    return sha256(v40, v41, v42, v43, v44, v45, v46, v47, v51);
  }

  v15 = v14;
  v23 = objc_autoreleasePoolPush();
  v24 = fmax(a6 * 3.0, 28800.0);
  if (v24 > 604800.0)
  {
    v24 = 604800.0;
  }

  v25 = v24;
  v49 = 0;
  v26 = sha256(@"Q1Offset", v16, v17, v18, v19, v20, v21, v22, v11);
  [v26 getBytes:&v49 length:8];

  v27 = v49 % v25;
  [v15 timeIntervalSinceReferenceDate];
  v48 = (v27 + v28) / v25;
  v29 = [MEMORY[0x277CBEA90] dataWithBytes:&v48 length:8];
  v37 = sha256(@"Q1Id", v30, v31, v32, v33, v34, v35, v36, v29);
  v38 = [v37 hmf_hexadecimalRepresentation];

  objc_autoreleasePoolPop(v23);

  return v38;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_34020 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_34020, &__block_literal_global_34021);
  }

  v3 = logCategory__hmf_once_v3_34022;

  return v3;
}

uint64_t __37__HMDIDSMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_34022;
  logCategory__hmf_once_v3_34022 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (_HMFRate)sendMessageRate
{
  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"remoteSendMessageRate"];

  v5 = [v4 numberValue];
  [v5 doubleValue];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v10 = 60.0;
  }

  else
  {
    v8 = [v4 numberValue];
    [v8 doubleValue];
    v10 = v9;
  }

  v11 = ([a1 sendMessageLimit] / v10);

  v12 = v11;
  v13 = v10;
  result.period = v13;
  result.value = v12;
  return result;
}

+ (unint64_t)sendMessageLimit
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"remoteSendMessageLimit"];

  v4 = [v3 numberValue];
  v5 = [v4 unsignedIntegerValue];

  if (v5)
  {
    v6 = [v3 numberValue];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 1800;
  }

  return v7;
}

+ (id)stringFromHMDIDSResidentInfo:(int64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown residentInfo: %lu", a3];
  }

  else
  {
    v4 = off_2797250F8[a3];
  }

  return v4;
}

@end