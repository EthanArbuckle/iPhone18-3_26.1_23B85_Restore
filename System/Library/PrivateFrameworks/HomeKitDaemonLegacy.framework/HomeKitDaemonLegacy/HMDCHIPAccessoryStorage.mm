@interface HMDCHIPAccessoryStorage
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateUsingAccessoryModel:(id)model;
- (HMDCHIPAccessoryStorage)initWithCoder:(id)coder;
- (NSDictionary)debugDictionaryRepresentation;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateAccessoryModel:(id)model;
@end

@implementation HMDCHIPAccessoryStorage

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];
  v4 = [v2 stringWithFormat:@"%@", nodeID];

  return v4;
}

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];

  if (nodeID)
  {
    v5 = objc_alloc(MEMORY[0x277D0F778]);
    nodeID2 = [(HMDCHIPAccessoryStorage *)self nodeID];
    v7 = [v5 initWithName:@"Node ID" value:nodeID2];
    [array addObject:v7];
  }

  vendorID = [(HMDCHIPAccessoryStorage *)self vendorID];

  if (vendorID)
  {
    v9 = objc_alloc(MEMORY[0x277D0F778]);
    vendorID2 = [(HMDCHIPAccessoryStorage *)self vendorID];
    v11 = [v9 initWithName:@"Vendor ID" value:vendorID2];
    [array addObject:v11];
  }

  productID = [(HMDCHIPAccessoryStorage *)self productID];

  if (productID)
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    productID2 = [(HMDCHIPAccessoryStorage *)self productID];
    v15 = [v13 initWithName:@"Product ID" value:productID2];
    [array addObject:v15];
  }

  attributeDatabase = [(HMDCHIPAccessoryStorage *)self attributeDatabase];

  if (attributeDatabase)
  {
    v17 = objc_alloc(MEMORY[0x277D0F778]);
    attributeDatabase2 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
    v19 = [v17 initWithName:@"Attribute Database" value:attributeDatabase2];
    [array addObject:v19];
  }

  pairings = [(HMDCHIPAccessoryStorage *)self pairings];

  if (pairings)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    pairings2 = [(HMDCHIPAccessoryStorage *)self pairings];
    v23 = [v21 initWithName:@"Pairings" value:pairings2];
    [array addObject:v23];
  }

  extendedMACAddress = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];

  if (extendedMACAddress)
  {
    v25 = objc_alloc(MEMORY[0x277D0F778]);
    extendedMACAddress2 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
    v27 = [v25 initWithName:@"eMAC" value:extendedMACAddress2];
    [array addObject:v27];
  }

  v28 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCHIPAccessoryStorage *)self wedSupport];
  v29 = HMFBooleanToString();
  v30 = [v28 initWithName:@"WED" value:v29];
  [array addObject:v30];

  softwareVersionNumber = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];

  if (softwareVersionNumber)
  {
    v32 = objc_alloc(MEMORY[0x277D0F778]);
    softwareVersionNumber2 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
    v34 = [v32 initWithName:@"softwareVersionNumber" value:softwareVersionNumber2];
    [array addObject:v34];
  }

  supportedLinkLayerTypes = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];

  if (supportedLinkLayerTypes)
  {
    v36 = objc_alloc(MEMORY[0x277D0F778]);
    supportedLinkLayerTypes2 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
    v38 = [v36 initWithName:@"supportedLinkLayerTypes" value:supportedLinkLayerTypes2];
    [array addObject:v38];
  }

  v39 = [array copy];

  return v39;
}

