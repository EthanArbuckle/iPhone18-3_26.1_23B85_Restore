@interface PKPeerPaymentCardDataItem
- (BOOL)_validateAccountResolutionsWithError:(id *)error errorStatus:(int64_t *)status;
- (BOOL)_validateInsufficientBalanceWithError:(id *)error errorStatus:(int64_t *)status;
- (BOOL)_validateTransferLimitsWithError:(id *)error errorStatus:(int64_t *)status;
- (BOOL)isValidWithError:(id *)error errorStatus:(int64_t *)status;
- (BOOL)shouldShowDisclosure;
- (PKPaymentPass)pass;
- (PKPeerPaymentQuote)quote;
@end

@implementation PKPeerPaymentCardDataItem

- (PKPeerPaymentQuote)quote
{
  model = [(PKPaymentDataItem *)self model];
  peerPaymentQuote = [model peerPaymentQuote];

  return peerPaymentQuote;
}

- (PKPaymentPass)pass
{
  v14 = *MEMORY[0x1E69E9840];
  pass = self->_pass;
  if (!pass)
  {
    model = [(PKPaymentDataItem *)self model];
    library = [model library];

    peerPaymentPassUniqueID = [library peerPaymentPassUniqueID];
    v7 = [library passWithUniqueID:peerPaymentPassUniqueID];
    paymentPass = [v7 paymentPass];
    v9 = self->_pass;
    self->_pass = paymentPass;

    if (!self->_pass)
    {
      v10 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = peerPaymentPassUniqueID;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Unable to find peer payment pass with uniqueID: %@", &v12, 0xCu);
      }
    }

    pass = self->_pass;
  }

  return pass;
}

- (BOOL)isValidWithError:(id *)error errorStatus:(int64_t *)status
{
  if (![PKPeerPaymentCardDataItem _validateAccountResolutionsWithError:"_validateAccountResolutionsWithError:errorStatus:" errorStatus:?]|| ![(PKPeerPaymentCardDataItem *)self _validateTransferLimitsWithError:error errorStatus:status])
  {
    return 0;
  }

  return [(PKPeerPaymentCardDataItem *)self _validateInsufficientBalanceWithError:error errorStatus:status];
}

- (BOOL)_validateInsufficientBalanceWithError:(id *)error errorStatus:(int64_t *)status
{
  v27[2] = *MEMORY[0x1E69E9840];
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];

  accountServiceTransferRequest = [paymentRequest accountServiceTransferRequest];
  v10 = accountServiceTransferRequest;
  if (!accountServiceTransferRequest || [accountServiceTransferRequest transferType] != 2)
  {
    goto LABEL_6;
  }

  model2 = [(PKPaymentDataItem *)self model];
  peerPaymentAccount = [model2 peerPaymentAccount];
  currentBalance = [peerPaymentAccount currentBalance];

  currency = [currentBalance currency];
  currencyCode = [paymentRequest currencyCode];
  v16 = [currency caseInsensitiveCompare:currencyCode];

  if (v16 || ([currentBalance amount], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(paymentRequest, "_transactionAmount"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "compare:", v18), v18, v17, v19 != -1))
  {

LABEL_6:
    v20 = 1;
    goto LABEL_7;
  }

  if (error)
  {
    v22 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa, 0);
    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A588];
    v26[0] = *MEMORY[0x1E696A578];
    v26[1] = v24;
    v27[0] = v22;
    v27[1] = v22;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    *error = [v23 errorWithDomain:@"PKPassKitErrorDomain" code:-3009 userInfo:v25];
  }

  if (status)
  {
    *status = 5;
  }

  v20 = 0;
LABEL_7:

  return v20;
}

