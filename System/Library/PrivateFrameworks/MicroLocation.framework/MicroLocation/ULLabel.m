@interface ULLabel
- (BOOL)isEqual:(id)a3;
- (ULLabel)initWithCoder:(id)a3;
- (ULLabel)initWithName:(id)a3;
- (ULLabel)initWithName:(id)a3 andContextLayerType:(id)a4;
- (ULLabel)initWithName:(id)a3 contextLayerType:(id)a4 andDeviceClass:(unint64_t)a5;
- (ULLabel)initWithName:(id)a3 timestamp:(id)a4 contextLayer:(id)a5 deviceClass:(unint64_t)a6 coordinates:(id)a7 probabilityVector:(id)a8 imageIdentifiersVector:;
- (id)copyWithReplacementContextLayerFromServiceIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)contextLayerEnum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULLabel

- (ULLabel)initWithName:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  v7 = [MEMORY[0x277CBEA60] array];
  v8 = [MEMORY[0x277CBEA60] array];
  v9 = [(ULLabel *)self initWithName:v5 timestamp:v6 contextLayer:@"ULContextLayerTypeUnknown" deviceClass:0 coordinates:v7 probabilityVector:v8 imageIdentifiersVector:*&ULCoordinatesNotAvailable];

  return v9;
}

- (ULLabel)initWithName:(id)a3 andContextLayerType:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 now];
  v10 = [MEMORY[0x277CBEA60] array];
  v11 = [MEMORY[0x277CBEA60] array];
  v12 = [(ULLabel *)self initWithName:v8 timestamp:v9 contextLayer:v7 deviceClass:0 coordinates:v10 probabilityVector:v11 imageIdentifiersVector:*&ULCoordinatesNotAvailable];

  return v12;
}

- (ULLabel)initWithName:(id)a3 contextLayerType:(id)a4 andDeviceClass:(unint64_t)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 now];
  v12 = [MEMORY[0x277CBEA60] array];
  v13 = [MEMORY[0x277CBEA60] array];
  v14 = [(ULLabel *)self initWithName:v10 timestamp:v11 contextLayer:v9 deviceClass:a5 coordinates:v12 probabilityVector:v13 imageIdentifiersVector:*&ULCoordinatesNotAvailable];

  return v14;
}

- (ULLabel)initWithName:(id)a3 timestamp:(id)a4 contextLayer:(id)a5 deviceClass:(unint64_t)a6 coordinates:(id)a7 probabilityVector:(id)a8 imageIdentifiersVector:
{
  v24 = v8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = ULLabel;
  v20 = [(ULLabel *)&v25 init];
  if (v20)
  {
    v21 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:v15];
    [(ULLabel *)v20 setName:v21];

    [(ULLabel *)v20 setTimestamp:v16];
    v22 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:v17];
    [(ULLabel *)v20 setContextLayer:v22];

    [(ULLabel *)v20 setDeviceClass:a6];
    [(ULLabel *)v20 setCoordinates:v24];
    [(ULLabel *)v20 setProbabilityVector:v18];
    [(ULLabel *)v20 setImageIdentifiersVector:v19];
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULLabel *)self name];
  v6 = [(ULLabel *)self timestamp];
  v7 = [(ULLabel *)self contextLayer];
  v8 = [(ULLabel *)self deviceClass];
  [(ULLabel *)self coordinates];
  v14 = v9;
  v10 = [(ULLabel *)self probabilityVector];
  v11 = [(ULLabel *)self imageIdentifiersVector];
  v12 = [v4 initWithName:v5 timestamp:v6 contextLayer:v7 deviceClass:v8 coordinates:v10 probabilityVector:v11 imageIdentifiersVector:v14];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v6 = a3;
  [v6 encodeObject:name forKey:@"name"];
  [v6 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v6 encodeObject:self->_contextLayer forKey:@"contextLayer"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceClass];
  [v6 encodeObject:v5 forKey:@"deviceClass"];

  [v6 ul_encodeVector3:@"coordinates" forKey:*self->_coordinates];
  [v6 encodeObject:self->_probabilityVector forKey:@"probabilityVector"];
  [v6 encodeObject:self->_imageIdentifiersVector forKey:@"imageIdentifiersVector"];
}

