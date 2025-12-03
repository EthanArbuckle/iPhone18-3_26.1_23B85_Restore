@interface PKDisbursementPaymentRequest
- (PKDisbursementPaymentRequest)initWithDisbursementRequest:(id)request;
@end

@implementation PKDisbursementPaymentRequest

- (PKDisbursementPaymentRequest)initWithDisbursementRequest:(id)request
{
  requestCopy = request;
  v27.receiver = self;
  v27.super_class = PKDisbursementPaymentRequest;
  v5 = [(PKPaymentRequest *)&v27 init];
  if (v5)
  {
    merchantIdentifier = [requestCopy merchantIdentifier];
    [(PKPaymentRequest *)v5 setMerchantIdentifier:merchantIdentifier];

    regionCode = [requestCopy regionCode];
    [(PKPaymentRequest *)v5 setCountryCode:regionCode];

    supportedNetworks = [requestCopy supportedNetworks];
    [(PKPaymentRequest *)v5 setSupportedNetworks:supportedNetworks];

    -[PKPaymentRequest setMerchantCapabilities:](v5, "setMerchantCapabilities:", [requestCopy merchantCapabilities]);
    summaryItems = [requestCopy summaryItems];
    [(PKPaymentRequest *)v5 setPaymentSummaryItems:summaryItems];

    currencyCode = [requestCopy currencyCode];
    [(PKPaymentRequest *)v5 setCurrencyCode:currencyCode];

    recipientContact = [requestCopy recipientContact];
    [(PKPaymentRequest *)v5 setBillingContact:recipientContact];

    recipientContact2 = [requestCopy recipientContact];
    [(PKPaymentRequest *)v5 setShippingContact:recipientContact2];

    applicationData = [requestCopy applicationData];
    [(PKPaymentRequest *)v5 setApplicationData:applicationData];

    supportedRegions = [requestCopy supportedRegions];

    if (supportedRegions)
    {
      v15 = MEMORY[0x1E695DFD8];
      supportedRegions2 = [requestCopy supportedRegions];
      v17 = [v15 setWithArray:supportedRegions2];
      [(PKPaymentRequest *)v5 setSupportedCountries:v17];
    }

    [(PKPaymentRequest *)v5 setRequestType:10];
    [(PKPaymentRequest *)v5 setConfirmationStyle:1];
    v18 = MEMORY[0x1E695DFD8];
    requiredRecipientContactFields = [requestCopy requiredRecipientContactFields];
    v20 = requiredRecipientContactFields;
    if (requiredRecipientContactFields)
    {
      v21 = requiredRecipientContactFields;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    v22 = [v18 setWithArray:v21];

    v23 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v22];
    [v23 removeObject:@"post"];
    if ([v22 containsObject:@"post"])
    {
      [v23 removeObject:@"name"];
      [v23 removeObject:@"phoneticName"];
    }

    v24 = [v22 copy];
    [(PKPaymentRequest *)v5 setRequiredBillingContactFields:v24];

    v25 = [v23 copy];
    [(PKPaymentRequest *)v5 setRequiredShippingContactFields:v25];
  }

  return v5;
}

@end