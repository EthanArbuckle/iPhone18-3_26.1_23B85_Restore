@interface EMSearchableMessageID
- (BOOL)isEqual:(id)a3;
- (EMSearchableMessageID)initWithCoder:(id)a3;
- (EMSearchableMessageID)initWithString:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMSearchableMessageID

- (EMSearchableMessageID)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMSearchableMessageID;
  v5 = [(EMSearchableMessageID *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (EMSearchableMessageID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_stringValue"];
  v6 = [(EMSearchableMessageID *)self initWithString:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(EMSearchableMessageID *)self stringValue];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_stringValue"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(EMSearchableMessageID *)self stringValue];
    v6 = [v4 stringValue];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EMSearchableMessageID *)self stringValue];
  v3 = [v2 hash];

  return v3;
}

@end