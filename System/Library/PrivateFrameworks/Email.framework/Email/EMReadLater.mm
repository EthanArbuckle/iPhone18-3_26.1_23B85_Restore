@interface EMReadLater
- (BOOL)isActive;
- (BOOL)isEqual:(id)a3;
- (EMReadLater)initWithCoder:(id)a3;
- (EMReadLater)initWithDate:(id)a3;
- (NSString)description;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMReadLater

- (EMReadLater)initWithDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EMReadLater;
  v6 = [(EMReadLater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, a3);
  }

  return v7;
}

- (NSString)description
{
  v2 = [(EMReadLater *)self date];
  v3 = [v2 description];

  return v3;
}

- (BOOL)isActive
{
  v2 = [(EMReadLater *)self date];
  v3 = [v2 ef_isEarlierThanNow];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(EMReadLater *)self date];
      v6 = [(EMReadLater *)v4 date];
      v7 = EFObjectsAreEqual();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EMReadLater *)self date];
  v3 = [v2 hash];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EMReadLater *)self date];
  v5 = [v3 stringWithFormat:@"date:%@, isActive:%d", v4, -[EMReadLater isActive](self, "isActive")];

  return v5;
}

- (EMReadLater)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
  v6 = [(EMReadLater *)self initWithDate:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(EMReadLater *)self date];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_date"];
}

@end