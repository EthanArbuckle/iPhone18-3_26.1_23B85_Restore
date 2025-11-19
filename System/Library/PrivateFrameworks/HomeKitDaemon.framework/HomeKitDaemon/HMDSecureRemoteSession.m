@interface HMDSecureRemoteSession
+ (BOOL)isSecureRemoteSessionMessage:(id)a3;
+ (id)logCategory;
- (HMDSecureRemoteSession)init;
- (HMDSecureRemoteSession)initWithDevice:(id)a3 accountRegistry:(id)a4;
- (HMDSecureRemoteSession)initWithDevice:(id)a3 accountRegistry:(id)a4 dataSource:(id)a5;
- (NSArray)clientStreams;
- (NSArray)pendingMessages;
- (NSArray)serverStreams;
- (id)_clientStreamForMessage:(id)a3;
- (id)_clientStreamWithIdentiifer:(id)a3;
- (id)_dequeMessage;
- (id)_serverStreamWithIdentifier:(id)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (void)_closeClientStream:(id)a3 error:(id)a4;
- (void)_closeServerStream:(id)a3 error:(id)a4;
- (void)_closeWithError:(id)a3;
- (void)_handleSecureClientMessage:(id)a3 fromDevice:(id)a4 transport:(id)a5;
- (void)_handleSecureServerMessage:(id)a3 fromDevice:(id)a4 transport:(id)a5;
- (void)_handleStreamInvalidationMessage:(id)a3;
- (void)_openClientStreamWithCompletionHandler:(id)a3;
- (void)_openServerStreamWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_queueMessage:(id)a3;
- (void)close;
- (void)dealloc;
- (void)messageTransport:(id)a3 didReceiveMessage:(id)a4;
- (void)openWithCompletionHandler:(id)a3;
- (void)receivedSecureMessage:(id)a3 fromDevice:(id)a4 fromTransport:(id)a5;
- (void)secureRemoteStream:(id)a3 didCloseWithError:(id)a4;
- (void)secureRemoteStream:(id)a3 receivedRequestToSendMessage:(id)a4;
- (void)secureRemoteStreamIsIdle:(id)a3;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDSecureRemoteSession

- (void)timerDidFire:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSecureRemoteSession *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  os_unfair_lock_lock_with_options();
  pendingMessages = self->_pendingMessages;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__HMDSecureRemoteSession_timerDidFire___block_invoke;
  v20[3] = &unk_2786759D8;
  v7 = v4;
  v21 = v7;
  v8 = [(NSMutableArray *)pendingMessages hmf_objectPassingTest:v20];
  if (v8)
  {
    [(NSMutableArray *)self->_pendingMessages removeObject:v8];

    os_unfair_lock_unlock(&self->_lock);
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v8 message];
      v14 = [v13 shortDescription];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Queued message timed out: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [v8 message];
    v16 = [v15 responseHandler];

    if (v16)
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      v18 = [v15 responseHandler];
      (v18)[2](v18, v17, 0);
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
  v2 = [(HMDSecureRemoteSession *)self device];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMDSecureRemoteSession *)self clientQueue];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __52__HMDSecureRemoteSession_dumpStateWithPrivacyLevel___block_invoke;
  v12 = &unk_27868A750;
  v13 = v4;
  v14 = self;
  v6 = v4;
  dispatch_sync(v5, &v9);

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

