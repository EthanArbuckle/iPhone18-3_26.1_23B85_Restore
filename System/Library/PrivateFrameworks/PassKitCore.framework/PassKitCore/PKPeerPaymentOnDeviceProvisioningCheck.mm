@interface PKPeerPaymentOnDeviceProvisioningCheck
+ (BOOL)_hasPeerPaymentPassProvisionedForAccount:(id)a3 passLibraryDataProvider:(id)a4;
+ (BOOL)peerPaymentPassIsProvisionedOnDeviceForAccount:(id)a3;
+ (id)_peerPaymentPassForAccount:(id)a3 passLibraryDataProvider:(id)a4;
@end

@implementation PKPeerPaymentOnDeviceProvisioningCheck

+ (BOOL)_hasPeerPaymentPassProvisionedForAccount:(id)a3 passLibraryDataProvider:(id)a4
{
  v4 = [a1 _peerPaymentPassForAccount:a3 passLibraryDataProvider:a4];
  v5 = [v4 activationState] != 4;

  return v5;
}

+ (id)_peerPaymentPassForAccount:(id)a3 passLibraryDataProvider:(id)a4
{
  v5 = a4;
  v6 = [a3 associatedPassUniqueID];
  v7 = [v5 passWithUniqueID:v6];

  v8 = [v7 paymentPass];

  return v8;
}

+ (BOOL)peerPaymentPassIsProvisionedOnDeviceForAccount:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PKPassLibraryDefaultDataProvider);
  LOBYTE(a1) = [a1 peerPaymentPassIsProvisionedOnDeviceForAccount:v4 passLibraryDataProvider:v5];

  return a1;
}

@end