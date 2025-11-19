@interface LNPhotoItem
- (BOOL)isEqual:(id)a3;
- (LNPhotoItem)initWithCoder:(id)a3;
- (LNPhotoItem)initWithIdentifier:(id)a3 type:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNPhotoItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNPhotoItem *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNPhotoItem *)self type];
  [v4 encodeObject:v6 forKey:@"type"];
}

- (LNPhotoItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(LNPhotoItem *)self initWithIdentifier:v5 type:v6];
    v8 = self;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNPhotoItem *)self identifier];
    v8 = [(LNPhotoItem *)v6 identifier];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNPhotoItem *)self type];
    v16 = [(LNPhotoItem *)v6 type];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (LNPhotoItem)initWithIdentifier:(id)a3 type:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"LNPhotoItemCollection.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"LNPhotoItemCollection.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"type"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = LNPhotoItem;
  v11 = [(LNPhotoItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_type, a4);
  }

  return v12;
}

@end