@interface HMDRemoteSendMessageOperation
+ (id)logCategory;
+ (id)shortDescription;
- (HMDRemoteSendMessageOperation)initWithMessage:(id)a3 transport:(id)a4;
- (HMDSecureRemoteMessageTransport)transport;
- (NSArray)attributeDescriptions;
- (NSString)privateDescription;
- (NSString)shortDescription;
- (id)logIdentifier;
- (void)_respondWithError:(id)a3 payload:(id)a4;
- (void)cancelWithError:(id)a3;
- (void)main;
@end

@implementation HMDRemoteSendMessageOperation

- (HMDSecureRemoteMessageTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMFMessage *)self->_message identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  [(HMDRemoteSendMessageOperation *)self _respondWithError:v4 payload:0];
  v5.receiver = self;
  v5.super_class = HMDRemoteSendMessageOperation;
  [(HMFOperation *)&v5 cancelWithError:v4];
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDRemoteSendMessageOperation *)v4 message];
    v8 = [(HMDRemoteSendMessageOperation *)v4 message];
    v9 = [v8 destination];
    *buf = 138543874;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting sending message %@ to destination: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [(HMDRemoteSendMessageOperation *)v4 transport];
  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v4;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine secure transport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [(HMDRemoteSendMessageOperation *)v12 cancelWithError:v15];
  }

  objc_initWeak(buf, v4);
  v16 = [(HMDRemoteSendMessageOperation *)v4 message];
  v17 = [v16 mutableCopy];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__HMDRemoteSendMessageOperation_main__block_invoke;
  v19[3] = &unk_278687FB0;
  objc_copyWeak(&v20, buf);
  [v17 setResponseHandler:v19];
  [v10 sendMessage:v17 completionHandler:0];
  objc_destroyWeak(&v20);

  objc_destroyWeak(buf);
  v18 = *MEMORY[0x277D85DE8];
}

void __37__HMDRemoteSendMessageOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isCancelled])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Operation is already cancelled, do not process response handler", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v5)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [v13 cancelWithError:v5];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully sent message", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [v13 finish];
    }

    [v13 _respondWithError:v5 payload:v6];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_respondWithError:(id)a3 payload:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  if ([(HMDRemoteSendMessageOperation *)self isMessageResponseHandled])
  {
    v7 = 0;
  }

  else
  {
    [(HMDRemoteSendMessageOperation *)self setMessageResponseHandled:1];
    v7 = [(HMDRemoteSendMessageOperation *)self message];
  }

  os_unfair_lock_unlock(&self->_lock);
  [v7 respondWithPayload:v6 error:v8];
}

- (NSArray)attributeDescriptions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Message" value:self->_message options:1 formatter:0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDRemoteSendMessageOperation *)self message];
  v6 = [v5 privateDescription];
  v7 = [v3 stringWithFormat:@"%@, Message = %@", v4, v6];

  return v7;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDRemoteSendMessageOperation *)self message];
  v6 = [v5 identifier];
  v7 = [v3 stringWithFormat:@"%@, Message = %@", v4, v6];

  return v7;
}

- (HMDRemoteSendMessageOperation)initWithMessage:(id)a3 transport:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v7 destination];
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid message destination: %@", buf, 0x16u);

LABEL_12:
    }

LABEL_13:

    objc_autoreleasePoolPop(v16);
    v21 = 0;
    goto LABEL_18;
  }

  if (!v8)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport", buf, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v11 = v7;
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

  [v13 timeout];
  if (v14 <= 0.0)
  {
    v15 = 65.0;
  }

  else
  {
    [v13 timeout];
  }

  v26.receiver = self;
  v26.super_class = HMDRemoteSendMessageOperation;
  v22 = [(HMFOperation *)&v26 initWithTimeout:v15];
  p_isa = &v22->super.super.super.isa;
  if (v22)
  {
    objc_storeStrong(&v22->_message, a3);
    objc_storeWeak(p_isa + 41, v8);
  }

  v17 = p_isa;

  v21 = v17;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_73614 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_73614, &__block_literal_global_73615);
  }

  v3 = logCategory__hmf_once_v10_73616;

  return v3;
}

void __44__HMDRemoteSendMessageOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_73616;
  logCategory__hmf_once_v10_73616 = v1;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end