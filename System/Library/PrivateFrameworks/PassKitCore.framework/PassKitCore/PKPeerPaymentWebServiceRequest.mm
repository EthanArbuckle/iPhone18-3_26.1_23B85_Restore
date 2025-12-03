@interface PKPeerPaymentWebServiceRequest
- (id)_murlRequestWithServiceURL:(id)l endpointComponents:(id)components queryParameters:(id)parameters appleAccountInformation:(id)information;
- (id)_murlRequestWithURL:(id)l;
@end

@implementation PKPeerPaymentWebServiceRequest

- (id)_murlRequestWithServiceURL:(id)l endpointComponents:(id)components queryParameters:(id)parameters appleAccountInformation:(id)information
{
  informationCopy = information;
  parametersCopy = parameters;
  componentsCopy = components;
  v13 = [l URLByAppendingPathComponent:@"v4"];
  v16.receiver = self;
  v16.super_class = PKPeerPaymentWebServiceRequest;
  v14 = [(PKWebServiceRequest *)&v16 _murlRequestWithServiceURL:v13 endpointComponents:componentsCopy queryParameters:parametersCopy appleAccountInformation:informationCopy];

  return v14;
}

- (id)_murlRequestWithURL:(id)l
{
  v12.receiver = self;
  v12.super_class = PKPeerPaymentWebServiceRequest;
  v4 = [(PKWebServiceRequest *)&v12 _murlRequestWithURL:l];
  targetDevice = self->_targetDevice;
  if (!targetDevice || (-[PKPeerPaymentWebServiceTargetDeviceProtocol bridgedClientInfo](targetDevice, "bridgedClientInfo"), v6 = objc_claimAutoreleasedReturnValue(), [v4 setValue:v6 forHTTPHeaderField:@"X-Apple-Bridged-Client-Info"], v6, -[PKPeerPaymentWebServiceTargetDeviceProtocol secureElementIdentifiers](self->_targetDevice, "secureElementIdentifiers"), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = +[PKSecureElement secureElementIdentifiers];
  }

  v8 = [v7 componentsJoinedByString:{@", "}];
  [v4 setValue:v8 forHTTPHeaderField:@"x-apple-seid"];
  if (objc_opt_respondsToSelector())
  {
    deviceRegion = [(PKPeerPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    [v4 setValue:deviceRegion forHTTPHeaderField:@"X-Apple-Device-Region"];
  }

  v10 = PKRequestFireWireIDHeaderValue();
  if ([v10 length])
  {
    [v4 setValue:v10 forHTTPHeaderField:@"x-firewire-id"];
  }

  return v4;
}

@end