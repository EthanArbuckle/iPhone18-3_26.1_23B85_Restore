@interface HMDUnpairedHAPAccessory
- (BOOL)hasBTLELink;
- (BOOL)hasIPLink;
- (BOOL)isKnownToSystemCommissioner;
- (BOOL)isReachable;
- (BOOL)requiresThreadRouter;
- (BOOL)supportsCHIP;
- (HMDUnpairedHAPAccessory)initWithAccessoryServer:(id)a3 messageDispatcher:(id)a4;
- (HMDUnpairedHAPAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 messageDispatcher:(id)a6;
- (NSArray)accessoryServers;
- (id)commissioningID;
- (id)dumpDescription;
- (id)matterDeviceTypeID;
- (id)nodeID;
- (id)preferredAccessoryServer;
- (id)productID;
- (id)rootPublicKey;
- (id)serialNumber;
- (id)vendorID;
- (unint64_t)transportTypes;
- (void)addAccessoryServer:(id)a3;
- (void)identifyWithCompletionHandler:(id)a3;
- (void)removeAccessoryServer:(id)a3;
@end

@implementation HMDUnpairedHAPAccessory

- (id)matterDeviceTypeID
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 matterDeviceTypeID];

        if (v7)
        {
          v3 = [v6 matterDeviceTypeID];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)requiresThreadRouter
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) requiresThreadRouter])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)serialNumber
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 primaryAccessory];
        v8 = [v7 serialNumber];

        if (v8)
        {
          v9 = [v6 primaryAccessory];
          v3 = [v9 serialNumber];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)productID
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 productID];

        if (v7)
        {
          v3 = [v6 productID];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)vendorID
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 vendorID];

        if (v7)
        {
          v3 = [v6 vendorID];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)commissioningID
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 commissioningID];

        if (v7)
        {
          v3 = [v6 commissioningID];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)nodeID
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 nodeID];

        if (v7)
        {
          v3 = [v6 nodeID];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)rootPublicKey
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 rootPublicKey];

        if (v7)
        {
          v3 = [v6 rootPublicKey];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isKnownToSystemCommissioner
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isKnownToSystemCommissioner])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)supportsCHIP
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v12 + 1) + 8 * i) communicationProtocol] == 2)
          {

            v9 = 1;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
  }

  else
  {
    v9 = [(HMDUnpairedHAPAccessory *)self initializedAsMatter];
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)hasIPLink
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;

        if (v9)
        {
          if (![v9 isWacAccessory] || (objc_msgSend(v9, "isWacComplete") & 1) != 0)
          {
            goto LABEL_19;
          }
        }

        else if ([v7 linkType] == 1)
        {
          v7 = 0;
LABEL_19:

          v10 = 1;
          goto LABEL_20;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)hasBTLELink
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) linkType] == 2)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)transportTypes
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v28;
    v8 = 0x277CFE000uLL;
    *&v4 = 138543618;
    v26 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 linkType];
        if (v11 == 2)
        {
          v6 |= 2uLL;
        }

        else if (v11 == 1)
        {
          v12 = *(v8 + 2624);
          v13 = v10;
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

          v16 = [v15 isWacAccessory];
          if (v16)
          {
            v17 = 9;
          }

          else
          {
            v17 = 1;
          }

          v6 |= v17;
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v10;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v22 = v21 = v8;
            v23 = [v19 linkType];
            *buf = v26;
            v32 = v22;
            v33 = 2048;
            v34 = v23;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unhandled linkType: %tu", buf, 0x16u);

            v8 = v21;
          }

          objc_autoreleasePoolPop(v18);
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)preferredAccessoryServer
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v5 = *(*(&v11 + 1) + 8 * v7);

      if ([v5 linkType] == 1)
      {
        break;
      }

      ++v7;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removeAccessoryServer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [v4 linkType];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMutableArray *)self->_accessoryServers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v5 == [v10 linkType])
        {
          [(NSMutableArray *)self->_accessoryServers removeObject:v10];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)addAccessoryServer:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [v4 linkType];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableArray *)self->_accessoryServers copy];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v5 == [v10 linkType])
        {
          [(NSMutableArray *)self->_accessoryServers removeObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_accessoryServers addObject:v4];
  v11 = [v4 category];
  [(HMDUnassociatedAccessory *)self updateCategoryWithCategoryIdentifier:v11];

  v12 = [v4 matterDeviceTypeID];
  [(HMDUnassociatedAccessory *)self setMatterDeviceTypeID:v12];

  os_unfair_recursive_lock_unlock();
  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)accessoryServers
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_accessoryServers copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)identifyWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUnpairedHAPAccessory *)self preferredAccessoryServer];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Identify by /identify URL or unpaired BTLE characteristic write", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    objc_initWeak(buf, v7);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__HMDUnpairedHAPAccessory_identifyWithCompletionHandler___block_invoke;
    v12[3] = &unk_278686D60;
    objc_copyWeak(&v14, buf);
    v13 = v4;
    [v5 identifyWithCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else if (v4)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:4 userInfo:0];
    (*(v4 + 2))(v4, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __57__HMDUnpairedHAPAccessory_identifyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Identify by /identify URL completed with error: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReachable
{
  v2 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)dumpDescription
{
  v32 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HMDUnpairedHAPAccessory;
  v3 = [(HMDUnassociatedAccessory *)&v30 dumpDescription];
  v4 = [v3 mutableCopy];

  v5 = *MEMORY[0x277D0F170];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D0F170]];
  v7 = [v6 mutableCopy];

  v8 = [(HMDUnpairedHAPAccessory *)self setupHash];
  [(HMDUnpairedHAPAccessory *)self transportTypes];
  v9 = HMAccessoryTransportTypesToString();
  [v7 appendFormat:@"  setupHash %@  transportTypes %@  linkType ", v8, v9];

  v25 = v4;
  [v4 setObject:v7 forKey:v5];
  v10 = MEMORY[0x277CBEB18];
  v11 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [(HMDUnpairedHAPAccessory *)self accessoryServers];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = MEMORY[0x277CCACA8];
        v19 = [*(*(&v26 + 1) + 8 * i) linkType];
        v20 = @"Undefined";
        if (v19 <= 2)
        {
          v20 = off_2786768F0[v19];
        }

        v21 = v20;
        v22 = [v18 stringWithFormat:@"%@ ", v21];
        [v12 addObject:v22];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    [v25 setObject:v12 forKey:*MEMORY[0x277D0F040]];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (HMDUnpairedHAPAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 messageDispatcher:(id)a6
{
  v10.receiver = self;
  v10.super_class = HMDUnpairedHAPAccessory;
  v6 = [(HMDUnassociatedAccessory *)&v10 initWithIdentifier:a3 name:a4 category:a5 messageDispatcher:a6];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    accessoryServers = v6->_accessoryServers;
    v6->_accessoryServers = v7;

    v6->_certificationStatus = 0;
    v6->_linkType = 0;
  }

  return v6;
}

- (HMDUnpairedHAPAccessory)initWithAccessoryServer:(id)a3 messageDispatcher:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CD1680];
  v8 = a4;
  v9 = [v6 category];
  v10 = [v7 categoryWithCategoryIdentifier:v9];

  v11 = [v6 identifier];
  v12 = [v6 name];
  v13 = [(HMDUnpairedHAPAccessory *)self initWithIdentifier:v11 name:v12 category:v10 messageDispatcher:v8];

  if (v13)
  {
    [(NSMutableArray *)v13->_accessoryServers addObject:v6];
    v14 = [v6 setupHash];
    v15 = [v14 copy];
    setupHash = v13->_setupHash;
    v13->_setupHash = v15;

    v13->_linkType = [v6 linkType];
    v13->_initializedAsMatter = [v6 communicationProtocol] == 2;
  }

  return v13;
}

@end