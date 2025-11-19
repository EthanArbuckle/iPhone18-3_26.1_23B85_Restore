@interface PKPaymentShippingAddressDataItem
- (BOOL)hasShippingAddress;
- (BOOL)isClientError:(id)a3;
- (BOOL)isShippingEditable;
- (BOOL)isShippingServiceableWithError:(id *)a3;
- (BOOL)isValidWithError:(id *)a3;
- (CNContact)shippingAddress;
- (NSAttributedString)formattedAddressString;
- (NSString)shippingType;
- (id)_shippingName;
- (id)createIncompleteShippingAddressError;
- (id)createRequiredShippingAddressError;
- (id)createShippingAddressErrorFromError:(id)a3;
- (id)createShippingAddressErrorWithDescription:(id)a3 failureReason:(id)a4;
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
  v3 = [(PKPaymentDataItem *)self model];
  v4 = [v3 shippingAddress];

  v5 = [(PKPaymentDataItem *)self model];
  v6 = [v5 paymentRequest];
  v7 = [v6 requiredShippingContactFields];
  v8 = [v7 containsObject:@"phoneticName"];

  if (v8)
  {
    [v4 pkFullAndPhoneticName];
  }

  else
  {
    [v4 pkFullName];
  }
  v9 = ;

  return v9;
}

- (NSAttributedString)formattedAddressString
{
  v3 = [(PKPaymentDataItem *)self model];
  v4 = [v3 paymentRequest];
  v5 = [v4 requiredShippingContactFields];
  v6 = [v5 containsObject:@"phoneticName"];

  v7 = [(PKPaymentShippingAddressDataItem *)self shippingAddress];
  v8 = [v7 pkFormattedContactAddressIncludingPhoneticName:v6];
  v9 = [v8 pk_uppercaseAttributedString];

  return v9;
}

- (CNContact)shippingAddress
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 shippingAddress];

  return v3;
}

- (BOOL)hasShippingAddress
{
  v2 = [(PKPaymentShippingAddressDataItem *)self shippingAddress];
  v3 = [v2 postalAddresses];
  v4 = [v3 count] != 0;

  return v4;
}

- (NSString)shippingType
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 shippingType];

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
  v7 = [v3 pk_FilteredShippingErrorsForContactFields:v4 errors:v6];

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
  v7 = [v3 pk_FilteredShippingErrorsForContactFields:v4 errors:v6];

  return v7;
}

- (BOOL)isShippingEditable
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 isShippingEditable];

  return v3;
}

- (BOOL)isShippingServiceableWithError:(id *)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [(PKPaymentShippingAddressDataItem *)self errors];
  v6 = [v5 pk_firstObjectPassingTest:&__block_literal_global_289];

  if (a3 && v6)
  {
    v7 = [(PKPaymentShippingAddressDataItem *)self hasShippingAddress];
    v8 = MEMORY[0x1E696ABC0];
    v13[0] = *MEMORY[0x1E696A578];
    v9 = [v6 localizedDescription];
    v14[0] = v9;
    v13[1] = @"PKPaymentErrorIsFieldEmpty";
    v10 = [MEMORY[0x1E696AD98] numberWithInt:!v7];
    v14[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    *a3 = [v8 errorWithDomain:@"PKPassKitErrorDomain" code:-3003 userInfo:v11];
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

- (BOOL)isValidWithError:(id *)a3
{
  v4 = [(PKPaymentShippingAddressDataItem *)self validate];
  if (a3 && v4)
  {
    v4 = v4;
    *a3 = v4;
  }

  v5 = v4 == 0;

  return v5;
}

- (id)validate
{
  if (![(PKPaymentShippingAddressDataItem *)self isShippingEditable])
  {
    v5 = 0;
    goto LABEL_11;
  }

  v3 = [(PKPaymentShippingAddressDataItem *)self firstModelError];
  if (v3)
  {
    v4 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorFromError:v3];
  }

  else if ([(PKPaymentShippingAddressDataItem *)self hasShippingAddress])
  {
    if (![(PKPaymentDataItem *)self isRejected])
    {
      v5 = 0;
      goto LABEL_10;
    }

    v4 = [(PKPaymentShippingAddressDataItem *)self createIncompleteShippingAddressError];
  }

  else
  {
    v4 = [(PKPaymentShippingAddressDataItem *)self createRequiredShippingAddressError];
  }

  v5 = v4;
LABEL_10:

LABEL_11:

  return v5;
}

- (id)firstModelError
{
  v3 = [(PKPaymentShippingAddressDataItem *)self errors];
  v4 = [v3 firstObject];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PKPaymentShippingAddressDataItem *)self paymentContactFormatErrors];
    v6 = [v7 firstObject];
  }

  return v6;
}

