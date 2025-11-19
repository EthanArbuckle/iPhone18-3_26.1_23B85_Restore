@interface FCBundleEntitlementsProviderResult
- (FCBundleEntitlementsProviderResult)initWithBundlePurchaseID:(id)a3 inTrialPeriod:(BOOL)a4 isPurchaser:(BOOL)a5 servicesBundlePurchaseID:(id)a6 isAmplifyUser:(BOOL)a7 initialPurchaseTimestamp:(id)a8 vendorAdHocOfferID:(id)a9;
@end

@implementation FCBundleEntitlementsProviderResult

- (FCBundleEntitlementsProviderResult)initWithBundlePurchaseID:(id)a3 inTrialPeriod:(BOOL)a4 isPurchaser:(BOOL)a5 servicesBundlePurchaseID:(id)a6 isAmplifyUser:(BOOL)a7 initialPurchaseTimestamp:(id)a8 vendorAdHocOfferID:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = FCBundleEntitlementsProviderResult;
  v19 = [(FCBundleEntitlementsProviderResult *)&v27 init];
  if (v19)
  {
    v20 = [v15 copy];
    bundlePurchaseID = v19->_bundlePurchaseID;
    v19->_bundlePurchaseID = v20;

    v19->_inTrialPeriod = a4;
    v19->_isPurchaser = a5;
    v19->_isAmplifyUser = a7;
    objc_storeStrong(&v19->_vendorAdHocOfferID, a9);
    v22 = [v17 copy];
    initialPurchaseTimestamp = v19->_initialPurchaseTimestamp;
    v19->_initialPurchaseTimestamp = v22;

    v24 = [v16 copy];
    servicesBundlePurchaseID = v19->_servicesBundlePurchaseID;
    v19->_servicesBundlePurchaseID = v24;
  }

  return v19;
}

@end