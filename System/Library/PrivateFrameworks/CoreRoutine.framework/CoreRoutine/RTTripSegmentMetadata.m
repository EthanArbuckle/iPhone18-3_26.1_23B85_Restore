@interface RTTripSegmentMetadata
- (BOOL)isEqual:(id)a3;
- (RTTripSegmentMetadata)initWithCoder:(id)a3;
- (RTTripSegmentMetadata)initWithRoadClass:(id)a3 formOfWay:(id)a4 locationType:(id)a5 startLocationName:(id)a6 endLocationName:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripSegmentMetadata

- (RTTripSegmentMetadata)initWithRoadClass:(id)a3 formOfWay:(id)a4 locationType:(id)a5 startLocationName:(id)a6 endLocationName:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = RTTripSegmentMetadata;
  v17 = [(RTTripSegmentMetadata *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_roadClass, a3);
    objc_storeStrong(&v18->_formOfWay, a4);
    objc_storeStrong(&v18->_locationType, a5);
    objc_storeStrong(&v18->_startLocationName, a6);
    objc_storeStrong(&v18->_endLocationName, a7);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  roadClass = self->_roadClass;
  v5 = a3;
  [v5 encodeObject:roadClass forKey:@"roadClass"];
  [v5 encodeObject:self->_formOfWay forKey:@"formOfWay"];
  [v5 encodeObject:self->_locationType forKey:@"locationType"];
  [v5 encodeObject:self->_startLocationName forKey:@"startLocationName"];
  [v5 encodeObject:self->_endLocationName forKey:@"endLocationName"];
}

- (RTTripSegmentMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"roadClass"];

  objc_opt_class();
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"formOfWay"];

  objc_opt_class();
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"locationType"];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startLocationName"];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endLocationName"];

  v19 = [(RTTripSegmentMetadata *)self initWithRoadClass:v8 formOfWay:v12 locationType:v16 startLocationName:v17 endLocationName:v18];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v25 = [v6 isMemberOfClass:objc_opt_class()];
  roadClass = self->_roadClass;
  v8 = roadClass;
  if (roadClass)
  {
LABEL_4:
    v4 = [v6 roadClass];
    v9 = [(NSArray *)v8 isEqualToArray:v4];

    if (roadClass)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [v6 roadClass];
  if (v3)
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

  v4 = [v6 formOfWay];
  if (v4)
  {
    v11 = self->_formOfWay;
LABEL_11:
    roadClass = [v6 formOfWay];
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

  roadClass = [v6 locationType];
  if (roadClass)
  {
    v14 = self->_locationType;
LABEL_18:
    formOfWay = [v6 locationType];
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

  formOfWay = [v6 startLocationName];
  if (formOfWay)
  {
    v17 = self->_startLocationName;
LABEL_25:
    v18 = [v6 startLocationName];
    v19 = [(NSString *)v17 isEqualToString:v18];

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
    formOfWay = [v6 endLocationName];
    if (!formOfWay)
    {
      v23 = 1;
LABEL_35:

      goto LABEL_36;
    }

    v21 = self->_endLocationName;
  }

  v22 = [v6 endLocationName];
  v23 = [(NSString *)v21 isEqualToString:v22];

  if (!endLocationName)
  {
    goto LABEL_35;
  }

LABEL_36:

  return v25 & v9 & v12 & v15 & v19 & v23;
}

@end