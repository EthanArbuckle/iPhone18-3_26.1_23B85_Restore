@interface PKPaymentShippingContactDataItem
- (BOOL)isValidWithError:(id *)error;
- (NSString)email;
- (NSString)name;
- (NSString)phone;
- (id)errors;
- (id)errorsForContactFields:(id)fields;
- (id)paymentContactFormatErrors;
- (id)requiredContactFields;
@end

@implementation PKPaymentShippingContactDataItem

- (id)errors
{
  requiredContactFields = [(PKPaymentShippingContactDataItem *)self requiredContactFields];
  v4 = [requiredContactFields arrayByAddingObject:@"contactInfo"];

  v5 = [(PKPaymentShippingContactDataItem *)self errorsForContactFields:v4];

  return v5;
}

- (id)requiredContactFields
{
  v14[2] = *MEMORY[0x1E69E9840];
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];
  requiredShippingContactFields = [paymentRequest requiredShippingContactFields];
  allObjects = [requiredShippingContactFields allObjects];

  model2 = [(PKPaymentDataItem *)self model];
  paymentRequest2 = [model2 paymentRequest];
  isShippingEditable = [paymentRequest2 isShippingEditable];

  if ([allObjects containsObject:@"post"])
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithObject:@"post"];
    if (isShippingEditable)
    {
      v14[0] = @"name";
      v14[1] = @"phoneticName";
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
      [v10 addObjectsFromArray:v11];
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [allObjects pk_arrayByRemovingObjectsInArray:v10];

  return v12;
}

- (id)errorsForContactFields:(id)fields
{
  v4 = MEMORY[0x1E695DEC8];
  fieldsCopy = fields;
  model = [(PKPaymentDataItem *)self model];
  paymentErrors = [model paymentErrors];
  v8 = [v4 pk_FilteredShippingErrorsForContactFields:fieldsCopy errors:paymentErrors];

  return v8;
}

- (id)paymentContactFormatErrors
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEC8];
  v9[0] = @"phone";
  v9[1] = @"email";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  model = [(PKPaymentDataItem *)self model];
  paymentContactFormatErrors = [model paymentContactFormatErrors];
  v7 = [v3 pk_FilteredShippingErrorsForContactFields:v4 errors:paymentContactFormatErrors];

  return v7;
}

- (NSString)email
{
  model = [(PKPaymentDataItem *)self model];
  shippingEmail = [model shippingEmail];
  emailAddresses = [shippingEmail emailAddresses];
  firstObject = [emailAddresses firstObject];

  value = [firstObject value];

  return value;
}

- (NSString)phone
{
  model = [(PKPaymentDataItem *)self model];
  shippingPhone = [model shippingPhone];
  phoneNumbers = [shippingPhone phoneNumbers];
  firstObject = [phoneNumbers firstObject];

  value = [firstObject value];
  pkFormattedStringValue = [value pkFormattedStringValue];

  return pkFormattedStringValue;
}

