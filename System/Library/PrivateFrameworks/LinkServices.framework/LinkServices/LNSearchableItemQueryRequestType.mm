@interface LNSearchableItemQueryRequestType
- (BOOL)isEqual:(id)equal;
- (LNSearchableItemQueryRequestType)initWithCoder:(id)coder;
- (LNSearchableItemQueryRequestType)initWithSearchableItems:(id)items;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSearchableItemQueryRequestType

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
      items = [(LNSearchableItemQueryRequestType *)self items];
      items2 = [(LNSearchableItemQueryRequestType *)v6 items];
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
          v13 = [MEMORY[0x1E695DFD8] setWithArray:v9];
          v14 = [MEMORY[0x1E695DFD8] setWithArray:v11];
          v12 = [v13 isEqualToSet:v14];
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

- (LNSearchableItemQueryRequestType)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"items"];

  if (v8)
  {
    self = [(LNSearchableItemQueryRequestType *)self initWithSearchableItems:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  items = [(LNSearchableItemQueryRequestType *)self items];
  [coderCopy encodeObject:items forKey:@"items"];
}

- (LNSearchableItemQueryRequestType)initWithSearchableItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQueryRequestConfiguration.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v12.receiver = self;
  v12.super_class = LNSearchableItemQueryRequestType;
  _init = [(LNQueryRequestTypeBase *)&v12 _init];
  v8 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, items);
    v9 = v8;
  }

  return v8;
}

@end