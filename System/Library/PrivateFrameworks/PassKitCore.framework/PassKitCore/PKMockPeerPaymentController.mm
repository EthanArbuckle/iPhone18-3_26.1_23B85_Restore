@interface PKMockPeerPaymentController
+ (BOOL)useMock;
+ (void)_adjustBalanceForAmount:(id)amount subtract:(BOOL)subtract webService:(id)service;
+ (void)_adjustBalanceForAuthorizedTransferQuote:(id)quote webService:(id)service;
+ (void)_insertPeerPaymentTransactionForAuthorizedTransferQuote:(id)quote;
+ (void)_insertPeerPaymentTransactionForAuthorizedTransferQuote:(id)quote peerPaymentType:(int64_t)type mode:(unint64_t)mode counterpartHandle:(id)handle transactionIdentifier:(id)identifier amount:(id)amount;
+ (void)performNearbyAuthorizedQuote:(id)quote completion:(id)completion;
+ (void)processNearbyPeerPaymentTransactionSuccessWithIdentifier:(id)identifier peerPaymentType:(int64_t)type amount:(id)amount counterpartDisplayName:(id)name;
- (PKMockPeerPaymentController)initWithPeerPaymentWebService:(id)service;
- (id)_quoteItemDictionaryWithType:(unint64_t)type amount:(id)amount alternateFundingSource:(id)source featureDescriptor:(id)descriptor;
- (id)_recipientForAddress:(id)address status:(unint64_t)status;
- (void)_insertPaymentTransactionForSecondaryFundingSourceIfNecessary:(id)necessary;
- (void)formalRequestTokenForAmount:(id)amount source:(unint64_t)source completion:(id)completion;
- (void)identifyRecipientWithAddress:(id)address senderAddress:(id)senderAddress completion:(id)completion;
- (void)identifyRecipientsWithAddresses:(id)addresses senderAddress:(id)address completion:(id)completion;
- (void)paymentAuthorizationCoordinator:(id *)coordinator didAuthorizePeerPaymentQuote:(id)quote handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id *)coordinator didSelectPaymentMethod:(id)method handler:(id)handler;
- (void)performAction:(id)action withPaymentIdentifier:(id)identifier completion:(id)completion;
- (void)quoteWithAmount:(id)amount source:(unint64_t)source requestToken:(id)token alternateFundingSource:(id)fundingSource preserveCurrentBalance:(unint64_t)balance recurringPaymentIdentifier:(id)identifier frequency:(unint64_t)frequency startDate:(id)self0 threshold:(id)self1 completion:(id)self2;
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

- (PKMockPeerPaymentController)initWithPeerPaymentWebService:(id)service
{
  v13 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = PKMockPeerPaymentController;
  v5 = [(PKPeerPaymentController *)&v8 initWithPeerPaymentWebService:serviceCopy];
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v10 = v5;
      v11 = 2112;
      v12 = serviceCopy;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKMockPeerPaymentController: %p initWithPeerPaymentWebService: %@", buf, 0x16u);
    }

    v5->_shouldGenerateMockTransactions = 1;
  }

  return v5;
}

- (id)_recipientForAddress:(id)address status:(unint64_t)status
{
  addressCopy = address;
  v7 = objc_alloc_init(PKPeerPaymentRecipient);
  [(PKPeerPaymentRecipient *)v7 setStatus:status];
  [(PKPeerPaymentRecipient *)v7 setIdentifier:addressCopy];
  [(PKPeerPaymentRecipient *)v7 setReceiveCurrency:@"USD"];
  [(PKPeerPaymentRecipient *)v7 setAddress:addressCopy];
  v8 = [(PKPeerPaymentController *)self displayNameForRecipientAddress:addressCopy];

  [(PKPeerPaymentRecipient *)v7 setDisplayName:v8];
  [(PKPeerPaymentRecipient *)v7 setAllowsFormalPaymentRequests:1];

  return v7;
}

