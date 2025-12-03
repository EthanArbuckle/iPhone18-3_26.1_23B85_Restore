@interface HMDCameraSignificantEventFaceClassification
+ (id)faceClassificationWithHMIFaceClassification:(id)classification person:(id)person;
- (BOOL)isEqual:(id)equal;
- (HMDCameraSignificantEventFaceClassification)initWithUUID:(id)d personManagerUUID:(id)iD;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMDCameraSignificantEventFaceClassification

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  uUID = [(HMDCameraSignificantEventFaceClassification *)self UUID];
  v6 = [v4 initWithName:@"UUID" value:uUID];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  personManagerUUID = [(HMDCameraSignificantEventFaceClassification *)self personManagerUUID];
  v9 = [v7 initWithName:@"Person Manager UUID" value:personManagerUUID];
  [array addObject:v9];

  personUUID = [(HMDCameraSignificantEventFaceClassification *)self personUUID];

  if (personUUID)
  {
    v11 = objc_alloc(MEMORY[0x277D0F778]);
    personUUID2 = [(HMDCameraSignificantEventFaceClassification *)self personUUID];
    v13 = [v11 initWithName:@"Person UUID" value:personUUID2];
    [array addObject:v13];
  }

  personName = [(HMDCameraSignificantEventFaceClassification *)self personName];

  if (personName)
  {
    v15 = objc_alloc(MEMORY[0x277D0F778]);
    personName2 = [(HMDCameraSignificantEventFaceClassification *)self personName];
    defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
    v18 = [v15 initWithName:@"Person Name" value:personName2 options:2 formatter:defaultFormatter];
    [array addObject:v18];
  }

  unassociatedFaceCropUUID = [(HMDCameraSignificantEventFaceClassification *)self unassociatedFaceCropUUID];

  if (unassociatedFaceCropUUID)
  {
    v20 = objc_alloc(MEMORY[0x277D0F778]);
    unassociatedFaceCropUUID2 = [(HMDCameraSignificantEventFaceClassification *)self unassociatedFaceCropUUID];
    v22 = [v20 initWithName:@"Unassociated Face Crop UUID" value:unassociatedFaceCropUUID2];
    [array addObject:v22];
  }

  v23 = [array copy];

  return v23;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMDMutableCameraSignificantEventFaceClassification allocWithZone:zone];
  uUID = [(HMDCameraSignificantEventFaceClassification *)self UUID];
  personManagerUUID = [(HMDCameraSignificantEventFaceClassification *)self personManagerUUID];
  v7 = [(HMDCameraSignificantEventFaceClassification *)v4 initWithUUID:uUID personManagerUUID:personManagerUUID];

  personUUID = [(HMDCameraSignificantEventFaceClassification *)self personUUID];
  [(HMDCameraSignificantEventFaceClassification *)v7 setPersonUUID:personUUID];

  personName = [(HMDCameraSignificantEventFaceClassification *)self personName];
  [(HMDCameraSignificantEventFaceClassification *)v7 setPersonName:personName];

  unassociatedFaceCropUUID = [(HMDCameraSignificantEventFaceClassification *)self unassociatedFaceCropUUID];
  [(HMDCameraSignificantEventFaceClassification *)v7 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

  return v7;
}

+ (id)faceClassificationWithHMIFaceClassification:(id)classification person:(id)person
{
  classificationCopy = classification;
  personCopy = person;
  v7 = [HMDMutableCameraSignificantEventFaceClassification alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  sourceUUID = [classificationCopy sourceUUID];
  v10 = [(HMDCameraSignificantEventFaceClassification *)v7 initWithUUID:uUID personManagerUUID:sourceUUID];

  personUUID = [classificationCopy personUUID];
  [(HMDCameraSignificantEventFaceClassification *)v10 setPersonUUID:personUUID];

  name = [personCopy name];

  [(HMDCameraSignificantEventFaceClassification *)v10 setPersonName:name];
  uUID2 = [classificationCopy UUID];

  if (!uUID2)
  {
    faceCrop = [classificationCopy faceCrop];
    uUID3 = [faceCrop UUID];
    [(HMDCameraSignificantEventFaceClassification *)v10 setUnassociatedFaceCropUUID:uUID3];
  }

  v16 = [(HMDMutableCameraSignificantEventFaceClassification *)v10 copy];

  return v16;
}

- (unint64_t)hash
{
  uUID = [(HMDCameraSignificantEventFaceClassification *)self UUID];
  v3 = [uUID hash];

  return v3;
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
    uUID = [(HMDCameraSignificantEventFaceClassification *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:uUID2])
    {
      personManagerUUID = [(HMDCameraSignificantEventFaceClassification *)self personManagerUUID];
      personManagerUUID2 = [v6 personManagerUUID];
      if (![personManagerUUID isEqual:personManagerUUID2])
      {
        goto LABEL_12;
      }

      personUUID = [(HMDCameraSignificantEventFaceClassification *)self personUUID];
      personUUID2 = [v6 personUUID];
      v13 = HMFEqualObjects();

      if (!v13)
      {
        goto LABEL_12;
      }

      personName = [(HMDCameraSignificantEventFaceClassification *)self personName];
      personName2 = [v6 personName];
      v16 = HMFEqualObjects();

      if (v16)
      {
        unassociatedFaceCropUUID = [(HMDCameraSignificantEventFaceClassification *)self unassociatedFaceCropUUID];
        unassociatedFaceCropUUID2 = [v6 unassociatedFaceCropUUID];
        v19 = HMFEqualObjects();
      }

      else
      {
LABEL_12:
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (HMDCameraSignificantEventFaceClassification)initWithUUID:(id)d personManagerUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (iDCopy)
  {
    v9 = iDCopy;
    v17.receiver = self;
    v17.super_class = HMDCameraSignificantEventFaceClassification;
    v10 = [(HMDCameraSignificantEventFaceClassification *)&v17 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_UUID, d);
      objc_storeStrong(&v11->_personManagerUUID, iD);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return [(HMDCameraSignificantEventFaceClassificationDictionaryTransformer *)v13 reverseTransformedValue:v14 error:v15, v16];
  }
}

@end