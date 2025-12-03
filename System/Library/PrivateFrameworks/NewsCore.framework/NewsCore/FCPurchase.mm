@interface FCPurchase
- (FCPurchase)initWithPurchaseID:(id)d appAdamID:(id)iD subscriptionPriceFormatted:(id)formatted subscriptionPeriodInISO_8601:(id)o_8601 offerName:(id)name storeExternalVersion:(id)version bundleID:(id)bundleID price:(id)self0 introOffer:(id)self1 payment:(id)self2;
@end

@implementation FCPurchase

- (FCPurchase)initWithPurchaseID:(id)d appAdamID:(id)iD subscriptionPriceFormatted:(id)formatted subscriptionPeriodInISO_8601:(id)o_8601 offerName:(id)name storeExternalVersion:(id)version bundleID:(id)bundleID price:(id)self0 introOffer:(id)self1 payment:(id)self2
{
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  formattedCopy = formatted;
  formattedCopy2 = formatted;
  o_8601Copy = o_8601;
  nameCopy = name;
  nameCopy2 = name;
  versionCopy = version;
  versionCopy2 = version;
  bundleIDCopy = bundleID;
  priceCopy = price;
  offerCopy = offer;
  paymentCopy = payment;
  v36.receiver = self;
  v36.super_class = FCPurchase;
  v23 = [(FCPurchase *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_purchaseID, d);
    objc_storeStrong(&v24->_appAdamID, obj);
    objc_storeStrong(&v24->_subscriptionPriceFormatted, formattedCopy);
    objc_storeStrong(&v24->_subscriptionPeriodInISO_8601, o_8601);
    objc_storeStrong(&v24->_offerName, nameCopy);
    objc_storeStrong(&v24->_storeExternalVersion, versionCopy);
    objc_storeStrong(&v24->_bundleID, bundleID);
    objc_storeStrong(&v24->_price, price);
    objc_storeStrong(&v24->_introductoryOffer, offer);
    objc_storeStrong(&v24->_payment, payment);
  }

  return v24;
}

@end