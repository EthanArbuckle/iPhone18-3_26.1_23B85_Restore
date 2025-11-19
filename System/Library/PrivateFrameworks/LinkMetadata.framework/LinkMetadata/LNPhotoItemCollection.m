@interface LNPhotoItemCollection
- (BOOL)isEqual:(id)a3;
- (LNPhotoItemCollection)initWithCoder:(id)a3;
- (LNPhotoItemCollection)initWithItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNPhotoItemCollection

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNPhotoItemCollection *)self items];
  [v4 encodeObject:v5 forKey:@"items"];
}

- (LNPhotoItemCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"items"];

  if (v5)
  {
    self = [(LNPhotoItemCollection *)self initWithItems:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNPhotoItemCollection *)self items];
      v8 = [(LNPhotoItemCollection *)v6 items];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqualToArray:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (LNPhotoItemCollection)initWithItems:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"LNPhotoItemCollection.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v11.receiver = self;
  v11.super_class = LNPhotoItemCollection;
  v7 = [(LNPhotoItemCollection *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_items, a3);
  }

  return v8;
}

@end