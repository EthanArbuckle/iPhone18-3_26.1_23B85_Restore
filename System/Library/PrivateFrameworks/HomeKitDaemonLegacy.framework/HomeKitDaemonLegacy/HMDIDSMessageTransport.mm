@interface HMDIDSMessageTransport
+ (_HMFRate)sendMessageRate;
+ (id)logCategory;
+ (id)queueOneIdentifierWithMessageName:(id)name target:(id)target collapseID:(id)d timeToLive:(double)live now:(id)now;
+ (id)stringFromHMDIDSResidentInfo:(int64_t)info;
+ (unint64_t)sendMessageLimit;
- (BOOL)_shouldAddLocalHandleToDevice:(id)device;
- (BOOL)_shouldProcessLegacyIDSMessageFromID:(id)d context:(id)context message:(id *)message service:(id)service;
- (BOOL)canSendMessage:(id)message;
- (BOOL)isSecure;
- (BOOL)isValidMessage:(id)message;
- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry forServiceName:(id)name;
- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry service:(id)service serviceName:(id)name appleAccountManager:(id)manager remoteAccountManager:(id)accountManager featuresDataSource:(id)source;
- (double)defaultTimeout;
- (id)deviceForSenderContext:(id)context;
- (id)logIdentifier;
- (id)sendMessage:(id)message fromHandle:(id)handle destination:(id)destination priority:(int64_t)priority timeout:(double)timeout options:(unint64_t)options queueOneID:(id)d senderResidentInfo:(int64_t)self0 destinationResidentInfo:(int64_t)self1 error:(id *)self2;
- (id)start;
- (unint64_t)maximumNumberOfRetries;
- (void)_pendingResponseTimeoutFor:(id)for;
- (void)_removePendingResponseTimerForTransaction:(id)transaction;
- (void)_removePendingResponseTransaction:(id)transaction;
- (void)_restartPendingResponseTimerFor:(id)for withReducedFactor:(unint64_t)factor;
- (void)_startPendingResponseTimer:(id)timer responseTimeout:(double)timeout identifier:(id)identifier;
- (void)legacyHandleIncomingRemoteMessage:(id)message sourceDevice:(id)device senderDeviceHandle:(id)handle isSecure:(BOOL)secure incomingMessage:(id)incomingMessage fromID:(id)d context:(id)context;
- (void)sendMessage:(id)message senderResidentInfo:(int64_t)info destinationResidentInfo:(int64_t)residentInfo completionHandler:(id)handler;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation HMDIDSMessageTransport

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  if (identifierCopy)
  {
    featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
    isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

    if (isTransportRetryEnabled)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543875;
        v31 = v19;
        v32 = 2114;
        v33 = identifierCopy;
        v34 = 2113;
        v35 = accountCopy;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Receipt of message with IDS GUID %{public}@ from account: %{private}@ confirmed.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      messageContexts = [(HMDIDSMessageTransport *)selfCopy messageContexts];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __81__HMDIDSMessageTransport_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
      v28[3] = &unk_279725088;
      v29 = identifierCopy;
      v21 = [messageContexts hmf_objectPassingTest:v28];

      if (v21)
      {
        userInfo = [v21 userInfo];
        v23 = [userInfo objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

        v24 = _Block_copy(v23);
        v25 = v24;
        if (v24)
        {
          (*(v24 + 2))(v24, 0);
        }

        messageContexts2 = [(HMDIDSMessageTransport *)selfCopy messageContexts];
        [messageContexts2 removeObject:v21];
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

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  v71 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  if (identifierCopy)
  {
    messageContexts = [(HMDIDSMessageTransport *)self messageContexts];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke;
    v61[3] = &unk_279725088;
    v20 = identifierCopy;
    v62 = v20;
    v21 = [messageContexts hmf_objectPassingTest:v61];

    if (v21)
    {
      v55 = serviceCopy;
      if (errorCopy)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:errorCopy];
        v58 = [v22 hmErrorWithCode:54 description:@"Communication failure." reason:0 suggestion:0 underlyingError:v23];
      }

      else
      {
        v58 = 0;
      }

      featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
      isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

      if ((isTransportRetryEnabled & 1) == 0)
      {
        userInfo = [v21 userInfo];
        v27 = [userInfo objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

        v28 = _Block_copy(v27);
        v29 = v28;
        if (v28)
        {
          (*(v28 + 2))(v28, v58);
        }
      }

      v57 = accountCopy;
      if (!success)
      {
        featuresDataSource2 = [(HMDIDSMessageTransport *)self featuresDataSource];
        isTransportRetryEnabled2 = [featuresDataSource2 isTransportRetryEnabled];

        if (isTransportRetryEnabled2)
        {
          userInfo2 = [v21 userInfo];
          v33 = [userInfo2 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

          v34 = _Block_copy(v33);
          v35 = v34;
          if (v34)
          {
            (*(v34 + 2))(v34, v58);
          }
        }

        v36 = objc_autoreleasePoolPush();
        selfCopy = self;
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
          v70 = errorCopy;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message with IDS GUID %{public}@ from account: %{private}@ with error: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v36);
        destination = [v21 destination];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = destination;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41;

        if (errorCopy && v42)
        {
          allRemoteDestinationStrings = [v42 allRemoteDestinationStrings];
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke_141;
          v59[3] = &unk_279732AC0;
          v59[4] = selfCopy;
          v60 = errorCopy;
          [allRemoteDestinationStrings na_each:v59];
        }

        userInfo3 = [v21 userInfo];
        v45 = [userInfo3 objectForKeyedSubscript:@"HMDIDSMessageTransportTransactionIdentifierKey"];

        if (v45)
        {
          pendingResponses = [(HMDIDSMessageTransport *)selfCopy pendingResponses];
          v47 = [pendingResponses objectForKeyedSubscript:v45];

          if (v47)
          {
            (v47)[2](v47, v58, 0);
          }

          [(HMDIDSMessageTransport *)selfCopy _removePendingResponseTransaction:v45];
        }

        featuresDataSource3 = [(HMDIDSMessageTransport *)selfCopy featuresDataSource];
        isTransportRetryEnabled3 = [featuresDataSource3 isTransportRetryEnabled];

        if (isTransportRetryEnabled3)
        {
          messageContexts2 = [(HMDIDSMessageTransport *)selfCopy messageContexts];
          [messageContexts2 removeObject:v21];
        }
      }

      featuresDataSource4 = [(HMDIDSMessageTransport *)self featuresDataSource];
      isTransportRetryEnabled4 = [featuresDataSource4 isTransportRetryEnabled];

      if ((isTransportRetryEnabled4 & 1) == 0)
      {
        messageContexts3 = [(HMDIDSMessageTransport *)self messageContexts];
        [messageContexts3 removeObject:v21];
      }

      serviceCopy = v56;
      accountCopy = v57;
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

- (void)legacyHandleIncomingRemoteMessage:(id)message sourceDevice:(id)device senderDeviceHandle:(id)handle isSecure:(BOOL)secure incomingMessage:(id)incomingMessage fromID:(id)d context:(id)context
{
  v102 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  deviceCopy = device;
  handleCopy = handle;
  incomingMessageCopy = incomingMessage;
  dCopy = d;
  contextCopy = context;
  name = [messageCopy name];
  destination = [messageCopy destination];
  transactionIdentifier = [messageCopy transactionIdentifier];
  objc_initWeak(&location, self);
  if (![messageCopy type])
  {
    v36 = aBlock;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke;
    aBlock[3] = &unk_2797250D8;
    v37 = &v93;
    objc_copyWeak(&v93, &location);
    aBlock[4] = name;
    v88 = destination;
    secureCopy = secure;
    v89 = transactionIdentifier;
    v90 = contextCopy;
    v91 = deviceCopy;
    v92 = handleCopy;
    v24 = _Block_copy(aBlock);

LABEL_14:
    objc_destroyWeak(v37);
    [messageCopy setInternalResponseHandler:v24];
    delegate = [(HMFMessageTransport *)self delegate];
    [delegate messageTransport:self didReceiveMessage:messageCopy];
LABEL_45:

    goto LABEL_46;
  }

  if ([messageCopy type] != 1)
  {
    v36 = v84;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_137;
    v84[3] = &unk_279733AE8;
    v37 = &v85;
    objc_copyWeak(&v85, &location);
    v84[4] = name;
    v24 = _Block_copy(v84);
    goto LABEL_14;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    uUIDString = [transactionIdentifier UUIDString];
    *buf = 138543618;
    v97 = v21;
    v98 = 2114;
    v99 = uUIDString;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Received response to IDS message with transaction ID: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  pendingResponses = [(HMDIDSMessageTransport *)selfCopy pendingResponses];
  v24 = [pendingResponses objectForKeyedSubscript:transactionIdentifier];

  if (v24)
  {
    v25 = MEMORY[0x277CBEB38];
    v26 = [incomingMessageCopy hmf_dictionaryForKey:@"kIDSMessagePayloadKey"];
    delegate = [v25 dictionaryWithDictionary:v26];

    [delegate setObject:dCopy forKeyedSubscript:@"kIDSMessageSourceIDKey"];
    v28 = [incomingMessageCopy hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
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
        v33 = selfCopy;
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

      [delegate setObject:v31 forKeyedSubscript:{@"kIDSMessageResponseErrorDataKey", v74}];

      v75 = v31;
    }

    else
    {
      v75 = 0;
    }

    requestedCapabilities = [(HMDIDSMessageTransport *)selfCopy requestedCapabilities];
    v43 = [requestedCapabilities objectForKeyedSubscript:transactionIdentifier];

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
      destinationAddress = [(HMDIDSMessageTransport *)selfCopy destinationAddress];
      v46 = [destinationAddress objectForKeyedSubscript:transactionIdentifier];
      v47 = [v46 isEqualToString:dCopy];

      if (!v47)
      {
        receivedResponses = [(HMDIDSMessageTransport *)selfCopy receivedResponses];
        v55 = [receivedResponses objectForKeyedSubscript:transactionIdentifier];

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
          receivedResponses2 = [(HMDIDSMessageTransport *)selfCopy receivedResponses];
          [receivedResponses2 setObject:v55 forKeyedSubscript:transactionIdentifier];
        }

        [v55 addObject:{delegate, v75}];
        v59 = [v55 count];
        if ([(HMDRemoteMessageTransport *)selfCopy doesResponse:delegate matchAllCapabilities:contexta])
        {
          v60 = objc_autoreleasePoolPush();
          v61 = selfCopy;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            *buf = 138543362;
            v97 = v63;
            _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Response Matched all capabilities", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v60);
          [(HMDIDSMessageTransport *)v61 _removePendingResponseTimerForTransaction:transactionIdentifier];
          [(HMDIDSMessageTransport *)v61 _pendingResponseTimeoutFor:transactionIdentifier];
        }

        else
        {
          [(HMDIDSMessageTransport *)selfCopy _restartPendingResponseTimerFor:transactionIdentifier withReducedFactor:v59 + 1];
          v64 = objc_autoreleasePoolPush();
          v65 = selfCopy;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543618;
            v97 = v67;
            v98 = 2112;
            v99 = delegate;
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
      v49 = selfCopy;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543874;
        v97 = v51;
        v98 = 2160;
        v99 = 1752392040;
        v100 = 2112;
        v101 = dCopy;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Received response to directed message - selecting response from %{mask.hash}@", buf, 0x20u);
      }
    }

    else
    {
      v48 = objc_autoreleasePoolPush();
      v52 = selfCopy;
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
    (v24)[2](v24, v75, delegate);
    [(HMDIDSMessageTransport *)selfCopy _removePendingResponseTransaction:transactionIdentifier];
LABEL_44:

    goto LABEL_45;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = selfCopy;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138543618;
    v97 = v41;
    v98 = 2112;
    v99 = messageCopy;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@No response handler, dropping message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  [(HMDRemoteMessageTransport *)v39 postDidReceiveRemoteMessageWithNoListenerFromDevice:deviceCopy];
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

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v175 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  originalGUID = [contextCopy originalGUID];
  if (!originalGUID)
  {
LABEL_12:
    v157 = accountCopy;
    if (self && [(HMDIDSMessageTransport *)self isModernTransport])
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v35 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      v36 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      *buf = 138544130;
      v164 = v36;
      v165 = 2112;
      v166 = shortDescription;
      v167 = 2160;
      v168 = 1752392040;
      v169 = 2112;
      v170 = dCopy;
      v38 = v35;
      v39 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v35 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v36 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      *buf = 138544130;
      v164 = v36;
      v165 = 2112;
      v166 = shortDescription;
      v167 = 2160;
      v168 = 1752392040;
      v169 = 2112;
      v170 = dCopy;
      v38 = v35;
      v39 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_2531F8000, v38, v39, "%{public}@Received incoming IDS message: %@, from: %{mask.hash}@", buf, 0x2Au);

LABEL_19:
    objc_autoreleasePoolPop(v33);
    v40 = [messageCopy objectForKeyedSubscript:@"kIDSMessageNameKey"];
    mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    [mEMORY[0x277D0F8C0] reportIncomingIDSPush:v40 fromToken:dCopy];

    if (!dCopy)
    {
      v118 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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
      v125 = selfCopy3;
      v126 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        v127 = HMFGetLogIdentifier();
        [contextCopy originalGUID];
        v129 = v128 = serviceCopy;
        *buf = 138543618;
        v164 = v127;
        v165 = 2114;
        v166 = v129;
        _os_log_impl(&dword_2531F8000, v126, OS_LOG_TYPE_ERROR, "%{public}@Received incoming message, %{public}@, with nil fromID", buf, 0x16u);

        serviceCopy = v128;
      }

      objc_autoreleasePoolPop(v124);
      accountCopy = v157;
      goto LABEL_65;
    }

    v42 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
    v43 = [HMDAccountHandle accountHandleForDestination:dCopy];
    v158 = [HMDAccountIdentifier accountIdentifierForMessageContext:contextCopy];
    v162 = messageCopy;
    v156 = serviceCopy;
    v44 = [(HMDIDSMessageTransport *)self _shouldProcessLegacyIDSMessageFromID:dCopy context:contextCopy message:&v162 service:serviceCopy];
    v45 = v162;

    v155 = v43;
    if (!v44)
    {
      v50 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
        *buf = 138543874;
        v164 = v53;
        v165 = 2114;
        v166 = v40;
        v167 = 2112;
        v168 = senderCorrelationIdentifier;
        _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Dropping incoming message %{public}@ from unknown mergeID %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v50);
      accountCopy = v157;
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
          sourceVersion = [v46 sourceVersion];
        }

        else
        {
          sourceVersion = 0;
        }

        v149 = v42;
        v153 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v42 accountHandle:v43 accountIdentifier:v158 deviceVersion:sourceVersion pairingIdentityIdentifier:0];
        v60 = [(HMDIDSMessageTransport *)self deviceForSenderContext:?];
        if (v60)
        {
          v61 = v60;
          v152 = v40;

          v62 = MEMORY[0x277CBEB38];
          messagePayload = [v46 messagePayload];
          v64 = [v62 dictionaryWithDictionary:messagePayload];

          [v64 setObject:dCopy forKeyedSubscript:@"kIDSMessageSourceIDKey"];
          v147 = v64;
          [v46 setMessagePayload:v64];
          [v46 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
          isSecure = [v46 isSecure];
          v66 = [HMDRemoteDeviceMessageDestination alloc];
          destination = [v46 destination];
          target = [destination target];
          v150 = v61;
          v69 = [(HMDRemoteDeviceMessageDestination *)v66 initWithTarget:target device:v61];

          [v46 setDestination:v69];
          v70 = isSecure;
          if ((isSecure & 1) != 0 || ![HMDSecureRemoteSession isSecureRemoteSessionMessage:v46])
          {
            v71 = +[HMDMetricsManager sharedLogEventSubmitter];
            v72 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v46 transportType:[(HMDIDSMessageTransport *)self transportType]];
            [v71 submitLogEvent:v72];
          }

          userInfo = [v46 userInfo];
          v74 = [userInfo mutableCopy];

          v75 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDIDSMessageTransport transportType](self, "transportType")}];
          [v74 setObject:v75 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

          v146 = v69;
          if (self && [(HMDIDSMessageTransport *)self isModernTransport])
          {
            v145 = v74;
            deviceHandle = [(HMDRemoteMessageSenderContext *)v153 deviceHandle];
            [(HMDRemoteDeviceMessageDestination *)v69 setPreferredHandle:deviceHandle];

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
              isCurrentAccount = [v83 isCurrentAccount];

              if (isCurrentAccount)
              {
                v85 = objc_autoreleasePoolPush();
                selfCopy5 = self;
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
                sharedUserIDSIdentifier = [v82 sharedUserIDSIdentifier];
                v100 = [sharedUserIDSIdentifier isEqual:v143];

                v80 = v82;
                v81 = v143;
                if ((v100 & 1) == 0)
                {
                  context = objc_autoreleasePoolPush();
                  selfCopy6 = self;
                  v102 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                  {
                    v103 = HMFGetLogIdentifier();
                    [v80 sharedUserIDSIdentifier];
                    v104 = v140 = selfCopy6;
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

                    selfCopy6 = v140;
                    v81 = v143;
                  }

                  objc_autoreleasePoolPop(context);
                  [v80 setSharedUserIDSIdentifier:v81];
                }
              }
            }

            [v145 setObject:dCopy forKeyedSubscript:@"kIDSMessageSourceIDKey"];
            toID = [contextCopy toID];
            [v145 setObject:toID forKeyedSubscript:@"kRemoteMessageIDSToIDKey"];

            v106 = [v45 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
            [v145 setObject:v106 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

            internal = [v46 internal];
            [internal setUserInfo:v145];

            [v46 setSenderContext:v153];
            delegate = [(HMFMessageTransport *)self delegate];
            [delegate messageTransport:self didReceiveMessage:v46];

            featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
            LODWORD(v106) = [featuresDataSource isTransportRetryEnabled];

            if (v106)
            {
              messageContexts = [(HMDIDSMessageTransport *)self messageContexts];
              v159[0] = MEMORY[0x277D85DD0];
              v159[1] = 3221225472;
              v159[2] = __73__HMDIDSMessageTransport_service_account_incomingMessage_fromID_context___block_invoke;
              v159[3] = &unk_279725088;
              v160 = contextCopy;
              v111 = [messageContexts hmf_objectPassingTest:v159];

              v42 = v149;
              if (v111)
              {
                userInfo2 = [v111 userInfo];
                v113 = [userInfo2 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

                v114 = _Block_copy(v113);
                v115 = v114;
                if (v114)
                {
                  (*(v114 + 2))(v114, 0);
                }

                messageContexts2 = [(HMDIDSMessageTransport *)self messageContexts];
                [messageContexts2 removeObject:v111];
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
            internal2 = [v46 internal];
            [internal2 setUserInfo:v74];

            v93 = v153;
            [v46 setSenderContext:v153];
            deviceHandle2 = [(HMDRemoteMessageSenderContext *)v153 deviceHandle];
            selfCopy7 = self;
            v96 = deviceHandle2;
            v97 = v150;
            [(HMDIDSMessageTransport *)selfCopy7 legacyHandleIncomingRemoteMessage:v46 sourceDevice:v150 senderDeviceHandle:deviceHandle2 isSecure:v70 incomingMessage:v45 fromID:dCopy context:contextCopy];
            v42 = v149;
            v98 = v74;
            v40 = v152;
          }

          accountCopy = v157;
        }

        else
        {
          v130 = objc_autoreleasePoolPush();
          selfCopy8 = self;
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
          v137 = selfCopy8;
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
          accountCopy = v157;
          v42 = v149;
        }

        v47 = v148;
        goto LABEL_63;
      }

      v55 = objc_autoreleasePoolPush();
      selfCopy10 = self;
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
        v168 = dCopy;
        _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Unable to create sender device handle from fromID: %{mask.hash}@", buf, 0x20u);

        v47 = v90;
        v40 = v89;
        v45 = v154;
      }
    }

    else
    {
      v55 = objc_autoreleasePoolPush();
      selfCopy10 = self;
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
        v170 = dCopy;
        v171 = 2112;
        v172 = v58;
        _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Dropping invalid IDS message payload, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

        v47 = v58;
        v40 = v151;
      }
    }

    objc_autoreleasePoolPop(v55);
    accountCopy = v157;
LABEL_63:

LABEL_64:
    messageCopy = v45;
    serviceCopy = v156;
LABEL_65:

    goto LABEL_66;
  }

  v18 = originalGUID;
  originalGUID2 = [contextCopy originalGUID];
  v20 = originalGUID2;
  if (!self || !originalGUID2)
  {
LABEL_11:

    goto LABEL_12;
  }

  messageDedupBuffer = [(HMDIDSMessageTransport *)self messageDedupBuffer];
  v22 = [messageDedupBuffer containsObject:v20];

  if ((v22 & 1) == 0)
  {
    messageDedupBuffer2 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
    v30 = [messageDedupBuffer2 count];

    if (v30 >= 0x1E)
    {
      messageDedupBuffer3 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
      [messageDedupBuffer3 removeObjectAtIndex:0];
    }

    messageDedupBuffer4 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
    [messageDedupBuffer4 addObject:v20];

    goto LABEL_11;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy11 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [contextCopy originalGUID];
    v28 = v27 = accountCopy;
    *buf = 138543618;
    v164 = v26;
    v165 = 2114;
    v166 = v28;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Received duplicate message with GUID: %{public}@", buf, 0x16u);

    accountCopy = v27;
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

- (BOOL)_shouldProcessLegacyIDSMessageFromID:(id)d context:(id)context message:(id *)message service:(id)service
{
  dCopy = d;
  contextCopy = context;
  serviceCopy = service;
  if ([(HMDIDSMessageTransport *)self transportType]== 4)
  {
    v13 = [serviceCopy deviceForFromID:dCopy];
    account = v13;
    if (v13)
    {
      isDefaultPairedDevice = [v13 isDefaultPairedDevice];
    }

    else
    {
      isDefaultPairedDevice = 0;
    }

    goto LABEL_15;
  }

  if (!self || ![(HMDIDSMessageTransport *)self isModernTransport])
  {
    appleAccountManager = [(HMDIDSMessageTransport *)self appleAccountManager];
    account = [appleAccountManager account];

    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    v18 = *message;
    v19 = [v18 objectForKeyedSubscript:@"kIDSMessagePayloadKey"];
    v35 = [v18 objectForKeyedSubscript:@"kIDSMessageNameKey"];
    homeMembershipVerifier = [(HMDRemoteMessageTransport *)self homeMembershipVerifier];
    v36 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
    v20 = [HMDAccountHandle accountHandleForDestination:dCopy];
    senderCorrelationIdentifier2 = [account senderCorrelationIdentifier];
    if ([senderCorrelationIdentifier2 isEqual:senderCorrelationIdentifier])
    {
      isDefaultPairedDevice = 1;
    }

    else
    {
      v33 = v19;
      v34 = senderCorrelationIdentifier;
      handles = [account handles];
      v23 = [handles containsObject:v20];

      if (v23)
      {
        goto LABEL_13;
      }

      pendingResponses = [(HMDIDSMessageTransport *)self pendingResponses];
      v25 = [v18 hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      v26 = [pendingResponses objectForKey:v25];

      if (v26)
      {
LABEL_13:
        isDefaultPairedDevice = 1;
        v19 = v33;
        senderCorrelationIdentifier = v34;
        goto LABEL_14;
      }

      senderCorrelationIdentifier2 = [HMDAccountIdentifier accountIdentifierForMessageContext:contextCopy];
      v28 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v36 accountHandle:v20 accountIdentifier:senderCorrelationIdentifier2 deviceVersion:0 pairingIdentityIdentifier:0];
      remoteAccountManager = [(HMDIDSMessageTransport *)self remoteAccountManager];
      v32 = v28;
      v30 = [remoteAccountManager deviceForSenderContext:v28];

      senderCorrelationIdentifier = v34;
      if ([homeMembershipVerifier userWithMergeIdIsMemberOfAHome:v34])
      {
        isDefaultPairedDevice = 1;
        v19 = v33;
      }

      else
      {
        v19 = v33;
        v31 = [v33 hmf_UUIDForKey:@"kInvitationIdentifierKey"];
        if ([homeMembershipVerifier expectingInvitationResponseForIdentifier:?])
        {
          isDefaultPairedDevice = 1;
        }

        else
        {
          isDefaultPairedDevice = [v35 isEqual:@"kAccessHomeInviteRequestKey"];
        }
      }
    }

LABEL_14:
LABEL_15:

    goto LABEL_16;
  }

  isDefaultPairedDevice = 1;
LABEL_16:

  return isDefaultPairedDevice;
}

- (void)_removePendingResponseTransaction:(id)transaction
{
  transactionCopy = transaction;
  pendingResponses = [(HMDIDSMessageTransport *)self pendingResponses];
  [pendingResponses removeObjectForKey:transactionCopy];

  requestedCapabilities = [(HMDIDSMessageTransport *)self requestedCapabilities];
  [requestedCapabilities removeObjectForKey:transactionCopy];

  destinationAddress = [(HMDIDSMessageTransport *)self destinationAddress];
  [destinationAddress removeObjectForKey:transactionCopy];

  [(HMDIDSMessageTransport *)self _removePendingResponseTimerForTransaction:transactionCopy];
  featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
  isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

  if (isTransportRetryEnabled)
  {
    messageContexts = [(HMDIDSMessageTransport *)self messageContexts];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__HMDIDSMessageTransport__removePendingResponseTransaction___block_invoke;
    v13[3] = &unk_279725088;
    v14 = transactionCopy;
    v11 = [messageContexts hmf_objectPassingTest:v13];

    messageContexts2 = [(HMDIDSMessageTransport *)self messageContexts];
    [messageContexts2 removeObject:v11];
  }
}

uint64_t __60__HMDIDSMessageTransport__removePendingResponseTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)_removePendingResponseTimerForTransaction:(id)transaction
{
  v17 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = transactionCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling timer for transaction: %{public}@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  pendingResponseTimers = [(HMDIDSMessageTransport *)selfCopy pendingResponseTimers];
  v10 = [pendingResponseTimers objectForKeyedSubscript:transactionCopy];

  if (v10)
  {
    dispatch_source_cancel(v10);
  }

  pendingResponseTimers2 = [(HMDIDSMessageTransport *)selfCopy pendingResponseTimers];
  [pendingResponseTimers2 removeObjectForKey:transactionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startPendingResponseTimer:(id)timer responseTimeout:(double)timeout identifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  identifierCopy = identifier;
  if (timeout < 2.22044605e-16 || timeout <= 0.0)
  {
    v11 = remotePendingResponseTimerNanoseconds;
  }

  else
  {
    v11 = (timeout * 1000000000.0);
  }

  workQueue = [(HMDIDSMessageTransport *)self workQueue];
  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);

  v14 = dispatch_time(0, v11);
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, remotePendingResponseLeewayNanoseconds);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __80__HMDIDSMessageTransport__startPendingResponseTimer_responseTimeout_identifier___block_invoke;
  handler[3] = &unk_279732E78;
  objc_copyWeak(&v25, &location);
  v15 = timerCopy;
  v24 = v15;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_resume(v13);
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    uUIDString = [v15 UUIDString];
    *buf = 138543874;
    v28 = v19;
    v29 = 2114;
    v30 = uUIDString;
    v31 = 2048;
    v32 = v11 / 0x3B9ACA00;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Starting poll to track response for message with transaction %{public}@ for %lld secs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  pendingResponseTimers = [(HMDIDSMessageTransport *)selfCopy pendingResponseTimers];
  [pendingResponseTimers setObject:v13 forKeyedSubscript:v15];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x277D85DE8];
}

