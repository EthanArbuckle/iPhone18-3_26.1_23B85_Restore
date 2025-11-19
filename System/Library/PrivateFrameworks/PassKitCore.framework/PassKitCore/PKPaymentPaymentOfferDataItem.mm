@interface PKPaymentPaymentOfferDataItem
- (BOOL)_loadingDetailsAreValid:(id)a3 error:(id *)a4 errorStatus:(int64_t *)a5;
- (BOOL)_selectedPaymentOfferIsValidWithError:(id *)a3 errorStatus:(int64_t *)a4;
- (BOOL)isValidWithError:(id *)a3 errorStatus:(int64_t *)a4;
- (BOOL)requiresBillingAddress;
- (PKSelectedPaymentOffer)selectedPaymentOffer;
- (id)_errorLoadingPaymentOffersWithUnderlyingError:(id)a3;
- (id)_noPaymentOfferSelectedError;
- (id)_selectedPaymentOfferInvalid;
- (id)billingAddress;
- (id)errors;
- (id)paymentContactFormatErrors;
@end

@implementation PKPaymentPaymentOfferDataItem

- (BOOL)isValidWithError:(id *)a3 errorStatus:(int64_t *)a4
{
  v18 = 1;
  v7 = [(PKPaymentDataItem *)self model];
  v8 = [v7 paymentOffersController];

  v9 = [(PKPaymentDataItem *)self model];
  v10 = [v9 fundingMode];

  if (v10 != 2)
  {
    goto LABEL_7;
  }

  v11 = [v8 selectedOfferDetails];
  if (![v11 requiresUserAction])
  {
    v12 = [(PKPaymentPaymentOfferDataItem *)self _selectedPaymentOfferIsValidWithError:a3 errorStatus:&v18];

    if (!v12)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ([(PKPaymentPaymentOfferDataItem *)self requiresBillingAddress])
    {
      v13 = objc_opt_class();
      v14 = [(PKPaymentDataItem *)self model];
      v15 = [v14 billingAddress];
      v16 = [v13 validateBillingAddressForItem:self billingAddress:v15 outError:a3];

      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = 1;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v18 = 12;
  if (a3)
  {
    *a3 = [(PKPaymentPaymentOfferDataItem *)self _selectedPaymentOfferInvalid];
  }

LABEL_10:
  v16 = 0;
  if (a4)
  {
LABEL_11:
    *a4 = v18;
  }

LABEL_12:

  return v16;
}

- (BOOL)_selectedPaymentOfferIsValidWithError:(id *)a3 errorStatus:(int64_t *)a4
{
  v7 = [(PKPaymentPaymentOfferDataItem *)self selectedPaymentOffer];
  v8 = [(PKPaymentDataItem *)self model];
  v9 = [v8 fundingMode];

  v10 = 1;
  if (v9 == 2 && v7)
  {
    v17 = 1;
    v11 = [(PKPaymentDataItem *)self model];
    v12 = [v11 paymentOffersController];

    v13 = [v7 criteriaIdentifier];
    v14 = [v7 passUniqueID];
    v15 = [v12 loadingDetailsForPaymentOffersForCriteriaIdentifier:v13 passUniqueID:v14];

    v10 = [(PKPaymentPaymentOfferDataItem *)self _loadingDetailsAreValid:v15 error:a3 errorStatus:&v17];
    if (a4)
    {
      *a4 = v17;
    }
  }

  return v10;
}

- (BOOL)_loadingDetailsAreValid:(id)a3 error:(id *)a4 errorStatus:(int64_t *)a5
{
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    v12 = 1;
    goto LABEL_12;
  }

  v10 = [v8 state];
  if (!v10)
  {
    if (a4)
    {
      [(PKPaymentPaymentOfferDataItem *)self _noPaymentOfferSelectedError];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = 9;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v10 == 1)
  {
    v12 = 0;
    v13 = 10;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v10 != 2)
  {
    v13 = 1;
    v12 = 1;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    v11 = [v9 error];
    *a4 = [(PKPaymentPaymentOfferDataItem *)self _errorLoadingPaymentOffersWithUnderlyingError:v11];
  }

  v12 = 0;
  v13 = 11;
  if (a5)
  {
LABEL_11:
    *a5 = v13;
  }

LABEL_12:

  return v12;
}

- (PKSelectedPaymentOffer)selectedPaymentOffer
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 selectedPaymentOffer];

  return v3;
}

- (BOOL)requiresBillingAddress
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 paymentRequest];
  v4 = [v3 requiredBillingContactFields];
  v5 = [v4 containsObject:@"post"];

  return v5;
}

- (id)billingAddress
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 billingAddress];

  return v3;
}

- (id)errors
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEC8];
  v9[0] = @"post";
  v9[1] = @"name";
  v9[2] = @"phoneticName";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v5 = [(PKPaymentDataItem *)self model];
  v6 = [v5 paymentErrors];
  v7 = [v3 pk_FilteredBillingErrorsForContactFields:v4 errors:v6];

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
  v5 = [(PKPaymentDataItem *)self model];
  v6 = [v5 paymentContactFormatErrors];
  v7 = [v3 pk_FilteredBillingErrorsForContactFields:v4 errors:v6];

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

- (id)_errorLoadingPaymentOffersWithUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = PKLocalizedPaymentOffersString(&cfstr_InAppPaymentOf_0.isa, 0);
  v5 = v4;
  if (v3)
  {
    v6 = [v3 localizedFailureReason];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = PKTitleForDisplayableError(v3);
    }

    v9 = v8;

    v10 = [v3 localizedRecoverySuggestion];
  }

  else
  {
    v9 = v4;
    v10 = 0;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A588]];
  [v11 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-9003 userInfo:v11];

  return v13;
}

@end