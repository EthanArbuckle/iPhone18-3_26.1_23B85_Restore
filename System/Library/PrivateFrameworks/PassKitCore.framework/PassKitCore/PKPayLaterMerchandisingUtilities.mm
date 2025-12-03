@interface PKPayLaterMerchandisingUtilities
+ (id)sharedInstance;
- (BOOL)_evaluateLocalChecksForConfiguration:(id)configuration outError:(id *)error invalidProperties:(id *)properties;
- (BOOL)_formValidationError:(id *)error underlyingError:(id)underlyingError;
- (PKPayLaterMerchandisingUtilities)init;
- (id)_baseURLComponents;
- (id)_dynamicMerchandisingURLWithRegionCode:(id)code;
- (id)_fragmentForModalConfiguration:(id)configuration;
- (id)_localeString;
- (id)_urlWithBaseURL:(id)l pathComponents:(id)components queryParameters:(id)parameters fragment:(id)fragment;
- (id)merchandisingBaseURLForEnviornmentType:(unint64_t)type;
- (id)merchandisingEligibilityURLWithConfiguration:(id)configuration;
- (id)merchandisingModalURLWithConfiguration:(id)configuration;
- (void)_performWebRequestForURL:(id)l completion:(id)completion;
- (void)_validateRemoteChecksForConfiguration:(id)configuration completion:(id)completion;
- (void)clearWebRequestCache;
- (void)evaluateEligibilityForConfiguration:(id)configuration completion:(id)completion;
- (void)merchandisingWidgetHTMLWithConfiguration:(id)configuration completion:(id)completion;
@end

@implementation PKPayLaterMerchandisingUtilities

- (PKPayLaterMerchandisingUtilities)init
{
  v8.receiver = self;
  v8.super_class = PKPayLaterMerchandisingUtilities;
  v2 = [(PKPayLaterMerchandisingUtilities *)&v8 init];
  if (v2)
  {
    mEMORY[0x1E695AC78] = [MEMORY[0x1E695AC78] sharedSession];
    urlSession = v2->_urlSession;
    v2->_urlSession = mEMORY[0x1E695AC78];

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    locale = v2->_locale;
    v2->_locale = currentLocale;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PKPayLaterMerchandisingUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_260 != -1)
  {
    dispatch_once(&_MergedGlobals_260, block);
  }

  v2 = qword_1ED6D2030;

  return v2;
}

void __50__PKPayLaterMerchandisingUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6D2030;
  qword_1ED6D2030 = v1;
}

- (void)merchandisingWidgetHTMLWithConfiguration:(id)configuration completion:(id)completion
{
  v15[3] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = -[PKPayLaterMerchandisingUtilities merchandisingBaseURLForEnviornmentType:](self, "merchandisingBaseURLForEnviornmentType:", [configurationCopy environmentType]);
    v15[0] = @"jsapi";
    v15[1] = @"v1.1.0";
    v15[2] = @"apple-pay-sdk.merchandising.js";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v10 = [(PKPayLaterMerchandisingUtilities *)self _urlWithBaseURL:v8 pathComponents:v9 queryParameters:0 fragment:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__PKPayLaterMerchandisingUtilities_merchandisingWidgetHTMLWithConfiguration_completion___block_invoke;
    v11[3] = &unk_1E79DE958;
    v14 = completionCopy;
    v12 = configurationCopy;
    selfCopy = self;
    [(PKPayLaterMerchandisingUtilities *)self _performWebRequestForURL:v10 completion:v11];
  }
}

