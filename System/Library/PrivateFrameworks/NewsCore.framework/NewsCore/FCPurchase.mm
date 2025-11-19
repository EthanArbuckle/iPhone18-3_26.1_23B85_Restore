@interface FCPurchase
- (FCPurchase)initWithPurchaseID:(id)a3 appAdamID:(id)a4 subscriptionPriceFormatted:(id)a5 subscriptionPeriodInISO_8601:(id)a6 offerName:(id)a7 storeExternalVersion:(id)a8 bundleID:(id)a9 price:(id)a10 introOffer:(id)a11 payment:(id)a12;
@end

@implementation FCPurchase

- (FCPurchase)initWithPurchaseID:(id)a3 appAdamID:(id)a4 subscriptionPriceFormatted:(id)a5 subscriptionPeriodInISO_8601:(id)a6 offerName:(id)a7 storeExternalVersion:(id)a8 bundleID:(id)a9 price:(id)a10 introOffer:(id)a11 payment:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = FCPurchase;
  v23 = [(FCPurchase *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_purchaseID, a3);
    objc_storeStrong(&v24->_appAdamID, obj);
    objc_storeStrong(&v24->_subscriptionPriceFormatted, v27);
    objc_storeStrong(&v24->_subscriptionPeriodInISO_8601, a6);
    objc_storeStrong(&v24->_offerName, v28);
    objc_storeStrong(&v24->_storeExternalVersion, v29);
    objc_storeStrong(&v24->_bundleID, a9);
    objc_storeStrong(&v24->_price, a10);
    objc_storeStrong(&v24->_introductoryOffer, a11);
    objc_storeStrong(&v24->_payment, a12);
  }

  return v24;
}

@end