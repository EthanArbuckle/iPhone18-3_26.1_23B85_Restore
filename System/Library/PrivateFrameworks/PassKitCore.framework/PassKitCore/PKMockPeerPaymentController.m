@interface PKMockPeerPaymentController
+ (BOOL)useMock;
+ (void)_adjustBalanceForAmount:(id)a3 subtract:(BOOL)a4 webService:(id)a5;
+ (void)_adjustBalanceForAuthorizedTransferQuote:(id)a3 webService:(id)a4;
+ (void)_insertPeerPaymentTransactionForAuthorizedTransferQuote:(id)a3;
+ (void)_insertPeerPaymentTransactionForAuthorizedTransferQuote:(id)a3 peerPaymentType:(int64_t)a4 mode:(unint64_t)a5 counterpartHandle:(id)a6 transactionIdentifier:(id)a7 amount:(id)a8;
+ (void)performNearbyAuthorizedQuote:(id)a3 completion:(id)a4;
+ (void)processNearbyPeerPaymentTransactionSuccessWithIdentifier:(id)a3 peerPaymentType:(int64_t)a4 amount:(id)a5 counterpartDisplayName:(id)a6;
- (PKMockPeerPaymentController)initWithPeerPaymentWebService:(id)a3;
- (id)_quoteItemDictionaryWithType:(unint64_t)a3 amount:(id)a4 alternateFundingSource:(id)a5 featureDescriptor:(id)a6;
- (id)_recipientForAddress:(id)a3 status:(unint64_t)a4;
- (void)_insertPaymentTransactionForSecondaryFundingSourceIfNecessary:(id)a3;
- (void)formalRequestTokenForAmount:(id)a3 source:(unint64_t)a4 completion:(id)a5;
- (void)identifyRecipientWithAddress:(id)a3 senderAddress:(id)a4 completion:(id)a5;
- (void)identifyRecipientsWithAddresses:(id)a3 senderAddress:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinator:(id *)a3 didAuthorizePeerPaymentQuote:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id *)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5;
- (void)performAction:(id)a3 withPaymentIdentifier:(id)a4 completion:(id)a5;
- (void)quoteWithAmount:(id)a3 source:(unint64_t)a4 requestToken:(id)a5 alternateFundingSource:(id)a6 preserveCurrentBalance:(unint64_t)a7 recurringPaymentIdentifier:(id)a8 frequency:(unint64_t)a9 startDate:(id)a10 threshold:(id)a11 completion:(id)a12;
@end

@implementation PKMockPeerPaymentController

+ (BOOL)useMock
{
  if (PKUseMockSURFServer())
  {
    return 1;
  }

  return PKStoreDemoModeEnabled();
}

- (PKMockPeerPaymentController)initWithPeerPaymentWebService:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKMockPeerPaymentController;
  v5 = [(PKPeerPaymentController *)&v8 initWithPeerPaymentWebService:v4];
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v10 = v5;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKMockPeerPaymentController: %p initWithPeerPaymentWebService: %@", buf, 0x16u);
    }

    v5->_shouldGenerateMockTransactions = 1;
  }

  return v5;
}

- (id)_recipientForAddress:(id)a3 status:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PKPeerPaymentRecipient);
  [(PKPeerPaymentRecipient *)v7 setStatus:a4];
  [(PKPeerPaymentRecipient *)v7 setIdentifier:v6];
  [(PKPeerPaymentRecipient *)v7 setReceiveCurrency:@"USD"];
  [(PKPeerPaymentRecipient *)v7 setAddress:v6];
  v8 = [(PKPeerPaymentController *)self displayNameForRecipientAddress:v6];

  [(PKPeerPaymentRecipient *)v7 setDisplayName:v8];
  [(PKPeerPaymentRecipient *)v7 setAllowsFormalPaymentRequests:1];

  return v7;
}

- (void)identifyRecipientWithAddress:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_time(0, 1000000000);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PKMockPeerPaymentController_identifyRecipientWithAddress_senderAddress_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_after(v11, MEMORY[0x1E69E96A0], v15);
}