- (void)messageTransport:(id)a3 didReceiveMessage:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMFMessageTransport *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 messageTransport:self didReceiveMessage:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Cannot send message, no delegate: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [v7 responseHandler];

    if (v13)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v15 = [v7 responseHandler];
      (v15)[2](v15, v14, 0);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)secureRemoteStream:(id)a3 receivedRequestToSendMessage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMFMessageTransport *)self delegate];
  if ([v8 conformsToProtocol:&unk_283F62BD0])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (objc_opt_respondsToSelector())
  {
    [v10 secureRemoteSession:self receivedRequestToSendMessage:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Cannot send message, no delegate: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [v7 responseHandler];

    if (v15)
    {
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v17 = [v7 responseHandler];
      (v17)[2](v17, v16, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)secureRemoteStream:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSecureRemoteSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDSecureRemoteSession_secureRemoteStream_didCloseWithError___block_invoke;
  block[3] = &unk_27868A010;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)secureRemoteStreamIsIdle:(id)a3
{
  v4 = a3;
  v5 = [(HMDSecureRemoteSession *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDSecureRemoteSession_secureRemoteStreamIsIdle___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Stream is idle: %@", &v13, 0x16u);
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

- (void)_closeServerStream:(id)a3 error:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  if (![(NSMutableArray *)self->_serverStreams containsObject:v6])
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_21;
  }

  [(NSMutableArray *)self->_serverStreams removeObject:v6];
  v33 = [(NSMutableArray *)self->_serverStreams copy];
  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v11;
    v44 = 2112;
    v45 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Server stream stopped due to error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMFMessageTransport *)v9 delegate];
  if ([v12 conformsToProtocol:&unk_283F62BD0])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v34 = v13;

  if (objc_opt_respondsToSelector())
  {
    v14 = [v7 domain];
    if (![v14 isEqualToString:*MEMORY[0x277CCA590]])
    {
LABEL_18:

      goto LABEL_19;
    }

    v15 = [v7 code] == -6722;

    if (!v15)
    {
      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HMDSecureRemoteSession maximumRemoteStreams](v9, "maximumRemoteStreams")}];
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

            v20 = [*(*(&v35 + 1) + 8 * v19) sessionID];
            v21 = [v20 UUIDString];
            [v14 addObject:v21];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v17);
      }

      v22 = [HMDRemoteDeviceMessageDestination alloc];
      v23 = [MEMORY[0x277D0F820] allMessageDestinations];
      v24 = [v23 target];
      v25 = [v6 peerDevice];
      v26 = [(HMDRemoteDeviceMessageDestination *)v22 initWithTarget:v24 device:v25];

      v27 = MEMORY[0x277D0F818];
      v39[0] = @"kIDSSecureSessionIDKey";
      v28 = [v6 sessionID];
      v29 = [v28 UUIDString];
      v39[1] = @"streams";
      v40[0] = v29;
      v40[1] = v14;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v31 = [v27 messageWithName:@"kSecureSessionInvalidatedNotificationKey" destination:v26 payload:v30];

      [v34 secureRemoteSession:v9 receivedRequestToSendMessage:v31];
      goto LABEL_18;
    }
  }

LABEL_19:

