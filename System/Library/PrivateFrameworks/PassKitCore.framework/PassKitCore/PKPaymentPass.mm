@interface PKPaymentPass
- (FKPaymentPass)fkPaymentPass;
- (PKPaymentPassActivationState)activationState;
@end

@implementation PKPaymentPass

- (FKPaymentPass)fkPaymentPass
{
  v3 = objc_alloc_init(MEMORY[0x1E6967E28]);
  uniqueID = [(PKObject *)self uniqueID];
  [v3 setUniqueID:uniqueID];

  serialNumber = [(PKPass *)self serialNumber];
  [v3 setSerialNumber:serialNumber];

  passTypeIdentifier = [(PKPass *)self passTypeIdentifier];
  [v3 setPassTypeIdentifier:passTypeIdentifier];

  associatedApplicationIdentifiers = [(PKSecureElementPass *)self associatedApplicationIdentifiers];
  [v3 setAssociatedApplicationIdentifiers:associatedApplicationIdentifiers];

  storeIdentifiers = [(PKPass *)self storeIdentifiers];
  [v3 setAssociatedStoreIdentifiers:storeIdentifiers];

  issuerCountryCode = [(PKSecureElementPass *)self issuerCountryCode];
  [v3 setIssuerCountryCode:issuerCountryCode];

  primaryAccountIdentifier = [(PKSecureElementPass *)self primaryAccountIdentifier];
  [v3 setPrimaryAccountIdentifier:primaryAccountIdentifier];

  organizationName = [(PKPass *)self organizationName];
  [v3 setOrganizationName:organizationName];

  localizedDescription = [(PKPass *)self localizedDescription];
  [v3 setLocalizedDescription:localizedDescription];

  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v14 = PKPaymentMethodTypeToString([devicePrimaryPaymentApplication paymentType]);
  [v3 setPrimaryPaymentApplicationPaymentType:v14];

  devicePrimaryPaymentApplication2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  displayName = [devicePrimaryPaymentApplication2 displayName];
  [v3 setPrimaryPaymentApplicationDisplayName:displayName];

  return v3;
}

- (PKPaymentPassActivationState)activationState
{
  v3.receiver = self;
  v3.super_class = PKPaymentPass;
  return [(PKSecureElementPass *)&v3 passActivationState];
}

@end