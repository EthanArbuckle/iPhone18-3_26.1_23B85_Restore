@interface HMDSecureRemoteStream
+ (id)logCategory;
- (BOOL)isAuthenticated;
- (BOOL)isIdle;
- (BOOL)isOpen;
- (HMDDevice)peerDevice;
- (HMDSecureRemoteStream)initWithCurrentDevice:(id)a3 peerDevice:(id)a4 clientMode:(BOOL)a5 sessionID:(id)a6 accountRegistry:(id)a7;
- (NSDate)lastActivity;
- (NSNumber)maximumRemoteStreams;
- (NSString)propertyDescription;
- (NSString)shortDescription;
- (id)logIdentifier;
- (int64_t)qualityOfService;
- (void)__handleAccountRemovedFromRegistry:(id)a3;
- (void)__handleDeviceRemovedFromAccount:(id)a3;
- (void)__handleRemovedIdentity:(id)a3;
- (void)_closeWithError:(id)a3;
- (void)_configureWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)closedWithError:(id)a3;
- (void)dealloc;
- (void)handleCompletedMessage:(id)a3 options:(id)a4 responsePayload:(id)a5 error:(id)a6 completionHandler:(id)a7;
- (void)handleSecureMessage:(id)a3 fromDevice:(id)a4 fromTransport:(id)a5;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
- (void)setAuthenticated:(BOOL)a3;
- (void)setIdle:(BOOL)a3;
- (void)setMaximumRemoteStreams:(id)a3;
- (void)setOpen:(BOOL)a3;
- (void)setPeerDevice:(id)a3;
- (void)setQualityOfService:(int64_t)a3;
- (void)startAndInvokeOnQueue:(id)a3 completionHandler:(id)a4;
- (void)stop;
@end

@implementation HMDSecureRemoteStream

- (id)logIdentifier
{
  v2 = [(HMDSecureRemoteStream *)self sessionID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)__handleDeviceRemovedFromAccount:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDSecureRemoteStream___handleDeviceRemovedFromAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__HMDSecureRemoteStream___handleDeviceRemovedFromAccount___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 40) peerDevice];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification device was removed from account", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Device was removed from account." suggestion:0];
      [*(a1 + 40) _closeWithError:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)__handleAccountRemovedFromRegistry:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDSecureRemoteStream___handleAccountRemovedFromRegistry___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __60__HMDSecureRemoteStream___handleAccountRemovedFromRegistry___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 40) peerDevice];
    v7 = [v6 account];
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 40);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification account was removed from registry", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Account was removed from registry." suggestion:0];
      [*(a1 + 40) _closeWithError:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)__handleRemovedIdentity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDSecureRemoteStream___handleRemovedIdentity___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __49__HMDSecureRemoteStream___handleRemovedIdentity___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDIdentityNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 40) peerIdentity];
    v7 = HMFEqualObjects();

    if (v7)
    {
      v8 = [*(a1 + 32) userInfo];
      v9 = [v8 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        v12 = [*(a1 + 40) peerDevice];
        v13 = [v12 account];
        v14 = HMFEqualObjects();

        if (v14)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 40);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v21 = 138543362;
            v22 = v18;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Received notification peer identity was removed", &v21, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Identity was removed." suggestion:0];
          [*(a1 + 40) _closeWithError:v19];
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleSecureMessage:(id)a3 fromDevice:(id)a4 fromTransport:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDSecureRemoteStream_handleSecureMessage_fromDevice_fromTransport___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __70__HMDSecureRemoteStream_handleSecureMessage_fromDevice_fromTransport___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CBEB98] setWithObject:@"kIDSMessageSourceIDKey"];
    v8 = [v6 secureDescriptionWithBlacklistKeys:v7];
    *buf = 138543618;
    v32 = v5;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received encrypted secure message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (([*(a1 + 32) supportsSharedIdentities] & 1) == 0)
  {
    [*(a1 + 32) setSupportsSharedIdentities:{objc_msgSend(*(a1 + 40), "hmf_BOOLForKey:", @"supportsSharedIdentities"}];
  }

  v9 = [*(a1 + 32) maximumRemoteStreams];

  if (!v9)
  {
    v10 = [*(a1 + 40) hmf_numberForKey:@"max"];
    if (v10)
    {
      [*(a1 + 32) setMaximumRemoteStreams:v10];
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = [v11 transportType];
    v13 = *(a1 + 48);
    v14 = [objc_opt_class() restriction];
    if (v14 == 2)
    {
      v15 = 3;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v12 = 0;
    v15 = -1;
  }

  v16 = [*(a1 + 56) productInfo];
  [v16 productClass];
  v17 = HMFProductClassToString();

  if (!v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 56);
      *buf = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Unable to map productClass for device %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = @"Unknown";
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v15, @"kRemoteMessageRestrictionKey"}];
  v30[0] = v22;
  v29[1] = @"kRemoteMessageTransportAttributionKey";
  v23 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v30[1] = v23;
  v30[2] = v17;
  v29[2] = @"kRemoteMessagePeerInformationKey";
  v29[3] = @"HMDRemoteMessageReceivedTransportRestrictionKey";
  v24 = *(a1 + 48);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "restriction")}];
  v30[3] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v27 = [*(a1 + 32) remoteSession];
  [v27 transportReceivedMessage:*(a1 + 40) options:v26];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleCompletedMessage:(id)a3 options:(id)a4 responsePayload:(id)a5 error:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__HMDSecureRemoteStream_handleCompletedMessage_options_responsePayload_error_completionHandler___block_invoke;
  v23[3] = &unk_279734848;
  v24 = v14;
  v25 = self;
  v26 = v12;
  v27 = v15;
  v28 = v13;
  v29 = v16;
  v18 = v16;
  v19 = v13;
  v20 = v15;
  v21 = v12;
  v22 = v14;
  dispatch_async(queue, v23);
}

