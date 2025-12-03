@interface ULLabel
- (BOOL)isEqual:(id)equal;
- (ULLabel)initWithCoder:(id)coder;
- (ULLabel)initWithName:(id)name;
- (ULLabel)initWithName:(id)name andContextLayerType:(id)type;
- (ULLabel)initWithName:(id)name contextLayerType:(id)type andDeviceClass:(unint64_t)class;
- (ULLabel)initWithName:(id)name timestamp:(id)timestamp contextLayer:(id)layer deviceClass:(unint64_t)class coordinates:(id)coordinates probabilityVector:(id)vector imageIdentifiersVector:;
- (id)copyWithReplacementContextLayerFromServiceIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)contextLayerEnum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULLabel

- (ULLabel)initWithName:(id)name
{
  v4 = MEMORY[0x277CBEAA8];
  nameCopy = name;
  v6 = [v4 now];
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v9 = [(ULLabel *)self initWithName:nameCopy timestamp:v6 contextLayer:@"ULContextLayerTypeUnknown" deviceClass:0 coordinates:array probabilityVector:array2 imageIdentifiersVector:*&ULCoordinatesNotAvailable];

  return v9;
}

- (ULLabel)initWithName:(id)name andContextLayerType:(id)type
{
  v6 = MEMORY[0x277CBEAA8];
  typeCopy = type;
  nameCopy = name;
  v9 = [v6 now];
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v12 = [(ULLabel *)self initWithName:nameCopy timestamp:v9 contextLayer:typeCopy deviceClass:0 coordinates:array probabilityVector:array2 imageIdentifiersVector:*&ULCoordinatesNotAvailable];

  return v12;
}

- (ULLabel)initWithName:(id)name contextLayerType:(id)type andDeviceClass:(unint64_t)class
{
  v8 = MEMORY[0x277CBEAA8];
  typeCopy = type;
  nameCopy = name;
  v11 = [v8 now];
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v14 = [(ULLabel *)self initWithName:nameCopy timestamp:v11 contextLayer:typeCopy deviceClass:class coordinates:array probabilityVector:array2 imageIdentifiersVector:*&ULCoordinatesNotAvailable];

  return v14;
}

- (ULLabel)initWithName:(id)name timestamp:(id)timestamp contextLayer:(id)layer deviceClass:(unint64_t)class coordinates:(id)coordinates probabilityVector:(id)vector imageIdentifiersVector:
{
  v24 = v8;
  nameCopy = name;
  timestampCopy = timestamp;
  layerCopy = layer;
  coordinatesCopy = coordinates;
  vectorCopy = vector;
  v25.receiver = self;
  v25.super_class = ULLabel;
  v20 = [(ULLabel *)&v25 init];
  if (v20)
  {
    v21 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:nameCopy];
    [(ULLabel *)v20 setName:v21];

    [(ULLabel *)v20 setTimestamp:timestampCopy];
    v22 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:layerCopy];
    [(ULLabel *)v20 setContextLayer:v22];

    [(ULLabel *)v20 setDeviceClass:class];
    [(ULLabel *)v20 setCoordinates:v24];
    [(ULLabel *)v20 setProbabilityVector:coordinatesCopy];
    [(ULLabel *)v20 setImageIdentifiersVector:vectorCopy];
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  name = [(ULLabel *)self name];
  timestamp = [(ULLabel *)self timestamp];
  contextLayer = [(ULLabel *)self contextLayer];
  deviceClass = [(ULLabel *)self deviceClass];
  [(ULLabel *)self coordinates];
  v14 = v9;
  probabilityVector = [(ULLabel *)self probabilityVector];
  imageIdentifiersVector = [(ULLabel *)self imageIdentifiersVector];
  v12 = [v4 initWithName:name timestamp:timestamp contextLayer:contextLayer deviceClass:deviceClass coordinates:probabilityVector probabilityVector:imageIdentifiersVector imageIdentifiersVector:v14];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_contextLayer forKey:@"contextLayer"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceClass];
  [coderCopy encodeObject:v5 forKey:@"deviceClass"];

  [coderCopy ul_encodeVector3:@"coordinates" forKey:*self->_coordinates];
  [coderCopy encodeObject:self->_probabilityVector forKey:@"probabilityVector"];
  [coderCopy encodeObject:self->_imageIdentifiersVector forKey:@"imageIdentifiersVector"];
}

