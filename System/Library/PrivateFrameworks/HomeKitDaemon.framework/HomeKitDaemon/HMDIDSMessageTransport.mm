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
- (BOOL)shouldAcceptLegacyIDSMessage:(id)message;
- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry forServiceName:(id)name;
- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry service:(id)service serviceName:(id)name appleAccountManager:(id)manager remoteAccountManager:(id)accountManager featuresDataSource:(id)source;
- (double)defaultTimeout;
- (id)_identifierFromSerializedMessage:(void *)message;
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
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Receipt of message with IDS GUID %{public}@ from account: %{private}@ confirmed.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      messageContexts = [(HMDIDSMessageTransport *)selfCopy messageContexts];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __81__HMDIDSMessageTransport_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
      v28[3] = &unk_278674018;
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
    v61[3] = &unk_278674018;
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
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message with IDS GUID %{public}@ from account: %{private}@ with error: %@", buf, 0x2Au);
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
          v59[2] = __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke_140;
          v59[3] = &unk_278686270;
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

void __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke_140(uint64_t a1, void *a2)
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
    aBlock[3] = &unk_278674068;
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
    v84[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_136;
    v84[3] = &unk_278687F40;
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
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Received response to IDS message with transaction ID: %{public}@", buf, 0x16u);
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
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize error with error: %@", buf, 0x16u);
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
            _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Response Matched all capabilities", buf, 0xCu);
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
            _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@Not Calling response handler with response %@", buf, 0x16u);
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
            _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@Currently received responses = %lu", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Received response to directed message - selecting response from %{mask.hash}@", buf, 0x20u);
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
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@No Capabilities were requested - selecting the first response", buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@No response handler, dropping message: %@", buf, 0x16u);
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
    v10[3] = &unk_278674040;
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

void __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_136(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Command %{public}@ completed with error: %@", &v14, 0x20u);
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Responding to non-server storage message, %{public}@ (%{public}@), as direct message", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@IDS message response ack'd with identifier %{public}@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@IDS message response, %@, failed with error: %@", buf, 0x20u);

      v4 = v37;
      v2 = v36;
    }

    objc_autoreleasePoolPop(v24);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v161 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  originalGUID = [contextCopy originalGUID];
  if (!originalGUID)
  {
LABEL_12:
    v146 = serviceCopy;
    if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v38 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      v39 = HMFGetLogIdentifier();
      [messageCopy shortDescription];
      v44 = contextCopy;
      v46 = v45 = accountCopy;
      *buf = 138544130;
      v152 = v39;
      v153 = 2112;
      v154 = v46;
      v155 = 2160;
      v156 = 1752392040;
      v157 = 2112;
      v158 = dCopy;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Received incoming IDS message: %@, from: %{mask.hash}@", buf, 0x2Au);

      accountCopy = v45;
      contextCopy = v44;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v38 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v39 = HMFGetLogIdentifier();
      [messageCopy shortDescription];
      v40 = dCopy;
      v41 = contextCopy;
      v43 = v42 = accountCopy;
      *buf = 138544130;
      v152 = v39;
      v153 = 2112;
      v154 = v43;
      v155 = 2160;
      v156 = 1752392040;
      v157 = 2112;
      v158 = v40;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Received incoming IDS message: %@, from: %{mask.hash}@", buf, 0x2Au);

      accountCopy = v42;
      contextCopy = v41;
      dCopy = v40;
    }

