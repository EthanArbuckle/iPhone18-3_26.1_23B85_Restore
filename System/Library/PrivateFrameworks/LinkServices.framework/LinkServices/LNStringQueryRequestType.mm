@interface LNStringQueryRequestType
- (BOOL)isEqual:(id)a3;
- (LNStringQueryRequestType)initWithCoder:(id)a3;
- (LNStringQueryRequestType)initWithQueryString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNStringQueryRequestType

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
      v7 = [(LNStringQueryRequestType *)self queryString];
      v8 = [(LNStringQueryRequestType *)v6 queryString];
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

- (LNStringQueryRequestType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryString"];

  v6 = [(LNStringQueryRequestType *)self initWithQueryString:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNStringQueryRequestType *)self queryString];
  [v4 encodeObject:v5 forKey:@"queryString"];
}

- (LNStringQueryRequestType)initWithQueryString:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNStringQueryRequestType;
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