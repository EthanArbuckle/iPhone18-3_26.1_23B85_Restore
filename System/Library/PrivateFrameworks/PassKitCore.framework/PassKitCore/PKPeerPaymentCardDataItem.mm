@interface PKPeerPaymentCardDataItem
- (BOOL)_validateAccountResolutionsWithError:(id *)a3 errorStatus:(int64_t *)a4;
- (BOOL)_validateInsufficientBalanceWithError:(id *)a3 errorStatus:(int64_t *)a4;
- (BOOL)_validateTransferLimitsWithError:(id *)a3 errorStatus:(int64_t *)a4;
- (BOOL)isValidWithError:(id *)a3 errorStatus:(int64_t *)a4;
- (BOOL)shouldShowDisclosure;
- (PKPaymentPass)pass;
- (PKPeerPaymentQuote)quote;
@end

@implementation PKPeerPaymentCardDataItem

- (PKPeerPaymentQuote)quote
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 peerPaymentQuote];

  return v3;
}

- (PKPaymentPass)pass
{
  v14 = *MEMORY[0x1E69E9840];
  pass = self->_pass;
  if (!pass)
  {
    v4 = [(PKPaymentDataItem *)self model];
    v5 = [v4 library];

    v6 = [v5 peerPaymentPassUniqueID];
    v7 = [v5 passWithUniqueID:v6];
    v8 = [v7 paymentPass];
    v9 = self->_pass;
    self->_pass = v8;

    if (!self->_pass)
    {
      v10 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Unable to find peer payment pass with uniqueID: %@", &v12, 0xCu);
      }
    }

    pass = self->_pass;
  }

  return pass;
}

- (BOOL)isValidWithError:(id *)a3 errorStatus:(int64_t *)a4
{
  if (![PKPeerPaymentCardDataItem _validateAccountResolutionsWithError:"_validateAccountResolutionsWithError:errorStatus:" errorStatus:?]|| ![(PKPeerPaymentCardDataItem *)self _validateTransferLimitsWithError:a3 errorStatus:a4])
  {
    return 0;
  }

  return [(PKPeerPaymentCardDataItem *)self _validateInsufficientBalanceWithError:a3 errorStatus:a4];
}

- (BOOL)_validateInsufficientBalanceWithError:(id *)a3 errorStatus:(int64_t *)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v7 = [(PKPaymentDataItem *)self model];
  v8 = [v7 paymentRequest];

  v9 = [v8 accountServiceTransferRequest];
  v10 = v9;
  if (!v9 || [v9 transferType] != 2)
  {
    goto LABEL_6;
  }

  v11 = [(PKPaymentDataItem *)self model];
  v12 = [v11 peerPaymentAccount];
  v13 = [v12 currentBalance];

  v14 = [v13 currency];
  v15 = [v8 currencyCode];
  v16 = [v14 caseInsensitiveCompare:v15];

  if (v16 || ([v13 amount], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_transactionAmount"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "compare:", v18), v18, v17, v19 != -1))
  {

LABEL_6:
    v20 = 1;
    goto LABEL_7;
  }

  if (a3)
  {
    v22 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa, 0);
    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A588];
    v26[0] = *MEMORY[0x1E696A578];
    v26[1] = v24;
    v27[0] = v22;
    v27[1] = v22;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    *a3 = [v23 errorWithDomain:@"PKPassKitErrorDomain" code:-3009 userInfo:v25];
  }

  if (a4)
  {
    *a4 = 5;
  }

  v20 = 0;
LABEL_7:

  return v20;
}

