@interface HMDCHIPHomeStorage
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateUsingHomeModel:(id)a3;
- (HMDCHIPHomeStorage)initWithCoder:(id)a3;
- (NSDictionary)debugDictionaryRepresentation;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateHomeModel:(id)a3;
@end

@implementation HMDCHIPHomeStorage

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDCHIPHomeStorage *)self fabricID];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D0F778]);
    v6 = [(HMDCHIPHomeStorage *)self fabricID];
    v7 = [v5 initWithName:@"Fabric ID" value:v6];
    [v3 addObject:v7];
  }

  v8 = [(HMDCHIPHomeStorage *)self lastNodeID];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D0F778]);
    v10 = [(HMDCHIPHomeStorage *)self lastNodeID];
    v11 = [v9 initWithName:@"Last Node ID" value:v10];
    [v3 addObject:v11];
  }

  v12 = [(HMDCHIPHomeStorage *)self rootCertificate];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    v14 = [(HMDCHIPHomeStorage *)self rootCertificate];
    v15 = [v13 initWithName:@"Root Certificate" value:v14];
    [v3 addObject:v15];
  }

  v16 = [(HMDCHIPHomeStorage *)self operationalCertificate];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277D0F778]);
    v18 = [(HMDCHIPHomeStorage *)self operationalCertificate];
    v19 = [v17 initWithName:@"Operational Certificate" value:v18];
    [v3 addObject:v19];
  }

  v20 = [(HMDCHIPHomeStorage *)self intermediateCertificate];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    v22 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
    v23 = [v21 initWithName:@"Intermediate Certificate" value:v22];
    [v3 addObject:v23];
  }

  v24 = [(HMDCHIPHomeStorage *)self keyValueStore];
  v25 = [v24 count];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x277D0F778]);
    v27 = MEMORY[0x277CCABB0];
    v28 = [(HMDCHIPHomeStorage *)self keyValueStore];
    v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    v30 = [v26 initWithName:@"Key-Value Store Count" value:v29];
    [v3 addObject:v30];
  }

  v31 = [v3 copy];

  return v31;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCHIPHomeStorage *)self fabricID];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  if (([v11 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v11, "hmd_isForRemoteTransportOnSameAccount"))
  {
    v4 = [(HMDCHIPHomeStorage *)self fabricID];
    [v11 encodeObject:v4 forKey:@"HMCFS.fabricID"];

    v5 = [(HMDCHIPHomeStorage *)self fabricID];
    [v11 encodeObject:v5 forKey:@"HMCFS.fabricIndex"];

    v6 = [(HMDCHIPHomeStorage *)self lastNodeID];
    [v11 encodeObject:v6 forKey:@"HMCFS.lastNodeID"];

    v7 = [(HMDCHIPHomeStorage *)self rootCertificate];
    [v11 encodeObject:v7 forKey:@"HMCFS.rootCertificate"];

    v8 = [(HMDCHIPHomeStorage *)self operationalCertificate];
    [v11 encodeObject:v8 forKey:@"HMCFS.operationalCertificate"];

    v9 = [(HMDCHIPHomeStorage *)self keyValueStore];
    [v11 encodeObject:v9 forKey:@"HMCFS.keyValueStore"];

    if ([v11 hmd_isForLocalStore])
    {
      v10 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
      [v11 encodeObject:v10 forKey:@"HMCFS.intermediateCertificate"];
    }
  }
}

