@interface LNContentType
- (BOOL)isEqual:(id)a3;
- (LNContentType)initWithCoder:(id)a3;
- (LNContentType)initWithContentType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNContentType

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNContentType *)self contentType];
  [v4 encodeObject:v5 forKey:@"contentType"];
}

- (LNContentType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];

  v6 = [(LNContentType *)self initWithContentType:v5];
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
      v7 = [(LNContentType *)self contentType];
      v8 = [(LNContentType *)v6 contentType];
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

- (unint64_t)hash
{
  v2 = [(LNContentType *)self contentType];
  v3 = [v2 hash];

  return v3;
}

- (LNContentType)initWithContentType:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNContentType;
  v6 = [(LNContentType *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentType, a3);
    v8 = v7;
  }

  return v7;
}

@end