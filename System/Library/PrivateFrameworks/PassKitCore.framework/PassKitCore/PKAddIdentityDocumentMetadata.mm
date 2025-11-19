@interface PKAddIdentityDocumentMetadata
- (PKAddIdentityDocumentMetadata)initWithProvisioningCredentialIdentifier:(id)a3 sharingInstanceIdentifier:(id)a4 cardTemplateIdentifier:(id)a5 issuingCountryCode:(id)a6 documentType:(int64_t)a7 preview:(id)a8;
@end

@implementation PKAddIdentityDocumentMetadata

- (PKAddIdentityDocumentMetadata)initWithProvisioningCredentialIdentifier:(id)a3 sharingInstanceIdentifier:(id)a4 cardTemplateIdentifier:(id)a5 issuingCountryCode:(id)a6 documentType:(int64_t)a7 preview:(id)a8
{
  v8 = 1;
  if (a7 != 2)
  {
    v8 = 2;
  }

  if (a7 == 1)
  {
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = PKAddIdentityDocumentMetadata;
  return [(PKIdentityDocumentMetadata *)&v10 initWithProvisioningCredentialIdentifier:a3 sharingInstanceIdentifier:a4 cardConfigurationIdentifier:a5 cardTemplateIdentifier:0 requiresSimultaneousRequestRouting:1 issuingCountryCode:a6 documentType:v8 preview:a8];
}

@end