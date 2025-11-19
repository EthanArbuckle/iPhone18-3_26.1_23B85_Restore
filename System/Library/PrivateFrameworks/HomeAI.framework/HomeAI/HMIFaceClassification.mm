@interface HMIFaceClassification
- (BOOL)isEqual:(id)a3;
- (CGRect)faceBoundingBox;
- (HMIFaceClassification)initWithCoder:(id)a3;
- (HMIFaceClassification)initWithPersonUUID:(id)a3 sourceUUID:(id)a4 confidence:(double)a5 fromTorsoClassification:(BOOL)a6 familiarity:(int64_t)a7;
- (HMIFaceClassification)initWithPersonUUID:(id)a3 sourceUUID:(id)a4 sessionEntityUUID:(id)a5 confidence:(double)a6 familiarity:(int64_t)a7;
- (HMIFaceClassification)initWithUUID:(id)a3 name:(id)a4 personsModelIdentifier:(id)a5 faceBoundingBox:(CGRect)a6;
- (HMIFaceClassification)initWithUUID:(id)a3 sourceUUID:(id)a4 faceBoundingBox:(CGRect)a5;
- (HMIFaceClassification)initWithUUID:(id)a3 sourceUUID:(id)a4 sessionEntityUUID:(id)a5 faceCrop:(id)a6 faceprint:(id)a7 confidence:(double)a8 familiarity:(int64_t)a9;
- (HMIFaceClassification)initWithUUID:(id)a3 sourceUUID:(id)a4 sessionEntityUUID:(id)a5 faceCrop:(id)a6 faceprint:(id)a7 confidence:(double)a8 fromTorsoClassification:(BOOL)a9 familiarity:(int64_t)a10;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIFaceClassification

- (HMIFaceClassification)initWithPersonUUID:(id)a3 sourceUUID:(id)a4 confidence:(double)a5 fromTorsoClassification:(BOOL)a6 familiarity:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = HMIFaceClassification;
  v15 = [(HMIFaceClassification *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_personUUID, a3);
    objc_storeStrong(&v16->_sourceUUID, a4);
    v16->_confidence = a5;
    v16->_fromTorsoClassification = a6;
    v16->_familiarity = a7;
  }

  return v16;
}

- (HMIFaceClassification)initWithPersonUUID:(id)a3 sourceUUID:(id)a4 sessionEntityUUID:(id)a5 confidence:(double)a6 familiarity:(int64_t)a7
{
  v13 = a5;
  v14 = [(HMIFaceClassification *)self initWithPersonUUID:a3 sourceUUID:a4 confidence:0 fromTorsoClassification:a7 familiarity:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sessionEntityUUID, a5);
  }

  return v15;
}

- (HMIFaceClassification)initWithUUID:(id)a3 sourceUUID:(id)a4 sessionEntityUUID:(id)a5 faceCrop:(id)a6 faceprint:(id)a7 confidence:(double)a8 familiarity:(int64_t)a9
{
  v17 = a6;
  v18 = a7;
  v19 = [(HMIFaceClassification *)self initWithPersonUUID:a3 sourceUUID:a4 sessionEntityUUID:a5 confidence:a9 familiarity:a8];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_faceCrop, a6);
    objc_storeStrong(&v20->_faceprint, a7);
  }

  return v20;
}

- (HMIFaceClassification)initWithUUID:(id)a3 sourceUUID:(id)a4 sessionEntityUUID:(id)a5 faceCrop:(id)a6 faceprint:(id)a7 confidence:(double)a8 fromTorsoClassification:(BOOL)a9 familiarity:(int64_t)a10
{
  result = [(HMIFaceClassification *)self initWithUUID:a3 sourceUUID:a4 sessionEntityUUID:a5 faceCrop:a6 faceprint:a7 confidence:a10 familiarity:a8];
  if (result)
  {
    result->_fromTorsoClassification = a9;
  }

  return result;
}

- (HMIFaceClassification)initWithUUID:(id)a3 name:(id)a4 personsModelIdentifier:(id)a5 faceBoundingBox:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = MEMORY[0x277CCAD78];
  v12 = a3;
  v13 = [v11 UUID];
  v14 = [(HMIFaceClassification *)self initWithUUID:v12 sourceUUID:v13 faceBoundingBox:x, y, width, height];

  return v14;
}

- (HMIFaceClassification)initWithUUID:(id)a3 sourceUUID:(id)a4 faceBoundingBox:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [HMIFaceCrop alloc];
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [MEMORY[0x277CBEA90] data];
  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [(HMIFaceCrop *)v13 initWithUUID:v14 dataRepresentation:v15 dateCreated:v16 faceBoundingBox:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  v18 = [HMIFaceprint alloc];
  v19 = [MEMORY[0x277CCAD78] UUID];
  v20 = [MEMORY[0x277CBEA90] data];
  v21 = [MEMORY[0x277CCAD78] UUID];
  v22 = [(HMIFaceCrop *)v17 UUID];
  v23 = [(HMIFaceprint *)v18 initWithUUID:v19 data:v20 modelUUID:v21 faceCropUUID:v22];

  v24 = [MEMORY[0x277CCAD78] UUID];
  v25 = [(HMIFaceClassification *)self initWithUUID:v12 sourceUUID:v11 sessionEntityUUID:v24 faceBoundingBox:v17 facecrop:v23 faceprint:x confidence:y, width, height, 0.0];

  return v25;
}

