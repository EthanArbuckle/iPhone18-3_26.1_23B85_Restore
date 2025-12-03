@interface PKPaymentShippingAddressDataItem
- (BOOL)hasShippingAddress;
- (BOOL)isClientError:(id)error;
- (BOOL)isShippingEditable;
- (BOOL)isShippingServiceableWithError:(id *)error;
- (BOOL)isValidWithError:(id *)error;
- (CNContact)shippingAddress;
- (NSAttributedString)formattedAddressString;
- (NSString)shippingType;
- (id)_shippingName;
- (id)createIncompleteShippingAddressError;
- (id)createRequiredShippingAddressError;
- (id)createShippingAddressErrorFromError:(id)error;
- (id)createShippingAddressErrorWithDescription:(id)description failureReason:(id)reason;
- (id)createUnavailableShippingAddressError;
- (id)errors;
- (id)firstModelError;
- (id)incompleteShippingAddressErrorDescription;
- (id)incompleteShippingAddressErrorFailureReason;
- (id)paymentContactFormatErrors;
- (id)requiredShippingAddressErrorDescription;
- (id)requiredShippingAddressErrorFailureReason;
- (id)unavailableShippingAddressErrorDescription;
- (id)unavailableShippingAddressErrorFailureReason;
- (id)validate;
- (unint64_t)rawShippingType;
@end

@implementation PKPaymentShippingAddressDataItem

- (id)_shippingName
{
  model = [(PKPaymentDataItem *)self model];
  shippingAddress = [model shippingAddress];

  model2 = [(PKPaymentDataItem *)self model];
  paymentRequest = [model2 paymentRequest];
  requiredShippingContactFields = [paymentRequest requiredShippingContactFields];
  v8 = [requiredShippingContactFields containsObject:@"phoneticName"];

  if (v8)
  {
    [shippingAddress pkFullAndPhoneticName];
  }

  else
  {
    [shippingAddress pkFullName];
  }
  v9 = ;

  return v9;
}

- (NSAttributedString)formattedAddressString
{
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];
  requiredShippingContactFields = [paymentRequest requiredShippingContactFields];
  v6 = [requiredShippingContactFields containsObject:@"phoneticName"];

  shippingAddress = [(PKPaymentShippingAddressDataItem *)self shippingAddress];
  v8 = [shippingAddress pkFormattedContactAddressIncludingPhoneticName:v6];
  pk_uppercaseAttributedString = [v8 pk_uppercaseAttributedString];

  return pk_uppercaseAttributedString;
}

- (CNContact)shippingAddress
{
  model = [(PKPaymentDataItem *)self model];
  shippingAddress = [model shippingAddress];

  return shippingAddress;
}

- (BOOL)hasShippingAddress
{
  shippingAddress = [(PKPaymentShippingAddressDataItem *)self shippingAddress];
  postalAddresses = [shippingAddress postalAddresses];
  v4 = [postalAddresses count] != 0;

  return v4;
}

- (NSString)shippingType
{
  model = [(PKPaymentDataItem *)self model];
  shippingType = [model shippingType];

  return shippingType;
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
  v7 = [v3 pk_FilteredShippingErrorsForContactFields:v4 errors:paymentErrors];

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
  v7 = [v3 pk_FilteredShippingErrorsForContactFields:v4 errors:paymentContactFormatErrors];

  return v7;
}

- (BOOL)isShippingEditable
{
  model = [(PKPaymentDataItem *)self model];
  isShippingEditable = [model isShippingEditable];

  return isShippingEditable;
}

