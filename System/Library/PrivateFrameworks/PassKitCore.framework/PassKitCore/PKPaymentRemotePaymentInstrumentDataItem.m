@interface PKPaymentRemotePaymentInstrumentDataItem
- (BOOL)hasAssociatedPeerPaymentAccount;
- (BOOL)isValidWithError:(id *)a3;
- (BOOL)requiresBillingAddress;
- (CNContact)billingAddress;
- (PKPaymentApplication)paymentApplication;
- (PKRemoteDevice)remoteDevice;
- (PKRemotePaymentInstrument)remotePaymentInstrument;
- (id)errors;
- (id)paymentContactFormatErrors;
- (id)peerPaymentAccountBalance;
- (unint64_t)peerPaymentAccountState;
@end

@implementation PKPaymentRemotePaymentInstrumentDataItem

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

- (PKRemoteDevice)remoteDevice
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 remoteDevice];

  return v3;
}

- (PKRemotePaymentInstrument)remotePaymentInstrument
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 remotePaymentInstrument];

  return v3;
}

- (PKPaymentApplication)paymentApplication
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 paymentApplication];

  return v3;
}

- (CNContact)billingAddress
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 billingAddress];

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

- (BOOL)hasAssociatedPeerPaymentAccount
{
  v2 = [(PKPaymentRemotePaymentInstrumentDataItem *)self remotePaymentInstrument];
  v3 = [v2 hasAssociatedPeerPaymentAccount];

  return v3;
}

- (id)peerPaymentAccountBalance
{
  v2 = [(PKPaymentRemotePaymentInstrumentDataItem *)self remotePaymentInstrument];
  v3 = [v2 peerPaymentAccountBalance];

  return v3;
}

- (unint64_t)peerPaymentAccountState
{
  v2 = [(PKPaymentRemotePaymentInstrumentDataItem *)self remotePaymentInstrument];
  v3 = [v2 peerPaymentAccountState];

  return v3;
}

- (BOOL)isValidWithError:(id *)a3
{
  v64[2] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentRemotePaymentInstrumentDataItem *)self hasAssociatedPeerPaymentAccount])
  {
    v5 = [(PKPaymentRemotePaymentInstrumentDataItem *)self peerPaymentAccountBalance];
    v6 = [(PKPaymentDataItem *)self model];
    v7 = [v6 currencyCode];
    v8 = [(PKPaymentDataItem *)self model];
    v9 = [v8 transactionAmount];
    if ([v5 compareToCurrencyCode:v7 amount:v9] == -1)
    {
      v10 = [(PKPaymentDataItem *)self model];
      v11 = [v10 paymentRequest];
      v12 = [v11 requestType];

      if (v12 != 10)
      {
        if (!a3)
        {
          v22 = 0;
          if ([(PKPaymentDataItem *)self status]== 4)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
        }

        v35 = MEMORY[0x1E696ABC0];
        v63[0] = *MEMORY[0x1E696A578];
        v25 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa, 0);
        v64[0] = v25;
        v63[1] = *MEMORY[0x1E696A588];
        v27 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa, 0);
        v64[1] = v27;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
        [v35 errorWithDomain:@"PKPassKitErrorDomain" code:-1001 userInfo:v14];
        *a3 = v22 = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  if (![(PKPaymentRemotePaymentInstrumentDataItem *)self requiresBillingAddress])
  {
    v22 = 1;
    goto LABEL_25;
  }

  v13 = [(PKPaymentRemotePaymentInstrumentDataItem *)self errors];
  v14 = [v13 firstObject];

  if (!v14)
  {
    v15 = [(PKPaymentRemotePaymentInstrumentDataItem *)self paymentContactFormatErrors];
    v14 = [v15 firstObject];
  }

  v16 = [(PKPaymentDataItem *)self model];
  v17 = [v16 billingAddress];

  if (!v17)
  {
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_15:
    v21 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INVALID";
    if ([v14 code] == 2)
    {
      v23 = [v14 userInfo];
      v24 = [v23 PKStringForKey:@"PKPaymentErrorPostalAddress"];

      if (v24)
      {
        v21 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE";
      }
    }

    v20 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE_REASON";
    goto LABEL_20;
  }

  v18 = [v17 postalAddresses];
  v19 = [v18 count];

  if (v14)
  {
    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_19:
    v20 = @"IN_APP_PAYMENT_BILLING_ADDRESS_REQUIRED_REASON";
    v21 = @"IN_APP_PAYMENT_BILLING_ADDRESS_REQUIRED";
    goto LABEL_20;
  }

  if ([(PKPaymentDataItem *)self isRejected])
  {
    v20 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE_REASON";
    v21 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INVALID";
LABEL_20:
    v25 = PKLocalizedPaymentString(&v21->isa, 0);
    v26 = PKLocalizedPaymentString(&v20->isa, 0);
    v27 = v26;
    if (a3)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A588];
      v61[0] = *MEMORY[0x1E696A578];
      v61[1] = v29;
      v62[0] = v25;
      v62[1] = v26;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
      *a3 = [v28 errorWithDomain:@"PKPassKitErrorDomain" code:-3002 userInfo:v30];
    }

    v22 = 0;
    goto LABEL_23;
  }

  v27 = 0;
  v25 = 0;
  v22 = 1;
