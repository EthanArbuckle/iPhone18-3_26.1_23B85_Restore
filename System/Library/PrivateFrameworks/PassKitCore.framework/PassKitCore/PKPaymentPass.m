@interface PKPaymentPass
- (FKPaymentPass)fkPaymentPass;
- (PKPaymentPassActivationState)activationState;
@end

@implementation PKPaymentPass

- (FKPaymentPass)fkPaymentPass
{
  v3 = objc_alloc_init(MEMORY[0x1E6967E28]);
  v4 = [(PKObject *)self uniqueID];
  [v3 setUniqueID:v4];

  v5 = [(PKPass *)self serialNumber];
  [v3 setSerialNumber:v5];

  v6 = [(PKPass *)self passTypeIdentifier];
  [v3 setPassTypeIdentifier:v6];

  v7 = [(PKSecureElementPass *)self associatedApplicationIdentifiers];
  [v3 setAssociatedApplicationIdentifiers:v7];

  v8 = [(PKPass *)self storeIdentifiers];
  [v3 setAssociatedStoreIdentifiers:v8];

  v9 = [(PKSecureElementPass *)self issuerCountryCode];
  [v3 setIssuerCountryCode:v9];

  v10 = [(PKSecureElementPass *)self primaryAccountIdentifier];
  [v3 setPrimaryAccountIdentifier:v10];

  v11 = [(PKPass *)self organizationName];
  [v3 setOrganizationName:v11];

  v12 = [(PKPass *)self localizedDescription];
  [v3 setLocalizedDescription:v12];

  v13 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v14 = PKPaymentMethodTypeToString([v13 paymentType]);
  [v3 setPrimaryPaymentApplicationPaymentType:v14];

  v15 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v16 = [v15 displayName];
  [v3 setPrimaryPaymentApplicationDisplayName:v16];

  return v3;
}

- (PKPaymentPassActivationState)activationState
{
  v3.receiver = self;
  v3.super_class = PKPaymentPass;
  return [(PKSecureElementPass *)&v3 passActivationState];
}

@end