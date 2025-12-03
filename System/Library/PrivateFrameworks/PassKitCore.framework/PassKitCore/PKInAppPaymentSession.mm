@interface PKInAppPaymentSession
- (PKInAppPaymentSession)initWithInternalSession:(id)session targetQueue:(id)queue;
- (id)_appletForPaymentApplication:(id)application;
- (id)_appletWithIdentifier:(id)identifier;
- (id)authorizePaymentRequest:(id)request forPaymentApplication:(id)application usingNonce:(id)nonce withAuthenticationCredential:(id)credential;
- (id)authorizePaymentRequest:(id)request forPaymentApplication:(id)application usingNonce:(id)nonce withAuthenticationCredential:(id)credential isFeatureNotSupportedError:(BOOL *)error;
- (id)authorizePaymentRequest:(id)request forPaymentApplication:(id)application withAuthorizationParameters:(id)parameters;
- (id)authorizeWithRequest:(id)request authorizationParameters:(id)parameters;
@end

@implementation PKInAppPaymentSession

- (PKInAppPaymentSession)initWithInternalSession:(id)session targetQueue:(id)queue
{
  sessionCopy = session;
  queueCopy = queue;
  nfSession = [sessionCopy nfSession];
  PKGetClassNFECommercePaymentSession();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [sessionCopy endSession];

    sessionCopy = 0;
  }

  v12.receiver = self;
  v12.super_class = PKInAppPaymentSession;
  v10 = [(PKPaymentSession *)&v12 initWithInternalSession:sessionCopy targetQueue:queueCopy];

  return v10;
}

- (id)authorizePaymentRequest:(id)request forPaymentApplication:(id)application usingNonce:(id)nonce withAuthenticationCredential:(id)credential
{
  credentialCopy = credential;
  nonceCopy = nonce;
  applicationCopy = application;
  requestCopy = request;
  v14 = [[PKInAppPaymentSessionAuthorizeParamaters alloc] initWithNonce:nonceCopy authenticationCredential:credentialCopy networkMerchantIdentifier:0 cryptogramType:0];

  v15 = [(PKInAppPaymentSession *)self authorizePaymentRequest:requestCopy forPaymentApplication:applicationCopy withAuthorizationParameters:v14];

  return v15;
}

- (id)authorizePaymentRequest:(id)request forPaymentApplication:(id)application usingNonce:(id)nonce withAuthenticationCredential:(id)credential isFeatureNotSupportedError:(BOOL *)error
{
  credentialCopy = credential;
  nonceCopy = nonce;
  applicationCopy = application;
  requestCopy = request;
  v16 = [[PKInAppPaymentSessionAuthorizeParamaters alloc] initWithNonce:nonceCopy authenticationCredential:credentialCopy networkMerchantIdentifier:0 cryptogramType:0];

  [(PKInAppPaymentSessionAuthorizeParamaters *)v16 setIsFeatureNotSupportedError:error];
  v17 = [(PKInAppPaymentSession *)self authorizePaymentRequest:requestCopy forPaymentApplication:applicationCopy withAuthorizationParameters:v16];

  return v17;
}

- (id)authorizePaymentRequest:(id)request forPaymentApplication:(id)application withAuthorizationParameters:(id)parameters
{
  parametersCopy = parameters;
  applicationCopy = application;
  requestCopy = request;
  v11 = objc_alloc_init(PKInAppPaymentSessionAuthorizationRequest);
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setPaymentApplication:applicationCopy];

  currencyCode = [requestCopy currencyCode];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setCurrencyCode:currencyCode];

  countryCode = [requestCopy countryCode];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setCountryCode:countryCode];

  _transactionAmount = [requestCopy _transactionAmount];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setTransactionAmount:_transactionAmount];

  -[PKInAppPaymentSessionAuthorizationRequest setMerchantCapabilities:](v11, "setMerchantCapabilities:", [requestCopy merchantCapabilities]);
  supportedNetworks = [requestCopy supportedNetworks];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setSupportedNetworks:supportedNetworks];

  merchantIdentifier = [requestCopy merchantIdentifier];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setMerchantIdentifier:merchantIdentifier];

  applicationData = [requestCopy applicationData];
  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setApplicationData:applicationData];

  merchantSession = [requestCopy merchantSession];

  [(PKInAppPaymentSessionAuthorizationRequest *)v11 setMerchantSession:merchantSession];
  v19 = [(PKInAppPaymentSession *)self authorizeWithRequest:v11 authorizationParameters:parametersCopy];

  return v19;
}

