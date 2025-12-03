@interface PKAddIdentityDocumentMetadata
- (PKAddIdentityDocumentMetadata)initWithProvisioningCredentialIdentifier:(id)identifier sharingInstanceIdentifier:(id)instanceIdentifier cardTemplateIdentifier:(id)templateIdentifier issuingCountryCode:(id)code documentType:(int64_t)type preview:(id)preview;
@end

@implementation PKAddIdentityDocumentMetadata

- (PKAddIdentityDocumentMetadata)initWithProvisioningCredentialIdentifier:(id)identifier sharingInstanceIdentifier:(id)instanceIdentifier cardTemplateIdentifier:(id)templateIdentifier issuingCountryCode:(id)code documentType:(int64_t)type preview:(id)preview
{
  v8 = 1;
  if (type != 2)
  {
    v8 = 2;
  }

  if (type == 1)
  {
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = PKAddIdentityDocumentMetadata;
  return [(PKIdentityDocumentMetadata *)&v10 initWithProvisioningCredentialIdentifier:identifier sharingInstanceIdentifier:instanceIdentifier cardConfigurationIdentifier:templateIdentifier cardTemplateIdentifier:0 requiresSimultaneousRequestRouting:1 issuingCountryCode:code documentType:v8 preview:preview];
}

@end