- (void)identifyRecipientWithAddress:(id)address senderAddress:(id)senderAddress completion:(id)completion
{
  addressCopy = address;
  senderAddressCopy = senderAddress;
  completionCopy = completion;
  v11 = dispatch_time(0, 1000000000);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PKMockPeerPaymentController_identifyRecipientWithAddress_senderAddress_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v15[4] = self;
  v16 = addressCopy;
  v17 = senderAddressCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = senderAddressCopy;
  v14 = addressCopy;
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

- (void)identifyRecipientsWithAddresses:(id)addresses senderAddress:(id)address completion:(id)completion
{
  addressesCopy = addresses;
  addressCopy = address;
  completionCopy = completion;
  v11 = dispatch_time(0, 1000000000);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__PKMockPeerPaymentController_identifyRecipientsWithAddresses_senderAddress_completion___block_invoke;
  v15[3] = &unk_1E79C4EF0;
  v16 = addressesCopy;
  selfCopy = self;
  v18 = addressCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = addressCopy;
  v14 = addressesCopy;
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

- (id)_quoteItemDictionaryWithType:(unint64_t)type amount:(id)amount alternateFundingSource:(id)source featureDescriptor:(id)descriptor
{
  v42[16] = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  descriptorCopy = descriptor;
  devicePrimaryPaymentApplication = [source devicePrimaryPaymentApplication];
  amount = [amountCopy amount];
  zero = [MEMORY[0x1E696AB90] zero];
  if (source && [devicePrimaryPaymentApplication paymentType] != 1)
  {
    currency = [amountCopy currency];
    v15 = PKMaximumFractionDigitsForCurrencyCode(currency);

    v16 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:v15 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v17 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.03"];
    amount2 = [amountCopy amount];
    v19 = [amount2 decimalNumberByMultiplyingBy:v17 withBehavior:v16];

    zero = v19;
  }

  amount3 = [amountCopy amount];
  v21 = [amount3 decimalNumberByAdding:zero];

  v41[0] = @"type";
  v38 = PKPeerPaymentQuoteItemTypeToString(type);
  v42[0] = v38;
  v42[1] = @"1";
  v41[1] = @"exchangeRate";
  v41[2] = @"sendAmount";
  stringValue = [amount stringValue];
  v42[2] = stringValue;
  v41[3] = @"sendAmountCurrency";
  currency2 = [amountCopy currency];
  v42[3] = currency2;
  v41[4] = @"receiveAmount";
  amount4 = [amountCopy amount];
  stringValue2 = [amount4 stringValue];
  v42[4] = stringValue2;
  v41[5] = @"receiveAmountCurrency";
  currency3 = [amountCopy currency];
  v42[5] = currency3;
  v41[6] = @"totalAmount";
  v39 = v21;
  stringValue3 = [v21 stringValue];
  v42[6] = stringValue3;
  v41[7] = @"totalAmountCurrency";
  currency4 = [amountCopy currency];
  v42[7] = currency4;
  v41[8] = @"dpanIdentifier";
  v40 = amount;
  v33 = devicePrimaryPaymentApplication;
  if (devicePrimaryPaymentApplication)
  {
    [devicePrimaryPaymentApplication dpanIdentifier];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v25 = ;
  v42[8] = v25;
  v41[9] = @"fees";
  stringValue4 = [zero stringValue];
  v42[9] = stringValue4;
  v41[10] = @"feesCurrency";
  currency5 = [amountCopy currency];
  v42[10] = currency5;
  v41[11] = @"supportedNetworks";
  [descriptorCopy supportedNetworks];
  v28 = v32 = zero;
  v42[11] = v28;
  v42[12] = &unk_1F23B3C80;
  v41[12] = @"merchantCapabilities";
  v41[13] = @"merchantIdentifier";
  merchantIdentifier = [descriptorCopy merchantIdentifier];

  v42[13] = merchantIdentifier;
  v42[14] = @"342f5544";
  v41[14] = @"nonce";
  v41[15] = @"countryCode";
  v42[15] = @"US";
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:16];

  return v30;
}

- (void)quoteWithAmount:(id)amount source:(unint64_t)source requestToken:(id)token alternateFundingSource:(id)fundingSource preserveCurrentBalance:(unint64_t)balance recurringPaymentIdentifier:(id)identifier frequency:(unint64_t)frequency startDate:(id)self0 threshold:(id)self1 completion:(id)self2
{
  v54 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  tokenCopy = token;
  fundingSourceCopy = fundingSource;
  identifierCopy = identifier;
  dateCopy = date;
  thresholdCopy = threshold;
  completionCopy = completion;
  if (!fundingSourceCopy)
  {
    fundingSourceCopy = [(PKPeerPaymentController *)self _defaultAlternateFundingSourceForMode:[(PKPeerPaymentController *)self mode]];
  }

  account = [(PKPeerPaymentController *)self account];
  v22 = account;
  mockBalance = self->_mockBalance;
  if (mockBalance)
  {
    currentBalance = mockBalance;
  }

  else
  {
    currentBalance = [account currentBalance];
  }

  v25 = currentBalance;
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

    [amountCopy amount];
    v42 = v22;
    v27 = amountCopy;
    v28 = thresholdCopy;
    v30 = v29 = identifierCopy;
    amount = [(PKCurrencyAmount *)v25 amount];
    v32 = [amount compare:v30];

    v33 = v32 == -1;
    v34 = v32 != -1;
    v26 = v33 ? 40301 : 0;

    identifierCopy = v29;
    thresholdCopy = v28;
    amountCopy = v27;
    v22 = v42;
    if (v34)
    {
      goto LABEL_17;
    }
  }

  if (fundingSourceCopy)
  {
LABEL_17:
    v41 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __181__PKMockPeerPaymentController_quoteWithAmount_source_requestToken_alternateFundingSource_preserveCurrentBalance_recurringPaymentIdentifier_frequency_startDate_threshold_completion___block_invoke;
    block[3] = &unk_1E79C4F40;
    block[4] = self;
    v47 = amountCopy;
    v48 = fundingSourceCopy;
    v49 = v22;
    v50 = v25;
    v51 = completionCopy;
    dispatch_after(v41, MEMORY[0x1E69E96A0], block);

    goto LABEL_18;
  }

  v43 = thresholdCopy;
  v35 = identifierCopy;
  v36 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "PKMockPeerPaymentController %p: Failed to quote requiring alternative funding source as no suitable payment cards were found.", buf, 0xCu);
  }

  v37 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPeerPaymentWebServiceErrorDomain" code:v26 userInfo:0];
  v38 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNoC.isa, 0);
  v39 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNoC_0.isa, 0);
  v40 = PKDisplayableErrorCustomWithType(-1, v38, v39, v37, 0);

  (*(completionCopy + 2))(completionCopy, 0, 0, v40);
  identifierCopy = v35;
  thresholdCopy = v43;
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