- (id)authorizeWithRequest:(id)request authorizationParameters:(id)parameters
{
  v67 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  parametersCopy = parameters;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__64;
  v57 = __Block_byref_object_dispose__64;
  v58 = 0;
  if (PKMockOsloSecureElementAuth())
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKInAppPaymentSession authorizePaymentRequest: mocking wrapped payment data", buf, 2u);
    }

    v8 = objc_alloc_init(PKWrappedPayment);
    v9 = v54[5];
    v54[5] = v8;

    v10 = v54[5];
    v11 = [@"000000000000000000000000000000000000000000000000" dataUsingEncoding:4];
    [v10 setTransactionData:v11];

    [v54[5] setTransactionIdentifier:@"0123456789ABCDEF"];
    v12 = v54[5];
    countryCode = [requestCopy countryCode];
    [v12 setMerchantCountryCode:countryCode];

    v14 = v54[5];
  }

  else
  {
    paymentApplication = [requestCopy paymentApplication];
    v44 = [(PKInAppPaymentSession *)self _appletForPaymentApplication:?];
    nonce = [parametersCopy nonce];
    authenticationCredential = [parametersCopy authenticationCredential];
    networkMerchantIdentifier = [parametersCopy networkMerchantIdentifier];
    isFeatureNotSupportedError = [parametersCopy isFeatureNotSupportedError];
    cryptogramType = [parametersCopy cryptogramType];
    v17 = requestCopy;
    v45 = networkMerchantIdentifier;
    v18 = nonce;
    paymentApplication2 = [v17 paymentApplication];
    *buf = 0;
    [v18 getBytes:buf length:4];

    *buf = bswap32(*buf);
    v20 = objc_alloc_init(PKGetClassNFECommercePaymentRequest());
    v21 = [PKPaymentMerchantData alloc];
    merchantIdentifier = [v17 merchantIdentifier];
    applicationData = [v17 applicationData];
    merchantSession = [v17 merchantSession];
    v25 = [(PKPaymentMerchantData *)v21 initWithMerchantIdentifier:merchantIdentifier applicationData:applicationData merchantSession:merchantSession];

    applicationIdentifier = [paymentApplication2 applicationIdentifier];
    [v20 setAppletIdentifier:applicationIdentifier];

    encode = [(PKPaymentMerchantData *)v25 encode];
    [v20 setMerchantData:encode];

    currencyCode = [v17 currencyCode];
    [v20 setCurrencyCode:currencyCode];

    countryCode2 = [v17 countryCode];
    [v20 setCountryCode:countryCode2];

    transactionAmount = [v17 transactionAmount];
    [v20 setTransactionAmount:transactionAmount];

    merchantCapabilities = [v17 merchantCapabilities];
    if ((~merchantCapabilities & 3) == 0)
    {
      supportedNetworks = [v17 supportedNetworks];
      if ([supportedNetworks containsObject:@"ChinaUnionPay"])
      {
        v33 = [paymentApplication2 paymentNetworkIdentifier] == 11;

        if (!v33)
        {
          LOBYTE(merchantCapabilities) = merchantCapabilities & 0xFD;
        }
      }

      else
      {
      }
    }

    v34 = merchantCapabilities | 0x40;
    if (cryptogramType != 1)
    {
      v34 = merchantCapabilities;
    }

    [v20 setMerchantCapabilities:v34 & 0x43];
    [v20 setUnpredictableNumber:*buf];
    date = [MEMORY[0x1E695DF00] date];
    [v20 setTransactionDate:date];

    [v20 setNetworkMerchantIdentifier:v45];
    v36 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v60 = v20;
      v61 = 2112;
      v62 = paymentApplication;
      v63 = 2112;
      v64 = v44;
      v65 = 2112;
      v66 = v18;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Authorizing Payment Request: %@ for Payment Application %@ (Applet: %@) with nonce: %@", buf, 0x2Au);
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __70__PKInAppPaymentSession_authorizeWithRequest_authorizationParameters___block_invoke;
    v47[3] = &unk_1E79CB368;
    v37 = authenticationCredential;
    v48 = v37;
    v38 = v20;
    v49 = v38;
    v51 = &v53;
    v50 = v17;
    v52 = isFeatureNotSupportedError;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v47];
    v14 = v54[5];
  }

  _Block_object_dispose(&v53, 8);

  return v14;
}

void __70__PKInAppPaymentSession_authorizeWithRequest_authorizationParameters___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [a2 nfSession];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v28 = 0;
  v6 = [v3 performECommercePayment:v4 request:v5 error:&v28];
  v7 = v28;

  if (v6)
  {
    v8 = *(a1 + 48);
    v9 = v6;
    v10 = objc_alloc_init(PKWrappedPayment);
    v11 = [v9 transactionIdentifier];
    [(PKWrappedPayment *)v10 setTransactionIdentifier:v11];

    v12 = [v9 transactionData];
    [(PKWrappedPayment *)v10 setTransactionData:v12];

    v13 = [v9 confirmationBlobSignature];
    [(PKWrappedPayment *)v10 setTransactionInstructionsSignature:v13];

    v14 = [PKSecureElementCertificateSet alloc];
    v15 = [v9 certs];
    v16 = [(PKSecureElementCertificateSet *)v14 initWithDictionary:v15];
    [(PKWrappedPayment *)v10 setCertificates:v16];

    v17 = [v8 countryCode];

    [(PKWrappedPayment *)v10 setMerchantCountryCode:v17];
    v18 = [v9 SEPcerts];
    [(PKWrappedPayment *)v10 setSEPCertificates:v18];

    v19 = [v9 confirmationBlobHash];
    [(PKWrappedPayment *)v10 setConfirmationBlobHash:v19];

    v20 = [v9 confirmationBlobVersion];
    [(PKWrappedPayment *)v10 setConfirmationBlobVersion:v20];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v10;
  }

  else
  {
    v22 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 40);
      *buf = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Failed to Authorize Payment Request: %@ Error: %@", buf, 0x16u);
    }
  }

  v24 = *(a1 + 64);
  if (v24)
  {
    if (v7)
    {
      v25 = [v7 domain];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nfcd"];
      if ([v25 isEqualToString:v26])
      {
        v27 = [v7 code] == 14;
      }

      else
      {
        v27 = 0;
      }

      **(a1 + 64) = v27;
    }

    else
    {
      *v24 = 0;
    }
  }
}

- (id)_appletForPaymentApplication:(id)application
{
  applicationIdentifier = [application applicationIdentifier];
  v5 = [(PKInAppPaymentSession *)self _appletWithIdentifier:applicationIdentifier];

  return v5;
}

- (id)_appletWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__64;
  v15 = __Block_byref_object_dispose__64;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PKInAppPaymentSession__appletWithIdentifier___block_invoke;
  v8[3] = &unk_1E79C7BD0;
  v10 = &v11;
  v5 = identifierCopy;
  v9 = v5;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__PKInAppPaymentSession__appletWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 nfSession];
  v3 = [v6 appletWithIdentifier:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end