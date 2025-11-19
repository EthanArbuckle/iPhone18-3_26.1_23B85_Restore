@interface PKPaymentRequestSupportedQuery
+ (id)inAppQueryWithSupportedNetworkIDs:(id)a3 merchantCapabilities:(unint64_t)a4 merchantCountryCode:(id)a5 paymentMode:(int64_t)a6 paymentApplicationStates:(id)a7 paymentRequestType:(id)a8 isMultiTokensRequest:(BOOL)a9 webService:(id)a10;
+ (id)webQueryWithSupportedNetworkIDs:(id)a3 merchantCapabilities:(unint64_t)a4 merchantCountryCode:(id)a5 paymentMode:(int64_t)a6 paymentApplicationStates:(id)a7 isMultiTokensRequest:(BOOL)a8 webService:(id)a9;
- (PKPaymentRequestSupportedQuery)initWithIssuedOnTheWeb:(BOOL)a3 supportedNetworkIDs:(id)a4 merchantCapabilities:(unint64_t)a5 merchantCountryCode:(id)a6 paymentMode:(int64_t)a7 paymentApplicationStates:(id)a8 paymentRequestType:(id)a9 isMultiTokensRequest:(BOOL)a10 webService:(id)a11;
@end

@implementation PKPaymentRequestSupportedQuery

+ (id)webQueryWithSupportedNetworkIDs:(id)a3 merchantCapabilities:(unint64_t)a4 merchantCountryCode:(id)a5 paymentMode:(int64_t)a6 paymentApplicationStates:(id)a7 isMultiTokensRequest:(BOOL)a8 webService:(id)a9
{
  v16 = a9;
  v17 = a7;
  v18 = a5;
  v19 = a3;
  LOBYTE(v22) = a8;
  v20 = [[a1 alloc] initWithIssuedOnTheWeb:1 supportedNetworkIDs:v19 merchantCapabilities:a4 merchantCountryCode:v18 paymentMode:a6 paymentApplicationStates:v17 paymentRequestType:0 isMultiTokensRequest:v22 webService:v16];

  return v20;
}

+ (id)inAppQueryWithSupportedNetworkIDs:(id)a3 merchantCapabilities:(unint64_t)a4 merchantCountryCode:(id)a5 paymentMode:(int64_t)a6 paymentApplicationStates:(id)a7 paymentRequestType:(id)a8 isMultiTokensRequest:(BOOL)a9 webService:(id)a10
{
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a5;
  v21 = a3;
  LOBYTE(v24) = a9;
  v22 = [[a1 alloc] initWithIssuedOnTheWeb:0 supportedNetworkIDs:v21 merchantCapabilities:a4 merchantCountryCode:v20 paymentMode:a6 paymentApplicationStates:v19 paymentRequestType:v18 isMultiTokensRequest:v24 webService:v17];

  return v22;
}

- (PKPaymentRequestSupportedQuery)initWithIssuedOnTheWeb:(BOOL)a3 supportedNetworkIDs:(id)a4 merchantCapabilities:(unint64_t)a5 merchantCountryCode:(id)a6 paymentMode:(int64_t)a7 paymentApplicationStates:(id)a8 paymentRequestType:(id)a9 isMultiTokensRequest:(BOOL)a10 webService:(id)a11
{
  v18 = a4;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v25 = a11;
  if (!v20)
  {
    v20 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F23B4C10];
  }

  v26.receiver = self;
  v26.super_class = PKPaymentRequestSupportedQuery;
  v22 = [(PKPaymentRequestSupportedQuery *)&v26 init];
  v23 = v22;
  if (v22)
  {
    v22->_issuedOnTheWeb = a3;
    objc_storeStrong(&v22->_supportedNetworkIDs, a4);
    v23->_merchantCapabilities = a5;
    v23->_merchantCountryCode = v19;
    v23->_paymentMode = a7;
    objc_storeStrong(&v23->_paymentApplicationStates, v20);
    v23->_paymentRequestType = v21;
    v23->_isMultiTokensRequest = a10;
    objc_storeStrong(&v23->_webService, a11);
  }

  return v23;
}

@end