- (HMDCHIPAccessoryStorage)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDCHIPAccessoryStorage *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.nodeID"];
  [(HMDCHIPAccessoryStorage *)v5 setNodeID:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.vendorID"];
  [(HMDCHIPAccessoryStorage *)v5 setVendorID:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.productID"];
  [(HMDCHIPAccessoryStorage *)v5 setProductID:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.attributeDatabase"];
  [(HMDCHIPAccessoryStorage *)v5 setAttributeDatabase:v9];

  v10 = MEMORY[0x277CBEB98];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"HMCAS.ck.pairings"];
  [(HMDCHIPAccessoryStorage *)v5 setPairings:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.wedSupport"];
  -[HMDCHIPAccessoryStorage setWedSupport:](v5, "setWedSupport:", [v14 BOOLValue]);
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.eMAC"];
  [(HMDCHIPAccessoryStorage *)v5 setExtendedMACAddress:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.softwareVersionNumber"];
  [(HMDCHIPAccessoryStorage *)v5 setSoftwareVersionNumber:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.supportedLinkLayerTypes"];

  [(HMDCHIPAccessoryStorage *)v5 setSupportedLinkLayerTypes:v17];
  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy hmd_isForLocalStore] & 1) != 0 || (objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteUserAdministrator"))
  {
    nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];
    [coderCopy encodeObject:nodeID forKey:@"HMCAS.ck.nodeID"];

    pairings = [(HMDCHIPAccessoryStorage *)self pairings];
    [coderCopy encodeObject:pairings forKey:@"HMCAS.ck.pairings"];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCHIPAccessoryStorage wedSupport](self, "wedSupport")}];
    [coderCopy encodeObject:v6 forKey:@"HMCAS.ck.wedSupport"];

    extendedMACAddress = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
    [coderCopy encodeObject:extendedMACAddress forKey:@"HMCAS.ck.eMAC"];

    supportedLinkLayerTypes = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
    [coderCopy encodeObject:supportedLinkLayerTypes forKey:@"HMCAS.ck.supportedLinkLayerTypes"];

    if ([coderCopy hmd_isForLocalStore])
    {
      vendorID = [(HMDCHIPAccessoryStorage *)self vendorID];
      [coderCopy encodeObject:vendorID forKey:@"HMCAS.ck.vendorID"];

      productID = [(HMDCHIPAccessoryStorage *)self productID];
      [coderCopy encodeObject:productID forKey:@"HMCAS.ck.productID"];

      attributeDatabase = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
      [coderCopy encodeObject:attributeDatabase forKey:@"HMCAS.ck.attributeDatabase"];

      softwareVersionNumber = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
      [coderCopy encodeObject:softwareVersionNumber forKey:@"HMCAS.softwareVersionNumber"];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMDCHIPAccessoryStorage allocWithZone:?]];
  nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];
  [(HMDCHIPAccessoryStorage *)v4 setNodeID:nodeID];

  vendorID = [(HMDCHIPAccessoryStorage *)self vendorID];
  [(HMDCHIPAccessoryStorage *)v4 setVendorID:vendorID];

  productID = [(HMDCHIPAccessoryStorage *)self productID];
  [(HMDCHIPAccessoryStorage *)v4 setProductID:productID];

  attributeDatabase = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  [(HMDCHIPAccessoryStorage *)v4 setAttributeDatabase:attributeDatabase];

  pairings = [(HMDCHIPAccessoryStorage *)self pairings];
  [(HMDCHIPAccessoryStorage *)v4 setPairings:pairings];

  [(HMDCHIPAccessoryStorage *)v4 setWedSupport:[(HMDCHIPAccessoryStorage *)self wedSupport]];
  extendedMACAddress = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  [(HMDCHIPAccessoryStorage *)v4 setExtendedMACAddress:extendedMACAddress];

  softwareVersionNumber = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  [(HMDCHIPAccessoryStorage *)v4 setSoftwareVersionNumber:softwareVersionNumber];

  supportedLinkLayerTypes = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
  [(HMDCHIPAccessoryStorage *)v4 setSupportedLinkLayerTypes:supportedLinkLayerTypes];

  return v4;
}