- (BOOL)_validateTransferLimitsWithError:(id *)error errorStatus:(int64_t *)status
{
  v40[2] = *MEMORY[0x1E69E9840];
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];

  accountServiceTransferRequest = [paymentRequest accountServiceTransferRequest];
  v10 = accountServiceTransferRequest;
  if (!accountServiceTransferRequest)
  {
    goto LABEL_21;
  }

  account = [accountServiceTransferRequest account];
  transferType = [v10 transferType];
  if (transferType >= 2)
  {
    if (transferType == 3)
    {
      oneTimeWithdrawalWithAppleCashFeatureDescriptor = [account oneTimeWithdrawalWithAppleCashFeatureDescriptor];
    }

    else
    {
      if (transferType != 2)
      {
        v14 = 0;
LABEL_9:
        model2 = [(PKPaymentDataItem *)self model];
        peerPaymentAccount = [model2 peerPaymentAccount];
        currentBalance = [peerPaymentAccount currentBalance];
        currency = [currentBalance currency];

        currencyCode = [paymentRequest currencyCode];
        v20 = [currency caseInsensitiveCompare:currencyCode];

        if (!v14 || v20)
        {
          goto LABEL_28;
        }

        _transactionAmount = [paymentRequest _transactionAmount];
        minimumAmount = [v14 minimumAmount];
        maximumAmount = [v14 maximumAmount];
        if (minimumAmount && [_transactionAmount compare:minimumAmount] == -1)
        {
          if (error)
          {
            v28 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_0.isa, 0);
            v34 = MEMORY[0x1E696ABC0];
            v29 = *MEMORY[0x1E696A588];
            v39[0] = *MEMORY[0x1E696A578];
            v39[1] = v29;
            v36 = v28;
            v40[0] = v28;
            v40[1] = v28;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
            *error = [v34 errorWithDomain:@"PKPassKitErrorDomain" code:-3016 userInfo:v32];
          }

          if (!status)
          {
            goto LABEL_27;
          }

          v26 = 7;
          goto LABEL_26;
        }

        if (maximumAmount && [_transactionAmount compare:maximumAmount] == 1)
        {
          if (error)
          {
            v24 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_1.isa, 0);
            v33 = MEMORY[0x1E696ABC0];
            v25 = *MEMORY[0x1E696A588];
            v37[0] = *MEMORY[0x1E696A578];
            v37[1] = v25;
            v35 = v24;
            v38[0] = v24;
            v38[1] = v24;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
            *error = [v33 errorWithDomain:@"PKPassKitErrorDomain" code:-3015 userInfo:v31];
          }

          if (!status)
          {
            goto LABEL_27;
          }

          v26 = 6;
LABEL_26:
          *status = v26;
LABEL_27:

LABEL_28:
          v27 = 0;
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      oneTimeWithdrawalWithAppleCashFeatureDescriptor = [account oneTimeDepositWithAppleCashFeatureDescriptor];
    }

    v14 = oneTimeWithdrawalWithAppleCashFeatureDescriptor;
    goto LABEL_9;
  }

LABEL_20:

LABEL_21:
  v27 = 1;
LABEL_29:

  return v27;
}

- (BOOL)_validateAccountResolutionsWithError:(id *)error errorStatus:(int64_t *)status
{
  v20[2] = *MEMORY[0x1E69E9840];
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];
  accountServiceTransferRequest = [paymentRequest accountServiceTransferRequest];
  if ([accountServiceTransferRequest transferType] >= 2)
  {
    peerPaymentAccount = [model peerPaymentAccount];
    peerPaymentPass = [model peerPaymentPass];
    v12 = peerPaymentPass;
    v9 = 1;
    if (peerPaymentAccount && peerPaymentPass)
    {
      v13 = PKPeerPaymentNeedsResolutionToPerformAccountServicePayments(peerPaymentAccount, peerPaymentPass);
      if (v13)
      {
        if (error)
        {
          v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_2.isa, 0);
          v18 = MEMORY[0x1E696ABC0];
          v15 = *MEMORY[0x1E696A588];
          v19[0] = *MEMORY[0x1E696A578];
          v19[1] = v15;
          v20[0] = v14;
          v20[1] = v14;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
          *error = [v18 errorWithDomain:@"PKPassKitErrorDomain" code:-3017 userInfo:v16];
        }

        if (status)
        {
          *status = 8;
        }
      }

      v9 = v13 ^ 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)shouldShowDisclosure
{
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];

  requestType = [paymentRequest requestType];
  if ([paymentRequest isPeerPaymentRequest])
  {
    quote = [(PKPeerPaymentCardDataItem *)self quote];
    v7 = [quote firstQuoteItemOfType:2];
    if (v7)
    {
      v8 = [quote firstQuoteItemOfType:1];
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    model2 = [(PKPaymentDataItem *)self model];
    if ([model2 supportsPreservePeerPaymentBalance])
    {
      v12 = [quote hasRecipient] & v9;
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    goto LABEL_12;
  }

  if (requestType == 2)
  {
    quote = [paymentRequest paymentSummaryItems];
    if ([quote count] != 1)
    {
      LOBYTE(v12) = 0;
      goto LABEL_13;
    }

    model2 = [(PKPaymentDataItem *)self model];
    v11 = [model2 itemForType:9];
    LOBYTE(v12) = v11 == 0;

LABEL_12:
LABEL_13:

    goto LABEL_14;
  }

  LOBYTE(v12) = 0;
LABEL_14:

  return v12;
}

@end