@interface HMDCHIPAccessoryDataSource
+ (id)logCategory;
- (BOOL)wedSupport;
- (HMDCHIPAccessoryDataSource)initWithNodeID:(id)a3 accessory:(id)a4;
- (HMDMatterAccessoryProtocol)accessory;
- (NSData)attributeDatabase;
- (NSNumber)productID;
- (NSNumber)softwareVersionNumber;
- (NSNumber)supportedLinkLayerTypes;
- (NSNumber)vendorID;
- (NSSet)pairings;
- (NSString)extendedMACAddress;
- (id)logIdentifier;
- (void)_updateAccessoryModelWithLabel:(id)a3 completion:(id)a4 block:(id)a5;
- (void)updateAttributeDatabase:(id)a3 completion:(id)a4;
- (void)updateExtendedMACAddress:(id)a3 completion:(id)a4;
- (void)updateNodeID:(id)a3 completion:(id)a4;
- (void)updatePairings:(id)a3 completion:(id)a4;
- (void)updateProductID:(id)a3 completion:(id)a4;
- (void)updateSoftwareVersionNumber:(id)a3 completion:(id)a4;
- (void)updateSupportedLinkLayerTypes:(id)a3 completion:(id)a4;
- (void)updateVendorID:(id)a3 completion:(id)a4;
- (void)updateVendorID:(id)a3 productID:(id)a4 completion:(id)a5;
- (void)updateWedSupport:(BOOL)a3 completion:(id)a4;
@end

@implementation HMDCHIPAccessoryDataSource

- (HMDMatterAccessoryProtocol)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v5 = [v4 logIdentifier];
  v6 = [(HMDCHIPAccessoryDataSource *)self nodeID];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

- (void)updateSupportedLinkLayerTypes:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model link layer types to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HMDCHIPAccessoryDataSource_updateSupportedLinkLayerTypes_completion___block_invoke;
  v14[3] = &unk_278675A50;
  v15 = v6;
  v12 = v6;
  [(HMDCHIPAccessoryDataSource *)v9 _updateAccessoryModelWithLabel:@"Update supported link layer types" completion:v7 block:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSNumber)supportedLinkLayerTypes
{
  v2 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v3 = [v2 chipStorage];
  v4 = [v3 supportedLinkLayerTypes];

  return v4;
}

- (void)updateSoftwareVersionNumber:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model software version to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMDCHIPAccessoryDataSource_updateSoftwareVersionNumber_completion___block_invoke;
  v14[3] = &unk_278675A50;
  v15 = v6;
  v12 = v6;
  [(HMDCHIPAccessoryDataSource *)v9 _updateAccessoryModelWithLabel:@"Update CHIP software version number" completion:v7 block:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSNumber)softwareVersionNumber
{
  v2 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v3 = [v2 chipStorage];
  v4 = [v3 softwareVersionNumber];

  return v4;
}

- (void)updateWedSupport:(BOOL)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model wed support to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HMDCHIPAccessoryDataSource_updateWedSupport_completion___block_invoke;
  v13[3] = &__block_descriptor_33_e36_v16__0__HMDHAPAccessoryTransaction_8l;
  v14 = a3;
  [(HMDCHIPAccessoryDataSource *)v8 _updateAccessoryModelWithLabel:@"Update CHIP wed support" completion:v6 block:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __58__HMDCHIPAccessoryDataSource_updateWedSupport_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setChipWEDSupport:v5];
}

- (BOOL)wedSupport
{
  v2 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v3 = [v2 chipStorage];
  v4 = [v3 wedSupport];

  return v4;
}

- (void)updateExtendedMACAddress:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model extended MAC address to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HMDCHIPAccessoryDataSource_updateExtendedMACAddress_completion___block_invoke;
  v14[3] = &unk_278675A50;
  v15 = v6;
  v12 = v6;
  [(HMDCHIPAccessoryDataSource *)v9 _updateAccessoryModelWithLabel:@"Update CHIP extended MAC address" completion:v7 block:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSString)extendedMACAddress
{
  v2 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v3 = [v2 chipStorage];
  v4 = [v3 extendedMACAddress];

  return v4;
}

- (void)updatePairings:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model pairings to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HMDCHIPAccessoryDataSource_updatePairings_completion___block_invoke;
  v14[3] = &unk_278675A50;
  v15 = v6;
  v12 = v6;
  [(HMDCHIPAccessoryDataSource *)v9 _updateAccessoryModelWithLabel:@"Update CHIP pairings" completion:v7 block:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __56__HMDCHIPAccessoryDataSource_updatePairings_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 na_map:&__block_literal_global_241];
  [v3 setChipPairings:v4];
}

id __56__HMDCHIPAccessoryDataSource_updatePairings_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1880];
  v3 = a2;
  v4 = [[v2 alloc] initWithHMMTRPairing:v3];

  return v4;
}

