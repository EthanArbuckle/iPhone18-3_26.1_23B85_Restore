@interface LNViewAction
- (LNViewAction)initWithActionIdentifier:(id)a3 viewIdentifier:(int64_t)a4 location:(LNViewLocation *)a5;
- (LNViewAction)initWithCoder:(id)a3;
- (LNViewLocation)location;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNViewAction

- (LNViewLocation)location
{
  v3 = *&self->depth;
  *&retstr->x = *&self->width;
  *&retstr->z = v3;
  *&retstr->height = *&self[1].y;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(LNViewAction *)self actionIdentifier];
  [v5 encodeObject:v4 forKey:@"actionIdentifier"];

  [v5 encodeInteger:-[LNViewAction viewIdentifier](self forKey:{"viewIdentifier"), @"viewIdentifier"}];
  [v5 encodeBytes:&self->_location length:48 forKey:@"location"];
}

- (LNViewAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"viewIdentifier"];
  if (v5)
  {
    v7 = v6;
    v14 = 0;
    v8 = [v4 decodeBytesForKey:@"location" returnedLength:&v14];
    v9 = 0;
    if (v8 && v14 == 48)
    {
      v10 = *v8;
      v11 = v8[2];
      v13[1] = v8[1];
      v13[2] = v11;
      v13[0] = v10;
      self = [(LNViewAction *)self initWithActionIdentifier:v5 viewIdentifier:v7 location:v13];
      v9 = self;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNViewAction *)self actionIdentifier];
  v5 = [(LNViewAction *)self viewIdentifier];
  v6 = LNViewLocationAsString(&self->_location);
  v7 = [v3 stringWithFormat:@"%@(%ld) @ %@", v4, v5, v6];

  return v7;
}

- (LNViewAction)initWithActionIdentifier:(id)a3 viewIdentifier:(int64_t)a4 location:(LNViewLocation *)a5
{
  v10 = a3;
  if (v10)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNViewAction.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNViewAction.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"viewIdentifier"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNViewAction;
  v11 = [(LNViewAction *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionIdentifier, a3);
    v12->_viewIdentifier = a4;
    v13 = *&a5->x;
    v14 = *&a5->z;
    *&v12->_location.height = *&a5->height;
    *&v12->_location.z = v14;
    *&v12->_location.x = v13;
    v15 = v12;
  }

  return v12;
}

@end