@interface HMDHTTPClientMessageTransport
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isReachable;
- (BOOL)isRunning;
- (HMDHTTPClientMessageTransport)init;
- (HMDHTTPClientMessageTransport)initWithIdentifier:(id)a3 netService:(id)a4;
- (HMDHTTPClientMessageTransportDelegate)delegate;
- (NSUUID)sessionIdentifier;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (id)shortDescription;
- (void)_receiveMessage;
- (void)_sendResponseMessage:(id)a3 forTransactionIdentifier:(id)a4;
- (void)_stopWithError:(id)a3;
- (void)client:(id)a3 didRequestPingWithCompletionHandler:(id)a4;
- (void)clientDidBecomeUnreachable:(id)a3;
- (void)dealloc;
- (void)netService:(id)a3 didUpdateTXTRecord:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendMessage:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)sendPingWithCompletionHandler:(id)a3;
- (void)setRunning:(BOOL)a3;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation HMDHTTPClientMessageTransport

- (HMDHTTPClientMessageTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMDHTTPClientMessageTransport *)self debugDescription];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D0F0D0]];

  v6 = [(HMDHTTPClientMessageTransport *)self client];
  v7 = [v6 debugDescription];
  [v4 setObject:v7 forKeyedSubscript:@"client"];

  v8 = [(HMDHTTPClientMessageTransport *)self netService];
  v9 = [v8 debugDescription];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D0F108]];

  return v4;
}

- (void)netService:(id)a3 didUpdateTXTRecord:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmd_sessionIdentifier];
  if (v8)
  {
    os_unfair_lock_lock_with_options();
    sessionIdentifier = self->_sessionIdentifier;
    if (HMFEqualObjects())
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v10 = self->_sessionIdentifier == 0;
      objc_storeStrong(&self->_sessionIdentifier, v8);
      os_unfair_lock_unlock(&self->_lock);
      if (!v10)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v16 = 138543362;
          v17 = v14;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received notification session changed, resetting", &v16, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        __HMDHTTPClientMessageTransportReset(v12);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDHTTPClientMessageTransport *)self remoteDevice];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)clientDidBecomeUnreachable:(id)a3
{
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure." reason:@"The server is no longer reachable" suggestion:0];
  [(HMDHTTPClientMessageTransport *)self _stopWithError:v4];
}

- (void)client:(id)a3 didRequestPingWithCompletionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDHTTPClientMessageTransport_client_didRequestPingWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735558;
  v8 = v5;
  v6 = v5;
  [(HMDHTTPClientMessageTransport *)self sendPingWithCompletionHandler:v7];
}

uint64_t __76__HMDHTTPClientMessageTransport_client_didRequestPingWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_netService == v10)
  {
    v12 = NSStringFromSelector(sel_port);
    v13 = [v9 isEqualToString:v12];

    if (v13)
    {
      v14 = [v11 hmf_numberForKey:*MEMORY[0x277CCA300]];
      v15 = [v11 hmf_numberForKey:*MEMORY[0x277CCA2F0]];
      if ((HMFEqualObjects() & 1) == 0 && [v14 integerValue] != -1)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = HMFGetLogIdentifier();
          v21 = 138543874;
          v22 = v19;
          v23 = 2112;
          v24 = v14;
          v25 = 2112;
          v26 = v15;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Port change from '%@' to '%@'", &v21, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        __HMDHTTPClientMessageTransportReset(v17);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)sendPingWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D0F840]);
  v6 = MEMORY[0x277CBEBC0];
  v7 = [(HMDHTTPClientMessageTransport *)self client];
  v8 = [v7 baseURL];
  v9 = [v6 URLWithString:@"/ping" relativeToURL:v8];
  v10 = [v5 initWithURL:v9 method:@"GET" body:0 timeoutInterval:5.0];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Sending ping request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, v12);
  v15 = [(HMDHTTPClientMessageTransport *)v12 client];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__HMDHTTPClientMessageTransport_sendPingWithCompletionHandler___block_invoke;
  v18[3] = &unk_279735530;
  objc_copyWeak(&v20, buf);
  v16 = v4;
  v19 = v16;
  [v15 sendRequest:v10 completionHandler:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];
}

