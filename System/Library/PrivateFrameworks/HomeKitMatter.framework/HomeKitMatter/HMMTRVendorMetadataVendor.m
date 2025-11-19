@interface HMMTRVendorMetadataVendor
- (BOOL)isEqual:(id)a3;
- (HMMTRVendorMetadataVendor)initWithIdentifier:(id)a3;
- (HMMTRVendorMetadataVendor)initWithIdentifier:(id)a3 dictionaryRepresentation:(id)a4;
- (NSDictionary)dictionaryRepresentation;
- (NSSet)products;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)productWithID:(id)a3 includeInvalids:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation HMMTRVendorMetadataVendor

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMMTRVendorMetadataVendor *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = [(HMMTRVendorMetadataVendor *)self name];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D0F778]);
    v9 = [(HMMTRVendorMetadataVendor *)self name];
    v10 = [v8 initWithName:@"Name" value:v9];
    [v3 addObject:v10];
  }

  v11 = [(HMMTRVendorMetadataVendor *)self products];
  v12 = [v11 count];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    v14 = [(HMMTRVendorMetadataVendor *)self products];
    v15 = [v13 initWithName:@"Products" value:v14];
    [v3 addObject:v15];
  }

  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRVendorMetadataVendor *)self invalid];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"invalid" value:v17];
  [v3 addObject:v18];

  v19 = [v3 copy];

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMTRMutableVendorMetadataVendor allocWithZone:a3];
  v5 = [(HMMTRVendorMetadataVendor *)self identifier];
  v6 = [(HMMTRVendorMetadataVendor *)v4 initWithIdentifier:v5];

  v7 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  [(HMMTRVendorMetadataVendor *)v6 setProductsByProductID:v7];

  v8 = [(HMMTRVendorMetadataVendor *)self name];
  [(HMMTRVendorMetadataVendor *)v6 setName:v8];

  [(HMMTRVendorMetadataVendor *)v6 setInvalid:[(HMMTRVendorMetadataVendor *)self invalid]];
  return v6;
}

- (unint64_t)hash
{
  v2 = [(HMMTRVendorMetadataVendor *)self identifier];
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
    v8 = [v6 identifier];
    v9 = [(HMMTRVendorMetadataVendor *)self identifier];
    if ([v8 isEqualToNumber:v9])
    {
      v10 = [v7 productsByProductID];
      v11 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
      if ([v10 isEqualToDictionary:v11])
      {
        v12 = [v7 name];
        v13 = [(HMMTRVendorMetadataVendor *)self name];
        v14 = HMFEqualObjects();
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

- (id)productWithID:(id)a3 includeInvalids:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (![v8 isInvalid] || v4)
  {
    v10 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
    v9 = [v10 objectForKeyedSubscript:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMMTRVendorMetadataVendor *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"Name"];

  v5 = MEMORY[0x277CBEB38];
  v6 = [(HMMTRVendorMetadataVendor *)self products];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(HMMTRVendorMetadataVendor *)self products];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 dictionaryRepresentation];
        v15 = [v13 identifier];
        v16 = [v15 stringValue];
        [v7 setObject:v14 forKeyedSubscript:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = [v7 copy];
  [v3 setObject:v17 forKeyedSubscript:@"Products"];

  v18 = [v3 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSSet)products
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (HMMTRVendorMetadataVendor)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v15.receiver = self;
    v15.super_class = HMMTRVendorMetadataVendor;
    v6 = [(HMMTRVendorMetadataVendor *)&v15 init];
    if (v6)
    {
      v7 = [v5 copy];
      identifier = v6->_identifier;
      v6->_identifier = v7;

      productsByProductID = v6->_productsByProductID;
      v6->_productsByProductID = MEMORY[0x277CBEC10];

      v6->_invalid = 0;
    }

    return v6;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMMTRVendorMetadataVendor *)v11 initWithIdentifier:v12 dictionaryRepresentation:v13, v14];
  }
}

- (HMMTRVendorMetadataVendor)initWithIdentifier:(id)a3 dictionaryRepresentation:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_24:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_24;
  }

  v9 = [v7 hmf_dictionaryForKey:@"Products"];
  if (v9)
  {
    v38 = v6;
    v40 = [(HMMTRVendorMetadataVendor *)self initWithIdentifier:v6];
    v10 = [(HMMTRVendorMetadataVendor *)v40 mutableCopy];
    v37 = v8;
    v11 = [v8 hmf_stringForKey:@"Name"];
    [v10 setName:v11];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      v39 = v10;
      do
      {
        v16 = 0;
        v41 = v14;
        do
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v42 + 1) + 8 * v16);
          v18 = objc_autoreleasePoolPush();
          v19 = [v12 hmf_dictionaryForKey:v17];
          if (v19)
          {
            v20 = [HMMTRVendorMetadataProduct alloc];
            v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "integerValue")}];
            v22 = [(HMMTRVendorMetadataProduct *)v20 initWithIdentifier:v21 dictionaryRepresentation:v19];

            if (v22)
            {
              [v10 addProduct:v22];
            }
          }

          else
          {
            v23 = v15;
            v24 = objc_autoreleasePoolPush();
            v25 = v40;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = HMFGetLogIdentifier();
              v28 = [v12 objectForKeyedSubscript:v17];
              *buf = 138543618;
              v48 = v27;
              v49 = 2112;
              v50 = v28;
              _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Ignoring product value that is not a dictionary: %@", buf, 0x16u);

              v10 = v39;
            }

            objc_autoreleasePoolPop(v24);
            v15 = v23;
            v14 = v41;
          }

          objc_autoreleasePoolPop(v18);
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v14);
    }

    v29 = [v10 copy];
    v30 = v40;
    v8 = v37;
    v6 = v38;
    v9 = v36;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v30 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v33;
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find products in vendor dictionary representation: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v29 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v29;
}

@end