@interface PKPeerPaymentSession
- (BOOL)deleteApplet;
- (PKPeerPaymentSession)initWithInternalSession:(id)a3 targetQueue:(id)a4;
- (id)authorizePeerPaymentQuote:(id)a3 forPaymentApplication:(id)a4 withAuthenticationCredential:(id)a5 shouldReregister:(BOOL *)a6;
@end

@implementation PKPeerPaymentSession

- (PKPeerPaymentSession)initWithInternalSession:(id)a3 targetQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 nfSession];
  PKGetClassNFPeerPaymentSession();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [v6 endSession];

    v6 = 0;
  }

  v12.receiver = self;
  v12.super_class = PKPeerPaymentSession;
  v10 = [(PKPaymentSession *)&v12 initWithInternalSession:v6 targetQueue:v7];

  return v10;
}

- (id)authorizePeerPaymentQuote:(id)a3 forPaymentApplication:(id)a4 withAuthenticationCredential:(id)a5 shouldReregister:(BOOL *)a6
{
  v82 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v65 = a4;
  v11 = a5;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__11;
  v76 = __Block_byref_object_dispose__11;
  v77 = 0;
  if (PKUseMockSURFServer())
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Mocking Authorization of Peer Payment Quote: %@", buf, 0xCu);
    }

    v13 = [[PKAuthorizedPeerPaymentQuote alloc] initWithQuote:v10 transactionData:0 certificates:0];
    v14 = v73[5];
    v73[5] = v13;
    goto LABEL_22;
  }

  if (PKMockOsloSecureElementAuth())
  {
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v10;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Mocking Signature of Peer Payment Quote: %@", buf, 0xCu);
    }

    v16 = [PKAuthorizedPeerPaymentQuote alloc];
    v14 = [@"000000000000000000000000000000000000000000000000" dataUsingEncoding:4];
    v17 = [(PKAuthorizedPeerPaymentQuote *)v16 initWithQuote:v10 transactionData:v14 certificates:MEMORY[0x1E695E0F8]];
    v18 = v73[5];
    v73[5] = v17;

    goto LABEL_22;
  }

  v58 = a6;
  v59 = self;
  v19 = v10;
  v62 = v65;
  v64 = objc_alloc_init(PKGetClassNFPeerPaymentRequest());
  *(&v63 + 1) = [v19 firstQuoteItemOfType:1];
  v61 = [v19 firstQuoteItemOfType:2];
  v60 = [v19 firstQuoteItemOfType:3];
  *&v63 = [v19 firstQuoteItemOfType:4];
  v20 = objc_alloc_init(PKGetClassNFPeerPaymentTransferRequest());
  v21 = [MEMORY[0x1E695DF00] date];
  [v20 setTransactionDate:v21];

  v22 = [v19 appleHash];
  v23 = [v22 hexEncoding];
  [v20 setAppleTransactionHash:v23];

  v24 = [v19 externalHash];
  v25 = [v24 hexEncoding];
  [v20 setPublicTransactionHash:v25];

  v26 = [v19 totalReceiveAmount];
  [v20 setTransactionAmount:v26];

  v27 = [v19 totalReceiveAmountCurrency];
  [v20 setTransactionCurrency:v27];

  v28 = v61;
  if (!v61)
  {
    if (*(&v63 + 1))
    {
      v31 = [*(&v63 + 1) countryCode];
      [v20 setTransactionCountry:v31];

      v32 = [*(&v63 + 1) nonce];
      [v20 setNonce:v32];
    }

    else
    {
      v28 = v60;
      if (v60)
      {
        goto LABEL_10;
      }

      if (!v63)
      {
        v57 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v57, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentQuote has no supported items. Refusing to create AN NFPeerPaymentRequest object.", buf, 2u);
        }

        v50 = 0;
        goto LABEL_19;
      }

      v54 = [v63 countryCode];
      [v20 setTransactionCountry:v54];

      v55 = [v63 nonce];
      [v20 setNonce:v55];

      v32 = [v19 calculatedTotalAmount];
      v56 = [v32 amount];
      [v20 setTransactionAmount:v56];
    }

    [v64 setTransferRequest:v20];
    goto LABEL_15;
  }