LABEL_19:
    objc_autoreleasePoolPop(v36);
    v47 = [messageCopy objectForKeyedSubscript:@"kIDSMessageNameKey"];
    mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    v144 = v47;
    [mEMORY[0x277D0F8C0] reportIncomingIDSPush:v47 fromToken:dCopy];

    if (!dCopy)
    {
      v120 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v122 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
      {
        HMFGetLogIdentifier();
        v123 = contextCopy;
        v125 = v124 = accountCopy;
        *buf = 138543362;
        v152 = v125;
        _os_log_impl(&dword_229538000, v122, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received incoming message with nil fromID", buf, 0xCu);

        accountCopy = v124;
        contextCopy = v123;
        dCopy = 0;
      }

      objc_autoreleasePoolPop(v120);
      v126 = [[HMDAssertionLogEvent alloc] initWithReason:@"Received incoming message with nil fromID"];
      v127 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v127 submitLogEvent:v126];

      v128 = objc_autoreleasePoolPush();
      v129 = selfCopy3;
      v130 = HMFGetOSLogHandle();
      serviceCopy = v146;
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v131 = v139 = accountCopy;
        originalGUID2 = [contextCopy originalGUID];
        *buf = 138543618;
        v152 = v131;
        v153 = 2114;
        v154 = originalGUID2;
        _os_log_impl(&dword_229538000, v130, OS_LOG_TYPE_ERROR, "%{public}@Received incoming message, %{public}@, with nil fromID", buf, 0x16u);

        serviceCopy = v146;
        accountCopy = v139;
      }

      objc_autoreleasePoolPop(v128);
      goto LABEL_71;
    }

    v49 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
    v50 = [HMDAccountHandle accountHandleForDestination:dCopy];
    v51 = [HMDAccountIdentifier accountIdentifierForMessageContext:contextCopy];
    v150 = messageCopy;
    v52 = [(HMDIDSMessageTransport *)self _shouldProcessLegacyIDSMessageFromID:dCopy context:contextCopy message:&v150 service:v146];
    v145 = v150;

    v143 = v50;
    if (!v52)
    {
      v56 = v49;
      v57 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v61 = v60 = accountCopy;
        senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
        *buf = 138543874;
        v152 = v61;
        v153 = 2114;
        v154 = v144;
        v155 = 2112;
        v156 = senderCorrelationIdentifier;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Dropping incoming message %{public}@ from unknown mergeID %@", buf, 0x20u);

        accountCopy = v60;
      }

      objc_autoreleasePoolPop(v57);
      goto LABEL_70;
    }

    if (self)
    {
      v53 = [(HMDIDSMessageTransport *)self isLegacyTransport]^ 1;
    }

    else
    {
      v53 = 0;
    }

    v149 = 0;
    v54 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v145 isHH2Payload:v53 error:&v149];
    v141 = v149;
    v142 = v49;
    if (!v54)
    {
      v63 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v65 = HMFGetOSLogHandle();
      v66 = v141;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v68 = v67 = accountCopy;
        *buf = 138544386;
        v152 = v68;
        v153 = 2112;
        v154 = v145;
        v155 = 2160;
        v156 = 1752392040;
        v157 = 2112;
        v158 = dCopy;
        v159 = 2112;
        v160 = v141;
        _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_ERROR, "%{public}@Dropping invalid IDS message payload, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

        accountCopy = v67;
      }

      objc_autoreleasePoolPop(v63);
      goto LABEL_69;
    }

    if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport]|| [(HMDIDSMessageTransport *)self shouldAcceptLegacyIDSMessage:v54])
    {
      if ([(HMDIDSMessageTransport *)self isSecure])
      {
        [v54 setSecure:1];
      }

      if (v49)
      {
        v138 = accountCopy;
        if ([v54 isSecure])
        {
          sourceVersion = [v54 sourceVersion];

          if (sourceVersion)
          {
            sourceVersion = [v54 sourceVersion];
          }
        }

        else
        {
          sourceVersion = 0;
        }

        v140 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v49 accountHandle:v50 accountIdentifier:v51 deviceVersion:sourceVersion pairingIdentityIdentifier:0];
        v80 = objc_alloc(MEMORY[0x277CCAD78]);
        v81 = [v145 hmf_stringForKey:@"idsId"];
        v82 = [v80 initWithUUIDString:v81];

        if (v82)
        {
          v83 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v82];
          if (v83)
          {
            [(HMDRemoteMessageSenderContext *)v140 setLocalDeviceHandle:v83];
          }
        }

        v84 = [(HMDIDSMessageTransport *)self deviceForSenderContext:v140];
        if (!v84)
        {
          v102 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v104 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            v137 = HMFGetLogIdentifier();
            *buf = 138543618;
            v152 = v137;
            v153 = 2112;
            v154 = v54;
            _os_log_impl(&dword_229538000, v104, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine source device, dropping message: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v102);
          accountCopy = v138;
          goto LABEL_68;
        }

        v85 = v84;

        v86 = MEMORY[0x277CBEB38];
        messagePayload = [v54 messagePayload];
        v88 = [v86 dictionaryWithDictionary:messagePayload];

        [v88 setObject:dCopy forKeyedSubscript:@"kIDSMessageSourceIDKey"];
        v134 = v88;
        [v54 setMessagePayload:v88];
        [v54 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
        isSecure = [v54 isSecure];
        v90 = [HMDRemoteDeviceMessageDestination alloc];
        destination = [v54 destination];
        target = [destination target];
        v136 = v85;
        v93 = [(HMDRemoteDeviceMessageDestination *)v90 initWithTarget:target device:v85];

        v135 = v93;
        [v54 setDestination:v93];
        if ((isSecure & 1) != 0 || ![HMDSecureRemoteSession isSecureRemoteSessionMessage:v54])
        {
          v94 = +[HMDMetricsManager sharedLogEventSubmitter];
          v95 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v54 transportType:[(HMDIDSMessageTransport *)self transportType]];
          [v94 submitLogEvent:v95];
        }

        userInfo = [v54 userInfo];
        v97 = [userInfo mutableCopy];

        v98 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDIDSMessageTransport transportType](self, "transportType")}];
        [v97 setObject:v98 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

        accountCopy = v138;
        v99 = v140;
        v133 = v97;
        if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
        {
          deviceHandle = [(HMDRemoteMessageSenderContext *)v140 deviceHandle];
          [v135 setPreferredHandle:deviceHandle];

          [v97 setObject:dCopy forKeyedSubscript:@"kIDSMessageSourceIDKey"];
          toID = [contextCopy toID];
          [v97 setObject:toID forKeyedSubscript:@"kRemoteMessageIDSToIDKey"];

          v107 = [v145 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
          [v97 setObject:v107 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

          internal = [v54 internal];
          [internal setUserInfo:v97];

          [v54 setSenderContext:v140];
          delegate = [(HMFMessageTransport *)self delegate];
          [delegate messageTransport:self didReceiveMessage:v54];

          featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
          isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

          v99 = v140;
          if (!isTransportRetryEnabled)
          {
LABEL_67:

            goto LABEL_68;
          }

          messageContexts = [(HMDIDSMessageTransport *)self messageContexts];
          v147[0] = MEMORY[0x277D85DD0];
          v147[1] = 3221225472;
          v147[2] = __73__HMDIDSMessageTransport_service_account_incomingMessage_fromID_context___block_invoke;
          v147[3] = &unk_278674018;
          v148 = contextCopy;
          v113 = [messageContexts hmf_objectPassingTest:v147];

          if (v113)
          {
            userInfo2 = [v113 userInfo];
            v115 = [userInfo2 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

            v116 = _Block_copy(v115);
            v117 = v116;
            if (v116)
            {
              (*(v116 + 2))(v116, 0);
            }

            messageContexts2 = [(HMDIDSMessageTransport *)self messageContexts];
            [messageContexts2 removeObject:v113];

            accountCopy = v138;
          }

          deviceHandle2 = v148;
          v99 = v140;
        }

        else
        {
          internal2 = [v54 internal];
          [internal2 setUserInfo:v97];

          [v54 setSenderContext:v140];
          deviceHandle2 = [(HMDRemoteMessageSenderContext *)v140 deviceHandle];
          [(HMDIDSMessageTransport *)self legacyHandleIncomingRemoteMessage:v54 sourceDevice:v136 senderDeviceHandle:deviceHandle2 isSecure:isSecure incomingMessage:v145 fromID:dCopy context:contextCopy];
        }

        goto LABEL_67;
      }

      v69 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v72 = dCopy;
        v73 = contextCopy;
        v75 = v74 = accountCopy;
        *buf = 138543874;
        v152 = v75;
        v153 = 2160;
        v154 = 1752392040;
        v155 = 2112;
        v156 = v72;
        v76 = "%{public}@Unable to create sender device handle from fromID: %{mask.hash}@";
        v77 = v71;
        v78 = OS_LOG_TYPE_ERROR;
        v79 = 32;
LABEL_43:
        _os_log_impl(&dword_229538000, v77, v78, v76, buf, v79);

        accountCopy = v74;
        contextCopy = v73;
        dCopy = v72;
      }
    }

    else
    {
      v69 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v72 = dCopy;
        v73 = contextCopy;
        v75 = v74 = accountCopy;
        *buf = 138543618;
        v152 = v75;
        v153 = 2112;
        v154 = v54;
        v76 = "%{public}@Dropping message from legacy transport: %@";
        v77 = v71;
        v78 = OS_LOG_TYPE_INFO;
        v79 = 22;
        goto LABEL_43;
      }
    }

    objc_autoreleasePoolPop(v69);