- (ULLabel)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ULLabel;
  v5 = [(ULLabel *)&v19 init];
  if (v5)
  {
    v6 = [v4 ul_decodeAndCacheNSStringForKey:@"name"];
    [(ULLabel *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    if (v7)
    {
      v8 = objc_opt_self();

      timestamp = v5->_timestamp;
      v5->_timestamp = v8;

      v10 = [v4 ul_decodeAndCacheNSStringForKey:@"contextLayer"];
      [(ULLabel *)v5 setContextLayer:v10];

      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
      v7 = v11;
      if (v11)
      {
        v12 = [(ULLabel *)v11 unsignedIntegerValue];

        v5->_deviceClass = v12;
        [v4 ul_decodeVector3ForKey:@"coordinates"];
        *v5->_coordinates = v13;
        v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"probabilityVector"];
        if (v7)
        {
          v14 = objc_opt_self();

          probabilityVector = v5->_probabilityVector;
          v5->_probabilityVector = v14;

          v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"imageIdentifiersVector"];
          if (v7)
          {
            v16 = objc_opt_self();

            imageIdentifiersVector = v5->_imageIdentifiersVector;
            v5->_imageIdentifiersVector = v16;

            v7 = v5;
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@: ", v5];

  v7 = [(ULLabel *)self name];
  [v6 appendFormat:@", name: %@", v7];

  v8 = [(ULLabel *)self timestamp];
  [v6 appendFormat:@", timestamp: %@", v8];

  v9 = [(ULLabel *)self contextLayer];
  [v6 appendFormat:@", contextLayer: %@", v9];

  v10 = ULDeviceClassToString([(ULLabel *)self deviceClass]);
  [v6 appendFormat:@", deviceClass: %@", v10];

  v11 = MEMORY[0x277CCABB0];
  [(ULLabel *)self coordinates];
  v12 = [v11 numberWithFloat:?];
  v13 = MEMORY[0x277CCABB0];
  [(ULLabel *)self coordinates];
  LODWORD(v14) = HIDWORD(v14);
  v15 = [v13 numberWithFloat:v14];
  v16 = MEMORY[0x277CCABB0];
  [(ULLabel *)self coordinates];
  LODWORD(v18) = v17;
  v19 = [v16 numberWithFloat:v18];
  [v6 appendFormat:@", coordinates: (%@, %@, %@)", v12, v15, v19];

  v20 = [(ULLabel *)self probabilityVector];
  [v6 appendFormat:@", probabilityVector: %@", v20];

  v21 = [(ULLabel *)self imageIdentifiersVector];
  [v6 appendFormat:@", imageIdentifiersVector: %@", v21];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = [(ULLabel *)self name];
  v6 = [v4 name];
  if ([v5 isEqual:v6])
  {
  }

  else
  {
    v7 = [(ULLabel *)self name];
    v8 = [v4 name];

    if (v7 != v8)
    {
      goto LABEL_13;
    }
  }

  v9 = [(ULLabel *)self timestamp];
  v10 = [v4 timestamp];
  if ([v9 isEqual:v10])
  {
  }

  else
  {
    v11 = [(ULLabel *)self timestamp];
    v12 = [v4 timestamp];

    if (v11 != v12)
    {
      goto LABEL_13;
    }
  }

  v13 = [(ULLabel *)self contextLayer];
  v14 = [v4 contextLayer];
  if ([v13 isEqual:v14])
  {
  }

  else
  {
    v15 = [(ULLabel *)self contextLayer];
    v16 = [v4 contextLayer];

    if (v15 != v16)
    {
      goto LABEL_13;
    }
  }

  v17 = [(ULLabel *)self deviceClass];
  if (v17 != [v4 deviceClass])
  {
    goto LABEL_13;
  }

  [(ULLabel *)self coordinates];
  v31 = v18;
  [v4 coordinates];
  v20 = vceqq_f32(v31, v19);
  v20.i32[3] = v20.i32[2];
  if ((vminvq_u32(v20) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  v23 = [(ULLabel *)self probabilityVector];
  v24 = [v4 probabilityVector];
  if ([v23 isEqual:v24])
  {

    goto LABEL_18;
  }

  v25 = [(ULLabel *)self probabilityVector];
  v26 = [v4 probabilityVector];

  if (v25 != v26)
  {
LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

LABEL_18:
  v27 = [(ULLabel *)self imageIdentifiersVector];
  v28 = [v4 imageIdentifiersVector];
  if ([v27 isEqual:v28])
  {

    v21 = 1;
  }

  else
  {
    v29 = [(ULLabel *)self imageIdentifiersVector];
    v30 = [v4 imageIdentifiersVector];
    v21 = v29 == v30;
  }

LABEL_14:

  return v21;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSDate *)self->_timestamp hash];
  v5 = [(NSString *)self->_contextLayer hash];
  v6 = COERCE_FLOAT(*self->_coordinates);
  v7 = COERCE_FLOAT(HIDWORD(*self->_coordinates));
  v8 = COERCE_FLOAT(*&self->_coordinates[8]);
  deviceClass = self->_deviceClass;
  v10 = [(NSArray *)self->_probabilityVector hash];
  return v3 ^ v4 ^ v5 ^ deviceClass ^ v6 ^ v7 ^ v8 ^ v10 ^ [(NSArray *)self->_imageIdentifiersVector hash]^ 0x1F;
}

- (id)copyWithReplacementContextLayerFromServiceIdentifier:(id)a3
{
  v4 = [ULContextLayerUtilities getDefaultContextLayerForService:a3];
  v5 = [ULLabel alloc];
  v6 = [(ULLabel *)self name];
  v7 = [(ULLabel *)self timestamp];
  v8 = [(ULLabel *)self deviceClass];
  [(ULLabel *)self coordinates];
  v14 = v9;
  v10 = [(ULLabel *)self probabilityVector];
  v11 = [(ULLabel *)self imageIdentifiersVector];
  v12 = [(ULLabel *)v5 initWithName:v6 timestamp:v7 contextLayer:v4 deviceClass:v8 coordinates:v10 probabilityVector:v11 imageIdentifiersVector:v14];

  return v12;
}

- (unint64_t)contextLayerEnum
{
  v2 = [(ULLabel *)self contextLayer];
  v3 = [ULContextLayerUtilities contextLayerEnumFromStringType:v2];

  return v3;
}

@end