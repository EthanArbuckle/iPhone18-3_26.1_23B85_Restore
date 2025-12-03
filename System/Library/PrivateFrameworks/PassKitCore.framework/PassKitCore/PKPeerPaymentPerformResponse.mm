@interface PKPeerPaymentPerformResponse
- (PKPeerPaymentPerformResponse)initWithCoder:(id)coder;
- (PKPeerPaymentPerformResponse)initWithData:(id)data deviceScoreIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentPerformResponse

- (PKPeerPaymentPerformResponse)initWithData:(id)data deviceScoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentPerformResponse;
  v7 = [(PKPeerPaymentStatusResponse *)&v11 initWithData:data];
  if (v7)
  {
    v8 = [identifierCopy copy];
    deviceScoreIdentifier = v7->_deviceScoreIdentifier;
    v7->_deviceScoreIdentifier = v8;
  }

  return v7;
}

- (PKPeerPaymentPerformResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentPerformResponse;
  v5 = [(PKWebServiceResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceScoreIdentifier"];
    v7 = [v6 copy];
    deviceScoreIdentifier = v5->_deviceScoreIdentifier;
    v5->_deviceScoreIdentifier = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentPerformResponse;
  coderCopy = coder;
  [(PKWebServiceResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_deviceScoreIdentifier forKey:{@"deviceScoreIdentifier", v5.receiver, v5.super_class}];
}

@end