@interface LNEntityQueryRequestType
- (BOOL)isEqual:(id)equal;
- (LNEntityQueryRequestType)initWithCoder:(id)coder;
- (LNEntityQueryRequestType)initWithEntityIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEntityQueryRequestType

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
      identifiers = [(LNEntityQueryRequestType *)self identifiers];
      identifiers2 = [(LNEntityQueryRequestType *)v6 identifiers];
      v9 = identifiers;
      v10 = identifiers2;
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

- (LNEntityQueryRequestType)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifiers"];

  v9 = [(LNEntityQueryRequestType *)self initWithEntityIdentifiers:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifiers = [(LNEntityQueryRequestType *)self identifiers];
  [coderCopy encodeObject:identifiers forKey:@"identifiers"];
}

- (LNEntityQueryRequestType)initWithEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v10.receiver = self;
  v10.super_class = LNEntityQueryRequestType;
  _init = [(LNQueryRequestTypeBase *)&v10 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, identifiers);
    v8 = v7;
  }

  return v7;
}

@end