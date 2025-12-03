@interface HMDSecureRemoteSession
+ (BOOL)isSecureRemoteSessionMessage:(id)message;
+ (id)logCategory;
- (HMDSecureRemoteSession)init;
- (HMDSecureRemoteSession)initWithDevice:(id)device deviceMonitor:(id)monitor accountRegistry:(id)registry;
- (HMDSecureRemoteSession)initWithDevice:(id)device deviceMonitor:(id)monitor accountRegistry:(id)registry dataSource:(id)source;
- (NSArray)clientStreams;
- (NSArray)pendingMessages;
- (NSArray)serverStreams;
- (id)_clientStreamForMessage:(id)message;
- (id)_clientStreamWithIdentiifer:(id)identiifer;
- (id)_dequeMessage;
- (id)_serverStreamWithIdentifier:(id)identifier;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (void)_closeClientStream:(id)stream error:(id)error;
- (void)_closeServerStream:(id)stream error:(id)error;
- (void)_closeWithError:(id)error;
- (void)_handleSecureClientMessage:(id)message fromDevice:(id)device transport:(id)transport;
- (void)_handleSecureServerMessage:(id)message fromDevice:(id)device transport:(id)transport;
- (void)_handleStreamInvalidationMessage:(id)message;
- (void)_openClientStreamWithCompletionHandler:(id)handler;
- (void)_openServerStreamWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_queueMessage:(id)message;
- (void)close;
- (void)dealloc;
- (void)handleDeviceIsNotReachable:(id)reachable;
- (void)handleDeviceIsReachable:(id)reachable;
- (void)messageTransport:(id)transport didReceiveMessage:(id)message;
- (void)openWithCompletionHandler:(id)handler;
- (void)receivedSecureMessage:(id)message fromDevice:(id)device fromTransport:(id)transport;
- (void)secureRemoteStream:(id)stream didCloseWithError:(id)error;
- (void)secureRemoteStream:(id)stream receivedRequestToSendMessage:(id)message;
- (void)secureRemoteStreamIsIdle:(id)idle;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDSecureRemoteSession

