@interface PKPaymentWebServiceRequestBuilder
- (PKPaymentWebService)webService;
- (PKPaymentWebServiceRequestBuilder)initWithBrokerURL:(id)l deviceID:(id)d appleAccountInformation:(id)information;
- (void)configureOverlayRequest:(id)request urlRequest:(id)urlRequest dictionary:(id)dictionary;
@end

@implementation PKPaymentWebServiceRequestBuilder

- (PKPaymentWebServiceRequestBuilder)initWithBrokerURL:(id)l deviceID:(id)d appleAccountInformation:(id)information
{
  lCopy = l;
  dCopy = d;
  informationCopy = information;
  v15.receiver = self;
  v15.super_class = PKPaymentWebServiceRequestBuilder;
  v12 = [(PKPaymentWebServiceRequestBuilder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_brokerURL, l);
    objc_storeStrong(&v13->_deviceID, d);
    objc_storeStrong(&v13->_appleAccountInformation, information);
  }

  return v13;
}

- (void)configureOverlayRequest:(id)request urlRequest:(id)urlRequest dictionary:(id)dictionary
{
  urlRequestCopy = urlRequest;
  v7 = [(PKWebServiceRequest *)PKOverlayableWebServiceRequest _HTTPBodyWithDictionary:dictionary];
  [urlRequestCopy setHTTPBody:v7];
}

- (PKPaymentWebService)webService
{
  WeakRetained = objc_loadWeakRetained(&self->_webService);

  return WeakRetained;
}

@end