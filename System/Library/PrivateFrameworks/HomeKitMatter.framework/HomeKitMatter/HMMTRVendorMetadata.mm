@interface HMMTRVendorMetadata
- (BOOL)isEqual:(id)a3;
- (HMMTRVendorMetadata)initWithDictionaryRepresentation:(id)a3;
- (HMMTRVendorMetadata)initWithVersion:(id)a3 schemaVersion:(id)a4;
- (NSDictionary)dictionaryRepresentation;
- (NSSet)vendors;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)vendorWithID:(id)a3;
- (unint64_t)hash;
@end

@implementation HMMTRVendorMetadata

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMMTRVendorMetadata *)self version];
  v6 = [v4 initWithName:@"Version" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMMTRVendorMetadata *)self schemaVersion];
  v9 = [v7 initWithName:@"Schema Version" value:v8];
  [v3 addObject:v9];

  v10 = [(HMMTRVendorMetadata *)self vendors];
  v11 = [v10 count];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D0F778]);
    v13 = [(HMMTRVendorMetadata *)self vendors];
    v14 = [v12 initWithName:@"Vendors" value:v13];
    [v3 addObject:v14];
  }

  v15 = [v3 copy];

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMTRMutableVendorMetadata allocWithZone:a3];
  v5 = [(HMMTRVendorMetadata *)self version];
  v6 = [(HMMTRVendorMetadata *)self schemaVersion];
  v7 = [(HMMTRVendorMetadata *)v4 initWithVersion:v5 schemaVersion:v6];

  v8 = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  [(HMMTRVendorMetadata *)v7 setVendorsByVendorID:v8];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  v3 = [v2 hash];

  return v3;
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 version];
    v9 = [(HMMTRVendorMetadata *)self version];
    if ([v8 isEqualToNumber:v9])
    {
      v10 = [v7 schemaVersion];
      v11 = [(HMMTRVendorMetadata *)self schemaVersion];
      if ([v10 isEqualToNumber:v11])
      {
        v12 = [v7 vendorsByVendorID];
        v13 = [(HMMTRVendorMetadata *)self vendorsByVendorID];
        v14 = [v12 isEqualToDictionary:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)vendorWithID:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMMTRVendorMetadata *)self version];
  [v3 setObject:v4 forKeyedSubscript:@"Version"];

  v5 = [(HMMTRVendorMetadata *)self schemaVersion];
  [v3 setObject:v5 forKeyedSubscript:@"SchemaVersion"];

  v6 = MEMORY[0x277CBEB38];
  v7 = [(HMMTRVendorMetadata *)self vendors];
  v8 = [v6 dictionaryWithCapacity:{objc_msgSend(v7, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(HMMTRVendorMetadata *)self vendors];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 dictionaryRepresentation];
        v16 = [v14 identifier];
        v17 = [v16 stringValue];
        [v8 setObject:v15 forKeyedSubscript:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKeyedSubscript:@"Vendors"];
  v18 = [v3 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSSet)vendors
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (HMMTRVendorMetadata)initWithVersion:(id)a3 schemaVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v14 = _HMFPreconditionFailure();
    return [(HMMTRVendorMetadata *)v14 init];
  }

  v16.receiver = self;
  v16.super_class = HMMTRVendorMetadata;
  v10 = [(HMMTRVendorMetadata *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_version, a3);
    objc_storeStrong(&v11->_schemaVersion, a4);
    vendorsByVendorID = v11->_vendorsByVendorID;
    v11->_vendorsByVendorID = MEMORY[0x277CBEC10];
  }

  return v11;
}

- (HMMTRVendorMetadata)initWithDictionaryRepresentation:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [v4 hmf_numberForKey:@"Version"];
  if (v6)
  {
    v7 = [v5 hmf_numberForKey:@"SchemaVersion"];
    if (v7)
    {
      v8 = [v5 hmf_dictionaryForKey:@"Vendors"];
      if (v8)
      {
        v41 = v6;
        v42 = v5;
        v40 = v7;
        v44 = [(HMMTRVendorMetadata *)self initWithVersion:v6 schemaVersion:v7];
        v9 = [(HMMTRVendorMetadata *)v44 mutableCopy];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v39 = v8;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v47;
          v43 = v9;
          do
          {
            v14 = 0;
            v45 = v12;
            do
            {
              if (*v47 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v46 + 1) + 8 * v14);
              v16 = objc_autoreleasePoolPush();
              v17 = [v10 hmf_dictionaryForKey:v15];
              if (v17)
              {
                v18 = [HMMTRVendorMetadataVendor alloc];
                v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "integerValue")}];
                v20 = [(HMMTRVendorMetadataVendor *)v18 initWithIdentifier:v19 dictionaryRepresentation:v17];

                if (v20)
                {
                  [v9 addVendor:v20];
                }
              }

              else
              {
                v21 = v13;
                v22 = objc_autoreleasePoolPush();
                v23 = v44;
                v24 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v25 = HMFGetLogIdentifier();
                  v26 = [v10 objectForKeyedSubscript:v15];
                  *buf = 138543618;
                  v52 = v25;
                  v53 = 2112;
                  v54 = v26;
                  _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Ignoring vendor value that is not a dictionary: %@", buf, 0x16u);

                  v9 = v43;
                }

                objc_autoreleasePoolPop(v22);
                v13 = v21;
                v12 = v45;
              }

              objc_autoreleasePoolPop(v16);
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v46 objects:v50 count:16];
          }

          while (v12);
        }

        v27 = [v9 copy];
        v6 = v41;
        v5 = v42;
        v8 = v39;
        v7 = v40;
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v44 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v36;
          v53 = 2112;
          v54 = v5;
          _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find vendors in vendor metadata dictionary: %@", buf, 0x16u);

          v8 = 0;
        }

        objc_autoreleasePoolPop(v34);
        v27 = 0;
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v44 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v33;
        v53 = 2112;
        v54 = v5;
        _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find schema version in vendor metadata dictionary: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v27 = 0;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v44 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v30;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not find version in vendor metadata dictionary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v27 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v27;
}

@end