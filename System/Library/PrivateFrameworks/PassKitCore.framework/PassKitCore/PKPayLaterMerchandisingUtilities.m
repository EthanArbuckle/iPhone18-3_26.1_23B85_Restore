@interface PKPayLaterMerchandisingUtilities
+ (id)sharedInstance;
- (BOOL)_evaluateLocalChecksForConfiguration:(id)a3 outError:(id *)a4 invalidProperties:(id *)a5;
- (BOOL)_formValidationError:(id *)a3 underlyingError:(id)a4;
- (PKPayLaterMerchandisingUtilities)init;
- (id)_baseURLComponents;
- (id)_dynamicMerchandisingURLWithRegionCode:(id)a3;
- (id)_fragmentForModalConfiguration:(id)a3;
- (id)_localeString;
- (id)_urlWithBaseURL:(id)a3 pathComponents:(id)a4 queryParameters:(id)a5 fragment:(id)a6;
- (id)merchandisingBaseURLForEnviornmentType:(unint64_t)a3;
- (id)merchandisingEligibilityURLWithConfiguration:(id)a3;
- (id)merchandisingModalURLWithConfiguration:(id)a3;
- (void)_performWebRequestForURL:(id)a3 completion:(id)a4;
- (void)_validateRemoteChecksForConfiguration:(id)a3 completion:(id)a4;
- (void)clearWebRequestCache;
- (void)evaluateEligibilityForConfiguration:(id)a3 completion:(id)a4;
- (void)merchandisingWidgetHTMLWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation PKPayLaterMerchandisingUtilities

- (PKPayLaterMerchandisingUtilities)init
{
  v8.receiver = self;
  v8.super_class = PKPayLaterMerchandisingUtilities;
  v2 = [(PKPayLaterMerchandisingUtilities *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695AC78] sharedSession];
    urlSession = v2->_urlSession;
    v2->_urlSession = v3;

    v5 = [MEMORY[0x1E695DF58] currentLocale];
    locale = v2->_locale;
    v2->_locale = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PKPayLaterMerchandisingUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)merchandisingWidgetHTMLWithConfiguration:(id)a3 completion:(id)a4
{
  v15[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = -[PKPayLaterMerchandisingUtilities merchandisingBaseURLForEnviornmentType:](self, "merchandisingBaseURLForEnviornmentType:", [v6 environmentType]);
    v15[0] = @"jsapi";
    v15[1] = @"v1.1.0";
    v15[2] = @"apple-pay-sdk.merchandising.js";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v10 = [(PKPayLaterMerchandisingUtilities *)self _urlWithBaseURL:v8 pathComponents:v9 queryParameters:0 fragment:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__PKPayLaterMerchandisingUtilities_merchandisingWidgetHTMLWithConfiguration_completion___block_invoke;
    v11[3] = &unk_1E79DE958;
    v14 = v7;
    v12 = v6;
    v13 = self;
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

- (id)merchandisingModalURLWithConfiguration:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = -[PKPayLaterMerchandisingUtilities merchandisingBaseURLForEnviornmentType:](self, "merchandisingBaseURLForEnviornmentType:", [v4 environmentType]);
  v6 = [(PKPayLaterMerchandisingUtilities *)self _fragmentForModalConfiguration:v4];
  v7 = [v4 action];

  v8 = @"calculator.html";
  if (v7 != 1)
  {
    v8 = 0;
  }

  if (!v7)
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

- (id)merchandisingEligibilityURLWithConfiguration:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = -[PKPayLaterMerchandisingUtilities merchandisingBaseURLForEnviornmentType:](self, "merchandisingBaseURLForEnviornmentType:", [v4 environmentType]);
  v6 = [v4 region];

  v7 = [(PKPayLaterMerchandisingUtilities *)self _dynamicMerchandisingURLWithRegionCode:v6];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  v9 = [(PKPayLaterMerchandisingUtilities *)self _urlWithBaseURL:v5 pathComponents:v8 queryParameters:0 fragment:0];

  return v9;
}

- (id)merchandisingBaseURLForEnviornmentType:(unint64_t)a3
{
  v4 = [(PKPayLaterMerchandisingUtilities *)self _baseURLComponents];
  v5 = v4;
  if (a3 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79DE9C8[a3];
  }

  [v4 setHost:v6];
  v7 = [v5 URL];

  return v7;
}

- (void)evaluateEligibilityForConfiguration:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Evaluating eligiblity for configuration: %@", buf, 0xCu);
    }

    v16 = 0;
    v17 = 0;
    v9 = [(PKPayLaterMerchandisingUtilities *)self _evaluateLocalChecksForConfiguration:v6 outError:&v17 invalidProperties:&v16];
    v10 = v17;
    v11 = v16;
    if (v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __83__PKPayLaterMerchandisingUtilities_evaluateEligibilityForConfiguration_completion___block_invoke;
      v12[3] = &unk_1E79DE980;
      v13 = v6;
      v14 = v11;
      v15 = v7;
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

      (*(v7 + 2))(v7, v10, v11);
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
  v3 = [(NSURLSession *)self->_urlSession configuration];
  v2 = [v3 URLCache];
  [v2 removeAllCachedResponses];
}

- (void)_performWebRequestForURL:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingUtilities requesting contents of URL %@", buf, 0xCu);
    }

    urlSession = self->_urlSession;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKPayLaterMerchandisingUtilities__performWebRequestForURL_completion___block_invoke;
    v11[3] = &unk_1E79CB9F0;
    v12 = v7;
    v10 = [(NSURLSession *)urlSession dataTaskWithURL:v6 completionHandler:v11];
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