void __96__HMDSecureRemoteStream_handleCompletedMessage_options_responsePayload_error_completionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
  if (v2)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v34 = 0;
    v5 = [v3 _strictlyUnarchivedObjectOfClasses:v4 fromData:v2 error:&v34];
    v6 = v34;

    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v10;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize error with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Generic error." reason:@"Failed to deserialize remote error." suggestion:0 underlyingError:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 40);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 32) shortDescription];
    v16 = [*(a1 + 48) name];
    v17 = [*(a1 + 48) identifier];
    v18 = [v17 UUIDString];
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    *buf = 138544898;
    v36 = v14;
    v37 = 2114;
    v38 = v15;
    v39 = 2114;
    v40 = v16;
    v41 = 2114;
    v42 = v18;
    v43 = 2114;
    v44 = v19;
    v45 = 2114;
    v46 = v5;
    v47 = 2114;
    v48 = v20;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received response %{public}@ to secure message: %{public}@ and identifier %{public}@, with transport error: %{public}@, error: %{public}@, options: %{public}@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v11);
  v21 = [MEMORY[0x277D0F770] currentActivity];
  [v21 markWithReason:@"Calling response handler"];

  v22 = *(a1 + 56);
  if (!v22)
  {
    v22 = v5;
  }

  v23 = v22;
  v24 = *(a1 + 72);
  if (v24)
  {
    (*(v24 + 16))(v24, v23);
  }

  v25 = [*(a1 + 48) responseHandler];

  if (v25)
  {
    v26 = [*(a1 + 32) mutableCopy];
    v27 = [*(a1 + 64) objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
    [v26 setObject:v27 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

    v28 = [*(a1 + 48) responseHandler];
    (v28)[2](v28, v23, v26);
  }

  v29 = objc_autoreleasePoolPush();
  v30 = *(a1 + 40);
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v32;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@The session is now idle", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v29);
  [*(a1 + 40) setIdle:1];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMDSecureRemoteStream_sendMessage_completionHandler___block_invoke;
  v12[3] = &unk_279734820;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v16 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, v12);
}

