@interface HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation
- (HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation)initWithDeviceCredentialKey:(id)a3 accessories:(id)a4 user:(id)a5;
- (HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation)initWithDeviceCredentialKey:(id)a3 accessoriesUUIDs:(id)a4 user:(id)a5;
- (HMDUser)user;
- (id)attributeDescriptions;
- (id)operationByMergingWithOperation:(id)a3;
@end

@implementation HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self deviceCredentialKey];
  v5 = [v3 initWithName:@"Device Credential Key" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self accessoriesUUIDs];
  v8 = [v6 initWithName:@"Accessories UUIDs" value:v7];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self user];
  v11 = [v10 uuid];
  v12 = [v9 initWithName:@"User UUID" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)operationByMergingWithOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoriesUUIDs];
  v6 = [v5 mutableCopy];

  v7 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self accessoriesUUIDs];
  v8 = [v7 allObjects];
  [v6 addObjectsFromArray:v8];

  v9 = [HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc];
  v10 = [v4 deviceCredentialKey];
  v11 = [v4 user];

  v12 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)v9 initWithDeviceCredentialKey:v10 accessoriesUUIDs:v6 user:v11];

  return v12;
}

- (HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation)initWithDeviceCredentialKey:(id)a3 accessories:(id)a4 user:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB58] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * v16) uuid];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)self initWithDeviceCredentialKey:v8 accessoriesUUIDs:v11 user:v10];
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation)initWithDeviceCredentialKey:(id)a3 accessoriesUUIDs:(id)a4 user:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation;
  v11 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    deviceCredentialKey = v11->_deviceCredentialKey;
    v11->_deviceCredentialKey = v12;

    v14 = [v9 copy];
    accessoriesUUIDs = v11->_accessoriesUUIDs;
    v11->_accessoriesUUIDs = v14;

    objc_storeWeak(&v11->_user, v10);
  }

  return v11;
}

@end