void __80__HMDIDSMessageTransport__startPendingResponseTimer_responseTimeout_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pendingResponseTimeoutFor:*(a1 + 32)];
}

- (void)_pendingResponseTimeoutFor:(id)for
{
  v31 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    uUIDString = [forCopy UUIDString];
    v27 = 138543618;
    v28 = v8;
    v29 = 2114;
    v30 = uUIDString;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Pending Response timeout for transaction: %{public}@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  pendingResponses = [(HMDIDSMessageTransport *)selfCopy pendingResponses];
  v11 = [pendingResponses objectForKeyedSubscript:forCopy];

  if (v11)
  {
    receivedResponses = [(HMDIDSMessageTransport *)selfCopy receivedResponses];
    v13 = [receivedResponses objectForKeyedSubscript:forCopy];

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

    requestedCapabilities = [(HMDIDSMessageTransport *)selfCopy requestedCapabilities];
    v17 = [requestedCapabilities objectForKeyedSubscript:forCopy];

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
      v21 = selfCopy;
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

  [(HMDIDSMessageTransport *)selfCopy _removePendingResponseTransaction:forCopy];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_restartPendingResponseTimerFor:(id)for withReducedFactor:(unint64_t)factor
{
  v29 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v7 = remotePendingResponseTimerNanoseconds;
  v8 = remotePendingResponseDecayScale;
  pendingResponseTimers = [(HMDIDSMessageTransport *)self pendingResponseTimers];
  v10 = [pendingResponseTimers objectForKeyedSubscript:forCopy];

  if (v10)
  {
    v11 = v7 / (v8 * factor);
    v12 = dispatch_time(0, v11);
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, remotePendingResponseLeewayNanoseconds);
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = v11 / 0x3B9ACA00;
      uUIDString = [forCopy UUIDString];
      v23 = 138543874;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2114;
      v28 = uUIDString;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Restarted Pending response timer for %lld sec, for transaction: %{public}@", &v23, 0x20u);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      uUIDString2 = [forCopy UUIDString];
      v23 = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = uUIDString2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Timer already expired for transaction: %{public}@", &v23, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v13);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)sendMessage:(id)message fromHandle:(id)handle destination:(id)destination priority:(int64_t)priority timeout:(double)timeout options:(unint64_t)options queueOneID:(id)d senderResidentInfo:(int64_t)self0 destinationResidentInfo:(int64_t)self1 error:(id *)self2
{
  optionsCopy = options;
  residentInfoCopy2 = residentInfo;
  v131[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  destinationCopy = destination;
  dCopy = d;
  if (destinationCopy)
  {
    allRemoteDestinationStrings = [(HMDIDSMessageTransport *)destinationCopy allRemoteDestinationStrings];
    if (![(__CFString *)allRemoteDestinationStrings count])
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v38 = v37 = dCopy;
        *buf = 138543618;
        v116 = v38;
        v117 = 2112;
        selfCopy4 = destinationCopy;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@No valid destination strings for destination: %@", buf, 0x16u);

        dCopy = v37;
      }

      objc_autoreleasePoolPop(v34);
      if (!error)
      {
        v33 = 0;
LABEL_95:

        goto LABEL_96;
      }

      v106 = destinationCopy;
      v109 = messageCopy;
      v39 = MEMORY[0x277CCA9B8];
      v130 = *MEMORY[0x277CCA7E8];
      v23 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3214];
      v40 = [v39 hmInternalErrorWithCode:3203 underlyingError:v23];
      v131[0] = v40;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:&v130 count:1];
      *error = [v39 hmErrorWithCode:54 userInfo:v33];
      goto LABEL_93;
    }

    v106 = destinationCopy;
    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
    isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

    if (isTransportRetryEnabled)
    {
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18678]];
      if ((optionsCopy & 1) == 0)
      {
LABEL_5:
        if ((optionsCopy & 2) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    else if ((optionsCopy & 1) == 0)
    {
      goto LABEL_5;
    }

    v41 = MEMORY[0x277CBEC38];
    [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185C0]];
    [v23 setObject:v41 forKeyedSubscript:*MEMORY[0x277D185E8]];
    if ((optionsCopy & 2) == 0)
    {
LABEL_6:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18600]];
    if ((optionsCopy & 8) == 0)
    {
LABEL_7:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_22:
    [v23 setObject:&unk_286627CD0 forKeyedSubscript:*MEMORY[0x277D18620]];
    if ((optionsCopy & 4) == 0)
    {
LABEL_9:
      if (timeout <= 0.0)
      {
        if ((optionsCopy & 2) == 0)
        {
          [v23 setObject:&unk_28662BDF8 forKeyedSubscript:*MEMORY[0x277D18650]];
        }
      }

      else
      {
        v27 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
        [v23 setObject:v27 forKeyedSubscript:*MEMORY[0x277D18650]];
      }

      [v23 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D18630]];
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18570]];
      v109 = messageCopy;
      v105 = dCopy;
      if (isInternalBuild())
      {
        v42 = [messageCopy objectForKeyedSubscript:@"kRemoteMessageQoSKey"];
        integerValue = [v42 integerValue];

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
          selfCopy2 = self;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v50 = v102 = integerValue;
            device = [(HMDIDSMessageTransport *)v44 device];
            [device productInfo];
            v52 = v103 = v47;
            [v52 productPlatform];
            v53 = HMFProductPlatformToString();
            *buf = 138543618;
            v116 = v50;
            v117 = 2112;
            selfCopy4 = v53;
            _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@destination device's platform: %@", buf, 0x16u);

            v47 = v103;
            integerValue = v102;
          }

          objc_autoreleasePoolPop(v47);
          messageCopy = v109;
          residentInfoCopy2 = residentInfo;
        }

        v54 = (integerValue > 24) << 31;
        v55 = [messageCopy objectForKeyedSubscript:@"kIDSMessageRequiresResponseKey"];
        v56 = [v55 isEqual:MEMORY[0x277CBEC38]];

        if (v56)
        {
          v57 = 100;
        }

        else
        {
          v58 = [messageCopy objectForKeyedSubscript:@"kIDSMessageIsResponseToRequest"];
          v59 = [v58 isEqual:MEMORY[0x277CBEC38]];

          if (v59)
          {
            v57 = 200;
          }

          else
          {
            v60 = [messageCopy objectForKeyedSubscript:@"kIDSMessageIsNotificationKey"];
            v61 = [v60 isEqual:MEMORY[0x277CBEC38]];

            v57 = 400;
            if (v61)
            {
              v57 = 300;
            }
          }
        }

        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(residentInfoCopy2 + 10 * info + v54 + v57)];
        [v23 setObject:v62 forKeyedSubscript:*MEMORY[0x277D18618]];
      }

      if (handleCopy)
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        service = [(HMDIDSMessageTransport *)self service];
        accounts = [service accounts];

        v65 = [accounts countByEnumeratingWithState:&v111 objects:v129 count:16];
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
                objc_enumerationMutation(accounts);
              }

              v69 = *(*(&v111 + 1) + 8 * i);
              hmd_handles = [v69 hmd_handles];
              v71 = [hmd_handles containsObject:handleCopy];

              if (v71)
              {
                v72 = [handleCopy URI];
                prefixedURI = [v72 prefixedURI];
                [v23 setObject:prefixedURI forKeyedSubscript:*MEMORY[0x277D185E0]];

                v40 = v69;
                goto LABEL_54;
              }
            }

            v66 = [accounts countByEnumeratingWithState:&v111 objects:v129 count:16];
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
        shortDescription = [v109 hmf_stringForKey:@"kIDSMessageIdentifierKey"];
        goto LABEL_60;
      }