void __55__HMDSecureRemoteStream_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (!v4)
  {
    v5 = [*(a1 + 32) name];
    v6 = [*(a1 + 32) destination];
    v7 = [*(a1 + 32) messagePayload];
    v2 = [HMDRemoteMessage secureMessageWithName:v5 destination:v6 messagePayload:v7];

    v8 = [*(a1 + 32) identifier];
    [v2 setIdentifier:v8];

    v9 = [*(a1 + 32) responseHandler];
    [v2 setResponseHandler:v9];
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 32);
    *buf = 138543618;
    v42 = v13;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Sending message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  [*(a1 + 40) setIdle:0];
  v15 = *(a1 + 32);
  v38 = 0;
  v16 = [HMDRemoteMessageSerialization dictionaryForMessage:v15 error:&v38];
  v17 = v38;
  if (!v16)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v21;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Message serialization failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v39[0] = @"kRemoteMessageRestrictionKey";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "restriction")}];
  v40[0] = v22;
  v39[1] = @"kIDSMessageRequestTransactionIDKey";
  v23 = [v2 identifier];
  v24 = [v23 UUIDString];
  v40[1] = v24;
  v39[2] = @"kRemoteMessageAttributedMessageNameKey";
  v25 = [v2 name];
  v40[2] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];

  objc_initWeak(buf, *(a1 + 40));
  v27 = objc_alloc(MEMORY[0x277D0F770]);
  v28 = MEMORY[0x259C01AE0](*(a1 + 40), *(a1 + 56));
  v37 = [v27 initWithName:v28];

  v29 = [*(a1 + 40) remoteSession];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55__HMDSecureRemoteStream_sendMessage_completionHandler___block_invoke_371;
  v32[3] = &unk_2797347F8;
  v33 = v37;
  objc_copyWeak(&v36, buf);
  v30 = v2;
  v34 = v30;
  v35 = *(a1 + 48);
  [v29 sendRequest:v16 options:v26 responseHandler:v32];

  objc_destroyWeak(&v36);
  __HMFActivityScopeLeave();

  objc_destroyWeak(buf);
  v31 = *MEMORY[0x277D85DE8];
}

void __55__HMDSecureRemoteStream_sendMessage_completionHandler___block_invoke_371(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) begin];
  v15 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleCompletedMessage:*(a1 + 40) options:v8 responsePayload:v7 error:v9 completionHandler:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 32) markWithReason:@"Calling response handler"];
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v9);
    }

    v13 = [*(a1 + 40) responseHandler];

    if (v13)
    {
      v14 = [*(a1 + 40) responseHandler];
      (v14)[2](v14, v9, v7);
    }
  }

  __HMFActivityScopeLeave();
  [*(a1 + 32) invalidate];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDSecureRemoteStream_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__HMDSecureRemoteStream_stop__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isOpen])
  {
    [*(a1 + 32) setOpen:0];
    v2 = [*(a1 + 32) remoteSession];

    if (v2)
    {
      v3 = [*(a1 + 32) remoteSession];
      [v3 stop];
    }

    else
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
      [*(a1 + 32) _closeWithError:?];
    }
  }
}

- (void)_closeWithError:(id)a3
{
  v7 = a3;
  [(HMDSecureRemoteStream *)self setOpen:0];
  [(HMDSecureRemoteStream *)self setAuthenticated:0];
  v4 = [(HMFMessageTransport *)self delegate];
  if ([v4 conformsToProtocol:&unk_286696D78])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    [v6 secureRemoteStream:self didCloseWithError:v7];
  }
}

