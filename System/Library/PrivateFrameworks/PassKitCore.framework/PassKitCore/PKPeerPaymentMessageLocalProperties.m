@interface PKPeerPaymentMessageLocalProperties
- (PKPeerPaymentMessageLocalProperties)initWithCoder:(id)a3;
- (PKPeerPaymentMessageLocalProperties)initWithSource:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentMessageLocalProperties

- (PKPeerPaymentMessageLocalProperties)initWithSource:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentMessageLocalProperties;
  result = [(PKPeerPaymentMessageLocalProperties *)&v5 init];
  if (result)
  {
    result->_source = a3;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  v5 = a3;
  [v5 encodeInteger:source forKey:@"source"];
  [v5 encodeObject:self->_analyticsSessionToken forKey:@"analyticsSessionToken"];
}

- (PKPeerPaymentMessageLocalProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentMessageLocalProperties;
  v5 = [(PKPeerPaymentMessageLocalProperties *)&v9 init];
  if (v5)
  {
    v5->_source = [v4 decodeIntegerForKey:@"source"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsSessionToken"];
    analyticsSessionToken = v5->_analyticsSessionToken;
    v5->_analyticsSessionToken = v6;
  }

  return v5;
}

@end