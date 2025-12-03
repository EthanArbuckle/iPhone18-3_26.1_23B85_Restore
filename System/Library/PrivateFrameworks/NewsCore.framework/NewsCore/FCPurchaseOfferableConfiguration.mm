@interface FCPurchaseOfferableConfiguration
- (FCPurchaseOfferableConfiguration)initWithPurchaseID:(id)d allowsPublisherPhoneApp:(BOOL)app allowsPublisherPadApp:(BOOL)padApp allowsPublisherWebsite:(BOOL)website preferredOffer:(BOOL)offer;
@end

@implementation FCPurchaseOfferableConfiguration

- (FCPurchaseOfferableConfiguration)initWithPurchaseID:(id)d allowsPublisherPhoneApp:(BOOL)app allowsPublisherPadApp:(BOOL)padApp allowsPublisherWebsite:(BOOL)website preferredOffer:(BOOL)offer
{
  dCopy = d;
  v17.receiver = self;
  v17.super_class = FCPurchaseOfferableConfiguration;
  v13 = [(FCPurchaseOfferableConfiguration *)&v17 init];
  if (v13)
  {
    v14 = [dCopy copy];
    purchaseID = v13->_purchaseID;
    v13->_purchaseID = v14;

    v13->_allowsPublisherPhoneApp = app;
    v13->_allowsPublisherPadApp = padApp;
    v13->_allowsPublisherWebsite = website;
    v13->_preferredOffer = offer;
  }

  return v13;
}

@end