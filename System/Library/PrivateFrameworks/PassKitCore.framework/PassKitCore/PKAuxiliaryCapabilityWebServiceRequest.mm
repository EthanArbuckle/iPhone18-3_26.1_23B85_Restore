@interface PKAuxiliaryCapabilityWebServiceRequest
- (PKAuxiliaryCapabilityWebServiceRequest)initWithPass:(id)pass;
@end

@implementation PKAuxiliaryCapabilityWebServiceRequest

- (PKAuxiliaryCapabilityWebServiceRequest)initWithPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = PKAuxiliaryCapabilityWebServiceRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
  }

  return v7;
}

@end