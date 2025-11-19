@interface HMDCHIPAccessoryStorage
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateUsingAccessoryModel:(id)a3;
- (HMDCHIPAccessoryStorage)initWithCoder:(id)a3;
- (NSDictionary)debugDictionaryRepresentation;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateAccessoryModel:(id)a3;
@end

@implementation HMDCHIPAccessoryStorage

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCHIPAccessoryStorage *)self nodeID];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDCHIPAccessoryStorage *)self nodeID];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D0F778]);
    v6 = [(HMDCHIPAccessoryStorage *)self nodeID];
    v7 = [v5 initWithName:@"Node ID" value:v6];
    [v3 addObject:v7];
  }

  v8 = [(HMDCHIPAccessoryStorage *)self vendorID];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D0F778]);
    v10 = [(HMDCHIPAccessoryStorage *)self vendorID];
    v11 = [v9 initWithName:@"Vendor ID" value:v10];
    [v3 addObject:v11];
  }

  v12 = [(HMDCHIPAccessoryStorage *)self productID];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    v14 = [(HMDCHIPAccessoryStorage *)self productID];
    v15 = [v13 initWithName:@"Product ID" value:v14];
    [v3 addObject:v15];
  }

  v16 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277D0F778]);
    v18 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
    v19 = [v17 initWithName:@"Attribute Database" value:v18];
    [v3 addObject:v19];
  }

  v20 = [(HMDCHIPAccessoryStorage *)self pairings];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    v22 = [(HMDCHIPAccessoryStorage *)self pairings];
    v23 = [v21 initWithName:@"Pairings" value:v22];
    [v3 addObject:v23];
  }

  v24 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x277D0F778]);
    v26 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
    v27 = [v25 initWithName:@"eMAC" value:v26];
    [v3 addObject:v27];
  }

  v28 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCHIPAccessoryStorage *)self wedSupport];
  v29 = HMFBooleanToString();
  v30 = [v28 initWithName:@"WED" value:v29];
  [v3 addObject:v30];

  v31 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];

  if (v31)
  {
    v32 = objc_alloc(MEMORY[0x277D0F778]);
    v33 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
    v34 = [v32 initWithName:@"softwareVersionNumber" value:v33];
    [v3 addObject:v34];
  }

  v35 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];

  if (v35)
  {
    v36 = objc_alloc(MEMORY[0x277D0F778]);
    v37 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
    v38 = [v36 initWithName:@"supportedLinkLayerTypes" value:v37];
    [v3 addObject:v38];
  }

  v39 = [v3 copy];

  return v39;
}

