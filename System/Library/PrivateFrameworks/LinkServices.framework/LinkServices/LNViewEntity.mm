@interface LNViewEntity
- (LNEntityIdentifier)identifier;
- (LNViewEntity)initWithCoder:(id)coder;
- (LNViewEntity)initWithIdentifier:(id)identifier interactionId:(id)id location:(LNViewLocation *)location;
- (LNViewEntity)initWithIdentifier:(id)identifier interactionId:(id)id location:(LNViewLocation *)location structuredDataRepresentations:(int64_t)representations;
- (LNViewEntity)initWithValue:(id)value interactionID:(id)d location:(LNViewLocation *)location structuredDataRepresentations:(int64_t)representations displayRepresentation:(id)representation state:(int64_t)state;
- (LNViewLocation)location;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNViewEntity

- (LNViewLocation)location
{
  v3 = *&self[1].z;
  *&retstr->x = *&self[1].x;
  *&retstr->z = v3;
  *&retstr->height = *&self[1].height;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = [(LNViewEntity *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  interactionId = [(LNViewEntity *)self interactionId];
  [coderCopy encodeObject:interactionId forKey:@"interactionId"];

  [coderCopy encodeBytes:&self->_location length:48 forKey:@"location"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNViewEntity structuredDataRepresentations](self, "structuredDataRepresentations")}];
  [coderCopy encodeObject:v7 forKey:@"structuredDataRepresentations"];

  displayRepresentation = [(LNViewEntity *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNViewEntity state](self, "state")}];
  [coderCopy encodeObject:v9 forKey:@"state"];
}

- (LNViewEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    if (!v18 || (v19 = v18, v20 = objc_alloc(MEMORY[0x1E69ACA88]), v21 = objc_opt_new(), v6 = [v20 initWithValue:v19 valueType:v21], v21, v19, !v6))
    {
      selfCopy = 0;
      goto LABEL_12;
    }
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionId"];
  if (v7)
  {
    v24 = 0;
    v8 = [coderCopy decodeBytesForKey:@"location" returnedLength:&v24];
    selfCopy = 0;
    if (v8 && v24 == 48)
    {
      v10 = v8;
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"structuredDataRepresentations"];
      unsignedIntValue = [v11 unsignedIntValue];

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
      unsignedIntValue2 = [v14 unsignedIntValue];

      v16 = *v10;
      v17 = v10[2];
      v23[1] = v10[1];
      v23[2] = v17;
      v23[0] = v16;
      self = [(LNViewEntity *)self initWithValue:v6 interactionID:v7 location:v23 structuredDataRepresentations:unsignedIntValue displayRepresentation:v13 state:unsignedIntValue2];

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

LABEL_12:
  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(LNViewEntity *)self identifier];
  v5 = LNViewLocationAsString(&self->_location);
  v6 = [v3 stringWithFormat:@"%@ @ %@", identifier, v5];

  return v6;
}

- (LNEntityIdentifier)identifier
{
  valueType = [(LNValue *)self->_value valueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value = self->_value;
  if (isKindOfClass)
  {
    value = [(LNValue *)value value];
  }

  else
  {
    valueType2 = [(LNValue *)value valueType];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      value2 = [(LNValue *)self->_value value];
      value = [value2 identifier];
    }

    else
    {
      value = 0;
    }
  }

  return value;
}

- (LNViewEntity)initWithIdentifier:(id)identifier interactionId:(id)id location:(LNViewLocation *)location structuredDataRepresentations:(int64_t)representations
{
  v10 = MEMORY[0x1E69AC9E8];
  idCopy = id;
  identifierCopy = identifier;
  v13 = [[v10 alloc] initWithKey:&stru_1F0BBC770 table:0 bundleURL:0];
  v14 = [objc_alloc(MEMORY[0x1E69AC7A8]) initWithTitle:v13 subtitle:0 image:0];
  v15 = objc_alloc(MEMORY[0x1E69ACA88]);
  v16 = objc_opt_new();
  v17 = [v15 initWithValue:identifierCopy valueType:v16];

  v18 = *&location->z;
  v21[0] = *&location->x;
  v21[1] = v18;
  v21[2] = *&location->height;
  v19 = [(LNViewEntity *)self initWithValue:v17 interactionID:idCopy location:v21 structuredDataRepresentations:representations displayRepresentation:v14 state:0];

  return v19;
}

- (LNViewEntity)initWithIdentifier:(id)identifier interactionId:(id)id location:(LNViewLocation *)location
{
  v5 = *&location->z;
  v7[0] = *&location->x;
  v7[1] = v5;
  v7[2] = *&location->height;
  return [(LNViewEntity *)self initWithIdentifier:identifier interactionId:id location:v7 structuredDataRepresentations:0];
}

- (LNViewEntity)initWithValue:(id)value interactionID:(id)d location:(LNViewLocation *)location structuredDataRepresentations:(int64_t)representations displayRepresentation:(id)representation state:(int64_t)state
{
  valueCopy = value;
  dCopy = d;
  representationCopy = representation;
  if (valueCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNViewEntity.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNViewEntity.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"interactionId"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = LNViewEntity;
  v19 = [(LNViewEntity *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_value, value);
    v20->_interactionId = dCopy;
    v21 = *&location->x;
    v22 = *&location->height;
    *&v20->_location.z = *&location->z;
    *&v20->_location.height = v22;
    *&v20->_location.x = v21;
    v20->_structuredDataRepresentations = representations;
    objc_storeStrong(&v20->_displayRepresentation, representation);
    v20->_state = state;
    v23 = v20;
  }

  return v20;
}

@end