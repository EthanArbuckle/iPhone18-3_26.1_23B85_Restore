@interface PKPaymentShippingContactDataItem
- (BOOL)isValidWithError:(id *)a3;
- (NSString)email;
- (NSString)name;
- (NSString)phone;
- (id)errors;
- (id)errorsForContactFields:(id)a3;
- (id)paymentContactFormatErrors;
- (id)requiredContactFields;
@end

@implementation PKPaymentShippingContactDataItem

- (id)errors
{
  v3 = [(PKPaymentShippingContactDataItem *)self requiredContactFields];
  v4 = [v3 arrayByAddingObject:@"contactInfo"];

  v5 = [(PKPaymentShippingContactDataItem *)self errorsForContactFields:v4];

  return v5;
}

- (id)requiredContactFields
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentDataItem *)self model];
  v4 = [v3 paymentRequest];
  v5 = [v4 requiredShippingContactFields];
  v6 = [v5 allObjects];

  v7 = [(PKPaymentDataItem *)self model];
  v8 = [v7 paymentRequest];
  v9 = [v8 isShippingEditable];

  if ([v6 containsObject:@"post"])
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithObject:@"post"];
    if (v9)
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

  v12 = [v6 pk_arrayByRemovingObjectsInArray:v10];

  return v12;
}

- (id)errorsForContactFields:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [(PKPaymentDataItem *)self model];
  v7 = [v6 paymentErrors];
  v8 = [v4 pk_FilteredShippingErrorsForContactFields:v5 errors:v7];

  return v8;
}

- (id)paymentContactFormatErrors
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEC8];
  v9[0] = @"phone";
  v9[1] = @"email";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v5 = [(PKPaymentDataItem *)self model];
  v6 = [v5 paymentContactFormatErrors];
  v7 = [v3 pk_FilteredShippingErrorsForContactFields:v4 errors:v6];

  return v7;
}

- (NSString)email
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 shippingEmail];
  v4 = [v3 emailAddresses];
  v5 = [v4 firstObject];

  v6 = [v5 value];

  return v6;
}

- (NSString)phone
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 shippingPhone];
  v4 = [v3 phoneNumbers];
  v5 = [v4 firstObject];

  v6 = [v5 value];
  v7 = [v6 pkFormattedStringValue];

  return v7;
}

- (NSString)name
{
  v3 = [(PKPaymentDataItem *)self model];
  v4 = [(PKPaymentDataItem *)self model];
  v5 = [v4 paymentRequest];
  v6 = [v5 isShippingEditable];

  v7 = [v3 paymentRequest];
  v8 = [v7 requiredShippingContactFields];
  v9 = [v8 containsObject:@"post"];

  if (v9 && (v6 & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v3 shippingName];
    v12 = [v3 paymentRequest];
    v13 = [v12 requiredShippingContactFields];
    v14 = [v13 containsObject:@"phoneticName"];

    if (v14)
    {
      [v11 pkFullAndPhoneticName];
    }

    else
    {
      [v11 pkFullName];
    }
    v10 = ;
  }

  return v10;
}

- (BOOL)isValidWithError:(id *)a3
{
  v69[3] = *MEMORY[0x1E69E9840];
  v5 = [(PKPaymentDataItem *)self model];
  v6 = [v5 paymentRequest];
  v66 = [v6 requiredShippingContactFields];

  v7 = [(PKPaymentShippingContactDataItem *)self errors];
  v64 = a3;
  if ([v7 count])
  {
    v8 = [(PKPaymentShippingContactDataItem *)self errors];
    v9 = [v8 firstObject];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = [(PKPaymentShippingContactDataItem *)self paymentContactFormatErrors];
  v9 = [v10 firstObject];

LABEL_6:
  v11 = [(PKPaymentDataItem *)self model];
  v12 = [v11 paymentRequest];
  v13 = [v12 requestType];

  v14 = [v9 userInfo];
  v15 = v14;
  v16 = &PKDisbursementErrorContactFieldUserInfoKey;
  if (v13 != 10)
  {
    v16 = &PKPaymentErrorContactFieldUserInfoKey;
  }

  v67 = [v14 objectForKey:*v16];

  v17 = [(PKPaymentDataItem *)self model];
  v18 = [v17 shippingPhone];

  if (v18)
  {
    v19 = [v18 phoneNumbers];
    v20 = [v19 count] != 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(PKPaymentDataItem *)self model];
  v22 = [v21 shippingEmail];

  v65 = v9;
  v62 = v22;
  v63 = v18;
  if (v22)
  {
    v23 = [v22 emailAddresses];
    v60 = [v23 count] != 0;
  }

  else
  {
    v60 = 0;
  }

  v24 = [(PKPaymentDataItem *)self model];
  v25 = [v24 shippingName];

  v26 = [v25 pkFullName];
  v57 = [v26 length];

  v61 = v25;
  v27 = [v25 pkPhoneticName];
  v55 = [v27 length];

  v28 = [(PKPaymentDataItem *)self model];
  v29 = [v28 paymentRequest];
  v58 = [v29 isShippingEditable];

  v30 = [v67 isEqualToString:@"phone"];
  v31 = [v66 containsObject:@"phone"];
  v32 = [v67 isEqualToString:@"email"];
  v59 = [v66 containsObject:@"email"];
  v33 = [v67 isEqualToString:@"name"];
  v56 = [v66 containsObject:@"name"];
  v34 = [v67 isEqualToString:@"phoneticName"];
  v35 = [v66 containsObject:@"phoneticName"];
  v36 = [v66 containsObject:@"post"];
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
    v38 = v64;
    if (!v64)
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

  v37 = v36 & v58;
  if (v33)
  {
    v38 = v64;
    if ((v36 & v58 & 1) == 0)
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

  v38 = v64;
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
    v52 = [(PKPaymentDataItem *)self model];
    v53 = [v52 shippingName];
    v54 = [v53 pkPhoneticName];

    if (v54 && [v54 length])
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
    if (!v64)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_44:
  if (-[PKPaymentDataItem isRejected](self, "isRejected", v55) || ([v67 isEqualToString:@"contactInfo"] & 1) != 0 || (v41 = 0, v48 = 1, v65) && !v67)
  {
    v50 = [(PKPaymentShippingContactDataItem *)self requiredContactFields];
    v51 = [v50 count];

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