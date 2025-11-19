@interface FCSubscriptionEntitlement
- (FCSubscriptionEntitlement)initWithASDEntitlement:(id)a3;
- (FCSubscriptionEntitlement)initWithAppAdamID:(id)a3 inAppAdamID:(id)a4 chargeCurrencyCode:(id)a5 newsAppPurchase:(BOOL)a6 isTrialPeriod:(BOOL)a7 isPurchaser:(BOOL)a8 servicesBundleAdamID:(id)a9 isAmplifyUser:(BOOL)a10 startDate:(id)a11 expiryDate:(id)a12 initialPurchaseTimestamp:(id)a13 serviceBeginsTimestamp:(id)a14 vendorAdHocOfferID:(id)a15;
- (id)description;
@end

@implementation FCSubscriptionEntitlement

- (FCSubscriptionEntitlement)initWithASDEntitlement:(id)a3
{
  v4 = a3;
  v5 = [v4 appAdamID];
  v20 = [v4 inAppAdamID];
  v19 = [v4 chargeCurrencyCode];
  v18 = [v4 isNewsAppPurchase];
  v17 = [v4 isTrialPeriod];
  v16 = [v4 isPurchaser];
  v6 = [v4 servicesBundlePurchaseID];
  v7 = [v4 isOfferPeriod];
  v8 = [v4 startDate];
  v9 = [v4 expiryDate];
  v10 = [v4 initialPurchaseTimestamp];
  v11 = [v4 serviceBeginsTimestamp];
  v12 = [v4 vendorAdHocOfferID];

  LOBYTE(v15) = v7;
  v13 = [(FCSubscriptionEntitlement *)self initWithAppAdamID:v5 inAppAdamID:v20 chargeCurrencyCode:v19 newsAppPurchase:v18 isTrialPeriod:v17 isPurchaser:v16 servicesBundleAdamID:v6 isAmplifyUser:v15 startDate:v8 expiryDate:v9 initialPurchaseTimestamp:v10 serviceBeginsTimestamp:v11 vendorAdHocOfferID:v12];

  return v13;
}

- (FCSubscriptionEntitlement)initWithAppAdamID:(id)a3 inAppAdamID:(id)a4 chargeCurrencyCode:(id)a5 newsAppPurchase:(BOOL)a6 isTrialPeriod:(BOOL)a7 isPurchaser:(BOOL)a8 servicesBundleAdamID:(id)a9 isAmplifyUser:(BOOL)a10 startDate:(id)a11 expiryDate:(id)a12 initialPurchaseTimestamp:(id)a13 serviceBeginsTimestamp:(id)a14 vendorAdHocOfferID:(id)a15
{
  v33 = a3;
  obj = a4;
  v19 = a4;
  v29 = a5;
  v20 = a5;
  v35 = a9;
  v34 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v36.receiver = self;
  v36.super_class = FCSubscriptionEntitlement;
  v25 = [(FCSubscriptionEntitlement *)&v36 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_appAdamID, a3);
    objc_storeStrong(&v26->_inAppAdamID, obj);
    objc_storeStrong(&v26->_chargeCurrencyCode, v29);
    v26->_newsAppPurchase = a6;
    v26->_isTrialPeriod = a7;
    v26->_isPurchaser = a8;
    v26->_isAmplifyUser = a10;
    objc_storeStrong(&v26->_servicesBundleAdamID, a9);
    objc_storeStrong(&v26->_startDate, a11);
    objc_storeStrong(&v26->_expiryDate, a12);
    objc_storeStrong(&v26->_initialPurchaseTimestamp, a13);
    objc_storeStrong(&v26->_serviceBeginsTimestamp, a14);
    objc_storeStrong(&v26->_vendorAdHocOfferID, a15);
  }

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FCSubscriptionEntitlement *)self inAppAdamID];
  v5 = [(FCSubscriptionEntitlement *)self servicesBundleAdamID];
  v6 = [v3 stringWithFormat:@"{purchaseId=%@, servicesBundleAdamID=%@}", v4, v5];

  return v6;
}

@end