void __63__HMDHTTPClientMessageTransport_sendPingWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received response to ping with error: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v6)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to ping server", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v34 = 0;
  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:100 options:0 error:&v34];
  v11 = v34;
  if (v10)
  {
    if (a4 <= 0.0)
    {
      a4 = 60.0;
    }

    v12 = objc_alloc(MEMORY[0x277D0F840]);
    v13 = MEMORY[0x277CBEBC0];
    v14 = [(HMDHTTPClientMessageTransport *)self client];
    v15 = [v14 baseURL];
    v16 = [v13 URLWithString:@"/sendMessage" relativeToURL:v15];
    v17 = [v12 initWithURL:v16 method:@"POST" body:v10 timeoutInterval:a4];

    v18 = [(HMDHTTPClientMessageTransport *)self identifier];
    v19 = [v18 UUIDString];
    [v17 setHeaderValue:v19 forHeaderKey:@"Client-Identifier"];

    v20 = +[HMDHTTPMessageTransport protocolVersion];
    v21 = [v20 versionString];
    [v17 setHeaderValue:v21 forHeaderKey:@"Protocol-Version"];

    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Sending message request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [(HMDHTTPClientMessageTransport *)v23 client];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __71__HMDHTTPClientMessageTransport_sendMessage_timeout_completionHandler___block_invoke;
    v32[3] = &unk_279735508;
    v32[4] = v23;
    v33 = v9;
    [v26 sendRequest:v17 completionHandler:v32];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v30;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize response message with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    if (v9)
    {
      (*(v9 + 2))(v9, 0, v11);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __71__HMDHTTPClientMessageTransport_sendMessage_timeout_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v10;
    v52 = 2112;
    v53 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received response to /sendMessage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (!v6)
  {
    v16 = [v5 body];
    v17 = [v16 length];

    if (v17)
    {
      v18 = MEMORY[0x277CCAC58];
      v19 = [v5 body];
      v49 = 0;
      v20 = [v18 propertyListWithData:v19 options:0 format:0 error:&v49];
      v21 = v49;

      if (v20)
      {
        v22 = v20;
        objc_opt_class();
        v23 = objc_opt_isKindOfClass() & 1;
        if (v23)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        if (v23)
        {
          v26 = [v5 headerFields];
          v27 = [v26 hmf_stringForKey:@"Protocol-Version"];

          if (v27)
          {
            v28 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v27];
          }

          else
          {
            v28 = 0;
          }

          if ([HMDHTTPMessageTransport protocolVersionSupportsExtendedMessages:v28])
          {
            v29 = [v22 hmf_dictionaryForKey:@"p"];
            v45 = [v22 hmf_numberForKey:@"s"];
            v30 = [MEMORY[0x277CCA9B8] hmd_HTTPMessageTransportErrorWithCode:{objc_msgSend(v45, "unsignedIntegerValue")}];
          }

          else
          {
            v29 = v22;
            v30 = 0;
          }

LABEL_32:
          v46 = *(a1 + 40);
          if (v46)
          {
            (*(v46 + 16))(v46, v29, v30);
          }

          goto LABEL_34;
        }

        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 32);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          v39 = [*(a1 + 32) shortDescription];
          v40 = objc_opt_class();
          *buf = 138543874;
          v51 = v48;
          v52 = 2112;
          v53 = v39;
          v54 = 2112;
          v55 = v40;
          v41 = v21;
          v42 = v36;
          v43 = v40;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%@ Invalid message class type: %@", buf, 0x20u);

          v36 = v42;
          v21 = v41;
        }

        objc_autoreleasePoolPop(v36);
        if (*(a1 + 40))
        {
          v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22 description:@"Invalid class." reason:@"Invalid message class." suggestion:0];
          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = *(a1 + 32);
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v51 = v34;
          v52 = 2112;
          v53 = v21;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize message payload with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = *(a1 + 40);
        if (v35)
        {
          (*(v35 + 16))(v35, 0, v21);
        }
      }

      v29 = 0;
      v30 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v29 = 0;
    v30 = 0;
    goto LABEL_32;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v14;
    v52 = 2112;
    v53 = v6;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, 0, v6);
  }

