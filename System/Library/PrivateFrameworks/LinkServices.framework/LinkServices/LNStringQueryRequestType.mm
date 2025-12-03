@interface LNStringQueryRequestType
- (BOOL)isEqual:(id)equal;
- (LNStringQueryRequestType)initWithCoder:(id)coder;
- (LNStringQueryRequestType)initWithQueryString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNStringQueryRequestType

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
      queryString = [(LNStringQueryRequestType *)self queryString];
      queryString2 = [(LNStringQueryRequestType *)v6 queryString];
      v9 = queryString;
      v10 = queryString2;
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
          v12 = [v9 isEqualToString:v10];
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

- (LNStringQueryRequestType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryString"];

  v6 = [(LNStringQueryRequestType *)self initWithQueryString:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  queryString = [(LNStringQueryRequestType *)self queryString];
  [coderCopy encodeObject:queryString forKey:@"queryString"];
}

- (LNStringQueryRequestType)initWithQueryString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = LNStringQueryRequestType;
  _init = [(LNQueryRequestTypeBase *)&v10 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, string);
    v8 = v7;
  }

  return v7;
}

@end