- (void)timerDidFire:(id)fire
{
  v26 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  os_unfair_lock_lock_with_options();
  pendingMessages = self->_pendingMessages;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__HMDSecureRemoteSession_timerDidFire___block_invoke;
  v20[3] = &unk_279726578;
  v7 = fireCopy;
  v21 = v7;
  v8 = [(NSMutableArray *)pendingMessages hmf_objectPassingTest:v20];
  if (v8)
  {
    [(NSMutableArray *)self->_pendingMessages removeObject:v8];

    os_unfair_lock_unlock(&self->_lock);
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      message = [v8 message];
      shortDescription = [message shortDescription];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = shortDescription;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Queued message timed out: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    message2 = [v8 message];
    responseHandler = [message2 responseHandler];

    if (responseHandler)
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      responseHandler2 = [message2 responseHandler];
      (responseHandler2)[2](responseHandler2, v17, 0);
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __39__HMDSecureRemoteSession_timerDidFire___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 timer];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)logIdentifier
{
  device = [(HMDSecureRemoteSession *)self device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __52__HMDSecureRemoteSession_dumpStateWithPrivacyLevel___block_invoke;
  v12 = &unk_2797359B0;
  v13 = dictionary;
  selfCopy = self;
  v6 = dictionary;
  dispatch_sync(clientQueue, &v9);

  v7 = [v6 copy];

  return v7;
}

void __52__HMDSecureRemoteSession_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu", objc_msgSend(*(a1 + 40), "maximumRemoteStreams")];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"maximumStreams"];

  v3 = [*(a1 + 40) device];
  v4 = [v3 shortDescription];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"device"];

  v5 = [*(a1 + 40) pendingMessages];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      v11 = 0;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v39 + 1) + 8 * v11) message];
        v13 = [v12 shortDescription];
        [v6 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"queuedMessages"];
  v14 = [*(a1 + 40) clientStreams];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
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

        v21 = [*(*(&v35 + 1) + 8 * v20) description];
        [v15 addObject:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v18);
  }

  [*(a1 + 32) setObject:v15 forKeyedSubscript:@"clientStreams"];
  v22 = [*(a1 + 40) serverStreams];
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      v28 = 0;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v31 + 1) + 8 * v28) description];
        [v23 addObject:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v26);
  }

  [*(a1 + 32) setObject:v23 forKeyedSubscript:@"serverStreams"];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)transport didReceiveMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  messageCopy = message;
  delegate = [(HMFMessageTransport *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate messageTransport:self didReceiveMessage:messageCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = messageCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Cannot send message, no delegate: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    responseHandler = [messageCopy responseHandler];

    if (responseHandler)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      responseHandler2 = [messageCopy responseHandler];
      (responseHandler2)[2](responseHandler2, v14, 0);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)secureRemoteStream:(id)stream receivedRequestToSendMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  messageCopy = message;
  delegate = [(HMFMessageTransport *)self delegate];
  if ([delegate conformsToProtocol:&unk_2866F2CA8])
  {
    v9 = delegate;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (objc_opt_respondsToSelector())
  {
    [v10 secureRemoteSession:self receivedRequestToSendMessage:messageCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = messageCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Cannot send message, no delegate: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    responseHandler = [messageCopy responseHandler];

    if (responseHandler)
    {
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      responseHandler2 = [messageCopy responseHandler];
      (responseHandler2)[2](responseHandler2, v16, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)secureRemoteStream:(id)stream didCloseWithError:(id)error
{
  streamCopy = stream;
  errorCopy = error;
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDSecureRemoteSession_secureRemoteStream_didCloseWithError___block_invoke;
  block[3] = &unk_279734960;
  v12 = streamCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = streamCopy;
  dispatch_async(clientQueue, block);
}

uint64_t __63__HMDSecureRemoteSession_secureRemoteStream_didCloseWithError___block_invoke(uint64_t *a1)
{
  if ([a1[4] role] == 1)
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = a1[6];

    return [v2 _closeClientStream:v3 error:v4];
  }

  else
  {
    result = [a1[4] role];
    if (result == 2)
    {
      v7 = a1[4];
      v6 = a1[5];
      v8 = a1[6];

      return [v6 _closeServerStream:v7 error:v8];
    }
  }

  return result;
}

- (void)secureRemoteStreamIsIdle:(id)idle
{
  idleCopy = idle;
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDSecureRemoteSession_secureRemoteStreamIsIdle___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = idleCopy;
  v6 = idleCopy;
  dispatch_async(clientQueue, v7);
}

void __51__HMDSecureRemoteSession_secureRemoteStreamIsIdle___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Stream is idle: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) isOpen])
  {
    if ([*(a1 + 40) role] == 1)
    {
      v7 = [*(a1 + 32) pendingMessages];
      v8 = [v7 firstObject];
      v9 = [v8 message];
      [v9 qualityOfService];
      [*(a1 + 40) qualityOfService];
      v10 = HMFQualityOfServiceCompare();

      if (v10 != -1)
      {
        v11 = [*(a1 + 32) _dequeMessage];
        if (v11)
        {
          [*(a1 + 40) sendMessage:v11 completionHandler:0];
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_closeServerStream:(id)stream error:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  if (![(NSMutableArray *)self->_serverStreams containsObject:streamCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_21;
  }

  [(NSMutableArray *)self->_serverStreams removeObject:streamCopy];
  v33 = [(NSMutableArray *)self->_serverStreams copy];
  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v11;
    v44 = 2112;
    v45 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Server stream stopped due to error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  delegate = [(HMFMessageTransport *)selfCopy delegate];
  if ([delegate conformsToProtocol:&unk_2866F2CA8])
  {
    v13 = delegate;
  }

  else
  {
    v13 = 0;
  }

  v34 = v13;

  if (objc_opt_respondsToSelector())
  {
    domain = [errorCopy domain];
    if (![domain isEqualToString:*MEMORY[0x277CCA590]])
    {
LABEL_18:

      goto LABEL_19;
    }

    v15 = [errorCopy code] == -6722;

    if (!v15)
    {
      domain = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HMDSecureRemoteSession maximumRemoteStreams](selfCopy, "maximumRemoteStreams")}];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v16 = v33;
      v17 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v17)
      {
        v18 = *v36;
        do
        {
          v19 = 0;
          do
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v16);
            }

            sessionID = [*(*(&v35 + 1) + 8 * v19) sessionID];
            uUIDString = [sessionID UUIDString];
            [domain addObject:uUIDString];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v17);
      }

      v22 = [HMDRemoteDeviceMessageDestination alloc];
      allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
      target = [allMessageDestinations target];
      peerDevice = [streamCopy peerDevice];
      v26 = [(HMDRemoteDeviceMessageDestination *)v22 initWithTarget:target device:peerDevice];

      v27 = MEMORY[0x277D0F818];
      v39[0] = @"kIDSSecureSessionIDKey";
      sessionID2 = [streamCopy sessionID];
      uUIDString2 = [sessionID2 UUIDString];
      v39[1] = @"streams";
      v40[0] = uUIDString2;
      v40[1] = domain;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v31 = [v27 messageWithName:@"kSecureSessionInvalidatedNotificationKey" destination:v26 payload:v30];

      [v34 secureRemoteSession:selfCopy receivedRequestToSendMessage:v31];
      goto LABEL_18;
    }
  }

LABEL_19:

