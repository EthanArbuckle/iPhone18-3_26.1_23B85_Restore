@interface HMIFaceprint
+ (id)sentinelFaceprintWithUUID:(id)d modelUUID:(id)iD faceCropUUID:(id)uID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSentinelFaceprint;
- (HMIFaceprint)initWithCoder:(id)coder;
- (HMIFaceprint)initWithUUID:(id)d data:(id)data modelUUID:(id)iD faceCropUUID:(id)uID;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIFaceprint

+ (id)sentinelFaceprintWithUUID:(id)d modelUUID:(id)iD faceCropUUID:(id)uID
{
  uIDCopy = uID;
  iDCopy = iD;
  dCopy = d;
  v10 = [HMIFaceprint alloc];
  data = [MEMORY[0x277CBEA90] data];
  v12 = [(HMIFaceprint *)v10 initWithUUID:dCopy data:data modelUUID:iDCopy faceCropUUID:uIDCopy];

  return v12;
}

- (HMIFaceprint)initWithUUID:(id)d data:(id)data modelUUID:(id)iD faceCropUUID:(id)uID
{
  dCopy = d;
  dataCopy = data;
  iDCopy = iD;
  uIDCopy = uID;
  if (!dCopy)
  {
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_9;
  }

  if (!dataCopy)
  {
LABEL_9:
    [HMIFaceprint initWithUUID:data:modelUUID:faceCropUUID:];
    goto LABEL_10;
  }

  if (!iDCopy)
  {
LABEL_10:
    [HMIFaceprint initWithUUID:data:modelUUID:faceCropUUID:];
    goto LABEL_11;
  }

  v14 = uIDCopy;
  if (!uIDCopy)
  {
LABEL_11:
    v25 = [HMIFaceprint initWithUUID:data:modelUUID:faceCropUUID:];
    return [(HMIFaceprint *)v25 attributeDescriptions];
  }

  v27.receiver = self;
  v27.super_class = HMIFaceprint;
  v15 = [(HMIFaceprint *)&v27 init];
  if (v15)
  {
    v16 = [dCopy copy];
    UUID = v15->_UUID;
    v15->_UUID = v16;

    v18 = [dataCopy copy];
    data = v15->_data;
    v15->_data = v18;

    v20 = [iDCopy copy];
    modelUUID = v15->_modelUUID;
    v15->_modelUUID = v20;

    v22 = [v14 copy];
    faceCropUUID = v15->_faceCropUUID;
    v15->_faceCropUUID = v22;
  }

  return v15;
}

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uUID = [(HMIFaceprint *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:uUID];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  data = [(HMIFaceprint *)self data];
  v8 = [v6 initWithName:@"Data" value:data];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  modelUUID = [(HMIFaceprint *)self modelUUID];
  v11 = [v9 initWithName:@"Model UUID" value:modelUUID];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  faceCropUUID = [(HMIFaceprint *)self faceCropUUID];
  v14 = [v12 initWithName:@"Face Crop UUID" value:faceCropUUID];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

- (BOOL)isSentinelFaceprint
{
  data = [(HMIFaceprint *)self data];
  data2 = [MEMORY[0x277CBEA90] data];
  v4 = [data isEqualToData:data2];

  return v4;
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
  if (v6)
  {
    uUID = [(HMIFaceprint *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:uUID2])
    {
      data = [(HMIFaceprint *)self data];
      data2 = [v6 data];
      if ([data isEqualToData:data2])
      {
        modelUUID = [(HMIFaceprint *)self modelUUID];
        modelUUID2 = [v6 modelUUID];
        if ([modelUUID isEqual:modelUUID2])
        {
          faceCropUUID = [(HMIFaceprint *)self faceCropUUID];
          faceCropUUID2 = [v6 faceCropUUID];
          v14 = [faceCropUUID isEqual:faceCropUUID2];
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
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  uUID = [(HMIFaceprint *)self UUID];
  v3 = [uUID hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(HMIFaceprint *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"HMIFP.ck.u"];

  data = [(HMIFaceprint *)self data];
  [coderCopy encodeObject:data forKey:@"HMIFP.ck.d"];

  modelUUID = [(HMIFaceprint *)self modelUUID];
  [coderCopy encodeObject:modelUUID forKey:@"HMIFP.ck.mu"];

  faceCropUUID = [(HMIFaceprint *)self faceCropUUID];
  [coderCopy encodeObject:faceCropUUID forKey:@"HMIFP.ck.fcu"];
}

- (HMIFaceprint)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFP.ck.u"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFP.ck.d"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFP.ck.mu"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFP.ck.fcu"];
  v9 = v8;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v6 == 0 || v7 == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138544386;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@ data: %@ modelUUID: %@ faceCropUUID: %@", &v19, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  else
  {
    selfCopy = [(HMIFaceprint *)self initWithUUID:v5 data:v6 modelUUID:v7 faceCropUUID:v8];
    v17 = selfCopy;
  }

  return v17;
}

@end