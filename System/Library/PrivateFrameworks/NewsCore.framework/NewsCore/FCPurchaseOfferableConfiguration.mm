@interface FCPurchaseOfferableConfiguration
- (FCPurchaseOfferableConfiguration)initWithPurchaseID:(id)a3 allowsPublisherPhoneApp:(BOOL)a4 allowsPublisherPadApp:(BOOL)a5 allowsPublisherWebsite:(BOOL)a6 preferredOffer:(BOOL)a7;
@end

@implementation FCPurchaseOfferableConfiguration

- (FCPurchaseOfferableConfiguration)initWithPurchaseID:(id)a3 allowsPublisherPhoneApp:(BOOL)a4 allowsPublisherPadApp:(BOOL)a5 allowsPublisherWebsite:(BOOL)a6 preferredOffer:(BOOL)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = FCPurchaseOfferableConfiguration;
  v13 = [(FCPurchaseOfferableConfiguration *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    purchaseID = v13->_purchaseID;
    v13->_purchaseID = v14;

    v13->_allowsPublisherPhoneApp = a4;
    v13->_allowsPublisherPadApp = a5;
    v13->_allowsPublisherWebsite = a6;
    v13->_preferredOffer = a7;
  }

  return v13;
}

@end