@interface HMITorsoAnnotation
- (BOOL)isEqual:(id)a3;
- (HMITorsoAnnotation)initWithCoder:(id)a3;
- (HMITorsoAnnotation)initWithFaceRecognition:(id)a3 torsoprints:(id)a4;
- (HMITorsoAnnotation)initWithFaceRecognition:(id)a3 torsoprints:(id)a4 torsoModelVersion:(id)a5;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMITorsoAnnotation

- (HMITorsoAnnotation)initWithFaceRecognition:(id)a3 torsoprints:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMITorsoprinter currentModelUUID];
  v9 = [(HMITorsoAnnotation *)self initWithFaceRecognition:v7 torsoprints:v6 torsoModelVersion:v8];

  return v9;
}

- (HMITorsoAnnotation)initWithFaceRecognition:(id)a3 torsoprints:(id)a4 torsoModelVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [HMITorsoAnnotation initWithFaceRecognition:torsoprints:torsoModelVersion:];
    goto LABEL_7;
  }

  if (!v10)
  {
LABEL_7:
    v16 = [HMITorsoAnnotation initWithFaceRecognition:torsoprints:torsoModelVersion:];
    return [(HMITorsoAnnotation *)v16 isEqual:v17, v18];
  }

  v12 = v11;
  v19.receiver = self;
  v19.super_class = HMITorsoAnnotation;
  v13 = [(HMITorsoAnnotation *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_faceRecognition, a3);
    objc_storeStrong(&v14->_torsoprints, a4);
    objc_storeStrong(&v14->_torsoModelVersion, a5);
  }

  return v14;
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
    v7 = [(HMITorsoAnnotation *)self faceRecognition];
    v8 = [v6 faceRecognition];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMITorsoAnnotation *)self torsoprints];
      v10 = [v6 torsoprints];
      if ([v9 isEqualToArray:v10])
      {
        v11 = [(HMITorsoAnnotation *)self torsoModelVersion];
        v12 = [v6 torsoModelVersion];
        v13 = [v11 isEqual:v12];
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
  v3 = [(HMITorsoAnnotation *)self torsoprints];
  v4 = [v3 hash];
  v5 = [(HMITorsoAnnotation *)self faceRecognition];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMITorsoAnnotation *)self faceRecognition];
  [v4 encodeObject:v5 forKey:@"HMITA.ck.fr"];

  v6 = [(HMITorsoAnnotation *)self torsoprints];
  [v4 encodeObject:v6 forKey:@"HMITA.ck.tps"];

  v7 = [(HMITorsoAnnotation *)self torsoModelVersion];
  [v4 encodeObject:v7 forKey:@"HMITA.ck.tmv"];
}

- (HMITorsoAnnotation)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMITA.ck.fr"];
  v6 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HMITA.ck.tps"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMITA.ck.tmv"];
  v11 = v10;
  if (v5 && v9 && v10)
  {
    v12 = [(HMITorsoAnnotation *)self initWithFaceRecognition:v5 torsoprints:v9 torsoModelVersion:v10];
    v13 = v12;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
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
  v4 = [(HMITorsoAnnotation *)self faceRecognition];
  v5 = [v3 initWithName:@"Face Recognition" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMITorsoAnnotation *)self torsoprints];
  v8 = [v6 initWithName:@"Torsoprints" value:v7];
  v14[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMITorsoAnnotation *)self torsoModelVersion];
  v11 = [v9 initWithName:@"TorsoModelVersion" value:v10];
  v14[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  return v12;
}

@end