- (BOOL)_validateTransferLimitsWithError:(id *)a3 errorStatus:(int64_t *)a4
{
  v40[2] = *MEMORY[0x1E69E9840];
  v7 = [(PKPaymentDataItem *)self model];
  v8 = [v7 paymentRequest];

  v9 = [v8 accountServiceTransferRequest];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_21;
  }

  v11 = [v9 account];
  v12 = [v10 transferType];
  if (v12 >= 2)
  {
    if (v12 == 3)
    {
      v13 = [v11 oneTimeWithdrawalWithAppleCashFeatureDescriptor];
    }

    else
    {
      if (v12 != 2)
      {
        v14 = 0;
LABEL_9:
        v15 = [(PKPaymentDataItem *)self model];
        v16 = [v15 peerPaymentAccount];
        v17 = [v16 currentBalance];
        v18 = [v17 currency];

        v19 = [v8 currencyCode];
        v20 = [v18 caseInsensitiveCompare:v19];

        if (!v14 || v20)
        {
          goto LABEL_28;
        }

        v21 = [v8 _transactionAmount];
        v22 = [v14 minimumAmount];
        v23 = [v14 maximumAmount];
        if (v22 && [v21 compare:v22] == -1)
        {
          if (a3)
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
            *a3 = [v34 errorWithDomain:@"PKPassKitErrorDomain" code:-3016 userInfo:v32];
          }

          if (!a4)
          {
            goto LABEL_27;
          }

          v26 = 7;
          goto LABEL_26;
        }

        if (v23 && [v21 compare:v23] == 1)
        {
          if (a3)
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
            *a3 = [v33 errorWithDomain:@"PKPassKitErrorDomain" code:-3015 userInfo:v31];
          }

          if (!a4)
          {
            goto LABEL_27;
          }

          v26 = 6;
LABEL_26:
          *a4 = v26;
LABEL_27:

LABEL_28:
          v27 = 0;
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      v13 = [v11 oneTimeDepositWithAppleCashFeatureDescriptor];
    }

    v14 = v13;
    goto LABEL_9;
  }

LABEL_20:

LABEL_21:
  v27 = 1;
LABEL_29:

  return v27;
}

- (BOOL)_validateAccountResolutionsWithError:(id *)a3 errorStatus:(int64_t *)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = [(PKPaymentDataItem *)self model];
  v7 = [v6 paymentRequest];
  v8 = [v7 accountServiceTransferRequest];
  if ([v8 transferType] >= 2)
  {
    v10 = [v6 peerPaymentAccount];
    v11 = [v6 peerPaymentPass];
    v12 = v11;
    v9 = 1;
    if (v10 && v11)
    {
      v13 = PKPeerPaymentNeedsResolutionToPerformAccountServicePayments(v10, v11);
      if (v13)
      {
        if (a3)
        {
          v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_2.isa, 0);
          v18 = MEMORY[0x1E696ABC0];
          v15 = *MEMORY[0x1E696A588];
          v19[0] = *MEMORY[0x1E696A578];
          v19[1] = v15;
          v20[0] = v14;
          v20[1] = v14;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
          *a3 = [v18 errorWithDomain:@"PKPassKitErrorDomain" code:-3017 userInfo:v16];
        }

        if (a4)
        {
          *a4 = 8;
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
  v3 = [(PKPaymentDataItem *)self model];
  v4 = [v3 paymentRequest];

  v5 = [v4 requestType];
  if ([v4 isPeerPaymentRequest])
  {
    v6 = [(PKPeerPaymentCardDataItem *)self quote];
    v7 = [v6 firstQuoteItemOfType:2];
    if (v7)
    {
      v8 = [v6 firstQuoteItemOfType:1];
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(PKPaymentDataItem *)self model];
    if ([v10 supportsPreservePeerPaymentBalance])
    {
      v12 = [v6 hasRecipient] & v9;
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    goto LABEL_12;
  }

  if (v5 == 2)
  {
    v6 = [v4 paymentSummaryItems];
    if ([v6 count] != 1)
    {
      LOBYTE(v12) = 0;
      goto LABEL_13;
    }

    v10 = [(PKPaymentDataItem *)self model];
    v11 = [v10 itemForType:9];
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