- (unint64_t)hash
{
  nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];
  v4 = [nodeID hash];

  vendorID = [(HMDCHIPAccessoryStorage *)self vendorID];
  v6 = [vendorID hash] ^ v4;

  productID = [(HMDCHIPAccessoryStorage *)self productID];
  v8 = [productID hash];

  attributeDatabase = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  v10 = v6 ^ v8 ^ [attributeDatabase hash];

  pairings = [(HMDCHIPAccessoryStorage *)self pairings];
  v12 = v10 ^ [pairings hash];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCHIPAccessoryStorage wedSupport](self, "wedSupport")}];
  v14 = [v13 hash];

  extendedMACAddress = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  v16 = v12 ^ [extendedMACAddress hash];

  softwareVersionNumber = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  v18 = v16 ^ [softwareVersionNumber hash] ^ v14;

  supportedLinkLayerTypes = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
  v20 = [supportedLinkLayerTypes hash];

  return v18 ^ v20;
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
  if (!v6)
  {
    goto LABEL_14;
  }

  nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];
  nodeID2 = [v6 nodeID];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_14;
  }

  vendorID = [(HMDCHIPAccessoryStorage *)self vendorID];
  vendorID2 = [v6 vendorID];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_14;
  }

  productID = [(HMDCHIPAccessoryStorage *)self productID];
  productID2 = [v6 productID];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_14;
  }

  attributeDatabase = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  attributeDatabase2 = [v6 attributeDatabase];
  v18 = HMFEqualObjects();

  if (!v18)
  {
    goto LABEL_14;
  }

  wedSupport = [(HMDCHIPAccessoryStorage *)self wedSupport];
  if (wedSupport != [v6 wedSupport])
  {
    goto LABEL_14;
  }

  extendedMACAddress = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  extendedMACAddress2 = [v6 extendedMACAddress];
  v22 = HMFEqualObjects();

  if (!v22)
  {
    goto LABEL_14;
  }

  softwareVersionNumber = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  softwareVersionNumber2 = [v6 softwareVersionNumber];
  v25 = HMFEqualObjects();

  if (!v25)
  {
    goto LABEL_14;
  }

  supportedLinkLayerTypes = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
  supportedLinkLayerTypes2 = [v6 supportedLinkLayerTypes];
  v28 = HMFEqualObjects();

  if (v28)
  {
    pairings = [(HMDCHIPAccessoryStorage *)self pairings];
    pairings2 = [v6 pairings];
    v31 = HMFEqualObjects();
  }

  else
  {
LABEL_14:
    v31 = 0;
  }

  return v31;
}

- (void)updateAccessoryModel:(id)model
{
  modelCopy = model;
  nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];
  if (nodeID)
  {
    [modelCopy setChipNodeID:nodeID];
  }

  vendorID = [(HMDCHIPAccessoryStorage *)self vendorID];
  if (vendorID)
  {
    [modelCopy setChipVendorID:vendorID];
  }

  productID = [(HMDCHIPAccessoryStorage *)self productID];
  if (productID)
  {
    [modelCopy setChipProductID:productID];
  }

  attributeDatabase = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  if (attributeDatabase)
  {
    [modelCopy setChipAttributeDatabase:attributeDatabase];
  }

  pairings = [(HMDCHIPAccessoryStorage *)self pairings];
  if (pairings)
  {
    [modelCopy setChipPairings:pairings];
  }

  if ([(HMDCHIPAccessoryStorage *)self wedSupport])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [modelCopy setChipWEDSupport:v9];
  }

  extendedMACAddress = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  if (extendedMACAddress)
  {
    [modelCopy setChipExtendedMACAddress:extendedMACAddress];
  }

  softwareVersionNumber = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  if (softwareVersionNumber)
  {
    [modelCopy setMatterSoftwareVersionNumber:softwareVersionNumber];
  }

  supportedLinkLayerTypes = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
  if (supportedLinkLayerTypes)
  {
    [modelCopy setSupportedLinkLayerTypes:supportedLinkLayerTypes];
  }
}