LABEL_21:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)_openServerStreamWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSecureRemoteSession *)self serverStreams];
  v9 = [v8 mutableCopy];

  v10 = [v9 count];
  if (v10 >= [(HMDSecureRemoteSession *)self maximumRemoteStreams])
  {
    [v9 sortUsingComparator:&__block_literal_global_78260];
    v11 = [v9 firstObject];
    [v11 stop];
  }

  v12 = [(HMDSecureRemoteSession *)self dataSource];
  v13 = [(HMDSecureRemoteSession *)self device];
  v14 = [v12 createSecureStreamWithPeerDevice:v13 clientMode:0 sessionID:v6];

  [v14 setDelegate:self];
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_serverStreams addObject:v14];
  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v14);
  v15 = [(HMDSecureRemoteSession *)self clientQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__HMDSecureRemoteSession__openServerStreamWithIdentifier_completionHandler___block_invoke_2;
  v17[3] = &unk_278675988;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  v16 = v7;
  v18 = v16;
  [v14 startAndInvokeOnQueue:v15 completionHandler:v17];

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
    v7[3] = &unk_278687E08;
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Failed to start server stream due to error: %@", &v12, 0x16u);
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

- (void)_closeClientStream:(id)a3 error:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_clientStreams containsObject:v6])
  {
    [(NSMutableArray *)self->_clientStreams removeObject:v6];
    v8 = [(NSMutableArray *)self->_clientStreams copy];
    os_unfair_lock_unlock(&self->_lock);
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v12;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Client stream stopped due to error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if ([v8 hmf_isEmpty])
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v10;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Last client stream closed, attempting to open a new client stream", buf, 0xCu);
      }
    }

    else
    {
      if ([v6 qualityOfService] != 9)
      {
        goto LABEL_20;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = v8;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = *v25;
        while (2)
        {
          v20 = 0;
          do
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v17);
            }

            if ([*(*(&v24 + 1) + 8 * v20) qualityOfService] == 9)
            {

              goto LABEL_21;
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v13 = objc_autoreleasePoolPush();
      v14 = v10;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v21;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Last background client stream closed, attempting to open a new client stream", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v13);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__HMDSecureRemoteSession__closeClientStream_error___block_invoke;
    v23[3] = &unk_2786759B0;
    v23[4] = v10;
    [(HMDSecureRemoteSession *)v10 _openClientStreamWithCompletionHandler:v23];
LABEL_20:
    v17 = v8;
    goto LABEL_21;
  }

  os_unfair_lock_unlock(&self->_lock);
  v17 = 0;
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to open primary stream, closing session", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _closeWithError:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_openClientStreamWithCompletionHandler:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSecureRemoteSession *)self clientStreams];
  v6 = [v5 count];
  v7 = v6 < [(HMDSecureRemoteSession *)self maximumRemoteStreams];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Opening client stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMDSecureRemoteSession *)v9 dataSource];
    v14 = [(HMDSecureRemoteSession *)v9 device];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v13 createSecureStreamWithPeerDevice:v14 clientMode:1 sessionID:v15];

    [v16 setDelegate:v9];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v5;
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
            v23 = v9;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              v26 = HMFQualityOfServiceToString();
              *buf = 138543618;
              v39 = v25;
              v40 = 2112;
              v41 = v26;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Setting QoS to %@ for client stream", buf, 0x16u);
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
    [(NSMutableArray *)v9->_clientStreams addObject:v16];
    os_unfair_lock_unlock(&v9->_lock);
    objc_initWeak(buf, v9);
    objc_initWeak(&location, v16);
    v27 = [(HMDSecureRemoteSession *)v9 clientQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __65__HMDSecureRemoteSession__openClientStreamWithCompletionHandler___block_invoke;
    v29[3] = &unk_278675988;
    objc_copyWeak(&v31, buf);
    objc_copyWeak(&v32, &location);
    v30 = v4;
    [v16 startAndInvokeOnQueue:v27 completionHandler:v29];

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
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Cannot open additional streams", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (v4)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:49];
    (*(v4 + 2))(v4, 0, v16);
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
    v7[3] = &unk_278687E08;
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
  v26 = *MEMORY[0x277D85DE8];
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
      v22 = 138543618;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to start client stream due to error: %@", &v22, 0x16u);
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
  }

  else if (WeakRetained)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v13;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Opened client stream: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [*(a1 + 40) pendingMessages];
    v15 = [v14 firstObject];
    v16 = [v15 message];
    [v16 qualityOfService];
    [v3 qualityOfService];
    v17 = HMFQualityOfServiceCompare();

    if (v17 != -1)
    {
      v18 = [*(a1 + 40) _dequeMessage];
      if (v18)
      {
        [v3 sendMessage:v18 completionHandler:0];
      }
    }
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    if (*(a1 + 32))
    {
      v20 = 0;
    }

    else
    {
      v20 = v3;
    }

    (*(v19 + 16))(v19, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_serverStreamWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDSecureRemoteSession *)self serverStreams];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 sessionID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_clientStreamForMessage:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HMDSecureRemoteSession *)self clientStreams];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v4 qualityOfService];
        [v9 qualityOfService];
        if (HMFQualityOfServiceCompare() != -1 && [v9 isOpen] && (objc_msgSend(v9, "isIdle") & 1) != 0)
        {
          v6 = v9;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)_clientStreamWithIdentiifer:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDSecureRemoteSession *)self clientStreams];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 sessionID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_handleStreamInvalidationMessage:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:@"kIDSSecureSessionIDKey"];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v9;
    v47 = 2112;
    v48 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received invalidation message for stream %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDSecureRemoteSession *)v7 _clientStreamWithIdentiifer:v5];
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v7;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v14;
      v47 = 2112;
      v48 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Closing stream due to remote invalidation: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [v10 stop];
  }

  v15 = [v4 arrayForKey:@"streams"];
  if (v15)
  {
    v36 = v10;
    v37 = v5;
    v38 = v4;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = [(HMDSecureRemoteSession *)v7 clientStreams];
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v40 + 1) + 8 * v20);
          v22 = [v21 sessionID];
          v23 = [v22 UUIDString];
          v24 = [v15 containsObject:v23];

          if ((v24 & 1) == 0)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = v7;
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              HMFGetLogIdentifier();
              v28 = v19;
              v29 = v15;
              v30 = v16;
              v32 = v31 = v7;
              *buf = 138543618;
              v46 = v32;
              v47 = 2112;
              v48 = v21;
              _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Closing inactive stream due to remote invalidation: %@", buf, 0x16u);

              v7 = v31;
              v16 = v30;
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
        v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v18);
    }

    v5 = v37;
    v4 = v38;
    v10 = v36;
  }

  v33 = [v4 responseHandler];

  if (v33)
  {
    v34 = [v4 responseHandler];
    v34[2](v34, 0, 0);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureServerMessage:(id)a3 fromDevice:(id)a4 transport:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 uuidForKey:@"kIDSSecureSessionIDKey"];
  v12 = v10;
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
    v16 = [v8 messagePayload];
    [v15 handleSecureMessage:v16 fromDevice:v9 fromTransport:v14];

    v17 = 0;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v21 = v27 = v9;
      v22 = [(HMDSecureRemoteSession *)v19 clientStreams];
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Stream not found: %@", buf, 0x16u);

      v9 = v27;
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v23 = [(HMDSecureRemoteSession *)v19 device];
    [v14 postDidReceiveRemoteMessageWithNoListenerFromDevice:v23];
  }

  v24 = [v8 responseHandler];

  if (v24)
  {
    v25 = [v8 responseHandler];
    (v25)[2](v25, v17, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureClientMessage:(id)a3 fromDevice:(id)a4 transport:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x22AAD2510](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Messaging/Remote/Secure/HMDSecureRemoteSession.m", 624];
  v30 = [v12 initWithName:v15];

  v16 = [v9 uuidForKey:@"kIDSSecureSessionIDKey"];
  v17 = v11;
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
    v24[3] = &unk_278675960;
    v25 = v30;
    v26 = v9;
    v27 = v10;
    v28 = v19;
    [(HMDSecureRemoteSession *)self _openServerStreamWithIdentifier:v16 completionHandler:v24];

    v23 = v25;
    goto LABEL_9;
  }

  [v30 begin];
  v29 = v30;
  v21 = [v9 messagePayload];
  [v20 handleSecureMessage:v21 fromDevice:v10 fromTransport:v19];

  __HMFActivityScopeLeave();
  v22 = [v9 responseHandler];

  if (v22)
  {
    v23 = [v9 responseHandler];
    v23[2](v23, 0, 0);
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

- (void)receivedSecureMessage:(id)a3 fromDevice:(id)a4 fromTransport:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D0F770] currentActivity];
  v12 = [(HMDSecureRemoteSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDSecureRemoteSession_receivedSecureMessage_fromDevice_fromTransport___block_invoke;
  block[3] = &unk_278689550;
  v18 = v11;
  v19 = v8;
  v20 = self;
  v21 = v9;
  v22 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v11;
  dispatch_async(v12, block);
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
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_pendingMessages popFirstObject];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = [v3 timer];
    [v4 suspend];

    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v3 message];
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Dequeuing message: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v3 message];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_queueMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Queueing message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[_HMDSecureRemoteQueuedMessage alloc] initWithMessage:v4];
  v10 = [(_HMDSecureRemoteQueuedMessage *)v9 timer];
  [v10 setDelegate:v6];

  v11 = [(_HMDSecureRemoteQueuedMessage *)v9 timer];
  v12 = [(HMDSecureRemoteSession *)v6 clientQueue];
  [v11 setDelegateQueue:v12];

  v13 = [(_HMDSecureRemoteQueuedMessage *)v9 timer];
  [v13 resume];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v42 = 0;
  os_unfair_lock_lock_with_options();
  pendingMessages = v6->_pendingMessages;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __40__HMDSecureRemoteSession__queueMessage___block_invoke;
  v32 = &unk_278675938;
  v15 = v4;
  v33 = v15;
  v34 = buf;
  [(NSMutableArray *)pendingMessages hmf_enumerateWithAutoreleasePoolUsingBlock:&v29];
  [(NSMutableArray *)v6->_pendingMessages insertObject:v9 atIndex:*(*&buf[8] + 24), v29, v30, v31, v32];

  os_unfair_lock_unlock(&v6->_lock);
  v16 = objc_autoreleasePoolPush();
  v17 = v6;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v15 identifier];
    v21 = [v20 UUIDString];
    v22 = *(*&buf[8] + 24);
    *v35 = 138543874;
    v36 = v19;
    v37 = 2112;
    v38 = v21;
    v39 = 2048;
    v40 = v22;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Message, %@, queued at position %tu", v35, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v23 = objc_autoreleasePoolPush();
  v24 = v17;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [(HMDSecureRemoteSession *)v24 pendingMessages];
    *v35 = 138543618;
    v36 = v26;
    v37 = 2112;
    v38 = v27;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Queued messages: %@", v35, 0x16u);
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

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D0F770] currentActivity];
  v9 = [(HMDSecureRemoteSession *)self clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HMDSecureRemoteSession_sendMessage_completionHandler___block_invoke;
  v13[3] = &unk_278689AB8;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(v9, v13);
}