LABEL_68:
    v66 = v141;
LABEL_69:

    v56 = v142;
LABEL_70:

    messageCopy = v145;
    serviceCopy = v146;
LABEL_71:

    goto LABEL_72;
  }

  v18 = originalGUID;
  originalGUID3 = [contextCopy originalGUID];
  v20 = originalGUID3;
  if (!self || !originalGUID3)
  {
LABEL_11:

    goto LABEL_12;
  }

  messageDedupBuffer = [(HMDIDSMessageTransport *)self messageDedupBuffer];
  v22 = [messageDedupBuffer containsObject:v20];

  if ((v22 & 1) == 0)
  {
    messageDedupBuffer2 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
    v33 = [messageDedupBuffer2 count];

    if (v33 >= 0x1E)
    {
      messageDedupBuffer3 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
      [messageDedupBuffer3 removeObjectAtIndex:0];
    }

    messageDedupBuffer4 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
    [messageDedupBuffer4 addObject:v20];

    goto LABEL_11;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [contextCopy originalGUID];
    v27 = serviceCopy;
    v28 = dCopy;
    v29 = contextCopy;
    v31 = v30 = accountCopy;
    *buf = 138543618;
    v152 = v26;
    v153 = 2114;
    v154 = v31;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Received duplicate message with GUID: %{public}@", buf, 0x16u);

    accountCopy = v30;
    contextCopy = v29;
    dCopy = v28;
    serviceCopy = v27;
  }

  objc_autoreleasePoolPop(v23);
LABEL_72:

  v119 = *MEMORY[0x277D85DE8];
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
  v80 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  serviceCopy = service;
  if ([(HMDIDSMessageTransport *)self transportType]== 4)
  {
    v13 = [serviceCopy deviceForFromID:dCopy];
    v14 = v13;
    if (v13)
    {
      isDefaultPairedDevice = [v13 isDefaultPairedDevice];
    }

    else
    {
      isDefaultPairedDevice = 0;
    }
  }

  else if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
  {
    isDefaultPairedDevice = 1;
  }

  else
  {
    appleAccountManager = [(HMDIDSMessageTransport *)self appleAccountManager];
    account = [appleAccountManager account];

    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    v19 = *message;
    v20 = [v19 objectForKeyedSubscript:@"kIDSMessagePayloadKey"];
    v71 = v19;
    v68 = [v19 objectForKeyedSubscript:@"kIDSMessageNameKey"];
    homeMembershipVerifier = [(HMDRemoteMessageTransport *)self homeMembershipVerifier];
    v69 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
    v21 = [HMDAccountHandle accountHandleForDestination:dCopy];
    senderCorrelationIdentifier2 = [account senderCorrelationIdentifier];
    if ([senderCorrelationIdentifier2 isEqual:senderCorrelationIdentifier])
    {

      isDefaultPairedDevice = 1;
    }

    else
    {
      v65 = v20;
      v66 = senderCorrelationIdentifier;
      v64 = account;
      handles = [account handles];
      v67 = v21;
      v24 = [handles containsObject:v21];

      if (v24)
      {
        goto LABEL_13;
      }

      pendingResponses = [(HMDIDSMessageTransport *)self pendingResponses];
      v26 = [v71 hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      v27 = [pendingResponses objectForKey:v26];

      if (v27)
      {
LABEL_13:
        isDefaultPairedDevice = 1;
        v20 = v65;
        senderCorrelationIdentifier = v66;
      }

      else
      {
        v63 = [HMDAccountIdentifier accountIdentifierForMessageContext:contextCopy];
        v30 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v69 accountHandle:v21 accountIdentifier:v63 deviceVersion:0 pairingIdentityIdentifier:0];
        remoteAccountManager = [(HMDIDSMessageTransport *)self remoteAccountManager];
        v62 = v30;
        v32 = [remoteAccountManager deviceForSenderContext:v30];

        senderCorrelationIdentifier = v66;
        v20 = v65;
        if ([homeMembershipVerifier userWithMergeIdIsMemberOfAHome:v66])
        {
          isDefaultPairedDevice = 1;
          v21 = v67;
        }

        else
        {
          v61 = [v65 hmf_UUIDForKey:@"kInvitationIdentifierKey"];
          if ([homeMembershipVerifier expectingInvitationResponseForIdentifier:?])
          {
            isDefaultPairedDevice = 1;
          }

          else if ([v68 isEqual:@"kAccessHomeInviteRequestKey"])
          {
            v33 = *MEMORY[0x277CD23D0];
            v34 = [v65 objectForKeyedSubscript:*MEMORY[0x277CD23D0]];
            v35 = [HMDNameValidator alloc];
            uUID = [MEMORY[0x277CCAD78] UUID];
            v37 = [(HMDNameValidator *)v35 initWithUUID:uUID];

            v59 = v34;
            v38 = [(HMDNameValidator *)v37 validateName:v34];
            isDefaultPairedDevice = v38 == 0;
            v60 = v38;
            if (v38)
            {
              v39 = v38;
              v40 = objc_autoreleasePoolPush();
              selfCopy = self;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v44 = v43 = v37;
                *buf = 138543618;
                v77 = v44;
                v78 = 2112;
                v79 = v39;
                _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Received invite from invalid home name.  Validation Error %@", buf, 0x16u);

                v37 = v43;
              }

              objc_autoreleasePoolPop(v40);
              v20 = v65;
              v45 = v59;
            }

            else
            {
              v57 = v33;
              v58 = v37;
              uUID2 = [MEMORY[0x277CCAD78] UUID];
              v47 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v49 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v51 = v50 = selfCopy2;
                *buf = 138543618;
                v77 = v51;
                v78 = 2112;
                v79 = uUID2;
                _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Replacing incoming HH1 invite with message id %@", buf, 0x16u);

                selfCopy2 = v50;
              }

              objc_autoreleasePoolPop(v47);
              v75[0] = @"kAccessHomeInviteRequestKey";
              v74[0] = @"kIDSMessageNameKey";
              v74[1] = @"kIDSMessageIdentifierKey";
              uUIDString = [uUID2 UUIDString];
              v75[1] = uUIDString;
              v75[2] = MEMORY[0x277CBEC38];
              v74[2] = @"kIDSMessageRequiresResponseKey";
              v74[3] = @"kIDSMessageRequestTransactionIDKey";
              uUID3 = [MEMORY[0x277CCAD78] UUID];
              uUIDString2 = [uUID3 UUIDString];
              v54 = *MEMORY[0x277CD23C8];
              v75[3] = uUIDString2;
              v75[4] = v54;
              v74[4] = @"kIDSMessageTargetKey";
              v74[5] = @"kIDSMessagePayloadKey";
              v45 = v59;
              v72 = v57;
              v73 = v59;
              v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
              v75[5] = v55;
              *message = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:6];

              v20 = v65;
              v37 = v58;
            }

            senderCorrelationIdentifier = v66;
          }

          else
          {
            isDefaultPairedDevice = 0;
          }

          v21 = v67;
          account = v64;
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return isDefaultPairedDevice;
}