- (void)closedWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDSecureRemoteStream_closedWithError___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_configureWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CFEC78] systemStore];
  v48 = 0;
  v9 = [v8 getLocalPairingIdentity:&v48];
  v10 = v48;

  if (v9)
  {
    v11 = [HMDSecureRemoteStreamInternal alloc];
    v12 = [(HMDSecureRemoteStream *)self role];
    v13 = [(HMDSecureRemoteStreamInternal *)v11 initWithType:v12 commitTimeout:hrsCommitTimeoutNanoseconds clientIdleTimeout:hrsIdleClientTimeoutNanoseconds serverIdleTimeout:hrsIdleServertTimeoutNanoseconds sendInternalTimeout:hrsSendInternalRequestTimeoutNanoseconds sendUserTimeout:hrsSendUserRequestTimeoutNanoseconds];
    [(HMDSecureRemoteStream *)self setRemoteSession:v13];

    queue = self->_queue;
    v15 = [(HMDSecureRemoteStream *)self remoteSession];
    [v15 setDispatchQueue:queue];

    objc_initWeak(location, self);
    if ([(HMDSecureRemoteStream *)self role]== 1)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_2;
      v41[3] = &unk_2797346E0;
      objc_copyWeak(&v44, location);
      v42 = v6;
      v43 = v7;
      v16 = [(HMDSecureRemoteStream *)self remoteSession];
      [v16 setStartedHandler:v41];

      objc_destroyWeak(&v44);
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_4;
    v39[3] = &unk_279734708;
    objc_copyWeak(&v40, location);
    v17 = [(HMDSecureRemoteStream *)self remoteSession];
    [v17 setStoppedHandler:v39];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_344;
    v37[3] = &unk_279734730;
    objc_copyWeak(&v38, location);
    v18 = [(HMDSecureRemoteStream *)self remoteSession];
    [v18 setGetLocalIdentityHandler:v37];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_348;
    v35[3] = &unk_279734758;
    objc_copyWeak(&v36, location);
    v19 = [(HMDSecureRemoteStream *)self remoteSession];
    [v19 setFindPeerHandler:v35];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_356;
    v33[3] = &unk_2797347A8;
    objc_copyWeak(&v34, location);
    v20 = [(HMDSecureRemoteStream *)self remoteSession];
    [v20 setRequestHandler:v33];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_3_366;
    v31[3] = &unk_2797347D0;
    objc_copyWeak(&v32, location);
    v21 = [(HMDSecureRemoteStream *)self remoteSession];
    [v21 setTransportSendMessage:v31];

    v22 = [(HMDSecureRemoteStream *)self remoteSession];
    [v22 start];

    v23 = [(HMDSecureRemoteStream *)self role];
    if (v7 && v6 && v23 == 2)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_368;
      v29[3] = &unk_2797348C0;
      v30 = v7;
      dispatch_async(v6, v29);
    }

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(location);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v27;
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot open stream, failed to get local pairing identity with error: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    if (v6 && v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke;
      block[3] = &unk_279735738;
      v46 = v10;
      v47 = v7;
      dispatch_async(v6, block);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported" reason:@"Cannot send messages without a valid pairing identity" suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained _closeWithError:v3];
  }

  else
  {
    [WeakRetained setOpen:1];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_3;
      v8[3] = &unk_279735738;
      v10 = v7;
      v9 = v3;
      dispatch_async(v6, v8);
    }
  }
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that remote session has stopped due to error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 _closeWithError:v3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_344(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CFEC78] systemStore];
  v5 = [v4 getLocalPairingIdentity:a2];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && v5)
  {
    v7 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v7 isRemoteGatewayCapable])
    {
      v8 = [WeakRetained supportsSharedIdentities];

      if ((v8 & 1) == 0)
      {
        v9 = [WeakRetained currentDevice];
        v10 = [v9 account];
        v11 = [v10 identities];
        v12 = [v11 containsObject:v5];

        if (v12)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = WeakRetained;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            v26 = 138543362;
            v27 = v16;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Swapping out the local pairing identifier for legacy remote sessions", &v26, 0xCu);
          }

          objc_autoreleasePoolPop(v13);
          v17 = objc_alloc(MEMORY[0x277D0F8A8]);
          v18 = [v14 currentDevice];
          v19 = [v18 identifier];
          v20 = [v19 UUIDString];
          v21 = [v5 publicKey];
          v22 = [v5 privateKey];
          v23 = [v17 initWithIdentifier:v20 publicKey:v21 privateKey:v22];

          v5 = v23;
        }
      }
    }

    else
    {
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v5;
}

