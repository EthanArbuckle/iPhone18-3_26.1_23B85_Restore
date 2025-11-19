@interface PKPaymentPurchasedProductCredential
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPaymentPurchasedProductCredential:(id)a3;
- (NSString)statusDescription;
- (NSString)summaryMetadataDescription;
- (PKPaymentPurchasedProductCredential)initWithPaymentSetupProduct:(id)a3 purchase:(id)a4;
- (id)metadata;
- (unint64_t)hash;
@end

@implementation PKPaymentPurchasedProductCredential

- (PKPaymentPurchasedProductCredential)initWithPaymentSetupProduct:(id)a3 purchase:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PKPaymentCredential *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_product, a3);
    v11 = [v7 configuration];
    v12 = [v11 productIdentifier];
    v13 = [v12 copy];
    productIdentifier = v10->_productIdentifier;
    v10->_productIdentifier = v13;

    objc_storeStrong(&v10->_purchase, a4);
    v15 = [v7 displayName];
    v16 = [v15 copy];
    [(PKPaymentCredential *)v10 setLongDescription:v16];
  }

  return v10;
}

- (id)metadata
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKServiceProviderPurchase *)self->_purchase visibleTransactionIdentifier];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(PKServiceProviderPurchase *)self->_purchase identifier];
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v19[0] = @"valueType";
  v19[1] = @"value";
  v20[0] = @"text";
  v20[1] = v5;
  v19[2] = @"localizedDisplayName";
  v6 = PKLocalizedPaymentString(&cfstr_SetupPurchaseT.isa, 0);
  v20[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v8 = [PKPaymentCredentialMetadata paymentCredentialMetadataWithConfiguration:v7];
  [v3 addObject:v8];

LABEL_5:
  v9 = [(PKServiceProviderPurchase *)self->_purchase purchaseDate];
  if (v9)
  {
    v10 = MEMORY[0x1E696AC80];
    v11 = [MEMORY[0x1E695DFE8] localTimeZone];
    v12 = [v10 stringFromDate:v9 timeZone:v11 formatOptions:1907];

    v17[0] = @"valueType";
    v17[1] = @"value";
    v18[0] = @"date";
    v18[1] = v12;
    v18[2] = @"EdMMMyyyy";
    v17[2] = @"displayFormat";
    v17[3] = @"localizedDisplayName";
    v13 = PKLocalizedPaymentString(&cfstr_SetupPurchaseD.isa, 0);
    v18[3] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

    v15 = [PKPaymentCredentialMetadata paymentCredentialMetadataWithConfiguration:v14];
    [v3 addObject:v15];
  }

  return v3;
}

- (NSString)summaryMetadataDescription
{
  v3 = [(PKServiceProviderPurchase *)self->_purchase purchaseDate];
  v4 = v3;
  if (v3)
  {
    v5 = PKShortDateString(v3, 0);
    v6 = PKLocalizedPaymentString(&cfstr_SetupPurchaseS.isa, &stru_1F2281668.isa, v5);
  }

  else
  {
    v6 = [(PKPaymentPurchasedProductCredential *)self statusDescription];
  }

  return v6;
}

- (NSString)statusDescription
{
  v2 = [(PKServiceProviderPurchase *)self->_purchase state];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = @"SETUP_PURCHASE_STATE_METADATA_COMPLETE";
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_13;
      }

      v3 = @"SETUP_PURCHASE_STATE_METADATA_REFUNDED";
    }

    goto LABEL_12;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_13;
    }

    v3 = @"SETUP_PURCHASE_STATE_METADATA_PENDING";
LABEL_12:
    v2 = PKLocalizedPaymentString(&v3->isa, 0);
    goto LABEL_13;
  }

  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Invalid purchase state: Unknown", v6, 2u);
  }

  v2 = &stru_1F227FD28;
LABEL_13:

  return v2;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PKPaymentPurchasedProductCredential *)self statusDescription];
  [v3 safelyAddObject:v4];

  v5 = [(PKPaymentPurchasedProductCredential *)self metadata];
  [v3 safelyAddObject:v5];

  [v3 safelyAddObject:self->_productIdentifier];
  [v3 safelyAddObject:self->_purchase];
  v9.receiver = self;
  v9.super_class = PKPaymentPurchasedProductCredential;
  v6 = [(PKPaymentCredential *)&v9 hash];
  v7 = PKCombinedHash(v6, v3);

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentPurchasedProductCredential *)self isEqualToPaymentPurchasedProductCredential:v4];

  return v5;
}

- (BOOL)isEqualToPaymentPurchasedProductCredential:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPurchasedProductCredential *)self statusDescription];
  v6 = [v4 statusDescription];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  v10 = 0;
  v11 = v8;
  v12 = v7;
  if (!v7 || !v8)
  {
    goto LABEL_23;
  }

  v13 = [v7 isEqualToString:v8];

  if (v13)
  {
LABEL_7:
    v12 = [(PKPaymentPurchasedProductCredential *)self metadata];
    v14 = [v4 metadata];
    v11 = v14;
    if (v12 && v14)
    {
      if (([v12 isEqual:v14] & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v12 != v14)
    {
      goto LABEL_22;
    }

    v15 = v4[15];
    v16 = self->_productIdentifier;
    v17 = v15;
    v18 = v17;
    if (v16 == v17)
    {

      goto LABEL_18;
    }

    if (v16 && v17)
    {
      v19 = [(NSString *)v16 isEqualToString:v17];

      if (!v19)
      {
        goto LABEL_22;
      }

LABEL_18:
      purchase = self->_purchase;
      v21 = v4[16];
      if (purchase && v21)
      {
        v10 = [(PKServiceProviderPurchase *)purchase isEqual:?];
      }

      else
      {
        v10 = purchase == v21;
      }

      goto LABEL_23;
    }

LABEL_22:
    v10 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

@end