- (BOOL)shouldAcceptLegacyIDSMessage:(id)message
{
  messageCopy = message;
  if (![messageCopy type] && (objc_msgSend(messageCopy, "name"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"kAccessHomeInviteRequestKey"), v4, (v5 & 1) != 0) || objc_msgSend(messageCopy, "type") == 1)
  {
    v6 = 1;
  }

  else
  {
    name = [messageCopy name];
    v6 = [name isEqualToString:@"kSecureServerIDSMessageRequestKey"];
  }

  return v6;
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
    v13[3] = &unk_278674018;
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling timer for transaction: %{public}@", &v13, 0x16u);
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
  handler[3] = &unk_278686B48;
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
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Starting poll to track response for message with transaction %{public}@ for %lld secs", buf, 0x20u);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Pending Response timeout for transaction: %{public}@", &v27, 0x16u);
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
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@ Selecting response based on requested capabilities", &v27, 0xCu);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Restarted Pending response timer for %lld sec, for transaction: %{public}@", &v23, 0x20u);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Timer already expired for transaction: %{public}@", &v23, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v13);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)sendMessage:(id)message fromHandle:(id)handle destination:(id)destination priority:(int64_t)priority timeout:(double)timeout options:(unint64_t)options queueOneID:(id)d senderResidentInfo:(int64_t)self0 destinationResidentInfo:(int64_t)self1 error:(id *)self2
{
  optionsCopy = options;
  errorCopy3 = error;
  v134[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  destinationCopy = destination;
  dCopy = d;
  if (destinationCopy)
  {
    allRemoteDestinationStrings = [destinationCopy allRemoteDestinationStrings];
    if (![(__CFString *)allRemoteDestinationStrings count])
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v119 = v37;
        v120 = 2112;
        v121 = destinationCopy;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@No valid destination strings for destination: %@", buf, 0x16u);

        errorCopy3 = error;
      }

      objc_autoreleasePoolPop(v34);
      if (!errorCopy3)
      {
        v33 = 0;
LABEL_95:

        goto LABEL_96;
      }

      v38 = MEMORY[0x277CCA9B8];
      v133 = *MEMORY[0x277CCA7E8];
      [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3214];
      v24 = v39 = errorCopy3;
      v40 = [v38 hmInternalErrorWithCode:3203 underlyingError:v24];
      v134[0] = v40;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:&v133 count:1];
      *v39 = [v38 hmErrorWithCode:54 userInfo:v33];
      goto LABEL_93;
    }

    priorityCopy = priority;
    v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
    isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

    if (isTransportRetryEnabled)
    {
      [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18678]];
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
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185C0]];
    [v24 setObject:v41 forKeyedSubscript:*MEMORY[0x277D185E8]];
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
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18600]];
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
    [v24 setObject:&unk_283E721E8 forKeyedSubscript:*MEMORY[0x277D18620]];
    if ((optionsCopy & 4) == 0)
    {
LABEL_9:
      if (timeout <= 0.0)
      {
        if ((optionsCopy & 2) == 0)
        {
          [v24 setObject:&unk_283E75E98 forKeyedSubscript:*MEMORY[0x277D18650]];
        }
      }

      else
      {
        v28 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
        [v24 setObject:v28 forKeyedSubscript:*MEMORY[0x277D18650]];
      }

      [v24 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D18630]];
      [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18570]];
      v110 = messageCopy;
      v108 = dCopy;
      if (isInternalBuild())
      {
        v42 = [messageCopy objectForKeyedSubscript:@"kRemoteMessageQoSKey"];
        integerValue = [v42 integerValue];

        v44 = destinationCopy;
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

        v107 = v46;

        if (isKindOfClass)
        {
          v47 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v50 = v105 = integerValue;
            device = [v44 device];
            [device productInfo];
            v51 = v106 = v47;
            [v51 productPlatform];
            v52 = HMFProductPlatformToString();
            *buf = 138543618;
            v119 = v50;
            v120 = 2112;
            v121 = v52;
            _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@destination device's platform: %@", buf, 0x16u);

            v47 = v106;
            integerValue = v105;
          }

          objc_autoreleasePoolPop(v47);
          messageCopy = v110;
        }

        v53 = (integerValue > 24) << 31;
        v54 = [messageCopy objectForKeyedSubscript:@"kIDSMessageRequiresResponseKey"];
        v55 = [v54 isEqual:MEMORY[0x277CBEC38]];

        if (v55)
        {
          v56 = 100;
          infoCopy2 = info;
        }

        else
        {
          v58 = [messageCopy objectForKeyedSubscript:@"kIDSMessageIsResponseToRequest"];
          v59 = [v58 isEqual:MEMORY[0x277CBEC38]];

          infoCopy2 = info;
          if (v59)
          {
            v56 = 200;
          }

          else
          {
            v60 = [messageCopy objectForKeyedSubscript:@"kIDSMessageIsNotificationKey"];
            v61 = [v60 isEqual:MEMORY[0x277CBEC38]];

            v56 = 400;
            if (v61)
            {
              v56 = 300;
            }
          }
        }

        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(residentInfo + 10 * infoCopy2 + v53 + v56)];
        [v24 setObject:v62 forKeyedSubscript:*MEMORY[0x277D18618]];
      }

      if (handleCopy)
      {
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        service = [(HMDIDSMessageTransport *)self service];
        accounts = [service accounts];

        v65 = [accounts countByEnumeratingWithState:&v114 objects:v132 count:16];
        if (v65)
        {
          v66 = v65;
          v111 = destinationCopy;
          v67 = *v115;
          while (2)
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v115 != v67)
              {
                objc_enumerationMutation(accounts);
              }

              v69 = *(*(&v114 + 1) + 8 * i);
              hmd_handles = [v69 hmd_handles];
              v71 = [hmd_handles containsObject:handleCopy];

              if (v71)
              {
                v72 = [handleCopy URI];
                prefixedURI = [v72 prefixedURI];
                [v24 setObject:prefixedURI forKeyedSubscript:*MEMORY[0x277D185E0]];

                v40 = v69;
                goto LABEL_54;
              }
            }

            v66 = [accounts countByEnumeratingWithState:&v114 objects:v132 count:16];
            if (v66)
            {
              continue;
            }

            break;
          }

          v40 = 0;
