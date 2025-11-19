@interface NSError(PKError_Private)
- (id)pk_paymentErrorWithLocalizedDescription;
@end

@implementation NSError(PKError_Private)

- (id)pk_paymentErrorWithLocalizedDescription
{
  v2 = [a1 domain];
  if (([v2 isEqualToString:@"PKPaymentErrorDomain"] & 1) == 0)
  {

    goto LABEL_6;
  }

  v3 = [a1 localizedDescription];
  if (!v3)
  {

    goto LABEL_8;
  }

  v4 = v3;
  v5 = [a1 localizedDescription];
  v6 = [v5 length];

  if (v6)
  {
LABEL_6:
    v7 = a1;
    goto LABEL_39;
  }

LABEL_8:
  v8 = [a1 userInfo];
  v9 = [v8 mutableCopy];

  v10 = [a1 code];
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      v14 = @"IN_APP_PAYMENT_COUPON_CODE_INVALID";
      goto LABEL_36;
    }

    if (v10 == 5)
    {
      v14 = @"IN_APP_PAYMENT_COUPON_CODE_EXPIRED";
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if ((v10 - 1) >= 2)
  {
    if (v10 == 3)
    {
      v15 = [v9 objectForKey:@"PKPaymentErrorContactField"];

      if (!v15)
      {
        [v9 setObject:@"post" forKey:@"PKPaymentErrorContactField"];
      }

      v14 = @"IN_APP_PAYMENT_CONTACT_ITEM_ADDRESS_UNSUPPORTED";
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if ([a1 code] == 2)
  {
    v11 = [v9 objectForKey:@"PKPaymentErrorContactField"];

    if (!v11)
    {
      v13 = &PKContactFieldPostalAddress;
      goto LABEL_23;
    }
  }

  v12 = [v9 objectForKey:@"PKPaymentErrorContactField"];

  if (!v12)
  {
    v13 = &PKContactFieldContactInfo;
LABEL_23:
    [v9 setObject:*v13 forKey:@"PKPaymentErrorContactField"];
  }

  v16 = [v9 objectForKey:@"PKPaymentErrorContactField"];
  v17 = [v16 isEqualToString:@"phone"];

  if (v17)
  {
    v14 = @"IN_APP_PAYMENT_CONTACT_ITEM_INCORRECT_PHONE";
    goto LABEL_36;
  }

  v18 = [v9 objectForKey:@"PKPaymentErrorContactField"];
  v19 = [v18 isEqualToString:@"email"];

  if (v19)
  {
    v14 = @"IN_APP_PAYMENT_CONTACT_ITEM_INCORRECT_EMAIL";
    goto LABEL_36;
  }

  v20 = [v9 objectForKey:@"PKPaymentErrorContactField"];
  v21 = [v20 isEqualToString:@"post"];

  if (v21)
  {
    v14 = @"IN_APP_PAYMENT_CONTACT_ITEM_INCORRECT_ADDRESS";
    goto LABEL_36;
  }

  v22 = [v9 objectForKey:@"PKPaymentErrorContactField"];
  v23 = [v22 isEqualToString:@"name"];

  if (v23)
  {
    v14 = @"IN_APP_PAYMENT_CONTACT_ITEM_INCORRECT_NAME";
    goto LABEL_36;
  }

  v24 = [v9 objectForKey:@"PKPaymentErrorContactField"];
  v25 = [v24 isEqualToString:@"phoneticName"];

  if (v25)
  {
    v14 = @"IN_APP_PAYMENT_CONTACT_ITEM_INCORRECT_PHONETIC_NAME";
    goto LABEL_36;
  }

  v26 = [v9 objectForKey:@"PKPaymentErrorContactField"];
  v27 = [v26 isEqualToString:@"contactInfo"];

  if (v27)
  {
    v14 = @"IN_APP_PAYMENT_CONTACT_ITEM_INCORRECT_CONTACT";
LABEL_36:
    v28 = PKLocalizedPaymentString(&v14->isa, 0);
    if (v28)
    {
      v29 = v28;
      [v9 setObject:v28 forKey:*MEMORY[0x1E696A578]];
    }
  }

LABEL_38:
  v30 = MEMORY[0x1E696ABC0];
  v31 = [a1 domain];
  v7 = [v30 errorWithDomain:v31 code:objc_msgSend(a1 userInfo:{"code"), v9}];

LABEL_39:

  return v7;
}

@end