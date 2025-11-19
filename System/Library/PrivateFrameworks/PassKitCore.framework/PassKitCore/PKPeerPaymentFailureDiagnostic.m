@interface PKPeerPaymentFailureDiagnostic
- (PKPeerPaymentFailureDiagnostic)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentFailureDiagnostic

- (PKPeerPaymentFailureDiagnostic)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentFailureDiagnostic;
  v5 = [(PKPeerPaymentFailureDiagnostic *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5->_flowType = [v4 decodeIntegerForKey:@"flowType"];
    v5->_reasonCode = [v4 decodeIntegerForKey:@"reasonCode"];
    v5->_role = [v4 decodeIntegerForKey:@"role"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  error = self->_error;
  v5 = a3;
  [v5 encodeObject:error forKey:@"error"];
  [v5 encodeInteger:self->_flowType forKey:@"flowType"];
  [v5 encodeInteger:self->_reasonCode forKey:@"reasonCode"];
  [v5 encodeInteger:self->_role forKey:@"role"];
  [v5 encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
}

@end