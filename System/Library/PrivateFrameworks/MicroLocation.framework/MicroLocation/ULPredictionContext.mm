@interface ULPredictionContext
+ (id)emptyPredictionContext;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPredictionValid;
- (ULPredictionContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULPredictionContext

+ (id)emptyPredictionContext
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [MEMORY[0x277CBEA60] array];
  v6 = [MEMORY[0x277CBEA60] array];
  v7 = [MEMORY[0x277CBEA60] array];
  v8 = [v2 initWithUniqueIdentifier:v3 timestamp:v4 isMotionDetected:0 coordinates:v5 probabilityVector:v6 imageIdentifiersVector:v7 particles:*&ULCoordinatesNotAvailable];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULPredictionContext *)self uniqueIdentifier];
  v6 = [(ULPredictionContext *)self timestamp];
  v7 = [(ULPredictionContext *)self isMotionDetected];
  [(ULPredictionContext *)self coordinates];
  v14 = v8;
  v9 = [(ULPredictionContext *)self probabilityVector];
  v10 = [(ULPredictionContext *)self imageIdentifiersVector];
  v11 = [(ULPredictionContext *)self particles];
  v12 = [v4 initWithUniqueIdentifier:v5 timestamp:v6 isMotionDetected:v7 coordinates:v9 probabilityVector:v10 imageIdentifiersVector:v11 particles:v14];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v6 = a3;
  [v6 encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v6 encodeObject:self->_timestamp forKey:@"timestamp"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMotionDetected];
  [v6 encodeObject:v5 forKey:@"isMotionDetected"];

  [v6 ul_encodeVector3:@"coordinates" forKey:*self->_coordinates];
  [v6 encodeObject:self->_probabilityVector forKey:@"probabilityVector"];
  [v6 encodeObject:self->_imageIdentifiersVector forKey:@"imageIdentifiersVector"];
  [v6 encodeObject:self->_particles forKey:@"particles"];
}

