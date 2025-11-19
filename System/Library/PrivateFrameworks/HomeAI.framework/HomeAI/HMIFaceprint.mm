@interface HMIFaceprint
+ (id)sentinelFaceprintWithUUID:(id)a3 modelUUID:(id)a4 faceCropUUID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSentinelFaceprint;
- (HMIFaceprint)initWithCoder:(id)a3;
- (HMIFaceprint)initWithUUID:(id)a3 data:(id)a4 modelUUID:(id)a5 faceCropUUID:(id)a6;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIFaceprint

+ (id)sentinelFaceprintWithUUID:(id)a3 modelUUID:(id)a4 faceCropUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [HMIFaceprint alloc];
  v11 = [MEMORY[0x277CBEA90] data];
  v12 = [(HMIFaceprint *)v10 initWithUUID:v9 data:v11 modelUUID:v8 faceCropUUID:v7];

  return v12;
}

- (HMIFaceprint)initWithUUID:(id)a3 data:(id)a4 modelUUID:(id)a5 faceCropUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    [HMIFaceprint initWithUUID:data:modelUUID:faceCropUUID:];
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    [HMIFaceprint initWithUUID:data:modelUUID:faceCropUUID:];
    goto LABEL_11;
  }

  v14 = v13;
  if (!v13)
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
    v16 = [v10 copy];
    UUID = v15->_UUID;
    v15->_UUID = v16;

    v18 = [v11 copy];
    data = v15->_data;
    v15->_data = v18;

    v20 = [v12 copy];
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
  v4 = [(HMIFaceprint *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:v4];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMIFaceprint *)self data];
  v8 = [v6 initWithName:@"Data" value:v7];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMIFaceprint *)self modelUUID];
  v11 = [v9 initWithName:@"Model UUID" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMIFaceprint *)self faceCropUUID];
  v14 = [v12 initWithName:@"Face Crop UUID" value:v13];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

- (BOOL)isSentinelFaceprint
{
  v2 = [(HMIFaceprint *)self data];
  v3 = [MEMORY[0x277CBEA90] data];
  v4 = [v2 isEqualToData:v3];

  return v4;
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
    v7 = [(HMIFaceprint *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMIFaceprint *)self data];
      v10 = [v6 data];
      if ([v9 isEqualToData:v10])
      {
        v11 = [(HMIFaceprint *)self modelUUID];
        v12 = [v6 modelUUID];
        if ([v11 isEqual:v12])
        {
          v16 = [(HMIFaceprint *)self faceCropUUID];
          v13 = [v6 faceCropUUID];
          v14 = [v16 isEqual:v13];
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
  v2 = [(HMIFaceprint *)self UUID];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMIFaceprint *)self UUID];
  [v4 encodeObject:v5 forKey:@"HMIFP.ck.u"];

  v6 = [(HMIFaceprint *)self data];
  [v4 encodeObject:v6 forKey:@"HMIFP.ck.d"];

  v7 = [(HMIFaceprint *)self modelUUID];
  [v4 encodeObject:v7 forKey:@"HMIFP.ck.mu"];

  v8 = [(HMIFaceprint *)self faceCropUUID];
  [v4 encodeObject:v8 forKey:@"HMIFP.ck.fcu"];
}

- (HMIFaceprint)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFP.ck.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFP.ck.d"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFP.ck.mu"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFP.ck.fcu"];
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
    v16 = self;
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
    v16 = [(HMIFaceprint *)self initWithUUID:v5 data:v6 modelUUID:v7 faceCropUUID:v8];
    v17 = v16;
  }

  return v17;
}

@end