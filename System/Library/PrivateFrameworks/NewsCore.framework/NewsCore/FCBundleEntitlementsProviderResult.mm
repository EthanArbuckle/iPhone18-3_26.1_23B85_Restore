@interface FCBundleEntitlementsProviderResult
- (FCBundleEntitlementsProviderResult)initWithBundlePurchaseID:(id)d inTrialPeriod:(BOOL)period isPurchaser:(BOOL)purchaser servicesBundlePurchaseID:(id)iD isAmplifyUser:(BOOL)user initialPurchaseTimestamp:(id)timestamp vendorAdHocOfferID:(id)offerID;
@end

@implementation FCBundleEntitlementsProviderResult

- (FCBundleEntitlementsProviderResult)initWithBundlePurchaseID:(id)d inTrialPeriod:(BOOL)period isPurchaser:(BOOL)purchaser servicesBundlePurchaseID:(id)iD isAmplifyUser:(BOOL)user initialPurchaseTimestamp:(id)timestamp vendorAdHocOfferID:(id)offerID
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  offerIDCopy = offerID;
  v27.receiver = self;
  v27.super_class = FCBundleEntitlementsProviderResult;
  v19 = [(FCBundleEntitlementsProviderResult *)&v27 init];
  if (v19)
  {
    v20 = [dCopy copy];
    bundlePurchaseID = v19->_bundlePurchaseID;
    v19->_bundlePurchaseID = v20;

    v19->_inTrialPeriod = period;
    v19->_isPurchaser = purchaser;
    v19->_isAmplifyUser = user;
    objc_storeStrong(&v19->_vendorAdHocOfferID, offerID);
    v22 = [timestampCopy copy];
    initialPurchaseTimestamp = v19->_initialPurchaseTimestamp;
    v19->_initialPurchaseTimestamp = v22;

    v24 = [iDCopy copy];
    servicesBundlePurchaseID = v19->_servicesBundlePurchaseID;
    v19->_servicesBundlePurchaseID = v24;
  }

  return v19;
}

@end