- (ULPredictionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ULPredictionContext;
  v5 = [(ULPredictionContext *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    if (v6)
    {
      v7 = objc_opt_self();

      uniqueIdentifier = v5->_uniqueIdentifier;
      v5->_uniqueIdentifier = v7;

      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
      if (v6)
      {
        v9 = objc_opt_self();

        timestamp = v5->_timestamp;
        v5->_timestamp = v9;

        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isMotionDetected"];
        v6 = v11;
        if (v11)
        {
          v12 = [(ULPredictionContext *)v11 BOOLValue];

          v5->_isMotionDetected = v12;
          [v4 ul_decodeVector3ForKey:@"coordinates"];
          *v5->_coordinates = v13;
          v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"probabilityVector"];
          if (v6)
          {
            v14 = objc_opt_self();

            probabilityVector = v5->_probabilityVector;
            v5->_probabilityVector = v14;

            v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"imageIdentifiersVector"];
            if (v6)
            {
              v16 = objc_opt_self();

              imageIdentifiersVector = v5->_imageIdentifiersVector;
              v5->_imageIdentifiersVector = v16;

              v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"particles"];
              if (v6)
              {
                v18 = objc_opt_self();

                particles = v5->_particles;
                v5->_particles = v18;

                v6 = v5;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@: ", v5];

  v7 = [(ULPredictionContext *)self uniqueIdentifier];
  [v6 appendFormat:@", uniqueIdentifier: %@", v7];

  v8 = [(ULPredictionContext *)self timestamp];
  [v6 appendFormat:@", timestamp: %@", v8];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULPredictionContext isMotionDetected](self, "isMotionDetected")}];
  [v6 appendFormat:@", isMotionDetected: %@", v9];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULPredictionContext isPredictionValid](self, "isPredictionValid")}];
  [v6 appendFormat:@", isPredictionValid: %@", v10];

  v11 = MEMORY[0x277CCABB0];
  [(ULPredictionContext *)self coordinates];
  v12 = [v11 numberWithFloat:?];
  v13 = MEMORY[0x277CCABB0];
  [(ULPredictionContext *)self coordinates];
  LODWORD(v14) = HIDWORD(v14);
  v15 = [v13 numberWithFloat:v14];
  v16 = MEMORY[0x277CCABB0];
  [(ULPredictionContext *)self coordinates];
  LODWORD(v18) = v17;
  v19 = [v16 numberWithFloat:v18];
  [v6 appendFormat:@", coordinates: (%@, %@, %@)", v12, v15, v19];

  v20 = [(ULPredictionContext *)self probabilityVector];
  [v6 appendFormat:@", probabilityVector: %@", v20];

  v21 = [(ULPredictionContext *)self imageIdentifiersVector];
  [v6 appendFormat:@", imageIdentifiersVector: %@", v21];

  v22 = [(ULPredictionContext *)self particles];
  [v6 appendFormat:@", particles: %@", v22];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [(ULPredictionContext *)self uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];
  if ([v5 isEqual:v6])
  {
  }

  else
  {
    v7 = [(ULPredictionContext *)self uniqueIdentifier];
    v8 = [v4 uniqueIdentifier];

    if (v7 != v8)
    {
      goto LABEL_10;
    }
  }

  v9 = [(ULPredictionContext *)self timestamp];
  v10 = [v4 timestamp];
  if ([v9 isEqual:v10])
  {
  }

  else
  {
    v11 = [(ULPredictionContext *)self timestamp];
    v12 = [v4 timestamp];

    if (v11 != v12)
    {
      goto LABEL_10;
    }
  }

  v13 = [(ULPredictionContext *)self isMotionDetected];
  if (v13 != [v4 isMotionDetected])
  {
    goto LABEL_10;
  }

  [(ULPredictionContext *)self coordinates];
  v31 = v14;
  [v4 coordinates];
  v16 = vceqq_f32(v31, v15);
  v16.i32[3] = v16.i32[2];
  if ((vminvq_u32(v16) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v19 = [(ULPredictionContext *)self probabilityVector];
  v20 = [v4 probabilityVector];
  if ([v19 isEqual:v20])
  {
  }

  else
  {
    v21 = [(ULPredictionContext *)self probabilityVector];
    v22 = [v4 probabilityVector];

    if (v21 != v22)
    {
      goto LABEL_10;
    }
  }

  v23 = [(ULPredictionContext *)self imageIdentifiersVector];
  v24 = [v4 imageIdentifiersVector];
  if ([v23 isEqual:v24])
  {

    goto LABEL_18;
  }

  v25 = [(ULPredictionContext *)self imageIdentifiersVector];
  v26 = [v4 imageIdentifiersVector];

  if (v25 != v26)
  {
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

LABEL_18:
  v27 = [(ULPredictionContext *)self particles];
  v28 = [v4 particles];
  if ([v27 isEqual:v28])
  {

    v17 = 1;
  }

  else
  {
    v29 = [(ULPredictionContext *)self particles];
    v30 = [v4 particles];
    v17 = v29 == v30;
  }

LABEL_11:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_uniqueIdentifier hash];
  v4 = [(NSDate *)self->_timestamp hash];
  isMotionDetected = self->_isMotionDetected;
  v6 = COERCE_FLOAT(*self->_coordinates);
  v7 = COERCE_FLOAT(HIDWORD(*self->_coordinates));
  v8 = COERCE_FLOAT(*&self->_coordinates[8]);
  v9 = [(NSArray *)self->_probabilityVector hash];
  v10 = [(NSArray *)self->_imageIdentifiersVector hash];
  return v3 ^ v4 ^ isMotionDetected ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSArray *)self->_particles hash]^ 0x1F;
}

- (BOOL)isPredictionValid
{
  v3 = [(ULPredictionContext *)self probabilityVector];
  if (![v3 count] && (-[ULPredictionContext coordinates](self, "coordinates"), v5 = vceqq_f32(v4, ULCoordinatesNotAvailable), v5.i32[3] = v5.i32[2], (vminvq_u32(v5) & 0x80000000) != 0))
  {
    v8 = [(ULPredictionContext *)self imageIdentifiersVector];
    v6 = [v8 count] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end