void __88__PKPayLaterMerchandisingUtilities_merchandisingWidgetHTMLWithConfiguration_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v5 = [v20 length];
  if (a3 || !v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v20 encoding:4];
    v18 = [*(a1 + 32) amountString];
    v6 = PKPayLaterDisplayStyleToString([*(a1 + 32) displayStyle]);
    v7 = PKPayLaterActionToString([*(a1 + 32) action]);
    v8 = [*(a1 + 40) _localeString];
    v9 = [*(a1 + 32) region];
    v10 = [*(a1 + 32) currency];
    v11 = PKPayLaterThemeToString([*(a1 + 32) theme]);
    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 bundleIdentifier];
    v14 = v13;
    v15 = &stru_1F227FD28;
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"    <html>      <head>        <meta name=viewport        content=width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no>        <meta name=color-scheme content=dark light>        <style>  :root { color-scheme: light dark background: transparent; }                 * { -webkit-touch-callout: none; -webkit-user-select: none; }                 html, body { margin: 0; }        </style>        <script>%@</script>      </head>      <body>        <apple-pay-merchandising            amount=%@            type=%@            modal-type=%@            locale=%@            country-code=%@            currency-code=%@            theme=%@            merchant-identifier=%@        >        </apple-pay-merchandising>      </body>    </html>", v19, v18, v6, v7, v8, v9, v10, v11, v16];;

    (*(*(a1 + 48) + 16))();
  }
}

- (id)merchandisingModalURLWithConfiguration:(id)configuration
{
  v12[3] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = -[PKPayLaterMerchandisingUtilities merchandisingBaseURLForEnviornmentType:](self, "merchandisingBaseURLForEnviornmentType:", [configurationCopy environmentType]);
  v6 = [(PKPayLaterMerchandisingUtilities *)self _fragmentForModalConfiguration:configurationCopy];
  action = [configurationCopy action];

  v8 = @"calculator.html";
  if (action != 1)
  {
    v8 = 0;
  }

  if (!action)
  {
    v8 = @"learn-more.html";
  }

  v12[0] = @"jsapi";
  v12[1] = @"v1.1.0";
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v10 = [(PKPayLaterMerchandisingUtilities *)self _urlWithBaseURL:v5 pathComponents:v9 queryParameters:0 fragment:v6];

  return v10;
}

- (id)merchandisingEligibilityURLWithConfiguration:(id)configuration
{
  v11[3] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = -[PKPayLaterMerchandisingUtilities merchandisingBaseURLForEnviornmentType:](self, "merchandisingBaseURLForEnviornmentType:", [configurationCopy environmentType]);
  region = [configurationCopy region];

  v7 = [(PKPayLaterMerchandisingUtilities *)self _dynamicMerchandisingURLWithRegionCode:region];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  v9 = [(PKPayLaterMerchandisingUtilities *)self _urlWithBaseURL:v5 pathComponents:v8 queryParameters:0 fragment:0];

  return v9;
}

- (id)merchandisingBaseURLForEnviornmentType:(unint64_t)type
{
  _baseURLComponents = [(PKPayLaterMerchandisingUtilities *)self _baseURLComponents];
  v5 = _baseURLComponents;
  if (type > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79DE9C8[type];
  }

  [_baseURLComponents setHost:v6];
  v7 = [v5 URL];

  return v7;
}

- (void)evaluateEligibilityForConfiguration:(id)configuration completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = configurationCopy;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Evaluating eligiblity for configuration: %@", buf, 0xCu);
    }

    v16 = 0;
    v17 = 0;
    v9 = [(PKPayLaterMerchandisingUtilities *)self _evaluateLocalChecksForConfiguration:configurationCopy outError:&v17 invalidProperties:&v16];
    v10 = v17;
    v11 = v16;
    if (v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __83__PKPayLaterMerchandisingUtilities_evaluateEligibilityForConfiguration_completion___block_invoke;
      v12[3] = &unk_1E79DE980;
      v13 = configurationCopy;
      v14 = v11;
      v15 = completionCopy;
      [(PKPayLaterMerchandisingUtilities *)self _validateRemoteChecksForConfiguration:v13 completion:v12];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Pay later widget did not pass local checks: %@. Invalid properties %@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, v10, v11);
    }
  }
}

void __83__PKPayLaterMerchandisingUtilities_evaluateEligibilityForConfiguration_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v9 = "Pay later widget did not pass remote checks: %@. Invalid properties %@";
      v10 = v7;
      v11 = 22;
