@interface HAPBridgedAccessory
- (BOOL)__isReachable;
- (BOOL)__parseBridgeService:(id)a3;
- (BOOL)__parseServices;
- (BOOL)mergeObject:(id)a3;
- (BOOL)mergeWithAccessory:(id)a3;
- (BOOL)shouldMergeObject:(id)a3;
- (HAPBridgedAccessory)initWithServer:(id)a3 instanceID:(id)a4 parsedServices:(id)a5;
- (HAPCharacteristic)reachabilityCharacteristic;
- (id)accessoryServerDidRequestCharacteristicsToRegisterForNotifications:(id)a3;
- (id)shortDescription;
- (void)accessoryServer:(id)a3 didUpdateValueForCharacteristic:(id)a4;
@end

@implementation HAPBridgedAccessory

- (HAPCharacteristic)reachabilityCharacteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_reachabilityCharacteristic);

  return WeakRetained;
}

- (void)accessoryServer:(id)a3 didUpdateValueForCharacteristic:(id)a4
{
  v5 = a4;
  v6 = [v5 service];
  v7 = [v6 accessory];
  v8 = [v7 isEqual:self];

  if (v8)
  {
    v9 = [v5 value];
    v10 = [(HAPAccessory *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HAPBridgedAccessory_accessoryServer_didUpdateValueForCharacteristic___block_invoke;
    block[3] = &unk_2786D7078;
    v13 = v5;
    v14 = v9;
    v15 = self;
    v11 = v9;
    dispatch_async(v10, block);
  }
}

void __71__HAPBridgedAccessory_accessoryServer_didUpdateValueForCharacteristic___block_invoke(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] service];
  v3 = [v2 type];
  v4 = [v3 isEqualToString:@"00000062-0000-1000-8000-0026BB765291"];

  if (v4)
  {
    v5 = [a1[4] type];
    v6 = [v5 isEqualToString:@"00000063-0000-1000-8000-0026BB765291"];

    if (v6)
    {
      v7 = [a1[5] isEqualToNumber:MEMORY[0x277CBEC38]];
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v7)
      {
        if (v10)
        {
          v11 = HMFGetLogIdentifier();
          v12 = [a1[6] shortDescription];
          v15 = 138543618;
          v16 = v11;
          v17 = 2112;
          v18 = v12;
          v13 = "%{public}@[%@] Received reachability update of YES, marking accessory as reachable";
LABEL_8:
          _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, v13, &v15, 0x16u);
        }
      }

      else if (v10)
      {
        v11 = HMFGetLogIdentifier();
        v12 = [a1[6] shortDescription];
        v15 = 138543618;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        v13 = "%{public}@[%@] Received reachability update of NO, marking accessory as unreachable";
        goto LABEL_8;
      }

      objc_autoreleasePoolPop(v8);
      [a1[6] setReachable:v7];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)accessoryServerDidRequestCharacteristicsToRegisterForNotifications:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessory *)self server];

  if (v5 == v4)
  {
    v7 = [(HAPBridgedAccessory *)self reachabilityCharacteristic];
    v8 = v7;
    if (v7)
    {
      v11[0] = v7;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)mergeObject:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
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
    v14.receiver = self;
    v14.super_class = HAPBridgedAccessory;
    v7 = [(HAPAccessory *)&v14 mergeObject:v4];
    if (![(HAPBridgedAccessory *)self __parseServices])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [(HAPBridgedAccessory *)self shortDescription];
        *buf = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse services during merge", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)shouldMergeObject:(id)a3
{
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
    v9.receiver = self;
    v9.super_class = HAPBridgedAccessory;
    v7 = [(HAPAccessory *)&v9 shouldMergeObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)mergeWithAccessory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(HAPBridgedAccessory *)self __parseServices])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [(HAPBridgedAccessory *)self shortDescription];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse services during merge", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)__parseBridgeService:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a3 characteristics];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 type];
        v12 = [v11 isEqualToString:@"00000063-0000-1000-8000-0026BB765291"];

        if (v12)
        {
          [(HAPBridgedAccessory *)self setReachabilityCharacteristic:v10];
          v13 = [v10 value];
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

          if (v15)
          {
            -[HAPBridgedAccessory setReachable:](self, "setReachable:", [v15 BOOLValue]);
          }

          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (BOOL)__parseServices
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(HAPAccessory *)self services];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 type];
        v11 = [v10 isEqualToString:@"00000062-0000-1000-8000-0026BB765291"];

        if (v11)
        {
          if (v6)
          {
            v16 = objc_autoreleasePoolPush();
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = HMFGetLogIdentifier();
              v19 = [(HAPBridgedAccessory *)self shortDescription];
              *buf = 138543618;
              v28 = v18;
              v29 = 2112;
              v30 = v19;
              _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory has more than one Bridge Service", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            goto LABEL_19;
          }

          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    if (v6 && ![(HAPBridgedAccessory *)self __parseBridgeService:v6])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [(HAPBridgedAccessory *)self shortDescription];
        *buf = 138543618;
        v28 = v14;
        v29 = 2112;
        v30 = v15;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse bridge service", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
LABEL_19:
      v20 = 0;
      goto LABEL_22;
    }
  }

  else
  {

    v6 = 0;
  }

  v20 = 1;
LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)__isReachable
{
  v3 = [(HAPBridgedAccessory *)self reachabilityCharacteristic];

  if (!v3)
  {
    return 1;
  }

  v4 = [(HAPBridgedAccessory *)self reachabilityCharacteristic];
  v5 = [v4 value];
  v6 = [v5 BOOLValue];

  return v6;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HAPAccessory *)self instanceID];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (HAPBridgedAccessory)initWithServer:(id)a3 instanceID:(id)a4 parsedServices:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = HAPBridgedAccessory;
  v11 = [(HAPAccessory *)&v20 initWithServer:v8 instanceID:v9 parsedServices:v10];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  if ([(HAPBridgedAccessory *)v11 __parseServices])
  {
    [v8 addInternalDelegate:v12];
LABEL_4:
    v13 = v12;
    goto LABEL_8;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [(HAPBridgedAccessory *)v12 shortDescription];
    *buf = 138543618;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse services", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v13 = 0;
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

@end