LABEL_21:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)_openServerStreamWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  serverStreams = [(HMDSecureRemoteSession *)self serverStreams];
  v9 = [serverStreams mutableCopy];

  v10 = [v9 count];
  if (v10 >= [(HMDSecureRemoteSession *)self maximumRemoteStreams])
  {
    [v9 sortUsingComparator:&__block_literal_global_48875];
    firstObject = [v9 firstObject];
    [firstObject stop];
  }

  dataSource = [(HMDSecureRemoteSession *)self dataSource];
  device = [(HMDSecureRemoteSession *)self device];
  v14 = [dataSource createSecureStreamWithPeerDevice:device clientMode:0 sessionID:identifierCopy];

  [v14 setDelegate:self];
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_serverStreams addObject:v14];
  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v14);
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__HMDSecureRemoteSession__openServerStreamWithIdentifier_completionHandler___block_invoke_2;
  v17[3] = &unk_279726528;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  v16 = handlerCopy;
  v18 = v16;
  [v14 startAndInvokeOnQueue:clientQueue completionHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __76__HMDSecureRemoteSession__openServerStreamWithIdentifier_completionHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained clientQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__HMDSecureRemoteSession__openServerStreamWithIdentifier_completionHandler___block_invoke_3;
    v7[3] = &unk_279733CA8;
    objc_copyWeak(&v11, a1 + 6);
    v8 = v3;
    v9 = v5;
    v10 = a1[4];
    dispatch_async(v6, v7);

    objc_destroyWeak(&v11);
  }
}

void __76__HMDSecureRemoteSession__openServerStreamWithIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      v12 = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Failed to start server stream due to error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    if (WeakRetained && [*(*(a1 + 40) + 40) containsObject:WeakRetained])
    {
      [*(*(a1 + 40) + 40) removeObject:WeakRetained];
      os_unfair_lock_unlock(v8 + 4);
      [WeakRetained stop];
    }

    else
    {
      os_unfair_lock_unlock(v8 + 4);
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    if (*(a1 + 32))
    {
      v10 = 0;
    }

    else
    {
      v10 = WeakRetained;
    }

    (*(v9 + 16))(v9, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __76__HMDSecureRemoteSession__openServerStreamWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v5;
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

  v11 = [v7 lastActivity];

  v12 = [v10 lastActivity];

  v13 = [v11 compare:v12];
  return v13;
}

- (void)_closeClientStream:(id)stream error:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  if (![(NSMutableArray *)self->_clientStreams containsObject:streamCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = 0;
    goto LABEL_28;
  }

  [(NSMutableArray *)self->_clientStreams removeObject:streamCopy];
  v8 = [(NSMutableArray *)self->_clientStreams copy];
  os_unfair_lock_unlock(&self->_lock);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v12;
    v39 = 2112;
    v40 = errorCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Client stream stopped due to error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if ([v8 hmf_isEmpty])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Last client stream closed, attempting to open a new client stream", buf, 0xCu);
    }

LABEL_7:

    objc_autoreleasePoolPop(v13);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __51__HMDSecureRemoteSession__closeClientStream_error___block_invoke;
    v31[3] = &unk_279726550;
    v31[4] = selfCopy;
    [(HMDSecureRemoteSession *)selfCopy _openClientStreamWithCompletionHandler:v31];
    goto LABEL_21;
  }

  if ([streamCopy qualityOfService] == 9)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = *v33;
      while (2)
      {
        v20 = 0;
        do
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v17);
          }

          if ([*(*(&v32 + 1) + 8 * v20) qualityOfService] == 9)
          {

            goto LABEL_21;
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v21;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Last background client stream closed, attempting to open a new client stream", buf, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_21:
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA590]])
    {
      v23 = [errorCopy code] == -6722;

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v38 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Confirming the remote device is reachable due to stream error", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        deviceMonitor = [(HMDSecureRemoteSession *)v25 deviceMonitor];
        device = [(HMDSecureRemoteSession *)v25 device];
        [deviceMonitor confirmDevice:device forClient:v25 timeout:0 completionHandler:0.0];
      }
    }

    else
    {
    }
  }

LABEL_28:

  v30 = *MEMORY[0x277D85DE8];
}

