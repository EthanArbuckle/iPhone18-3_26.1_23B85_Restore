@interface PKPeerPaymentFailureDiagnostic
- (PKPeerPaymentFailureDiagnostic)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentFailureDiagnostic

- (PKPeerPaymentFailureDiagnostic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentFailureDiagnostic;
  v5 = [(PKPeerPaymentFailureDiagnostic *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5->_flowType = [coderCopy decodeIntegerForKey:@"flowType"];
    v5->_reasonCode = [coderCopy decodeIntegerForKey:@"reasonCode"];
    v5->_role = [coderCopy decodeIntegerForKey:@"role"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  error = self->_error;
  coderCopy = coder;
  [coderCopy encodeObject:error forKey:@"error"];
  [coderCopy encodeInteger:self->_flowType forKey:@"flowType"];
  [coderCopy encodeInteger:self->_reasonCode forKey:@"reasonCode"];
  [coderCopy encodeInteger:self->_role forKey:@"role"];
  [coderCopy encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
}

@end