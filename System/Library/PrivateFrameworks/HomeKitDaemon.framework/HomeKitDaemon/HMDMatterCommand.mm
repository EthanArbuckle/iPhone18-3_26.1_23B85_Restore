@interface HMDMatterCommand
+ (id)logCategory;
- (BOOL)isAssociatedWithAccessory:(id)a3;
- (BOOL)isCommandForMatterPath:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (HMDAccessory)accessory;
- (HMDHome)home;
- (HMDMatterCommand)init;
- (HMDMatterCommand)initWithDictionary:(id)a3 home:(id)a4;
- (HMDMatterCommand)initWithUUID:(id)a3 matterPath:(id)a4 commandFields:(id)a5 expectedValues:(id)a6 home:(id)a7;
- (HMDMatterCommand)new;
- (id)associatedAccessories;
- (id)attributeDescriptions;
- (id)dictionaryRepresentationWithEncodedValues:(BOOL)a3;
- (void)addMatterPathToTransactionIfNotStored:(id)a3;
@end

@implementation HMDMatterCommand

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v28[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [(HMDMatterCommand *)self accessory];
  v26 = [v27 uuid];
  v25 = [v3 initWithName:@"accessory UUID" value:v26];
  v28[0] = v25;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(HMDMatterCommand *)self matterPath];
  v23 = [v24 endpointID];
  v22 = [v4 initWithName:@"endpoint" value:v23];
  v28[1] = v22;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDMatterCommand *)self matterPath];
  v6 = [v21 clusterID];
  v7 = [v5 initWithName:@"cluster" value:v6];
  v28[2] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDMatterCommand *)self matterPath];
  v10 = [v9 commandID];
  v11 = [v8 initWithName:@"command" value:v10];
  v28[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDMatterCommand *)self commandFields];
  v14 = [v12 initWithName:@"commandFields" value:v13];
  v28[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(HMDMatterCommand *)self expectedValues];
  v17 = [v15 initWithName:@"expectedValues" value:v16];
  v28[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)isEqual:(id)a3
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
    v7 = [(HMDMatterCommand *)self matterPath];
    v8 = [v6 matterPath];
    if (![v7 isEqual:v8])
    {
      goto LABEL_9;
    }

    v9 = [(HMDMatterCommand *)self commandFields];
    v10 = [v6 commandFields];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [(HMDMatterCommand *)self expectedValues];
    v13 = [v6 expectedValues];
    v14 = HMFEqualObjects();

    if (v14)
    {
      v15 = [(HMDMatterCommand *)self accessory];
      v16 = [v6 accessory];
      v17 = [v15 isEqual:v16];
    }

    else
    {
LABEL_9:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)associatedAccessories
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(HMDMatterCommand *)self accessory];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isAssociatedWithAccessory:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(HMDMatterCommand *)self accessory];
  v6 = [v5 uuid];
  v7 = [v4 isEqual:v6];

  return v7;
}

- (HMDAccessory)accessory
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMatterCommand *)self matterPath];
  v4 = [v3 accessory];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMDMatterCommand *)v6 matterPath];
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Accessory was set to nil on matter path %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addMatterPathToTransactionIfNotStored:(id)a3
{
  v17 = a3;
  v4 = [(HMDMatterCommand *)self matterPath];
  v5 = [v4 accessory];
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
  v8 = [v7 matterAdapter];

  if (!v8)
  {
    v9 = v5;
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

    v8 = [v11 matterAdapter];
  }

  v12 = [v8 commandPaths];
  v13 = [v12 containsObject:v4];

  if ((v13 & 1) == 0)
  {
    v14 = [v4 uuid];
    v15 = [v5 uuid];
    v16 = [v4 modelObjectWithChangeType:1 uuid:v14 parentUUID:v15];

    [v4 populateModelObject:v16];
    [v17 add:v16];
  }
}

