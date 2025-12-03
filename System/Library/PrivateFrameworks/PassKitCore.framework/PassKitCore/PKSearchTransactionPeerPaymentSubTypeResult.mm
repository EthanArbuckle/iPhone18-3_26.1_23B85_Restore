@interface PKSearchTransactionPeerPaymentSubTypeResult
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKSearchTransactionPeerPaymentSubTypeResult)initWithCoder:(id)coder;
@end

@implementation PKSearchTransactionPeerPaymentSubTypeResult

- (PKSearchTransactionPeerPaymentSubTypeResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchTransactionPeerPaymentSubTypeResult *)self init];
  if (v5)
  {
    v5->_subType = [coderCopy decodeIntegerForKey:@"subType"];
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchTransactionPeerPaymentSubTypeResult;
  v3 = [(PKSearchTransactionPeerPaymentSubTypeResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"subType: '%lu'; ", self->_subType];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_subType == equalCopy[1];

  return v5;
}

@end