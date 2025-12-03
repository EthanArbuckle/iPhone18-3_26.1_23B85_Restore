@interface PKPaymentPaymentOfferDataItem
- (BOOL)_loadingDetailsAreValid:(id)valid error:(id *)error errorStatus:(int64_t *)status;
- (BOOL)_selectedPaymentOfferIsValidWithError:(id *)error errorStatus:(int64_t *)status;
- (BOOL)isValidWithError:(id *)error errorStatus:(int64_t *)status;
- (BOOL)requiresBillingAddress;
- (PKSelectedPaymentOffer)selectedPaymentOffer;
- (id)_errorLoadingPaymentOffersWithUnderlyingError:(id)error;
- (id)_noPaymentOfferSelectedError;
- (id)_selectedPaymentOfferInvalid;
- (id)billingAddress;
- (id)errors;
- (id)paymentContactFormatErrors;
@end

@implementation PKPaymentPaymentOfferDataItem

- (BOOL)isValidWithError:(id *)error errorStatus:(int64_t *)status
{
  v18 = 1;
  model = [(PKPaymentDataItem *)self model];
  paymentOffersController = [model paymentOffersController];

  model2 = [(PKPaymentDataItem *)self model];
  fundingMode = [model2 fundingMode];

  if (fundingMode != 2)
  {
    goto LABEL_7;
  }

  selectedOfferDetails = [paymentOffersController selectedOfferDetails];
  if (![selectedOfferDetails requiresUserAction])
  {
    v12 = [(PKPaymentPaymentOfferDataItem *)self _selectedPaymentOfferIsValidWithError:error errorStatus:&v18];

    if (!v12)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ([(PKPaymentPaymentOfferDataItem *)self requiresBillingAddress])
    {
      v13 = objc_opt_class();
      model3 = [(PKPaymentDataItem *)self model];
      billingAddress = [model3 billingAddress];
      v16 = [v13 validateBillingAddressForItem:self billingAddress:billingAddress outError:error];

      if (!status)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = 1;
      if (!status)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v18 = 12;
  if (error)
  {
    *error = [(PKPaymentPaymentOfferDataItem *)self _selectedPaymentOfferInvalid];
  }

LABEL_10:
  v16 = 0;
  if (status)
  {
LABEL_11:
    *status = v18;
  }

LABEL_12:

  return v16;
}

- (BOOL)_selectedPaymentOfferIsValidWithError:(id *)error errorStatus:(int64_t *)status
{
  selectedPaymentOffer = [(PKPaymentPaymentOfferDataItem *)self selectedPaymentOffer];
  model = [(PKPaymentDataItem *)self model];
  fundingMode = [model fundingMode];

  v10 = 1;
  if (fundingMode == 2 && selectedPaymentOffer)
  {
    v17 = 1;
    model2 = [(PKPaymentDataItem *)self model];
    paymentOffersController = [model2 paymentOffersController];

    criteriaIdentifier = [selectedPaymentOffer criteriaIdentifier];
    passUniqueID = [selectedPaymentOffer passUniqueID];
    v15 = [paymentOffersController loadingDetailsForPaymentOffersForCriteriaIdentifier:criteriaIdentifier passUniqueID:passUniqueID];

    v10 = [(PKPaymentPaymentOfferDataItem *)self _loadingDetailsAreValid:v15 error:error errorStatus:&v17];
    if (status)
    {
      *status = v17;
    }
  }

  return v10;
}

- (BOOL)_loadingDetailsAreValid:(id)valid error:(id *)error errorStatus:(int64_t *)status
{
  validCopy = valid;
  v9 = validCopy;
  if (!validCopy)
  {
    v12 = 1;
    goto LABEL_12;
  }

  state = [validCopy state];
  if (!state)
  {
    if (error)
    {
      [(PKPaymentPaymentOfferDataItem *)self _noPaymentOfferSelectedError];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = 9;
    if (!status)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (state == 1)
  {
    v12 = 0;
    v13 = 10;
    if (!status)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (state != 2)
  {
    v13 = 1;
    v12 = 1;
    if (!status)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (error)
  {
    error = [v9 error];
    *error = [(PKPaymentPaymentOfferDataItem *)self _errorLoadingPaymentOffersWithUnderlyingError:error];
  }

  v12 = 0;
  v13 = 11;
  if (status)
  {
LABEL_11:
    *status = v13;
  }

LABEL_12:

  return v12;
}

- (PKSelectedPaymentOffer)selectedPaymentOffer
{
  model = [(PKPaymentDataItem *)self model];
  selectedPaymentOffer = [model selectedPaymentOffer];

  return selectedPaymentOffer;
}

- (BOOL)requiresBillingAddress
{
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];
  requiredBillingContactFields = [paymentRequest requiredBillingContactFields];
  v5 = [requiredBillingContactFields containsObject:@"post"];

  return v5;
}

- (id)billingAddress
{
  model = [(PKPaymentDataItem *)self model];
  billingAddress = [model billingAddress];

  return billingAddress;
}

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

- (id)_noPaymentOfferSelectedError
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = PKLocalizedPaymentOffersString(&cfstr_InAppPaymentOf.isa, 0);
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A588];
  v8[0] = *MEMORY[0x1E696A578];
  v8[1] = v4;
  v9[0] = v2;
  v9[1] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v3 errorWithDomain:@"PKPassKitErrorDomain" code:-9002 userInfo:v5];

  return v6;
}

- (id)_selectedPaymentOfferInvalid
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = PKLocalizedPaymentOffersString(&cfstr_InAppPaymentOf.isa, 0);
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A588];
  v8[0] = *MEMORY[0x1E696A578];
  v8[1] = v4;
  v9[0] = v2;
  v9[1] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v3 errorWithDomain:@"PKPassKitErrorDomain" code:-9004 userInfo:v5];

  return v6;
}

- (id)_errorLoadingPaymentOffersWithUnderlyingError:(id)error
{
  errorCopy = error;
  v4 = PKLocalizedPaymentOffersString(&cfstr_InAppPaymentOf_0.isa, 0);
  v5 = v4;
  if (errorCopy)
  {
    localizedFailureReason = [errorCopy localizedFailureReason];
    v7 = localizedFailureReason;
    if (localizedFailureReason)
    {
      v8 = localizedFailureReason;
    }

    else
    {
      v8 = PKTitleForDisplayableError(errorCopy);
    }

    v9 = v8;

    localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
  }

  else
  {
    v9 = v4;
    localizedRecoverySuggestion = 0;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (localizedRecoverySuggestion)
  {
    v12 = localizedRecoverySuggestion;
  }

  else
  {
    v12 = v5;
  }

  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A588]];
  [v11 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-9003 userInfo:v11];

  return v13;
}

@end