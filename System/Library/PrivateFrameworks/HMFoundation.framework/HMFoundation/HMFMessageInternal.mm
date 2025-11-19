@interface HMFMessageInternal
- (HMFMessageInternal)init;
- (HMFMessageTransport)transport;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setQualityOfService:(int64_t)a3;
@end

@implementation HMFMessageInternal

- (HMFMessageInternal)init
{
  v3.receiver = self;
  v3.super_class = HMFMessageInternal;
  result = [(HMFMessageInternal *)&v3 init];
  if (result)
  {
    result->_qualityOfService = -1;
  }

  return result;
}

- (HMFMessageTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

- (void)setQualityOfService:(int64_t)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  if ((a3 + 1) > 0x22 || ((1 << (a3 + 1)) & 0x404040401) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier(v8);
      v11 = 138543618;
      v12 = v10;
      v13 = 2048;
      v14 = v3;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Overriding unknown QoS '%tu' to NSQualityOfServiceDefault", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v3 = -1;
  }

  self->_qualityOfService = v3;
  v6 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(HMFMessageInternal *)self identifier];
    v7 = [v6 copyWithZone:a3];
    v8 = *(v5 + 8);
    *(v5 + 8) = v7;

    v9 = [(HMFMessageInternal *)self name];
    v10 = [v9 copyWithZone:a3];
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;

    [(HMFMessageInternal *)self timeout];
    *(v5 + 24) = v12;
    *(v5 + 32) = [(HMFMessageInternal *)self qualityOfService];
    v13 = [(HMFMessageInternal *)self destination];
    v14 = *(v5 + 40);
    *(v5 + 40) = v13;

    v15 = [(HMFMessageInternal *)self transport];
    objc_storeWeak((v5 + 48), v15);

    v16 = [(HMFMessageInternal *)self activity];
    v17 = *(v5 + 56);
    *(v5 + 56) = v16;

    v18 = [(HMFMessageInternal *)self userInfo];
    v19 = [v18 copyWithZone:a3];
    v20 = *(v5 + 64);
    *(v5 + 64) = v19;

    v21 = [(HMFMessageInternal *)self headers];
    v22 = [v21 copyWithZone:a3];
    v23 = *(v5 + 72);
    *(v5 + 72) = v22;

    v24 = [(HMFMessageInternal *)self messagePayload];
    v25 = [v24 copyWithZone:a3];
    v26 = *(v5 + 80);
    *(v5 + 80) = v25;

    v27 = [(HMFMessageInternal *)self logEventSession];
    v28 = *(v5 + 88);
    *(v5 + 88) = v27;

    v29 = [(HMFMessageInternal *)self responseHandler];
    v30 = [v29 copyWithZone:a3];
    v31 = *(v5 + 96);
    *(v5 + 96) = v30;
  }

  return v5;
}

@end