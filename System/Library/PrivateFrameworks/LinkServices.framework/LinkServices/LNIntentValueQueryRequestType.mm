@interface LNIntentValueQueryRequestType
- (BOOL)isEqual:(id)equal;
- (LNIntentValueQueryRequestType)initWithCoder:(id)coder;
- (LNIntentValueQueryRequestType)initWithValue:(id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNIntentValueQueryRequestType

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
      value = [(LNIntentValueQueryRequestType *)self value];
      value2 = [(LNIntentValueQueryRequestType *)v6 value];
      v9 = value;
      v10 = value2;
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
  value = [(LNIntentValueQueryRequestType *)self value];
  v3 = [value hash];

  return v3;
}

- (LNIntentValueQueryRequestType)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 setWithObjects:{objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"value"];

  if (v7)
  {
    self = [(LNIntentValueQueryRequestType *)self initWithValue:v7];
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
  value = [(LNIntentValueQueryRequestType *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (LNIntentValueQueryRequestType)initWithValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQueryRequestConfiguration.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  v12.receiver = self;
  v12.super_class = LNIntentValueQueryRequestType;
  _init = [(LNQueryRequestTypeBase *)&v12 _init];
  v8 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, value);
    v9 = v8;
  }

  return v8;
}

@end