- (HMDCHIPAccessoryStorage)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPAccessoryStorage *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.nodeID"];
  [(HMDCHIPAccessoryStorage *)v5 setNodeID:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.vendorID"];
  [(HMDCHIPAccessoryStorage *)v5 setVendorID:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.productID"];
  [(HMDCHIPAccessoryStorage *)v5 setProductID:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.attributeDatabase"];
  [(HMDCHIPAccessoryStorage *)v5 setAttributeDatabase:v9];

  v10 = MEMORY[0x277CBEB98];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"HMCAS.ck.pairings"];
  [(HMDCHIPAccessoryStorage *)v5 setPairings:v13];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.wedSupport"];
  -[HMDCHIPAccessoryStorage setWedSupport:](v5, "setWedSupport:", [v14 BOOLValue]);
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.eMAC"];
  [(HMDCHIPAccessoryStorage *)v5 setExtendedMACAddress:v15];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.softwareVersionNumber"];
  [(HMDCHIPAccessoryStorage *)v5 setSoftwareVersionNumber:v16];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCAS.ck.supportedLinkLayerTypes"];

  [(HMDCHIPAccessoryStorage *)v5 setSupportedLinkLayerTypes:v17];
  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  if (([v13 hmd_isForLocalStore] & 1) != 0 || (objc_msgSend(v13, "hmd_isForRemoteTransportOnSameAccount") & 1) != 0 || objc_msgSend(v13, "hmd_isForRemoteUserAdministrator"))
  {
    v4 = [(HMDCHIPAccessoryStorage *)self nodeID];
    [v13 encodeObject:v4 forKey:@"HMCAS.ck.nodeID"];

    v5 = [(HMDCHIPAccessoryStorage *)self pairings];
    [v13 encodeObject:v5 forKey:@"HMCAS.ck.pairings"];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCHIPAccessoryStorage wedSupport](self, "wedSupport")}];
    [v13 encodeObject:v6 forKey:@"HMCAS.ck.wedSupport"];

    v7 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
    [v13 encodeObject:v7 forKey:@"HMCAS.ck.eMAC"];

    v8 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
    [v13 encodeObject:v8 forKey:@"HMCAS.ck.supportedLinkLayerTypes"];

    if ([v13 hmd_isForLocalStore])
    {
      v9 = [(HMDCHIPAccessoryStorage *)self vendorID];
      [v13 encodeObject:v9 forKey:@"HMCAS.ck.vendorID"];

      v10 = [(HMDCHIPAccessoryStorage *)self productID];
      [v13 encodeObject:v10 forKey:@"HMCAS.ck.productID"];

      v11 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
      [v13 encodeObject:v11 forKey:@"HMCAS.ck.attributeDatabase"];

      v12 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
      [v13 encodeObject:v12 forKey:@"HMCAS.softwareVersionNumber"];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMDCHIPAccessoryStorage allocWithZone:?]];
  v5 = [(HMDCHIPAccessoryStorage *)self nodeID];
  [(HMDCHIPAccessoryStorage *)v4 setNodeID:v5];

  v6 = [(HMDCHIPAccessoryStorage *)self vendorID];
  [(HMDCHIPAccessoryStorage *)v4 setVendorID:v6];

  v7 = [(HMDCHIPAccessoryStorage *)self productID];
  [(HMDCHIPAccessoryStorage *)v4 setProductID:v7];

  v8 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  [(HMDCHIPAccessoryStorage *)v4 setAttributeDatabase:v8];

  v9 = [(HMDCHIPAccessoryStorage *)self pairings];
  [(HMDCHIPAccessoryStorage *)v4 setPairings:v9];

  [(HMDCHIPAccessoryStorage *)v4 setWedSupport:[(HMDCHIPAccessoryStorage *)self wedSupport]];
  v10 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  [(HMDCHIPAccessoryStorage *)v4 setExtendedMACAddress:v10];

  v11 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  [(HMDCHIPAccessoryStorage *)v4 setSoftwareVersionNumber:v11];

  v12 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
  [(HMDCHIPAccessoryStorage *)v4 setSupportedLinkLayerTypes:v12];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HMDCHIPAccessoryStorage *)self nodeID];
  v4 = [v3 hash];

  v5 = [(HMDCHIPAccessoryStorage *)self vendorID];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDCHIPAccessoryStorage *)self productID];
  v8 = [v7 hash];

  v9 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMDCHIPAccessoryStorage *)self pairings];
  v12 = v10 ^ [v11 hash];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCHIPAccessoryStorage wedSupport](self, "wedSupport")}];
  v14 = [v13 hash];

  v15 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  v16 = v12 ^ [v15 hash];

  v17 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  v18 = v16 ^ [v17 hash] ^ v14;

  v19 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
  v20 = [v19 hash];

  return v18 ^ v20;
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
    goto LABEL_14;
  }

  v7 = [(HMDCHIPAccessoryStorage *)self nodeID];
  v8 = [v6 nodeID];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = [(HMDCHIPAccessoryStorage *)self vendorID];
  v11 = [v6 vendorID];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = [(HMDCHIPAccessoryStorage *)self productID];
  v14 = [v6 productID];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  v17 = [v6 attributeDatabase];
  v18 = HMFEqualObjects();

  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = [(HMDCHIPAccessoryStorage *)self wedSupport];
  if (v19 != [v6 wedSupport])
  {
    goto LABEL_14;
  }

  v20 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  v21 = [v6 extendedMACAddress];
  v22 = HMFEqualObjects();

  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  v24 = [v6 softwareVersionNumber];
  v25 = HMFEqualObjects();

  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
  v27 = [v6 supportedLinkLayerTypes];
  v28 = HMFEqualObjects();

  if (v28)
  {
    v29 = [(HMDCHIPAccessoryStorage *)self pairings];
    v30 = [v6 pairings];
    v31 = HMFEqualObjects();
  }

  else
  {
LABEL_14:
    v31 = 0;
  }

  return v31;
}

