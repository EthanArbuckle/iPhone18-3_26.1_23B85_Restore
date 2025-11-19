@interface LNViewEntity
- (LNEntityIdentifier)identifier;
- (LNViewEntity)initWithCoder:(id)a3;
- (LNViewEntity)initWithIdentifier:(id)a3 interactionId:(id)a4 location:(LNViewLocation *)a5;
- (LNViewEntity)initWithIdentifier:(id)a3 interactionId:(id)a4 location:(LNViewLocation *)a5 structuredDataRepresentations:(int64_t)a6;
- (LNViewEntity)initWithValue:(id)a3 interactionID:(id)a4 location:(LNViewLocation *)a5 structuredDataRepresentations:(int64_t)a6 displayRepresentation:(id)a7 state:(int64_t)a8;
- (LNViewLocation)location;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNViewEntity *)self value];
  [v4 encodeObject:v5 forKey:@"value"];

  v6 = [(LNViewEntity *)self interactionId];
  [v4 encodeObject:v6 forKey:@"interactionId"];

  [v4 encodeBytes:&self->_location length:48 forKey:@"location"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNViewEntity structuredDataRepresentations](self, "structuredDataRepresentations")}];
  [v4 encodeObject:v7 forKey:@"structuredDataRepresentations"];

  v8 = [(LNViewEntity *)self displayRepresentation];
  [v4 encodeObject:v8 forKey:@"displayRepresentation"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LNViewEntity state](self, "state")}];
  [v4 encodeObject:v9 forKey:@"state"];
}

- (LNViewEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    if (!v18 || (v19 = v18, v20 = objc_alloc(MEMORY[0x1E69ACA88]), v21 = objc_opt_new(), v6 = [v20 initWithValue:v19 valueType:v21], v21, v19, !v6))
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionId"];
  if (v7)
  {
    v24 = 0;
    v8 = [v4 decodeBytesForKey:@"location" returnedLength:&v24];
    v9 = 0;
    if (v8 && v24 == 48)
    {
      v10 = v8;
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"structuredDataRepresentations"];
      v12 = [v11 unsignedIntValue];

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
      v15 = [v14 unsignedIntValue];

      v16 = *v10;
      v17 = v10[2];
      v23[1] = v10[1];
      v23[2] = v17;
      v23[0] = v16;
      self = [(LNViewEntity *)self initWithValue:v6 interactionID:v7 location:v23 structuredDataRepresentations:v12 displayRepresentation:v13 state:v15];

      v9 = self;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNViewEntity *)self identifier];
  v5 = LNViewLocationAsString(&self->_location);
  v6 = [v3 stringWithFormat:@"%@ @ %@", v4, v5];

  return v6;
}

- (LNEntityIdentifier)identifier
{
  v3 = [(LNValue *)self->_value valueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value = self->_value;
  if (isKindOfClass)
  {
    v6 = [(LNValue *)value value];
  }

  else
  {
    v7 = [(LNValue *)value valueType];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v9 = [(LNValue *)self->_value value];
      v6 = [v9 identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (LNViewEntity)initWithIdentifier:(id)a3 interactionId:(id)a4 location:(LNViewLocation *)a5 structuredDataRepresentations:(int64_t)a6
{
  v10 = MEMORY[0x1E69AC9E8];
  v11 = a4;
  v12 = a3;
  v13 = [[v10 alloc] initWithKey:&stru_1F0BBC770 table:0 bundleURL:0];
  v14 = [objc_alloc(MEMORY[0x1E69AC7A8]) initWithTitle:v13 subtitle:0 image:0];
  v15 = objc_alloc(MEMORY[0x1E69ACA88]);
  v16 = objc_opt_new();
  v17 = [v15 initWithValue:v12 valueType:v16];

  v18 = *&a5->z;
  v21[0] = *&a5->x;
  v21[1] = v18;
  v21[2] = *&a5->height;
  v19 = [(LNViewEntity *)self initWithValue:v17 interactionID:v11 location:v21 structuredDataRepresentations:a6 displayRepresentation:v14 state:0];

  return v19;
}

- (LNViewEntity)initWithIdentifier:(id)a3 interactionId:(id)a4 location:(LNViewLocation *)a5
{
  v5 = *&a5->z;
  v7[0] = *&a5->x;
  v7[1] = v5;
  v7[2] = *&a5->height;
  return [(LNViewEntity *)self initWithIdentifier:a3 interactionId:a4 location:v7 structuredDataRepresentations:0];
}

- (LNViewEntity)initWithValue:(id)a3 interactionID:(id)a4 location:(LNViewLocation *)a5 structuredDataRepresentations:(int64_t)a6 displayRepresentation:(id)a7 state:(int64_t)a8
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"LNViewEntity.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"LNViewEntity.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"interactionId"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = LNViewEntity;
  v19 = [(LNViewEntity *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_value, a3);
    v20->_interactionId = v17;
    v21 = *&a5->x;
    v22 = *&a5->height;
    *&v20->_location.z = *&a5->z;
    *&v20->_location.height = v22;
    *&v20->_location.x = v21;
    v20->_structuredDataRepresentations = a6;
    objc_storeStrong(&v20->_displayRepresentation, a7);
    v20->_state = a8;
    v23 = v20;
  }

  return v20;
}

@end