- (HMDCHIPHomeStorage)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPHomeStorage *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.fabricID"];
  [(HMDCHIPHomeStorage *)v5 setFabricID:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.lastNodeID"];
  [(HMDCHIPHomeStorage *)v5 setLastNodeID:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.rootCertificate"];
  [(HMDCHIPHomeStorage *)v5 setRootCertificate:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.operationalCertificate"];
  [(HMDCHIPHomeStorage *)v5 setOperationalCertificate:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.intermediateCertificate"];
  [(HMDCHIPHomeStorage *)v5 setIntermediateCertificate:v10];

  v11 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:3];
  v13 = [v11 setWithArray:{v12, v17, v18}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"HMCFS.keyValueStore"];

  [(HMDCHIPHomeStorage *)v5 setKeyValueStore:v14];
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMDCHIPHomeStorage allocWithZone:?]];
  v5 = [(HMDCHIPHomeStorage *)self fabricID];
  [(HMDCHIPHomeStorage *)v4 setFabricID:v5];

  v6 = [(HMDCHIPHomeStorage *)self lastNodeID];
  [(HMDCHIPHomeStorage *)v4 setLastNodeID:v6];

  v7 = [(HMDCHIPHomeStorage *)self rootCertificate];
  [(HMDCHIPHomeStorage *)v4 setRootCertificate:v7];

  v8 = [(HMDCHIPHomeStorage *)self operationalCertificate];
  [(HMDCHIPHomeStorage *)v4 setOperationalCertificate:v8];

  v9 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  [(HMDCHIPHomeStorage *)v4 setIntermediateCertificate:v9];

  v10 = [(HMDCHIPHomeStorage *)self keyValueStore];
  [(HMDCHIPHomeStorage *)v4 setKeyValueStore:v10];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HMDCHIPHomeStorage *)self fabricID];
  v4 = [v3 hash];

  v5 = [(HMDCHIPHomeStorage *)self lastNodeID];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDCHIPHomeStorage *)self rootCertificate];
  v8 = [v7 hash];

  v9 = [(HMDCHIPHomeStorage *)self operationalCertificate];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  v12 = [v11 hash];

  v13 = [(HMDCHIPHomeStorage *)self keyValueStore];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
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
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [(HMDCHIPHomeStorage *)self fabricID];
  v8 = [v6 fabricID];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = [(HMDCHIPHomeStorage *)self lastNodeID];
  v11 = [v6 lastNodeID];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = [(HMDCHIPHomeStorage *)self rootCertificate];
  v14 = [v6 rootCertificate];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = [(HMDCHIPHomeStorage *)self operationalCertificate];
  v17 = [v6 operationalCertificate];
  v18 = HMFEqualObjects();

  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  v20 = [v6 intermediateCertificate];
  v21 = HMFEqualObjects();

  if (v21)
  {
    v22 = [(HMDCHIPHomeStorage *)self keyValueStore];
    v23 = [v6 keyValueStore];
    v24 = HMFEqualObjects();
  }

  else
  {
LABEL_11:
    v24 = 0;
  }

  return v24;
}

- (void)updateHomeModel:(id)a3
{
  v11 = a3;
  v4 = [(HMDCHIPHomeStorage *)self fabricID];
  if (v4)
  {
    [v11 setChipFabricID:v4];
  }

  v5 = [(HMDCHIPHomeStorage *)self fabricID];
  if (v5)
  {
    [v11 setChipFabricIndex:v5];
  }

  v6 = [(HMDCHIPHomeStorage *)self lastNodeID];
  if (v6)
  {
    [v11 setChipLastNodeID:v6];
  }

  v7 = [(HMDCHIPHomeStorage *)self rootCertificate];
  if (v7)
  {
    [v11 setChipRootCertificate:v7];
  }

  v8 = [(HMDCHIPHomeStorage *)self operationalCertificate];
  if (v8)
  {
    [v11 setChipOperationalCertificate:v8];
  }

  v9 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  if (v9)
  {
    [v11 setChipIntermediateCertificate:v9];
  }

  v10 = [(HMDCHIPHomeStorage *)self keyValueStore];
  if (v10)
  {
    [v11 setChipKeyValueStore:v10];
  }
}

- (BOOL)updateUsingHomeModel:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 setProperties];
  if (![v5 containsObject:@"chipFabricID"])
  {

    goto LABEL_7;
  }

  v6 = [(HMDCHIPHomeStorage *)self fabricID];
  v7 = [v4 chipFabricID];
  v8 = HMFEqualObjects();

  if (v8)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMDCHIPHomeStorage *)v10 fabricID];
    v14 = [v4 chipFabricID];
    v67 = 138543874;
    v68 = v12;
    v69 = 2112;
    v70 = v13;
    v71 = 2112;
    v72 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating storage fabric ID from %@ to %@", &v67, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = [v4 chipFabricID];
  [(HMDCHIPHomeStorage *)v10 setFabricID:v15];

  v16 = 1;
LABEL_8:
  v17 = [v4 setProperties];
  if ([v17 containsObject:@"chipLastNodeID"])
  {
    v18 = [(HMDCHIPHomeStorage *)self lastNodeID];
    v19 = [v4 chipLastNodeID];
    v20 = HMFEqualObjects();

    if (v20)
    {
      goto LABEL_14;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HMDCHIPHomeStorage *)v22 lastNodeID];
      v26 = [v4 chipLastNodeID];
      v67 = 138543874;
      v68 = v24;
      v69 = 2112;
      v70 = v25;
      v71 = 2112;
      v72 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating storage last node ID from %@ to %@", &v67, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v17 = [v4 chipLastNodeID];
    [(HMDCHIPHomeStorage *)v22 setLastNodeID:v17];
    v16 = 1;
  }

