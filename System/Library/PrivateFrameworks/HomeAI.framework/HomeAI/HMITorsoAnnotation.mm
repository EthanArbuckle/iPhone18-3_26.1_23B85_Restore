@interface HMITorsoAnnotation
- (BOOL)isEqual:(id)equal;
- (HMITorsoAnnotation)initWithCoder:(id)coder;
- (HMITorsoAnnotation)initWithFaceRecognition:(id)recognition torsoprints:(id)torsoprints;
- (HMITorsoAnnotation)initWithFaceRecognition:(id)recognition torsoprints:(id)torsoprints torsoModelVersion:(id)version;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMITorsoAnnotation

- (HMITorsoAnnotation)initWithFaceRecognition:(id)recognition torsoprints:(id)torsoprints
{
  torsoprintsCopy = torsoprints;
  recognitionCopy = recognition;
  v8 = +[HMITorsoprinter currentModelUUID];
  v9 = [(HMITorsoAnnotation *)self initWithFaceRecognition:recognitionCopy torsoprints:torsoprintsCopy torsoModelVersion:v8];

  return v9;
}

- (HMITorsoAnnotation)initWithFaceRecognition:(id)recognition torsoprints:(id)torsoprints torsoModelVersion:(id)version
{
  recognitionCopy = recognition;
  torsoprintsCopy = torsoprints;
  versionCopy = version;
  if (!recognitionCopy)
  {
    [HMITorsoAnnotation initWithFaceRecognition:torsoprints:torsoModelVersion:];
    goto LABEL_7;
  }

  if (!torsoprintsCopy)
  {
LABEL_7:
    v16 = [HMITorsoAnnotation initWithFaceRecognition:torsoprints:torsoModelVersion:];
    return [(HMITorsoAnnotation *)v16 isEqual:v17, v18];
  }

  v12 = versionCopy;
  v19.receiver = self;
  v19.super_class = HMITorsoAnnotation;
  v13 = [(HMITorsoAnnotation *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_faceRecognition, recognition);
    objc_storeStrong(&v14->_torsoprints, torsoprints);
    objc_storeStrong(&v14->_torsoModelVersion, version);
  }

  return v14;
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
    faceRecognition = [(HMITorsoAnnotation *)self faceRecognition];
    faceRecognition2 = [v6 faceRecognition];
    if ([faceRecognition isEqual:faceRecognition2])
    {
      torsoprints = [(HMITorsoAnnotation *)self torsoprints];
      torsoprints2 = [v6 torsoprints];
      if ([torsoprints isEqualToArray:torsoprints2])
      {
        torsoModelVersion = [(HMITorsoAnnotation *)self torsoModelVersion];
        torsoModelVersion2 = [v6 torsoModelVersion];
        v13 = [torsoModelVersion isEqual:torsoModelVersion2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  torsoprints = [(HMITorsoAnnotation *)self torsoprints];
  v4 = [torsoprints hash];
  faceRecognition = [(HMITorsoAnnotation *)self faceRecognition];
  v6 = [faceRecognition hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  faceRecognition = [(HMITorsoAnnotation *)self faceRecognition];
  [coderCopy encodeObject:faceRecognition forKey:@"HMITA.ck.fr"];

  torsoprints = [(HMITorsoAnnotation *)self torsoprints];
  [coderCopy encodeObject:torsoprints forKey:@"HMITA.ck.tps"];

  torsoModelVersion = [(HMITorsoAnnotation *)self torsoModelVersion];
  [coderCopy encodeObject:torsoModelVersion forKey:@"HMITA.ck.tmv"];
}

- (HMITorsoAnnotation)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITA.ck.fr"];
  v6 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HMITA.ck.tps"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMITA.ck.tmv"];
  v11 = v10;
  if (v5 && v9 && v10)
  {
    selfCopy = [(HMITorsoAnnotation *)self initWithFaceRecognition:v5 torsoprints:v9 torsoModelVersion:v10];
    v13 = selfCopy;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138544130;
      v19 = v16;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded faceRecognition: %@ torsoprints: %@ torsoModelVersion: %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
}

- (id)attributeDescriptions
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  faceRecognition = [(HMITorsoAnnotation *)self faceRecognition];
  v5 = [v3 initWithName:@"Face Recognition" value:faceRecognition];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  torsoprints = [(HMITorsoAnnotation *)self torsoprints];
  v8 = [v6 initWithName:@"Torsoprints" value:torsoprints];
  v14[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  torsoModelVersion = [(HMITorsoAnnotation *)self torsoModelVersion];
  v11 = [v9 initWithName:@"TorsoModelVersion" value:torsoModelVersion];
  v14[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  return v12;
}

@end