void __56__HMDSecureRemoteSession_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 40) state])
  {
    v21 = *(a1 + 48);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v21;
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
      v21 = [HMDRemoteMessage secureMessageWithName:v4 destination:v5 messagePayload:v6];

      v7 = [*(a1 + 48) identifier];
      [v21 setIdentifier:v7];

      v8 = [*(a1 + 48) responseHandler];
      [v21 setResponseHandler:v8];
    }

    v9 = [*(a1 + 40) _clientStreamForMessage:v21];
    v10 = v9;
    if (v9)
    {
      [v9 sendMessage:v21 completionHandler:*(a1 + 56)];
    }

    else
    {
      [*(a1 + 40) _queueMessage:v21];
      [*(a1 + 40) _openClientStreamWithCompletionHandler:0];
      v19 = *(a1 + 56);
      if (v19)
      {
        (*(v19 + 16))(v19, 0);
      }
    }

    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 48) shortDescription];
      *buf = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot send message on closed session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v16);
    }

    [*(a1 + 48) respondWithError:v16];

    v18 = *MEMORY[0x277D85DE8];
  }
}

- (void)_closeWithError:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = v4;
  if (v4)
  {
    v36 = v4;
  }

  else
  {
    v36 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  }

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v8;
    v54 = 2112;
    v55 = v34;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Closed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSecureRemoteSession *)v6 setState:0];
  v9 = [(HMFMessageTransport *)v6 delegate];
  if ([v9 conformsToProtocol:&unk_283F62BD0])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v35 = v10;

  if (objc_opt_respondsToSelector())
  {
    [v35 secureRemoteSession:v6 didCloseWithError:v34];
  }

  os_unfair_lock_lock_with_options();
  v11 = [(NSMutableArray *)v6->_pendingMessages copy];
  [(NSMutableArray *)v6->_pendingMessages removeAllObjects];
  v33 = [(NSMutableArray *)v6->_clientStreams copy];
  [(NSMutableArray *)v6->_clientStreams removeAllObjects];
  v32 = [(NSMutableArray *)v6->_serverStreams copy];
  [(NSMutableArray *)v6->_serverStreams removeAllObjects];
  os_unfair_lock_unlock(&v6->_lock);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v13)
  {
    v14 = *v46;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v45 + 1) + 8 * i) message];
        v17 = objc_autoreleasePoolPush();
        v18 = v6;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v20;
          v54 = 2114;
          v55 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cancelling queued message: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = [v16 responseHandler];

        if (v21)
        {
          v22 = [v16 responseHandler];
          (v22)[2](v22, v36, 0);
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v13);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v33;
  v24 = [v23 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v24)
  {
    v25 = *v42;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v41 + 1) + 8 * j) stop];
      }

      v24 = [v23 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v24);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = v32;
  v28 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v28)
  {
    v29 = *v38;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v37 + 1) + 8 * k) stop];
      }

      v28 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  v3 = [(HMDSecureRemoteSession *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDSecureRemoteSession_close__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDSecureRemoteSession *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDSecureRemoteSession_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__HMDSecureRemoteSession_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
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
      v15 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Session already opened", buf, 0xCu);
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
      v15 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Opening", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setState:1];
    v10 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__HMDSecureRemoteSession_openWithCompletionHandler___block_invoke_103;
    v12[3] = &unk_278675910;
    v12[4] = v10;
    v13 = *(a1 + 40);
    [v10 _openClientStreamWithCompletionHandler:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __52__HMDSecureRemoteSession_openWithCompletionHandler___block_invoke_103(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Opened", &v24, 0xCu);
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
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Upgrading number of streams to '%tu'", &v24, 0x16u);
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to open initial client stream with error: %@", &v24, 0x16u);
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
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Secure Remote Session abandoned without being closed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMFMessageTransport *)v4 setDelegate:0];
    [(HMDSecureRemoteSession *)v4 _closeWithError:0];
  }

  v8.receiver = self;
  v8.super_class = HMDSecureRemoteSession;
  [(HMDSecureRemoteSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDSecureRemoteSession)initWithDevice:(id)a3 accountRegistry:(id)a4 dataSource:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      v29 = "%{public}@Device is required for HMDSecureRemoteSession";
LABEL_10:
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_12;
  }

  if (!v10)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      v29 = "%{public}@Account registry is required for HMDSecureRemoteSession";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v32.receiver = self;
  v32.super_class = HMDSecureRemoteSession;
  v12 = [(HMDSecureRemoteSession *)&v32 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_dataSource, a5);
    objc_storeStrong(&v13->_device, a3);
    objc_storeStrong(&v13->_accountRegistry, a4);
    v14 = HMDispatchQueueNameString();
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    clientQueue = v13->_clientQueue;
    v13->_clientQueue = v17;

    v13->_maximumRemoteStreams = 1;
    v19 = [MEMORY[0x277CBEB18] array];
    pendingMessages = v13->_pendingMessages;
    v13->_pendingMessages = v19;

    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HMDSecureRemoteSession maximumRemoteStreams](v13, "maximumRemoteStreams")}];
    clientStreams = v13->_clientStreams;
    v13->_clientStreams = v21;

    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HMDSecureRemoteSession maximumRemoteStreams](v13, "maximumRemoteStreams")}];
    serverStreams = v13->_serverStreams;
    v13->_serverStreams = v23;
  }

  self = v13;
  v25 = self;
LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
  return v25;
}

- (HMDSecureRemoteSession)initWithDevice:(id)a3 accountRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMDSecureRemoteSessionDefaultDataSource);
  v9 = [(HMDSecureRemoteSession *)self initWithDevice:v7 accountRegistry:v6 dataSource:v8];

  return v9;
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
  if (logCategory__hmf_once_t56_78315 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t56_78315, &__block_literal_global_153);
  }

  v3 = logCategory__hmf_once_v57_78316;

  return v3;
}

void __37__HMDSecureRemoteSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v57_78316;
  logCategory__hmf_once_v57_78316 = v1;
}

+ (BOOL)isSecureRemoteSessionMessage:(id)a3
{
  v3 = [a3 name];
  if ([v3 isEqualToString:@"kSecureClientIDSMessageRequestKey"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"kSecureServerIDSMessageRequestKey"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"kSecureSessionInvalidatedNotificationKey"];
  }

  return v4;
}

@end