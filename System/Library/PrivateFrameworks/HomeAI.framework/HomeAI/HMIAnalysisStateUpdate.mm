@interface HMIAnalysisStateUpdate
- (BOOL)isEqual:(id)a3;
- (HMIAnalysisStateUpdate)initWithCoder:(id)a3;
- (HMIAnalysisStateUpdate)initWithTorsoAnnotations:(id)a3;
- (HMIAnalysisStateUpdate)initWithTorsoAnnotationsArray:(id)a3;
- (id)attributeDescriptions;
- (id)stateUpdateByMergingStateUpdate:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIAnalysisStateUpdate

- (HMIAnalysisStateUpdate)initWithTorsoAnnotations:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMIAnalysisStateUpdate;
  v5 = [(HMIAnalysisStateUpdate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    torsoAnnotations = v5->_torsoAnnotations;
    v5->_torsoAnnotations = v6;
  }

  return v5;
}

- (HMIAnalysisStateUpdate)initWithTorsoAnnotationsArray:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:a3];
  v5 = [(HMIAnalysisStateUpdate *)self initWithTorsoAnnotations:v4];

  return v5;
}

- (id)stateUpdateByMergingStateUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  v6 = [v4 torsoAnnotations];

  v7 = [v5 setByAddingObjectsFromSet:v6];

  v8 = [[HMIAnalysisStateUpdate alloc] initWithTorsoAnnotations:v7];

  return v8;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  v5 = [v3 initWithName:@"Torso Annotations" value:v4];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
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
    v7 = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
    v8 = [v6 torsoAnnotations];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  [v4 encodeObject:v5 forKey:@"HMIASU.ck.ta"];
}

- (HMIAnalysisStateUpdate)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"HMIASU.ck.ta"];

  if (v8)
  {
    v9 = [(HMIAnalysisStateUpdate *)self initWithTorsoAnnotations:v8];
    v10 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not decode torsoAnnotations", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

@end