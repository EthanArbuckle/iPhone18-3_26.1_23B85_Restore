@interface PKPaymentExternalOfferCredential
- (PKPaymentExternalOfferCredential)initWithSharingInstanceIdentifier:(id)identifier passThumbnailImageURL:(id)l criteriaIdentifier:(id)criteriaIdentifier didSelectOffer:(BOOL)offer;
@end

@implementation PKPaymentExternalOfferCredential

- (PKPaymentExternalOfferCredential)initWithSharingInstanceIdentifier:(id)identifier passThumbnailImageURL:(id)l criteriaIdentifier:(id)criteriaIdentifier didSelectOffer:(BOOL)offer
{
  lCopy = l;
  criteriaIdentifierCopy = criteriaIdentifier;
  v16.receiver = self;
  v16.super_class = PKPaymentExternalOfferCredential;
  v13 = [(PKPaymentShareableCredential *)&v16 initWithProvisioningSharingIdentifier:identifier isBackgroundProvisioning:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_passThumbnailImageURL, l);
    objc_storeStrong(&v14->_criteriaIdentifier, criteriaIdentifier);
    v14->_didSelectOffer = offer;
    [(PKPaymentCredential *)v14 setCardType:1];
    [(PKPaymentShareableCredential *)v14 setSource:11];
  }

  return v14;
}

@end