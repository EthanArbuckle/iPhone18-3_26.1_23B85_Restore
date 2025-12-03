@interface EMReadLater
- (BOOL)isActive;
- (BOOL)isEqual:(id)equal;
- (EMReadLater)initWithCoder:(id)coder;
- (EMReadLater)initWithDate:(id)date;
- (NSString)description;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMReadLater

- (EMReadLater)initWithDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = EMReadLater;
  v6 = [(EMReadLater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
  }

  return v7;
}

- (NSString)description
{
  date = [(EMReadLater *)self date];
  v3 = [date description];

  return v3;
}

- (BOOL)isActive
{
  date = [(EMReadLater *)self date];
  ef_isEarlierThanNow = [date ef_isEarlierThanNow];

  return ef_isEarlierThanNow;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      date = [(EMReadLater *)self date];
      date2 = [(EMReadLater *)equalCopy date];
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
  date = [(EMReadLater *)self date];
  v3 = [date hash];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  date = [(EMReadLater *)self date];
  v5 = [v3 stringWithFormat:@"date:%@, isActive:%d", date, -[EMReadLater isActive](self, "isActive")];

  return v5;
}

- (EMReadLater)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
  v6 = [(EMReadLater *)self initWithDate:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(EMReadLater *)self date];
  [coderCopy encodeObject:date forKey:@"EFPropertyKey_date"];
}

@end