@interface HMDSecureRemoteMessageTransport
+ (BOOL)isDeviceValidDestination:(id)a3 error:(id *)a4;
+ (HMDSecureRemoteMessageTransport)defaultTransport;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_handleReceivedMessage:(id)a3 transport:(id)a4;
- (HMDSecureRemoteMessageTransport)initWithDataSource:(id)a3;
- (id)_openSecureSessionToDevice:(id)a3 completionHandler:(id)a4;
- (id)_preferredTransportForMessage:(id)a3;
- (id)_secureRemoteSessionForDevice:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)shortDescription;
- (id)start;
- (void)_handleElectDeviceForUserResponse:(id)a3 error:(id)a4 responseQueue:(id)a5 completion:(id)a6;
- (void)_handlePingMessage:(id)a3;
- (void)_handleSecureMessage:(id)a3 fromDevice:(id)a4 transport:(id)a5;
- (void)_pingDevice:(id)a3 completionHandler:(id)a4;
- (void)_reset;
- (void)_sendPingToDevice:(id)a3 timeout:(double)a4 restriction:(unint64_t)a5 responseHandler:(id)a6;
- (void)_sendSecureMessage:(id)a3 completionHandler:(id)a4;
- (void)_updateDeviceInformationFromMessage:(id)a3;
- (void)configureWithCloudDataSyncStateFilter:(id)a3 homeMembershipVerifier:(id)a4;
- (void)configureWithUserDeviceCapabilitiesRequestManager:(id)a3 deviceResidencyProvider:(id)a4 remoteMessageListener:(id)a5;
- (void)electDeviceForHH1User:(id)a3 destination:(id)a4 deviceCapabilities:(id)a5 responseTimeout:(double)a6 responseQueue:(id)a7 responseHandler:(id)a8;
- (void)messageTransport:(id)a3 didReceiveMessage:(id)a4;
- (void)openSecureSessionToDevice:(id)a3 completionHandler:(id)a4;
- (void)pingDevice:(id)a3 completionHandler:(id)a4;
- (void)registerHomeMessageDestinationHandler:(id)a3;
- (void)reset;
- (void)secureRemoteSession:(id)a3 didCloseWithError:(id)a4;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDSecureRemoteMessageTransport

- (void)messageTransport:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D0F770] currentActivity];
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HMDSecureRemoteMessageTransport_messageTransport_didReceiveMessage___block_invoke;
  v13[3] = &unk_2786891E0;
  v14 = v8;
  v15 = self;
  v16 = v7;
  v17 = v6;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __70__HMDSecureRemoteMessageTransport_messageTransport_didReceiveMessage___block_invoke(uint64_t a1)
{
  [*(a1 + 40) _updateDeviceInformationFromMessage:*(a1 + 48)];
  if (([*(a1 + 40) _handleReceivedMessage:*(a1 + 48) transport:*(a1 + 56)] & 1) == 0)
  {
    v2 = [*(a1 + 40) delegate];
    [v2 messageTransport:*(a1 + 40) didReceiveMessage:*(a1 + 48)];
  }
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = +[HMDIdentityRegistry sharedRegistry];
  v7 = [v6 dumpStateWithPrivacyLevel:a3];
  [v5 setObject:v7 forKeyedSubscript:@"identityRegistry"];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__187544;
  v22 = __Block_byref_object_dispose__187545;
  v23 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDSecureRemoteMessageTransport_dumpStateWithPrivacyLevel___block_invoke;
  block[3] = &unk_27868A688;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(queue, block);
  v9 = v19[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__HMDSecureRemoteMessageTransport_dumpStateWithPrivacyLevel___block_invoke_2;
  v16[3] = &__block_descriptor_40_e34__16__0___HMDSecureRemoteSession__8l;
  v16[4] = a3;
  v10 = [v9 na_map:v16];
  [v5 setObject:v10 forKeyedSubscript:@"secureSessions"];

  _Block_object_dispose(&v18, 8);
  v11 = [(HMDSecureRemoteMessageTransport *)self transports];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HMDSecureRemoteMessageTransport_dumpStateWithPrivacyLevel___block_invoke_3;
  v15[3] = &__block_descriptor_40_e35__16__0__HMDRemoteMessageTransport_8l;
  v15[4] = a3;
  v12 = [v11 na_map:v15];
  [v5 setObject:v12 forKeyedSubscript:@"remoteMessageTransports"];

  v13 = [v5 copy];

  return v13;
}

void __61__HMDSecureRemoteMessageTransport_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)secureRemoteSession:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDSecureRemoteMessageTransport_secureRemoteSession_didCloseWithError___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __73__HMDSecureRemoteMessageTransport_secureRemoteSession_didCloseWithError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) device];
    v7 = *(a1 + 48);
    *buf = 138543874;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Session to device, %@, closed with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v8 = *(a1 + 48);
  if (v8)
  {
    v13 = @"HMDSecureRemoteSessionErrorKey";
    v14 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = [*(a1 + 40) device];
  [v10 postNotificationName:@"HMDSecureRemoteSessionErrorNotification" object:v11 userInfo:v9];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureMessage:(id)a3 fromDevice:(id)a4 transport:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(HMDSecureRemoteMessageTransport *)self _secureRemoteSessionForDevice:v9];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v17;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Opening secure session to handle incoming message: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v13 = [(HMDSecureRemoteMessageTransport *)v15 _openSecureSessionToDevice:v9 completionHandler:0];
  if (v13)
  {
LABEL_8:
    v18 = v13;
    [v8 name];

    [v8 identifier];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 receivedSecureMessage:v8 fromDevice:v9 fromTransport:v12];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v15;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v25;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to handle message: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [v8 name];

    [v8 identifier];
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v8 respondWithError:v18];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_openSecureSessionToDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(HMDSecureRemoteMessageTransport *)self _secureRemoteSessionForDevice:v6];
  if (v8)
  {
    v9 = _Block_copy(v7);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, v8, 0);
    }

    v11 = v8;
  }

  else
  {
    v12 = [(HMDSecureRemoteMessageTransport *)self dataSource];
    v11 = [v12 secureSessionWithDevice:v6];

    [v11 setDelegate:self];
    [(NSMutableSet *)self->_secureRemoteSessions addObject:v11];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v11);
    objc_initWeak(&v19, v6);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__HMDSecureRemoteMessageTransport__openSecureSessionToDevice_completionHandler___block_invoke;
    v14[3] = &unk_27867DDF0;
    objc_copyWeak(&v16, &location);
    objc_copyWeak(&v17, &from);
    objc_copyWeak(&v18, &v19);
    v15 = v7;
    [v11 openWithCompletionHandler:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __80__HMDSecureRemoteMessageTransport__openSecureSessionToDevice_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDSecureRemoteMessageTransport__openSecureSessionToDevice_completionHandler___block_invoke_2;
    block[3] = &unk_27867DDC8;
    objc_copyWeak(&v11, a1 + 6);
    v8 = v3;
    v9 = v5;
    objc_copyWeak(&v12, a1 + 7);
    v10 = a1[4];
    dispatch_async(v6, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
  }
}

