@interface PKPaymentRequestSupportedQuery
+ (id)inAppQueryWithSupportedNetworkIDs:(id)ds merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentMode:(int64_t)mode paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request webService:(id)self0;
+ (id)webQueryWithSupportedNetworkIDs:(id)ds merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentMode:(int64_t)mode paymentApplicationStates:(id)states isMultiTokensRequest:(BOOL)request webService:(id)service;
- (PKPaymentRequestSupportedQuery)initWithIssuedOnTheWeb:(BOOL)web supportedNetworkIDs:(id)ds merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentMode:(int64_t)mode paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)self0 webService:(id)self1;
@end

@implementation PKPaymentRequestSupportedQuery

+ (id)webQueryWithSupportedNetworkIDs:(id)ds merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentMode:(int64_t)mode paymentApplicationStates:(id)states isMultiTokensRequest:(BOOL)request webService:(id)service
{
  serviceCopy = service;
  statesCopy = states;
  codeCopy = code;
  dsCopy = ds;
  LOBYTE(v22) = request;
  v20 = [[self alloc] initWithIssuedOnTheWeb:1 supportedNetworkIDs:dsCopy merchantCapabilities:capabilities merchantCountryCode:codeCopy paymentMode:mode paymentApplicationStates:statesCopy paymentRequestType:0 isMultiTokensRequest:v22 webService:serviceCopy];

  return v20;
}

+ (id)inAppQueryWithSupportedNetworkIDs:(id)ds merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentMode:(int64_t)mode paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)request webService:(id)self0
{
  serviceCopy = service;
  typeCopy = type;
  statesCopy = states;
  codeCopy = code;
  dsCopy = ds;
  LOBYTE(v24) = request;
  v22 = [[self alloc] initWithIssuedOnTheWeb:0 supportedNetworkIDs:dsCopy merchantCapabilities:capabilities merchantCountryCode:codeCopy paymentMode:mode paymentApplicationStates:statesCopy paymentRequestType:typeCopy isMultiTokensRequest:v24 webService:serviceCopy];

  return v22;
}

- (PKPaymentRequestSupportedQuery)initWithIssuedOnTheWeb:(BOOL)web supportedNetworkIDs:(id)ds merchantCapabilities:(unint64_t)capabilities merchantCountryCode:(id)code paymentMode:(int64_t)mode paymentApplicationStates:(id)states paymentRequestType:(id)type isMultiTokensRequest:(BOOL)self0 webService:(id)self1
{
  dsCopy = ds;
  codeCopy = code;
  statesCopy = states;
  typeCopy = type;
  serviceCopy = service;
  if (!statesCopy)
  {
    statesCopy = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F23B4C10];
  }

  v26.receiver = self;
  v26.super_class = PKPaymentRequestSupportedQuery;
  v22 = [(PKPaymentRequestSupportedQuery *)&v26 init];
  v23 = v22;
  if (v22)
  {
    v22->_issuedOnTheWeb = web;
    objc_storeStrong(&v22->_supportedNetworkIDs, ds);
    v23->_merchantCapabilities = capabilities;
    v23->_merchantCountryCode = codeCopy;
    v23->_paymentMode = mode;
    objc_storeStrong(&v23->_paymentApplicationStates, statesCopy);
    v23->_paymentRequestType = typeCopy;
    v23->_isMultiTokensRequest = request;
    objc_storeStrong(&v23->_webService, service);
  }

  return v23;
}

@end