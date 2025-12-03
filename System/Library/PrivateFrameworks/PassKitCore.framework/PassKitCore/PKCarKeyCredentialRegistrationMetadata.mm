@interface PKCarKeyCredentialRegistrationMetadata
- (PKCarKeyCredentialRegistrationMetadata)initWithMake:(id)make model:(id)model keyType:(int64_t)type;
@end

@implementation PKCarKeyCredentialRegistrationMetadata

- (PKCarKeyCredentialRegistrationMetadata)initWithMake:(id)make model:(id)model keyType:(int64_t)type
{
  makeCopy = make;
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = PKCarKeyCredentialRegistrationMetadata;
  v11 = [(PKCredentialRegistrationMetadata *)&v14 initWithProductType:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_make, make);
    objc_storeStrong(&v12->_model, model);
    v12->_keyType = type;
  }

  return v12;
}

@end