LABEL_54:
          messageCopy = v110;
          destinationCopy = v111;
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
      {
        shortDescription = [(HMDIDSMessageTransport *)self _identifierFromSerializedMessage:messageCopy];
      }

      else
      {
        shortDescription = [messageCopy shortDescription];
      }

      v75 = shortDescription;
      if (shouldLogPrivateInformation())
      {
        v76 = v24;
      }

      else
      {
        v77 = [v24 mutableCopy];
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
          switch(priorityCopy)
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
          v119 = v84;
          v120 = 2114;
          v121 = v75;
          v122 = 2160;
          v123 = 1752392040;
          v124 = 2112;
          v125 = allRemoteDestinationStrings;
          v126 = 2113;
          v127 = v40;
          v128 = 2114;
          v129 = v86;
          v130 = 2114;
          v131 = v76;
          v89 = "%{public}@Sending IDS message %{public}@ to %{mask.hash}@, from account %{private}@ with priority, %{public}@, options: %{public}@";
          v90 = v82;
          v91 = 72;
LABEL_84:
          _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_INFO, v89, buf, v91);
        }
      }

      else if (v83)
      {
        v87 = HMFGetLogIdentifier();
        v85 = v87;
        switch(priorityCopy)
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
        v119 = v87;
        v120 = 2114;
        v121 = v75;
        v122 = 2117;
        v123 = allRemoteDestinationStrings;
        v124 = 2113;
        v125 = v40;
        v126 = 2114;
        v127 = v88;
        v128 = 2114;
        v129 = v76;
        v89 = "%{public}@Sending IDS message %{public}@ to %{sensitive}@, from account %{private}@ with priority, %{public}@, options: %{public}@";
        v90 = v82;
        v91 = 62;
        goto LABEL_84;
      }

      objc_autoreleasePoolPop(v80);
      service2 = [(HMDIDSMessageTransport *)selfCopy3 service];
      v93 = [MEMORY[0x277CBEB98] setWithArray:allRemoteDestinationStrings];
      v113 = 0;
      messageCopy = v110;
      v94 = [service2 sendMessage:v110 fromAccount:v40 toDestinations:v93 priority:priorityCopy options:v24 identifier:&v113 error:error];
      v33 = v113;

      if (v94)
      {
        dCopy = v108;
LABEL_94:

        goto LABEL_95;
      }

      v95 = objc_autoreleasePoolPush();
      v96 = selfCopy3;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        v99 = [(HMDIDSMessageTransport *)v96 _identifierFromSerializedMessage:v110];
        v100 = v99;
        if (error)
        {
          v101 = *error;
        }

        else
        {
          v101 = @"<nil>";
        }

        *buf = 138543874;
        v119 = v98;
        v120 = 2114;
        v121 = v99;
        v122 = 2112;
        v123 = v101;
        _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_INFO, "%{public}@Failed to send IDS message %{public}@ due to error: %@", buf, 0x20u);

        messageCopy = v110;
      }

      objc_autoreleasePoolPop(v95);
      dCopy = v108;
LABEL_93:

      v33 = 0;
      goto LABEL_94;
    }

LABEL_8:
    v27 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D188A8]];
    [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277D18638]];

    goto LABEL_9;
  }

  v29 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543362;
    v119 = v32;
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Destination is required", buf, 0xCu);

    errorCopy3 = error;
  }

  objc_autoreleasePoolPop(v29);
  if (errorCopy3)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *errorCopy3 = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_96:

  v102 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)_identifierFromSerializedMessage:(void *)message
{
  v3 = a2;
  if (message)
  {
    if ([message isLegacyTransport])
    {
      v4 = @"kIDSMessageIdentifierKey";
    }

    else
    {
      v4 = @"id";
    }

    message = [v3 hmf_stringForKey:v4];
  }

  return message;
}