id __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_348(uint64_t a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = +[HMDIdentityRegistry sharedRegistry];
    v8 = [v7 identityForIdentifier:v5];

    if (v8)
    {
      [WeakRetained setPeerIdentity:v8];
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = +[HMDIdentityRegistry sharedRegistry];
      [v9 addObserver:WeakRetained selector:sel___handleRemovedIdentity_ name:@"HMDIdentityRegistryRemovedIdentity" object:v10];

      v11 = [WeakRetained peerDevice];
      v12 = +[HMDAccountRegistry sharedRegistry];
      v13 = [v12 deviceForDevice:v11];

      if (v13 && v11 != v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = WeakRetained;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v68 = a3;
          v18 = v17 = v5;
          *buf = 138543874;
          v76 = v18;
          v77 = 2112;
          v78 = v11;
          v79 = 2112;
          v80 = v13;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Peer device resolved from the registry -- tracked: %@, resolved: %@", buf, 0x20u);

          v5 = v17;
          a3 = v68;
        }

        objc_autoreleasePoolPop(v14);
        v19 = v13;

        [v15 setPeerDevice:v19];
        v11 = v19;
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v20 = +[HMDIdentityRegistry sharedRegistry];
      v21 = [v20 accountsForIdentity:v8];

      v22 = [v21 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v72;
LABEL_10:
        v25 = 0;
        while (1)
        {
          if (*v72 != v24)
          {
            objc_enumerationMutation(v21);
          }

          if ([*(*(&v71 + 1) + 8 * v25) isAuthenticated])
          {
            break;
          }

          if (v23 == ++v25)
          {
            v23 = [v21 countByEnumeratingWithState:&v71 objects:v83 count:16];
            if (v23)
            {
              goto LABEL_10;
            }

            goto LABEL_16;
          }
        }

        v31 = [v11 identities];
        v32 = [v31 containsObject:v8];

        if (v32)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = WeakRetained;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543362;
            v76 = v36;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Successfully authenticated peer identity", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v33);
          [v34 setAuthenticated:1];
          goto LABEL_25;
        }

        v38 = [v11 account];
        v45 = objc_autoreleasePoolPush();
        v46 = WeakRetained;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v69 = v45;
          v49 = v48 = v5;
          v50 = [v11 shortDescription];
          *buf = 138543618;
          v76 = v49;
          v77 = 2112;
          v78 = v50;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to authenticate peer identity for device: %@", buf, 0x16u);

          v5 = v48;
          v45 = v69;
        }

        objc_autoreleasePoolPop(v45);
        v51 = objc_autoreleasePoolPush();
        v52 = v46;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          [v8 identifier];
          v55 = v70 = v38;
          [v11 shortDescription];
          v67 = v51;
          v57 = v56 = v5;
          *buf = 138544130;
          v76 = v54;
          v77 = 2112;
          v78 = v55;
          v79 = 2112;
          v80 = v57;
          v81 = 2112;
          v82 = v70;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@The provided pairing identity, %@, for peer, %@, is not registered to account: %@", buf, 0x2Au);

          v5 = v56;
          v51 = v67;

          v38 = v70;
        }

        objc_autoreleasePoolPop(v51);
        if (a3)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:55];
          *a3 = v30 = 0;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
LABEL_16:

        v26 = objc_autoreleasePoolPush();
        v27 = WeakRetained;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v76 = v29;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping account authentication check as the peer account is not authenticated", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
