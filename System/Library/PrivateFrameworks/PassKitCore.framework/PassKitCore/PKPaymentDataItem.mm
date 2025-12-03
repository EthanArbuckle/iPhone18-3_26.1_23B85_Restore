@interface PKPaymentDataItem
+ (BOOL)validateBillingAddressForItem:(id)item billingAddress:(id)address outError:(id *)error;
- (BOOL)isValidWithError:(id *)error;
- (PKPaymentAuthorizationDataModel)model;
- (PKPaymentDataItem)initWithModel:(id)model;
@end

@implementation PKPaymentDataItem

- (PKPaymentDataItem)initWithModel:(id)model
{
  modelCopy = model;
  v8.receiver = self;
  v8.super_class = PKPaymentDataItem;
  v5 = [(PKPaymentDataItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_model, modelCopy);
    v6->_type = [objc_opt_class() dataType];
    v6->_status = 0;
  }

  return v6;
}

- (BOOL)isValidWithError:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  }

  return 0;
}

+ (BOOL)validateBillingAddressForItem:(id)item billingAddress:(id)address outError:(id *)error
{
  v28[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  addressCopy = address;
  errors = [itemCopy errors];
  firstObject = [errors firstObject];

  if (firstObject)
  {
    if (addressCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    if (!firstObject)
    {
LABEL_14:
      v14 = @"IN_APP_PAYMENT_BILLING_ADDRESS_REQUIRED_REASON";
      v15 = @"IN_APP_PAYMENT_BILLING_ADDRESS_REQUIRED";
      goto LABEL_15;
    }

LABEL_9:
    v15 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INVALID";
    if ([firstObject code] == 2)
    {
      userInfo = [firstObject userInfo];
      v18 = [userInfo PKStringForKey:@"PKPaymentErrorPostalAddress"];

      if (v18)
      {
        v15 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE";
      }
    }

    v14 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE_REASON";
    goto LABEL_15;
  }

  paymentContactFormatErrors = [itemCopy paymentContactFormatErrors];
  firstObject = [paymentContactFormatErrors firstObject];

  if (!addressCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  postalAddresses = [addressCopy postalAddresses];
  v12 = [postalAddresses count];
  v13 = v12 != 0;

  if (firstObject)
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v13 = 1;
  if (![itemCopy isRejected])
  {
    v19 = 0;
    v21 = 0;
    goto LABEL_18;
  }

  v14 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INCOMPLETE_REASON";
  v15 = @"IN_APP_PAYMENT_BILLING_ADDRESS_INVALID";
LABEL_15:
  v19 = PKLocalizedPaymentString(&v15->isa, 0);
  v20 = PKLocalizedPaymentString(&v14->isa, 0);
  v21 = v20;
  if (error)
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A588];
    v27[0] = *MEMORY[0x1E696A578];
    v27[1] = v23;
    v28[0] = v19;
    v28[1] = v20;
    v27[2] = @"PKPaymentErrorIsFieldEmpty";
    v24 = [MEMORY[0x1E696AD98] numberWithInt:!v13];
    v28[2] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
    *error = [v22 errorWithDomain:@"PKPassKitErrorDomain" code:-3002 userInfo:v25];
  }

  LOBYTE(v13) = 0;
LABEL_18:

  return v13;
}

- (PKPaymentAuthorizationDataModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

@end