void __85__PKMockPeerPaymentController_identifyRecipientWithAddress_senderAddress_completion___block_invoke(uint64_t a1)
{
  obj = [*(a1 + 32) _recipientForAddress:*(a1 + 40) status:1];
  v2 = [*(a1 + 32) internalState];
  objc_storeStrong(v2 + 5, obj);

  v3 = [*(a1 + 32) internalState];
  [v3[5] setAddress:*(a1 + 40)];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) internalState];
  objc_storeStrong(v5 + 4, v4);

  [*(a1 + 32) _setState:2 notify:1];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, [obj status], obj, 0);
  }
}

- (void)identifyRecipientsWithAddresses:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_time(0, 1000000000);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__PKMockPeerPaymentController_identifyRecipientsWithAddresses_senderAddress_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_after(v11, MEMORY[0x1E69E96A0], v15);
}

void __88__PKMockPeerPaymentController_identifyRecipientsWithAddresses_senderAddress_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 32) lastObject];
        if ([v8 isEqualToString:v9])
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        v11 = [*(a1 + 40) _recipientForAddress:v8 status:v10];
        [v2 addObject:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) internalState];
  objc_storeStrong(v13 + 4, v12);

  [*(a1 + 40) _setState:3 notify:1];
  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = [v2 copy];
    (*(v14 + 16))(v14, v15, 0);
  }
}

- (id)_quoteItemDictionaryWithType:(unint64_t)a3 amount:(id)a4 alternateFundingSource:(id)a5 featureDescriptor:(id)a6
{
  v42[16] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = [a5 devicePrimaryPaymentApplication];
  v12 = [v9 amount];
  v13 = [MEMORY[0x1E696AB90] zero];
  if (a5 && [v11 paymentType] != 1)
  {
    v14 = [v9 currency];
    v15 = PKMaximumFractionDigitsForCurrencyCode(v14);

    v16 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:v15 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v17 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.03"];
    v18 = [v9 amount];
    v19 = [v18 decimalNumberByMultiplyingBy:v17 withBehavior:v16];

    v13 = v19;
  }

  v20 = [v9 amount];
  v21 = [v20 decimalNumberByAdding:v13];

  v41[0] = @"type";
  v38 = PKPeerPaymentQuoteItemTypeToString(a3);
  v42[0] = v38;
  v42[1] = @"1";
  v41[1] = @"exchangeRate";
  v41[2] = @"sendAmount";
  v37 = [v12 stringValue];
  v42[2] = v37;
  v41[3] = @"sendAmountCurrency";
  v36 = [v9 currency];
  v42[3] = v36;
  v41[4] = @"receiveAmount";
  v35 = [v9 amount];
  v34 = [v35 stringValue];
  v42[4] = v34;
  v41[5] = @"receiveAmountCurrency";
  v22 = [v9 currency];
  v42[5] = v22;
  v41[6] = @"totalAmount";
  v39 = v21;
  v23 = [v21 stringValue];
  v42[6] = v23;
  v41[7] = @"totalAmountCurrency";
  v24 = [v9 currency];
  v42[7] = v24;
  v41[8] = @"dpanIdentifier";
  v40 = v12;
  v33 = v11;
  if (v11)
  {
    [v11 dpanIdentifier];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v25 = ;
  v42[8] = v25;
  v41[9] = @"fees";
  v26 = [v13 stringValue];
  v42[9] = v26;
  v41[10] = @"feesCurrency";
  v27 = [v9 currency];
  v42[10] = v27;
  v41[11] = @"supportedNetworks";
  [v10 supportedNetworks];
  v28 = v32 = v13;
  v42[11] = v28;
  v42[12] = &unk_1F23B3C80;
  v41[12] = @"merchantCapabilities";
  v41[13] = @"merchantIdentifier";
  v29 = [v10 merchantIdentifier];

  v42[13] = v29;
  v42[14] = @"342f5544";
  v41[14] = @"nonce";
  v41[15] = @"countryCode";
  v42[15] = @"US";
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:16];

  return v30;
}