void __80__HMDSecureRemoteMessageTransport__openSecureSessionToDevice_completionHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32) && [*(*(a1 + 40) + 32) containsObject:WeakRetained])
  {
    v3 = objc_loadWeakRetained((a1 + 64));
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to open secure session to device: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(*(a1 + 40) + 32) removeObject:WeakRetained];
  }

  v8 = _Block_copy(*(a1 + 48));
  v9 = v8;
  if (v8)
  {
    if (*(a1 + 32))
    {
      v10 = 0;
    }

    else
    {
      v10 = WeakRetained;
    }

    (*(v8 + 2))(v8, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)openSecureSessionToDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDSecureRemoteMessageTransport_openSecureSessionToDevice_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __79__HMDSecureRemoteMessageTransport_openSecureSessionToDevice_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HMDSecureRemoteMessageTransport_openSecureSessionToDevice_completionHandler___block_invoke_2;
  v6[3] = &unk_27867DDA0;
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = [v2 _openSecureSessionToDevice:v3 completionHandler:v6];
}

void __79__HMDSecureRemoteMessageTransport_openSecureSessionToDevice_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__HMDSecureRemoteMessageTransport_openSecureSessionToDevice_completionHandler___block_invoke_3;
    v7[3] = &unk_27868A7A0;
    v9 = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (void)_sendSecureMessage:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 destination];
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
      v12 = [v11 device];
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v16;
        v32 = 2112;
        v33 = v6;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Received request to send secure message, %@, to device %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [(HMDSecureRemoteMessageTransport *)v14 _secureRemoteSessionForDevice:v12];
      v18 = v17;
      if (v17)
      {
        [v17 sendMessage:v6 completionHandler:v8];
      }

      else
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __72__HMDSecureRemoteMessageTransport__sendSecureMessage_completionHandler___block_invoke;
        v27[3] = &unk_27867DD78;
        v27[4] = v14;
        v28 = v6;
        v29 = v8;
        v25 = [(HMDSecureRemoteMessageTransport *)v14 _openSecureSessionToDevice:v12 completionHandler:v27];
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v22;
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@The secure message, %@, did not contain a device destination", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v23 = _Block_copy(v8);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23, v12);
      }

      [v6 respondWithError:v12];
    }

    goto LABEL_19;
  }

  v11 = _Block_copy(v7);
  if (v11)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v11 + 2))(v11, v12);