- (NSSet)pairings
{
  v2 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v3 = [v2 chipStorage];
  v4 = [v3 pairings];
  v5 = [v4 na_map:&__block_literal_global_79018];

  return v5;
}

- (void)updateAttributeDatabase:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model attribute database to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HMDCHIPAccessoryDataSource_updateAttributeDatabase_completion___block_invoke;
  v14[3] = &unk_278675A50;
  v15 = v6;
  v12 = v6;
  [(HMDCHIPAccessoryDataSource *)v9 _updateAccessoryModelWithLabel:@"Update CHIP attribute database" completion:v7 block:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSData)attributeDatabase
{
  v2 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v3 = [v2 chipStorage];
  v4 = [v3 attributeDatabase];

  return v4;
}

- (void)updateVendorID:(id)a3 productID:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v14;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@updateVendorID:productID: Updating accessory model vendor ID to %@, product ID to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__HMDCHIPAccessoryDataSource_updateVendorID_productID_completion___block_invoke;
  v18[3] = &unk_278675A78;
  v19 = v8;
  v20 = v9;
  v15 = v9;
  v16 = v8;
  [(HMDCHIPAccessoryDataSource *)v12 _updateAccessoryModelWithLabel:@"Update CHIP product ID and vendor ID" completion:v10 block:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __66__HMDCHIPAccessoryDataSource_updateVendorID_productID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setChipVendorID:v3];
  [v4 setChipProductID:*(a1 + 40)];
}

- (void)updateProductID:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model product ID to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HMDCHIPAccessoryDataSource_updateProductID_completion___block_invoke;
  v14[3] = &unk_278675A50;
  v15 = v6;
  v12 = v6;
  [(HMDCHIPAccessoryDataSource *)v9 _updateAccessoryModelWithLabel:@"Update CHIP product ID" completion:v7 block:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSNumber)productID
{
  v2 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v3 = [v2 matterProductID];

  return v3;
}

- (void)updateVendorID:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model vendor ID to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HMDCHIPAccessoryDataSource_updateVendorID_completion___block_invoke;
  v14[3] = &unk_278675A50;
  v15 = v6;
  v12 = v6;
  [(HMDCHIPAccessoryDataSource *)v9 _updateAccessoryModelWithLabel:@"Update CHIP vendor ID" completion:v7 block:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSNumber)vendorID
{
  v2 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v3 = [v2 matterVendorID];

  return v3;
}

- (void)updateNodeID:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory model node ID to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__HMDCHIPAccessoryDataSource_updateNodeID_completion___block_invoke;
  v14[3] = &unk_278675A50;
  v15 = v6;
  v12 = v6;
  [(HMDCHIPAccessoryDataSource *)v9 _updateAccessoryModelWithLabel:@"Update CHIP node ID" completion:v7 block:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccessoryModelWithLabel:(id)a3 completion:(id)a4 block:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCHIPAccessoryDataSource *)self accessory];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 home];
    if (!v13)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v16 = _Block_copy(v9);
      if (!v16)
      {
        v13 = 0;
        goto LABEL_22;
      }

      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v16[2](v16, v19);
      goto LABEL_21;
    }

    v14 = [v12 transactionWithObjectChangeType:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v10[2](v10, v16);
      v17 = [v13 backingStore];
      v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v19 = [v17 transaction:v8 options:v18];

      [v19 add:v16];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __78__HMDCHIPAccessoryDataSource__updateAccessoryModelWithLabel_completion_block___block_invoke;
      v34[3] = &unk_278688DD0;
      v35 = v9;
      [v19 run:v34];
      v20 = v35;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Accessory model is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v19 = _Block_copy(v9);
      if (!v19)
      {
        v16 = 0;
        goto LABEL_21;
      }

      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (v19)[2](v19, v20);
    }

LABEL_21:
    goto LABEL_22;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v24;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Accessory reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v13 = _Block_copy(v9);
  if (v13)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v13[2](v13, v16);
LABEL_22:
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __78__HMDCHIPAccessoryDataSource__updateAccessoryModelWithLabel_completion_block___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

- (HMDCHIPAccessoryDataSource)initWithNodeID:(id)a3 accessory:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v8)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v9 conformsToProtocol:&unk_283F010C8];

  if ((v10 & 1) == 0)
  {
LABEL_9:
    v14 = _HMFPreconditionFailure();
    return +[(HMDCHIPAccessoryDataSource *)v14];
  }

  v16.receiver = self;
  v16.super_class = HMDCHIPAccessoryDataSource;
  v11 = [(HMDCHIPAccessoryDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nodeID, a3);
    objc_storeWeak(&v12->_accessory, v9);
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_79062 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_79062, &__block_literal_global_263);
  }

  v3 = logCategory__hmf_once_v20_79063;

  return v3;
}

void __41__HMDCHIPAccessoryDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_79063;
  logCategory__hmf_once_v20_79063 = v1;
}

@end