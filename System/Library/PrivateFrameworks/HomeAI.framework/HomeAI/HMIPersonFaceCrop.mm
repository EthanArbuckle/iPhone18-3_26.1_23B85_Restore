@interface HMIPersonFaceCrop
- (BOOL)isEqual:(id)equal;
- (HMIPersonFaceCrop)initWithCoder:(id)coder;
- (HMIPersonFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personUUID:(id)iD source:(int64_t)source;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIPersonFaceCrop

- (HMIPersonFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personUUID:(id)iD source:(int64_t)source
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  dCopy = d;
  representationCopy = representation;
  createdCopy = created;
  iDCopy = iD;
  if (!dCopy)
  {
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_9;
  }

  if (!representationCopy)
  {
LABEL_9:
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_10;
  }

  if (!createdCopy)
  {
LABEL_10:
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_11;
  }

  v21 = iDCopy;
  if (!iDCopy)
  {
LABEL_11:
    v26 = [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    return [(HMIPersonFaceCrop *)v26 attributeDescriptions];
  }

  v28.receiver = self;
  v28.super_class = HMIPersonFaceCrop;
  height = [(HMIFaceCrop *)&v28 initWithUUID:dCopy dataRepresentation:representationCopy dateCreated:createdCopy faceBoundingBox:x, y, width, height];
  if (height)
  {
    v23 = [v21 copy];
    personUUID = height->_personUUID;
    height->_personUUID = v23;

    height->_source = source;
  }

  return height;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HMIPersonFaceCrop;
  attributeDescriptions = [(HMIFaceCrop *)&v13 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  personUUID = [(HMIPersonFaceCrop *)self personUUID];
  v6 = [v4 initWithName:@"Person UUID" value:personUUID];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = HMIPersonFaceCropSourceAsString([(HMIPersonFaceCrop *)self source]);
  v9 = [v7 initWithName:@"Source" value:v8];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  return v11;
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
  if (v6 && (v12.receiver = self, v12.super_class = HMIPersonFaceCrop, [(HMIFaceCrop *)&v12 isEqual:v6]))
  {
    personUUID = [(HMIPersonFaceCrop *)self personUUID];
    personUUID2 = [v6 personUUID];
    if ([personUUID isEqual:personUUID2])
    {
      source = [(HMIPersonFaceCrop *)self source];
      v10 = source == [v6 source];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMIPersonFaceCrop;
  coderCopy = coder;
  [(HMIFaceCrop *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMIPersonFaceCrop *)self personUUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMIFC.ck.pu"];

  [coderCopy encodeInteger:-[HMIPersonFaceCrop source](self forKey:{"source"), @"HMIFC.ck.so"}];
}

- (HMIPersonFaceCrop)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMIFaceCrop alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.ck.pu"];
    if (v6)
    {
      if ([coderCopy containsValueForKey:@"HMIFC.ck.so"])
      {
        v7 = [coderCopy decodeIntegerForKey:@"HMIFC.ck.so"];
      }

      else
      {
        v7 = 0;
      }

      uUID = [(HMIFaceCrop *)v5 UUID];
      dataRepresentation = [(HMIFaceCrop *)v5 dataRepresentation];
      dateCreated = [(HMIFaceCrop *)v5 dateCreated];
      [(HMIFaceCrop *)v5 faceBoundingBox];
      self = [(HMIPersonFaceCrop *)self initWithUUID:uUID dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:v6 personUUID:v7 source:?];

      selfCopy = self;
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
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end