- (void)formalRequestTokenForAmount:(id)amount source:(unint64_t)source completion:(id)completion
{
  completionCopy = completion;
  if ([(PKPeerPaymentController *)self _ensureState:7])
  {
    v7 = dispatch_time(0, 300000000);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__PKMockPeerPaymentController_formalRequestTokenForAmount_source_completion___block_invoke;
    v8[3] = &unk_1E79C44A0;
    v8[4] = self;
    v9 = completionCopy;
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

- (void)paymentAuthorizationCoordinator:(id *)coordinator didAuthorizePeerPaymentQuote:(id)quote handler:(id)handler
{
  quoteCopy = quote;
  handlerCopy = handler;
  if ([(PKPeerPaymentController *)self mode]== 2)
  {
    v14.receiver = self;
    v14.super_class = PKMockPeerPaymentController;
    [(PKPeerPaymentController *)&v14 paymentAuthorizationCoordinator:coordinator didAuthorizePeerPaymentQuote:quoteCopy handler:handlerCopy];
  }

  else
  {
    v10 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__PKMockPeerPaymentController_paymentAuthorizationCoordinator_didAuthorizePeerPaymentQuote_handler___block_invoke;
    block[3] = &unk_1E79C4D60;
    block[4] = self;
    v12 = quoteCopy;
    v13 = handlerCopy;
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

+ (void)_adjustBalanceForAuthorizedTransferQuote:(id)quote webService:(id)service
{
  serviceCopy = service;
  peerPaymentQuote = [quote peerPaymentQuote];
  v7 = [peerPaymentQuote firstQuoteItemOfType:2];
  v8 = v7;
  if (v7)
  {
    totalAmount = [v7 totalAmount];
    [self _adjustBalanceForAmount:totalAmount subtract:1 webService:serviceCopy];
  }
}

+ (void)_adjustBalanceForAmount:(id)amount subtract:(BOOL)subtract webService:(id)service
{
  subtractCopy = subtract;
  amountCopy = amount;
  serviceCopy = service;
  v12 = amountCopy;
  v9 = v12;
  if (subtractCopy)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AB90]) initWithMantissa:1 exponent:0 isNegative:1];
    v9 = [v12 decimalNumberByMultiplyingBy:v10];
  }

  peerPaymentService = [serviceCopy peerPaymentService];
  [peerPaymentService updateMockAccountBalanceByAddingAmount:v9 completion:0];
}