- (void)quoteWithAmount:(id)a3 source:(unint64_t)a4 requestToken:(id)a5 alternateFundingSource:(id)a6 preserveCurrentBalance:(unint64_t)a7 recurringPaymentIdentifier:(id)a8 frequency:(unint64_t)a9 startDate:(id)a10 threshold:(id)a11 completion:(id)a12
{
  v54 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v45 = a5;
  v17 = a6;
  v18 = a8;
  v44 = a10;
  v19 = a11;
  v20 = a12;
  if (!v17)
  {
    v17 = [(PKPeerPaymentController *)self _defaultAlternateFundingSourceForMode:[(PKPeerPaymentController *)self mode]];
  }

  v21 = [(PKPeerPaymentController *)self account];
  v22 = v21;
  mockBalance = self->_mockBalance;
  if (mockBalance)
  {
    v24 = mockBalance;
  }

  else
  {
    v24 = [v21 currentBalance];
  }

  v25 = v24;
  if ([(PKPeerPaymentController *)self mode]== 5)
  {
    v26 = 0;
  }

  else
  {
    if ([(PKPeerPaymentController *)self mode]!= 1)
    {
      goto LABEL_17;
    }

    [v16 amount];
    v42 = v22;
    v27 = v16;
    v28 = v19;
    v30 = v29 = v18;
    v31 = [(PKCurrencyAmount *)v25 amount];
    v32 = [v31 compare:v30];

    v33 = v32 == -1;
    v34 = v32 != -1;
    v26 = v33 ? 40301 : 0;

    v18 = v29;
    v19 = v28;
    v16 = v27;
    v22 = v42;
    if (v34)
    {
      goto LABEL_17;
    }
  }

  if (v17)
  {
LABEL_17:
    v41 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __181__PKMockPeerPaymentController_quoteWithAmount_source_requestToken_alternateFundingSource_preserveCurrentBalance_recurringPaymentIdentifier_frequency_startDate_threshold_completion___block_invoke;
    block[3] = &unk_1E79C4F40;
    block[4] = self;
    v47 = v16;
    v48 = v17;
    v49 = v22;
    v50 = v25;
    v51 = v20;
    dispatch_after(v41, MEMORY[0x1E69E96A0], block);

    goto LABEL_18;
  }

  v43 = v19;
  v35 = v18;
  v36 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v53 = self;
    _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "PKMockPeerPaymentController %p: Failed to quote requiring alternative funding source as no suitable payment cards were found.", buf, 0xCu);
  }

  v37 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPeerPaymentWebServiceErrorDomain" code:v26 userInfo:0];
  v38 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNoC.isa, 0);
  v39 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNoC_0.isa, 0);
  v40 = PKDisplayableErrorCustomWithType(-1, v38, v39, v37, 0);

  (*(v20 + 2))(v20, 0, 0, v40);
  v18 = v35;
  v19 = v43;
LABEL_18:
}

