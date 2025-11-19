@interface PKCarKeyCredentialRegistrationMetadata
- (PKCarKeyCredentialRegistrationMetadata)initWithMake:(id)a3 model:(id)a4 keyType:(int64_t)a5;
@end

@implementation PKCarKeyCredentialRegistrationMetadata

- (PKCarKeyCredentialRegistrationMetadata)initWithMake:(id)a3 model:(id)a4 keyType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKCarKeyCredentialRegistrationMetadata;
  v11 = [(PKCredentialRegistrationMetadata *)&v14 initWithProductType:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_make, a3);
    objc_storeStrong(&v12->_model, a4);
    v12->_keyType = a5;
  }

  return v12;
}

@end