- (BOOL)updateUsingAccessoryModel:(id)model
{
  v108 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  setProperties = [modelCopy setProperties];
  if (![setProperties containsObject:@"chipNodeID"])
  {

    goto LABEL_7;
  }

  nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];
  chipNodeID = [modelCopy chipNodeID];
  v8 = HMFEqualObjects();

  if (v8)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  chipNodeID = HMFGetOSLogHandle();
  if (os_log_type_enabled(chipNodeID, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    nodeID2 = [(HMDCHIPAccessoryStorage *)selfCopy nodeID];
    chipNodeID2 = [modelCopy chipNodeID];
    v102 = 138543874;
    v103 = v11;
    v104 = 2112;
    v105 = nodeID2;
    v106 = 2112;
    v107 = chipNodeID2;
    _os_log_impl(&dword_2531F8000, chipNodeID, OS_LOG_TYPE_INFO, "%{public}@Updating storage node ID from %@ to %@", &v102, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  chipNodeID3 = [modelCopy chipNodeID];
  [(HMDCHIPAccessoryStorage *)selfCopy setNodeID:chipNodeID3];

  v15 = 1;
LABEL_8:
  vendorID = [(HMDCHIPAccessoryStorage *)self vendorID];
  if (vendorID)
  {
    chipNodeID = [(HMDCHIPAccessoryStorage *)self vendorID];
    if (([chipNodeID isEqualToNumber:&unk_286627AC0]& 1) == 0)
    {
      goto LABEL_18;
    }
  }

  setProperties2 = [modelCopy setProperties];
  if (![setProperties2 containsObject:@"chipVendorID"])
  {

    if (!vendorID)
    {
      goto LABEL_20;
    }

LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  vendorID2 = [(HMDCHIPAccessoryStorage *)self vendorID];
  chipVendorID = [modelCopy chipVendorID];
  v20 = HMFEqualObjects();

  if (vendorID)
  {
  }

  if ((v20 & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    chipNodeID = HMFGetOSLogHandle();
    if (os_log_type_enabled(chipNodeID, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      vendorID3 = [(HMDCHIPAccessoryStorage *)selfCopy2 vendorID];
      chipVendorID2 = [modelCopy chipVendorID];
      v102 = 138543874;
      v103 = v23;
      v104 = 2112;
      v105 = vendorID3;
      v106 = 2112;
      v107 = chipVendorID2;
      _os_log_impl(&dword_2531F8000, chipNodeID, OS_LOG_TYPE_INFO, "%{public}@Updating storage vendor ID from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    vendorID = [modelCopy chipVendorID];
    [(HMDCHIPAccessoryStorage *)selfCopy2 setVendorID:vendorID];
    v15 = 1;
    goto LABEL_19;
  }

LABEL_20:
  productID = [(HMDCHIPAccessoryStorage *)self productID];
  if (productID)
  {
    chipNodeID = [(HMDCHIPAccessoryStorage *)self productID];
    if (([chipNodeID isEqualToNumber:&unk_286627AC0]& 1) == 0)
    {
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }
  }

  setProperties3 = [modelCopy setProperties];
  if (![setProperties3 containsObject:@"chipProductID"])
  {

    if (!productID)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  productID2 = [(HMDCHIPAccessoryStorage *)self productID];
  chipProductID = [modelCopy chipProductID];
  v30 = HMFEqualObjects();

  if (productID)
  {
  }

  if ((v30 & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      productID3 = [(HMDCHIPAccessoryStorage *)selfCopy3 productID];
      chipProductID2 = [modelCopy chipProductID];
      v102 = 138543874;
      v103 = v34;
      v104 = 2112;
      v105 = productID3;
      v106 = 2112;
      v107 = chipProductID2;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating storage product ID from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    productID = [modelCopy chipProductID];
    [(HMDCHIPAccessoryStorage *)selfCopy3 setProductID:productID];
    v15 = 1;
    goto LABEL_31;
  }

LABEL_32:
  setProperties4 = [modelCopy setProperties];
  if ([setProperties4 containsObject:@"chipAttributeDatabase"])
  {
    attributeDatabase = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
    chipAttributeDatabase = [modelCopy chipAttributeDatabase];
    v40 = HMFEqualObjects();

    if (v40)
    {
      goto LABEL_38;
    }

    v41 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      attributeDatabase2 = [(HMDCHIPAccessoryStorage *)selfCopy4 attributeDatabase];
      chipAttributeDatabase2 = [modelCopy chipAttributeDatabase];
      v102 = 138543874;
      v103 = v44;
      v104 = 2112;
      v105 = attributeDatabase2;
      v106 = 2112;
      v107 = chipAttributeDatabase2;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Updating storage attribute database from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    setProperties4 = [modelCopy chipAttributeDatabase];
    [(HMDCHIPAccessoryStorage *)selfCopy4 setAttributeDatabase:setProperties4];
    v15 = 1;
  }

LABEL_38:
  setProperties5 = [modelCopy setProperties];
  if ([setProperties5 containsObject:@"chipPairingsData"])
  {
    pairings = [(HMDCHIPAccessoryStorage *)self pairings];
    chipPairings = [modelCopy chipPairings];
    v50 = HMFEqualObjects();

    if (v50)
    {
      goto LABEL_44;
    }

    v51 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      pairings2 = [(HMDCHIPAccessoryStorage *)selfCopy5 pairings];
      chipPairings2 = [modelCopy chipPairings];
      v102 = 138543874;
      v103 = v54;
      v104 = 2112;
      v105 = pairings2;
      v106 = 2112;
      v107 = chipPairings2;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Updating storage pairings from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v51);
    setProperties5 = [modelCopy chipPairings];
    [(HMDCHIPAccessoryStorage *)selfCopy5 setPairings:setProperties5];
    v15 = 1;
  }

LABEL_44:
  setProperties6 = [modelCopy setProperties];
  if ([setProperties6 containsObject:@"chipWEDSupport"])
  {
    wedSupport = [(HMDCHIPAccessoryStorage *)self wedSupport];
    chipWEDSupport = [modelCopy chipWEDSupport];
    bOOLValue = [chipWEDSupport BOOLValue];

    if (wedSupport == bOOLValue)
    {
      goto LABEL_50;
    }

    v61 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      [(HMDCHIPAccessoryStorage *)selfCopy6 wedSupport];
      v65 = HMFBooleanToString();
      chipWEDSupport2 = [modelCopy chipWEDSupport];
      [chipWEDSupport2 BOOLValue];
      v67 = HMFBooleanToString();
      v102 = 138543874;
      v103 = v64;
      v104 = 2112;
      v105 = v65;
      v106 = 2112;
      v107 = v67;
      _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating storage WED support from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v61);
    setProperties6 = [modelCopy chipWEDSupport];
    -[HMDCHIPAccessoryStorage setWedSupport:](selfCopy6, "setWedSupport:", [setProperties6 BOOLValue]);
    v15 = 1;
  }

LABEL_50:
  setProperties7 = [modelCopy setProperties];
  if ([setProperties7 containsObject:@"chipExtendedMACAddress"])
  {
    extendedMACAddress = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
    chipExtendedMACAddress = [modelCopy chipExtendedMACAddress];
    v71 = HMFEqualObjects();

    if (v71)
    {
      goto LABEL_56;
    }

    v72 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = HMFGetLogIdentifier();
      extendedMACAddress2 = [(HMDCHIPAccessoryStorage *)selfCopy7 extendedMACAddress];
      chipExtendedMACAddress2 = [modelCopy chipExtendedMACAddress];
      v102 = 138543874;
      v103 = v75;
      v104 = 2112;
      v105 = extendedMACAddress2;
      v106 = 2112;
      v107 = chipExtendedMACAddress2;
      _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@Updating storage eMAC Address from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v72);
    setProperties7 = [modelCopy chipExtendedMACAddress];
    [(HMDCHIPAccessoryStorage *)selfCopy7 setExtendedMACAddress:setProperties7];
    v15 = 1;
  }

LABEL_56:
  setProperties8 = [modelCopy setProperties];
  if ([setProperties8 containsObject:@"matterSoftwareVersionNumber"])
  {
    softwareVersionNumber = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
    matterSoftwareVersionNumber = [modelCopy matterSoftwareVersionNumber];
    v81 = HMFEqualObjects();

    if (v81)
    {
      goto LABEL_62;
    }

    v82 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v84 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      v85 = HMFGetLogIdentifier();
      softwareVersionNumber2 = [(HMDCHIPAccessoryStorage *)selfCopy8 softwareVersionNumber];
      matterSoftwareVersionNumber2 = [modelCopy matterSoftwareVersionNumber];
      v102 = 138543874;
      v103 = v85;
      v104 = 2112;
      v105 = softwareVersionNumber2;
      v106 = 2112;
      v107 = matterSoftwareVersionNumber2;
      _os_log_impl(&dword_2531F8000, v84, OS_LOG_TYPE_INFO, "%{public}@Updating accessory software version number from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v82);
    setProperties8 = [modelCopy matterSoftwareVersionNumber];
    [(HMDCHIPAccessoryStorage *)selfCopy8 setSoftwareVersionNumber:setProperties8];
    v15 = 1;
  }

LABEL_62:
  setProperties9 = [modelCopy setProperties];
  supportedLinkLayerTypes2 = [setProperties9 containsObject:@"supportedLinkLayerTypes"];

  if (supportedLinkLayerTypes2)
  {
    supportedLinkLayerTypes = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
    if (supportedLinkLayerTypes)
    {
      supportedLinkLayerTypes2 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
      if (([supportedLinkLayerTypes2 isEqualToNumber:&unk_286627AC0] & 1) == 0)
      {

LABEL_72:
        goto LABEL_73;
      }
    }

    supportedLinkLayerTypes3 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
    supportedLinkLayerTypes4 = [modelCopy supportedLinkLayerTypes];
    v93 = HMFEqualObjects();

    if (supportedLinkLayerTypes)
    {
    }

    if ((v93 & 1) == 0)
    {
      v94 = objc_autoreleasePoolPush();
      selfCopy9 = self;
      v96 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        v97 = HMFGetLogIdentifier();
        supportedLinkLayerTypes5 = [(HMDCHIPAccessoryStorage *)selfCopy9 supportedLinkLayerTypes];
        supportedLinkLayerTypes6 = [modelCopy supportedLinkLayerTypes];
        v102 = 138543874;
        v103 = v97;
        v104 = 2112;
        v105 = supportedLinkLayerTypes5;
        v106 = 2112;
        v107 = supportedLinkLayerTypes6;
        _os_log_impl(&dword_2531F8000, v96, OS_LOG_TYPE_INFO, "%{public}@Updating matter accessory supported link layer types from %@ to %@", &v102, 0x20u);
      }

      objc_autoreleasePoolPop(v94);
      supportedLinkLayerTypes = [modelCopy supportedLinkLayerTypes];
      [(HMDCHIPAccessoryStorage *)selfCopy9 setSupportedLinkLayerTypes:supportedLinkLayerTypes];
      v15 = 1;
      goto LABEL_72;
    }
  }

LABEL_73:

  v100 = *MEMORY[0x277D85DE8];
  return v15;
}

- (NSDictionary)debugDictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  nodeID = [(HMDCHIPAccessoryStorage *)self nodeID];
  [dictionary setObject:nodeID forKeyedSubscript:@"Node ID"];

  vendorID = [(HMDCHIPAccessoryStorage *)self vendorID];
  [dictionary setObject:vendorID forKeyedSubscript:@"Vendor ID"];

  productID = [(HMDCHIPAccessoryStorage *)self productID];
  [dictionary setObject:productID forKeyedSubscript:@"Product ID"];

  attributeDatabase = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  [dictionary setObject:attributeDatabase forKeyedSubscript:@"Attribute Database"];

  pairings = [(HMDCHIPAccessoryStorage *)self pairings];
  v9 = [pairings description];
  [dictionary setObject:v9 forKeyedSubscript:@"Pairings"];

  [(HMDCHIPAccessoryStorage *)self wedSupport];
  v10 = HMFBooleanToString();
  v11 = [v10 description];
  [dictionary setObject:v11 forKeyedSubscript:@"WED"];

  extendedMACAddress = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  v13 = [extendedMACAddress description];
  [dictionary setObject:v13 forKeyedSubscript:@"eMAC"];

  softwareVersionNumber = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  [dictionary setObject:softwareVersionNumber forKeyedSubscript:@"softwareVersionNumber"];

  v15 = [dictionary copy];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10, &__block_literal_global_21266);
  }

  v3 = logCategory__hmf_once_v11;

  return v3;
}

uint64_t __38__HMDCHIPAccessoryStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11;
  logCategory__hmf_once_v11 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end