- (BOOL)isCommandForMatterPath:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterCommand *)self matterPath];
  if ([v4 isEqual:v5])
  {
    v6 = [v4 accessory];
    v7 = [v6 uuid];
    v8 = [(HMDMatterCommand *)self accessory];
    v9 = [v8 uuid];
    v10 = [v7 hmf_isEqualToUUID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dictionaryRepresentationWithEncodedValues:(BOOL)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HMDMatterCommand *)self accessory];
  v7 = accessoryToEncodeForXPCTransportForAccessory(v6);
  v8 = [v7 uuid];
  v9 = [v8 UUIDString];
  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  v10 = [(HMDMatterCommand *)self matterPath];
  v11 = [v10 clusterID];
  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCFC08]];

  v12 = [(HMDMatterCommand *)self matterPath];
  v13 = [v12 endpointID];
  [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCFD10]];

  v14 = [(HMDMatterCommand *)self matterPath];
  v15 = [v14 commandID];
  [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCFC30]];

  v16 = [(HMDMatterCommand *)self commandFields];

  if (v16)
  {
    v17 = [(HMDMatterCommand *)self commandFields];
    v18 = v17;
    if (a3)
    {
      v19 = encodeRootObjectForIncomingXPCMessage(v17, 0);
      [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCFC28]];
    }

    else
    {
      [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCFC28]];
    }
  }

  v20 = [(HMDMatterCommand *)self expectedValues];

  if (v20)
  {
    v21 = [(HMDMatterCommand *)self expectedValues];
    v22 = v21;
    if (a3)
    {
      v23 = encodeRootObjectForIncomingXPCMessage(v21, 0);
      [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x277CCFC20]];
    }

    else
    {
      [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x277CCFC20]];
    }
  }

  v24 = [v5 copy];

  return v24;
}

- (BOOL)isValid
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMatterCommand *)self accessory];
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

  v6 = [v5 matterAdapter];
  v7 = [v6 commandPaths];
  if (v7)
  {

LABEL_7:
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDMatterCommand *)v10 matterPath];
      *buf = 138543618;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Validating matter command for path: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [v6 commandPaths];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __27__HMDMatterCommand_isValid__block_invoke;
    v27[3] = &unk_278675618;
    v27[4] = v10;
    v15 = [v14 na_firstObjectPassingTest:v27];

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v17 = [v6 mtrCommandPaths];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __27__HMDMatterCommand_isValid__block_invoke_2;
      v26[3] = &unk_278675640;
      v26[4] = v10;
      v18 = [v17 na_firstObjectPassingTest:v26];
      v16 = v18 != 0;
    }

    goto LABEL_13;
  }

  v8 = [v6 mtrPaths];

  if (v8)
  {
    goto LABEL_7;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [(HMDMatterCommand *)v22 accessory];
    *buf = 138543618;
    v29 = v24;
    v30 = 2112;
    v31 = v25;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to find commands paths from %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v16 = 0;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __27__HMDMatterCommand_isValid__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 matterPath];
  v5 = [v4 isEqual:v3];

  return v5;
}

uint64_t __27__HMDMatterCommand_isValid__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 endpoint];
  v5 = [*(a1 + 32) matterPath];
  v6 = [v5 endpointID];
  if ([v4 isEqual:v6])
  {
    v7 = [v3 cluster];
    v8 = [*(a1 + 32) matterPath];
    v9 = [v8 clusterID];
    if ([v7 isEqual:v9])
    {
      [v3 command];
      v10 = v15 = v7;
      v11 = [*(a1 + 32) matterPath];
      v12 = [v11 commandID];
      v13 = [v10 isEqual:v12];

      v7 = v15;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HMDMatterCommand)initWithUUID:(id)a3 matterPath:(id)a4 commandFields:(id)a5 expectedValues:(id)a6 home:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v13 commandID];

  if (!v17)
  {
    _HMFPreconditionFailure();
LABEL_7:
    v22 = _HMFPreconditionFailure();
    [(HMDMatterCommand *)v22 new];
  }

  v18 = [v13 accessory];

  if (!v18)
  {
    goto LABEL_7;
  }

  v24.receiver = self;
  v24.super_class = HMDMatterCommand;
  v19 = [(HMDMatterCommand *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_home, v16);
    objc_storeStrong(&v20->_matterPath, a4);
    objc_storeStrong(&v20->_commandFields, a5);
    objc_storeStrong(&v20->_expectedValues, a6);
  }

  return v20;
}