- (void)sendMessage:(id)message senderResidentInfo:(int64_t)info destinationResidentInfo:(int64_t)residentInfo completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  workQueue = [(HMDIDSMessageTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke;
  block[3] = &unk_27867C1E0;
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
  v180 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke_2;
  aBlock[3] = &unk_278689A68;
  v171 = *(a1 + 48);
  v170 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 40);
  if (!v3 || ([v3 isLegacyTransport] & 1) != 0)
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) responseHandler];

  if (v4)
  {
    v133 = objc_autoreleasePoolPush();
    v134 = *(a1 + 40);
    v135 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
    {
      v136 = HMFGetLogIdentifier();
      *buf = 138543362;
      v173 = v136;
      _os_log_impl(&dword_229538000, v135, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Response handler should not be set in modern transport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v133);
    v137 = [[HMDAssertionLogEvent alloc] initWithReason:@"Response handler should not be set in modern transport"];
    v138 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v138 submitLogEvent:v137];
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
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 40);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 32) identifier];
        v20 = [v19 UUIDString];
        v21 = [*(a1 + 32) destination];
        *buf = 138543874;
        v173 = v18;
        v174 = 2114;
        v175 = v20;
        v176 = 2112;
        v177 = v21;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message %{public}@ invalid destination: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter." reason:@"Invalid destination." suggestion:0];
      v2[2](v2, v9);
      goto LABEL_100;
    }

    v9 = [*(a1 + 40) remoteMessageFromMessage:*(a1 + 32)];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [v10 isLegacyTransport] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v168 = 0;
    v12 = [HMDRemoteMessageSerialization dictionaryForMessage:v9 isHH2Payload:v11 error:&v168];
    v13 = v168;
    if (!v12)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 40);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [*(a1 + 32) identifier];
        *buf = 138543874;
        v173 = v25;
        v174 = 2114;
        v175 = v26;
        v176 = 2112;
        v177 = v13;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize message %{public}@ with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v2[2](v2, v13);
      goto LABEL_99;
    }

    v14 = *(a1 + 40);
    v156 = v13;
    if (!v14 || ([v14 isLegacyTransport] & 1) != 0)
    {
      context = 0;
LABEL_61:
      v151 = v2;
      [v9 timeout];
      v61 = 0.0;
      if (v62 > 0.0)
      {
        [v9 timeout];
        v61 = v63;
      }

      v64 = [v9 collapseID];
      if (v64)
      {
        v65 = *(a1 + 40);
        v66 = objc_opt_class();
        v67 = [v9 name];
        v68 = [v6 target];
        v69 = [MEMORY[0x277CBEAA8] now];
        v166 = [v66 queueOneIdentifierWithMessageName:v67 target:v68 collapseID:v64 timeToLive:v69 now:v61];
      }

      else
      {
        v166 = 0;
      }

      if ([v9 sendOptions])
      {
        v70 = 8;
      }

      else
      {
        v70 = *(a1 + 40);
        v71 = v9;
        v72 = v166;
        if (v70)
        {
          v73 = [v70 isLegacyTransport];
          v70 = 0;
          if (v73)
          {
            if (!v72)
            {
              v70 = [v71 type] == 3;
            }
          }
        }
      }

      v74 = [*(a1 + 32) destination];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = v74;
      }

      else
      {
        v75 = 0;
      }

      v76 = v75;

      if (v76 && [v76 restrictToResidentCapable])
      {
        v70 |= 4uLL;
      }

      v150 = v76;
      v77 = *(a1 + 40);
      v78 = [objc_opt_class() priorityForMessage:v9];
      v79 = *(a1 + 40);
      v80 = *(a1 + 56);
      v81 = *(a1 + 64);
      v167 = 0;
      v82 = [v79 sendMessage:v12 fromHandle:context destination:v6 priority:v78 timeout:v70 options:v166 queueOneID:v61 senderResidentInfo:v80 destinationResidentInfo:v81 error:&v167];
      v147 = v64;
      v148 = v167;
      v158 = v82;
      if (v82)
      {
        v83 = +[HMDMetricsManager sharedLogEventSubmitter];
        v84 = +[HMDRemoteMessageLogEvent sentRemoteMessage:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:transportType:", v9, [*(a1 + 40) transportType]);
        [v83 submitLogEvent:v84];

        v85 = objc_autoreleasePoolPush();
        v86 = *(a1 + 40);
        v87 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          v88 = HMFGetLogIdentifier();
          [*(a1 + 32) identifier];
          v90 = v89 = v12;
          *buf = 138543874;
          v173 = v88;
          v174 = 2114;
          v175 = v90;
          v176 = 2114;
          v177 = v158;
          _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ ack'd with IDS GUID %{public}@", buf, 0x20u);

          v12 = v89;
        }

        objc_autoreleasePoolPop(v85);
        v91 = [MEMORY[0x277CBEB38] dictionary];
        v92 = *(a1 + 48);
        if (v92)
        {
          v93 = [v92 copy];
          [v91 setObject:v93 forKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];
        }

        v154 = v12;
        v94 = [*(a1 + 32) responseHandler];

        v2 = v151;
        if (v94)
        {
          v95 = [v9 transactionIdentifier];
          [v91 setObject:v95 forKeyedSubscript:@"HMDIDSMessageTransportTransactionIdentifierKey"];
          v96 = [*(a1 + 32) responseHandler];
          v97 = _Block_copy(v96);
          v98 = [*(a1 + 40) pendingResponses];
          [v98 setObject:v97 forKeyedSubscript:v95];

          v99 = [v9 messagePayload];
          v100 = [v99 objectForKeyedSubscript:@"kRequestedCapabilitiesKey"];
          v101 = [*(a1 + 40) requestedCapabilities];
          [v101 setObject:v100 forKeyedSubscript:v95];

          v102 = [v6 remoteDestinationString];
          v103 = [*(a1 + 40) destinationAddress];
          [v103 setObject:v102 forKeyedSubscript:v95];

          v104 = *(a1 + 40);
          [v9 timeout];
          [v104 _startPendingResponseTimer:v95 responseTimeout:v158 identifier:?];
        }

        v105 = [HMDIDSMessageContext alloc];
        v106 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v158];
        v107 = [*(a1 + 32) destination];
        v108 = [(HMDIDSMessageContext *)v105 initWithIdentifier:v106 destination:v107 userInfo:v91];

        v109 = [*(a1 + 40) messageContexts];
        [v109 addObject:v108];

        v110 = [*(a1 + 40) sendMessageBudget];
        LODWORD(v106) = [v110 decrement];

        if (v106)
        {
          v111 = [*(a1 + 40) sendMessageBudget];
          v112 = [v111 isEmpty];

          v12 = v154;
          v113 = v148;
          if (v112)
          {
            v146 = objc_autoreleasePoolPush();
            v114 = *(a1 + 40);
            v115 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
            {
              v116 = HMFGetLogIdentifier();
              *buf = 138543362;
              v173 = v116;
              _os_log_impl(&dword_229538000, v115, OS_LOG_TYPE_ERROR, "%{public}@Exceeded send message budget", buf, 0xCu);

              v12 = v154;
            }

            objc_autoreleasePoolPop(v146);
            v117 = [*(a1 + 40) sendMessageBudget];
            v118 = [v117 rate];
            v120 = [HMDRemoteMessageExceedBudgetLogEvent eventWithBudgetRate:v118, v119];

            v121 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v121 submitLogEvent:v120];
          }
        }

        else
        {
          v128 = objc_autoreleasePoolPush();
          v129 = *(a1 + 40);
          v130 = HMFGetOSLogHandle();
          v113 = v148;
          if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
          {
            v131 = HMFGetLogIdentifier();
            *buf = 138543362;
            v173 = v131;
            _os_log_impl(&dword_229538000, v130, OS_LOG_TYPE_INFO, "%{public}@Over send message budget", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v128);
          v12 = v154;
        }

        v13 = v156;
      }

      else
      {
        v122 = objc_autoreleasePoolPush();
        v123 = *(a1 + 40);
        v124 = HMFGetOSLogHandle();
        v113 = v148;
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          v125 = HMFGetLogIdentifier();
          [*(a1 + 32) identifier];
          v126 = v155 = v12;
          v127 = [*(a1 + 32) name];
          *buf = 138544130;
          v173 = v125;
          v174 = 2114;
          v175 = v126;
          v176 = 2112;
          v177 = v127;
          v178 = 2112;
          v179 = v148;
          _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message %{public}@ / %@ with error: %@", buf, 0x2Au);

          v12 = v155;
          v13 = v156;
        }

        objc_autoreleasePoolPop(v122);
        v2 = v151;
        v151[2](v151, v148);
      }