LABEL_59:
      shortDescription = [v109 shortDescription];
LABEL_60:
      v75 = shortDescription;
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
      selfCopy3 = self;
      v82 = HMFGetOSLogHandle();
      v83 = os_log_type_enabled(v82, OS_LOG_TYPE_INFO);
      if (v79)
      {
        if (v83)
        {
          v84 = HMFGetLogIdentifier();
          v85 = v84;
          switch(priority)
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
          selfCopy4 = v75;
          v119 = 2160;
          v120 = 1752392040;
          v121 = 2112;
          v122 = allRemoteDestinationStrings;
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
        switch(priority)
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
        selfCopy4 = v75;
        v119 = 2117;
        v120 = allRemoteDestinationStrings;
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
      service2 = [(HMDIDSMessageTransport *)selfCopy3 service];
      v93 = [MEMORY[0x277CBEB98] setWithArray:allRemoteDestinationStrings];
      v110 = 0;
      v94 = [service2 sendMessage:v109 fromAccount:v40 toDestinations:v93 priority:priority options:v23 identifier:&v110 error:error];
      v33 = v110;

      if (v94)
      {
        dCopy = v105;
LABEL_94:

        messageCopy = v109;
        destinationCopy = v106;
        goto LABEL_95;
      }

      v95 = objc_autoreleasePoolPush();
      v96 = selfCopy3;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        if (self)
        {
          self = [v109 hmf_stringForKey:@"kIDSMessageIdentifierKey"];
        }

        if (error)
        {
          v99 = *error;
        }

        else
        {
          v99 = @"<nil>";
        }

        *buf = 138543874;
        v116 = v98;
        v117 = 2114;
        selfCopy4 = self;
        v119 = 2112;
        v120 = v99;
        _os_log_impl(&dword_2531F8000, v97, OS_LOG_TYPE_INFO, "%{public}@Failed to send IDS message %{public}@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v95);
      dCopy = v105;
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
  selfCopy5 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v32 = v31 = dCopy;
    *buf = 138543362;
    v116 = v32;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Destination is required", buf, 0xCu);

    dCopy = v31;
  }

  objc_autoreleasePoolPop(v28);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_96:

  v100 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)sendMessage:(id)message senderResidentInfo:(int64_t)info destinationResidentInfo:(int64_t)residentInfo completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  workQueue = [(HMDIDSMessageTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke;
  block[3] = &unk_279725060;
  v16 = messageCopy;
  selfCopy = self;
  v18 = handlerCopy;
  infoCopy = info;
  residentInfoCopy = residentInfo;
  v13 = messageCopy;
  v14 = handlerCopy;
  dispatch_async(workQueue, block);
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

- (BOOL)isValidMessage:(id)message
{
  messageCopy = message;
  destination = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    destination2 = [messageCopy destination];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_6;
    }
  }

  v7 = [messageCopy restriction] & 1;
LABEL_6:

  return v7;
}

- (BOOL)canSendMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (![(HMDIDSMessageTransport *)self isValidMessage:messageCopy])
  {
    goto LABEL_13;
  }

  if (self && [(HMDIDSMessageTransport *)self isModernTransport])
  {
    goto LABEL_6;
  }

  appleAccountManager = [(HMDIDSMessageTransport *)self appleAccountManager];
  device = [appleAccountManager device];

  if (!device)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  service = [(HMDIDSMessageTransport *)self service];
  hmd_isActive = [service hmd_isActive];

  if ((hmd_isActive & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (id)deviceForSenderContext:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  appleAccountManager = [(HMDIDSMessageTransport *)self appleAccountManager];
  account = [appleAccountManager account];

  handles = [account handles];
  accountHandle = [contextCopy accountHandle];
  v9 = [handles containsObject:accountHandle];

  if (!v9)
  {
    remoteAccountManager = [(HMDIDSMessageTransport *)self remoteAccountManager];
    v11 = [remoteAccountManager deviceForSenderContext:contextCopy];
LABEL_16:

    goto LABEL_17;
  }

  deviceHandle = [contextCopy deviceHandle];
  v11 = [account deviceForHandle:deviceHandle];

  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    deviceHandle2 = [contextCopy deviceHandle];
    v18 = [v16 arrayWithObject:deviceHandle2];

    localDeviceHandle = [contextCopy localDeviceHandle];

    if (localDeviceHandle)
    {
      localDeviceHandle2 = [contextCopy localDeviceHandle];
      [v18 addObject:localDeviceHandle2];
    }

    v21 = [HMDDevice alloc];
    deviceHandle3 = [contextCopy deviceHandle];
    identifier = [deviceHandle3 identifier];
    v24 = [v18 copy];
    deviceVersion = [contextCopy deviceVersion];
    v11 = [(HMDDevice *)v21 initWithIdentifier:identifier handles:v24 name:0 productInfo:0 version:deviceVersion capabilities:0 account:account];

    [account addDevice:v11];
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
  senderCorrelationIdentifier = [account senderCorrelationIdentifier];

  if (!senderCorrelationIdentifier)
  {
    accountIdentifier = [contextCopy accountIdentifier];
    remoteAccountManager = [accountIdentifier senderCorrelationIdentifier];

    if (remoteAccountManager)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy2;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = HMFGetLogIdentifier();
        identifier2 = [account identifier];
        shortDescription = [identifier2 shortDescription];
        *buf = 138544130;
        v43 = v36;
        v44 = 2114;
        v45 = shortDescription;
        v46 = 2160;
        v47 = 1752392040;
        v48 = 2112;
        v49 = remoteAccountManager;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account %{public}@ with inferred mergeID %{mask.hash}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v33);
      appleAccountManager2 = [(HMDIDSMessageTransport *)v34 appleAccountManager];
      [appleAccountManager2 updateSenderCorrelationIdentifier:remoteAccountManager];
    }

    goto LABEL_16;
  }

LABEL_17:

  v40 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_shouldAddLocalHandleToDevice:(id)device
{
  deviceCopy = device;
  localHandles = [deviceCopy localHandles];
  hmf_isEmpty = [localHandles hmf_isEmpty];

  if (hmf_isEmpty)
  {
    globalHandles = [deviceCopy globalHandles];
    v7 = [globalHandles count] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)logIdentifier
{
  service = [(HMDIDSMessageTransport *)self service];
  serviceIdentifier = [service serviceIdentifier];

  return serviceIdentifier;
}

- (id)start
{
  v16 = *MEMORY[0x277D85DE8];
  if (self && [(HMDIDSMessageTransport *)self isModernTransport])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    selfCopy2 = self;
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
  service = [(HMDIDSMessageTransport *)self service];
  workQueue = [(HMDIDSMessageTransport *)self workQueue];
  [service addDelegate:self queue:workQueue];

  startPromise = [(HMDRemoteMessageTransport *)self startPromise];
  [startPromise fulfillWithValue:0];

  startFuture = [(HMDRemoteMessageTransport *)self startFuture];
  v12 = *MEMORY[0x277D85DE8];

  return startFuture;
}

- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry service:(id)service serviceName:(id)name appleAccountManager:(id)manager remoteAccountManager:(id)accountManager featuresDataSource:(id)source
{
  serviceCopy = service;
  nameCopy = name;
  managerCopy = manager;
  accountManagerCopy = accountManager;
  sourceCopy = source;
  v50.receiver = self;
  v50.super_class = HMDIDSMessageTransport;
  v19 = [(HMDRemoteMessageTransport *)&v50 initWithAccountRegistry:registry];
  v20 = v19;
  if (v19)
  {
    v47 = managerCopy;
    v48 = serviceCopy;
    if (nameCopy == @"com.apple.private.alloy.home")
    {
      v19->_modernTransport = 1;
    }

    v21 = HMDispatchQueueNameString();
    uTF8String = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(uTF8String, v23);
    workQueue = v20->_workQueue;
    v20->_workQueue = v24;

    objc_storeStrong(&v20->_service, service);
    objc_storeStrong(&v20->_appleAccountManager, manager);
    objc_storeStrong(&v20->_remoteAccountManager, accountManager);
    objc_storeStrong(&v20->_featuresDataSource, source);
    v26 = objc_alloc(MEMORY[0x277D0F8A0]);
    sendMessageLimit = [objc_opt_class() sendMessageLimit];
    sendMessageRate = [objc_opt_class() sendMessageRate];
    v30 = [v26 initWithLimit:sendMessageLimit rate:{sendMessageRate, v29}];
    sendMessageBudget = v20->_sendMessageBudget;
    v20->_sendMessageBudget = v30;

    array = [MEMORY[0x277CBEB18] array];
    messageContexts = v20->_messageContexts;
    v20->_messageContexts = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingResponses = v20->_pendingResponses;
    v20->_pendingResponses = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    receivedResponses = v20->_receivedResponses;
    v20->_receivedResponses = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    requestedCapabilities = v20->_requestedCapabilities;
    v20->_requestedCapabilities = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    destinationAddress = v20->_destinationAddress;
    v20->_destinationAddress = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    pendingResponseTimers = v20->_pendingResponseTimers;
    v20->_pendingResponseTimers = dictionary5;

    v44 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:30];
    messageDedupBuffer = v20->_messageDedupBuffer;
    v20->_messageDedupBuffer = v44;

    managerCopy = v47;
    serviceCopy = v48;
  }

  return v20;
}

- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry forServiceName:(id)name
{
  nameCopy = name;
  registryCopy = registry;
  v8 = +[HMDIDSServiceManager sharedManager];
  v9 = [v8 serviceWithName:nameCopy];
  v10 = +[HMDAppleAccountManager sharedManager];
  v11 = +[HMDRemoteAccountManager sharedManager];
  v12 = +[HMDFeaturesDataSource defaultDataSource];
  v13 = [(HMDIDSMessageTransport *)self initWithAccountRegistry:registryCopy service:v9 serviceName:nameCopy appleAccountManager:v10 remoteAccountManager:v11 featuresDataSource:v12];

  return v13;
}

- (unint64_t)maximumNumberOfRetries
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDIDSMessageTransportSendMessageNumberOfRetriesKey"];
  numberValue = [v3 numberValue];
  unsignedIntegerValue = [numberValue unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)defaultTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDIDSMessageTransportSendMessageDefaultTimeoutKey"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

+ (id)queueOneIdentifierWithMessageName:(id)name target:(id)target collapseID:(id)d timeToLive:(double)live now:(id)now
{
  nameCopy = name;
  targetCopy = target;
  dCopy = d;
  nowCopy = now;
  if (!nameCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dCopy)
  {
LABEL_9:
    v40 = _HMFPreconditionFailure();
    return sha256(v40, v41, v42, v43, v44, v45, v46, v47, v51);
  }

  v15 = nowCopy;
  v23 = objc_autoreleasePoolPush();
  v24 = fmax(live * 3.0, 28800.0);
  if (v24 > 604800.0)
  {
    v24 = 604800.0;
  }

  v25 = v24;
  v49 = 0;
  v26 = sha256(@"Q1Offset", v16, v17, v18, v19, v20, v21, v22, nameCopy);
  [v26 getBytes:&v49 length:8];

  v27 = v49 % v25;
  [v15 timeIntervalSinceReferenceDate];
  v48 = (v27 + v28) / v25;
  v29 = [MEMORY[0x277CBEA90] dataWithBytes:&v48 length:8];
  v37 = sha256(@"Q1Id", v30, v31, v32, v33, v34, v35, v36, v29);
  hmf_hexadecimalRepresentation = [v37 hmf_hexadecimalRepresentation];

  objc_autoreleasePoolPop(v23);

  return hmf_hexadecimalRepresentation;
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [mEMORY[0x277D0F8D0] preferenceForKey:@"remoteSendMessageRate"];

  numberValue = [v4 numberValue];
  [numberValue doubleValue];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v10 = 60.0;
  }

  else
  {
    numberValue2 = [v4 numberValue];
    [numberValue2 doubleValue];
    v10 = v9;
  }

  v11 = ([self sendMessageLimit] / v10);

  v12 = v11;
  v13 = v10;
  result.period = v13;
  result.value = v12;
  return result;
}

+ (unint64_t)sendMessageLimit
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"remoteSendMessageLimit"];

  numberValue = [v3 numberValue];
  unsignedIntegerValue = [numberValue unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    numberValue2 = [v3 numberValue];
    unsignedIntegerValue2 = [numberValue2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 1800;
  }

  return unsignedIntegerValue2;
}

+ (id)stringFromHMDIDSResidentInfo:(int64_t)info
{
  if (info >= 4)
  {
    info = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown residentInfo: %lu", info];
  }

  else
  {
    info = off_2797250F8[info];
  }

  return info;
}

@end