- (HMDMatterCommand)new
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

- (HMDMatterCommand)init
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

- (HMDMatterCommand)initWithDictionary:(id)a3 home:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v46 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Creating a matter command with dictionary: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277CCFC28];
  v12 = [v6 hmf_dataForKey:*MEMORY[0x277CCFC28]];

  if (v12)
  {
    v13 = HMAllowedClassesForMatterCommand();
    v45 = [v6 hmf_unarchivedObjectForKey:v11 ofClasses:v13];
  }

  else
  {
    v45 = [v6 hmf_dictionaryForKey:v11];
  }

  v14 = *MEMORY[0x277CCFC20];
  v15 = [v6 hmf_dataForKey:*MEMORY[0x277CCFC20]];

  if (v15)
  {
    v16 = HMAllowedClassesForMatterCommand();
    v44 = [v6 hmf_unarchivedObjectForKey:v14 ofClasses:v16];
  }

  else
  {
    v44 = [v6 hmf_arrayForKey:v14];
  }

  v17 = [v6 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
  v18 = [v6 hmf_numberForKey:*MEMORY[0x277CCFC30]];
  v19 = [v6 hmf_numberForKey:*MEMORY[0x277CCFC08]];
  v20 = [v6 hmf_numberForKey:*MEMORY[0x277CCFD10]];
  v21 = v20;
  if (v17 && v18 && v19 && v20)
  {
    v22 = [v46 accessoryWithUUID:v17];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v57 = __Block_byref_object_copy__70236;
      *v58 = __Block_byref_object_dispose__70237;
      *&v58[8] = [HMDMatterPath PathWithCommandID:v18 endpointID:v21 clusterID:v19 accessory:v24];
      if (*(*&buf[8] + 40))
      {
        v25 = [v24 matterAdapter];
        v26 = [v25 commandPaths];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __44__HMDMatterCommand_initWithDictionary_home___block_invoke;
        v47[3] = &unk_278689C88;
        v47[4] = buf;
        [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:v47];

        v27 = [HMDMatterCommand alloc];
        v28 = [MEMORY[0x277CCAD78] UUID];
        v29 = [(HMDMatterCommand *)v27 initWithUUID:v28 matterPath:*(*&buf[8] + 40) commandFields:v45 expectedValues:v44 home:v46];
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v37 = v8;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *v48 = 138544130;
          v49 = v39;
          v50 = 2112;
          v51 = v18;
          v52 = 2112;
          v53 = v21;
          v54 = 2112;
          v55 = v19;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unable to create matter path from commandID/endpointID/clusterID %@/%@/%@", v48, 0x2Au);
        }

        objc_autoreleasePoolPop(contexta);
        v29 = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v34 = v8;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v29 = 0;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v8;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v33;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v57 = v18;
      *v58 = 2112;
      *&v58[2] = v19;
      *&v58[10] = 2112;
      *&v58[12] = v21;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to get values accessoryUUID:%@, commandID:%@, clusterID:%@ or endpointID:%@ from dictionary", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v30);
    v29 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v29;
}

void __44__HMDMatterCommand_initWithDictionary_home___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEqual:*(*(*(a1 + 32) + 8) + 40)])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_70245 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_70245, &__block_literal_global_70246);
  }

  v3 = logCategory__hmf_once_v13_70247;

  return v3;
}

void __31__HMDMatterCommand_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_70247;
  logCategory__hmf_once_v13_70247 = v1;
}

@end