void __181__PKMockPeerPaymentController_quoteWithAmount_source_requestToken_alternateFundingSource_preserveCurrentBalance_recurringPaymentIdentifier_frequency_startDate_threshold_completion___block_invoke(uint64_t a1)
{
  v88[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mode];
  v3 = [*(a1 + 32) mode];
  v4 = 0x1E696A000uLL;
  v75 = v3;
  if ([*(a1 + 32) mode] == 5)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) loadFromCardFeatureDescriptor];
    v9 = [v5 _quoteItemDictionaryWithType:1 amount:v6 alternateFundingSource:v7 featureDescriptor:v8];
    v88[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
    v74 = 3;
  }

  else
  {
    v11 = 5;
    if (v2 == 1)
    {
      v11 = 1;
      v12 = 1;
    }

    else
    {
      v12 = v3 == 2;
    }

    if (!v12)
    {
      v74 = 0;
      v10 = 0;
      goto LABEL_14;
    }

    v74 = v11;
    v13 = [*(a1 + 64) amount];
    v14 = [MEMORY[0x1E696AB90] zero];
    v15 = [v13 compare:v14];

    if (v15 == 1)
    {
      v16 = [*(a1 + 64) amount];
      v17 = [*(a1 + 40) amount];
      v18 = [v16 compare:v17];

      v19 = *(a1 + 40);
      if (v18 == -1)
      {
        v53 = *(a1 + 64);
        v54 = [v19 amount];
        v55 = [v53 amount];
        v8 = [v54 decimalNumberBySubtracting:v55];

        v56 = [PKCurrencyAmount alloc];
        v57 = [*(a1 + 40) currency];
        v9 = [(PKCurrencyAmount *)v56 initWithAmount:v8 currency:v57 exponent:0];

        v58 = *(a1 + 32);
        v59 = [*(a1 + 56) sendToUserFeatureDescriptor];
        v60 = [v58 _quoteItemDictionaryWithType:2 amount:v53 alternateFundingSource:0 featureDescriptor:v59];
        v86[0] = v60;
        v61 = *(a1 + 32);
        v62 = *(a1 + 48);
        v63 = [*(a1 + 56) sendToUserFeatureDescriptor];
        v64 = [v61 _quoteItemDictionaryWithType:1 amount:v9 alternateFundingSource:v62 featureDescriptor:v63];
        v86[1] = v64;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];

        v4 = 0x1E696A000uLL;
        goto LABEL_13;
      }

      v20 = *(a1 + 32);
      v8 = [*(a1 + 56) sendToUserFeatureDescriptor];
      v9 = [v20 _quoteItemDictionaryWithType:2 amount:v19 alternateFundingSource:0 featureDescriptor:v8];
      v85 = v9;
      v21 = MEMORY[0x1E695DEC8];
      v22 = &v85;
    }

    else
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v8 = [*(a1 + 56) sendToUserFeatureDescriptor];
      v9 = [v23 _quoteItemDictionaryWithType:1 amount:v24 alternateFundingSource:v25 featureDescriptor:v8];
      v87 = v9;
      v21 = MEMORY[0x1E695DEC8];
      v22 = &v87;
    }

    v10 = [v21 arrayWithObjects:v22 count:1];
  }

LABEL_13:

LABEL_14:
  v76 = a1;
  v26 = [MEMORY[0x1E696AB90] zero];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v10;
  v27 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v79;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v79 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = [*(*(&v78 + 1) + 8 * i) objectForKeyedSubscript:@"fees"];
        if (v31)
        {
          v32 = [*(v4 + 2960) decimalNumberWithString:v31];
          if (v32)
          {
            v33 = v4;
            v34 = [*(v4 + 2960) notANumber];
            v35 = [v32 isEqualToNumber:v34];

            if ((v35 & 1) == 0)
            {
              v36 = [v26 decimalNumberByAdding:v32];

              v26 = v36;
            }

            v4 = v33;
          }
        }

        else
        {
          v32 = 0;
        }
      }

      v28 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
    }

    while (v28);
  }

  v37 = [*(v76 + 64) amount];
  v38 = [v37 stringValue];

  v82[0] = @"quoteIdentifier";
  v82[1] = @"requiresIdentityVerification";
  v83[0] = @"quoteIdentifier";
  v83[1] = MEMORY[0x1E695E110];
  v82[2] = @"validUntil";
  v72 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:500.0];
  v73 = v38;
  v83[2] = v72;
  v83[3] = @"disclosureText";
  v82[3] = @"disclosureText";
  v82[4] = @"disclosureURL";
  v83[4] = @"disclosureURL";
  v83[5] = v38;
  v82[5] = @"currentBalance";
  v82[6] = @"currentBalanceCurrency";
  v71 = [*(v76 + 64) currency];
  v83[6] = v71;
  v82[7] = @"totalFees";
  v70 = [v26 stringValue];
  v83[7] = v70;
  v82[8] = @"totalFeesCurrency";
  v69 = [*(v76 + 40) currency];
  v83[8] = v69;
  v82[9] = @"totalReceiveAmount";
  v68 = [*(v76 + 40) amount];
  v67 = [v68 stringValue];
  v83[9] = v67;
  v82[10] = @"totalReceiveAmountCurrency";
  v66 = [*(v76 + 40) currency];
  v83[10] = v66;
  v82[11] = @"appleHash";
  v65 = [@"1234567890ABCDEF" pk_decodeHexadecimal];
  v39 = [v65 SHA256Hash];
  v40 = [v39 hexEncoding];
  v83[11] = v40;
  v82[12] = @"externalHash";
  v41 = [@"1234567890ABCDEF" pk_decodeHexadecimal];
  v42 = [v41 SHA256Hash];
  v43 = [v42 hexEncoding];
  v44 = v43;
  v45 = MEMORY[0x1E695E0F0];
  if (obj)
  {
    v45 = obj;
  }

  v83[12] = v43;
  v83[13] = v45;
  v82[13] = @"quoteItems";
  v82[14] = @"transactionIdentifier";
  v46 = [MEMORY[0x1E696AFB0] UUID];
  v47 = [v46 UUIDString];
  v83[14] = v47;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:15];

  v49 = [[PKPeerPaymentQuote alloc] initWithDictionary:v48];
  if (v75 != 2)
  {
    v50 = [*(v76 + 32) valueForKey:@"recipient"];
    [(PKPeerPaymentQuote *)v49 setRecipient:v50];
  }

  [(PKPeerPaymentQuote *)v49 setDestinationType:v74];
  v51 = [*(v76 + 32) internalState];
  objc_storeStrong(v51 + 7, v49);

  [*(v76 + 32) _setState:5 notify:1];
  v52 = *(v76 + 72);
  if (v52)
  {
    (*(v52 + 16))(v52, 1, v49, 0);
  }
}

