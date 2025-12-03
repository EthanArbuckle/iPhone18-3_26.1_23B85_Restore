@interface PKPeerPaymentOnDeviceProvisioningCheck
+ (BOOL)_hasPeerPaymentPassProvisionedForAccount:(id)account passLibraryDataProvider:(id)provider;
+ (BOOL)peerPaymentPassIsProvisionedOnDeviceForAccount:(id)account;
+ (id)_peerPaymentPassForAccount:(id)account passLibraryDataProvider:(id)provider;
@end

@implementation PKPeerPaymentOnDeviceProvisioningCheck

+ (BOOL)_hasPeerPaymentPassProvisionedForAccount:(id)account passLibraryDataProvider:(id)provider
{
  v4 = [self _peerPaymentPassForAccount:account passLibraryDataProvider:provider];
  v5 = [v4 activationState] != 4;

  return v5;
}

+ (id)_peerPaymentPassForAccount:(id)account passLibraryDataProvider:(id)provider
{
  providerCopy = provider;
  associatedPassUniqueID = [account associatedPassUniqueID];
  v7 = [providerCopy passWithUniqueID:associatedPassUniqueID];

  paymentPass = [v7 paymentPass];

  return paymentPass;
}

+ (BOOL)peerPaymentPassIsProvisionedOnDeviceForAccount:(id)account
{
  accountCopy = account;
  v5 = objc_alloc_init(PKPassLibraryDefaultDataProvider);
  LOBYTE(self) = [self peerPaymentPassIsProvisionedOnDeviceForAccount:accountCopy passLibraryDataProvider:v5];

  return self;
}

@end