@interface PKCredentialRegistrationMetadata
- (PKCredentialRegistrationMetadata)initWithProductType:(int64_t)type;
@end

@implementation PKCredentialRegistrationMetadata

- (PKCredentialRegistrationMetadata)initWithProductType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PKCredentialRegistrationMetadata;
  result = [(PKCredentialRegistrationMetadata *)&v5 init];
  if (result)
  {
    result->_productType = type;
  }

  return result;
}

@end