LABEL_19:
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __72__HMDSecureRemoteMessageTransport__sendSecureMessage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 sendMessage:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message, %@, failed to open secure session with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = _Block_copy(*(a1 + 48));
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, v6);
    }

    [*(a1 + 40) respondWithError:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_secureRemoteSessionForDevice:(id)a3
{
  v4 = a3;
  secureRemoteSessions = self->_secureRemoteSessions;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HMDSecureRemoteMessageTransport__secureRemoteSessionForDevice___block_invoke;
  v9[3] = &unk_27867DD50;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableSet *)secureRemoteSessions na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __65__HMDSecureRemoteMessageTransport__secureRemoteSessionForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_sendPingToDevice:(id)a3 timeout:(double)a4 restriction:(unint64_t)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [HMDRemoteDeviceMonitor pingMessageForDevice:v10 timeout:a5 restriction:a4];
  if (v11)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __89__HMDSecureRemoteMessageTransport__sendPingToDevice_timeout_restriction_responseHandler___block_invoke;
    v13[3] = &unk_278689728;
    objc_copyWeak(&v15, &location);
    v14 = v11;
    [v12 setResponseHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  [(HMDSecureRemoteMessageTransport *)self sendMessage:v12 completionHandler:0];
}

void __89__HMDSecureRemoteMessageTransport__sendPingToDevice_timeout_restriction_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDSecureRemoteMessageTransport__sendPingToDevice_timeout_restriction_responseHandler___block_invoke_2;
    block[3] = &unk_278689F98;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)_pingDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__HMDSecureRemoteMessageTransport__pingDevice_completionHandler___block_invoke;
    v8[3] = &unk_278685EC0;
    objc_copyWeak(&v11, &location);
    v9 = v6;
    v10 = v7;
    [(HMDSecureRemoteMessageTransport *)self _sendPingToDevice:v9 timeout:2 restriction:v8 responseHandler:10.0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __65__HMDSecureRemoteMessageTransport__pingDevice_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained deviceMonitor];
  v9 = v8;
  if (v5)
  {
    v10 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65__HMDSecureRemoteMessageTransport__pingDevice_completionHandler___block_invoke_2;
    v19[3] = &unk_278686D60;
    objc_copyWeak(&v21, (a1 + 48));
    v20 = *(a1 + 40);
    [v9 confirmDevice:v10 forClient:WeakRetained timeout:v19 completionHandler:65.0];

    objc_destroyWeak(&v21);
  }

  else
  {
    v11 = [v8 unreachableDevices];
    v12 = [v11 containsObject:*(a1 + 32)];

    if (v12)
    {
      v13 = [WeakRetained deviceMonitor];
      [v13 confirmDevice:*(a1 + 32) forClient:WeakRetained timeout:0 completionHandler:0.0];
    }

    if (WeakRetained)
    {
      v14 = *(a1 + 40);
      if (v14)
      {
        v15 = WeakRetained[2];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __65__HMDSecureRemoteMessageTransport__pingDevice_completionHandler___block_invoke_4;
        v16[3] = &unk_27868A7A0;
        v17 = 0;
        v18 = v14;
        dispatch_async(v15, v16);
      }
    }
  }
}

void __65__HMDSecureRemoteMessageTransport__pingDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = WeakRetained[2];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __65__HMDSecureRemoteMessageTransport__pingDevice_completionHandler___block_invoke_3;
      v8[3] = &unk_27868A7A0;
      v10 = v6;
      v9 = v3;
      dispatch_async(v7, v8);
    }
  }
}

