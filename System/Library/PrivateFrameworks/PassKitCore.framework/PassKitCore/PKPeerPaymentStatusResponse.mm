@interface PKPeerPaymentStatusResponse
- (BOOL)amountHashIsValidForAmount:(id)amount andCurrency:(id)currency;
- (PKPeerPaymentStatusResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentStatusResponse

- (PKPeerPaymentStatusResponse)initWithData:(id)data
{
  v33 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PKPeerPaymentStatusResponse;
  v3 = [(PKWebServiceResponse *)&v28 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [v6 PKStringForKey:@"status"];
      v8 = PKPaymentTransactionStatusFromString(v7);
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v9 = -1;
      }

      else
      {
        v9 = v8;
      }

      v4->_status = v9;

      v10 = [v6 PKStringForKey:@"paymentIdentifier"];
      paymentIdentifier = v4->_paymentIdentifier;
      v4->_paymentIdentifier = v10;

      v12 = [v6 PKStringForKey:@"transactionIdentifier"];
      transactionIdentifier = v4->_transactionIdentifier;
      v4->_transactionIdentifier = v12;

      v14 = [v6 PKStringForKey:@"recurringPaymentIdentifier"];
      recurringPaymentIdentifier = v4->_recurringPaymentIdentifier;
      v4->_recurringPaymentIdentifier = v14;

      v16 = [v6 PKArrayForKey:@"actions"];
      actions = v4->_actions;
      v4->_actions = v16;

      v18 = [v6 PKStringForKey:@"amountHash"];
      pk_decodeHexadecimal = [v18 pk_decodeHexadecimal];
      amountHash = v4->_amountHash;
      v4->_amountHash = pk_decodeHexadecimal;

      v21 = [v6 PKStringForKey:@"signature"];

      signature = v4->_signature;
      v4->_signature = v21;
    }

    else
    {
      signature = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(signature, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138543618;
        v30 = v24;
        v31 = 2114;
        v32 = v26;
        _os_log_impl(&dword_1AD337000, signature, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

- (BOOL)amountHashIsValidForAmount:(id)amount andCurrency:(id)currency
{
  if (!self->_amountHash)
  {
    return 1;
  }

  currencyCopy = currency;
  amountCopy = amount;
  v8 = PKMutableNumberFormatterForCurrencyCodeExcludingCurrencySymbols(currencyCopy);
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v8 setLocale:v9];

  v10 = [v8 stringFromNumber:amountCopy];

  currencyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", self->_transactionIdentifier, v10, currencyCopy];

  v12 = [currencyCopy dataUsingEncoding:4];
  sHA256Hash = [v12 SHA256Hash];

  if (sHA256Hash)
  {
    v14 = [(NSData *)self->_amountHash isEqualToData:sHA256Hash];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end