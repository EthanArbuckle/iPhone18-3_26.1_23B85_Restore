@interface PKSearchTransactionPeerPaymentSubTypeResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKSearchTransactionPeerPaymentSubTypeResult)initWithCoder:(id)a3;
@end

@implementation PKSearchTransactionPeerPaymentSubTypeResult

- (PKSearchTransactionPeerPaymentSubTypeResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchTransactionPeerPaymentSubTypeResult *)self init];
  if (v5)
  {
    v5->_subType = [v4 decodeIntegerForKey:@"subType"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_subType == v4[1];

  return v5;
}

@end