- (void)pingDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDSecureRemoteMessageTransport_pingDevice_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_handlePingMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 destination];
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
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v7 device];
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received ping from %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = [v4 responseHandler];

  if (v13)
  {
    v14 = [v4 responseHandler];
    v14[2](v14, 0, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateDeviceInformationFromMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    if ([v6 isSecure])
    {
      v7 = [v6 sourceVersion];

      if (v7)
      {
        v8 = [v4 destination];
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

        if (v10)
        {
          v26 = 0;
          v11 = [(HMDSecureRemoteMessageTransport *)self accountRegistry];
          v12 = [v10 device];
          v13 = [v12 handles];
          v14 = [v13 firstObject];
          v15 = [v11 deviceForHandle:v14 exists:&v26];

          if (v26 == 1)
          {
            v16 = [v15 version];
            v17 = [v6 sourceVersion];
            v18 = [v16 isEqualToVersion:v17];

            if ((v18 & 1) == 0)
            {
              v19 = objc_autoreleasePoolPush();
              v20 = self;
              v21 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = HMFGetLogIdentifier();
                v23 = [v6 sourceVersion];
                *buf = 138543874;
                v28 = v22;
                v29 = 2112;
                v30 = v15;
                v31 = 2112;
                v32 = v23;
                _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating the device, %@, with version from message: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v19);
              v24 = [v6 sourceVersion];
              [v15 updateVersion:v24];
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleElectDeviceForUserResponse:(id)a3 error:(id)a4 responseQueue:(id)a5 completion:(id)a6
{
  v59[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = v14;
  v16 = 0;
  if (!v10 || v11)
  {
    v17 = v14;
  }

  else
  {
    v46 = [v10 hmf_stringForKey:@"kIDSMessageSourceIDKey"];
    v16 = [HMDDeviceHandle deviceHandleForDestination:?];
    v17 = [v10 mutableCopy];

    v59[0] = @"kIDSMessageSourceIDKey";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
    [v17 removeObjectsForKeys:v18];

    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v54 = v22;
      v55 = 2112;
      v56 = v16;
      v57 = 2112;
      v58 = v17;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Elected device %@ for IDS session with peerInfo %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [v10 hmf_numberForKey:@"kHomedVersionKey"];
    if (v23)
    {
      v45 = v12;
      v24 = [HMDHomeKitVersion alloc];
      v25 = [v23 stringValue];
      v26 = [(HMDHomeKitVersion *)v24 initWithString:v25];

      v52 = 0;
      v27 = [(HMDSecureRemoteMessageTransport *)v20 accountRegistry];
      v28 = [v27 deviceForHandle:v16 exists:&v52];

      v29 = v28;
      if (v52 == 1)
      {
        [v28 version];
        v44 = v13;
        v31 = v30 = v28;
        v32 = [v31 isEqualToVersion:v26];

        v29 = v30;
        v13 = v44;
        if ((v32 & 1) == 0)
        {
          v43 = v26;
          v33 = objc_autoreleasePoolPush();
          v34 = v20;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v36 = v42 = v33;
            *buf = 138543618;
            v54 = v36;
            v55 = 2112;
            v56 = v29;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Updating the device, %@, with the election parameters", buf, 0x16u);

            v33 = v42;
          }

          objc_autoreleasePoolPop(v33);
          v26 = v43;
          [v29 updateVersion:v43];
        }
      }

      v12 = v45;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HMDSecureRemoteMessageTransport__handleElectDeviceForUserResponse_error_responseQueue_completion___block_invoke;
  block[3] = &unk_278689AB8;
  v48 = v11;
  v49 = v16;
  v50 = v17;
  v51 = v13;
  v37 = v17;
  v38 = v16;
  v39 = v11;
  v40 = v13;
  dispatch_async(v12, block);

  v41 = *MEMORY[0x277D85DE8];
}

- (void)electDeviceForHH1User:(id)a3 destination:(id)a4 deviceCapabilities:(id)a5 responseTimeout:(double)a6 responseQueue:(id)a7 responseHandler:(id)a8
{
  v47 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (v15)
  {
    v19 = v16;
  }

  else
  {
    if (v16)
    {
      v20 = [v16 mutableCopy];
    }

    else
    {
      v20 = [MEMORY[0x277CBEB38] dictionary];
    }

    v19 = v20;
    v21 = [v20 hmf_dictionaryForKey:@"kRequestedCapabilitiesKey"];
    v22 = [v21 mutableCopy];

    if (!v22)
    {
      v22 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v22 setObject:&unk_283E73A00 forKeyedSubscript:@"kHomedVersionKey"];
    [v19 setObject:v22 forKeyedSubscript:@"kRequestedCapabilitiesKey"];
  }

  v23 = objc_alloc(MEMORY[0x277CCAD78]);
  v24 = [v23 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v25 = [(HMDSecureRemoteMessageTransport *)self accountRegistry];
  v26 = [HMDMessageDispatcher destinationWithTarget:v24 userID:v14 destination:v15 multicast:1 accountRegistry:v25];

  if (v26)
  {
    v27 = [[HMDRemoteMessage alloc] initWithName:@"kElectDeviceForIDSSessionKey" destination:v26 payload:v19 type:0 timeout:0 secure:17 restriction:a6];
    objc_initWeak(location, self);
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __134__HMDSecureRemoteMessageTransport_electDeviceForHH1User_destination_deviceCapabilities_responseTimeout_responseQueue_responseHandler___block_invoke_2;
    v36 = &unk_278685EC0;
    objc_copyWeak(&v39, location);
    v37 = v17;
    v38 = v18;
    [(HMDRemoteMessage *)v27 setResponseHandler:&v33];
    [(HMDSecureRemoteMessageTransport *)self sendMessage:v27 completionHandler:0, v33, v34, v35, v36];

    objc_destroyWeak(&v39);
    objc_destroyWeak(location);
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      *location = 138543874;
      *&location[4] = v31;
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v15;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot elect device for HH1 user: could not create message destination for userID: %@, destination: %@", location, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __134__HMDSecureRemoteMessageTransport_electDeviceForHH1User_destination_deviceCapabilities_responseTimeout_responseQueue_responseHandler___block_invoke;
    block[3] = &unk_278688B80;
    v41 = v18;
    dispatch_async(v17, block);
    v27 = v41;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __134__HMDSecureRemoteMessageTransport_electDeviceForHH1User_destination_deviceCapabilities_responseTimeout_responseQueue_responseHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2, 0, MEMORY[0x277CBEC10]);
}

void __134__HMDSecureRemoteMessageTransport_electDeviceForHH1User_destination_deviceCapabilities_responseTimeout_responseQueue_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleElectDeviceForUserResponse:v5 error:v8 responseQueue:*(a1 + 32) completion:*(a1 + 40)];
  }
}

- (BOOL)_handleReceivedMessage:(id)a3 transport:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 destination];
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

  if (v10)
  {
    v11 = v6;
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

    v14 = [v11 name];
    v15 = [v14 isEqualToString:@"kPingInternalRequestKey"];

    if (v15)
    {
      [(HMDSecureRemoteMessageTransport *)self _handlePingMessage:v13];
    }

    else
    {
      if (!v13 || ![HMDSecureRemoteSession isSecureRemoteSessionMessage:v13])
      {
        v16 = 0;
        goto LABEL_16;
      }

      v17 = [v10 device];
      [(HMDSecureRemoteMessageTransport *)self _handleSecureMessage:v13 fromDevice:v17 transport:v7];
    }

    v16 = 1;
LABEL_16:

    goto LABEL_17;
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (id)_preferredTransportForMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v6 = [(HMDSecureRemoteMessageTransport *)self transports];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(HMDSecureRemoteMessageTransport *)self transports];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ([v13 canSendMessage:v4])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  if ([v7 count] >= 2)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: There should not be 2 or more available transport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [[HMDAssertionLogEvent alloc] initWithReason:@"There should not be 2 or more available transport"];
    v22 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v22 submitLogEvent:v21];
  }

  v14 = [v7 lastObject];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D0F770] currentActivity];
  [v6 destination];
  v9 = v49 = 0;
  if (self)
  {
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
    v12 = v11;
    if (v11)
    {
      v13 = [v11 device];
      v14 = [HMDSecureRemoteMessageTransport isDeviceValidDestination:v13 error:&v49];
    }

    else
    {
      v32 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v13 = v33;

      if (v13)
      {
        v34 = [v13 handle];

        if (v34)
        {
          v14 = 1;
        }

        else
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"Missing parameter." reason:@"Missing account from destination." suggestion:0];
          v49 = v14 = 0;
        }
      }

      else
      {
        v35 = v32;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;

        if (v37)
        {
          v38 = [v37 homeUUID];

          if (v38)
          {
            v14 = 1;
          }

          else
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"Missing parameter." reason:@"Missing home from destination." suggestion:0];
            v49 = v14 = 0;
          }
        }

        else
        {
          v39 = v35;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;

          v43 = v41;
          if (v41)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v52 = __Block_byref_object_copy__187544;
            v53 = __Block_byref_object_dispose__187545;
            v54 = 0;
            v42 = [v41 devices];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __68__HMDSecureRemoteMessageTransport__isMessageDestinationValid_error___block_invoke;
            v50[3] = &unk_27867DC88;
            v50[4] = buf;
            v14 = [v42 na_all:v50];

            if ((v14 & 1) == 0)
            {
              v49 = *(*&buf[8] + 40);
            }

            _Block_object_dispose(buf, 8);
          }

          else
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:22 description:@"Invalid class." reason:@"Invalid destination class type." suggestion:0];
            v49 = v14 = 0;
          }
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v49;
  if (v14)
  {
    v16 = [(HMDSecureRemoteMessageTransport *)self homeMessagingManager];
    v17 = [v16 sendMessage:v6 completionHandler:v7];

    if ((v17 & 1) == 0)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__HMDSecureRemoteMessageTransport_sendMessage_completionHandler___block_invoke;
      block[3] = &unk_278689AB8;
      v45 = v6;
      v46 = self;
      v47 = v8;
      v48 = v7;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v52 = v15;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Invalid remote message destination for message %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = objc_autoreleasePoolPush();
    v24 = v20;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Invalid remote message destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [[HMDAssertionLogEvent alloc] initWithReason:@"Invalid remote message destination: %@", v15];
    v28 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v28 submitLogEvent:v27];

    v29 = _Block_copy(v7);
    v30 = v29;
    if (v29)
    {
      (*(v29 + 2))(v29, v15);
    }

    [v6 respondWithError:v15];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __65__HMDSecureRemoteMessageTransport_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  v146[10] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accountRegistry];
  v106 = [HMDRemoteMessageTransport remoteMessageFromMessage:v3 secure:0 accountRegistry:v4];

  v5 = objc_autoreleasePoolPush();
  v6 = *v2;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v106 shortDescription];
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v105 = [*(a1 + 40) _preferredTransportForMessage:v106];
  if (!v105)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 40);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v106;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message, %@, there is no available transport", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    [v106 name];

    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v28 = _Block_copy(*(a1 + 56));
    v29 = v28;
    if (v28)
    {
      (*(v28 + 2))(v28, v27);
    }

    [*(a1 + 32) respondWithError:v27];
