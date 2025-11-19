@interface PKPeerPaymentPerformResponse
- (PKPeerPaymentPerformResponse)initWithCoder:(id)a3;
- (PKPeerPaymentPerformResponse)initWithData:(id)a3 deviceScoreIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentPerformResponse

- (PKPeerPaymentPerformResponse)initWithData:(id)a3 deviceScoreIdentifier:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentPerformResponse;
  v7 = [(PKPeerPaymentStatusResponse *)&v11 initWithData:a3];
  if (v7)
  {
    v8 = [v6 copy];
    deviceScoreIdentifier = v7->_deviceScoreIdentifier;
    v7->_deviceScoreIdentifier = v8;
  }

  return v7;
}

- (PKPeerPaymentPerformResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentPerformResponse;
  v5 = [(PKWebServiceResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceScoreIdentifier"];
    v7 = [v6 copy];
    deviceScoreIdentifier = v5->_deviceScoreIdentifier;
    v5->_deviceScoreIdentifier = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentPerformResponse;
  v4 = a3;
  [(PKWebServiceResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_deviceScoreIdentifier forKey:{@"deviceScoreIdentifier", v5.receiver, v5.super_class}];
}

@end