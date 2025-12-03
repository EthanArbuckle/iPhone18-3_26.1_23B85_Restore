@interface PKPeerPaymentMessageLocalProperties
- (PKPeerPaymentMessageLocalProperties)initWithCoder:(id)coder;
- (PKPeerPaymentMessageLocalProperties)initWithSource:(unint64_t)source;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentMessageLocalProperties

- (PKPeerPaymentMessageLocalProperties)initWithSource:(unint64_t)source
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentMessageLocalProperties;
  result = [(PKPeerPaymentMessageLocalProperties *)&v5 init];
  if (result)
  {
    result->_source = source;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  coderCopy = coder;
  [coderCopy encodeInteger:source forKey:@"source"];
  [coderCopy encodeObject:self->_analyticsSessionToken forKey:@"analyticsSessionToken"];
}

- (PKPeerPaymentMessageLocalProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentMessageLocalProperties;
  v5 = [(PKPeerPaymentMessageLocalProperties *)&v9 init];
  if (v5)
  {
    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsSessionToken"];
    analyticsSessionToken = v5->_analyticsSessionToken;
    v5->_analyticsSessionToken = v6;
  }

  return v5;
}

@end