LABEL_25:
        v37 = [v11 remoteDestinationString];
        v38 = [HMDAccountHandle accountHandleForDestination:v37];

        if (v38)
        {
          v39 = [[HMDUser alloc] initWithAccountHandle:v38 home:0 pairingIdentity:v8 privilege:2];
          [WeakRetained setPeer:v39];
        }

        else
        {
          v58 = objc_autoreleasePoolPush();
          v59 = WeakRetained;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = HMFGetLogIdentifier();
            [v11 remoteDestinationString];
            v63 = v62 = v5;
            *buf = 138543618;
            v76 = v61;
            v77 = 2112;
            v78 = v63;
            _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@[HMDSecureSession] Unable to get the 'userID' from destination '%@'", buf, 0x16u);

            v5 = v62;
          }

          objc_autoreleasePoolPop(v58);
        }

        v64 = [v8 publicKey];
        v30 = [v64 data];
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = WeakRetained;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [v41 peerDevice];
        *buf = 138543874;
        v76 = v43;
        v77 = 2112;
        v78 = v5;
        v79 = 2112;
        v80 = v44;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find identity, %@, for peer: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v40);
      if (a3)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
        *a3 = v30 = 0;
      }

      else
      {
        v30 = 0;
      }
    }
  }

  else if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
    *a3 = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

  v65 = *MEMORY[0x277D85DE8];

  return v30;
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_356(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = a2;
  queue = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v70 = 0;
    v13 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v9 error:&v70];
    v14 = v70;
    v15 = [v13 name];
    v16 = [v15 isEqualToString:@"kRemoteAccessReverseConnectionRequestKey"];

    if (v16)
    {
      v60 = v14;
      v17 = v11;
      v18 = objc_autoreleasePoolPush();
      v19 = WeakRetained;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        [v13 name];
        v23 = v22 = v10;
        *buf = 138543618;
        v72 = v21;
        v73 = 2112;
        v74 = v23;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Received request to setup reverse secure connection: %@", buf, 0x16u);

        v10 = v22;
      }

      objc_autoreleasePoolPop(v18);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_358;
      block[3] = &unk_2797348C0;
      v11 = v17;
      v69 = v17;
      dispatch_async(queue, block);
      v24 = v69;
      v14 = v60;
    }

    else
    {
      v61 = v11;
      v25 = [v10 hmf_numberForKey:@"HMDRemoteMessageReceivedTransportRestrictionKey"];
      v26 = [v25 unsignedIntegerValue];

      [v13 setRestriction:v26];
      v27 = [v13 messagePayload];
      v24 = [v27 mutableCopy];

      if (!v24)
      {
        v24 = [MEMORY[0x277CBEB38] dictionary];
      }

      v28 = [WeakRetained peerDevice];
      v29 = [v28 remoteDestinationString];
      [v24 setObject:v29 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

      [v13 setMessagePayload:v24];
      v30 = [v13 userInfo];
      v31 = [v30 mutableCopy];

      v32 = [WeakRetained peerDevice];
      v33 = [v32 remoteDestinationString];
      [v31 setObject:v33 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

      v34 = [WeakRetained peer];
      if (v34)
      {
        [v31 setObject:v34 forKeyedSubscript:@"kIDSMessageSourceUserKey"];
      }

      v58 = v34;
      v35 = [v10 objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
      [v31 setObject:v35 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

      v36 = [v13 internal];
      v59 = v31;
      [v36 setUserInfo:v31];

      v37 = [HMDRemoteDeviceMessageDestination alloc];
      v38 = [v13 destination];
      v39 = [v38 target];
      v40 = [WeakRetained peerDevice];
      v41 = [(HMDRemoteDeviceMessageDestination *)v37 initWithTarget:v39 device:v40];

      v57 = v41;
      [v13 setDestination:v41];
      [v13 setSecure:1];
      v42 = objc_autoreleasePoolPush();
      v43 = WeakRetained;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v45 = v54 = v42;
        [v13 messagePayload];
        v46 = v56 = v9;
        [MEMORY[0x277CBEB98] setWithObject:@"kIDSMessageSourceIDKey"];
        v48 = v47 = v14;
        [v46 secureDescriptionWithBlacklistKeys:v48];
        v49 = v55 = v10;
        *buf = 138543874;
        v72 = v45;
        v73 = 2112;
        v74 = v13;
        v75 = 2112;
        v76 = v49;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Received decrypted secure message, %@, with payload: %@", buf, 0x20u);

        v14 = v47;
        v9 = v56;

        v10 = v55;
        v42 = v54;
      }

      objc_autoreleasePoolPop(v42);
      v50 = [v13 name];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_361;
      v63[3] = &unk_279734780;
      v63[4] = v43;
      v64 = v50;
      v65 = queue;
      v11 = v61;
      v67 = v61;
      v66 = v10;
      v51 = v50;
      [v13 setInternalResponseHandler:v63];
      v52 = [v43 delegate];
      [v52 messageTransport:v43 didReceiveMessage:v13];
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_3_366(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    v9 = [WeakRetained sessionID];
    v10 = [v9 UUIDString];
    [v8 setObject:v10 forKeyedSubscript:@"kIDSSecureSessionIDKey"];

    v11 = [v8 hmf_stringForKey:@"op"];
    LODWORD(v10) = [v11 isEqualToString:@"pv"];

    if (v10)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"supportsSharedIdentities"];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:maximumSecureRemoteStreams];
      [v8 setObject:v12 forKeyedSubscript:@"max"];

      if ([WeakRetained role] == 2)
      {
        [v8 setObject:0 forKeyedSubscript:@"op"];
      }
    }

    v13 = objc_autoreleasePoolPush();
    v14 = WeakRetained;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v5 shortDescription];
      v18 = [v14 peerDevice];
      v42 = 138544130;
      v43 = v16;
      v44 = 2112;
      v45 = v17;
      v46 = 2112;
      v47 = v18;
      v48 = 2112;
      v49 = v6;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending encrypted secure message %@ to %@ with options:\n%@", &v42, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [HMDRemoteDeviceMessageDestination alloc];
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v14 peerDevice];
    v22 = [(HMDRemoteDeviceMessageDestination *)v19 initWithTarget:v20 device:v21];

    v23 = [v14 remoteSession];
    [v23 requestTimeout];
    v25 = v24;

    v26 = 0.0;
    if (v25 > 0.0)
    {
      v27 = [v14 remoteSession];
      [v27 requestTimeout];
      v26 = v28;
    }

    v29 = [v14 role];
    v30 = @"kSecureServerIDSMessageRequestKey";
    if (v29 == 1)
    {
      v30 = @"kSecureClientIDSMessageRequestKey";
    }

    v31 = v30;
    v32 = [v6 hmf_numberForKey:@"kRemoteMessageRestrictionKey"];
    v33 = v32;
    if (!v32 || (v34 = [v32 unsignedIntegerValue], v34 == -1))
    {
      v35 = 19;
    }

    else
    {
      v35 = v34 | 0x10;
    }

    v36 = [[HMDRemoteMessage alloc] initWithName:v31 destination:v22 payload:v8 type:3 timeout:0 secure:v35 restriction:v26];
    v37 = [v6 hmf_stringForKey:@"kRemoteMessageAttributedMessageNameKey"];

    [(HMDRemoteMessage *)v36 setAttributedMessageName:v37];
    v38 = [v14 delegate];
    if ([v38 conformsToProtocol:&unk_286696D78])
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    if (v40)
    {
      [v40 secureRemoteStream:v14 receivedRequestToSendMessage:v36];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_361(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = [v6 shortDescription];
    *buf = 138544130;
    v30 = v10;
    v31 = 2114;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    v35 = 2114;
    v36 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Responding to decrypted secure message: %{public}@, payload %@ with error: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v27 = @"kIDSMessageResponseErrorDataKey";
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    v28 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v15 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_362;
    block[3] = &unk_2797355D0;
    v26 = *(a1 + 64);
    v24 = v14;
    v25 = *(a1 + 56);
    v16 = v14;
    dispatch_async(v15, block);
  }

  else
  {
    v17 = *(a1 + 48);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_2_363;
    v19[3] = &unk_2797355D0;
    v22 = *(a1 + 64);
    v20 = v6;
    v21 = *(a1 + 56);
    dispatch_async(v17, v19);

    v16 = v22;
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDSecureRemoteStream__configureWithCompletionQueue_completionHandler___block_invoke_2_363(void *a1)
{
  if (a1[4])
  {
    v1 = a1[4];
  }

  else
  {
    v1 = MEMORY[0x277CBEC10];
  }

  return (*(a1[6] + 16))(a1[6], v1, a1[5], 0);
}

- (void)startAndInvokeOnQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDSecureRemoteStream_startAndInvokeOnQueue_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __65__HMDSecureRemoteStream_startAndInvokeOnQueue_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) role];
    v7 = @"server";
    if (v6 == 1)
    {
      v7 = @"client";
    }

    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting secure session in %@ mode", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _configureWithCompletionQueue:*(a1 + 40) completionHandler:*(a1 + 48)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSDate)lastActivity
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastActivity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdle:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    obj = 0;
  }

  else
  {
    obj = [MEMORY[0x277CBEAA8] date];
  }

  os_unfair_lock_lock_with_options();
  idle = self->_idle;
  if (idle != v3)
  {
    self->_idle = v3;
  }

  if (obj)
  {
    objc_storeStrong(&self->_lastActivity, obj);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (idle != v3)
  {
    v6 = [(HMFMessageTransport *)self delegate];
    if ([v6 conformsToProtocol:&unk_286696D78])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 secureRemoteStreamIsIdle:self];
    }
  }
}

