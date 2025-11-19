@interface PKPaymentPrepareTransactionDetailsRequest
+ (id)serverSupportedLanguages;
- (PKPaymentPrepareTransactionDetailsRequest)initWithMerchantSession:(id)a3 secureElementIdentifier:(id)a4 amount:(id)a5 currencyCode:(id)a6;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPaymentPrepareTransactionDetailsRequest

- (PKPaymentPrepareTransactionDetailsRequest)initWithMerchantSession:(id)a3 secureElementIdentifier:(id)a4 amount:(id)a5 currencyCode:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = PKPaymentPrepareTransactionDetailsRequest;
  v15 = [(PKOverlayableWebServiceRequest *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_merchantSession, a3);
    v17 = [v12 copy];
    secureElementIdentifier = v16->_secureElementIdentifier;
    v16->_secureElementIdentifier = v17;

    objc_storeStrong(&v16->_amount, a5);
    v19 = [v14 copy];
    currencyCode = v16->_currencyCode;
    v16->_currencyCode = v19;
  }

  return v16;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionary];
  v10 = [(NSDecimalNumber *)self->_amount stringValue];
  [v9 safelySetObject:v10 forKey:@"amount"];

  [v9 safelySetObject:self->_currencyCode forKey:@"currencyCode"];
  v11 = [(PKPaymentMerchantSession *)self->_merchantSession merchantIdentifier];
  [v9 safelySetObject:v11 forKey:@"merchantIdentifier"];

  v12 = [(PKPaymentMerchantSession *)self->_merchantSession merchantSessionIdentifier];
  [v9 safelySetObject:v12 forKey:@"merchantSessionIdentifier"];

  [v9 safelySetObject:self->_secureElementIdentifier forKey:@"seId"];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  [v9 setObject:v13 forKey:@"version"];

  v14 = [(PKPaymentMerchantSession *)self->_merchantSession initiative];
  v15 = [v14 isEqualToString:@"virtual_card"];

  if (v15)
  {
    v16 = &unk_1F23B41D8;
  }

  else
  {
    v16 = &unk_1F23B41C0;
  }

  [v9 setObject:v16 forKey:@"imageSegments"];
  v17 = [objc_opt_class() serverSupportedLanguages];
  v18 = [MEMORY[0x1E696AAE8] mainBundle];
  v19 = [v18 preferredLocalizations];

  v20 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v17 forPreferences:v19];
  [v9 safelySetObject:v20 forKey:@"preferredLanguages"];
  v21 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v8 endpointComponents:&unk_1F23B41F0 queryParameters:0 appleAccountInformation:v7];

  [v21 setHTTPMethod:@"POST"];
  v22 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
  [v21 setHTTPBody:v22];

  v23 = [v21 copy];

  return v23;
}

+ (id)serverSupportedLanguages
{
  if (qword_1EB5B7DB8 != -1)
  {
    dispatch_once(&qword_1EB5B7DB8, &__block_literal_global_1903);
  }

  v2 = [_MergedGlobals_7 copy];

  return v2;
}

void __69__PKPaymentPrepareTransactionDetailsRequest_serverSupportedLanguages__block_invoke()
{
  v0 = _MergedGlobals_7;
  _MergedGlobals_7 = &unk_1F23B4208;
}

@end