void __51__HMDSecureRemoteSession__closeClientStream_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to open primary stream, closing session", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _closeWithError:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_openClientStreamWithCompletionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  clientStreams = [(HMDSecureRemoteSession *)self clientStreams];
  v6 = [clientStreams count];
  v7 = v6 < [(HMDSecureRemoteSession *)self maximumRemoteStreams];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Opening client stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    dataSource = [(HMDSecureRemoteSession *)selfCopy dataSource];
    device = [(HMDSecureRemoteSession *)selfCopy device];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v16 = [dataSource createSecureStreamWithPeerDevice:device clientMode:1 sessionID:uUID];

    [v16 setDelegate:selfCopy];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = clientStreams;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v18)
    {
      v19 = *v35;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v17);
          }

          if ([*(*(&v34 + 1) + 8 * i) qualityOfService] == 9)
          {
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              v26 = HMFQualityOfServiceToString();
              *buf = 138543618;
              v39 = v25;
              v40 = 2112;
              v41 = v26;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Setting QoS to %@ for client stream", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            [v16 setQualityOfService:17];
            goto LABEL_20;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)selfCopy->_clientStreams addObject:v16];
    os_unfair_lock_unlock(&selfCopy->_lock);
    objc_initWeak(buf, selfCopy);
    objc_initWeak(&location, v16);
    clientQueue = [(HMDSecureRemoteSession *)selfCopy clientQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __65__HMDSecureRemoteSession__openClientStreamWithCompletionHandler___block_invoke;
    v29[3] = &unk_279726528;
    objc_copyWeak(&v31, buf);
    objc_copyWeak(&v32, &location);
    v30 = handlerCopy;
    [v16 startAndInvokeOnQueue:clientQueue completionHandler:v29];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    goto LABEL_21;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v21;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Cannot open additional streams", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (handlerCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:49];
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
LABEL_21:
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __65__HMDSecureRemoteSession__openClientStreamWithCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained clientQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__HMDSecureRemoteSession__openClientStreamWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_279733CA8;
    objc_copyWeak(&v11, a1 + 6);
    v8 = v3;
    v9 = v5;
    v10 = a1[4];
    dispatch_async(v6, v7);

    objc_destroyWeak(&v11);
  }
}

void __65__HMDSecureRemoteSession__openClientStreamWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v28 = 138543618;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to start client stream due to error: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    if (v3 && [*(*(a1 + 40) + 32) containsObject:v3])
    {
      [*(*(a1 + 40) + 32) removeObject:v3];
      os_unfair_lock_unlock(v9 + 4);
      [v3 stop];
    }

    else
    {
      os_unfair_lock_unlock(v9 + 4);
    }

    v10 = [*(a1 + 32) domain];
    if ([v10 isEqualToString:*MEMORY[0x277CCA590]])
    {
      v11 = [*(a1 + 32) code] == -6722;

      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Confirming the remote device is reachable", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v10 = [*(a1 + 40) deviceMonitor];
      v16 = [*(a1 + 40) device];
      [v10 confirmDevice:v16 forClient:*(a1 + 40) timeout:0 completionHandler:0.0];
    }

    goto LABEL_19;
  }

  if (WeakRetained)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v20;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Opened client stream: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [*(a1 + 40) pendingMessages];
    v22 = [v21 firstObject];
    v23 = [v22 message];
    [v23 qualityOfService];
    [v3 qualityOfService];
    v24 = HMFQualityOfServiceCompare();

    if (v24 != -1)
    {
      v10 = [*(a1 + 40) _dequeMessage];
      if (v10)
      {
        [v3 sendMessage:v10 completionHandler:0];
      }

LABEL_19:
    }
  }