- (BOOL)isIdle
{
  os_unfair_lock_lock_with_options();
  idle = self->_idle;
  os_unfair_lock_unlock(&self->_lock);
  return idle;
}

- (void)setAuthenticated:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_authenticated = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAuthenticated
{
  os_unfair_lock_lock_with_options();
  authenticated = self->_authenticated;
  os_unfair_lock_unlock(&self->_lock);
  return authenticated;
}

- (void)setOpen:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_open = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isOpen
{
  os_unfair_lock_lock_with_options();
  open = self->_open;
  os_unfair_lock_unlock(&self->_lock);
  return open;
}

- (void)setMaximumRemoteStreams:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  maximumRemoteStreams = self->_maximumRemoteStreams;
  self->_maximumRemoteStreams = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)maximumRemoteStreams
{
  os_unfair_lock_lock_with_options();
  v3 = self->_maximumRemoteStreams;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setQualityOfService:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_qualityOfService = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)qualityOfService
{
  os_unfair_lock_lock_with_options();
  qualityOfService = self->_qualityOfService;
  os_unfair_lock_unlock(&self->_lock);
  return qualityOfService;
}

- (void)setPeerDevice:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock_with_options();
  peerDevice = self->_peerDevice;
  if (peerDevice != v10)
  {
    v6 = [(HMDDevice *)peerDevice account];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 removeObserver:self name:@"HMDAccountRemovedDeviceNotification" object:v6];
    }

    objc_storeStrong(&self->_peerDevice, a3);
    v8 = [(HMDDevice *)self->_peerDevice account];
    if (v8)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:self selector:sel___handleDeviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:v8];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDDevice)peerDevice
{
  os_unfair_lock_lock_with_options();
  v3 = self->_peerDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDSecureRemoteStream *)self sessionID];
  v5 = [(HMDSecureRemoteStream *)self role];
  v6 = @"unknown";
  if (v5 == 2)
  {
    v6 = @"server";
  }

  if (v5 == 1)
  {
    v6 = @"client";
  }

  v7 = v6;
  [(HMDSecureRemoteStream *)self qualityOfService];
  v8 = HMFQualityOfServiceToString();
  [(HMDSecureRemoteStream *)self isIdle];
  v9 = HMFBooleanToString();
  v10 = [(HMDSecureRemoteStream *)self lastActivity];
  v11 = [v3 stringWithFormat:@", Identifier = %@, Role = %@, QoS = %@, Idle = %@, Last Activity = %@", v4, v7, v8, v9, v10];

  return v11;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDSecureRemoteStream *)self sessionID];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (void)dealloc
{
  [(HMDSecureRemoteStreamInternal *)self->_remoteSession stop];
  v3.receiver = self;
  v3.super_class = HMDSecureRemoteStream;
  [(HMDSecureRemoteStream *)&v3 dealloc];
}