- (BOOL)isShippingServiceableWithError:(id *)error
{
  v14[2] = *MEMORY[0x1E69E9840];
  errors = [(PKPaymentShippingAddressDataItem *)self errors];
  v6 = [errors pk_firstObjectPassingTest:&__block_literal_global_289];

  if (error && v6)
  {
    hasShippingAddress = [(PKPaymentShippingAddressDataItem *)self hasShippingAddress];
    v8 = MEMORY[0x1E696ABC0];
    v13[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v6 localizedDescription];
    v14[0] = localizedDescription;
    v13[1] = @"PKPaymentErrorIsFieldEmpty";
    v10 = [MEMORY[0x1E696AD98] numberWithInt:!hasShippingAddress];
    v14[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    *error = [v8 errorWithDomain:@"PKPassKitErrorDomain" code:-3003 userInfo:v11];
  }

  return v6 == 0;
}

BOOL __67__PKPaymentShippingAddressDataItem_isShippingServiceableWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  if ([v3 isEqualToString:@"PKPaymentErrorDomain"])
  {
    v4 = [v2 code] == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isValidWithError:(id *)error
{
  validate = [(PKPaymentShippingAddressDataItem *)self validate];
  if (error && validate)
  {
    validate = validate;
    *error = validate;
  }

  v5 = validate == 0;

  return v5;
}

- (id)validate
{
  if (![(PKPaymentShippingAddressDataItem *)self isShippingEditable])
  {
    v5 = 0;
    goto LABEL_11;
  }

  firstModelError = [(PKPaymentShippingAddressDataItem *)self firstModelError];
  if (firstModelError)
  {
    createIncompleteShippingAddressError = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorFromError:firstModelError];
  }

  else if ([(PKPaymentShippingAddressDataItem *)self hasShippingAddress])
  {
    if (![(PKPaymentDataItem *)self isRejected])
    {
      v5 = 0;
      goto LABEL_10;
    }

    createIncompleteShippingAddressError = [(PKPaymentShippingAddressDataItem *)self createIncompleteShippingAddressError];
  }

  else
  {
    createIncompleteShippingAddressError = [(PKPaymentShippingAddressDataItem *)self createRequiredShippingAddressError];
  }

  v5 = createIncompleteShippingAddressError;
LABEL_10:

LABEL_11:

  return v5;
}

- (id)firstModelError
{
  errors = [(PKPaymentShippingAddressDataItem *)self errors];
  firstObject = [errors firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    firstObject2 = firstObject;
  }

  else
  {
    paymentContactFormatErrors = [(PKPaymentShippingAddressDataItem *)self paymentContactFormatErrors];
    firstObject2 = [paymentContactFormatErrors firstObject];
  }

  return firstObject2;
}

- (unint64_t)rawShippingType
{
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];
  shippingType = [paymentRequest shippingType];

  return shippingType;
}

- (id)createShippingAddressErrorFromError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E696A578]];

  if (-[PKPaymentShippingAddressDataItem isClientError:](self, "isClientError:", errorCopy) && [v6 length])
  {
    incompleteShippingAddressErrorDescription = [(PKPaymentShippingAddressDataItem *)self incompleteShippingAddressErrorDescription];
    v8 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorWithDescription:incompleteShippingAddressErrorDescription failureReason:v6];
LABEL_17:
    v15 = v8;
    goto LABEL_18;
  }

  userInfo2 = [errorCopy userInfo];
  incompleteShippingAddressErrorDescription = [userInfo2 objectForKey:@"PKPaymentErrorContactField"];

  if ([incompleteShippingAddressErrorDescription isEqualToString:@"name"])
  {
    model = [(PKPaymentDataItem *)self model];
    shippingAddress = [model shippingAddress];
    pkFullName = [shippingAddress pkFullName];
  }

  else
  {
    if (![incompleteShippingAddressErrorDescription isEqualToString:@"phoneticName"])
    {
      if ([errorCopy code] == 1)
      {
        [(PKPaymentShippingAddressDataItem *)self createIncompleteShippingAddressError];
      }

      else
      {
        [(PKPaymentShippingAddressDataItem *)self createUnavailableShippingAddressError];
      }
      v8 = ;
      goto LABEL_17;
    }

    model = [(PKPaymentDataItem *)self model];
    shippingAddress = [model shippingAddress];
    pkFullName = [shippingAddress pkPhoneticName];
  }

  v13 = pkFullName;

  if (v13 && [v13 length])
  {
    createIncompleteShippingAddressError = [(PKPaymentShippingAddressDataItem *)self createIncompleteShippingAddressError];
  }

  else
  {
    createIncompleteShippingAddressError = [(PKPaymentShippingAddressDataItem *)self createRequiredShippingAddressError];
  }

  v15 = createIncompleteShippingAddressError;

LABEL_18:

  return v15;
}

- (BOOL)isClientError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo PKBoolForKey:@"PKPaymentErrorIsFromClient"];

  return v4;
}

- (id)createRequiredShippingAddressError
{
  requiredShippingAddressErrorDescription = [(PKPaymentShippingAddressDataItem *)self requiredShippingAddressErrorDescription];
  requiredShippingAddressErrorFailureReason = [(PKPaymentShippingAddressDataItem *)self requiredShippingAddressErrorFailureReason];
  v5 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorWithDescription:requiredShippingAddressErrorDescription failureReason:requiredShippingAddressErrorFailureReason];

  return v5;
}

