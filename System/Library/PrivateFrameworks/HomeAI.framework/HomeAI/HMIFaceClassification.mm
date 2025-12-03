@interface HMIFaceClassification
- (BOOL)isEqual:(id)equal;
- (CGRect)faceBoundingBox;
- (HMIFaceClassification)initWithCoder:(id)coder;
- (HMIFaceClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD confidence:(double)confidence fromTorsoClassification:(BOOL)classification familiarity:(int64_t)familiarity;
- (HMIFaceClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID confidence:(double)confidence familiarity:(int64_t)familiarity;
- (HMIFaceClassification)initWithUUID:(id)d name:(id)name personsModelIdentifier:(id)identifier faceBoundingBox:(CGRect)box;
- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD faceBoundingBox:(CGRect)box;
- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID faceCrop:(id)crop faceprint:(id)faceprint confidence:(double)confidence familiarity:(int64_t)familiarity;
- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID faceCrop:(id)crop faceprint:(id)faceprint confidence:(double)confidence fromTorsoClassification:(BOOL)classification familiarity:(int64_t)self0;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIFaceClassification

- (HMIFaceClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD confidence:(double)confidence fromTorsoClassification:(BOOL)classification familiarity:(int64_t)familiarity
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = HMIFaceClassification;
  v15 = [(HMIFaceClassification *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_personUUID, d);
    objc_storeStrong(&v16->_sourceUUID, iD);
    v16->_confidence = confidence;
    v16->_fromTorsoClassification = classification;
    v16->_familiarity = familiarity;
  }

  return v16;
}

- (HMIFaceClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID confidence:(double)confidence familiarity:(int64_t)familiarity
{
  uIDCopy = uID;
  v14 = [(HMIFaceClassification *)self initWithPersonUUID:d sourceUUID:iD confidence:0 fromTorsoClassification:familiarity familiarity:confidence];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sessionEntityUUID, uID);
  }

  return v15;
}

- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID faceCrop:(id)crop faceprint:(id)faceprint confidence:(double)confidence familiarity:(int64_t)familiarity
{
  cropCopy = crop;
  faceprintCopy = faceprint;
  v19 = [(HMIFaceClassification *)self initWithPersonUUID:d sourceUUID:iD sessionEntityUUID:uID confidence:familiarity familiarity:confidence];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_faceCrop, crop);
    objc_storeStrong(&v20->_faceprint, faceprint);
  }

  return v20;
}

- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID faceCrop:(id)crop faceprint:(id)faceprint confidence:(double)confidence fromTorsoClassification:(BOOL)classification familiarity:(int64_t)self0
{
  result = [(HMIFaceClassification *)self initWithUUID:d sourceUUID:iD sessionEntityUUID:uID faceCrop:crop faceprint:faceprint confidence:familiarity familiarity:confidence];
  if (result)
  {
    result->_fromTorsoClassification = classification;
  }

  return result;
}

- (HMIFaceClassification)initWithUUID:(id)d name:(id)name personsModelIdentifier:(id)identifier faceBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v11 = MEMORY[0x277CCAD78];
  dCopy = d;
  uUID = [v11 UUID];
  height = [(HMIFaceClassification *)self initWithUUID:dCopy sourceUUID:uUID faceBoundingBox:x, y, width, height];

  return height;
}

- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD faceBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  iDCopy = iD;
  dCopy = d;
  v13 = [HMIFaceCrop alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  data = [MEMORY[0x277CBEA90] data];
  date = [MEMORY[0x277CBEAA8] date];
  v17 = [(HMIFaceCrop *)v13 initWithUUID:uUID dataRepresentation:data dateCreated:date faceBoundingBox:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  v18 = [HMIFaceprint alloc];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  data2 = [MEMORY[0x277CBEA90] data];
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  uUID4 = [(HMIFaceCrop *)v17 UUID];
  v23 = [(HMIFaceprint *)v18 initWithUUID:uUID2 data:data2 modelUUID:uUID3 faceCropUUID:uUID4];

  uUID5 = [MEMORY[0x277CCAD78] UUID];
  v25 = [(HMIFaceClassification *)self initWithUUID:dCopy sourceUUID:iDCopy sessionEntityUUID:uUID5 faceBoundingBox:v17 facecrop:v23 faceprint:x confidence:y, width, height, 0.0];

  return v25;
}

- (id)attributeDescriptions
{
  v34[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  personUUID = [(HMIFaceClassification *)self personUUID];
  v32 = [v3 initWithName:@"Person UUID" value:personUUID];
  v34[0] = v32;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  sourceUUID = [(HMIFaceClassification *)self sourceUUID];
  v30 = [v4 initWithName:@"Source UUID" value:sourceUUID];
  v34[1] = v30;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  sessionEntityUUID = [(HMIFaceClassification *)self sessionEntityUUID];
  v28 = [v5 initWithName:@"Session Entity UUID" value:sessionEntityUUID];
  v34[2] = v28;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  [(HMIFaceClassification *)self confidence];
  v27 = [v7 numberWithDouble:?];
  v26 = [v6 initWithName:@"Confidence" value:v27];
  v34[3] = v26;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  familiarity = [(HMIFaceClassification *)self familiarity];
  v10 = @"Known";
  if (!familiarity)
  {
    v10 = @"Unknown";
  }

  if (familiarity == 1)
  {
    v11 = @"Uncertain";
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 initWithName:@"Familiarity" value:v11];
  v34[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  faceCrop = [(HMIFaceClassification *)self faceCrop];
  uUID = [faceCrop UUID];
  v16 = [v13 initWithName:@"FaceCrop UUID" value:uUID];
  v34[5] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  faceprint = [(HMIFaceClassification *)self faceprint];
  uUID2 = [faceprint UUID];
  v20 = [v17 initWithName:@"Faceprint UUID" value:uUID2];
  v34[6] = v20;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIFaceClassification *)self fromTorsoClassification];
  v22 = HMFBooleanToString();
  v23 = [v21 initWithName:@"FromTorsoClassification" value:v22];
  v34[7] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      personUUID = [(HMIFaceClassification *)self personUUID];
      personUUID2 = [(HMIFaceClassification *)v5 personUUID];
      v8 = HMFEqualObjects();

      sourceUUID = [(HMIFaceClassification *)self sourceUUID];
      sourceUUID2 = [(HMIFaceClassification *)v5 sourceUUID];
      v11 = HMFEqualObjects();

      v12 = v8 & v11;
      sessionEntityUUID = [(HMIFaceClassification *)self sessionEntityUUID];
      sessionEntityUUID2 = [(HMIFaceClassification *)v5 sessionEntityUUID];
      v15 = HMFEqualObjects();

      faceCrop = [(HMIFaceClassification *)self faceCrop];
      faceCrop2 = [(HMIFaceClassification *)v5 faceCrop];
      v18 = HMFEqualObjects();

      v19 = v12 & v15 & v18;
      faceprint = [(HMIFaceClassification *)self faceprint];
      faceprint2 = [(HMIFaceClassification *)v5 faceprint];
      v22 = HMFEqualObjects();

      [(HMIFaceClassification *)self confidence];
      v24 = v23;
      [(HMIFaceClassification *)v5 confidence];
      if (v24 == v25)
      {
        v26 = v19 & v22;
      }

      else
      {
        v26 = 0;
      }

      familiarity = [(HMIFaceClassification *)self familiarity];
      if (familiarity != [(HMIFaceClassification *)v5 familiarity])
      {
        v26 = 0;
      }

      fromTorsoClassification = [(HMIFaceClassification *)self fromTorsoClassification];
      fromTorsoClassification2 = [(HMIFaceClassification *)v5 fromTorsoClassification];

      v30 = v26 & (fromTorsoClassification ^ fromTorsoClassification2 ^ 1);
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (unint64_t)hash
{
  personUUID = [(HMIFaceClassification *)self personUUID];
  v4 = [personUUID hash];
  sourceUUID = [(HMIFaceClassification *)self sourceUUID];
  v6 = [sourceUUID hash];

  return v6 ^ v4;
}

- (HMIFaceClassification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.pu"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.su"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.seu"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.fc"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.fp"];
  [coderCopy decodeDoubleForKey:@"HMIFC.c"];
  v11 = v10;
  v12 = [coderCopy decodeBoolForKey:@"HMIFC.ftc"];
  v13 = [coderCopy decodeIntegerForKey:@"HMIFC.f"];

  v14 = [(HMIFaceClassification *)self initWithUUID:v5 sourceUUID:v6 sessionEntityUUID:v7 faceCrop:v8 faceprint:v9 confidence:v12 fromTorsoClassification:v11 familiarity:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  personUUID = [(HMIFaceClassification *)self personUUID];
  [coderCopy encodeObject:personUUID forKey:@"HMIFC.pu"];

  sourceUUID = [(HMIFaceClassification *)self sourceUUID];
  [coderCopy encodeObject:sourceUUID forKey:@"HMIFC.su"];

  sessionEntityUUID = [(HMIFaceClassification *)self sessionEntityUUID];
  [coderCopy encodeObject:sessionEntityUUID forKey:@"HMIFC.seu"];

  faceCrop = [(HMIFaceClassification *)self faceCrop];
  [coderCopy encodeObject:faceCrop forKey:@"HMIFC.fc"];

  faceprint = [(HMIFaceClassification *)self faceprint];
  [coderCopy encodeObject:faceprint forKey:@"HMIFC.fp"];

  [(HMIFaceClassification *)self confidence];
  [coderCopy encodeDouble:@"HMIFC.c" forKey:?];
  [coderCopy encodeBool:-[HMIFaceClassification fromTorsoClassification](self forKey:{"fromTorsoClassification"), @"HMIFC.ftc"}];
  [coderCopy encodeInteger:-[HMIFaceClassification familiarity](self forKey:{"familiarity"), @"HMIFC.f"}];
}

- (CGRect)faceBoundingBox
{
  objc_copyStruct(v6, &self->_faceBoundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end