LABEL_6:
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
    }
  }

  else if (v8)
  {
    v12 = a1[4];
    v15 = 138412290;
    v16 = v12;
    v9 = "Pay later widget is eligble for configuration: %@.";
    v10 = v7;
    v11 = 12;
    goto LABEL_6;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v13 unionSet:a1[5]];
  [v13 unionSet:v6];
  (*(a1[6] + 16))(a1[6], v5, v13, v14);
}

- (void)clearWebRequestCache
{
  configuration = [(NSURLSession *)self->_urlSession configuration];
  uRLCache = [configuration URLCache];
  [uRLCache removeAllCachedResponses];
}

- (void)_performWebRequestForURL:(id)l completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = lCopy;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingUtilities requesting contents of URL %@", buf, 0xCu);
    }

    urlSession = self->_urlSession;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKPayLaterMerchandisingUtilities__performWebRequestForURL_completion___block_invoke;
    v11[3] = &unk_1E79CB9F0;
    v12 = completionCopy;
    v10 = [(NSURLSession *)urlSession dataTaskWithURL:lCopy completionHandler:v11];
    [v10 resume];
  }
}

void __72__PKPayLaterMerchandisingUtilities__performWebRequestForURL_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218498;
    v13 = [v7 length];
    v14 = 2048;
    v15 = [v9 code];
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingUtilities received response data %ld bytes, error code %ld, and error %@", &v12, 0x20u);
  }

  if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v8 statusCode] == 200)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v11, 0);
  }
}

- (BOOL)_evaluateLocalChecksForConfiguration:(id)configuration outError:(id *)error invalidProperties:(id *)properties
{
  v47[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    [(PKPayLaterMerchandisingUtilities *)self _formValidationError:error underlyingError:0];
  }

  amount = [configurationCopy amount];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = amount;
    if ([v11 pk_isNotANumber])
    {
      v12 = @"amount must be a number";
    }

    else if ([v11 pk_isNegativeNumber] & 1) != 0 || (objc_msgSend(v11, "pk_isZeroNumber"))
    {
      v12 = @"amount must be greater than zero";
    }

    else if (PKIsCurrencyDecimalTooLarge(v11))
    {
      v12 = @"amount too large";
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported value for amount", amount];
  }

  propertiesCopy = properties;
  if (error && v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    *error = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v14];
  }

  else
  {

    if (!v12)
    {
      goto LABEL_19;
    }
  }

  [v9 addObject:&unk_1F23B5420];
  [(PKPayLaterMerchandisingUtilities *)self _formValidationError:error underlyingError:0];
LABEL_19:
  v45 = v9;
  currency = [configurationCopy currency];
  iSOCurrencyCodes = [MEMORY[0x1E695DF58] ISOCurrencyCodes];
  v17 = currency;
  v18 = iSOCurrencyCodes;
  v19 = v18;
  selfCopy = self;
  v44 = configurationCopy;
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0;
      v22 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    [v18 containsObject:0];
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported value for %@", v17, @"currency"];
  v24 = MEMORY[0x1E696ABC0];
  v46 = *MEMORY[0x1E696A578];
  v47[0] = v23;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v21 = [v24 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v25];
  v26 = v21;

  v22 = 0;
LABEL_24:

  v27 = v21;
  if ((v22 & 1) == 0)
  {
    [v45 addObject:&unk_1F23B5438];
    [(PKPayLaterMerchandisingUtilities *)self _formValidationError:error underlyingError:v27];
  }

  v28 = self->_locale;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported value for locale", v28];
    if (error)
    {
      goto LABEL_33;
    }

LABEL_35:

    v36 = propertiesCopy;
    v37 = v45;
    if (!v33)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v29 = v28;
  availableLocaleIdentifiers = [MEMORY[0x1E695DF58] availableLocaleIdentifiers];
  localeIdentifier = [(NSLocale *)v29 localeIdentifier];
  v32 = [availableLocaleIdentifiers containsObject:localeIdentifier];

  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a valid locale", v29];
  }

  self = selfCopy;
  if (!error)
  {
    goto LABEL_35;
  }

