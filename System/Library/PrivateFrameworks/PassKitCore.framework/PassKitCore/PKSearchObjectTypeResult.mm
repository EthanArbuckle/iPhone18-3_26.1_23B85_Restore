@interface PKSearchObjectTypeResult
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)typeName;
- (PKSearchObjectTypeResult)initWithCoder:(id)coder;
@end

@implementation PKSearchObjectTypeResult

- (NSString)typeName
{
  v3 = self->_type - 1;
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = PKLocalizedString(&off_1E79CC920[v3]->isa, 0);
  }

  return v4;
}

- (PKSearchObjectTypeResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchObjectTypeResult *)self init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchObjectTypeResult;
  v3 = [(PKSearchObjectTypeResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"type: '%ld'; ", self->_type];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy[1];

  return v5;
}

@end