- (unint64_t)rawShippingType
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 paymentRequest];
  v4 = [v3 shippingType];

  return v4;
}

- (id)createShippingAddressErrorFromError:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E696A578]];

  if (-[PKPaymentShippingAddressDataItem isClientError:](self, "isClientError:", v4) && [v6 length])
  {
    v7 = [(PKPaymentShippingAddressDataItem *)self incompleteShippingAddressErrorDescription];
    v8 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorWithDescription:v7 failureReason:v6];
LABEL_17:
    v15 = v8;
    goto LABEL_18;
  }

  v9 = [v4 userInfo];
  v7 = [v9 objectForKey:@"PKPaymentErrorContactField"];

  if ([v7 isEqualToString:@"name"])
  {
    v10 = [(PKPaymentDataItem *)self model];
    v11 = [v10 shippingAddress];
    v12 = [v11 pkFullName];
  }

  else
  {
    if (![v7 isEqualToString:@"phoneticName"])
    {
      if ([v4 code] == 1)
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

    v10 = [(PKPaymentDataItem *)self model];
    v11 = [v10 shippingAddress];
    v12 = [v11 pkPhoneticName];
  }

  v13 = v12;

  if (v13 && [v13 length])
  {
    v14 = [(PKPaymentShippingAddressDataItem *)self createIncompleteShippingAddressError];
  }

  else
  {
    v14 = [(PKPaymentShippingAddressDataItem *)self createRequiredShippingAddressError];
  }

  v15 = v14;

LABEL_18:

  return v15;
}

- (BOOL)isClientError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 PKBoolForKey:@"PKPaymentErrorIsFromClient"];

  return v4;
}

- (id)createRequiredShippingAddressError
{
  v3 = [(PKPaymentShippingAddressDataItem *)self requiredShippingAddressErrorDescription];
  v4 = [(PKPaymentShippingAddressDataItem *)self requiredShippingAddressErrorFailureReason];
  v5 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorWithDescription:v3 failureReason:v4];

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
  v3 = [(PKPaymentShippingAddressDataItem *)self incompleteShippingAddressErrorDescription];
  v4 = [(PKPaymentShippingAddressDataItem *)self incompleteShippingAddressErrorFailureReason];
  v5 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorWithDescription:v3 failureReason:v4];

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
  v3 = [(PKPaymentShippingAddressDataItem *)self unavailableShippingAddressErrorDescription];
  v4 = [(PKPaymentShippingAddressDataItem *)self unavailableShippingAddressErrorFailureReason];
  v5 = [(PKPaymentShippingAddressDataItem *)self createShippingAddressErrorWithDescription:v3 failureReason:v4];

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

- (id)createShippingAddressErrorWithDescription:(id)a3 failureReason:(id)a4
{
  v16[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentShippingAddressDataItem *)self hasShippingAddress];
  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A588];
  v15[0] = *MEMORY[0x1E696A578];
  v15[1] = v10;
  v16[0] = v7;
  v16[1] = v6;
  v15[2] = @"PKPaymentErrorIsFieldEmpty";
  v11 = [MEMORY[0x1E696AD98] numberWithInt:!v8];
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v13 = [v9 errorWithDomain:@"PKPassKitErrorDomain" code:-3003 userInfo:v12];

  return v13;
}

@end