LABEL_10:
  v29 = [v28 countryCode];
  [v20 setTransactionCountry:v29];

  v30 = [v28 nonce];
  [v20 setNonce:v30];

  [v64 setTransferRequest:v20];
  if (v63 != 0)
  {
LABEL_15:
    v33 = *(&v63 + 1);
    if (!*(&v63 + 1))
    {
      v33 = v63;
    }

    v34 = v33;
    v35 = objc_alloc_init(PKGetClassNFECommercePaymentRequest());
    v36 = [v34 totalAmountCurrency];
    [v35 setCurrencyCode:v36];

    v37 = [v34 totalAmount];
    [v35 setTransactionAmount:v37];

    v38 = [MEMORY[0x1E695DF00] date];
    [v35 setTransactionDate:v38];

    v39 = [v62 applicationIdentifier];
    [v35 setAppletIdentifier:v39];

    v40 = [v34 nonce];
    *buf = 0;
    [v40 getBytes:buf length:4];
    [v35 setUnpredictableNumber:bswap32(*buf)];

    v41 = [v34 countryCode];
    [v35 setCountryCode:v41];

    v42 = [MEMORY[0x1E695DF88] data];
    v43 = [v19 externalHash];
    [v42 appendData:v43];

    v44 = [v19 appleHash];
    [v42 appendData:v44];

    v45 = [PKPaymentMerchantData alloc];
    v46 = [v34 merchantIdentifier];
    v47 = [v42 copy];
    v48 = [(PKPaymentMerchantData *)v45 initWithMerchantIdentifier:v46 applicationData:v47 merchantSession:0];

    v49 = [(PKPaymentMerchantData *)v48 encode];
    [v35 setMerchantData:v49];

    LOBYTE(v49) = [v34 merchantCapabilities];
    [v35 setMerchantCapabilities:v49 & 0x43];
    [v64 setTopUpRequest:v35];
  }

  v50 = v64;
LABEL_19:

  v51 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v79 = v50;
    v80 = 2112;
    v81 = v62;
    _os_log_impl(&dword_1AD337000, v51, OS_LOG_TYPE_DEFAULT, "Authorizing Peer Payment Quote: %@ for Payment Application %@", buf, 0x16u);
  }

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __118__PKPeerPaymentSession_authorizePeerPaymentQuote_forPaymentApplication_withAuthenticationCredential_shouldReregister___block_invoke;
  v66[3] = &unk_1E79CB368;
  v67 = v11;
  v14 = v50;
  v68 = v14;
  v70 = &v72;
  v69 = v19;
  v71 = v58;
  [(PKPaymentSession *)v59 performBlockSyncOnInternalSession:v66];

LABEL_22:
  v52 = v73[5];
  _Block_object_dispose(&v72, 8);

  return v52;
}

void __118__PKPeerPaymentSession_authorizePeerPaymentQuote_forPaymentApplication_withAuthenticationCredential_shouldReregister___block_invoke(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [a2 nfSession];
  v4 = a1[4];
  v5 = a1[5];
  v21 = 0;
  v6 = [v3 performPeerPayment:v4 request:v5 error:&v21];
  v7 = v21;

  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[5];
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Authorized Peer Payment Request: %@ Error: %@", buf, 0x16u);
  }

  if (v6)
  {
    v10 = [PKAuthorizedPeerPaymentQuote alloc];
    v11 = a1[6];
    v12 = [v6 transactionData];
    v13 = [v6 certificates];
    v14 = [(PKAuthorizedPeerPaymentQuote *)v10 initWithQuote:v11 transactionData:v12 certificates:v13];
    v15 = *(a1[7] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = a1[8];
  if (v17)
  {
    if (v7)
    {
      v18 = [v7 domain];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nfcd"];
      if ([v18 isEqualToString:v19])
      {
        v20 = [v7 code] == 42;
      }

      else
      {
        v20 = 0;
      }

      *a1[8] = v20;
    }

    else
    {
      *v17 = 0;
    }
  }
}

- (BOOL)deleteApplet
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v3 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Deleting purple trust applet.", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PKPeerPaymentSession_deleteApplet__block_invoke;
  v6[3] = &unk_1E79CB390;
  v6[4] = &v8;
  [(PKPaymentSession *)self performBlockSyncOnInternalSession:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __36__PKPeerPaymentSession_deleteApplet__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a2 nfSession];
  v4 = [v3 deleteKey];

  *(*(*(a1 + 32) + 8) + 24) = v4 == 0;
  v5 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Deleted purple trust applet with success %{public}@, error: %@", &v7, 0x16u);
  }
}

@end