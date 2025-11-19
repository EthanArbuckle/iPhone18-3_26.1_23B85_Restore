@interface PKTransactionReceiptAuthorizationRequest
- (PKTransactionReceiptAuthorizationRequest)initWithReceiptServiceIdentifier:(id)a3 receiptIdentifier:(id)a4 altDSID:(id)a5 featureIdentifier:(unint64_t)a6;
- (PKTransactionReceiptAuthorizationRequest)initWithReceiptServiceIdentifier:(id)a3 receiptIdentifier:(id)a4 cardNumberSuffix:(id)a5 featureIdentifier:(unint64_t)a6;
- (void)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 webService:(id)a5 completion:(id)a6;
@end

@implementation PKTransactionReceiptAuthorizationRequest

- (PKTransactionReceiptAuthorizationRequest)initWithReceiptServiceIdentifier:(id)a3 receiptIdentifier:(id)a4 cardNumberSuffix:(id)a5 featureIdentifier:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = PKTransactionReceiptAuthorizationRequest;
  v13 = [(PKOverlayableWebServiceRequest *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    receiptServiceIdentifier = v13->_receiptServiceIdentifier;
    v13->_receiptServiceIdentifier = v14;

    v16 = [v11 copy];
    receiptIdentifier = v13->_receiptIdentifier;
    v13->_receiptIdentifier = v16;

    v18 = [v12 copy];
    cardNumberSuffix = v13->_cardNumberSuffix;
    v13->_cardNumberSuffix = v18;

    v13->_featureIdentifier = a6;
  }

  return v13;
}

- (PKTransactionReceiptAuthorizationRequest)initWithReceiptServiceIdentifier:(id)a3 receiptIdentifier:(id)a4 altDSID:(id)a5 featureIdentifier:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = PKTransactionReceiptAuthorizationRequest;
  v13 = [(PKOverlayableWebServiceRequest *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    receiptServiceIdentifier = v13->_receiptServiceIdentifier;
    v13->_receiptServiceIdentifier = v14;

    v16 = [v11 copy];
    receiptIdentifier = v13->_receiptIdentifier;
    v13->_receiptIdentifier = v16;

    v18 = [v12 copy];
    altDSID = v13->_altDSID;
    v13->_altDSID = v18;

    v13->_featureIdentifier = a6;
  }

  return v13;
}

- (void)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 webService:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:a3 endpointComponents:&unk_1F23B4268 queryParameters:0 appleAccountInformation:a4];
  [v12 setHTTPMethod:@"POST"];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v13 setObject:self->_receiptServiceIdentifier forKeyedSubscript:@"receiptServiceIdentifier"];
  [v13 setObject:self->_receiptIdentifier forKeyedSubscript:@"receiptIdentifier"];
  [v13 setObject:self->_cardNumberSuffix forKeyedSubscript:@"paymentMethodIdentifier"];
  [v13 setObject:self->_altDSID forKeyedSubscript:@"altDSID"];
  featureIdentifier = self->_featureIdentifier;
  if (featureIdentifier)
  {
    v15 = PKFeatureIdentifierToString(featureIdentifier);
    [v13 setObject:v15 forKeyedSubscript:@"featureIdentifier"];
  }

  v16 = [objc_opt_class() _HTTPBodyWithDictionary:v13];
  [v12 setHTTPBody:v16];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __116__PKTransactionReceiptAuthorizationRequest__urlRequestWithServiceURL_appleAccountInformation_webService_completion___block_invoke;
  v18[3] = &unk_1E79DAF50;
  v19 = v10;
  v17 = v10;
  [(PKPaymentWebServiceRequest *)self _signRequest:v12 webService:v11 completion:v18];
}

void __116__PKTransactionReceiptAuthorizationRequest__urlRequestWithServiceURL_appleAccountInformation_webService_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 copy];
    (*(v2 + 16))(v2, v3);
  }
}

@end