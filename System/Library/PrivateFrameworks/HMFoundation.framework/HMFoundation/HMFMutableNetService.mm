@interface HMFMutableNetService
- (HMFMutableNetService)initWithDomain:(id)a3 type:(id)a4 name:(id)a5 port:(unint64_t)a6;
- (HMFMutableNetService)initWithNetService:(id)a3;
- (id)internal;
- (void)netService:(id)a3 didNotPublish:(id)a4;
- (void)netServiceDidPublish:(id)a3;
- (void)netServiceDidStop:(id)a3;
- (void)netServiceWillPublish:(id)a3;
- (void)removeTXTRecordValueForKey:(id)a3;
- (void)setInternal:(id)a3;
- (void)setTXTRecord:(id)a3;
- (void)setTXTRecordValue:(id)a3 forKey:(id)a4;
- (void)startPublishingWithCompletionHandler:(id)a3;
- (void)stopPublishing;
- (void)updateTXTRecord;
@end

@implementation HMFMutableNetService

- (HMFMutableNetService)initWithNetService:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMFMutableNetService)initWithDomain:(id)a3 type:(id)a4 name:(id)a5 port:(unint64_t)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v10)
  {
    v26 = objc_autoreleasePoolPush();
    v24 = self;
    v27 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v28 = HMFGetLogIdentifier(v24);
    *buf = 138543362;
    v35 = v28;
    v29 = "%{public}@Service domain is required";
LABEL_13:
    _os_log_impl(&dword_22ADEC000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);

    goto LABEL_14;
  }

  if (!v11)
  {
    v26 = objc_autoreleasePoolPush();
    v24 = self;
    v27 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v28 = HMFGetLogIdentifier(v24);
    *buf = 138543362;
    v35 = v28;
    v29 = "%{public}@Service type is required";
    goto LABEL_13;
  }

  if (!v12)
  {
    v26 = objc_autoreleasePoolPush();
    v24 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier(v24);
      *buf = 138543362;
      v35 = v28;
      v29 = "%{public}@Service name is required";
      goto LABEL_13;
    }

LABEL_14:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_15;
  }

  v32.receiver = self;
  v32.super_class = HMFMutableNetService;
  v14 = [(HMFNetService *)&v32 initWithNetService:0];
  if (v14)
  {
    v15 = [v10 copy];
    domain = v14->super._domain;
    v14->super._domain = v15;

    v17 = [v11 copy];
    type = v14->super._type;
    v14->super._type = v17;

    v19 = [v13 copy];
    name = v14->super._name;
    v14->super._name = v19;

    v14->super._port = a6;
    v21 = +[HMFNetAddress localAddress];
    v33 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    addresses = v14->super._addresses;
    v14->super._addresses = v22;
  }

  v24 = v14;
  v25 = v24;
LABEL_15:

  v30 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)setTXTRecord:(id)a3
{
  v10 = a3;
  v4 = [v10 mutableCopy];
  os_unfair_lock_lock_with_options();
  if (([(NSMutableDictionary *)self->super._TXTRecord isEqualToDictionary:v4]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
    }

    TXTRecord = self->super._TXTRecord;
    self->super._TXTRecord = v5;

    [(HMFMutableNetService *)self updateTXTRecord];
    os_unfair_lock_unlock(&self->super._lock);
    v7 = [v4 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = MEMORY[0x277CBEC10];
    }

    __notifyUpdatedTXTRecord(self, v9);
  }
}