LABEL_23:

    goto LABEL_49;
  }

  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = v106;
  v14 = v105;
  v15 = v10;
  v16 = v12;
  v102 = v11;
  if (!v11)
  {
LABEL_19:

    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v32 = *(a1 + 56);
    v33 = v13;
    v34 = v14;
    v35 = v31;
    v36 = v32;
    if (v30 && [v33 isSecure] && (objc_msgSend(v34, "isSecure") & 1) == 0)
    {
      v41 = [v33 mutableCopy];
      v42 = [v33 identifier];
      [v41 setIdentifier:v42];

      objc_initWeak(location, v30);
      v43 = [v33 responseHandler];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __109__HMDSecureRemoteMessageTransport__sendLegacySecureMessage_overInsecureTransport_activity_completionHandler___block_invoke;
      v142 = &unk_27867DD28;
      objc_copyWeak(v146, location);
      v44 = v41;
      v143 = v44;
      v45 = v43;
      v144 = v45;
      v46 = v36;
      v145 = v46;
      [v33 setResponseHandler:buf];
      v47 = v35;
      [v33 name];

      [v33 identifier];
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);

      [v30 _sendSecureMessage:v33 completionHandler:v46];
      objc_destroyWeak(v146);

      objc_destroyWeak(location);
      goto LABEL_49;
    }

    v27 = _Block_copy(*(a1 + 56));
    v37 = *(a1 + 48);
    [v33 name];

    v38 = [v33 identifier];

    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    [v34 sendMessage:v33 completionHandler:v27];
    goto LABEL_23;
  }

  v17 = [v13 destination];
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

  if (!v19)
  {

    goto LABEL_19;
  }

  v110 = v13;
  v20 = v19;
  v104 = v14;
  v100 = v15;
  aBlock = v16;
  v109 = v20;
  v101 = [v20 isMulticast];
  if (v101)
  {
    if ([v110 isSecure] && !objc_msgSend(v104, "isSecure"))
    {
      v50 = objc_autoreleasePoolPush();
      v51 = v102;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = HMFGetLogIdentifier();
        v54 = [v110 identifier];
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v54;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Sending account destination message %{public}@ securely to each device in the account.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      v107 = [v110 responseHandler];
      v129[0] = 0;
      v129[1] = v129;
      v129[2] = 0x2020000000;
      v130 = v107 != 0;
      v127[0] = 0;
      v127[1] = v127;
      v127[2] = 0x3032000000;
      v127[3] = __Block_byref_object_copy__187544;
      v127[4] = __Block_byref_object_dispose__187545;
      v128 = 0;
      v55 = dispatch_group_create();
      v56 = +[HMDAccountRegistry sharedRegistry];
      v57 = [v109 handle];
      v99 = [v56 accountForHandle:v57];

      v58 = MEMORY[0x277CBEB98];
      v59 = [v99 devices];
      v60 = [v58 setWithArray:v59];

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v61 = v60;
      v62 = [v61 countByEnumeratingWithState:&v123 objects:buf count:16];
      if (v62)
      {
        v63 = *v124;
        do
        {
          for (i = 0; i != v62; ++i)
          {
            if (*v124 != v63)
            {
              objc_enumerationMutation(v61);
            }

            v65 = *(*(&v123 + 1) + 8 * i);
            if (([v65 isCurrentDevice] & 1) == 0)
            {
              v66 = [v110 mutableCopy];
              v67 = [HMDRemoteDeviceMessageDestination alloc];
              v68 = [v109 target];
              v69 = [(HMDRemoteDeviceMessageDestination *)v67 initWithTarget:v68 device:v65];
              [v66 setDestination:v69];

              dispatch_group_enter(v55);
              v118[0] = MEMORY[0x277D85DD0];
              v118[1] = 3221225472;
              v118[2] = __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke;
              v118[3] = &unk_27867DCB0;
              v118[4] = v51;
              v121 = v127;
              v122 = v129;
              v120 = v107;
              v119 = v55;
              [v66 setResponseHandler:v118];
              [v51 sendMessage:v66 completionHandler:0];
            }
          }

          v62 = [v61 countByEnumeratingWithState:&v123 objects:buf count:16];
        }

        while (v62);
      }

      v70 = [HMDDeviceDiscoveryOperation alloc];
      [v110 timeout];
      v71 = [(HMDDeviceDiscoveryOperation *)v70 initWithAccount:v99 timeout:?];
      -[HMDDeviceDiscoveryOperation setQualityOfService:](v71, "setQualityOfService:", [v110 qualityOfService]);
      objc_initWeak(&from, v51);
      *location = MEMORY[0x277D85DD0];
      *&location[8] = 3221225472;
      *&location[16] = __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke_2;
      v132 = &unk_27867DCD8;
      objc_copyWeak(&v140, &from);
      v72 = v61;
      v133 = v72;
      v134 = v110;
      v135 = v109;
      v73 = v55;
      v136 = v73;
      v138 = v127;
      v139 = v129;
      v74 = v107;
      v137 = v74;
      [(HMDDeviceDiscoveryOperation *)v71 setDiscoveryBlock:location];
      dispatch_group_enter(v73);
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke_4;
      v115[3] = &unk_27868A728;
      v75 = v73;
      v116 = v75;
      [(HMDDeviceDiscoveryOperation *)v71 setCompletionBlock:v115];
      v76 = [MEMORY[0x277D0F8F0] defaultScheduler];
      v77 = [v76 performOperation:v71];

      v78 = v51[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke_5;
      block[3] = &unk_278684DB8;
      v113 = v129;
      v79 = v74;
      v112 = v79;
      v114 = v127;
      dispatch_group_notify(v75, v78, block);
      v80 = _Block_copy(aBlock);
      v81 = v80;
      if (v80)
      {
        (*(v80 + 2))(v80, 0);
      }

      objc_destroyWeak(&v140);
      objc_destroyWeak(&from);

      _Block_object_dispose(v127, 8);
      _Block_object_dispose(v129, 8);
    }

    else
    {
      [v110 name];

      [v110 identifier];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v104 sendMessage:v110 completionHandler:aBlock];
    }
  }

  if ((v101 & 1) == 0)
  {
    v82 = v109;
    v83 = v110;
    v84 = aBlock;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __103__HMDSecureRemoteMessageTransport__electDeviceForAccountDestination_thenSendMessage_completionHandler___block_invoke;
    v142 = &unk_27867DD00;
    v143 = v102;
    v85 = v83;
    v144 = v85;
    v86 = v84;
    v146[0] = v86;
    v87 = v82;
    v145 = v87;
    v88 = _Block_copy(buf);
    v89 = [v87 remoteDestinationString];
    v90 = [v102 userDeviceCapabilitiesRequestManager];
    if (v90)
    {
      v91 = [v87 deviceCapabilities];
      [v90 electDeviceForUserID:v89 destination:0 deviceCapabilities:v91 responseTimeout:v102[2] responseQueue:v88 completionHandler:0.0];
    }

    else
    {
      v92 = objc_autoreleasePoolPush();
      v93 = v102;
      v94 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v108 = HMFGetLogIdentifier();
        v95 = [v85 shortDescription];
        *location = 138543618;
        *&location[4] = v108;
        *&location[12] = 2114;
        *&location[14] = v95;
        _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_ERROR, "%{public}@Asked to send message %{public}@ before device capabilities request manager has been configured", location, 0x16u);
      }

      objc_autoreleasePoolPop(v92);
      v91 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v96 = _Block_copy(v86);
      v97 = v96;
      if (v96)
      {
        (*(v96 + 2))(v96, v91);
      }

      [v85 respondWithError:v91];
    }
  }