- (void)formalRequestTokenForAmount:(id)a3 source:(unint64_t)a4 completion:(id)a5
{
  v6 = a5;
  if ([(PKPeerPaymentController *)self _ensureState:7])
  {
    v7 = dispatch_time(0, 300000000);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__PKMockPeerPaymentController_formalRequestTokenForAmount_source_completion___block_invoke;
    v8[3] = &unk_1E79C44A0;
    v8[4] = self;
    v9 = v6;
    dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
  }
}

void __77__PKMockPeerPaymentController_formalRequestTokenForAmount_source_completion___block_invoke(uint64_t a1)
{
  v2 = [PKPeerPaymentRequestToken alloc];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(PKPeerPaymentRequestToken *)v2 initWithRequestToken:@"aaaaaffff" deviceScoreIdentifier:v3 expiryDate:v4];

  (*(*(a1 + 40) + 16))();
  v6 = [*(a1 + 32) internalState];
  v7 = v6[6];
  v6[6] = v5;
  v8 = v5;

  [*(a1 + 32) _setState:8 notify:1];
}

- (void)paymentAuthorizationCoordinator:(id *)a3 didAuthorizePeerPaymentQuote:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(PKPeerPaymentController *)self mode]== 2)
  {
    v14.receiver = self;
    v14.super_class = PKMockPeerPaymentController;
    [(PKPeerPaymentController *)&v14 paymentAuthorizationCoordinator:a3 didAuthorizePeerPaymentQuote:v8 handler:v9];
  }

  else
  {
    v10 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__PKMockPeerPaymentController_paymentAuthorizationCoordinator_didAuthorizePeerPaymentQuote_handler___block_invoke;
    block[3] = &unk_1E79C4D60;
    block[4] = self;
    v12 = v8;
    v13 = v9;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }
}