LABEL_33:
  if (!v33)
  {
    goto LABEL_35;
  }

  v34 = MEMORY[0x1E696ABC0];
  v46 = *MEMORY[0x1E696A578];
  v47[0] = v33;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  self = selfCopy;
  *error = [v34 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v35];

  v36 = propertiesCopy;
  v37 = v45;
LABEL_36:
  [v37 addObject:&unk_1F23B5450];
  [(PKPayLaterMerchandisingUtilities *)self _formValidationError:error underlyingError:v27];
LABEL_37:
  if (v36)
  {
    v38 = v37;
    *v36 = v37;
  }

  if (v33)
  {
    v39 = 0;
  }

  else
  {
    v39 = v22;
  }

  if (v12)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  return isKindOfClass & v40;
}

- (void)_validateRemoteChecksForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = [(PKPayLaterMerchandisingUtilities *)self merchandisingEligibilityURLWithConfiguration:configurationCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__PKPayLaterMerchandisingUtilities__validateRemoteChecksForConfiguration_completion___block_invoke;
    v11[3] = &unk_1E79DE9A8;
    v11[4] = self;
    v14 = completionCopy;
    v12 = configurationCopy;
    v13 = v8;
    v10 = v8;
    [(PKPayLaterMerchandisingUtilities *)self _performWebRequestForURL:v9 completion:v11];
  }
}

void __85__PKPayLaterMerchandisingUtilities__validateRemoteChecksForConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v44 = v5;
  v7 = [v5 length];
  if (v6 || !v7)
  {
    v14 = *(a1 + 32);
    v46 = 0;
    [v14 _formValidationError:&v46 underlyingError:v6];
    v8 = v46;
    (*(*(a1 + 56) + 16))();
    goto LABEL_33;
  }

  v45 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v45];
  v6 = v45;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
  }

  v37 = [v8 PKDictionaryForKey:@"method"];
  v9 = [v37 PKDictionaryForKey:@"bnpl"];
  v41 = [v9 PKDecimalNumberForKey:@"minAmount"];
  v36 = v9;
  v43 = [v9 PKDecimalNumberForKey:@"maxAmount"];
  v10 = [v8 PKStringForKey:@"currencyCode"];
  v11 = [v8 objectForKey:@"nativeContent"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v8 objectForKey:@"text"];
  }

  v15 = v13;

  v16 = [v15 allKeys];
  v39 = v15;
  if ([v16 count])
  {
    v42 = [MEMORY[0x1E695DFD8] setWithArray:v16];
  }

  else
  {
    v42 = 0;
  }

  v17 = [*(a1 + 40) currency];
  v18 = v10;
  v19 = v17;
  v20 = v19;
  v40 = v18;
  v38 = v16;
  if (v18 == v19)
  {
  }

  else
  {
    if (!v18 || !v19)
    {

      v21 = v18;
LABEL_20:
      [*(a1 + 48) addObject:&unk_1F23B5438];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported value for currency", v21];
      goto LABEL_21;
    }

    v21 = v18;
    v22 = [v18 isEqualToString:v19];

    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v23 = 0;
LABEL_21:
  v24 = [*(*(a1 + 32) + 16) languageCode];
  if (([v42 containsObject:v24] & 1) == 0)
  {
    [*(a1 + 48) addObject:&unk_1F23B5450];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported language code", v24];

    v23 = v25;
  }

  v26 = v41;
  v27 = [*(a1 + 40) amount];
  v28 = v27;
  if (v41 && [v27 compare:v41] == -1)
  {
    [*(a1 + 48) addObject:&unk_1F23B5420];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported amount", v28];

    v23 = v29;
  }

  if (v43 && [v28 compare:?] == 1)
  {
    [*(a1 + 48) addObject:&unk_1F23B5420];
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported amount", v28];

    v23 = v30;
  }

  if (v23)
  {
    v31 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48[0] = v23;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v32 = v23;
    v34 = v33 = v24;
    v26 = v41;
    v35 = [v31 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v34];

    v24 = v33;
    v23 = v32;
  }

  else
  {
    v35 = 0;
  }

  (*(*(a1 + 56) + 16))();

LABEL_33:
}

