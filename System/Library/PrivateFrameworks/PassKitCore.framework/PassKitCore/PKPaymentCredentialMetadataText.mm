@interface PKPaymentCredentialMetadataText
- (PKPaymentCredentialMetadataText)initWithConfiguration:(id)a3;
@end

@implementation PKPaymentCredentialMetadataText

- (PKPaymentCredentialMetadataText)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentCredentialMetadataText;
  return [(PKPaymentCredentialMetadata *)&v4 initWithConfiguration:a3];
}

@end