- (BOOL)_evaluateLocalChecksForConfiguration:(id)a3 outError:(id *)a4 invalidProperties:(id *)a5
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    [(PKPayLaterMerchandisingUtilities *)self _formValidationError:a4 underlyingError:0];
  }

  v10 = [v8 amount];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
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
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported value for amount", v10];
  }

  v43 = a5;
  if (a4 && v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    *a4 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v14];
  }

  else
  {

    if (!v12)
    {
      goto LABEL_19;
    }
  }

  [v9 addObject:&unk_1F23B5420];
  [(PKPayLaterMerchandisingUtilities *)self _formValidationError:a4 underlyingError:0];
LABEL_19:
  v45 = v9;
  v15 = [v8 currency];
  v16 = [MEMORY[0x1E695DF58] ISOCurrencyCodes];
  v17 = v15;
  v18 = v16;
  v19 = v18;
  v20 = self;
  v44 = v8;
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
    [(PKPayLaterMerchandisingUtilities *)self _formValidationError:a4 underlyingError:v27];
  }

  v28 = self->_locale;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported value for locale", v28];
    if (a4)
    {
      goto LABEL_33;
    }

LABEL_35:

    v36 = v43;
    v37 = v45;
    if (!v33)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v29 = v28;
  v30 = [MEMORY[0x1E695DF58] availableLocaleIdentifiers];
  v31 = [(NSLocale *)v29 localeIdentifier];
  v32 = [v30 containsObject:v31];

  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a valid locale", v29];
  }

  self = v20;
  if (!a4)
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
  self = v20;
  *a4 = [v34 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v35];

  v36 = v43;
  v37 = v45;
LABEL_36:
  [v37 addObject:&unk_1F23B5450];
  [(PKPayLaterMerchandisingUtilities *)self _formValidationError:a4 underlyingError:v27];
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

- (void)_validateRemoteChecksForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = [(PKPayLaterMerchandisingUtilities *)self merchandisingEligibilityURLWithConfiguration:v6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__PKPayLaterMerchandisingUtilities__validateRemoteChecksForConfiguration_completion___block_invoke;
    v11[3] = &unk_1E79DE9A8;
    v11[4] = self;
    v14 = v7;
    v12 = v6;
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

- (BOOL)_formValidationError:(id *)a3 underlyingError:(id)a4
{
  if (a3)
  {
    v5 = MEMORY[0x1E695DF90];
    v6 = a4;
    v7 = objc_alloc_init(v5);
    [v7 safelySetObject:@"Invalid pay later merchandising configuration" forKey:*MEMORY[0x1E696A578]];
    [v7 safelySetObject:v6 forKey:*MEMORY[0x1E696AA08]];

    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v7];
  }

  return 0;
}

- (id)_baseURLComponents
{
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v2 setScheme:@"https"];

  return v2;
}

- (id)_fragmentForModalConfiguration:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 action] <= 1)
  {
    v6 = [v4 amountString];
    [v5 safelySetObject:v6 forKey:@"amount"];

    [v5 safelySetObject:@"4" forKey:@"frequency"];
    v7 = PKPayLaterThemeToString([v4 theme]);
    [v5 safelySetObject:v7 forKey:@"theme"];

    v8 = [(PKPayLaterMerchandisingUtilities *)self _localeString];
    [v5 safelySetObject:v8 forKey:@"locale"];

    v9 = -[PKPayLaterMerchandisingUtilities merchandisingBaseURLForEnviornmentType:](self, "merchandisingBaseURLForEnviornmentType:", [v4 environmentType]);
    v10 = [v9 host];

    [v5 safelySetObject:v10 forKey:@"referralUrl"];
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

- (id)_dynamicMerchandisingURLWithRegionCode:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 lowercaseString];
  v5 = [v3 stringWithFormat:@"merchandising-%@.json", v4];

  return v5;
}

- (id)_urlWithBaseURL:(id)a3 pathComponents:(id)a4 queryParameters:(id)a5 fragment:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v36 = a6;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    do
    {
      v15 = 0;
      v16 = v9;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v44 + 1) + 8 * v15);
        v18 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
        v19 = [v17 stringByAddingPercentEncodingWithAllowedCharacters:v18];
        v9 = [v16 URLByAppendingPathComponent:v19];

        ++v15;
        v16 = v9;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v13);
  }

  v37 = v10;
  v39 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v20 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v11;
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
        v27 = [v26 name];
        v28 = [v26 value];
        v29 = [v27 stringByAddingPercentEncodingWithAllowedCharacters:v20];
        v30 = [v28 stringByAddingPercentEncodingWithAllowedCharacters:v20];
        [v39 appendFormat:@"%@%@=%@", v24, v29, v30];

        v24 = @"&";
      }

      v22 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v22);
  }

  if ([v36 length])
  {
    [v39 appendFormat:@"#%@", v36];
  }

  v31 = MEMORY[0x1E695DFF8];
  v32 = [v9 absoluteString];
  v33 = [v32 stringByAppendingString:v39];
  v34 = [v31 URLWithString:v33];

  return v34;
}

- (id)_localeString
{
  v2 = [(NSLocale *)self->_locale localeIdentifier];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v3;
}

@end