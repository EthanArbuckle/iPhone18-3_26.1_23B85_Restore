@interface LNEntityQueryRequestType
- (BOOL)isEqual:(id)a3;
- (LNEntityQueryRequestType)initWithCoder:(id)a3;
- (LNEntityQueryRequestType)initWithEntityIdentifiers:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEntityQueryRequestType

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
      v7 = [(LNEntityQueryRequestType *)self identifiers];
      v8 = [(LNEntityQueryRequestType *)v6 identifiers];
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

- (LNEntityQueryRequestType)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"identifiers"];

  v9 = [(LNEntityQueryRequestType *)self initWithEntityIdentifiers:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNEntityQueryRequestType *)self identifiers];
  [v4 encodeObject:v5 forKey:@"identifiers"];
}

- (LNEntityQueryRequestType)initWithEntityIdentifiers:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNEntityQueryRequestType;
  v6 = [(LNQueryRequestTypeBase *)&v10 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
    v8 = v7;
  }

  return v7;
}

@end