- (void)updateAccessoryModel:(id)a3
{
  v13 = a3;
  v4 = [(HMDCHIPAccessoryStorage *)self nodeID];
  if (v4)
  {
    [v13 setChipNodeID:v4];
  }

  v5 = [(HMDCHIPAccessoryStorage *)self vendorID];
  if (v5)
  {
    [v13 setChipVendorID:v5];
  }

  v6 = [(HMDCHIPAccessoryStorage *)self productID];
  if (v6)
  {
    [v13 setChipProductID:v6];
  }

  v7 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  if (v7)
  {
    [v13 setChipAttributeDatabase:v7];
  }

  v8 = [(HMDCHIPAccessoryStorage *)self pairings];
  if (v8)
  {
    [v13 setChipPairings:v8];
  }

  if ([(HMDCHIPAccessoryStorage *)self wedSupport])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v13 setChipWEDSupport:v9];
  }

  v10 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  if (v10)
  {
    [v13 setChipExtendedMACAddress:v10];
  }

  v11 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  if (v11)
  {
    [v13 setMatterSoftwareVersionNumber:v11];
  }

  v12 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
  if (v12)
  {
    [v13 setSupportedLinkLayerTypes:v12];
  }
}

- (BOOL)updateUsingAccessoryModel:(id)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 setProperties];
  if (![v6 containsObject:@"chipNodeID"])
  {

    goto LABEL_7;
  }

  v7 = [(HMDCHIPAccessoryStorage *)self nodeID];
  v3 = [v5 chipNodeID];
  v8 = HMFEqualObjects();

  if (v8)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDCHIPAccessoryStorage *)v10 nodeID];
    v13 = [v5 chipNodeID];
    v102 = 138543874;
    v103 = v11;
    v104 = 2112;
    v105 = v12;
    v106 = 2112;
    v107 = v13;
    _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Updating storage node ID from %@ to %@", &v102, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [v5 chipNodeID];
  [(HMDCHIPAccessoryStorage *)v10 setNodeID:v14];

  v15 = 1;