- (HMDSecureRemoteStream)initWithCurrentDevice:(id)a3 peerDevice:(id)a4 clientMode:(BOOL)a5 sessionID:(id)a6 accountRegistry:(id)a7
{
  v9 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v32.receiver = self;
  v32.super_class = HMDSecureRemoteStream;
  v17 = [(HMDSecureRemoteStream *)&v32 init];
  if (v17)
  {
    v30 = v14;
    v31 = v13;
    v18 = HMDispatchQueueNameString();
    v19 = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(v19, v20);
    queue = v17->_queue;
    v17->_queue = v21;

    objc_storeStrong(&v17->_currentDevice, a3);
    objc_storeStrong(&v17->_peerDevice, a4);
    if (v9)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    v17->_role = v23;
    objc_storeStrong(&v17->_sessionID, a6);
    v17->_idle = 1;
    v17->_qualityOfService = 9;
    v24 = [MEMORY[0x277CBEAA8] distantPast];
    lastActivity = v17->_lastActivity;
    v17->_lastActivity = v24;

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v17 selector:sel___handleAccountRemovedFromRegistry_ name:@"HMDAccountRegistryRemovedAccountNotification" object:v16];

    v27 = [(HMDDevice *)v17->_peerDevice account];
    if (v27)
    {
      v28 = [MEMORY[0x277CCAB98] defaultCenter];
      [v28 addObserver:v17 selector:sel___handleDeviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:v27];
    }

    v14 = v30;
    v13 = v31;
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t98 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t98, &__block_literal_global_397);
  }

  v3 = logCategory__hmf_once_v99;

  return v3;
}

uint64_t __36__HMDSecureRemoteStream_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v99;
  logCategory__hmf_once_v99 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end