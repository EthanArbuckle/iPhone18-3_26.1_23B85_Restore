@interface HMIFaceRecognition
- (BOOL)isEqual:(id)a3;
- (HMIFaceRecognition)initWithCoder:(id)a3;
- (HMIFaceRecognition)initWithFaceCrop:(id)a3 faceprint:(id)a4 classifications:(id)a5;
- (HMIFaceRecognition)initWithFaceCrop:(id)a3 faceprint:(id)a4 classifications:(id)a5 predictedLinkedEntityUUIDs:(id)a6;
- (HMIFaceRecognition)initWithFaceCrop:(id)a3 faceprint:(id)a4 classifications:(id)a5 predictedLinkedEntityUUIDs:(id)a6 faceQualityScore:(double)a7 sessionEntityAssignment:(int64_t)a8 sessionEntityUUID:(id)a9;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIFaceRecognition

- (HMIFaceRecognition)initWithFaceCrop:(id)a3 faceprint:(id)a4 classifications:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 anyObject];
  if (v11)
  {
    v12 = [v8 anyObject];
    v13 = [v12 sessionEntityUUID];
  }

  else
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
  }

  v14 = [(HMIFaceRecognition *)self initWithFaceCrop:v10 faceprint:v9 classifications:v8 predictedLinkedEntityUUIDs:0 faceQualityScore:0 sessionEntityAssignment:v13 sessionEntityUUID:-1.0];
  return v14;
}

- (HMIFaceRecognition)initWithFaceCrop:(id)a3 faceprint:(id)a4 classifications:(id)a5 predictedLinkedEntityUUIDs:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 anyObject];
  if (v14)
  {
    v15 = [v10 anyObject];
    v16 = [v15 sessionEntityUUID];
  }

  else
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
  }

  v17 = [(HMIFaceRecognition *)self initWithFaceCrop:v13 faceprint:v12 classifications:v10 predictedLinkedEntityUUIDs:v11 faceQualityScore:0 sessionEntityAssignment:v16 sessionEntityUUID:-1.0];
  return v17;
}

- (HMIFaceRecognition)initWithFaceCrop:(id)a3 faceprint:(id)a4 classifications:(id)a5 predictedLinkedEntityUUIDs:(id)a6 faceQualityScore:(double)a7 sessionEntityAssignment:(int64_t)a8 sessionEntityUUID:(id)a9
{
  v24 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v25.receiver = self;
  v25.super_class = HMIFaceRecognition;
  v20 = [(HMIFaceRecognition *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_faceCrop, a3);
    objc_storeStrong(&v21->_faceprint, a4);
    objc_storeStrong(&v21->_classifications, a5);
    objc_storeStrong(&v21->_predictedLinkedEntityUUIDs, a6);
    v21->_faceQualityScore = a7;
    v21->_sessionEntityAssignment = a8;
    objc_storeStrong(&v21->_sessionEntityUUID, a9);
  }

  return v21;
}

- (id)attributeDescriptions
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [(HMIFaceRecognition *)self faceCrop];
  v21 = [v22 UUID];
  v20 = [v3 initWithName:@"Face Crop UUID" value:v21];
  v23[0] = v20;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMIFaceRecognition *)self faceprint];
  v6 = [v5 UUID];
  v7 = [v4 initWithName:@"Faceprint UUID" value:v6];
  v23[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMIFaceRecognition *)self classifications];
  v10 = [v8 initWithName:@"Face Classifications" value:v9];
  v23[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCABB0];
  [(HMIFaceRecognition *)self faceQualityScore];
  v13 = [v12 numberWithDouble:?];
  v14 = [v11 initWithName:@"Face Quality Score" value:v13];
  v23[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(HMIFaceRecognition *)self sessionEntityUUID];
  v17 = [v15 initWithName:@"Session Entity UUID" value:v16];
  v23[4] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  return v18;
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
    v7 = [(HMIFaceRecognition *)self classifications];
    v8 = [v6 classifications];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMIFaceRecognition *)self faceCrop];
      v10 = [v6 faceCrop];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMIFaceRecognition *)self faceprint];
        v12 = [v6 faceprint];
        if ([v11 isEqual:v12] && (v13 = -[HMIFaceRecognition sessionEntityAssignment](self, "sessionEntityAssignment"), v13 == objc_msgSend(v6, "sessionEntityAssignment")) && (-[HMIFaceRecognition faceQualityScore](self, "faceQualityScore"), v15 = v14, objc_msgSend(v6, "faceQualityScore"), v15 == v16))
        {
          v20 = [(HMIFaceRecognition *)self sessionEntityUUID];
          v17 = [v6 sessionEntityUUID];
          v18 = [v20 isEqual:v17];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(HMIFaceRecognition *)self faceCrop];
  v4 = [v3 hash];
  v5 = [(HMIFaceRecognition *)self faceprint];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMIFaceRecognition *)self classifications];
  [v4 encodeObject:v5 forKey:@"HMIFR.c"];

  v6 = [(HMIFaceRecognition *)self faceCrop];
  [v4 encodeObject:v6 forKey:@"HMIFR.fc"];

  v7 = [(HMIFaceRecognition *)self faceprint];
  [v4 encodeObject:v7 forKey:@"HMIFR.fp"];

  [v4 encodeInteger:-[HMIFaceRecognition sessionEntityAssignment](self forKey:{"sessionEntityAssignment"), @"HMIFR.sea"}];
  [(HMIFaceRecognition *)self faceQualityScore];
  [v4 encodeDouble:@"HMIFR.fqs" forKey:?];
  v8 = [(HMIFaceRecognition *)self sessionEntityUUID];
  [v4 encodeObject:v8 forKey:@"HMIFR.seu"];

  v9 = [(HMIFaceRecognition *)self predictedLinkedEntityUUIDs];
  [v4 encodeObject:v9 forKey:@"HMIFR.leus"];
}

- (HMIFaceRecognition)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFR.fc"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFR.fp"];
  v7 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HMIFR.c"];

  v11 = [v4 decodeIntegerForKey:@"HMIFR.sea"];
  [v4 decodeDoubleForKey:@"HMIFR.fqs"];
  v13 = v12;
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFR.seu"];
  v15 = MEMORY[0x277CBEB98];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"HMIFR.leus"];

  v19 = [(HMIFaceRecognition *)self initWithFaceCrop:v5 faceprint:v6 classifications:v10 predictedLinkedEntityUUIDs:v18 faceQualityScore:v11 sessionEntityAssignment:v14 sessionEntityUUID:v13];
  return v19;
}

@end