- (NSString)name
{
  model = [(PKPaymentDataItem *)self model];
  model2 = [(PKPaymentDataItem *)self model];
  paymentRequest = [model2 paymentRequest];
  isShippingEditable = [paymentRequest isShippingEditable];

  paymentRequest2 = [model paymentRequest];
  requiredShippingContactFields = [paymentRequest2 requiredShippingContactFields];
  v9 = [requiredShippingContactFields containsObject:@"post"];

  if (v9 && (isShippingEditable & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    shippingName = [model shippingName];
    paymentRequest3 = [model paymentRequest];
    requiredShippingContactFields2 = [paymentRequest3 requiredShippingContactFields];
    v14 = [requiredShippingContactFields2 containsObject:@"phoneticName"];

    if (v14)
    {
      [shippingName pkFullAndPhoneticName];
    }

    else
    {
      [shippingName pkFullName];
    }
    v10 = ;
  }

  return v10;
}

- (BOOL)isValidWithError:(id *)error
{
  v69[3] = *MEMORY[0x1E69E9840];
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];
  requiredShippingContactFields = [paymentRequest requiredShippingContactFields];

  errors = [(PKPaymentShippingContactDataItem *)self errors];
  errorCopy = error;
  if ([errors count])
  {
    errors2 = [(PKPaymentShippingContactDataItem *)self errors];
    firstObject = [errors2 firstObject];

    if (firstObject)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  paymentContactFormatErrors = [(PKPaymentShippingContactDataItem *)self paymentContactFormatErrors];
  firstObject = [paymentContactFormatErrors firstObject];

LABEL_6:
  model2 = [(PKPaymentDataItem *)self model];
  paymentRequest2 = [model2 paymentRequest];
  requestType = [paymentRequest2 requestType];

  userInfo = [firstObject userInfo];
  v15 = userInfo;
  v16 = &PKDisbursementErrorContactFieldUserInfoKey;
  if (requestType != 10)
  {
    v16 = &PKPaymentErrorContactFieldUserInfoKey;
  }

  v67 = [userInfo objectForKey:*v16];

  model3 = [(PKPaymentDataItem *)self model];
  shippingPhone = [model3 shippingPhone];

  if (shippingPhone)
  {
    phoneNumbers = [shippingPhone phoneNumbers];
    v20 = [phoneNumbers count] != 0;
  }

  else
  {
    v20 = 0;
  }

  model4 = [(PKPaymentDataItem *)self model];
  shippingEmail = [model4 shippingEmail];

  v65 = firstObject;
  v62 = shippingEmail;
  v63 = shippingPhone;
  if (shippingEmail)
  {
    emailAddresses = [shippingEmail emailAddresses];
    v60 = [emailAddresses count] != 0;
  }

  else
  {
    v60 = 0;
  }

  model5 = [(PKPaymentDataItem *)self model];
  shippingName = [model5 shippingName];

  pkFullName = [shippingName pkFullName];
  v57 = [pkFullName length];

  v61 = shippingName;
  pkPhoneticName = [shippingName pkPhoneticName];
  v55 = [pkPhoneticName length];

  model6 = [(PKPaymentDataItem *)self model];
  paymentRequest3 = [model6 paymentRequest];
  isShippingEditable = [paymentRequest3 isShippingEditable];

  v30 = [v67 isEqualToString:@"phone"];
  v31 = [requiredShippingContactFields containsObject:@"phone"];
  v32 = [v67 isEqualToString:@"email"];
  v59 = [requiredShippingContactFields containsObject:@"email"];
  v33 = [v67 isEqualToString:@"name"];
  v56 = [requiredShippingContactFields containsObject:@"name"];
  v34 = [v67 isEqualToString:@"phoneticName"];
  v35 = [requiredShippingContactFields containsObject:@"phoneticName"];
  v36 = [requiredShippingContactFields containsObject:@"post"];
  if (v30 || ((v31 ^ 1 | v20) & 1) == 0)
  {
    v39 = !v20;
    if (v20)
    {
      v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_INCOMPLETE_REASON";
    }

    else
    {
      v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_REQUIRED_REASON";
    }

    if (v20)
    {
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_PHONE_INCOMPLETE";
    }

    else
    {
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_PHONE_REQUIRED";
    }

    v40 = -3004;
LABEL_36:
    v38 = errorCopy;
    if (!errorCopy)
    {
LABEL_38:
      v48 = 0;
      goto LABEL_39;
    }

LABEL_37:
    v43 = MEMORY[0x1E696ABC0];
    v68[0] = *MEMORY[0x1E696A578];
    v44 = PKLocalizedPaymentString(&v41->isa, 0, v55);
    v69[0] = v44;
    v68[1] = *MEMORY[0x1E696A588];
    v45 = PKLocalizedPaymentString(&v42->isa, 0);
    v69[1] = v45;
    v68[2] = @"PKPaymentErrorIsFieldEmpty";
    v46 = [MEMORY[0x1E696AD98] numberWithBool:v39];
    v69[2] = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:3];
    *v38 = [v43 errorWithDomain:@"PKPassKitErrorDomain" code:v40 userInfo:v47];

    goto LABEL_38;
  }

  if ((v32 & 1) != 0 || ((v59 ^ 1 | v60) & 1) == 0)
  {
    v39 = !v60;
    if (v60)
    {
      v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_INCOMPLETE_REASON";
    }

    else
    {
      v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_REQUIRED_REASON";
    }

    if (v60)
    {
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_EMAIL_INCOMPLETE";
    }

    else
    {
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_EMAIL_REQUIRED";
    }

    v40 = -3005;
    goto LABEL_36;
  }

  v37 = v36 & isShippingEditable;
  if (v33)
  {
    v38 = errorCopy;
    if ((v36 & isShippingEditable & 1) == 0)
    {
      if (v57)
      {
LABEL_21:
        v39 = 0;
        v40 = -3006;
        v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_NAME_INCOMPLETE";
        goto LABEL_60;
      }

LABEL_51:
      v40 = -3006;
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_NAME_REQUIRED";
      v39 = 1;
      v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_REQUIRED_REASON";
      if (!v38)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    goto LABEL_44;
  }

  v38 = errorCopy;
  if (!((v57 != 0 || (v56 & 1) == 0) | v37 & 1))
  {
    goto LABEL_51;
  }

  if ((v34 & 1) == 0)
  {
    v37 |= (v55 != 0) | ~v35;
  }

  if ((v37 & 1) == 0)
  {
    model7 = [(PKPaymentDataItem *)self model];
    shippingName2 = [model7 shippingName];
    pkPhoneticName2 = [shippingName2 pkPhoneticName];

    if (pkPhoneticName2 && [pkPhoneticName2 length])
    {
      v39 = 0;
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_PHONETIC_NAME_INCOMPLETE";
      v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_INCOMPLETE_REASON";
    }

    else
    {
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_PHONETIC_NAME_REQUIRED";
      v39 = 1;
      v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_REQUIRED_REASON";
    }

    v40 = -3007;
    if (!errorCopy)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_44:
  if (-[PKPaymentDataItem isRejected](self, "isRejected", v55) || ([v67 isEqualToString:@"contactInfo"] & 1) != 0 || (v41 = 0, v48 = 1, v65) && !v67)
  {
    requiredContactFields = [(PKPaymentShippingContactDataItem *)self requiredContactFields];
    v51 = [requiredContactFields count];

    if (v51 != 1)
    {
      v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_INCOMPLETE_REASON";
      v41 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_0.isa, 0);
      v39 = 0;
      v40 = -3010;
      if (!v38)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v31)
    {
      v39 = 0;
      v40 = -3004;
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_PHONE_INCOMPLETE";
    }

    else if (v59)
    {
      v39 = 0;
      v40 = -3005;
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_EMAIL_INCOMPLETE";
    }

    else
    {
      if (v56)
      {
        goto LABEL_21;
      }

      if ((v35 & 1) == 0)
      {
        v41 = 0;
        v48 = 1;
        goto LABEL_39;
      }

      v39 = 0;
      v40 = -3007;
      v41 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_PHONETIC_NAME_INCOMPLETE";
    }

LABEL_60:
    v42 = @"IN_APP_PAYMENT_SHIPPING_CONTACT_INCOMPLETE_REASON";
    if (!v38)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_39:

  return v48;
}

@end