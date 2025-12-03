@interface HMIFaceRecognition
- (BOOL)isEqual:(id)equal;
- (HMIFaceRecognition)initWithCoder:(id)coder;
- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications;
- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications predictedLinkedEntityUUIDs:(id)ds;
- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications predictedLinkedEntityUUIDs:(id)ds faceQualityScore:(double)score sessionEntityAssignment:(int64_t)assignment sessionEntityUUID:(id)d;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIFaceRecognition

- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications
{
  classificationsCopy = classifications;
  faceprintCopy = faceprint;
  cropCopy = crop;
  anyObject = [classificationsCopy anyObject];
  if (anyObject)
  {
    anyObject2 = [classificationsCopy anyObject];
    sessionEntityUUID = [anyObject2 sessionEntityUUID];
  }

  else
  {
    sessionEntityUUID = [MEMORY[0x277CCAD78] UUID];
  }

  v14 = [(HMIFaceRecognition *)self initWithFaceCrop:cropCopy faceprint:faceprintCopy classifications:classificationsCopy predictedLinkedEntityUUIDs:0 faceQualityScore:0 sessionEntityAssignment:sessionEntityUUID sessionEntityUUID:-1.0];
  return v14;
}

- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications predictedLinkedEntityUUIDs:(id)ds
{
  classificationsCopy = classifications;
  dsCopy = ds;
  faceprintCopy = faceprint;
  cropCopy = crop;
  anyObject = [classificationsCopy anyObject];
  if (anyObject)
  {
    anyObject2 = [classificationsCopy anyObject];
    sessionEntityUUID = [anyObject2 sessionEntityUUID];
  }

  else
  {
    sessionEntityUUID = [MEMORY[0x277CCAD78] UUID];
  }

  v17 = [(HMIFaceRecognition *)self initWithFaceCrop:cropCopy faceprint:faceprintCopy classifications:classificationsCopy predictedLinkedEntityUUIDs:dsCopy faceQualityScore:0 sessionEntityAssignment:sessionEntityUUID sessionEntityUUID:-1.0];
  return v17;
}

- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications predictedLinkedEntityUUIDs:(id)ds faceQualityScore:(double)score sessionEntityAssignment:(int64_t)assignment sessionEntityUUID:(id)d
{
  cropCopy = crop;
  faceprintCopy = faceprint;
  classificationsCopy = classifications;
  dsCopy = ds;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = HMIFaceRecognition;
  v20 = [(HMIFaceRecognition *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_faceCrop, crop);
    objc_storeStrong(&v21->_faceprint, faceprint);
    objc_storeStrong(&v21->_classifications, classifications);
    objc_storeStrong(&v21->_predictedLinkedEntityUUIDs, ds);
    v21->_faceQualityScore = score;
    v21->_sessionEntityAssignment = assignment;
    objc_storeStrong(&v21->_sessionEntityUUID, d);
  }

  return v21;
}

- (id)attributeDescriptions
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  faceCrop = [(HMIFaceRecognition *)self faceCrop];
  uUID = [faceCrop UUID];
  v20 = [v3 initWithName:@"Face Crop UUID" value:uUID];
  v23[0] = v20;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  faceprint = [(HMIFaceRecognition *)self faceprint];
  uUID2 = [faceprint UUID];
  v7 = [v4 initWithName:@"Faceprint UUID" value:uUID2];
  v23[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  classifications = [(HMIFaceRecognition *)self classifications];
  v10 = [v8 initWithName:@"Face Classifications" value:classifications];
  v23[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCABB0];
  [(HMIFaceRecognition *)self faceQualityScore];
  v13 = [v12 numberWithDouble:?];
  v14 = [v11 initWithName:@"Face Quality Score" value:v13];
  v23[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  sessionEntityUUID = [(HMIFaceRecognition *)self sessionEntityUUID];
  v17 = [v15 initWithName:@"Session Entity UUID" value:sessionEntityUUID];
  v23[4] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  return v18;
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
    classifications = [(HMIFaceRecognition *)self classifications];
    classifications2 = [v6 classifications];
    if ([classifications isEqual:classifications2])
    {
      faceCrop = [(HMIFaceRecognition *)self faceCrop];
      faceCrop2 = [v6 faceCrop];
      if ([faceCrop isEqual:faceCrop2])
      {
        faceprint = [(HMIFaceRecognition *)self faceprint];
        faceprint2 = [v6 faceprint];
        if ([faceprint isEqual:faceprint2] && (v13 = -[HMIFaceRecognition sessionEntityAssignment](self, "sessionEntityAssignment"), v13 == objc_msgSend(v6, "sessionEntityAssignment")) && (-[HMIFaceRecognition faceQualityScore](self, "faceQualityScore"), v15 = v14, objc_msgSend(v6, "faceQualityScore"), v15 == v16))
        {
          sessionEntityUUID = [(HMIFaceRecognition *)self sessionEntityUUID];
          sessionEntityUUID2 = [v6 sessionEntityUUID];
          v18 = [sessionEntityUUID isEqual:sessionEntityUUID2];
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
  faceCrop = [(HMIFaceRecognition *)self faceCrop];
  v4 = [faceCrop hash];
  faceprint = [(HMIFaceRecognition *)self faceprint];
  v6 = [faceprint hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  classifications = [(HMIFaceRecognition *)self classifications];
  [coderCopy encodeObject:classifications forKey:@"HMIFR.c"];

  faceCrop = [(HMIFaceRecognition *)self faceCrop];
  [coderCopy encodeObject:faceCrop forKey:@"HMIFR.fc"];

  faceprint = [(HMIFaceRecognition *)self faceprint];
  [coderCopy encodeObject:faceprint forKey:@"HMIFR.fp"];

  [coderCopy encodeInteger:-[HMIFaceRecognition sessionEntityAssignment](self forKey:{"sessionEntityAssignment"), @"HMIFR.sea"}];
  [(HMIFaceRecognition *)self faceQualityScore];
  [coderCopy encodeDouble:@"HMIFR.fqs" forKey:?];
  sessionEntityUUID = [(HMIFaceRecognition *)self sessionEntityUUID];
  [coderCopy encodeObject:sessionEntityUUID forKey:@"HMIFR.seu"];

  predictedLinkedEntityUUIDs = [(HMIFaceRecognition *)self predictedLinkedEntityUUIDs];
  [coderCopy encodeObject:predictedLinkedEntityUUIDs forKey:@"HMIFR.leus"];
}

- (HMIFaceRecognition)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFR.fc"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFR.fp"];
  v7 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HMIFR.c"];

  v11 = [coderCopy decodeIntegerForKey:@"HMIFR.sea"];
  [coderCopy decodeDoubleForKey:@"HMIFR.fqs"];
  v13 = v12;
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFR.seu"];
  v15 = MEMORY[0x277CBEB98];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"HMIFR.leus"];

  v19 = [(HMIFaceRecognition *)self initWithFaceCrop:v5 faceprint:v6 classifications:v10 predictedLinkedEntityUUIDs:v18 faceQualityScore:v11 sessionEntityAssignment:v14 sessionEntityUUID:v13];
  return v19;
}

@end