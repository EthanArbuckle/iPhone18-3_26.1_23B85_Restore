@interface LNPhotoItemCollection
- (BOOL)isEqual:(id)equal;
- (LNPhotoItemCollection)initWithCoder:(id)coder;
- (LNPhotoItemCollection)initWithItems:(id)items;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNPhotoItemCollection

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  items = [(LNPhotoItemCollection *)self items];
  [coderCopy encodeObject:items forKey:@"items"];
}

- (LNPhotoItemCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"items"];

  if (v5)
  {
    self = [(LNPhotoItemCollection *)self initWithItems:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      items = [(LNPhotoItemCollection *)self items];
      items2 = [(LNPhotoItemCollection *)v6 items];
      v9 = items;
      v10 = items2;
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

- (LNPhotoItemCollection)initWithItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPhotoItemCollection.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v11.receiver = self;
  v11.super_class = LNPhotoItemCollection;
  v7 = [(LNPhotoItemCollection *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_items, items);
  }

  return v8;
}

@end