- (void)setTXTRecordValue:(id)a3 forKey:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = v7;
  v10 = MEMORY[0x277CBAB60];
  v24 = v9;
  v11 = [MEMORY[0x277CBEA90] data];
  v25[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v13 = [v10 dataFromTXTRecordDictionary:v12];

  v14 = 0;
  v15 = v8;
  v16 = v6;
  v17 = MEMORY[0x277CBAB60];
  v24 = @"key";
  v25[0] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v19 = [v17 dataFromTXTRecordDictionary:v18];

  v20 = v14;
  os_unfair_lock_lock_with_options();
  v21 = [(NSMutableDictionary *)v15->super._TXTRecord objectForKey:v9];
  LODWORD(v18) = [v21 isEqualToData:v16];

  if (v18)
  {
    os_unfair_lock_unlock(&v15->super._lock);
  }

  else
  {
    [(NSMutableDictionary *)v15->super._TXTRecord setObject:v16 forKey:v9];
    [(HMFMutableNetService *)v15 updateTXTRecord];
    v22 = [(NSMutableDictionary *)v15->super._TXTRecord copy];
    os_unfair_lock_unlock(&v15->super._lock);
    if (v22)
    {
      __notifyUpdatedTXTRecord(v15, v22);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeTXTRecordValueForKey:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->super._TXTRecord removeObjectForKey:v5];
  [(HMFMutableNetService *)self updateTXTRecord];
  v4 = [(NSMutableDictionary *)self->super._TXTRecord copy];
  os_unfair_lock_unlock(&self->super._lock);
  if (v4)
  {
    __notifyUpdatedTXTRecord(self, v4);
  }
}

- (void)updateTXTRecord
{
  v3 = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMFMutableNetService_updateTXTRecord__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(v3, block);
}

void __39__HMFMutableNetService_updateTXTRecord__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPublishing])
  {
    v2 = [*(a1 + 32) internal];
    v3 = MEMORY[0x277CBAB60];
    v4 = [*(a1 + 32) TXTRecord];
    v5 = [v3 dataFromTXTRecordDictionary:v4];
    v6 = [v2 setTXTRecordData:v5];

    if ((v6 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier(v8);
        v12 = 138543362;
        v13 = v10;
        _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to update TXT record", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)internal
{
  os_unfair_lock_lock_with_options();
  v3 = self->super._internal;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setInternal:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  internal = self->super._internal;
  self->super._internal = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)startPublishingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMFNetService *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMFMutableNetService_startPublishingWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786E6D68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HMFMutableNetService_startPublishingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPublishing])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier(v3);
      v29 = 138543362;
      v30 = v5;
      _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@The service is already publishing", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }

    goto LABEL_21;
  }

  if ([*(a1 + 32) port])
  {
    v7 = objc_alloc(MEMORY[0x277CBAB60]);
    v8 = [*(a1 + 32) domain];
    v9 = [*(a1 + 32) type];
    v10 = [*(a1 + 32) name];
    v11 = [v7 initWithDomain:v8 type:v9 name:v10 port:{objc_msgSend(*(a1 + 32), "port")}];

    if (v11)
    {
      [*(a1 + 32) setInternal:v11];
      [v11 setDelegate:*(a1 + 32)];
      v12 = MEMORY[0x277CBAB60];
      v13 = [*(a1 + 32) TXTRecord];
      v14 = [v12 dataFromTXTRecordDictionary:v13];
      [v11 setTXTRecordData:v14];

      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier(v16);
        v29 = 138543362;
        v30 = v18;
        _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@Start publishing the net service", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) setPublishing:1];
      [*(a1 + 32) setPublishBlock:*(a1 + 40)];
      v19 = [*(a1 + 32) internal];
      [v19 publishWithOptions:0];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier(v25);
        v29 = 138543362;
        v30 = v27;
        _os_log_impl(&dword_22ADEC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to create internal net service", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      if (!*(a1 + 40))
      {
        goto LABEL_20;
      }

      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"Failed to create record."];
      (*(*(a1 + 40) + 16))();
    }

LABEL_20:
    goto LABEL_21;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = HMFGetLogIdentifier(v21);
    v29 = 138543362;
    v30 = v23;
    _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot publish without a resolved port", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
  if (*(a1 + 40))
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"Cannot publish without a resolved port."];
    (*(*(a1 + 40) + 16))();
    goto LABEL_20;
  }

LABEL_21:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)stopPublishing
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HMFNetService *)self isPublishing])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier(v4);
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping the net service", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMFNetService *)v4 setPublishing:0];
    v7 = [(HMFNetService *)v4 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__HMFMutableNetService_stopPublishing__block_invoke;
    block[3] = &unk_2786E6C80;
    block[4] = v4;
    dispatch_async(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __38__HMFMutableNetService_stopPublishing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) internal];
  [v1 stop];
}

- (void)netServiceWillPublish:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(v6);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Net service will publish", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)netServiceDidPublish:(id)a3
{
  v4 = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMFMutableNetService_netServiceDidPublish___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(v4, block);
}

void __45__HMFMutableNetService_netServiceDidPublish___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier(v3);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@Published", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) publishBlock];
  if (v6)
  {
    [*(a1 + 32) setPublishBlock:0];
    v6[2](v6, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)netService:(id)a3 didNotPublish:(id)a4
{
  v5 = a4;
  v6 = [(HMFNetService *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HMFMutableNetService_netService_didNotPublish___block_invoke;
  v8[3] = &unk_2786E6D18;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __49__HMFMutableNetService_netService_didNotPublish___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier(v3);
    v17 = 138543362;
    v18 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@Failed to publish", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(v7);
    v10 = *(a1 + 40);
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Failed to publish with error: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [*(a1 + 32) publishBlock];
  if (v11)
  {
    [*(a1 + 32) setPublishBlock:0];
    v12 = MEMORY[0x277CCA9B8];
    v13 = *(a1 + 32);
    v14 = [objc_opt_class() errorFromNetServiceErrorDict:*(a1 + 40)];
    v15 = [v12 hmfErrorWithCode:11 reason:@"Failed to publish net service." suggestion:0 underlyingError:v14];

    (v11)[2](v11, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)netServiceDidStop:(id)a3
{
  v4 = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMFMutableNetService_netServiceDidStop___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(v4, block);
}

void __42__HMFMutableNetService_netServiceDidStop___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier(v3);
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Net service did stop", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setPublishing:0];
  [*(a1 + 32) setInternal:0];
  v6 = [*(a1 + 32) publishBlock];
  if (v6)
  {
    [*(a1 + 32) setPublishBlock:0];
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12 reason:@"Net service stopped publishing."];
    (v6)[2](v6, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end