LABEL_20:
  v25 = *(a1 + 48);
  if (v25)
  {
    if (*(a1 + 32))
    {
      v26 = 0;
    }

    else
    {
      v26 = v3;
    }

    (*(v25 + 16))(v25, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_serverStreamWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  serverStreams = [(HMDSecureRemoteSession *)self serverStreams];
  v6 = [serverStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(serverStreams);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        sessionID = [v9 sessionID];
        v11 = [sessionID isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [serverStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_clientStreamForMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  clientStreams = [(HMDSecureRemoteSession *)self clientStreams];
  v6 = [clientStreams countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(clientStreams);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [messageCopy qualityOfService];
        [v9 qualityOfService];
        if (HMFQualityOfServiceCompare() != -1 && [v9 isOpen] && (objc_msgSend(v9, "isIdle") & 1) != 0)
        {
          v6 = v9;
          goto LABEL_13;
        }
      }

      v6 = [clientStreams countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_clientStreamWithIdentiifer:(id)identiifer
{
  v19 = *MEMORY[0x277D85DE8];
  identiiferCopy = identiifer;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientStreams = [(HMDSecureRemoteSession *)self clientStreams];
  v6 = [clientStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(clientStreams);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        sessionID = [v9 sessionID];
        v11 = [sessionID isEqual:identiiferCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [clientStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)handleDeviceIsNotReachable:(id)reachable
{
  object = [reachable object];
  device = [(HMDSecureRemoteSession *)self device];
  v6 = [object isEqual:device];

  if (v6)
  {
    clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDSecureRemoteSession_handleDeviceIsNotReachable___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(clientQueue, block);
  }
}

uint64_t __53__HMDSecureRemoteSession_handleDeviceIsNotReachable___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isReachable];
  if (result)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification device is no longer reachable", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) setReachable:0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleDeviceIsReachable:(id)reachable
{
  object = [reachable object];
  device = [(HMDSecureRemoteSession *)self device];
  v6 = [object isEqual:device];

  if (v6)
  {
    clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDSecureRemoteSession_handleDeviceIsReachable___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(clientQueue, block);
  }
}

void __50__HMDSecureRemoteSession_handleDeviceIsReachable___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isReachable] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification device is reachable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) setReachable:1];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [*(a1 + 32) clientStreams];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if ([v11 isOpen])
          {
            v12 = [*(a1 + 32) pendingMessages];
            v13 = [v12 firstObject];
            v14 = [v13 message];
            [v14 qualityOfService];
            [v11 qualityOfService];
            v15 = HMFQualityOfServiceCompare();

            if (v15 != -1)
            {
              v16 = [*(a1 + 32) _dequeMessage];
              if (v16)
              {
                [v11 sendMessage:v16 completionHandler:0];
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v17 = [*(a1 + 32) pendingMessages];
    v18 = [v17 count];

    if (v18)
    {
      for (j = 0; j != v18; ++j)
      {
        if (j >= [*(a1 + 32) maximumRemoteStreams])
        {
          break;
        }

        [*(a1 + 32) _openClientStreamWithCompletionHandler:0];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleStreamInvalidationMessage:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy uuidForKey:@"kIDSSecureSessionIDKey"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v9;
    v47 = 2112;
    v48 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received invalidation message for stream %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDSecureRemoteSession *)selfCopy _clientStreamWithIdentiifer:v5];
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v14;
      v47 = 2112;
      v48 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Closing stream due to remote invalidation: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [v10 stop];
  }

  v15 = [messageCopy arrayForKey:@"streams"];
  if (v15)
  {
    v36 = v10;
    v37 = v5;
    v38 = messageCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    clientStreams = [(HMDSecureRemoteSession *)selfCopy clientStreams];
    v17 = [clientStreams countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v41;
      do
      {
        v20 = 0;
        v39 = v18;
        do
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(clientStreams);
          }

          v21 = *(*(&v40 + 1) + 8 * v20);
          sessionID = [v21 sessionID];
          uUIDString = [sessionID UUIDString];
          v24 = [v15 containsObject:uUIDString];

          if ((v24 & 1) == 0)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = selfCopy;
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              HMFGetLogIdentifier();
              v28 = v19;
              v29 = v15;
              v30 = clientStreams;
              v32 = v31 = selfCopy;
              *buf = 138543618;
              v46 = v32;
              v47 = 2112;
              v48 = v21;
              _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Closing inactive stream due to remote invalidation: %@", buf, 0x16u);

              selfCopy = v31;
              clientStreams = v30;
              v15 = v29;
              v19 = v28;
              v18 = v39;
            }

            objc_autoreleasePoolPop(v25);
            [v21 stop];
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [clientStreams countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v18);
    }

    v5 = v37;
    messageCopy = v38;
    v10 = v36;
  }

  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureServerMessage:(id)message fromDevice:(id)device transport:(id)transport
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  deviceCopy = device;
  transportCopy = transport;
  v11 = [messageCopy uuidForKey:@"kIDSSecureSessionIDKey"];
  v12 = transportCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [(HMDSecureRemoteSession *)self _clientStreamWithIdentiifer:v11];
  if (v15 && v14)
  {
    messagePayload = [messageCopy messagePayload];
    [v15 handleSecureMessage:messagePayload fromDevice:deviceCopy fromTransport:v14];

    v17 = 0;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v21 = v27 = deviceCopy;
      clientStreams = [(HMDSecureRemoteSession *)selfCopy clientStreams];
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = clientStreams;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Stream not found: %@", buf, 0x16u);

      deviceCopy = v27;
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    device = [(HMDSecureRemoteSession *)selfCopy device];
    [v14 postDidReceiveRemoteMessageWithNoListenerFromDevice:device];
  }

  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v17, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureClientMessage:(id)message fromDevice:(id)device transport:(id)transport
{
  messageCopy = message;
  deviceCopy = device;
  transportCopy = transport;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x259C01AE0](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Messaging/Remote/Secure/HMDSecureRemoteSession.m", 624];
  v30 = [v12 initWithName:v15];

  v16 = [messageCopy uuidForKey:@"kIDSSecureSessionIDKey"];
  v17 = transportCopy;
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

  v20 = [(HMDSecureRemoteSession *)self _serverStreamWithIdentifier:v16];
  if (!v20 || !v19)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74__HMDSecureRemoteSession__handleSecureClientMessage_fromDevice_transport___block_invoke;
    v24[3] = &unk_279726500;
    v25 = v30;
    v26 = messageCopy;
    v27 = deviceCopy;
    v28 = v19;
    [(HMDSecureRemoteSession *)self _openServerStreamWithIdentifier:v16 completionHandler:v24];

    responseHandler2 = v25;
    goto LABEL_9;
  }

  [v30 begin];
  v29 = v30;
  messagePayload = [messageCopy messagePayload];
  [v20 handleSecureMessage:messagePayload fromDevice:deviceCopy fromTransport:v19];

  __HMFActivityScopeLeave();
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
LABEL_9:
  }

  __HMFActivityScopeLeave();
}

void __74__HMDSecureRemoteSession__handleSecureClientMessage_fromDevice_transport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    [*(a1 + 32) begin];
    v10 = *(a1 + 32);
    v7 = [*(a1 + 40) messagePayload];
    [v5 handleSecureMessage:v7 fromDevice:*(a1 + 48) fromTransport:*(a1 + 56)];

    __HMFActivityScopeLeave();
  }

  v8 = [*(a1 + 40) responseHandler];

  if (v8)
  {
    v9 = [*(a1 + 40) responseHandler];
    (v9)[2](v9, v6, 0);
  }
}

- (void)receivedSecureMessage:(id)message fromDevice:(id)device fromTransport:(id)transport
{
  messageCopy = message;
  deviceCopy = device;
  transportCopy = transport;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDSecureRemoteSession_receivedSecureMessage_fromDevice_fromTransport___block_invoke;
  block[3] = &unk_2797352C0;
  v18 = currentActivity;
  v19 = messageCopy;
  selfCopy = self;
  v21 = deviceCopy;
  v22 = transportCopy;
  v13 = transportCopy;
  v14 = deviceCopy;
  v15 = messageCopy;
  v16 = currentActivity;
  dispatch_async(clientQueue, block);
}

void __73__HMDSecureRemoteSession_receivedSecureMessage_fromDevice_fromTransport___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) name];
  if ([v5 isEqualToString:@"kSecureClientIDSMessageRequestKey"])
  {
    [*(a1 + 48) _handleSecureClientMessage:*(a1 + 40) fromDevice:*(a1 + 56) transport:*(a1 + 64)];
  }

  else if ([v5 isEqualToString:@"kSecureServerIDSMessageRequestKey"])
  {
    [*(a1 + 48) _handleSecureServerMessage:*(a1 + 40) fromDevice:*(a1 + 56) transport:*(a1 + 64)];
  }

  else if ([v5 isEqualToString:@"kSecureSessionInvalidatedNotificationKey"])
  {
    [*(a1 + 48) _handleStreamInvalidationMessage:*(a1 + 40)];
  }

  else
  {
    v2 = [*(a1 + 40) responseHandler];

    if (v2)
    {
      v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v4 = [*(a1 + 40) responseHandler];
      (v4)[2](v4, v3, 0);
    }
  }
}

