@interface ULPredictionContext
+ (id)emptyPredictionContext;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPredictionValid;
- (ULPredictionContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULPredictionContext

+ (id)emptyPredictionContext
{
  v2 = [self alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  date = [MEMORY[0x277CBEAA8] date];
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  array3 = [MEMORY[0x277CBEA60] array];
  v8 = [v2 initWithUniqueIdentifier:uUID timestamp:date isMotionDetected:0 coordinates:array probabilityVector:array2 imageIdentifiersVector:array3 particles:*&ULCoordinatesNotAvailable];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  uniqueIdentifier = [(ULPredictionContext *)self uniqueIdentifier];
  timestamp = [(ULPredictionContext *)self timestamp];
  isMotionDetected = [(ULPredictionContext *)self isMotionDetected];
  [(ULPredictionContext *)self coordinates];
  v14 = v8;
  probabilityVector = [(ULPredictionContext *)self probabilityVector];
  imageIdentifiersVector = [(ULPredictionContext *)self imageIdentifiersVector];
  particles = [(ULPredictionContext *)self particles];
  v12 = [v4 initWithUniqueIdentifier:uniqueIdentifier timestamp:timestamp isMotionDetected:isMotionDetected coordinates:probabilityVector probabilityVector:imageIdentifiersVector imageIdentifiersVector:particles particles:v14];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMotionDetected];
  [coderCopy encodeObject:v5 forKey:@"isMotionDetected"];

  [coderCopy ul_encodeVector3:@"coordinates" forKey:*self->_coordinates];
  [coderCopy encodeObject:self->_probabilityVector forKey:@"probabilityVector"];
  [coderCopy encodeObject:self->_imageIdentifiersVector forKey:@"imageIdentifiersVector"];
  [coderCopy encodeObject:self->_particles forKey:@"particles"];
}

- (ULPredictionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = ULPredictionContext;
  v5 = [(ULPredictionContext *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    if (v6)
    {
      v7 = objc_opt_self();

      uniqueIdentifier = v5->_uniqueIdentifier;
      v5->_uniqueIdentifier = v7;

      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
      if (v6)
      {
        v9 = objc_opt_self();

        timestamp = v5->_timestamp;
        v5->_timestamp = v9;

        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isMotionDetected"];
        v6 = v11;
        if (v11)
        {
          bOOLValue = [(ULPredictionContext *)v11 BOOLValue];

          v5->_isMotionDetected = bOOLValue;
          [coderCopy ul_decodeVector3ForKey:@"coordinates"];
          *v5->_coordinates = v13;
          v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"probabilityVector"];
          if (v6)
          {
            v14 = objc_opt_self();

            probabilityVector = v5->_probabilityVector;
            v5->_probabilityVector = v14;

            v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"imageIdentifiersVector"];
            if (v6)
            {
              v16 = objc_opt_self();

              imageIdentifiersVector = v5->_imageIdentifiersVector;
              v5->_imageIdentifiersVector = v16;

              v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"particles"];
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

  uniqueIdentifier = [(ULPredictionContext *)self uniqueIdentifier];
  [v6 appendFormat:@", uniqueIdentifier: %@", uniqueIdentifier];

  timestamp = [(ULPredictionContext *)self timestamp];
  [v6 appendFormat:@", timestamp: %@", timestamp];

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

  probabilityVector = [(ULPredictionContext *)self probabilityVector];
  [v6 appendFormat:@", probabilityVector: %@", probabilityVector];

  imageIdentifiersVector = [(ULPredictionContext *)self imageIdentifiersVector];
  [v6 appendFormat:@", imageIdentifiersVector: %@", imageIdentifiersVector];

  particles = [(ULPredictionContext *)self particles];
  [v6 appendFormat:@", particles: %@", particles];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  uniqueIdentifier = [(ULPredictionContext *)self uniqueIdentifier];
  uniqueIdentifier2 = [equalCopy uniqueIdentifier];
  if ([uniqueIdentifier isEqual:uniqueIdentifier2])
  {
  }

  else
  {
    uniqueIdentifier3 = [(ULPredictionContext *)self uniqueIdentifier];
    uniqueIdentifier4 = [equalCopy uniqueIdentifier];

    if (uniqueIdentifier3 != uniqueIdentifier4)
    {
      goto LABEL_10;
    }
  }

  timestamp = [(ULPredictionContext *)self timestamp];
  timestamp2 = [equalCopy timestamp];
  if ([timestamp isEqual:timestamp2])
  {
  }

  else
  {
    timestamp3 = [(ULPredictionContext *)self timestamp];
    timestamp4 = [equalCopy timestamp];

    if (timestamp3 != timestamp4)
    {
      goto LABEL_10;
    }
  }

  isMotionDetected = [(ULPredictionContext *)self isMotionDetected];
  if (isMotionDetected != [equalCopy isMotionDetected])
  {
    goto LABEL_10;
  }

  [(ULPredictionContext *)self coordinates];
  v31 = v14;
  [equalCopy coordinates];
  v16 = vceqq_f32(v31, v15);
  v16.i32[3] = v16.i32[2];
  if ((vminvq_u32(v16) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  probabilityVector = [(ULPredictionContext *)self probabilityVector];
  probabilityVector2 = [equalCopy probabilityVector];
  if ([probabilityVector isEqual:probabilityVector2])
  {
  }

  else
  {
    probabilityVector3 = [(ULPredictionContext *)self probabilityVector];
    probabilityVector4 = [equalCopy probabilityVector];

    if (probabilityVector3 != probabilityVector4)
    {
      goto LABEL_10;
    }
  }

  imageIdentifiersVector = [(ULPredictionContext *)self imageIdentifiersVector];
  imageIdentifiersVector2 = [equalCopy imageIdentifiersVector];
  if ([imageIdentifiersVector isEqual:imageIdentifiersVector2])
  {

    goto LABEL_18;
  }

  imageIdentifiersVector3 = [(ULPredictionContext *)self imageIdentifiersVector];
  imageIdentifiersVector4 = [equalCopy imageIdentifiersVector];

  if (imageIdentifiersVector3 != imageIdentifiersVector4)
  {
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

LABEL_18:
  particles = [(ULPredictionContext *)self particles];
  particles2 = [equalCopy particles];
  if ([particles isEqual:particles2])
  {

    v17 = 1;
  }

  else
  {
    particles3 = [(ULPredictionContext *)self particles];
    particles4 = [equalCopy particles];
    v17 = particles3 == particles4;
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
  probabilityVector = [(ULPredictionContext *)self probabilityVector];
  if (![probabilityVector count] && (-[ULPredictionContext coordinates](self, "coordinates"), v5 = vceqq_f32(v4, ULCoordinatesNotAvailable), v5.i32[3] = v5.i32[2], (vminvq_u32(v5) & 0x80000000) != 0))
  {
    imageIdentifiersVector = [(ULPredictionContext *)self imageIdentifiersVector];
    v6 = [imageIdentifiersVector count] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end