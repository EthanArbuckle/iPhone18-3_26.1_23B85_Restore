@interface PKAuxiliaryCapabilityWebServiceRequest
- (PKAuxiliaryCapabilityWebServiceRequest)initWithPass:(id)a3;
@end

@implementation PKAuxiliaryCapabilityWebServiceRequest

- (PKAuxiliaryCapabilityWebServiceRequest)initWithPass:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKAuxiliaryCapabilityWebServiceRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
  }

  return v7;
}

@end