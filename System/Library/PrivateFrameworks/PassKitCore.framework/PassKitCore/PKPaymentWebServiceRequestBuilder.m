@interface PKPaymentWebServiceRequestBuilder
- (PKPaymentWebService)webService;
- (PKPaymentWebServiceRequestBuilder)initWithBrokerURL:(id)a3 deviceID:(id)a4 appleAccountInformation:(id)a5;
- (void)configureOverlayRequest:(id)a3 urlRequest:(id)a4 dictionary:(id)a5;
@end

@implementation PKPaymentWebServiceRequestBuilder

- (PKPaymentWebServiceRequestBuilder)initWithBrokerURL:(id)a3 deviceID:(id)a4 appleAccountInformation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKPaymentWebServiceRequestBuilder;
  v12 = [(PKPaymentWebServiceRequestBuilder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_brokerURL, a3);
    objc_storeStrong(&v13->_deviceID, a4);
    objc_storeStrong(&v13->_appleAccountInformation, a5);
  }

  return v13;
}

- (void)configureOverlayRequest:(id)a3 urlRequest:(id)a4 dictionary:(id)a5
{
  v6 = a4;
  v7 = [(PKWebServiceRequest *)PKOverlayableWebServiceRequest _HTTPBodyWithDictionary:a5];
  [v6 setHTTPBody:v7];
}

- (PKPaymentWebService)webService
{
  WeakRetained = objc_loadWeakRetained(&self->_webService);

  return WeakRetained;
}

@end