- (id)requiredShippingAddressErrorDescription
{
  v2 = [(PKPaymentShippingAddressDataItem *)self rawShippingType]- 1;
  if (v2 > 2)
  {
    v3 = @"IN_APP_PAYMENT_SHIPPING_ADDRESS_REQUIRED";
  }

  else
  {
    v3 = off_1E79E4AE8[v2];
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0);

  return v4;
}

- (id)requiredShippingAddressErrorFailureReason
{
  v2 = [(PKPaymentShippingAddressDataItem *)self rawShippingType]- 1;
  if (v2 > 2)
  {
    v3 = @"IN_APP_PAYMENT_SHIPPING_ADDRESS_REQUIRED_REASON";
  }

  else
  {
    v3 = off_1E79E4B00[v2];
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0);

  return v4;
}

- (id)createIncompleteShippingAddressError
{
  incompleteShippingAddressErrorDescription = [(PKPaymentShippingAddressDataItem *)self incompleteShippingAddressErrorDescription];
  incompleteShippingAddressErrorFailureReason = [(PKPaymentShippingAddressDataItem *)self incompleteShippingAddressErrorFailureReason];
  v5 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorWithDescription:incompleteShippingAddressErrorDescription failureReason:incompleteShippingAddressErrorFailureReason];

  return v5;
}

- (id)incompleteShippingAddressErrorDescription
{
  v2 = [(PKPaymentShippingAddressDataItem *)self rawShippingType]- 1;
  if (v2 > 2)
  {
    v3 = @"IN_APP_PAYMENT_SHIPPING_ADDRESS_INCOMPLETE";
  }

  else
  {
    v3 = off_1E79E4B18[v2];
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0);

  return v4;
}

- (id)incompleteShippingAddressErrorFailureReason
{
  v2 = [(PKPaymentShippingAddressDataItem *)self rawShippingType]- 1;
  if (v2 > 2)
  {
    v3 = @"IN_APP_PAYMENT_SHIPPING_ADDRESS_INCOMPLETE_REASON";
  }

  else
  {
    v3 = off_1E79E4B30[v2];
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0);

  return v4;
}

- (id)createUnavailableShippingAddressError
{
  unavailableShippingAddressErrorDescription = [(PKPaymentShippingAddressDataItem *)self unavailableShippingAddressErrorDescription];
  unavailableShippingAddressErrorFailureReason = [(PKPaymentShippingAddressDataItem *)self unavailableShippingAddressErrorFailureReason];
  v5 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorWithDescription:unavailableShippingAddressErrorDescription failureReason:unavailableShippingAddressErrorFailureReason];

  return v5;
}

- (id)unavailableShippingAddressErrorDescription
{
  v2 = [(PKPaymentShippingAddressDataItem *)self rawShippingType]- 1;
  if (v2 > 2)
  {
    v3 = @"IN_APP_PAYMENT_SHIPPING_ADDRESS_UNAVAILABLE";
  }

  else
  {
    v3 = off_1E79E4B48[v2];
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0);

  return v4;
}

- (id)unavailableShippingAddressErrorFailureReason
{
  v2 = [(PKPaymentShippingAddressDataItem *)self rawShippingType]- 1;
  if (v2 > 2)
  {
    v3 = @"IN_APP_PAYMENT_SHIPPING_ADDRESS_UNAVAILABLE_REASON";
  }

  else
  {
    v3 = off_1E79E4B60[v2];
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0);

  return v4;
}

- (id)createShippingAddressErrorWithDescription:(id)description failureReason:(id)reason
{
  v16[3] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  descriptionCopy = description;
  hasShippingAddress = [(PKPaymentShippingAddressDataItem *)self hasShippingAddress];
  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A588];
  v15[0] = *MEMORY[0x1E696A578];
  v15[1] = v10;
  v16[0] = descriptionCopy;
  v16[1] = reasonCopy;
  v15[2] = @"PKPaymentErrorIsFieldEmpty";
  v11 = [MEMORY[0x1E696AD98] numberWithInt:!hasShippingAddress];
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v13 = [v9 errorWithDomain:@"PKPassKitErrorDomain" code:-3003 userInfo:v12];

  return v13;
}

@end