LABEL_49:
  v98 = *MEMORY[0x277D85DE8];
}

void __109__HMDSecureRemoteMessageTransport__sendLegacySecureMessage_overInsecureTransport_activity_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) identifier];
      *buf = 138543874;
      v25 = v11;
      v26 = 2114;
      v27 = v12;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send secure message %{public}@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  if (WeakRetained)
  {
    v13 = [v5 domain];
    if ([v13 isEqualToString:*MEMORY[0x277CCA590]] && (objc_msgSend(v5, "code") == -6722 || objc_msgSend(v5, "code") == -6752))
    {
      v14 = [WeakRetained transports];
      v15 = [v14 count];

      if (v15)
      {
        v16 = WeakRetained[2];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __109__HMDSecureRemoteMessageTransport__sendLegacySecureMessage_overInsecureTransport_activity_completionHandler___block_invoke_162;
        block[3] = &unk_278689F98;
        v21 = *(a1 + 32);
        v22 = WeakRetained;
        v23 = *(a1 + 48);
        dispatch_async(v16, block);

        v17 = v21;
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v18 = _Block_copy(*(a1 + 40));
  v17 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18, v5, v6);
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

void __109__HMDSecureRemoteMessageTransport__sendLegacySecureMessage_overInsecureTransport_activity_completionHandler___block_invoke_162(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [HMDRemoteMessageTransport remoteMessageFromMessage:*(a1 + 32) secure:1 accountRegistry:0];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying sending message: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 40) _sendSecureMessage:v2 completionHandler:*(a1 + 48)];

  v7 = *MEMORY[0x277D85DE8];
}

