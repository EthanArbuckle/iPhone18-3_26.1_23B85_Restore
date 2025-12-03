@interface HMITorsoprint
- (BOOL)isEqual:(id)equal;
- (HMITorsoprint)initWithCoder:(id)coder;
- (HMITorsoprint)initWithUUID:(id)d data:(id)data lowQuality:(BOOL)quality unrecognizable:(BOOL)unrecognizable;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMITorsoprint

- (HMITorsoprint)initWithUUID:(id)d data:(id)data lowQuality:(BOOL)quality unrecognizable:(BOOL)unrecognizable
{
  dCopy = d;
  dataCopy = data;
  if (dataCopy)
  {
    v12 = dataCopy;
    v21.receiver = self;
    v21.super_class = HMITorsoprint;
    v13 = [(HMITorsoprint *)&v21 init];
    if (v13)
    {
      v14 = [dCopy copy];
      UUID = v13->_UUID;
      v13->_UUID = v14;

      v16 = [v12 copy];
      data = v13->_data;
      v13->_data = v16;

      v13->_lowQuality = quality;
      v13->_unrecognizable = unrecognizable;
    }

    return v13;
  }

  else
  {
    v19 = [HMIFaceprint initWithUUID:data:modelUUID:faceCropUUID:];
    return [(HMITorsoprint *)v19 attributeDescriptions];
  }
}

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uUID = [(HMITorsoprint *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:uUID];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  data = [(HMITorsoprint *)self data];
  v8 = [v6 initWithName:@"Data" value:data];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMITorsoprint *)self lowQuality];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Bad Torso" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMITorsoprint *)self unrecognizable];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"ROI Boundary" value:v13];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
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
    uUID = [(HMITorsoprint *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:uUID2])
    {
      data = [(HMITorsoprint *)self data];
      data2 = [v6 data];
      if ([data isEqualToData:data2] && (v11 = -[HMITorsoprint lowQuality](self, "lowQuality"), v11 == objc_msgSend(v6, "lowQuality")))
      {
        unrecognizable = [(HMITorsoprint *)self unrecognizable];
        v12 = unrecognizable ^ [v6 unrecognizable] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  uUID = [(HMITorsoprint *)self UUID];
  v3 = [uUID hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(HMITorsoprint *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"HMITP.ck.u"];

  data = [(HMITorsoprint *)self data];
  [coderCopy encodeObject:data forKey:@"HMITP.ck.d"];

  [coderCopy encodeBool:-[HMITorsoprint lowQuality](self forKey:{"lowQuality"), @"HMITP.ck.lq"}];
  [coderCopy encodeBool:-[HMITorsoprint unrecognizable](self forKey:{"unrecognizable"), @"HMITP.ck.ur"}];
}

- (HMITorsoprint)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITP.ck.u"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITP.ck.d"];
  v7 = [coderCopy containsValueForKey:@"HMITP.ck.lq"];
  v8 = [coderCopy containsValueForKey:@"HMITP.ck.ur"];
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 || v7 == 0;
  if (v10 || (v8 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFBooleanToString();
      v17 = HMFBooleanToString();
      v19 = 138544386;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@ data: %@ hasLowQualityKey: %@, hasUnrecognizableKey: %@", &v19, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  else
  {
    selfCopy = -[HMITorsoprint initWithUUID:data:lowQuality:unrecognizable:](self, "initWithUUID:data:lowQuality:unrecognizable:", v5, v6, [coderCopy decodeBoolForKey:@"HMITP.ck.lq"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"HMITP.ck.ur"));
    v12 = selfCopy;
  }

  return v12;
}

@end