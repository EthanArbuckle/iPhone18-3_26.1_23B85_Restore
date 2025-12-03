@interface HMMTRVendorMetadataVendor
- (BOOL)isEqual:(id)equal;
- (HMMTRVendorMetadataVendor)initWithIdentifier:(id)identifier;
- (HMMTRVendorMetadataVendor)initWithIdentifier:(id)identifier dictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (NSSet)products;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)productWithID:(id)d includeInvalids:(BOOL)invalids;
- (unint64_t)hash;
@end

@implementation HMMTRVendorMetadataVendor

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMMTRVendorMetadataVendor *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  name = [(HMMTRVendorMetadataVendor *)self name];

  if (name)
  {
    v8 = objc_alloc(MEMORY[0x277D0F778]);
    name2 = [(HMMTRVendorMetadataVendor *)self name];
    v10 = [v8 initWithName:@"Name" value:name2];
    [array addObject:v10];
  }

  products = [(HMMTRVendorMetadataVendor *)self products];
  v12 = [products count];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    products2 = [(HMMTRVendorMetadataVendor *)self products];
    v15 = [v13 initWithName:@"Products" value:products2];
    [array addObject:v15];
  }

  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRVendorMetadataVendor *)self invalid];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"invalid" value:v17];
  [array addObject:v18];

  v19 = [array copy];

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMTRMutableVendorMetadataVendor allocWithZone:zone];
  identifier = [(HMMTRVendorMetadataVendor *)self identifier];
  v6 = [(HMMTRVendorMetadataVendor *)v4 initWithIdentifier:identifier];

  productsByProductID = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  [(HMMTRVendorMetadataVendor *)v6 setProductsByProductID:productsByProductID];

  name = [(HMMTRVendorMetadataVendor *)self name];
  [(HMMTRVendorMetadataVendor *)v6 setName:name];

  [(HMMTRVendorMetadataVendor *)v6 setInvalid:[(HMMTRVendorMetadataVendor *)self invalid]];
  return v6;
}

- (unint64_t)hash
{
  identifier = [(HMMTRVendorMetadataVendor *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    identifier = [v6 identifier];
    identifier2 = [(HMMTRVendorMetadataVendor *)self identifier];
    if ([identifier isEqualToNumber:identifier2])
    {
      productsByProductID = [v7 productsByProductID];
      productsByProductID2 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
      if ([productsByProductID isEqualToDictionary:productsByProductID2])
      {
        name = [v7 name];
        name2 = [(HMMTRVendorMetadataVendor *)self name];
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

- (id)productWithID:(id)d includeInvalids:(BOOL)invalids
{
  invalidsCopy = invalids;
  dCopy = d;
  productsByProductID = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  v8 = [productsByProductID objectForKeyedSubscript:dCopy];

  if (![v8 isInvalid] || invalidsCopy)
  {
    productsByProductID2 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
    v9 = [productsByProductID2 objectForKeyedSubscript:dCopy];
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(HMMTRVendorMetadataVendor *)self name];
  [dictionary setObject:name forKeyedSubscript:@"Name"];

  v5 = MEMORY[0x277CBEB38];
  products = [(HMMTRVendorMetadataVendor *)self products];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(products, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  products2 = [(HMMTRVendorMetadataVendor *)self products];
  v9 = [products2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(products2);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        dictionaryRepresentation = [v13 dictionaryRepresentation];
        identifier = [v13 identifier];
        stringValue = [identifier stringValue];
        [v7 setObject:dictionaryRepresentation forKeyedSubscript:stringValue];
      }

      v10 = [products2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = [v7 copy];
  [dictionary setObject:v17 forKeyedSubscript:@"Products"];

  v18 = [dictionary copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSSet)products
{
  v2 = MEMORY[0x277CBEB98];
  productsByProductID = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  allValues = [productsByProductID allValues];
  v5 = [v2 setWithArray:allValues];

  return v5;
}

- (HMMTRVendorMetadataVendor)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = identifierCopy;
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

- (HMMTRVendorMetadataVendor)initWithIdentifier:(id)identifier dictionaryRepresentation:(id)representation
{
  v51 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  representationCopy = representation;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
LABEL_24:
    _HMFPreconditionFailure();
  }

  v8 = representationCopy;
  if (!representationCopy)
  {
    goto LABEL_24;
  }

  v9 = [representationCopy hmf_dictionaryForKey:@"Products"];
  if (v9)
  {
    v38 = identifierCopy;
    v40 = [(HMMTRVendorMetadataVendor *)self initWithIdentifier:identifierCopy];
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
    selfCopy = v40;
    v8 = v37;
    identifierCopy = v38;
    v9 = v36;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
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