- (id)_dequeMessage
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HMDSecureRemoteSession *)self isReachable])
  {
    os_unfair_lock_lock_with_options();
    popFirstObject = [(NSMutableArray *)self->_pendingMessages popFirstObject];
    os_unfair_lock_unlock(&self->_lock);
    if (popFirstObject)
    {
      timer = [popFirstObject timer];
      [timer suspend];

      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        message = [popFirstObject message];
        v13 = 138543618;
        v14 = v8;
        v15 = 2112;
        v16 = message;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Dequeuing message: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      message2 = [popFirstObject message];
    }

    else
    {
      message2 = 0;
    }
  }

  else
  {
    message2 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return message2;
}

- (void)_queueMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Queueing message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[_HMDSecureRemoteQueuedMessage alloc] initWithMessage:messageCopy];
  timer = [(_HMDSecureRemoteQueuedMessage *)v9 timer];
  [timer setDelegate:selfCopy];

  timer2 = [(_HMDSecureRemoteQueuedMessage *)v9 timer];
  clientQueue = [(HMDSecureRemoteSession *)selfCopy clientQueue];
  [timer2 setDelegateQueue:clientQueue];

  timer3 = [(_HMDSecureRemoteQueuedMessage *)v9 timer];
  [timer3 resume];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v42 = 0;
  os_unfair_lock_lock_with_options();
  pendingMessages = selfCopy->_pendingMessages;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __40__HMDSecureRemoteSession__queueMessage___block_invoke;
  v32 = &unk_2797264D8;
  v15 = messageCopy;
  v33 = v15;
  v34 = buf;
  [(NSMutableArray *)pendingMessages hmf_enumerateWithAutoreleasePoolUsingBlock:&v29];
  [(NSMutableArray *)selfCopy->_pendingMessages insertObject:v9 atIndex:*(*&buf[8] + 24), v29, v30, v31, v32];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    identifier = [v15 identifier];
    uUIDString = [identifier UUIDString];
    v22 = *(*&buf[8] + 24);
    *v35 = 138543874;
    v36 = v19;
    v37 = 2112;
    v38 = uUIDString;
    v39 = 2048;
    v40 = v22;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Message, %@, queued at position %tu", v35, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v23 = objc_autoreleasePoolPush();
  v24 = v17;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    pendingMessages = [(HMDSecureRemoteSession *)v24 pendingMessages];
    *v35 = 138543618;
    v36 = v26;
    v37 = 2112;
    v38 = pendingMessages;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Queued messages: %@", v35, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  _Block_object_dispose(buf, 8);

  v28 = *MEMORY[0x277D85DE8];
}