- (ULLabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ULLabel;
  v5 = [(ULLabel *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy ul_decodeAndCacheNSStringForKey:@"name"];
    [(ULLabel *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    if (v7)
    {
      v8 = objc_opt_self();

      timestamp = v5->_timestamp;
      v5->_timestamp = v8;

      v10 = [coderCopy ul_decodeAndCacheNSStringForKey:@"contextLayer"];
      [(ULLabel *)v5 setContextLayer:v10];

      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
      v7 = v11;
      if (v11)
      {
        unsignedIntegerValue = [(ULLabel *)v11 unsignedIntegerValue];

        v5->_deviceClass = unsignedIntegerValue;
        [coderCopy ul_decodeVector3ForKey:@"coordinates"];
        *v5->_coordinates = v13;
        v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"probabilityVector"];
        if (v7)
        {
          v14 = objc_opt_self();

          probabilityVector = v5->_probabilityVector;
          v5->_probabilityVector = v14;

          v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"imageIdentifiersVector"];
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

  name = [(ULLabel *)self name];
  [v6 appendFormat:@", name: %@", name];

  timestamp = [(ULLabel *)self timestamp];
  [v6 appendFormat:@", timestamp: %@", timestamp];

  contextLayer = [(ULLabel *)self contextLayer];
  [v6 appendFormat:@", contextLayer: %@", contextLayer];

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

  probabilityVector = [(ULLabel *)self probabilityVector];
  [v6 appendFormat:@", probabilityVector: %@", probabilityVector];

  imageIdentifiersVector = [(ULLabel *)self imageIdentifiersVector];
  [v6 appendFormat:@", imageIdentifiersVector: %@", imageIdentifiersVector];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  name = [(ULLabel *)self name];
  name2 = [equalCopy name];
  if ([name isEqual:name2])
  {
  }

  else
  {
    name3 = [(ULLabel *)self name];
    name4 = [equalCopy name];

    if (name3 != name4)
    {
      goto LABEL_13;
    }
  }

  timestamp = [(ULLabel *)self timestamp];
  timestamp2 = [equalCopy timestamp];
  if ([timestamp isEqual:timestamp2])
  {
  }

  else
  {
    timestamp3 = [(ULLabel *)self timestamp];
    timestamp4 = [equalCopy timestamp];

    if (timestamp3 != timestamp4)
    {
      goto LABEL_13;
    }
  }

  contextLayer = [(ULLabel *)self contextLayer];
  contextLayer2 = [equalCopy contextLayer];
  if ([contextLayer isEqual:contextLayer2])
  {
  }

  else
  {
    contextLayer3 = [(ULLabel *)self contextLayer];
    contextLayer4 = [equalCopy contextLayer];

    if (contextLayer3 != contextLayer4)
    {
      goto LABEL_13;
    }
  }

  deviceClass = [(ULLabel *)self deviceClass];
  if (deviceClass != [equalCopy deviceClass])
  {
    goto LABEL_13;
  }

  [(ULLabel *)self coordinates];
  v31 = v18;
  [equalCopy coordinates];
  v20 = vceqq_f32(v31, v19);
  v20.i32[3] = v20.i32[2];
  if ((vminvq_u32(v20) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  probabilityVector = [(ULLabel *)self probabilityVector];
  probabilityVector2 = [equalCopy probabilityVector];
  if ([probabilityVector isEqual:probabilityVector2])
  {

    goto LABEL_18;
  }

  probabilityVector3 = [(ULLabel *)self probabilityVector];
  probabilityVector4 = [equalCopy probabilityVector];

  if (probabilityVector3 != probabilityVector4)
  {
LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

LABEL_18:
  imageIdentifiersVector = [(ULLabel *)self imageIdentifiersVector];
  imageIdentifiersVector2 = [equalCopy imageIdentifiersVector];
  if ([imageIdentifiersVector isEqual:imageIdentifiersVector2])
  {

    v21 = 1;
  }

  else
  {
    imageIdentifiersVector3 = [(ULLabel *)self imageIdentifiersVector];
    imageIdentifiersVector4 = [equalCopy imageIdentifiersVector];
    v21 = imageIdentifiersVector3 == imageIdentifiersVector4;
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

- (id)copyWithReplacementContextLayerFromServiceIdentifier:(id)identifier
{
  v4 = [ULContextLayerUtilities getDefaultContextLayerForService:identifier];
  v5 = [ULLabel alloc];
  name = [(ULLabel *)self name];
  timestamp = [(ULLabel *)self timestamp];
  deviceClass = [(ULLabel *)self deviceClass];
  [(ULLabel *)self coordinates];
  v14 = v9;
  probabilityVector = [(ULLabel *)self probabilityVector];
  imageIdentifiersVector = [(ULLabel *)self imageIdentifiersVector];
  v12 = [(ULLabel *)v5 initWithName:name timestamp:timestamp contextLayer:v4 deviceClass:deviceClass coordinates:probabilityVector probabilityVector:imageIdentifiersVector imageIdentifiersVector:v14];

  return v12;
}

- (unint64_t)contextLayerEnum
{
  contextLayer = [(ULLabel *)self contextLayer];
  v3 = [ULContextLayerUtilities contextLayerEnumFromStringType:contextLayer];

  return v3;
}

@end