void __100__PKMockPeerPaymentController_paymentAuthorizationCoordinator_didAuthorizePeerPaymentQuote_handler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKPaymentAuthorizationResult);
  [(PKPaymentAuthorizationResult *)v2 setStatus:0];
  v3 = [*(a1 + 32) mode];
  v4 = *(a1 + 32);
  if (v3 == 1 && v4[152] == 1)
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) webService];
    [v5 _adjustBalanceForAuthorizedTransferQuote:v6 webService:v7];

    [objc_opt_class() _insertPeerPaymentTransactionForAuthorizedTransferQuote:*(a1 + 40)];
    v4 = *(a1 + 32);
  }

  [v4 _setPerformQuoteSuccess:1];
  v8 = objc_alloc_init(PKPeerPaymentPerformResponse);
  v9 = [*(a1 + 32) internalState];
  v10 = v9[9];
  v9[9] = v8;
  v11 = v8;

  v12 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKMockPeerPaymentController: Perform quote succeeded. Returning: PKPaymentAuthorizationStatusSuccess to the authorization controller.", v13, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)_adjustBalanceForAuthorizedTransferQuote:(id)a3 webService:(id)a4
{
  v10 = a4;
  v6 = [a3 peerPaymentQuote];
  v7 = [v6 firstQuoteItemOfType:2];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 totalAmount];
    [a1 _adjustBalanceForAmount:v9 subtract:1 webService:v10];
  }
}

+ (void)_adjustBalanceForAmount:(id)a3 subtract:(BOOL)a4 webService:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v12 = v7;
  v9 = v12;
  if (v6)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AB90]) initWithMantissa:1 exponent:0 isNegative:1];
    v9 = [v12 decimalNumberByMultiplyingBy:v10];
  }

  v11 = [v8 peerPaymentService];
  [v11 updateMockAccountBalanceByAddingAmount:v9 completion:0];
}

+ (void)_insertPeerPaymentTransactionForAuthorizedTransferQuote:(id)a3
{
  v4 = a3;
  v7 = [v4 peerPaymentQuote];
  v5 = [v7 recipient];
  v6 = [v5 address];
  [a1 _insertPeerPaymentTransactionForAuthorizedTransferQuote:v4 peerPaymentType:1 mode:1 counterpartHandle:v6 transactionIdentifier:0 amount:0];
}

