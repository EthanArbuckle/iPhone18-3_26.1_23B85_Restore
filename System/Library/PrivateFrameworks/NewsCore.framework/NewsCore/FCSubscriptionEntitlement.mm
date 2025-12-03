@interface FCSubscriptionEntitlement
- (FCSubscriptionEntitlement)initWithASDEntitlement:(id)entitlement;
- (FCSubscriptionEntitlement)initWithAppAdamID:(id)d inAppAdamID:(id)iD chargeCurrencyCode:(id)code newsAppPurchase:(BOOL)purchase isTrialPeriod:(BOOL)period isPurchaser:(BOOL)purchaser servicesBundleAdamID:(id)adamID isAmplifyUser:(BOOL)self0 startDate:(id)self1 expiryDate:(id)self2 initialPurchaseTimestamp:(id)self3 serviceBeginsTimestamp:(id)self4 vendorAdHocOfferID:(id)self5;
- (id)description;
@end

@implementation FCSubscriptionEntitlement

- (FCSubscriptionEntitlement)initWithASDEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  appAdamID = [entitlementCopy appAdamID];
  inAppAdamID = [entitlementCopy inAppAdamID];
  chargeCurrencyCode = [entitlementCopy chargeCurrencyCode];
  isNewsAppPurchase = [entitlementCopy isNewsAppPurchase];
  isTrialPeriod = [entitlementCopy isTrialPeriod];
  isPurchaser = [entitlementCopy isPurchaser];
  servicesBundlePurchaseID = [entitlementCopy servicesBundlePurchaseID];
  isOfferPeriod = [entitlementCopy isOfferPeriod];
  startDate = [entitlementCopy startDate];
  expiryDate = [entitlementCopy expiryDate];
  initialPurchaseTimestamp = [entitlementCopy initialPurchaseTimestamp];
  serviceBeginsTimestamp = [entitlementCopy serviceBeginsTimestamp];
  vendorAdHocOfferID = [entitlementCopy vendorAdHocOfferID];

  LOBYTE(v15) = isOfferPeriod;
  v13 = [(FCSubscriptionEntitlement *)self initWithAppAdamID:appAdamID inAppAdamID:inAppAdamID chargeCurrencyCode:chargeCurrencyCode newsAppPurchase:isNewsAppPurchase isTrialPeriod:isTrialPeriod isPurchaser:isPurchaser servicesBundleAdamID:servicesBundlePurchaseID isAmplifyUser:v15 startDate:startDate expiryDate:expiryDate initialPurchaseTimestamp:initialPurchaseTimestamp serviceBeginsTimestamp:serviceBeginsTimestamp vendorAdHocOfferID:vendorAdHocOfferID];

  return v13;
}

- (FCSubscriptionEntitlement)initWithAppAdamID:(id)d inAppAdamID:(id)iD chargeCurrencyCode:(id)code newsAppPurchase:(BOOL)purchase isTrialPeriod:(BOOL)period isPurchaser:(BOOL)purchaser servicesBundleAdamID:(id)adamID isAmplifyUser:(BOOL)self0 startDate:(id)self1 expiryDate:(id)self2 initialPurchaseTimestamp:(id)self3 serviceBeginsTimestamp:(id)self4 vendorAdHocOfferID:(id)self5
{
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  codeCopy = code;
  codeCopy2 = code;
  adamIDCopy = adamID;
  dateCopy = date;
  expiryDateCopy = expiryDate;
  timestampCopy = timestamp;
  beginsTimestampCopy = beginsTimestamp;
  offerIDCopy = offerID;
  v36.receiver = self;
  v36.super_class = FCSubscriptionEntitlement;
  v25 = [(FCSubscriptionEntitlement *)&v36 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_appAdamID, d);
    objc_storeStrong(&v26->_inAppAdamID, obj);
    objc_storeStrong(&v26->_chargeCurrencyCode, codeCopy);
    v26->_newsAppPurchase = purchase;
    v26->_isTrialPeriod = period;
    v26->_isPurchaser = purchaser;
    v26->_isAmplifyUser = user;
    objc_storeStrong(&v26->_servicesBundleAdamID, adamID);
    objc_storeStrong(&v26->_startDate, date);
    objc_storeStrong(&v26->_expiryDate, expiryDate);
    objc_storeStrong(&v26->_initialPurchaseTimestamp, timestamp);
    objc_storeStrong(&v26->_serviceBeginsTimestamp, beginsTimestamp);
    objc_storeStrong(&v26->_vendorAdHocOfferID, offerID);
  }

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  inAppAdamID = [(FCSubscriptionEntitlement *)self inAppAdamID];
  servicesBundleAdamID = [(FCSubscriptionEntitlement *)self servicesBundleAdamID];
  v6 = [v3 stringWithFormat:@"{purchaseId=%@, servicesBundleAdamID=%@}", inAppAdamID, servicesBundleAdamID];

  return v6;
}

@end