@interface PKPaymentPrepareTransactionDetailsRequest
+ (id)serverSupportedLanguages;
- (PKPaymentPrepareTransactionDetailsRequest)initWithMerchantSession:(id)session secureElementIdentifier:(id)identifier amount:(id)amount currencyCode:(id)code;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPaymentPrepareTransactionDetailsRequest

- (PKPaymentPrepareTransactionDetailsRequest)initWithMerchantSession:(id)session secureElementIdentifier:(id)identifier amount:(id)amount currencyCode:(id)code
{
  sessionCopy = session;
  identifierCopy = identifier;
  amountCopy = amount;
  codeCopy = code;
  v22.receiver = self;
  v22.super_class = PKPaymentPrepareTransactionDetailsRequest;
  v15 = [(PKOverlayableWebServiceRequest *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_merchantSession, session);
    v17 = [identifierCopy copy];
    secureElementIdentifier = v16->_secureElementIdentifier;
    v16->_secureElementIdentifier = v17;

    objc_storeStrong(&v16->_amount, amount);
    v19 = [codeCopy copy];
    currencyCode = v16->_currencyCode;
    v16->_currencyCode = v19;
  }

  return v16;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v6 = MEMORY[0x1E695DF90];
  informationCopy = information;
  lCopy = l;
  dictionary = [v6 dictionary];
  stringValue = [(NSDecimalNumber *)self->_amount stringValue];
  [dictionary safelySetObject:stringValue forKey:@"amount"];

  [dictionary safelySetObject:self->_currencyCode forKey:@"currencyCode"];
  merchantIdentifier = [(PKPaymentMerchantSession *)self->_merchantSession merchantIdentifier];
  [dictionary safelySetObject:merchantIdentifier forKey:@"merchantIdentifier"];

  merchantSessionIdentifier = [(PKPaymentMerchantSession *)self->_merchantSession merchantSessionIdentifier];
  [dictionary safelySetObject:merchantSessionIdentifier forKey:@"merchantSessionIdentifier"];

  [dictionary safelySetObject:self->_secureElementIdentifier forKey:@"seId"];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  [dictionary setObject:v13 forKey:@"version"];

  initiative = [(PKPaymentMerchantSession *)self->_merchantSession initiative];
  v15 = [initiative isEqualToString:@"virtual_card"];

  if (v15)
  {
    v16 = &unk_1F23B41D8;
  }

  else
  {
    v16 = &unk_1F23B41C0;
  }

  [dictionary setObject:v16 forKey:@"imageSegments"];
  serverSupportedLanguages = [objc_opt_class() serverSupportedLanguages];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];

  v20 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:serverSupportedLanguages forPreferences:preferredLocalizations];
  [dictionary safelySetObject:v20 forKey:@"preferredLanguages"];
  v21 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B41F0 queryParameters:0 appleAccountInformation:informationCopy];

  [v21 setHTTPMethod:@"POST"];
  v22 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
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