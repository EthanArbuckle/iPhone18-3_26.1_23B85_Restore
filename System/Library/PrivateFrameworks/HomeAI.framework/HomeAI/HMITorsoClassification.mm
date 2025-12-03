@interface HMITorsoClassification
- (BOOL)isEqual:(id)equal;
- (HMITorsoClassification)initWithCoder:(id)coder;
- (HMITorsoClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD confidence:(double)confidence;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMITorsoClassification

- (HMITorsoClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD confidence:(double)confidence
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HMITorsoClassification;
  v11 = [(HMITorsoClassification *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceUUID, iD);
    objc_storeStrong(&v12->_personUUID, d);
    v12->_confidence = confidence;
  }

  return v12;
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  personUUID = [(HMITorsoClassification *)self personUUID];
  v5 = [v3 initWithName:@"Person UUID" value:personUUID];
  v16[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  sourceUUID = [(HMITorsoClassification *)self sourceUUID];
  v8 = [v6 initWithName:@"Source UUID" value:sourceUUID];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCACA8];
  [(HMITorsoClassification *)self confidence];
  v12 = [v10 stringWithFormat:@"%.4lf", v11];
  v13 = [v9 initWithName:@"Confidence" value:v12];
  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sourceUUID = [(HMITorsoClassification *)self sourceUUID];
      sourceUUID2 = [(HMITorsoClassification *)v5 sourceUUID];
      v8 = HMFEqualObjects();

      if (v8 && ([(HMITorsoClassification *)self personUUID], v9 = objc_claimAutoreleasedReturnValue(), [(HMITorsoClassification *)v5 personUUID], v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
      {
        [(HMITorsoClassification *)self confidence];
        v13 = v12;
        [(HMITorsoClassification *)v5 confidence];
        v15 = vabdd_f64(v13, v14) < 2.22044605e-16;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (HMITorsoClassification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITC.su"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITC.pu"];
  [coderCopy decodeDoubleForKey:@"HMITC.conf"];
  v8 = v7;

  v9 = [(HMITorsoClassification *)self initWithPersonUUID:v6 sourceUUID:v5 confidence:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceUUID = [(HMITorsoClassification *)self sourceUUID];
  [coderCopy encodeObject:sourceUUID forKey:@"HMITC.su"];

  personUUID = [(HMITorsoClassification *)self personUUID];
  [coderCopy encodeObject:personUUID forKey:@"HMITC.pu"];

  [(HMITorsoClassification *)self confidence];
  [coderCopy encodeDouble:@"HMITC.conf" forKey:?];
}

@end