- (BOOL)_formValidationError:(id *)error underlyingError:(id)underlyingError
{
  if (error)
  {
    v5 = MEMORY[0x1E695DF90];
    underlyingErrorCopy = underlyingError;
    v7 = objc_alloc_init(v5);
    [v7 safelySetObject:@"Invalid pay later merchandising configuration" forKey:*MEMORY[0x1E696A578]];
    [v7 safelySetObject:underlyingErrorCopy forKey:*MEMORY[0x1E696AA08]];

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v7];
  }

  return 0;
}

- (id)_baseURLComponents
{
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v2 setScheme:@"https"];

  return v2;
}

- (id)_fragmentForModalConfiguration:(id)configuration
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([configurationCopy action] <= 1)
  {
    amountString = [configurationCopy amountString];
    [v5 safelySetObject:amountString forKey:@"amount"];

    [v5 safelySetObject:@"4" forKey:@"frequency"];
    v7 = PKPayLaterThemeToString([configurationCopy theme]);
    [v5 safelySetObject:v7 forKey:@"theme"];

    _localeString = [(PKPayLaterMerchandisingUtilities *)self _localeString];
    [v5 safelySetObject:_localeString forKey:@"locale"];

    v9 = -[PKPayLaterMerchandisingUtilities merchandisingBaseURLForEnviornmentType:](self, "merchandisingBaseURLForEnviornmentType:", [configurationCopy environmentType]);
    host = [v9 host];

    [v5 safelySetObject:host forKey:@"referralUrl"];
  }

  if (![v5 count])
  {
    v14 = 0;
    goto LABEL_14;
  }

  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Using fragment dictionary for pay later merchandising modal: %@", buf, 0xCu);
  }

  v16 = 0;
  v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:4 error:&v16];
  v13 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Pay Later Merchandising - failed to serialize data: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v11 = [v12 base64EncodedStringWithOptions:16];
  if (![v11 length])
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data=%@", v11];
LABEL_13:

LABEL_14:

  return v14;
}

- (id)_dynamicMerchandisingURLWithRegionCode:(id)code
{
  v3 = MEMORY[0x1E696AEC0];
  lowercaseString = [code lowercaseString];
  v5 = [v3 stringWithFormat:@"merchandising-%@.json", lowercaseString];

  return v5;
}

- (id)_urlWithBaseURL:(id)l pathComponents:(id)components queryParameters:(id)parameters fragment:(id)fragment
{
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  componentsCopy = components;
  parametersCopy = parameters;
  fragmentCopy = fragment;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = [componentsCopy countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    do
    {
      v15 = 0;
      v16 = lCopy;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(componentsCopy);
        }

        v17 = *(*(&v44 + 1) + 8 * v15);
        uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        v19 = [v17 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
        lCopy = [v16 URLByAppendingPathComponent:v19];

        ++v15;
        v16 = lCopy;
      }

      while (v13 != v15);
      v13 = [componentsCopy countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v13);
  }

  v37 = componentsCopy;
  v39 = objc_alloc_init(MEMORY[0x1E696AD60]);
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = parametersCopy;
  v21 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    v24 = @"?";
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v40 + 1) + 8 * i);
        name = [v26 name];
        value = [v26 value];
        v29 = [name stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
        v30 = [value stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
        [v39 appendFormat:@"%@%@=%@", v24, v29, v30];

        v24 = @"&";
      }

      v22 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v22);
  }

  if ([fragmentCopy length])
  {
    [v39 appendFormat:@"#%@", fragmentCopy];
  }

  v31 = MEMORY[0x1E695DFF8];
  absoluteString = [lCopy absoluteString];
  v33 = [absoluteString stringByAppendingString:v39];
  v34 = [v31 URLWithString:v33];

  return v34;
}

- (id)_localeString
{
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  v3 = [localeIdentifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v3;
}

@end