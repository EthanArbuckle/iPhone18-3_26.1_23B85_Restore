@interface PKSearchTagResult
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKSearchTagResult)initWithCoder:(id)coder;
- (unint64_t)hash;
@end

@implementation PKSearchTagResult

- (PKSearchTagResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchTagResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v6;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchTagResult;
  v3 = [(PKSearchTagResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"tag: '%@'; ", self->_tag];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tag = self->_tag;
    v6 = equalCopy[1];
    if (tag && v6)
    {
      v7 = [(PKPaymentTransactionTag *)tag isEqual:?];
    }

    else
    {
      v7 = tag == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self->_tag;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = PKCombinedHash(17, v2);

  return v3;
}

@end