+ (void)_insertPeerPaymentTransactionForAuthorizedTransferQuote:(id)quote
{
  quoteCopy = quote;
  peerPaymentQuote = [quoteCopy peerPaymentQuote];
  recipient = [peerPaymentQuote recipient];
  address = [recipient address];
  [self _insertPeerPaymentTransactionForAuthorizedTransferQuote:quoteCopy peerPaymentType:1 mode:1 counterpartHandle:address transactionIdentifier:0 amount:0];
}

+ (void)_insertPeerPaymentTransactionForAuthorizedTransferQuote:(id)quote peerPaymentType:(int64_t)type mode:(unint64_t)mode counterpartHandle:(id)handle transactionIdentifier:(id)identifier amount:(id)amount
{
  quoteCopy = quote;
  handleCopy = handle;
  identifierCopy = identifier;
  amountCopy = amount;
  v16 = +[PKPassLibrary sharedInstance];
  peerPaymentPassUniqueID = [v16 peerPaymentPassUniqueID];
  v18 = [v16 passWithUniqueID:peerPaymentPassUniqueID];
  paymentPass = [v18 paymentPass];

  if (paymentPass)
  {
    v20 = objc_alloc_init(PKPaymentTransaction);
    [(PKPaymentTransaction *)v20 setTransactionType:3];
    [(PKPaymentTransaction *)v20 setPeerPaymentType:type];
    [(PKPaymentTransaction *)v20 setPeerPaymentCounterpartHandle:handleCopy];
    [(PKPaymentTransaction *)v20 setPeerPaymentPaymentMode:mode];
    date = [MEMORY[0x1E695DF00] date];
    [(PKPaymentTransaction *)v20 setTransactionDate:date];

    [(PKPaymentTransaction *)v20 setTransactionSource:0];
    v49 = peerPaymentPassUniqueID;
    if (quoteCopy)
    {
      modeCopy = mode;
      v46 = amountCopy;
      v47 = identifierCopy;
      v48 = handleCopy;
      peerPaymentQuote = [quoteCopy peerPaymentQuote];
      v23 = [peerPaymentQuote firstQuoteItemOfType:2];
      v24 = [peerPaymentQuote firstQuoteItemOfType:1];
      dpanIdentifier = [v24 dpanIdentifier];
      if (dpanIdentifier)
      {
        v26 = [v16 passWithDPANIdentifier:dpanIdentifier];
      }

      else
      {
        v26 = 0;
      }

      devicePrimaryInAppPaymentApplication = [v26 devicePrimaryInAppPaymentApplication];
      totalReceiveAmount = [peerPaymentQuote totalReceiveAmount];
      [(PKPaymentTransaction *)v20 setAmount:totalReceiveAmount];

      totalReceiveAmountCurrency = [peerPaymentQuote totalReceiveAmountCurrency];
      [(PKPaymentTransaction *)v20 setCurrencyCode:totalReceiveAmountCurrency];

      if (v23)
      {
        totalAmount = [v23 totalAmount];
        [(PKPaymentTransaction *)v20 setPrimaryFundingSourceAmount:totalAmount];

        [v23 totalAmountCurrency];
      }

      else
      {
        zero = [MEMORY[0x1E696AB90] zero];
        [(PKPaymentTransaction *)v20 setPrimaryFundingSourceAmount:zero];

        [peerPaymentQuote totalReceiveAmountCurrency];
      }
      v36 = ;
      [(PKPaymentTransaction *)v20 setPrimaryFundingSourceCurrencyCode:v36];

      totalAmount2 = [v24 totalAmount];
      [(PKPaymentTransaction *)v20 setSecondaryFundingSourceAmount:totalAmount2];

      totalAmountCurrency = [v24 totalAmountCurrency];
      [(PKPaymentTransaction *)v20 setSecondaryFundingSourceCurrencyCode:totalAmountCurrency];

      -[PKPaymentTransaction setSecondaryFundingSourceNetwork:](v20, "setSecondaryFundingSourceNetwork:", [devicePrimaryInAppPaymentApplication paymentNetworkIdentifier]);
      deviceAccountNumberSuffix = [v26 deviceAccountNumberSuffix];
      [(PKPaymentTransaction *)v20 setSecondaryFundingSourceDPANSuffix:deviceAccountNumberSuffix];

      localizedDescription = [v26 localizedDescription];
      [(PKPaymentTransaction *)v20 setSecondaryFundingSourceDescription:localizedDescription];

      transactionIdentifier = [peerPaymentQuote transactionIdentifier];
      [(PKPaymentTransaction *)v20 setServiceIdentifier:transactionIdentifier];

      identifierCopy = v47;
      handleCopy = v48;
      mode = modeCopy;
      amountCopy = v46;
    }

    else
    {
      amount = [amountCopy amount];
      [(PKPaymentTransaction *)v20 setAmount:amount];

      currency = [amountCopy currency];
      [(PKPaymentTransaction *)v20 setCurrencyCode:currency];

      zero2 = [MEMORY[0x1E696AB90] zero];
      [(PKPaymentTransaction *)v20 setPrimaryFundingSourceAmount:zero2];

      currency2 = [amountCopy currency];
      [(PKPaymentTransaction *)v20 setPrimaryFundingSourceCurrencyCode:currency2];

      [(PKPaymentTransaction *)v20 setServiceIdentifier:identifierCopy];
    }

    [(PKPaymentTransaction *)v20 setHasNotificationServiceData:1];
    [(PKPaymentTransaction *)v20 setProcessedForMerchantCleanup:1];
    [(PKPaymentTransaction *)v20 setPeerPaymentStatus:1];
    if (mode != 2)
    {
      [(PKPaymentTransaction *)v20 setProcessedForLocation:1];
    }

    v42 = +[PKPaymentService paymentService];
    uniqueID = [paymentPass uniqueID];
    devicePrimaryInAppPaymentApplication2 = [paymentPass devicePrimaryInAppPaymentApplication];
    [v42 insertOrUpdatePaymentTransaction:v20 forPassUniqueIdentifier:uniqueID paymentApplication:devicePrimaryInAppPaymentApplication2 completion:0];

    peerPaymentPassUniqueID = v49;
  }
}

