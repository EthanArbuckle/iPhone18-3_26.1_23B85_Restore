@interface LNIntentValueQueryRequestType
- (BOOL)isEqual:(id)a3;
- (LNIntentValueQueryRequestType)initWithCoder:(id)a3;
- (LNIntentValueQueryRequestType)initWithValue:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNIntentValueQueryRequestType

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
      v7 = [(LNIntentValueQueryRequestType *)self value];
      v8 = [(LNIntentValueQueryRequestType *)v6 value];
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
          v12 = [v9 isEqual:v10];
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

- (unint64_t)hash
{
  v2 = [(LNIntentValueQueryRequestType *)self value];
  v3 = [v2 hash];

  return v3;
}

- (LNIntentValueQueryRequestType)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithObjects:{objc_opt_class(), 0}];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"value"];

  if (v7)
  {
    self = [(LNIntentValueQueryRequestType *)self initWithValue:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNIntentValueQueryRequestType *)self value];
  [v4 encodeObject:v5 forKey:@"value"];
}

- (LNIntentValueQueryRequestType)initWithValue:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNQueryRequestConfiguration.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  v12.receiver = self;
  v12.super_class = LNIntentValueQueryRequestType;
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