+ (void)_insertPeerPaymentTransactionForAuthorizedTransferQuote:(id)a3 peerPaymentType:(int64_t)a4 mode:(unint64_t)a5 counterpartHandle:(id)a6 transactionIdentifier:(id)a7 amount:(id)a8
{
  v50 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = +[PKPassLibrary sharedInstance];
  v17 = [v16 peerPaymentPassUniqueID];
  v18 = [v16 passWithUniqueID:v17];
  v19 = [v18 paymentPass];

  if (v19)
  {
    v20 = objc_alloc_init(PKPaymentTransaction);
    [(PKPaymentTransaction *)v20 setTransactionType:3];
    [(PKPaymentTransaction *)v20 setPeerPaymentType:a4];
    [(PKPaymentTransaction *)v20 setPeerPaymentCounterpartHandle:v13];
    [(PKPaymentTransaction *)v20 setPeerPaymentPaymentMode:a5];
    v21 = [MEMORY[0x1E695DF00] date];
    [(PKPaymentTransaction *)v20 setTransactionDate:v21];

    [(PKPaymentTransaction *)v20 setTransactionSource:0];
    v49 = v17;
    if (v50)
    {
      v45 = a5;
      v46 = v15;
      v47 = v14;
      v48 = v13;
      v22 = [v50 peerPaymentQuote];
      v23 = [v22 firstQuoteItemOfType:2];
      v24 = [v22 firstQuoteItemOfType:1];
      v25 = [v24 dpanIdentifier];
      if (v25)
      {
        v26 = [v16 passWithDPANIdentifier:v25];
      }

      else
      {
        v26 = 0;
      }

      v31 = [v26 devicePrimaryInAppPaymentApplication];
      v32 = [v22 totalReceiveAmount];
      [(PKPaymentTransaction *)v20 setAmount:v32];

      v33 = [v22 totalReceiveAmountCurrency];
      [(PKPaymentTransaction *)v20 setCurrencyCode:v33];

      if (v23)
      {
        v34 = [v23 totalAmount];
        [(PKPaymentTransaction *)v20 setPrimaryFundingSourceAmount:v34];

        [v23 totalAmountCurrency];
      }

      else
      {
        v35 = [MEMORY[0x1E696AB90] zero];
        [(PKPaymentTransaction *)v20 setPrimaryFundingSourceAmount:v35];

        [v22 totalReceiveAmountCurrency];
      }
      v36 = ;
      [(PKPaymentTransaction *)v20 setPrimaryFundingSourceCurrencyCode:v36];

      v37 = [v24 totalAmount];
      [(PKPaymentTransaction *)v20 setSecondaryFundingSourceAmount:v37];

      v38 = [v24 totalAmountCurrency];
      [(PKPaymentTransaction *)v20 setSecondaryFundingSourceCurrencyCode:v38];

      -[PKPaymentTransaction setSecondaryFundingSourceNetwork:](v20, "setSecondaryFundingSourceNetwork:", [v31 paymentNetworkIdentifier]);
      v39 = [v26 deviceAccountNumberSuffix];
      [(PKPaymentTransaction *)v20 setSecondaryFundingSourceDPANSuffix:v39];

      v40 = [v26 localizedDescription];
      [(PKPaymentTransaction *)v20 setSecondaryFundingSourceDescription:v40];

      v41 = [v22 transactionIdentifier];
      [(PKPaymentTransaction *)v20 setServiceIdentifier:v41];

      v14 = v47;
      v13 = v48;
      a5 = v45;
      v15 = v46;
    }

    else
    {
      v27 = [v15 amount];
      [(PKPaymentTransaction *)v20 setAmount:v27];

      v28 = [v15 currency];
      [(PKPaymentTransaction *)v20 setCurrencyCode:v28];

      v29 = [MEMORY[0x1E696AB90] zero];
      [(PKPaymentTransaction *)v20 setPrimaryFundingSourceAmount:v29];

      v30 = [v15 currency];
      [(PKPaymentTransaction *)v20 setPrimaryFundingSourceCurrencyCode:v30];

      [(PKPaymentTransaction *)v20 setServiceIdentifier:v14];
    }

    [(PKPaymentTransaction *)v20 setHasNotificationServiceData:1];
    [(PKPaymentTransaction *)v20 setProcessedForMerchantCleanup:1];
    [(PKPaymentTransaction *)v20 setPeerPaymentStatus:1];
    if (a5 != 2)
    {
      [(PKPaymentTransaction *)v20 setProcessedForLocation:1];
    }

    v42 = +[PKPaymentService paymentService];
    v43 = [v19 uniqueID];
    v44 = [v19 devicePrimaryInAppPaymentApplication];
    [v42 insertOrUpdatePaymentTransaction:v20 forPassUniqueIdentifier:v43 paymentApplication:v44 completion:0];

    v17 = v49;
  }
}

- (void)_insertPaymentTransactionForSecondaryFundingSourceIfNecessary:(id)a3
{
  v19 = [a3 peerPaymentQuote];
  v3 = [v19 firstQuoteItemOfType:1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 totalAmount];
    v6 = [MEMORY[0x1E696AB90] zero];
    v7 = [v5 compare:v6];

    if (v7 == 1)
    {
      v8 = [v4 dpanIdentifier];
      if (v8)
      {
        v9 = +[PKPassLibrary sharedInstance];
        v10 = [v9 passWithDPANIdentifier:v8];
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_alloc_init(PKPaymentTransaction);
      v12 = [v4 totalAmount];
      [(PKPaymentTransaction *)v11 setAmount:v12];

      v13 = [v4 totalAmountCurrency];
      [(PKPaymentTransaction *)v11 setCurrencyCode:v13];

      [(PKPaymentTransaction *)v11 setTransactionType:0];
      v14 = objc_alloc_init(PKMerchant);
      [(PKMerchant *)v14 setRawName:@"Apple, Inc."];
      [(PKMerchant *)v14 setName:@"Apple, Inc."];
      [(PKPaymentTransaction *)v11 setMerchant:v14];
      v15 = [MEMORY[0x1E695DF00] date];
      [(PKPaymentTransaction *)v11 setTransactionDate:v15];

      [(PKPaymentTransaction *)v11 setTransactionSource:2];
      [(PKPaymentTransaction *)v11 setHasNotificationServiceData:1];
      [(PKPaymentTransaction *)v11 setProcessedForLocation:1];
      [(PKPaymentTransaction *)v11 setProcessedForMerchantCleanup:1];
      [(PKPaymentTransaction *)v11 setPeerPaymentStatus:1];
      v16 = +[PKPaymentService paymentService];
      v17 = [v10 uniqueID];
      v18 = [v10 devicePrimaryInAppPaymentApplication];
      [v16 insertOrUpdatePaymentTransaction:v11 forPassUniqueIdentifier:v17 paymentApplication:v18 completion:0];
    }
  }
}