LABEL_35:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_sendResponseMessage:(id)a3 forTransactionIdentifier:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v28 = 0;
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:100 options:0 error:&v28];
    v9 = v28;
    if (!v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v13;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize response message with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = objc_alloc(MEMORY[0x277D0F840]);
  v15 = MEMORY[0x277CBEBC0];
  v16 = [(HMDHTTPClientMessageTransport *)self client];
  v17 = [v16 baseURL];
  v18 = [v15 URLWithString:@"/sendResponse" relativeToURL:v17];
  v19 = [v14 initWithURL:v18 method:@"PUT" body:v8 timeoutInterval:60.0];

  v20 = [(HMDHTTPClientMessageTransport *)self identifier];
  v21 = [v20 UUIDString];
  [v19 setHeaderValue:v21 forHeaderKey:@"Client-Identifier"];

  v22 = [v7 UUIDString];
  [v19 setHeaderValue:v22 forHeaderKey:@"Transaction-Identifier"];

  v23 = [(HMDHTTPClientMessageTransport *)self client];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __79__HMDHTTPClientMessageTransport__sendResponseMessage_forTransactionIdentifier___block_invoke;
  v26[3] = &unk_2797354E0;
  v26[4] = self;
  v27 = v7;
  v24 = v7;
  [v23 sendRequest:v19 completionHandler:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __79__HMDHTTPClientMessageTransport__sendResponseMessage_forTransactionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      v13 = "%{public}@Failed to send response for transaction, %@, with error: %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v14, v15, v13, &v19, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v17;
    v13 = "%{public}@Successfully sent response for transaction: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_receiveMessage
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(HMDHTTPClientMessageTransport *)self isRunning])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Send long-polled /receiveMessage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = objc_alloc(MEMORY[0x277D0F840]);
    v8 = MEMORY[0x277CBEBC0];
    v9 = [(HMDHTTPClientMessageTransport *)v4 client];
    v10 = [v9 baseURL];
    v11 = [v8 URLWithString:@"/receiveMessage" relativeToURL:v10];
    v12 = [v7 initWithURL:v11 method:@"GET" body:0 timeoutInterval:3600.0];

    v13 = [(HMDHTTPClientMessageTransport *)v4 identifier];
    v14 = [v13 UUIDString];
    [v12 setHeaderValue:v14 forHeaderKey:@"Client-Identifier"];

    v15 = [MEMORY[0x277CBEAA8] date];
    v16 = [(HMDHTTPClientMessageTransport *)v4 client];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__HMDHTTPClientMessageTransport__receiveMessage__block_invoke;
    v19[3] = &unk_2797354E0;
    v19[4] = v4;
    v20 = v15;
    v17 = v15;
    [v16 sendRequest:v12 completionHandler:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __48__HMDHTTPClientMessageTransport__receiveMessage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v10;
    v48 = 2112;
    v49 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received a response to /receiveMessage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (!v6)
  {
    v15 = [v5 headerFields];
    v16 = [v15 hmf_UUIDForKey:@"Transaction-Identifier"];

    if (v16)
    {
      v17 = MEMORY[0x277CCAC58];
      v18 = [v5 body];
      v45 = 0;
      v19 = [v17 propertyListWithData:v18 options:0 format:0 error:&v45];
      v20 = v45;

      if (v19)
      {
        v21 = v19;
        objc_opt_class();
        v22 = objc_opt_isKindOfClass() & 1;
        if (v22)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (v22)
        {
          v25 = [*(a1 + 32) delegate];
          v26 = *(a1 + 32);
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __48__HMDHTTPClientMessageTransport__receiveMessage__block_invoke_42;
          v43[3] = &unk_2797354B8;
          v43[4] = v26;
          v44 = v16;
          [v25 client:v26 didReceiveMessage:v21 completionHandler:v43];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v35 = *(a1 + 32);
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v37 = v41 = v24;
            v38 = objc_opt_class();
            *buf = 138543618;
            v47 = v37;
            v48 = 2112;
            v49 = v38;
            v39 = v38;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Invalid message class type: %@", buf, 0x16u);

            v24 = v41;
          }

          objc_autoreleasePoolPop(context);
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = *(a1 + 32);
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v34;
          v48 = 2112;
          v49 = v20;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize message payload with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v30;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Missing the message transaction identifier", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
    }

    v14 = *(a1 + 32);
    goto LABEL_25;
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSinceDate:*(a1 + 40)];
  v13 = v12;

  v14 = *(a1 + 32);
  if (v13 > 60.0)
  {
LABEL_25:
    [v14 _receiveMessage];
    goto LABEL_26;
  }

  [v14 _stopWithError:v6];
LABEL_26:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_stopWithError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHTTPClientMessageTransport *)self client];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping the client with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDHTTPClientMessageTransport *)v7 setRunning:0];
    v10 = [(HMDHTTPClientMessageTransport *)v7 client];
    [v10 cancelPendingRequests];

    v11 = [(HMDHTTPClientMessageTransport *)v7 delegate];
    [v11 client:v7 didStopWithError:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startWithCompletionHandler:(id)a3
{
  v6 = a3;
  if ([(HMDHTTPClientMessageTransport *)self isReachable])
  {
    if (![(HMDHTTPClientMessageTransport *)self isRunning])
    {
      [(HMDHTTPClientMessageTransport *)self setRunning:1];
      [(HMDHTTPClientMessageTransport *)self _receiveMessage];
      v4 = [(HMDHTTPClientMessageTransport *)self netService];
      [v4 resolveWithTimeout:0 completionHandler:0.0];
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication Failure." reason:@"The server is unreachable." suggestion:0];
  }

  if (v6)
  {
    v6[2](v6, v5);
  }
}

- (BOOL)isReachable
{
  v2 = [(HMDHTTPClientMessageTransport *)self client];
  v3 = [v2 isReachable];

  return v3;
}

- (void)setRunning:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_running = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isRunning
{
  os_unfair_lock_lock_with_options();
  running = self->_running;
  os_unfair_lock_unlock(&self->_lock);
  return running;
}

- (NSUUID)sessionIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_286509E58;
  }

  v8 = [(HMDHTTPClientMessageTransport *)self netService];
  v9 = [v8 name];
  v10 = [(HMDHTTPClientMessageTransport *)self sessionIdentifier];
  v11 = [v10 UUIDString];
  [(HMDHTTPClientMessageTransport *)self isReachable];
  v12 = HMFBooleanToString();
  [(HMDHTTPClientMessageTransport *)self isRunning];
  v13 = HMFBooleanToString();
  v14 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Session Identifier = %@, Reachable = %@, Running = %@>", v6, v7, v9, v11, v12, v13];

  if (v3)
  {
  }

  return v14;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDHTTPClientMessageTransport *)self netService];
  v6 = [v5 name];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (void)dealloc
{
  netService = self->_netService;
  v4 = NSStringFromSelector(sel_port);
  [(HMFNetService *)netService removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = HMDHTTPClientMessageTransport;
  [(HMDHTTPClientMessageTransport *)&v5 dealloc];
}

- (HMDHTTPClientMessageTransport)initWithIdentifier:(id)a3 netService:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v26 = objc_autoreleasePoolPush();
    v24 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      v29 = "%{public}@The identifier is required";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_12;
  }

  if (!v7)
  {
    v26 = objc_autoreleasePoolPush();
    v24 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      v29 = "%{public}@The netService is required";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v32.receiver = self;
  v32.super_class = HMDHTTPClientMessageTransport;
  v9 = [(HMDHTTPClientMessageTransport *)&v32 init];
  if (v9)
  {
    v10 = [v6 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_netService, a4);
    [v8 setDelegate:v9];
    v12 = NSStringFromSelector(sel_port);
    [v8 addObserver:v9 forKeyPath:v12 options:3 context:0];

    v13 = [HMDHTTPDevice alloc];
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = [v8 name];
    v16 = [v14 initWithUUIDString:v15];
    v17 = [(HMDHTTPDevice *)v13 initWithIdentifier:v16];
    remoteDevice = v9->_remoteDevice;
    v9->_remoteDevice = v17;

    v19 = [v8 hmd_sessionIdentifier];
    sessionIdentifier = v9->_sessionIdentifier;
    v9->_sessionIdentifier = v19;

    v21 = [MEMORY[0x277D0F7D0] defaultConfiguration];
    [v21 setRequiresEncryption:1];
    [v21 setAllowsAnonymousConnection:1];
    [v21 setAllowsCellularAccess:0];
    [v21 setSupportsWakeOnLAN:1];
    [v21 setMonitorsReachability:1];
    v22 = [objc_alloc(MEMORY[0x277D0F7C8]) initWithService:v8 configuration:v21];
    client = v9->_client;
    v9->_client = v22;

    [(HMFHTTPClient *)v9->_client setDelegate:v9];
  }

  v24 = v9;
  v25 = v24;
LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
  return v25;
}

- (HMDHTTPClientMessageTransport)init
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
  if (logCategory__hmf_once_t27_190138 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_190138, &__block_literal_global_190139);
  }

  v3 = logCategory__hmf_once_v28_190140;

  return v3;
}

uint64_t __44__HMDHTTPClientMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v28_190140;
  logCategory__hmf_once_v28_190140 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end