LABEL_23:

LABEL_24:
LABEL_25:
  if ([(PKPaymentDataItem *)self status]== 4)
  {
    if (!a3)
    {
LABEL_37:
      v22 = 0;
      goto LABEL_38;
    }

    v31 = MEMORY[0x1E696ABC0];
    v59[0] = *MEMORY[0x1E696A578];
    v32 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_5.isa, 0);
    v60[0] = v32;
    v59[1] = *MEMORY[0x1E696A588];
    v33 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_6.isa, 0);
    v60[1] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    *a3 = [v31 errorWithDomain:@"PKPassKitErrorDomain" code:-3001 userInfo:v34];
    goto LABEL_35;
  }

LABEL_31:
  if ([(PKPaymentDataItem *)self status]== 5)
  {
    v36 = [(PKPaymentDataItem *)self model];
    v37 = [v36 pass];
    v38 = [v37 hasAssociatedPeerPaymentAccount];

    if (v38)
    {
      v39 = [(PKPaymentDataItem *)self model];
      v40 = [v39 pass];
      v32 = [v40 peerPaymentBalance];

      v41 = [v32 minimalFormattedStringValue];
      v33 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_7.isa, &stru_1F2281668.isa, v41);

      if (!a3)
      {
LABEL_36:

        goto LABEL_37;
      }

      v42 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v58[0] = v33;
      v44 = *MEMORY[0x1E696A588];
      v57[0] = v43;
      v57[1] = v44;
      v34 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa, 0);
      v58[1] = v34;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
      *a3 = [v42 errorWithDomain:@"PKPassKitErrorDomain" code:-3009 userInfo:v45];

LABEL_35:
      goto LABEL_36;
    }
  }

LABEL_38:
  v46 = [(PKPaymentRemotePaymentInstrumentDataItem *)self remotePaymentInstrument];
  if (!v46 || (-[PKPaymentDataItem model](self, "model"), v47 = objc_claimAutoreleasedReturnValue(), [v47 allAcceptedRemotePaymentInstruments], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "containsObject:", v46), v48, v47, (v49 & 1) == 0))
  {
    if (a3)
    {
      v50 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_3.isa, 0);
      v51 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A588];
      v55[0] = *MEMORY[0x1E696A578];
      v55[1] = v52;
      v56[0] = v50;
      v56[1] = v50;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
      *a3 = [v51 errorWithDomain:@"PKPassKitErrorDomain" code:-3000 userInfo:v53];
    }

    v22 = 0;
  }

  return v22;
}

@end