- (void)_insertPaymentTransactionForSecondaryFundingSourceIfNecessary:(id)necessary
{
  peerPaymentQuote = [necessary peerPaymentQuote];
  v3 = [peerPaymentQuote firstQuoteItemOfType:1];
  v4 = v3;
  if (v3)
  {
    totalAmount = [v3 totalAmount];
    zero = [MEMORY[0x1E696AB90] zero];
    v7 = [totalAmount compare:zero];

    if (v7 == 1)
    {
      dpanIdentifier = [v4 dpanIdentifier];
      if (dpanIdentifier)
      {
        v9 = +[PKPassLibrary sharedInstance];
        v10 = [v9 passWithDPANIdentifier:dpanIdentifier];
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_alloc_init(PKPaymentTransaction);
      totalAmount2 = [v4 totalAmount];
      [(PKPaymentTransaction *)v11 setAmount:totalAmount2];

      totalAmountCurrency = [v4 totalAmountCurrency];
      [(PKPaymentTransaction *)v11 setCurrencyCode:totalAmountCurrency];

      [(PKPaymentTransaction *)v11 setTransactionType:0];
      v14 = objc_alloc_init(PKMerchant);
      [(PKMerchant *)v14 setRawName:@"Apple, Inc."];
      [(PKMerchant *)v14 setName:@"Apple, Inc."];
      [(PKPaymentTransaction *)v11 setMerchant:v14];
      date = [MEMORY[0x1E695DF00] date];
      [(PKPaymentTransaction *)v11 setTransactionDate:date];

      [(PKPaymentTransaction *)v11 setTransactionSource:2];
      [(PKPaymentTransaction *)v11 setHasNotificationServiceData:1];
      [(PKPaymentTransaction *)v11 setProcessedForLocation:1];
      [(PKPaymentTransaction *)v11 setProcessedForMerchantCleanup:1];
      [(PKPaymentTransaction *)v11 setPeerPaymentStatus:1];
      v16 = +[PKPaymentService paymentService];
      uniqueID = [v10 uniqueID];
      devicePrimaryInAppPaymentApplication = [v10 devicePrimaryInAppPaymentApplication];
      [v16 insertOrUpdatePaymentTransaction:v11 forPassUniqueIdentifier:uniqueID paymentApplication:devicePrimaryInAppPaymentApplication completion:0];
    }
  }
}

+ (void)processNearbyPeerPaymentTransactionSuccessWithIdentifier:(id)identifier peerPaymentType:(int64_t)type amount:(id)amount counterpartDisplayName:(id)name
{
  v10 = type == 1;
  nameCopy = name;
  amountCopy = amount;
  identifierCopy = identifier;
  amount = [amountCopy amount];
  v14 = +[PKPeerPaymentWebService sharedService];
  [self _adjustBalanceForAmount:amount subtract:v10 webService:v14];

  [self _insertPeerPaymentTransactionForAuthorizedTransferQuote:0 peerPaymentType:type mode:2 counterpartHandle:nameCopy transactionIdentifier:identifierCopy amount:amountCopy];
}

- (void)paymentAuthorizationCoordinator:(id *)coordinator didSelectPaymentMethod:(id)method handler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  paymentPass = [method paymentPass];
  devicePrimaryInAppPaymentApplication = [paymentPass devicePrimaryInAppPaymentApplication];
  dpanIdentifier = [devicePrimaryInAppPaymentApplication dpanIdentifier];

  quote = [(PKPeerPaymentController *)self quote];
  v12 = [quote firstQuoteItemOfType:1];
  dpanIdentifier2 = [v12 dpanIdentifier];
  v14 = dpanIdentifier2;
  if (dpanIdentifier && ([dpanIdentifier2 isEqualToString:dpanIdentifier] & 1) == 0)
  {
    totalReceiveAmount = [quote totalReceiveAmount];
    totalReceiveAmountCurrency = [quote totalReceiveAmountCurrency];
    v19 = [[PKCurrencyAmount alloc] initWithAmount:totalReceiveAmount currency:totalReceiveAmountCurrency exponent:0];
    internalState = [(PKPeerPaymentController *)self internalState];
    v18 = internalState[6];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__PKMockPeerPaymentController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke;
    v21[3] = &unk_1E79CD9D8;
    v21[4] = self;
    v22 = handlerCopy;
    [(PKPeerPaymentController *)self quoteWithAmount:v19 requestToken:v18 alternateFundingSource:paymentPass completion:v21];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKMockPeerPaymentController %p: New quote request is not required. Returning: PKPaymentAuthorizationStatusSuccess to the authorization controller.", buf, 0xCu);
    }

    totalReceiveAmount = objc_alloc_init(PKPaymentRequestPaymentMethodUpdate);
    [(PKPaymentRequestUpdate *)totalReceiveAmount setStatus:0];
    (*(handlerCopy + 2))(handlerCopy, totalReceiveAmount);
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

- (void)performAction:(id)action withPaymentIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v6 = dispatch_time(0, 800000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKMockPeerPaymentController_performAction_withPaymentIdentifier_completion___block_invoke;
  block[3] = &unk_1E79C4428;
  v9 = completionCopy;
  v7 = completionCopy;
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

+ (void)performNearbyAuthorizedQuote:(id)quote completion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_time(0, 800000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKMockPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke;
  block[3] = &unk_1E79C4428;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

void __71__PKMockPeerPaymentController_performNearbyAuthorizedQuote_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKPeerPaymentPerformResponse);
  (*(*(a1 + 32) + 16))();
}

@end