void __40__HMDSecureRemoteSession__queueMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 qualityOfService];
  v9 = [v8 message];

  [v9 qualityOfService];
  v10 = HMFQualityOfServiceCompare();

  if (v10 == 1)
  {
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3 + 1;
  }
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HMDSecureRemoteSession_sendMessage_completionHandler___block_invoke;
  v13[3] = &unk_279734578;
  v14 = currentActivity;
  selfCopy = self;
  v16 = messageCopy;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  v12 = currentActivity;
  dispatch_async(clientQueue, v13);
}

void __56__HMDSecureRemoteSession_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 40) state])
  {
    v20 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v20;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;

    if (!v3)
    {
      v4 = [*(a1 + 48) name];
      v5 = [*(a1 + 48) destination];
      v6 = [*(a1 + 48) messagePayload];
      v20 = [HMDRemoteMessage secureMessageWithName:v4 destination:v5 messagePayload:v6];

      v7 = [*(a1 + 48) identifier];
      [v20 setIdentifier:v7];

      v8 = [*(a1 + 48) responseHandler];
      [v20 setResponseHandler:v8];
    }

    v9 = [*(a1 + 40) _clientStreamForMessage:v20];
    if (v9 && [*(a1 + 40) isReachable])
    {
      [v9 sendMessage:v20 completionHandler:*(a1 + 56)];
    }

    else
    {
      [*(a1 + 40) _queueMessage:v20];
      [*(a1 + 40) _openClientStreamWithCompletionHandler:0];
      v10 = *(a1 + 56);
      if (v10)
      {
        (*(v10 + 16))(v10, 0);
      }
    }

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 48) shortDescription];
      *buf = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot send message on closed session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v18 = *(a1 + 56);
    if (v18)
    {
      (*(v18 + 16))(v18, v17);
    }

    [*(a1 + 48) respondWithError:v17];

    v19 = *MEMORY[0x277D85DE8];
  }
}

- (void)_closeWithError:(id)error
{
  v58 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v35 = errorCopy;
  if (errorCopy)
  {
    v38 = errorCopy;
  }

  else
  {
    v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v55 = v8;
    v56 = 2112;
    v57 = v35;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Closed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSecureRemoteSession *)selfCopy setState:0];
  delegate = [(HMFMessageTransport *)selfCopy delegate];
  if ([delegate conformsToProtocol:&unk_2866F2CA8])
  {
    v10 = delegate;
  }

  else
  {
    v10 = 0;
  }

  v36 = v10;

  if (objc_opt_respondsToSelector())
  {
    [v36 secureRemoteSession:selfCopy didCloseWithError:v35];
  }

  os_unfair_lock_lock_with_options();
  v11 = [(NSMutableArray *)selfCopy->_pendingMessages copy];
  [(NSMutableArray *)selfCopy->_pendingMessages removeAllObjects];
  v34 = [(NSMutableArray *)selfCopy->_clientStreams copy];
  [(NSMutableArray *)selfCopy->_clientStreams removeAllObjects];
  v33 = [(NSMutableArray *)selfCopy->_serverStreams copy];
  [(NSMutableArray *)selfCopy->_serverStreams removeAllObjects];
  os_unfair_lock_unlock(&selfCopy->_lock);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v12)
  {
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(obj);
        }

        message = [*(*(&v47 + 1) + 8 * i) message];
        v16 = objc_autoreleasePoolPush();
        v17 = selfCopy;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v19;
          v56 = 2114;
          v57 = message;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Cancelling queued message: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        responseHandler = [message responseHandler];

        if (responseHandler)
        {
          responseHandler2 = [message responseHandler];
          (responseHandler2)[2](responseHandler2, v38, 0);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = v34;
  v23 = [v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v23)
  {
    v24 = *v44;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v43 + 1) + 8 * j) stop];
      }

      v23 = [v22 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v23);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = v33;
  v27 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v27)
  {
    v28 = *v40;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v39 + 1) + 8 * k) stop];
      }

      v27 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v27);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:@"HMDRemoteDeviceIsReachableNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:selfCopy name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDSecureRemoteSession_close__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMDSecureRemoteSession *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDSecureRemoteSession_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);
}

