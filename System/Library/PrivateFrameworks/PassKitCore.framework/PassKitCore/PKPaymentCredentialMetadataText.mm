@interface PKPaymentCredentialMetadataText
- (PKPaymentCredentialMetadataText)initWithConfiguration:(id)configuration;
@end

@implementation PKPaymentCredentialMetadataText

- (PKPaymentCredentialMetadataText)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = PKPaymentCredentialMetadataText;
  return [(PKPaymentCredentialMetadata *)&v4 initWithConfiguration:configuration];
}

@end