- (id)attributeDescriptions
{
  v34[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v33 = [(HMIFaceClassification *)self personUUID];
  v32 = [v3 initWithName:@"Person UUID" value:v33];
  v34[0] = v32;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v31 = [(HMIFaceClassification *)self sourceUUID];
  v30 = [v4 initWithName:@"Source UUID" value:v31];
  v34[1] = v30;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v29 = [(HMIFaceClassification *)self sessionEntityUUID];
  v28 = [v5 initWithName:@"Session Entity UUID" value:v29];
  v34[2] = v28;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  [(HMIFaceClassification *)self confidence];
  v27 = [v7 numberWithDouble:?];
  v26 = [v6 initWithName:@"Confidence" value:v27];
  v34[3] = v26;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMIFaceClassification *)self familiarity];
  v10 = @"Known";
  if (!v9)
  {
    v10 = @"Unknown";
  }

  if (v9 == 1)
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
  v14 = [(HMIFaceClassification *)self faceCrop];
  v15 = [v14 UUID];
  v16 = [v13 initWithName:@"FaceCrop UUID" value:v15];
  v34[5] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMIFaceClassification *)self faceprint];
  v19 = [v18 UUID];
  v20 = [v17 initWithName:@"Faceprint UUID" value:v19];
  v34[6] = v20;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIFaceClassification *)self fromTorsoClassification];
  v22 = HMFBooleanToString();
  v23 = [v21 initWithName:@"FromTorsoClassification" value:v22];
  v34[7] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMIFaceClassification *)self personUUID];
      v7 = [(HMIFaceClassification *)v5 personUUID];
      v8 = HMFEqualObjects();

      v9 = [(HMIFaceClassification *)self sourceUUID];
      v10 = [(HMIFaceClassification *)v5 sourceUUID];
      v11 = HMFEqualObjects();

      v12 = v8 & v11;
      v13 = [(HMIFaceClassification *)self sessionEntityUUID];
      v14 = [(HMIFaceClassification *)v5 sessionEntityUUID];
      v15 = HMFEqualObjects();

      v16 = [(HMIFaceClassification *)self faceCrop];
      v17 = [(HMIFaceClassification *)v5 faceCrop];
      v18 = HMFEqualObjects();

      v19 = v12 & v15 & v18;
      v20 = [(HMIFaceClassification *)self faceprint];
      v21 = [(HMIFaceClassification *)v5 faceprint];
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

      v27 = [(HMIFaceClassification *)self familiarity];
      if (v27 != [(HMIFaceClassification *)v5 familiarity])
      {
        v26 = 0;
      }

      v28 = [(HMIFaceClassification *)self fromTorsoClassification];
      v29 = [(HMIFaceClassification *)v5 fromTorsoClassification];

      v30 = v26 & (v28 ^ v29 ^ 1);
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
  v3 = [(HMIFaceClassification *)self personUUID];
  v4 = [v3 hash];
  v5 = [(HMIFaceClassification *)self sourceUUID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (HMIFaceClassification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.pu"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.su"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.seu"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.fc"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIFC.fp"];
  [v4 decodeDoubleForKey:@"HMIFC.c"];
  v11 = v10;
  v12 = [v4 decodeBoolForKey:@"HMIFC.ftc"];
  v13 = [v4 decodeIntegerForKey:@"HMIFC.f"];

  v14 = [(HMIFaceClassification *)self initWithUUID:v5 sourceUUID:v6 sessionEntityUUID:v7 faceCrop:v8 faceprint:v9 confidence:v12 fromTorsoClassification:v11 familiarity:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(HMIFaceClassification *)self personUUID];
  [v9 encodeObject:v4 forKey:@"HMIFC.pu"];

  v5 = [(HMIFaceClassification *)self sourceUUID];
  [v9 encodeObject:v5 forKey:@"HMIFC.su"];

  v6 = [(HMIFaceClassification *)self sessionEntityUUID];
  [v9 encodeObject:v6 forKey:@"HMIFC.seu"];

  v7 = [(HMIFaceClassification *)self faceCrop];
  [v9 encodeObject:v7 forKey:@"HMIFC.fc"];

  v8 = [(HMIFaceClassification *)self faceprint];
  [v9 encodeObject:v8 forKey:@"HMIFC.fp"];

  [(HMIFaceClassification *)self confidence];
  [v9 encodeDouble:@"HMIFC.c" forKey:?];
  [v9 encodeBool:-[HMIFaceClassification fromTorsoClassification](self forKey:{"fromTorsoClassification"), @"HMIFC.ftc"}];
  [v9 encodeInteger:-[HMIFaceClassification familiarity](self forKey:{"familiarity"), @"HMIFC.f"}];
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