LABEL_14:
  v27 = [v4 setProperties];
  if ([v27 containsObject:@"chipRootCertificate"])
  {
    v28 = [(HMDCHIPHomeStorage *)self rootCertificate];
    v29 = [v4 chipRootCertificate];
    v30 = HMFEqualObjects();

    if (v30)
    {
      goto LABEL_20;
    }

    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [(HMDCHIPHomeStorage *)v32 rootCertificate];
      v36 = [v4 chipRootCertificate];
      v67 = 138543874;
      v68 = v34;
      v69 = 2112;
      v70 = v35;
      v71 = 2112;
      v72 = v36;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating storage root certificate from %@ to %@", &v67, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v27 = [v4 chipRootCertificate];
    [(HMDCHIPHomeStorage *)v32 setRootCertificate:v27];
    v16 = 1;
  }

LABEL_20:
  v37 = [v4 setProperties];
  if ([v37 containsObject:@"chipOperationalCertificate"])
  {
    v38 = [(HMDCHIPHomeStorage *)self operationalCertificate];
    v39 = [v4 chipOperationalCertificate];
    v40 = HMFEqualObjects();

    if (v40)
    {
      goto LABEL_26;
    }

    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      v45 = [(HMDCHIPHomeStorage *)v42 operationalCertificate];
      v46 = [v4 chipOperationalCertificate];
      v67 = 138543874;
      v68 = v44;
      v69 = 2112;
      v70 = v45;
      v71 = 2112;
      v72 = v46;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Updating storage operational certificate from %@ to %@", &v67, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    v37 = [v4 chipOperationalCertificate];
    [(HMDCHIPHomeStorage *)v42 setOperationalCertificate:v37];
    v16 = 1;
  }

LABEL_26:
  v47 = [v4 setProperties];
  if ([v47 containsObject:@"chipIntermediateCertificate"])
  {
    v48 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
    v49 = [v4 chipIntermediateCertificate];
    v50 = HMFEqualObjects();

    if (v50)
    {
      goto LABEL_32;
    }

    v51 = objc_autoreleasePoolPush();
    v52 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      v55 = [(HMDCHIPHomeStorage *)v52 intermediateCertificate];
      v56 = [v4 chipIntermediateCertificate];
      v67 = 138543874;
      v68 = v54;
      v69 = 2112;
      v70 = v55;
      v71 = 2112;
      v72 = v56;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Updating storage intermediate certificate from %@ to %@", &v67, 0x20u);
    }

    objc_autoreleasePoolPop(v51);
    v47 = [v4 chipIntermediateCertificate];
    [(HMDCHIPHomeStorage *)v52 setIntermediateCertificate:v47];
    v16 = 1;
  }

LABEL_32:
  v57 = [v4 setProperties];
  if (![v57 containsObject:@"chipKeyValueStore"])
  {
LABEL_37:

    goto LABEL_38;
  }

  v58 = [(HMDCHIPHomeStorage *)self keyValueStore];
  v59 = [v4 chipKeyValueStore];
  v60 = HMFEqualObjects();

  if ((v60 & 1) == 0)
  {
    v61 = objc_autoreleasePoolPush();
    v62 = self;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      v67 = 138543362;
      v68 = v64;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating storage key-value store", &v67, 0xCu);
    }

    objc_autoreleasePoolPop(v61);
    v57 = [v4 chipKeyValueStore];
    [(HMDCHIPHomeStorage *)v62 setKeyValueStore:v57];
    v16 = 1;
    goto LABEL_37;
  }

LABEL_38:

  v65 = *MEMORY[0x277D85DE8];
  return v16;
}

- (NSDictionary)debugDictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCHIPHomeStorage *)self fabricID];
  [v3 setObject:v4 forKeyedSubscript:@"Fabric ID"];

  v5 = [(HMDCHIPHomeStorage *)self lastNodeID];
  [v3 setObject:v5 forKeyedSubscript:@"Last Node ID"];

  v6 = [(HMDCHIPHomeStorage *)self rootCertificate];
  [v3 setObject:v6 forKeyedSubscript:@"Root Certificate"];

  v7 = [(HMDCHIPHomeStorage *)self operationalCertificate];
  [v3 setObject:v7 forKeyedSubscript:@"Operational Certificate"];

  v8 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  [v3 setObject:v8 forKeyedSubscript:@"Intermediate Certificate"];

  v9 = [(HMDCHIPHomeStorage *)self keyValueStore];
  [v3 setObject:v9 forKeyedSubscript:@"Key-Value Store"];

  v10 = [v3 copy];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_80343 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_80343, &__block_literal_global_80344);
  }

  v3 = logCategory__hmf_once_v8_80345;

  return v3;
}

void __33__HMDCHIPHomeStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_80345;
  logCategory__hmf_once_v8_80345 = v1;
}

@end