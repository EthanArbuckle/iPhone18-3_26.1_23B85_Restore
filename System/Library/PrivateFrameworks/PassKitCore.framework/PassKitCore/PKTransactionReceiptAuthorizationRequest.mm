@interface PKTransactionReceiptAuthorizationRequest
- (PKTransactionReceiptAuthorizationRequest)initWithReceiptServiceIdentifier:(id)identifier receiptIdentifier:(id)receiptIdentifier altDSID:(id)d featureIdentifier:(unint64_t)featureIdentifier;
- (PKTransactionReceiptAuthorizationRequest)initWithReceiptServiceIdentifier:(id)identifier receiptIdentifier:(id)receiptIdentifier cardNumberSuffix:(id)suffix featureIdentifier:(unint64_t)featureIdentifier;
- (void)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information webService:(id)service completion:(id)completion;
@end

@implementation PKTransactionReceiptAuthorizationRequest

- (PKTransactionReceiptAuthorizationRequest)initWithReceiptServiceIdentifier:(id)identifier receiptIdentifier:(id)receiptIdentifier cardNumberSuffix:(id)suffix featureIdentifier:(unint64_t)featureIdentifier
{
  identifierCopy = identifier;
  receiptIdentifierCopy = receiptIdentifier;
  suffixCopy = suffix;
  v21.receiver = self;
  v21.super_class = PKTransactionReceiptAuthorizationRequest;
  v13 = [(PKOverlayableWebServiceRequest *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    receiptServiceIdentifier = v13->_receiptServiceIdentifier;
    v13->_receiptServiceIdentifier = v14;

    v16 = [receiptIdentifierCopy copy];
    receiptIdentifier = v13->_receiptIdentifier;
    v13->_receiptIdentifier = v16;

    v18 = [suffixCopy copy];
    cardNumberSuffix = v13->_cardNumberSuffix;
    v13->_cardNumberSuffix = v18;

    v13->_featureIdentifier = featureIdentifier;
  }

  return v13;
}

- (PKTransactionReceiptAuthorizationRequest)initWithReceiptServiceIdentifier:(id)identifier receiptIdentifier:(id)receiptIdentifier altDSID:(id)d featureIdentifier:(unint64_t)featureIdentifier
{
  identifierCopy = identifier;
  receiptIdentifierCopy = receiptIdentifier;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = PKTransactionReceiptAuthorizationRequest;
  v13 = [(PKOverlayableWebServiceRequest *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    receiptServiceIdentifier = v13->_receiptServiceIdentifier;
    v13->_receiptServiceIdentifier = v14;

    v16 = [receiptIdentifierCopy copy];
    receiptIdentifier = v13->_receiptIdentifier;
    v13->_receiptIdentifier = v16;

    v18 = [dCopy copy];
    altDSID = v13->_altDSID;
    v13->_altDSID = v18;

    v13->_featureIdentifier = featureIdentifier;
  }

  return v13;
}

- (void)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information webService:(id)service completion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  v12 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:l endpointComponents:&unk_1F23B4268 queryParameters:0 appleAccountInformation:information];
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
  v19 = completionCopy;
  v17 = completionCopy;
  [(PKPaymentWebServiceRequest *)self _signRequest:v12 webService:serviceCopy completion:v18];
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