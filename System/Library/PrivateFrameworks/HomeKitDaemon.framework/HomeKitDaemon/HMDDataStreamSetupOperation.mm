@interface HMDDataStreamSetupOperation
+ (id)tcpSetupOperationWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service;
- (BOOL)removeBulkSendListener:(id)listener;
- (HMDDataStreamSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service;
- (HMDDataStreamSetupOperationDelegate)delegate;
- (void)_clearPendingBulkSendListeners;
- (void)addBulkSendListener:(id)listener fileType:(id)type;
- (void)continueStreamSetupWithResponse:(id)response;
- (void)dealloc;
- (void)movePendingBulkSendListenersToBulkSendProtocol:(id)protocol;
- (void)postDidFailWithError:(id)error;
- (void)postDidSucceedWithTransport:(id)transport sessionEncryption:(id)encryption;
- (void)processTransportSetupResponse:(id)response;
- (void)startSetup;
@end

@implementation HMDDataStreamSetupOperation

- (HMDDataStreamSetupOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)movePendingBulkSendListenersToBulkSendProtocol:(id)protocol
{
  v21 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  queue = [(HMDDataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  pendingBulkSendListeners = [(HMDDataStreamSetupOperation *)self pendingBulkSendListeners];
  v7 = [pendingBulkSendListeners countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(pendingBulkSendListeners);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        listener = [v11 listener];
        if (listener)
        {
          fileType = [v11 fileType];
          [protocolCopy addListener:listener fileType:fileType];
        }
      }

      v8 = [pendingBulkSendListeners countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  pendingBulkSendListeners2 = [(HMDDataStreamSetupOperation *)self pendingBulkSendListeners];
  [pendingBulkSendListeners2 removeAllObjects];

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeBulkSendListener:(id)listener
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  queue = [(HMDDataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  pendingBulkSendListeners = [(HMDDataStreamSetupOperation *)self pendingBulkSendListeners];
  v7 = [pendingBulkSendListeners countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(pendingBulkSendListeners);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        listener = [v11 listener];

        if (listener == listenerCopy)
        {
          pendingBulkSendListeners2 = [(HMDDataStreamSetupOperation *)self pendingBulkSendListeners];
          [pendingBulkSendListeners2 removeObject:v11];

          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [pendingBulkSendListeners countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)addBulkSendListener:(id)listener fileType:(id)type
{
  typeCopy = type;
  listenerCopy = listener;
  queue = [(HMDDataStreamSetupOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = [[HMDPendingBulkSendListener alloc] initWithListener:listenerCopy fileType:typeCopy];
  pendingBulkSendListeners = [(HMDDataStreamSetupOperation *)self pendingBulkSendListeners];
  [pendingBulkSendListeners addObject:v10];
}

- (void)processTransportSetupResponse:(id)response
{
  responseCopy = response;
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[HMDDataStreamSetupOperation processTransportSetupResponse:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)startSetup
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[HMDDataStreamSetupOperation startSetup]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)_clearPendingBulkSendListeners
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pendingBulkSendListeners = [(HMDDataStreamSetupOperation *)self pendingBulkSendListeners];
  v4 = [pendingBulkSendListeners countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(pendingBulkSendListeners);
        }

        listener = [*(*(&v12 + 1) + 8 * v7) listener];
        if (listener)
        {
          accessory = [(HMDDataStreamSetupOperation *)self accessory];
          [listener accessory:accessory didCloseDataStreamWithError:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [pendingBulkSendListeners countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  pendingBulkSendListeners2 = [(HMDDataStreamSetupOperation *)self pendingBulkSendListeners];
  [pendingBulkSendListeners2 removeAllObjects];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)continueStreamSetupWithResponse:(id)response
{
  v67 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v63 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] Parsing accessory response", buf, 0xCu);
  }

  v56 = selfCopy;
  objc_autoreleasePoolPop(v5);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = responseCopy;
  v10 = [v9 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v59 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v58 + 1) + 8 * v13);
      request = [v14 request];
      characteristic = [request characteristic];
      type = [characteristic type];
      v18 = [type isEqualToString:@"00000131-0000-1000-8000-0026BB765291"];

      if (v18)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v19 = v14;

    if (!v19)
    {
      goto LABEL_17;
    }

    error = [v19 error];

    if (error)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v56;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        error2 = [v19 error];
        *buf = 138543618;
        v63 = v24;
        v64 = 2112;
        v65 = error2;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply errored out: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      error3 = [v19 error];
      [(HMDDataStreamSetupOperation *)v22 postDidFailWithError:error3];

      goto LABEL_20;
    }

    v32 = MEMORY[0x277CFEB28];
    value = [v19 value];
    v57 = 0;
    v34 = [v32 parsedFromData:value error:&v57];
    v35 = v57;

    if (v35 || !v34)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v56;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v63 = v43;
        v64 = 2112;
        v65 = v35;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply could not be parsed (error=%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
      [(HMDDataStreamSetupOperation *)v41 postDidFailWithError:v44];

      goto LABEL_45;
    }

    status = [v34 status];

    if (!status)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = v56;
      v47 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
LABEL_43:

        objc_autoreleasePoolPop(v45);
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
LABEL_44:
        [(HMDDataStreamSetupOperation *)v46 postDidFailWithError:v35];
LABEL_45:

        goto LABEL_46;
      }

      v48 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v48;
      v49 = "%{public}@[Start Stream] The setup transfer write reply did not have status";
LABEL_42:
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, v49, buf, 0xCu);

      goto LABEL_43;
    }

    status2 = [v34 status];
    value2 = [status2 value];
    if (value2 == 1)
    {
      v39 = 52;
    }

    else
    {
      if (value2 != 2)
      {

LABEL_38:
        parameters = [v34 parameters];

        if (parameters)
        {
          [(HMDDataStreamSetupOperation *)v56 processTransportSetupResponse:v34];
LABEL_46:

          goto LABEL_20;
        }

        v45 = objc_autoreleasePoolPush();
        v46 = v56;
        v47 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v63 = v48;
        v49 = "%{public}@[Start Stream] The setup transfer write reply did not contain setup parameters";
        goto LABEL_42;
      }

      v39 = 16;
    }

    v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v39];

    if (v35)
    {
      v50 = objc_autoreleasePoolPush();
      v46 = v56;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        status3 = [v34 status];
        [status3 value];
        v54 = HAPDataStreamTransportCommandStatusAsString();
        *buf = 138543618;
        v63 = v52;
        v64 = 2112;
        v65 = v54;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write failed with status %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_11:

LABEL_17:
  v27 = objc_autoreleasePoolPush();
  v28 = v56;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v63 = v30;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply does not contain a response", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
  [(HMDDataStreamSetupOperation *)v28 postDidFailWithError:v19];
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)postDidSucceedWithTransport:(id)transport sessionEncryption:(id)encryption
{
  transportCopy = transport;
  encryptionCopy = encryption;
  queue = [(HMDDataStreamSetupOperation *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDDataStreamSetupOperation_postDidSucceedWithTransport_sessionEncryption___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = transportCopy;
  v13 = encryptionCopy;
  v9 = encryptionCopy;
  v10 = transportCopy;
  dispatch_async(queue, block);
}

void __77__HMDDataStreamSetupOperation_postDidSucceedWithTransport_sessionEncryption___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataStreamSetupOperation:*(a1 + 32) didSucceedWithTransport:*(a1 + 40) sessionEncryption:*(a1 + 48)];
}

- (void)postDidFailWithError:(id)error
{
  errorCopy = error;
  queue = [(HMDDataStreamSetupOperation *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDDataStreamSetupOperation_postDidFailWithError___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __52__HMDDataStreamSetupOperation_postDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataStreamSetupOperation:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)dealloc
{
  [(HMDDataStreamSetupOperation *)self _clearPendingBulkSendListeners];
  v3.receiver = self;
  v3.super_class = HMDDataStreamSetupOperation;
  [(HMDDataStreamSetupOperation *)&v3 dealloc];
}

- (HMDDataStreamSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service
{
  accessoryCopy = accessory;
  queueCopy = queue;
  identifierCopy = identifier;
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = HMDDataStreamSetupOperation;
  v15 = [(HMDDataStreamSetupOperation *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessory, accessory);
    objc_storeStrong(&v16->_queue, queue);
    objc_storeStrong(&v16->_logIdentifier, identifier);
    objc_storeStrong(&v16->_transferManagementService, service);
    v17 = [MEMORY[0x277CBEB58] set];
    pendingBulkSendListeners = v16->_pendingBulkSendListeners;
    v16->_pendingBulkSendListeners = v17;
  }

  return v16;
}

+ (id)tcpSetupOperationWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service
{
  serviceCopy = service;
  identifierCopy = identifier;
  queueCopy = queue;
  accessoryCopy = accessory;
  v13 = [[HMDDataStreamTCPSetupOperation alloc] initWithAccessory:accessoryCopy queue:queueCopy logIdentifier:identifierCopy transferManagementService:serviceCopy];

  return v13;
}

@end