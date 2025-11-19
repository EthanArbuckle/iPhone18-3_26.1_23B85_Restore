@interface PKFPANCardDescriptorCredentialPair
- (PKFPANCardDescriptorCredentialPair)initWithDescriptor:(id)a3 credential:(id)a4;
@end

@implementation PKFPANCardDescriptorCredentialPair

- (PKFPANCardDescriptorCredentialPair)initWithDescriptor:(id)a3 credential:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKFPANCardDescriptorCredentialPair;
  v9 = [(PKFPANCardDescriptorCredentialPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
    objc_storeStrong(&v10->_credential, a4);
  }

  return v10;
}

@end