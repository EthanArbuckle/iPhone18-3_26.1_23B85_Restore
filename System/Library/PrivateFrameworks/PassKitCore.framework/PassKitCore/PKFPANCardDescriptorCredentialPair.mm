@interface PKFPANCardDescriptorCredentialPair
- (PKFPANCardDescriptorCredentialPair)initWithDescriptor:(id)descriptor credential:(id)credential;
@end

@implementation PKFPANCardDescriptorCredentialPair

- (PKFPANCardDescriptorCredentialPair)initWithDescriptor:(id)descriptor credential:(id)credential
{
  descriptorCopy = descriptor;
  credentialCopy = credential;
  v12.receiver = self;
  v12.super_class = PKFPANCardDescriptorCredentialPair;
  v9 = [(PKFPANCardDescriptorCredentialPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    objc_storeStrong(&v10->_credential, credential);
  }

  return v10;
}

@end