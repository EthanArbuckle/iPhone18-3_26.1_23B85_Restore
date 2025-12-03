@interface RTTripSegmentMetadata
- (BOOL)isEqual:(id)equal;
- (RTTripSegmentMetadata)initWithCoder:(id)coder;
- (RTTripSegmentMetadata)initWithRoadClass:(id)class formOfWay:(id)way locationType:(id)type startLocationName:(id)name endLocationName:(id)locationName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripSegmentMetadata

- (RTTripSegmentMetadata)initWithRoadClass:(id)class formOfWay:(id)way locationType:(id)type startLocationName:(id)name endLocationName:(id)locationName
{
  classCopy = class;
  wayCopy = way;
  typeCopy = type;
  nameCopy = name;
  locationNameCopy = locationName;
  v21.receiver = self;
  v21.super_class = RTTripSegmentMetadata;
  v17 = [(RTTripSegmentMetadata *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_roadClass, class);
    objc_storeStrong(&v18->_formOfWay, way);
    objc_storeStrong(&v18->_locationType, type);
    objc_storeStrong(&v18->_startLocationName, name);
    objc_storeStrong(&v18->_endLocationName, locationName);
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  roadClass = self->_roadClass;
  coderCopy = coder;
  [coderCopy encodeObject:roadClass forKey:@"roadClass"];
  [coderCopy encodeObject:self->_formOfWay forKey:@"formOfWay"];
  [coderCopy encodeObject:self->_locationType forKey:@"locationType"];
  [coderCopy encodeObject:self->_startLocationName forKey:@"startLocationName"];
  [coderCopy encodeObject:self->_endLocationName forKey:@"endLocationName"];
}

- (RTTripSegmentMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"roadClass"];

  objc_opt_class();
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"formOfWay"];

  objc_opt_class();
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"locationType"];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startLocationName"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endLocationName"];

  v19 = [(RTTripSegmentMetadata *)self initWithRoadClass:v8 formOfWay:v12 locationType:v16 startLocationName:v17 endLocationName:v18];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v25 = [equalCopy isMemberOfClass:objc_opt_class()];
  roadClass = self->_roadClass;
  v8 = roadClass;
  if (roadClass)
  {
LABEL_4:
    roadClass = [equalCopy roadClass];
    v9 = [(NSArray *)v8 isEqualToArray:roadClass];

    if (roadClass)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  roadClass2 = [equalCopy roadClass];
  if (roadClass2)
  {
    v8 = self->_roadClass;
    goto LABEL_4;
  }

  v9 = 1;
LABEL_7:

LABEL_8:
  formOfWay = self->_formOfWay;
  v11 = formOfWay;
  if (formOfWay)
  {
    goto LABEL_11;
  }

  roadClass = [equalCopy formOfWay];
  if (roadClass)
  {
    v11 = self->_formOfWay;
LABEL_11:
    roadClass = [equalCopy formOfWay];
    v12 = [(NSArray *)v11 isEqualToArray:roadClass];

    if (formOfWay)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = 1;
LABEL_14:

LABEL_15:
  locationType = self->_locationType;
  v14 = locationType;
  if (locationType)
  {
    goto LABEL_18;
  }

  roadClass = [equalCopy locationType];
  if (roadClass)
  {
    v14 = self->_locationType;
LABEL_18:
    formOfWay = [equalCopy locationType];
    v15 = [(NSArray *)v14 isEqualToArray:formOfWay];

    if (locationType)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v15 = 1;
LABEL_21:

LABEL_22:
  startLocationName = self->_startLocationName;
  v17 = startLocationName;
  if (startLocationName)
  {
    goto LABEL_25;
  }

  formOfWay = [equalCopy startLocationName];
  if (formOfWay)
  {
    v17 = self->_startLocationName;
LABEL_25:
    startLocationName = [equalCopy startLocationName];
    v19 = [(NSString *)v17 isEqualToString:startLocationName];

    if (startLocationName)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v19 = 1;
LABEL_28:

LABEL_29:
  endLocationName = self->_endLocationName;
  v21 = endLocationName;
  if (!endLocationName)
  {
    formOfWay = [equalCopy endLocationName];
    if (!formOfWay)
    {
      v23 = 1;
LABEL_35:

      goto LABEL_36;
    }

    v21 = self->_endLocationName;
  }

  endLocationName = [equalCopy endLocationName];
  v23 = [(NSString *)v21 isEqualToString:endLocationName];

  if (!endLocationName)
  {
    goto LABEL_35;
  }

LABEL_36:

  return v25 & v9 & v12 & v15 & v19 & v23;
}

@end