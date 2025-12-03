@interface EMSearchableMessageID
- (BOOL)isEqual:(id)equal;
- (EMSearchableMessageID)initWithCoder:(id)coder;
- (EMSearchableMessageID)initWithString:(id)string;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMSearchableMessageID

- (EMSearchableMessageID)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = EMSearchableMessageID;
  v5 = [(EMSearchableMessageID *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (EMSearchableMessageID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_stringValue"];
  v6 = [(EMSearchableMessageID *)self initWithString:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(EMSearchableMessageID *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"EFPropertyKey_stringValue"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [(EMSearchableMessageID *)self stringValue];
    stringValue2 = [equalCopy stringValue];
    v7 = [stringValue isEqualToString:stringValue2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  stringValue = [(EMSearchableMessageID *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

@end