+ (void)processNearbyPeerPaymentTransactionSuccessWithIdentifier:(id)a3 peerPaymentType:(int64_t)a4 amount:(id)a5 counterpartDisplayName:(id)a6
{
  v10 = a4 == 1;
  v11 = a6;
  v12 = a5;
  v15 = a3;
  v13 = [v12 amount];
  v14 = +[PKPeerPaymentWebService sharedService];
  [a1 _adjustBalanceForAmount:v13 subtract:v10 webService:v14];

  [a1 _insertPeerPaymentTransactionForAuthorizedTransferQuote:0 peerPaymentType:a4 mode:2 counterpartHandle:v11 transactionIdentifier:v15 amount:v12];
}

- (void)paymentAuthorizationCoordinator:(id *)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a4 paymentPass];
  v9 = [v8 devicePrimaryInAppPaymentApplication];
  v10 = [v9 dpanIdentifier];

  v11 = [(PKPeerPaymentController *)self quote];
  v12 = [v11 firstQuoteItemOfType:1];
  v13 = [v12 dpanIdentifier];
  v14 = v13;
  if (v10 && ([v13 isEqualToString:v10] & 1) == 0)
  {
    v16 = [v11 totalReceiveAmount];
    v20 = [v11 totalReceiveAmountCurrency];
    v19 = [[PKCurrencyAmount alloc] initWithAmount:v16 currency:v20 exponent:0];
    v17 = [(PKPeerPaymentController *)self internalState];
    v18 = v17[6];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__PKMockPeerPaymentController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke;
    v21[3] = &unk_1E79CD9D8;
    v21[4] = self;
    v22 = v7;
    [(PKPeerPaymentController *)self quoteWithAmount:v19 requestToken:v18 alternateFundingSource:v8 completion:v21];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = self;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKMockPeerPaymentController %p: New quote request is not required. Returning: PKPaymentAuthorizationStatusSuccess to the authorization controller.", buf, 0xCu);
    }

    v16 = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
    [(PKPaymentRequestUpdate *)v16 setStatus:0];
    (*(v7 + 2))(v7, v16);
  }
}

void __94__PKMockPeerPaymentController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
  [(PKPaymentRequestPaymentMethodUpdate *)v5 setPeerPaymentQuote:v4];
  v6 = [*(a1 + 32) summaryItemsForQuote:v4];

  [(PKPaymentRequestUpdate *)v5 setPaymentSummaryItems:v6];
  [(PKPaymentRequestUpdate *)v5 setStatus:0];
  v7 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKMockPeerPaymentController: Get updated quote succeeded. Returning: PKPaymentAuthorizationStatusSuccess to the authorization controller.", v8, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)performAction:(id)a3 withPaymentIdentifier:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = dispatch_time(0, 800000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKMockPeerPaymentController_performAction_withPaymentIdentifier_completion___block_invoke;
  block[3] = &unk_1E79C4428;
  v9 = v5;
  v7 = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PKMockPeerPaymentController_performAction_withPaymentIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 1, 0);
  }

  return result;
}

+ (void)performNearbyAuthorizedQuote:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = dispatch_time(0, 800000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKMockPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

void __71__PKMockPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKPeerPaymentPerformResponse);
  (*(*(a1 + 32) + 16))();
}

@end