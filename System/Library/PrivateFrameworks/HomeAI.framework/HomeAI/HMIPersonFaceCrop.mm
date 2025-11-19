@interface HMIPersonFaceCrop
- (BOOL)isEqual:(id)a3;
- (HMIPersonFaceCrop)initWithCoder:(id)a3;
- (HMIPersonFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6 personUUID:(id)a7 source:(int64_t)a8;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIPersonFaceCrop

- (HMIPersonFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6 personUUID:(id)a7 source:(int64_t)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  if (!v17)
  {
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_9;
  }

  if (!v18)
  {
LABEL_9:
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_10;
  }

  if (!v19)
  {
LABEL_10:
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_11;
  }

  v21 = v20;
  if (!v20)
  {
LABEL_11:
    v26 = [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    return [(HMIPersonFaceCrop *)v26 attributeDescriptions];
  }

  v28.receiver = self;
  v28.super_class = HMIPersonFaceCrop;
  v22 = [(HMIFaceCrop *)&v28 initWithUUID:v17 dataRepresentation:v18 dateCreated:v19 faceBoundingBox:x, y, width, height];
  if (v22)
  {
    v23 = [v21 copy];
    personUUID = v22->_personUUID;
    v22->_personUUID = v23;

    v22->_source = a8;
  }

  return v22;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HMIPersonFaceCrop;
  v3 = [(HMIFaceCrop *)&v13 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMIPersonFaceCrop *)self personUUID];
  v6 = [v4 initWithName:@"Person UUID" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = HMIPersonFaceCropSourceAsString([(HMIPersonFaceCrop *)self source]);
  v9 = [v7 initWithName:@"Source" value:v8];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

  return v11;
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
  if (v6 && (v12.receiver = self, v12.super_class = HMIPersonFaceCrop, [(HMIFaceCrop *)&v12 isEqual:v6]))
  {
    v7 = [(HMIPersonFaceCrop *)self personUUID];
    v8 = [v6 personUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMIPersonFaceCrop *)self source];
      v10 = v9 == [v6 source];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMIPersonFaceCrop;
  v4 = a3;
  [(HMIFaceCrop *)&v6 encodeWithCoder:v4];
  v5 = [(HMIPersonFaceCrop *)self personUUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HMIFC.ck.pu"];

  [v4 encodeInteger:-[HMIPersonFaceCrop source](self forKey:{"source"), @"HMIFC.ck.so"}];
}

- (HMIPersonFaceCrop)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMIFaceCrop alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.ck.pu"];
    if (v6)
    {
      if ([v4 containsValueForKey:@"HMIFC.ck.so"])
      {
        v7 = [v4 decodeIntegerForKey:@"HMIFC.ck.so"];
      }

      else
      {
        v7 = 0;
      }

      v12 = [(HMIFaceCrop *)v5 UUID];
      v13 = [(HMIFaceCrop *)v5 dataRepresentation];
      v14 = [(HMIFaceCrop *)v5 dateCreated];
      [(HMIFaceCrop *)v5 faceBoundingBox];
      self = [(HMIPersonFaceCrop *)self initWithUUID:v12 dataRepresentation:v13 dateCreated:v14 faceBoundingBox:v6 personUUID:v7 source:?];

      v8 = self;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      self = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = 0;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded personUUID: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end