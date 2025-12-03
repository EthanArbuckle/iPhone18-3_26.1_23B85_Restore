@interface PKApplePayTrustSession
- (BOOL)deleteKeyWithIdentifier:(id)identifier;
- (PKApplePayTrustSession)initWithInternalSession:(id)session targetQueue:(id)queue;
- (id)createKeyWithRequest:(id)request error:(id *)error;
- (id)keyWithIdentifier:(id)identifier;
- (id)signatureForRequest:(id)request withAuthorization:(id)authorization;
@end

@implementation PKApplePayTrustSession

- (PKApplePayTrustSession)initWithInternalSession:(id)session targetQueue:(id)queue
{
  sessionCopy = session;
  queueCopy = queue;
  nfSession = [sessionCopy nfSession];
  PKGetClassNFTrustSession();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [sessionCopy endSession];

    sessionCopy = 0;
  }

  v12.receiver = self;
  v12.super_class = PKApplePayTrustSession;
  v10 = [(PKPaymentSession *)&v12 initWithInternalSession:sessionCopy targetQueue:queueCopy];

  return v10;
}

- (id)createKeyWithRequest:(id)request error:(id *)error
{
  v43[3] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__48;
  v38 = __Block_byref_object_dispose__48;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__48;
  v32 = __Block_byref_object_dispose__48;
  v33 = 0;
  v5 = PKGetClassNFTrustLocalValidation();
  v6 = PKGetClassNFTrustKeyRequest();
  subjectIdentifier = [requestCopy subjectIdentifier];
  localValidationWithPassCode = [v5 localValidationWithPassCode];
  v42 = localValidationWithPassCode;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v43[0] = v9;
  localValidationWithTouchID = [v5 localValidationWithTouchID];
  v41 = localValidationWithTouchID;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v43[1] = v11;
  localValidationWithFaceID = [v5 localValidationWithFaceID];
  v40 = localValidationWithFaceID;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v43[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v15 = [v6 keyRequestWithSubjectIdentifier:subjectIdentifier discretionaryData:0 localValidations:v14 counterLimit:&unk_1F23B5198];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __53__PKApplePayTrustSession_createKeyWithRequest_error___block_invoke;
  v23[3] = &unk_1E79DA270;
  v16 = requestCopy;
  v24 = v16;
  v17 = v15;
  v25 = v17;
  v26 = &v34;
  v27 = &v28;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v23];
  v18 = v35;
  if (error && !v35[5])
  {
    *error = v29[5];
    v18 = v35;
  }

  v19 = v18[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

void __53__PKApplePayTrustSession_createKeyWithRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a2 nfSession];
  v4 = [*(a1 + 32) keyIdentifier];
  v5 = *(a1 + 40);
  v15 = 0;
  v6 = [v3 createKey:v4 request:v5 error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = [[PKApplePayTrustKey alloc] initWithKey:v6];
    v9 = 48;
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create Apple Pay Trust key: %@ Error: %@", buf, 0x16u);
    }

    v8 = [v7 copy];
    v9 = 56;
  }

  v13 = *(*(a1 + v9) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;
}

- (id)keyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__48;
  v16 = __Block_byref_object_dispose__48;
  v17 = 0;
  if (identifierCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__PKApplePayTrustSession_keyWithIdentifier___block_invoke;
    v9[3] = &unk_1E79C7B30;
    v10 = identifierCopy;
    v11 = &v12;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v9];

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__PKApplePayTrustSession_keyWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a2 nfSession];
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v3 getKey:v4 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    v11 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Failed to get key with keyIdentifier: %@, error: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = [[PKApplePayTrustKey alloc] initWithKey:v5];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (BOOL)deleteKeyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (identifierCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PKApplePayTrustSession_deleteKeyWithIdentifier___block_invoke;
    v8[3] = &unk_1E79C7BD0;
    v10 = &v11;
    v9 = identifierCopy;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v8];

    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void __50__PKApplePayTrustSession_deleteKeyWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a2 nfSession];
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v3 deleteKey:v4 error:&v12];
  v6 = v12;
  *(*(*(a1 + 40) + 8) + 24) = v5;

  LODWORD(v3) = *(*(*(a1 + 40) + 8) + 24);
  v7 = PKLogFacilityTypeGetObject(0x10uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v8)
    {
      *buf = 0;
      v9 = "Successfully deleted Apple Pay Trust key.";
      v10 = v7;
      v11 = 2;
LABEL_6:
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (v8)
  {
    *buf = 138412290;
    v14 = v6;
    v9 = "Failed to delete Apple Pay Trust key with Error: %@";
    v10 = v7;
    v11 = 12;
    goto LABEL_6;
  }
}

- (id)signatureForRequest:(id)request withAuthorization:(id)authorization
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  authorizationCopy = authorization;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__48;
  v33 = __Block_byref_object_dispose__48;
  v34 = 0;
  if (PKMockOsloSecureElementAuth())
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKApplePayTrustSession signatureForRequest: mocking signature", buf, 2u);
    }

    v9 = [PKApplePayTrustSignature alloc];
    v10 = [@"000000000000000000000000000000000000000000000000" dataUsingEncoding:4];
    v11 = [(PKApplePayTrustSignature *)v9 initWithSignatureRequest:requestCopy signature:v10];
    v12 = v30[5];
    v30[5] = v11;

    v13 = v30[5];
  }

  else
  {
    nonce = [requestCopy nonce];
    v15 = [nonce length];
    if (v15 > 7)
    {
      v17 = nonce;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF88]);
      [v16 increaseLengthBy:8 - v15];
      [v16 appendData:nonce];
      v17 = [v16 copy];
    }

    v18 = PKGetClassNFTrustSignRequest();
    manifestHash = [requestCopy manifestHash];
    v20 = [v18 signRequestWithChallenge:v17 data:manifestHash];

    v21 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v20;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Signing Apple Pay Trust Request: %@", buf, 0xCu);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64__PKApplePayTrustSession_signatureForRequest_withAuthorization___block_invoke;
    v24[3] = &unk_1E79DA298;
    v25 = requestCopy;
    v22 = v20;
    v26 = v22;
    v27 = authorizationCopy;
    v28 = &v29;
    [(PKPaymentSession *)self performBlockSyncOnInternalSession:v24];
    v13 = v30[5];
  }

  _Block_object_dispose(&v29, 8);

  return v13;
}

void __64__PKApplePayTrustSession_signatureForRequest_withAuthorization___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a2 nfSession];
  v4 = [*(a1 + 32) keyIdentifier];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v15 = 0;
  v7 = [v3 signWithKey:v4 request:v5 authorization:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [v7 rawData];
    v10 = [v9 pk_decodeHexadecimal];

    v11 = [[PKApplePayTrustSignature alloc] initWithSignatureRequest:*(a1 + 32) signature:v10];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0x10uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      *buf = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to sign Apple Pay Trust Signature Request: %@ Error: %@", buf, 0x16u);
    }
  }
}

@end