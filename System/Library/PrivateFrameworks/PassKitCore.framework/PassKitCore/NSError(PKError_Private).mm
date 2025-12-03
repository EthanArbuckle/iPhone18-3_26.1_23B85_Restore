@interface NSError(PKError_Private)
- (id)pk_paymentErrorWithLocalizedDescription;
@end

@implementation NSError(PKError_Private)

- (id)pk_paymentErrorWithLocalizedDescription
{
  domain = [self domain];
  if (([domain isEqualToString:@"PKPaymentErrorDomain"] & 1) == 0)
  {

    goto LABEL_6;
  }

  localizedDescription = [self localizedDescription];
  if (!localizedDescription)
  {

    goto LABEL_8;
  }

  v4 = localizedDescription;
  localizedDescription2 = [self localizedDescription];
  v6 = [localizedDescription2 length];

  if (v6)
  {
LABEL_6:
    selfCopy = self;
    goto LABEL_39;
  }

LABEL_8:
  userInfo = [self userInfo];
  v9 = [userInfo mutableCopy];

  code = [self code];
  if (code > 3)
  {
    if (code == 4)
    {
      v14 = @"IN_APP_PAYMENT_COUPON_CODE_INVALID";
      goto LABEL_36;
    }

    if (code == 5)
    {
      v14 = @"IN_APP_PAYMENT_COUPON_CODE_EXPIRED";
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if ((code - 1) >= 2)
  {
    if (code == 3)
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

  if ([self code] == 2)
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
  domain2 = [self domain];
  selfCopy = [v30 errorWithDomain:domain2 code:objc_msgSend(self userInfo:{"code"), v9}];

LABEL_39:

  return selfCopy;
}

@end