void __52__HMDSecureRemoteSession_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Session already opened", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }

  else
  {
    if (v6)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Opening", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setState:1];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:*(a1 + 32) selector:sel_handleDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:*(a1 + 32) selector:sel_handleDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

    v12 = [*(a1 + 32) deviceMonitor];
    v13 = [v12 unreachableDevices];
    v14 = [*(a1 + 32) device];
    v15 = [v13 containsObject:v14];

    [*(a1 + 32) setReachable:v15 ^ 1u];
    v16 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__HMDSecureRemoteSession_openWithCompletionHandler___block_invoke_108;
    v18[3] = &unk_2797264B0;
    v18[4] = v16;
    v19 = *(a1 + 40);
    [v16 _openClientStreamWithCompletionHandler:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __52__HMDSecureRemoteSession_openWithCompletionHandler___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Opened", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setState:2];
    v12 = [v5 maximumRemoteStreams];
    v13 = v12;
    if (v12)
    {
      v14 = maximumSecureRemoteStreams;
      v15 = [v12 unsignedIntegerValue];
      if (v14 >= v15)
      {
        v14 = v15;
      }

      if (v14 != [*(a1 + 32) maximumRemoteStreams])
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v24 = 138543618;
          v25 = v19;
          v26 = 2048;
          v27 = v14;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Upgrading number of streams to '%tu'", &v24, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        [*(a1 + 32) setMaximumRemoteStreams:v14];
      }
    }

    v20 = v6;
  }

  else
  {
    if (v10)
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to open initial client stream with error: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v20 = v6;
    if (!v6)
    {
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    }

    [*(a1 + 32) _closeWithError:v6];
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (NSArray)serverStreams
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_serverStreams copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)clientStreams
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_clientStreams copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)pendingMessages
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_pendingMessages copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_state)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Secure Remote Session abandoned without being closed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMFMessageTransport *)selfCopy setDelegate:0];
    [(HMDSecureRemoteSession *)selfCopy _closeWithError:0];
  }

  v8.receiver = self;
  v8.super_class = HMDSecureRemoteSession;
  [(HMDSecureRemoteSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDSecureRemoteSession)initWithDevice:(id)device deviceMonitor:(id)monitor accountRegistry:(id)registry dataSource:(id)source
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  monitorCopy = monitor;
  registryCopy = registry;
  sourceCopy = source;
  if (!deviceCopy)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v31;
    v32 = "%{public}@Device is required for HMDSecureRemoteSession";
LABEL_13:
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);

    goto LABEL_14;
  }

  if (!monitorCopy)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v31;
    v32 = "%{public}@Device monitor is required for HMDSecureRemoteSession";
    goto LABEL_13;
  }

  if (!registryCopy)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v31;
      v32 = "%{public}@Account registry is required for HMDSecureRemoteSession";
      goto LABEL_13;
    }

LABEL_14:

    objc_autoreleasePoolPop(v29);
    selfCopy = 0;
    goto LABEL_15;
  }

  v35.receiver = self;
  v35.super_class = HMDSecureRemoteSession;
  v15 = [(HMDSecureRemoteSession *)&v35 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_dataSource, source);
    objc_storeStrong(&v16->_device, device);
    objc_storeStrong(&v16->_deviceMonitor, monitor);
    objc_storeStrong(&v16->_accountRegistry, registry);
    v17 = HMDispatchQueueNameString();
    uTF8String = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String, v19);
    clientQueue = v16->_clientQueue;
    v16->_clientQueue = v20;

    v16->_maximumRemoteStreams = 1;
    v16->_reachable = 1;
    array = [MEMORY[0x277CBEB18] array];
    pendingMessages = v16->_pendingMessages;
    v16->_pendingMessages = array;

    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HMDSecureRemoteSession maximumRemoteStreams](v16, "maximumRemoteStreams")}];
    clientStreams = v16->_clientStreams;
    v16->_clientStreams = v24;

    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HMDSecureRemoteSession maximumRemoteStreams](v16, "maximumRemoteStreams")}];
    serverStreams = v16->_serverStreams;
    v16->_serverStreams = v26;
  }

  self = v16;
  selfCopy = self;
LABEL_15:

  v33 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDSecureRemoteSession)initWithDevice:(id)device deviceMonitor:(id)monitor accountRegistry:(id)registry
{
  registryCopy = registry;
  monitorCopy = monitor;
  deviceCopy = device;
  v11 = objc_alloc_init(HMDSecureRemoteSessionDefaultDataSource);
  v12 = [(HMDSecureRemoteSession *)self initWithDevice:deviceCopy deviceMonitor:monitorCopy accountRegistry:registryCopy dataSource:v11];

  return v12;
}

- (HMDSecureRemoteSession)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t61 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t61, &__block_literal_global_158);
  }

  v3 = logCategory__hmf_once_v62;

  return v3;
}

uint64_t __37__HMDSecureRemoteSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v62;
  logCategory__hmf_once_v62 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)isSecureRemoteSessionMessage:(id)message
{
  name = [message name];
  if ([name isEqualToString:@"kSecureClientIDSMessageRequestKey"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"kSecureServerIDSMessageRequestKey"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [name isEqualToString:@"kSecureSessionInvalidatedNotificationKey"];
  }

  return v4;
}

@end