void __103__HMDSecureRemoteMessageTransport__electDeviceForAccountDestination_thenSendMessage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 || !v8)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      v31 = 138543874;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to elect device for message: %@, error: %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = _Block_copy(*(a1 + 56));
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, v7);
    }

    [*(a1 + 40) respondWithError:v7];
  }

  else
  {
    v10 = [*(a1 + 32) accountRegistry];
    v11 = [v10 deviceForHandle:v8];

    if (v11)
    {
      v12 = [HMDRemoteDeviceMessageDestination alloc];
      v13 = [*(a1 + 48) target];
      v14 = [(HMDRemoteDeviceMessageDestination *)v12 initWithTarget:v13 device:v11];
      [*(a1 + 40) setDestination:v14];

      [*(a1 + 32) sendMessage:*(a1 + 40) completionHandler:*(a1 + 56)];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(a1 + 40);
        v31 = 138543874;
        v32 = v25;
        v33 = 2112;
        v34 = v8;
        v35 = 2112;
        v36 = v26;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unknown device for handle: %@. Failed to send for message: %@", &v31, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v28 = _Block_copy(*(a1 + 56));
      v29 = v28;
      if (v28)
      {
        (*(v28 + 2))(v28, v27);
      }

      [*(a1 + 40) respondWithError:v27];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (v9 || (v8 = *(*(a1 + 64) + 8), (*(v8 + 24) & 1) == 0))
  {
    os_unfair_lock_unlock(v7 + 6);
  }

  else
  {
    *(v8 + 24) = 0;
    os_unfair_lock_unlock(v7 + 6);
    (*(*(a1 + 48) + 16))();
  }

  dispatch_group_leave(*(a1 + 40));
}

void __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v5 = [*(a1 + 40) mutableCopy];
    v6 = [HMDRemoteDeviceMessageDestination alloc];
    v7 = [*(a1 + 48) target];
    v8 = [(HMDRemoteDeviceMessageDestination *)v6 initWithTarget:v7 device:v3];
    [v5 setDestination:v8];

    dispatch_group_enter(*(a1 + 56));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke_3;
    v12[3] = &unk_27867DCB0;
    v9 = *(a1 + 80);
    v12[4] = WeakRetained;
    v15 = v9;
    v11 = *(a1 + 64);
    v10 = v11;
    v14 = v11;
    v13 = *(a1 + 56);
    [v5 setResponseHandler:v12];
    [WeakRetained sendMessage:v5 completionHandler:0];
  }
}

void __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke_5(void *a1)
{
  v1 = *(a1[5] + 8);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    v2 = a1[4];
    if (*(*(a1[6] + 8) + 40))
    {
      v3 = *(v2 + 16);
      v4 = a1[4];

      v3(v4);
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      (*(v2 + 16))(v2, v5, 0);
    }
  }
}

void __119__HMDSecureRemoteMessageTransport__sendMulticastAccountMessage_toDestination_overTransport_activity_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (v9 || (v8 = *(*(a1 + 64) + 8), (*(v8 + 24) & 1) == 0))
  {
    os_unfair_lock_unlock(v7 + 6);
  }

  else
  {
    *(v8 + 24) = 0;
    os_unfair_lock_unlock(v7 + 6);
    (*(*(a1 + 48) + 16))();
  }

  dispatch_group_leave(*(a1 + 40));
}

BOOL __68__HMDSecureRemoteMessageTransport__isMessageDestinationValid_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [HMDSecureRemoteMessageTransport isDeviceValidDestination:a2 error:&obj];
  objc_storeStrong((v2 + 40), obj);
  return v3;
}

- (void)registerHomeMessageDestinationHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDSecureRemoteMessageTransport *)self homeMessagingManager];
  [v5 registerHandler:v4];
}

- (void)_reset
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_secureRemoteSessions;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543618;
          v19 = v12;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing secure session: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        [v8 close];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_secureRemoteSessions removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDSecureRemoteMessageTransport_reset__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDSecureRemoteMessageTransport_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = [(HMDSecureRemoteMessageTransport *)self startFuture];

  return v4;
}

void __40__HMDSecureRemoteMessageTransport_start__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = MEMORY[0x277CBEB18];
  v7 = [*(a1 + 32) transports];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [*(a1 + 32) transports];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * v13) start];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [*(a1 + 32) deviceMonitor];
  [v15 start];

  v16 = [*(a1 + 32) startPromise];
  v17 = [MEMORY[0x277D0F7C0] allSettled:v8];
  v18 = [v17 ignoreOutcome];
  [v16 resolveWithFuture:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)configureWithUserDeviceCapabilitiesRequestManager:(id)a3 deviceResidencyProvider:(id)a4 remoteMessageListener:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  [(HMDSecureRemoteMessageTransport *)self setUserDeviceCapabilitiesRequestManager:a3];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(HMDSecureRemoteMessageTransport *)self transports];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        if (v17)
        {
          [v17 setResidencyProvider:v8];
          [v17 configureWithRemoteMessageListener:v9];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)configureWithCloudDataSyncStateFilter:(id)a3 homeMembershipVerifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(HMDSecureRemoteMessageTransport *)self setCloudDataSyncStateFilter:a3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(HMDSecureRemoteMessageTransport *)self transports];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) configureWithHomeMembershipVerifier:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [objc_opt_class() shortDescription];
  v7 = v6;
  if (a3)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
    v9 = [v5 stringWithFormat:@"<%@%@>", v7, v8];
  }

  else
  {
    v9 = [v5 stringWithFormat:@"<%@%@>", v6, &stru_283CF9D50];
  }

  return v9;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMDSecureRemoteMessageTransport)initWithDataSource:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v44.receiver = self;
  v44.super_class = HMDSecureRemoteMessageTransport;
  v6 = [(HMDSecureRemoteMessageTransport *)&v44 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = [v5 accountRegistry];
    accountRegistry = v7->_accountRegistry;
    v7->_accountRegistry = v8;

    v10 = HMDispatchQueueNameString();
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = v7->_queue;
    v7->_queue = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    secureRemoteSessions = v7->_secureRemoteSessions;
    v7->_secureRemoteSessions = v15;

    obj = 0;
    v17 = [MEMORY[0x277D0F7C0] futureWithPromise:&obj];
    startFuture = v7->_startFuture;
    v7->_startFuture = v17;

    objc_storeStrong(&v7->_startPromise, obj);
    v7->_responseHandlerLock._os_unfair_lock_opaque = 0;
    v19 = [v5 transports];
    transports = v7->_transports;
    v7->_transports = v19;

    v21 = [v5 deviceMonitor];
    deviceMonitor = v7->_deviceMonitor;
    v7->_deviceMonitor = v21;

    v23 = [v5 reachabilityObserver];
    modernReachabilityObserver = v7->_modernReachabilityObserver;
    v7->_modernReachabilityObserver = v23;

    v25 = [v5 homeMessagingManager];
    homeMessagingManager = v7->_homeMessagingManager;
    v7->_homeMessagingManager = v25;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = [(HMDSecureRemoteMessageTransport *)v7 transports];
    v28 = [v27 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v40;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v39 + 1) + 8 * i);
          [v32 setDelegate:v7];
          v33 = v32;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          v35 = v34;

          if (v35)
          {
            v36 = [v5 reachabilityObserver];
            [v35 setReachabilityDelegate:v36];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v29);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t62 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t62, &__block_literal_global_187657);
  }

  v3 = logCategory__hmf_once_v63;

  return v3;
}

void __46__HMDSecureRemoteMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v63;
  logCategory__hmf_once_v63 = v1;
}

+ (BOOL)isDeviceValidDestination:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = @"Missing parameter.";
      v9 = @"Missing device from destination.";
      v10 = 20;
      goto LABEL_7;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (![v5 isCurrentDevice])
  {
    v11 = 1;
    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = @"Invalid parameter.";
  v9 = @"Invalid destination, cannot send message to ourselves.";
  v10 = 3;
LABEL_7:
  [v7 hmErrorWithCode:v10 description:v8 reason:v9 suggestion:0];
  *a4 = v11 = 0;
LABEL_10:

  return v11;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (HMDSecureRemoteMessageTransport)defaultTransport
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDSecureRemoteMessageTransport_defaultTransport__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultTransport_onceToken_187671 != -1)
  {
    dispatch_once(&defaultTransport_onceToken_187671, block);
  }

  v2 = defaultTransport_defaultTransport_187672;

  return v2;
}

void __51__HMDSecureRemoteMessageTransport_defaultTransport__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HMDSecureRemoteMessageTransportDefaultDataSource);
  v3 = [[HMDSecureRemoteMessageTransport alloc] initWithDataSource:v2];
  v4 = defaultTransport_defaultTransport_187672;
  defaultTransport_defaultTransport_187672 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating a default secure remote transport", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

@end