LABEL_8:
  v16 = [(HMDCHIPAccessoryStorage *)self vendorID];
  if (v16)
  {
    v3 = [(HMDCHIPAccessoryStorage *)self vendorID];
    if (([v3 isEqualToNumber:&unk_283E72488]& 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v17 = [v5 setProperties];
  if (![v17 containsObject:@"chipVendorID"])
  {

    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v18 = [(HMDCHIPAccessoryStorage *)self vendorID];
  v19 = [v5 chipVendorID];
  v20 = HMFEqualObjects();

  if (v16)
  {
  }

  if ((v20 & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMDCHIPAccessoryStorage *)v22 vendorID];
      v25 = [v5 chipVendorID];
      v102 = 138543874;
      v103 = v23;
      v104 = 2112;
      v105 = v24;
      v106 = 2112;
      v107 = v25;
      _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Updating storage vendor ID from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v16 = [v5 chipVendorID];
    [(HMDCHIPAccessoryStorage *)v22 setVendorID:v16];
    v15 = 1;
    goto LABEL_19;
  }

LABEL_20:
  v26 = [(HMDCHIPAccessoryStorage *)self productID];
  if (v26)
  {
    v3 = [(HMDCHIPAccessoryStorage *)self productID];
    if (([v3 isEqualToNumber:&unk_283E72488]& 1) == 0)
    {
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }
  }

  v27 = [v5 setProperties];
  if (![v27 containsObject:@"chipProductID"])
  {

    if (!v26)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v28 = [(HMDCHIPAccessoryStorage *)self productID];
  v29 = [v5 chipProductID];
  v30 = HMFEqualObjects();

  if (v26)
  {
  }

  if ((v30 & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [(HMDCHIPAccessoryStorage *)v32 productID];
      v36 = [v5 chipProductID];
      v102 = 138543874;
      v103 = v34;
      v104 = 2112;
      v105 = v35;
      v106 = 2112;
      v107 = v36;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating storage product ID from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v26 = [v5 chipProductID];
    [(HMDCHIPAccessoryStorage *)v32 setProductID:v26];
    v15 = 1;
    goto LABEL_31;
  }

LABEL_32:
  v37 = [v5 setProperties];
  if ([v37 containsObject:@"chipAttributeDatabase"])
  {
    v38 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
    v39 = [v5 chipAttributeDatabase];
    v40 = HMFEqualObjects();

    if (v40)
    {
      goto LABEL_38;
    }

    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      v45 = [(HMDCHIPAccessoryStorage *)v42 attributeDatabase];
      v46 = [v5 chipAttributeDatabase];
      v102 = 138543874;
      v103 = v44;
      v104 = 2112;
      v105 = v45;
      v106 = 2112;
      v107 = v46;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Updating storage attribute database from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    v37 = [v5 chipAttributeDatabase];
    [(HMDCHIPAccessoryStorage *)v42 setAttributeDatabase:v37];
    v15 = 1;
  }

LABEL_38:
  v47 = [v5 setProperties];
  if ([v47 containsObject:@"chipPairingsData"])
  {
    v48 = [(HMDCHIPAccessoryStorage *)self pairings];
    v49 = [v5 chipPairings];
    v50 = HMFEqualObjects();

    if (v50)
    {
      goto LABEL_44;
    }

    v51 = objc_autoreleasePoolPush();
    v52 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      v55 = [(HMDCHIPAccessoryStorage *)v52 pairings];
      v56 = [v5 chipPairings];
      v102 = 138543874;
      v103 = v54;
      v104 = 2112;
      v105 = v55;
      v106 = 2112;
      v107 = v56;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Updating storage pairings from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v51);
    v47 = [v5 chipPairings];
    [(HMDCHIPAccessoryStorage *)v52 setPairings:v47];
    v15 = 1;
  }

LABEL_44:
  v57 = [v5 setProperties];
  if ([v57 containsObject:@"chipWEDSupport"])
  {
    v58 = [(HMDCHIPAccessoryStorage *)self wedSupport];
    v59 = [v5 chipWEDSupport];
    v60 = [v59 BOOLValue];

    if (v58 == v60)
    {
      goto LABEL_50;
    }

    v61 = objc_autoreleasePoolPush();
    v62 = self;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      [(HMDCHIPAccessoryStorage *)v62 wedSupport];
      v65 = HMFBooleanToString();
      v66 = [v5 chipWEDSupport];
      [v66 BOOLValue];
      v67 = HMFBooleanToString();
      v102 = 138543874;
      v103 = v64;
      v104 = 2112;
      v105 = v65;
      v106 = 2112;
      v107 = v67;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating storage WED support from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v61);
    v57 = [v5 chipWEDSupport];
    -[HMDCHIPAccessoryStorage setWedSupport:](v62, "setWedSupport:", [v57 BOOLValue]);
    v15 = 1;
  }

LABEL_50:
  v68 = [v5 setProperties];
  if ([v68 containsObject:@"chipExtendedMACAddress"])
  {
    v69 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
    v70 = [v5 chipExtendedMACAddress];
    v71 = HMFEqualObjects();

    if (v71)
    {
      goto LABEL_56;
    }

    v72 = objc_autoreleasePoolPush();
    v73 = self;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = HMFGetLogIdentifier();
      v76 = [(HMDCHIPAccessoryStorage *)v73 extendedMACAddress];
      v77 = [v5 chipExtendedMACAddress];
      v102 = 138543874;
      v103 = v75;
      v104 = 2112;
      v105 = v76;
      v106 = 2112;
      v107 = v77;
      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Updating storage eMAC Address from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v72);
    v68 = [v5 chipExtendedMACAddress];
    [(HMDCHIPAccessoryStorage *)v73 setExtendedMACAddress:v68];
    v15 = 1;
  }

LABEL_56:
  v78 = [v5 setProperties];
  if ([v78 containsObject:@"matterSoftwareVersionNumber"])
  {
    v79 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
    v80 = [v5 matterSoftwareVersionNumber];
    v81 = HMFEqualObjects();

    if (v81)
    {
      goto LABEL_62;
    }

    v82 = objc_autoreleasePoolPush();
    v83 = self;
    v84 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      v85 = HMFGetLogIdentifier();
      v86 = [(HMDCHIPAccessoryStorage *)v83 softwareVersionNumber];
      v87 = [v5 matterSoftwareVersionNumber];
      v102 = 138543874;
      v103 = v85;
      v104 = 2112;
      v105 = v86;
      v106 = 2112;
      v107 = v87;
      _os_log_impl(&dword_229538000, v84, OS_LOG_TYPE_INFO, "%{public}@Updating accessory software version number from %@ to %@", &v102, 0x20u);
    }

    objc_autoreleasePoolPop(v82);
    v78 = [v5 matterSoftwareVersionNumber];
    [(HMDCHIPAccessoryStorage *)v83 setSoftwareVersionNumber:v78];
    v15 = 1;
  }

LABEL_62:
  v88 = [v5 setProperties];
  v89 = [v88 containsObject:@"supportedLinkLayerTypes"];

  if (v89)
  {
    v90 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
    if (v90)
    {
      v89 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
      if (([v89 isEqualToNumber:&unk_283E72488] & 1) == 0)
      {

LABEL_72:
        goto LABEL_73;
      }
    }

    v91 = [(HMDCHIPAccessoryStorage *)self supportedLinkLayerTypes];
    v92 = [v5 supportedLinkLayerTypes];
    v93 = HMFEqualObjects();

    if (v90)
    {
    }

    if ((v93 & 1) == 0)
    {
      v94 = objc_autoreleasePoolPush();
      v95 = self;
      v96 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        v97 = HMFGetLogIdentifier();
        v98 = [(HMDCHIPAccessoryStorage *)v95 supportedLinkLayerTypes];
        v99 = [v5 supportedLinkLayerTypes];
        v102 = 138543874;
        v103 = v97;
        v104 = 2112;
        v105 = v98;
        v106 = 2112;
        v107 = v99;
        _os_log_impl(&dword_229538000, v96, OS_LOG_TYPE_INFO, "%{public}@Updating matter accessory supported link layer types from %@ to %@", &v102, 0x20u);
      }

      objc_autoreleasePoolPop(v94);
      v90 = [v5 supportedLinkLayerTypes];
      [(HMDCHIPAccessoryStorage *)v95 setSupportedLinkLayerTypes:v90];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCHIPAccessoryStorage *)self nodeID];
  [v3 setObject:v4 forKeyedSubscript:@"Node ID"];

  v5 = [(HMDCHIPAccessoryStorage *)self vendorID];
  [v3 setObject:v5 forKeyedSubscript:@"Vendor ID"];

  v6 = [(HMDCHIPAccessoryStorage *)self productID];
  [v3 setObject:v6 forKeyedSubscript:@"Product ID"];

  v7 = [(HMDCHIPAccessoryStorage *)self attributeDatabase];
  [v3 setObject:v7 forKeyedSubscript:@"Attribute Database"];

  v8 = [(HMDCHIPAccessoryStorage *)self pairings];
  v9 = [v8 description];
  [v3 setObject:v9 forKeyedSubscript:@"Pairings"];

  [(HMDCHIPAccessoryStorage *)self wedSupport];
  v10 = HMFBooleanToString();
  v11 = [v10 description];
  [v3 setObject:v11 forKeyedSubscript:@"WED"];

  v12 = [(HMDCHIPAccessoryStorage *)self extendedMACAddress];
  v13 = [v12 description];
  [v3 setObject:v13 forKeyedSubscript:@"eMAC"];

  v14 = [(HMDCHIPAccessoryStorage *)self softwareVersionNumber];
  [v3 setObject:v14 forKeyedSubscript:@"softwareVersionNumber"];

  v15 = [v3 copy];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_77915 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_77915, &__block_literal_global_77916);
  }

  v3 = logCategory__hmf_once_v11_77917;

  return v3;
}

void __38__HMDCHIPAccessoryStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_77917;
  logCategory__hmf_once_v11_77917 = v1;
}

@end