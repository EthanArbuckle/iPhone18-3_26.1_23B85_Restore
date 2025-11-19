@interface PKPaymentExternalOfferCredential
- (PKPaymentExternalOfferCredential)initWithSharingInstanceIdentifier:(id)a3 passThumbnailImageURL:(id)a4 criteriaIdentifier:(id)a5 didSelectOffer:(BOOL)a6;
@end

@implementation PKPaymentExternalOfferCredential

- (PKPaymentExternalOfferCredential)initWithSharingInstanceIdentifier:(id)a3 passThumbnailImageURL:(id)a4 criteriaIdentifier:(id)a5 didSelectOffer:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = PKPaymentExternalOfferCredential;
  v13 = [(PKPaymentShareableCredential *)&v16 initWithProvisioningSharingIdentifier:a3 isBackgroundProvisioning:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_passThumbnailImageURL, a4);
    objc_storeStrong(&v14->_criteriaIdentifier, a5);
    v14->_didSelectOffer = a6;
    [(PKPaymentCredential *)v14 setCardType:1];
    [(PKPaymentShareableCredential *)v14 setSource:11];
  }

  return v14;
}

@end