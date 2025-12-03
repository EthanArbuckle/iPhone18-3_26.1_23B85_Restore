@interface PKPaymentCardDataItem
- (BOOL)isValidWithError:(id *)error;
- (BOOL)requiresBillingAddress;
- (BOOL)shouldShowCardArt;
- (CNContact)billingAddress;
- (PKPaymentApplication)paymentApplication;
- (PKPaymentPass)pass;
- (id)errors;
- (id)paymentContactFormatErrors;
- (int64_t)status;
@end

@implementation PKPaymentCardDataItem

- (id)errors
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEC8];
  v9[0] = @"post";
  v9[1] = @"name";
  v9[2] = @"phoneticName";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  model = [(PKPaymentDataItem *)self model];
  paymentErrors = [model paymentErrors];
  v7 = [v3 pk_FilteredBillingErrorsForContactFields:v4 errors:paymentErrors];

  return v7;
}

- (id)paymentContactFormatErrors
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEC8];
  v9[0] = @"post";
  v9[1] = @"name";
  v9[2] = @"phoneticName";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  model = [(PKPaymentDataItem *)self model];
  paymentContactFormatErrors = [model paymentContactFormatErrors];
  v7 = [v3 pk_FilteredBillingErrorsForContactFields:v4 errors:paymentContactFormatErrors];

  return v7;
}

- (PKPaymentPass)pass
{
  model = [(PKPaymentDataItem *)self model];
  pass = [model pass];

  return pass;
}

- (PKPaymentApplication)paymentApplication
{
  model = [(PKPaymentDataItem *)self model];
  paymentApplication = [model paymentApplication];

  return paymentApplication;
}

- (CNContact)billingAddress
{
  model = [(PKPaymentDataItem *)self model];
  billingAddress = [model billingAddress];

  return billingAddress;
}

- (BOOL)requiresBillingAddress
{
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];
  requiredBillingContactFields = [paymentRequest requiredBillingContactFields];
  v5 = [requiredBillingContactFields containsObject:@"post"];

  return v5;
}

- (int64_t)status
{
  model = [(PKPaymentDataItem *)self model];
  pass = [(PKPaymentCardDataItem *)self pass];
  v5 = [model _statusForPass:pass];

  return v5;
}

- (BOOL)shouldShowCardArt
{
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];

  v7 = 1;
  if ([paymentRequest isPeerPaymentRequest])
  {
    peerPaymentRequest = [paymentRequest peerPaymentRequest];
    peerPaymentQuote = [peerPaymentRequest peerPaymentQuote];
    v6 = [peerPaymentQuote firstQuoteItemOfType:4];

    if (v6)
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isValidWithError:(id *)error
{
  v40[2] = *MEMORY[0x1E69E9840];
  pass = [(PKPaymentCardDataItem *)self pass];
  if (pass)
  {
  }

  else
  {
    model = [(PKPaymentDataItem *)self model];
    supportsEmptyPass = [model supportsEmptyPass];

    if (supportsEmptyPass)
    {
      if (error)
      {
        model2 = [(PKPaymentDataItem *)self model];
        unavailablePasses = [model2 unavailablePasses];
        v10 = [unavailablePasses pk_firstObjectPassingTest:&__block_literal_global_11];

        if (v10)
        {
          v11 = -3013;
        }

        else
        {
          v11 = -3012;
        }

        if (v10)
        {
          v12 = @"IN_APP_PAYMENT_ERROR_TRY_DIFFERENT_PAYMENT_CARD";
        }

        else
        {
          v12 = @"IN_APP_PAYMENT_ERROR_ADD_PAYMENT_CARD";
        }

        v13 = PKLocalizedPaymentString(&v12->isa, 0);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 passActivationState] == 1)
        {
          v11 = -3017;
        }

        model3 = [(PKPaymentDataItem *)self model];
        paymentRequest = [model3 paymentRequest];
        originatingURL = [paymentRequest originatingURL];
        v17 = PKPaymentSheetShowExpressProvisioning(originatingURL);

        if (v17 && (v11 == -3012 || v11 == -3017))
        {
          v18 = PKLocalizedPaymentString(&cfstr_PassDetailsSel.isa, 0);

          v13 = v18;
        }

        v19 = MEMORY[0x1E696ABC0];
        v20 = *MEMORY[0x1E696A588];
        v39[0] = *MEMORY[0x1E696A578];
        v39[1] = v20;
        v40[0] = v13;
        v40[1] = v13;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
        *error = [v19 errorWithDomain:@"PKPassKitErrorDomain" code:v11 userInfo:v21];

        goto LABEL_25;
      }

      return 0;
    }
  }

  if ([(PKPaymentCardDataItem *)self requiresBillingAddress])
  {
    v22 = objc_opt_class();
    model4 = [(PKPaymentDataItem *)self model];
    billingAddress = [model4 billingAddress];
    v25 = [v22 validateBillingAddressForItem:self billingAddress:billingAddress outError:error];
  }

  else
  {
    v25 = 1;
  }

  if ([(PKPaymentCardDataItem *)self status]== 4)
  {
    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v37[0] = *MEMORY[0x1E696A578];
      v10 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_5.isa, 0);
      v38[0] = v10;
      v37[1] = *MEMORY[0x1E696A588];
      v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_6.isa, 0);
      v38[1] = v13;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
      *error = [v26 errorWithDomain:@"PKPassKitErrorDomain" code:-3001 userInfo:v27];

      goto LABEL_25;
    }

    return 0;
  }

  if ([(PKPaymentCardDataItem *)self status]== 5)
  {
    model5 = [(PKPaymentDataItem *)self model];
    pass2 = [model5 pass];
    hasAssociatedPeerPaymentAccount = [pass2 hasAssociatedPeerPaymentAccount];

    if (hasAssociatedPeerPaymentAccount)
    {
      v31 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa, 0);
      v10 = v31;
      if (!error)
      {
        goto LABEL_26;
      }

      v32 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A588];
      v35[0] = *MEMORY[0x1E696A578];
      v35[1] = v33;
      v36[0] = v31;
      v36[1] = v31;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      *error = [v32 errorWithDomain:@"PKPassKitErrorDomain" code:-3009 userInfo:v13];
LABEL_25:

LABEL_26:
      return 0;
    }
  }

  return v25;
}

BOOL __42__PKPaymentCardDataItem_isValidWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasAssociatedPeerPaymentAccount])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 deviceInAppPaymentApplications];
    v3 = [v4 count] != 0;
  }

  return v3;
}

@end