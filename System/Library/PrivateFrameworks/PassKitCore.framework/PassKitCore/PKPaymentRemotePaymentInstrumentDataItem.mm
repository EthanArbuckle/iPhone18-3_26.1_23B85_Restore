@interface PKPaymentRemotePaymentInstrumentDataItem
- (BOOL)hasAssociatedPeerPaymentAccount;
- (BOOL)isValidWithError:(id *)error;
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

- (PKRemoteDevice)remoteDevice
{
  model = [(PKPaymentDataItem *)self model];
  remoteDevice = [model remoteDevice];

  return remoteDevice;
}

- (PKRemotePaymentInstrument)remotePaymentInstrument
{
  model = [(PKPaymentDataItem *)self model];
  remotePaymentInstrument = [model remotePaymentInstrument];

  return remotePaymentInstrument;
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

- (BOOL)hasAssociatedPeerPaymentAccount
{
  remotePaymentInstrument = [(PKPaymentRemotePaymentInstrumentDataItem *)self remotePaymentInstrument];
  hasAssociatedPeerPaymentAccount = [remotePaymentInstrument hasAssociatedPeerPaymentAccount];

  return hasAssociatedPeerPaymentAccount;
}

- (id)peerPaymentAccountBalance
{
  remotePaymentInstrument = [(PKPaymentRemotePaymentInstrumentDataItem *)self remotePaymentInstrument];
  peerPaymentAccountBalance = [remotePaymentInstrument peerPaymentAccountBalance];

  return peerPaymentAccountBalance;
}

- (unint64_t)peerPaymentAccountState
{
  remotePaymentInstrument = [(PKPaymentRemotePaymentInstrumentDataItem *)self remotePaymentInstrument];
  peerPaymentAccountState = [remotePaymentInstrument peerPaymentAccountState];

  return peerPaymentAccountState;
}

- (BOOL)isValidWithError:(id *)error
{
  v64[2] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentRemotePaymentInstrumentDataItem *)self hasAssociatedPeerPaymentAccount])
  {
    peerPaymentAccountBalance = [(PKPaymentRemotePaymentInstrumentDataItem *)self peerPaymentAccountBalance];
    model = [(PKPaymentDataItem *)self model];
    currencyCode = [model currencyCode];
    model2 = [(PKPaymentDataItem *)self model];
    transactionAmount = [model2 transactionAmount];
    if ([peerPaymentAccountBalance compareToCurrencyCode:currencyCode amount:transactionAmount] == -1)
    {
      model3 = [(PKPaymentDataItem *)self model];
      paymentRequest = [model3 paymentRequest];
      requestType = [paymentRequest requestType];

      if (requestType != 10)
      {
        if (!error)
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
        firstObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
        [v35 errorWithDomain:@"PKPassKitErrorDomain" code:-1001 userInfo:firstObject];
        *error = v22 = 0;
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

  errors = [(PKPaymentRemotePaymentInstrumentDataItem *)self errors];
  firstObject = [errors firstObject];

  if (!firstObject)
  {
    paymentContactFormatErrors = [(PKPaymentRemotePaymentInstrumentDataItem *)self paymentContactFormatErrors];
    firstObject = [paymentContactFormatErrors firstObject];
  }

  model4 = [(PKPaymentDataItem *)self model];
  billingAddress = [model4 billingAddress];

  if (!billingAddress)
  {
    if (!firstObject)
    {
      goto LABEL_19;
    }

LABEL_15:
    v21 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INVALID";
    if ([firstObject code] == 2)
    {
      userInfo = [firstObject userInfo];
      v24 = [userInfo PKStringForKey:@"PKPaymentErrorPostalAddress"];

      if (v24)
      {
        v21 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE";
      }
    }

    v20 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE_REASON";
    goto LABEL_20;
  }

  postalAddresses = [billingAddress postalAddresses];
  v19 = [postalAddresses count];

  if (firstObject)
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
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A588];
      v61[0] = *MEMORY[0x1E696A578];
      v61[1] = v29;
      v62[0] = v25;
      v62[1] = v26;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
      *error = [v28 errorWithDomain:@"PKPassKitErrorDomain" code:-3002 userInfo:v30];
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
    if (!error)
    {
LABEL_37:
      v22 = 0;
      goto LABEL_38;
    }

    v31 = MEMORY[0x1E696ABC0];
    v59[0] = *MEMORY[0x1E696A578];
    peerPaymentBalance = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_5.isa, 0);
    v60[0] = peerPaymentBalance;
    v59[1] = *MEMORY[0x1E696A588];
    v33 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_6.isa, 0);
    v60[1] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
    *error = [v31 errorWithDomain:@"PKPassKitErrorDomain" code:-3001 userInfo:v34];
    goto LABEL_35;
  }

LABEL_31:
  if ([(PKPaymentDataItem *)self status]== 5)
  {
    model5 = [(PKPaymentDataItem *)self model];
    pass = [model5 pass];
    hasAssociatedPeerPaymentAccount = [pass hasAssociatedPeerPaymentAccount];

    if (hasAssociatedPeerPaymentAccount)
    {
      model6 = [(PKPaymentDataItem *)self model];
      pass2 = [model6 pass];
      peerPaymentBalance = [pass2 peerPaymentBalance];

      minimalFormattedStringValue = [peerPaymentBalance minimalFormattedStringValue];
      v33 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_7.isa, &stru_1F2281668.isa, minimalFormattedStringValue);

      if (!error)
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
      *error = [v42 errorWithDomain:@"PKPassKitErrorDomain" code:-3009 userInfo:v45];

LABEL_35:
      goto LABEL_36;
    }
  }

LABEL_38:
  remotePaymentInstrument = [(PKPaymentRemotePaymentInstrumentDataItem *)self remotePaymentInstrument];
  if (!remotePaymentInstrument || (-[PKPaymentDataItem model](self, "model"), v47 = objc_claimAutoreleasedReturnValue(), [v47 allAcceptedRemotePaymentInstruments], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "containsObject:", remotePaymentInstrument), v48, v47, (v49 & 1) == 0))
  {
    if (error)
    {
      v50 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_3.isa, 0);
      v51 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A588];
      v55[0] = *MEMORY[0x1E696A578];
      v55[1] = v52;
      v56[0] = v50;
      v56[1] = v50;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
      *error = [v51 errorWithDomain:@"PKPassKitErrorDomain" code:-3000 userInfo:v53];
    }

    v22 = 0;
  }

  return v22;
}

@end