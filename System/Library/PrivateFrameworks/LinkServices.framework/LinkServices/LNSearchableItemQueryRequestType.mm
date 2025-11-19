@interface LNSearchableItemQueryRequestType
- (BOOL)isEqual:(id)a3;
- (LNSearchableItemQueryRequestType)initWithCoder:(id)a3;
- (LNSearchableItemQueryRequestType)initWithSearchableItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSearchableItemQueryRequestType

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
      v7 = [(LNSearchableItemQueryRequestType *)self items];
      v8 = [(LNSearchableItemQueryRequestType *)v6 items];
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

- (LNSearchableItemQueryRequestType)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"items"];

  if (v8)
  {
    self = [(LNSearchableItemQueryRequestType *)self initWithSearchableItems:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSearchableItemQueryRequestType *)self items];
  [v4 encodeObject:v5 forKey:@"items"];
}

- (LNSearchableItemQueryRequestType)initWithSearchableItems:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNQueryRequestConfiguration.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v12.receiver = self;
  v12.super_class = LNSearchableItemQueryRequestType;
  v7 = [(LNQueryRequestTypeBase *)&v12 _init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 1, a3);
    v9 = v8;
  }

  return v8;
}

@end