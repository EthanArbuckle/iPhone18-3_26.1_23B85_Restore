@interface HMIAnalysisStateUpdate
- (BOOL)isEqual:(id)equal;
- (HMIAnalysisStateUpdate)initWithCoder:(id)coder;
- (HMIAnalysisStateUpdate)initWithTorsoAnnotations:(id)annotations;
- (HMIAnalysisStateUpdate)initWithTorsoAnnotationsArray:(id)array;
- (id)attributeDescriptions;
- (id)stateUpdateByMergingStateUpdate:(id)update;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIAnalysisStateUpdate

- (HMIAnalysisStateUpdate)initWithTorsoAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  v9.receiver = self;
  v9.super_class = HMIAnalysisStateUpdate;
  v5 = [(HMIAnalysisStateUpdate *)&v9 init];
  if (v5)
  {
    v6 = [annotationsCopy copy];
    torsoAnnotations = v5->_torsoAnnotations;
    v5->_torsoAnnotations = v6;
  }

  return v5;
}

- (HMIAnalysisStateUpdate)initWithTorsoAnnotationsArray:(id)array
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:array];
  v5 = [(HMIAnalysisStateUpdate *)self initWithTorsoAnnotations:v4];

  return v5;
}

- (id)stateUpdateByMergingStateUpdate:(id)update
{
  updateCopy = update;
  torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  torsoAnnotations2 = [updateCopy torsoAnnotations];

  v7 = [torsoAnnotations setByAddingObjectsFromSet:torsoAnnotations2];

  v8 = [[HMIAnalysisStateUpdate alloc] initWithTorsoAnnotations:v7];

  return v8;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  v5 = [v3 initWithName:@"Torso Annotations" value:torsoAnnotations];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
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
    torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
    torsoAnnotations2 = [v6 torsoAnnotations];
    v9 = [torsoAnnotations isEqual:torsoAnnotations2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  v3 = [torsoAnnotations hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  torsoAnnotations = [(HMIAnalysisStateUpdate *)self torsoAnnotations];
  [coderCopy encodeObject:torsoAnnotations forKey:@"HMIASU.ck.ta"];
}

- (HMIAnalysisStateUpdate)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"HMIASU.ck.ta"];

  if (v8)
  {
    selfCopy = [(HMIAnalysisStateUpdate *)self initWithTorsoAnnotations:v8];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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