LABEL_99:
LABEL_100:

      goto LABEL_101;
    }

    v27 = [v12 mutableCopy];
    v28 = *(a1 + 40);
    v29 = v27;
    if (v28)
    {
      v30 = [v28 appleAccountManager];
      v31 = [v30 device];

      if (v31)
      {
        v32 = [v31 idsIdentifier];
        v33 = v32;
        if (v32)
        {
          v34 = [v32 UUIDString];
          [v29 setObject:v34 forKeyedSubscript:@"idsId"];
        }

        else
        {
          v152 = v12;
          v40 = objc_autoreleasePoolPush();
          v41 = v28;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v43 = v164 = v40;
            *buf = 138543618;
            v173 = v43;
            v174 = 2112;
            v175 = v31;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Cannot set the source IDS device identifier because IDS identifier is unknown for current device: %@", buf, 0x16u);

            v40 = v164;
          }

          objc_autoreleasePoolPop(v40);
          v12 = v152;
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v28;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v163 = v29;
          v39 = v38 = v12;
          *buf = 138543362;
          v173 = v39;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Cannot set the source IDS device identifier because current device is unknown", buf, 0xCu);

          v12 = v38;
          v29 = v163;
        }

        objc_autoreleasePoolPop(v35);
      }
    }

    if ([v9 type] != 1)
    {
      context = 0;
      v13 = v156;
LABEL_60:
      v60 = [v29 copy];

      v12 = v60;
      goto LABEL_61;
    }

    v44 = [*(a1 + 32) userInfo];
    v45 = [v44 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

    if (v45)
    {
      [v29 setObject:v45 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    }

    v46 = *(a1 + 40);
    v47 = v9;
    v48 = v47;
    if (!v46 || [v47 type] != 1)
    {
      context = 0;
      v13 = v156;
LABEL_59:

      goto LABEL_60;
    }

    v49 = [v48 remoteToID];
    v50 = v49;
    if (!v49)
    {
      context = 0;
      v13 = v156;
LABEL_58:

      goto LABEL_59;
    }

    v165 = v49;
    v153 = v12;
    v51 = [v48 destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;

    v157 = v53;
    if (v53)
    {
      v54 = [v53 device];
      v55 = [v54 account];

      if (v55)
      {
        v50 = v165;
        if (([(HMDAssertionLogEvent *)v55 isCurrentAccount]& 1) != 0)
        {
          context = 0;
          v13 = v156;
LABEL_57:

          v12 = v153;
          goto LABEL_58;
        }

        v56 = [HMDAccountHandle accountHandleForDestination:v165];
        if (v56)
        {
          v57 = v56;
          context = v57;
LABEL_56:
          v13 = v156;

          v50 = v165;
          goto LABEL_57;
        }

        contexta = objc_autoreleasePoolPush();
        v58 = v46;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v149 = HMFGetLogIdentifier();
          *buf = 138543618;
          v173 = v149;
          v174 = 2112;
          v175 = v165;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Invalid toID to create an account handle: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contexta);
        v57 = 0;
      }

      else
      {
        contextc = objc_autoreleasePoolPush();
        v142 = v46;
        v143 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
        {
          v144 = HMFGetLogIdentifier();
          *buf = 138543362;
          v173 = v144;
          _os_log_impl(&dword_229538000, v143, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Destination device does not have an associated account", buf, 0xCu);
        }

        objc_autoreleasePoolPop(contextc);
        v57 = [[HMDAssertionLogEvent alloc] initWithReason:@"Destination device does not have an associated account"];
        v145 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v145 submitLogEvent:v57];

        v55 = 0;
      }
    }

    else
    {
      contextb = objc_autoreleasePoolPush();
      v139 = v46;
      v140 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
      {
        v141 = HMFGetLogIdentifier();
        *buf = 138543362;
        v173 = v141;
        _os_log_impl(&dword_229538000, v140, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Response message is not a device destination", buf, 0xCu);
      }

      objc_autoreleasePoolPop(contextb);
      v55 = [[HMDAssertionLogEvent alloc] initWithReason:@"Response message is not a device destination"];
      v57 = +[HMDMetricsManager sharedLogEventSubmitter];
      [(HMDAssertionLogEvent *)v57 submitLogEvent:v55];
    }

    context = 0;
    goto LABEL_56;
  }

  v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported." reason:@"Response handler should not be set when using IDS transport for modern transport" suggestion:0];
  v2[2](v2, v6);
LABEL_101:

  v132 = *MEMORY[0x277D85DE8];
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
    goto LABEL_4;
  }

  destination2 = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    goto LABEL_5;
  }

  destination3 = [messageCopy destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if (([messageCopy restriction] & 1) == 0 || (!self || -[HMDIDSMessageTransport isLegacyTransport](self, "isLegacyTransport")) && (objc_msgSend(messageCopy, "restriction") == -1 || (objc_msgSend(messageCopy, "restriction") & 0x10) == 0))
  {
    goto LABEL_12;
  }

  v7 = 1;
LABEL_13:

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

  if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v14, &v18, 0xCu);
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
  if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = HMDIDSMessageTransport;
  return [(HMDRemoteMessageTransport *)&v4 isSecure];
}

