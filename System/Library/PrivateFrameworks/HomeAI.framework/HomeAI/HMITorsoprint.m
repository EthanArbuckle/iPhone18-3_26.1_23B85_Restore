@interface HMITorsoprint
- (BOOL)isEqual:(id)a3;
- (HMITorsoprint)initWithCoder:(id)a3;
- (HMITorsoprint)initWithUUID:(id)a3 data:(id)a4 lowQuality:(BOOL)a5 unrecognizable:(BOOL)a6;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMITorsoprint

- (HMITorsoprint)initWithUUID:(id)a3 data:(id)a4 lowQuality:(BOOL)a5 unrecognizable:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v12 = v11;
    v21.receiver = self;
    v21.super_class = HMITorsoprint;
    v13 = [(HMITorsoprint *)&v21 init];
    if (v13)
    {
      v14 = [v10 copy];
      UUID = v13->_UUID;
      v13->_UUID = v14;

      v16 = [v12 copy];
      data = v13->_data;
      v13->_data = v16;

      v13->_lowQuality = a5;
      v13->_unrecognizable = a6;
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
  v4 = [(HMITorsoprint *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:v4];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMITorsoprint *)self data];
  v8 = [v6 initWithName:@"Data" value:v7];
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
    v7 = [(HMITorsoprint *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMITorsoprint *)self data];
      v10 = [v6 data];
      if ([v9 isEqualToData:v10] && (v11 = -[HMITorsoprint lowQuality](self, "lowQuality"), v11 == objc_msgSend(v6, "lowQuality")))
      {
        v13 = [(HMITorsoprint *)self unrecognizable];
        v12 = v13 ^ [v6 unrecognizable] ^ 1;
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
  v2 = [(HMITorsoprint *)self UUID];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMITorsoprint *)self UUID];
  [v6 encodeObject:v4 forKey:@"HMITP.ck.u"];

  v5 = [(HMITorsoprint *)self data];
  [v6 encodeObject:v5 forKey:@"HMITP.ck.d"];

  [v6 encodeBool:-[HMITorsoprint lowQuality](self forKey:{"lowQuality"), @"HMITP.ck.lq"}];
  [v6 encodeBool:-[HMITorsoprint unrecognizable](self forKey:{"unrecognizable"), @"HMITP.ck.ur"}];
}

- (HMITorsoprint)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMITP.ck.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMITP.ck.d"];
  v7 = [v4 containsValueForKey:@"HMITP.ck.lq"];
  v8 = [v4 containsValueForKey:@"HMITP.ck.ur"];
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
    v11 = self;
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
    v11 = -[HMITorsoprint initWithUUID:data:lowQuality:unrecognizable:](self, "initWithUUID:data:lowQuality:unrecognizable:", v5, v6, [v4 decodeBoolForKey:@"HMITP.ck.lq"], objc_msgSend(v4, "decodeBoolForKey:", @"HMITP.ck.ur"));
    v12 = v11;
  }

  return v12;
}

@end