- (id)deviceForSenderContext:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  appleAccountManager = [(HMDIDSMessageTransport *)self appleAccountManager];
  account = [appleAccountManager account];

  if (account)
  {
    handles = [account handles];
    accountHandle = [contextCopy accountHandle];
    v9 = [handles containsObject:accountHandle];

    if (!v9)
    {
      remoteAccountManager = [(HMDIDSMessageTransport *)self remoteAccountManager];
      v11 = [remoteAccountManager deviceForSenderContext:contextCopy];
      goto LABEL_11;
    }

    deviceHandle = [contextCopy deviceHandle];
    v11 = [account deviceForHandle:deviceHandle];

    if (v11)
    {
      if (![(HMDIDSMessageTransport *)self _shouldAddLocalHandleToDevice:v11])
      {
        goto LABEL_18;
      }

      localDeviceHandle = [contextCopy localDeviceHandle];

      if (!localDeviceHandle)
      {
        goto LABEL_18;
      }

      localDeviceHandle2 = [contextCopy localDeviceHandle];
      [(HMDDevice *)v11 addHandle:localDeviceHandle2];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Received message from unknown device on our account, creating placeholder device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = MEMORY[0x277CBEB18];
      deviceHandle2 = [contextCopy deviceHandle];
      localDeviceHandle2 = [v23 arrayWithObject:deviceHandle2];

      localDeviceHandle3 = [contextCopy localDeviceHandle];

      if (localDeviceHandle3)
      {
        localDeviceHandle4 = [contextCopy localDeviceHandle];
        [localDeviceHandle2 addObject:localDeviceHandle4];
      }

      v27 = [HMDDevice alloc];
      deviceHandle3 = [contextCopy deviceHandle];
      identifier = [deviceHandle3 identifier];
      v30 = [localDeviceHandle2 copy];
      deviceVersion = [contextCopy deviceVersion];
      v11 = [(HMDDevice *)v27 initWithIdentifier:identifier handles:v30 name:0 productInfo:0 version:deviceVersion capabilities:0 account:account];

      [account addDevice:v11];
    }

LABEL_18:
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v35;
      v49 = 2112;
      v50 = v11;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated sender on our account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    senderCorrelationIdentifier = [account senderCorrelationIdentifier];

    if (senderCorrelationIdentifier)
    {
      goto LABEL_21;
    }

    accountIdentifier = [contextCopy accountIdentifier];
    remoteAccountManager = [accountIdentifier senderCorrelationIdentifier];

    if (remoteAccountManager)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy2;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = HMFGetLogIdentifier();
        identifier2 = [account identifier];
        shortDescription = [identifier2 shortDescription];
        *buf = 138544130;
        v48 = v43;
        v49 = 2114;
        v50 = shortDescription;
        v51 = 2160;
        v52 = 1752392040;
        v53 = 2112;
        v54 = remoteAccountManager;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account %{public}@ with inferred mergeID %{mask.hash}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v40);
      appleAccountManager2 = [(HMDIDSMessageTransport *)v41 appleAccountManager];
      [appleAccountManager2 updateSenderCorrelationIdentifier:remoteAccountManager];
    }

LABEL_11:

    goto LABEL_21;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Received a message but no current account is available to authenticate it", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v11 = 0;
LABEL_21:

  v37 = *MEMORY[0x277D85DE8];

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
  if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
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

  _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, v7, &v14, 0xCu);

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
    if (nameCopy == @"com.apple.private.alloy.willow")
    {
      v19->_legacyTransport = 1;
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
  if (logCategory__hmf_once_t2_51449 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_51449, &__block_literal_global_51450);
  }

  v3 = logCategory__hmf_once_v3_51451;

  return v3;
}

void __37__HMDIDSMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_51451;
  logCategory__hmf_once_v3_51451 = v1;
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
    info = off_278674088[info];
  }

  return info;
}

@end