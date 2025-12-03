@interface PKPaymentPurchasedProductCredential
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentPurchasedProductCredential:(id)credential;
- (NSString)statusDescription;
- (NSString)summaryMetadataDescription;
- (PKPaymentPurchasedProductCredential)initWithPaymentSetupProduct:(id)product purchase:(id)purchase;
- (id)metadata;
- (unint64_t)hash;
@end

@implementation PKPaymentPurchasedProductCredential

- (PKPaymentPurchasedProductCredential)initWithPaymentSetupProduct:(id)product purchase:(id)purchase
{
  productCopy = product;
  purchaseCopy = purchase;
  v9 = [(PKPaymentCredential *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_product, product);
    configuration = [productCopy configuration];
    productIdentifier = [configuration productIdentifier];
    v13 = [productIdentifier copy];
    productIdentifier = v10->_productIdentifier;
    v10->_productIdentifier = v13;

    objc_storeStrong(&v10->_purchase, purchase);
    displayName = [productCopy displayName];
    v16 = [displayName copy];
    [(PKPaymentCredential *)v10 setLongDescription:v16];
  }

  return v10;
}

- (id)metadata
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  visibleTransactionIdentifier = [(PKServiceProviderPurchase *)self->_purchase visibleTransactionIdentifier];
  if (visibleTransactionIdentifier)
  {
    identifier = visibleTransactionIdentifier;
  }

  else
  {
    identifier = [(PKServiceProviderPurchase *)self->_purchase identifier];
    if (!identifier)
    {
      goto LABEL_5;
    }
  }

  v19[0] = @"valueType";
  v19[1] = @"value";
  v20[0] = @"text";
  v20[1] = identifier;
  v19[2] = @"localizedDisplayName";
  v6 = PKLocalizedPaymentString(&cfstr_SetupPurchaseT.isa, 0);
  v20[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v8 = [PKPaymentCredentialMetadata paymentCredentialMetadataWithConfiguration:v7];
  [v3 addObject:v8];

LABEL_5:
  purchaseDate = [(PKServiceProviderPurchase *)self->_purchase purchaseDate];
  if (purchaseDate)
  {
    v10 = MEMORY[0x1E696AC80];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    v12 = [v10 stringFromDate:purchaseDate timeZone:localTimeZone formatOptions:1907];

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
  purchaseDate = [(PKServiceProviderPurchase *)self->_purchase purchaseDate];
  v4 = purchaseDate;
  if (purchaseDate)
  {
    v5 = PKShortDateString(purchaseDate, 0);
    statusDescription = PKLocalizedPaymentString(&cfstr_SetupPurchaseS.isa, &stru_1F2281668.isa, v5);
  }

  else
  {
    statusDescription = [(PKPaymentPurchasedProductCredential *)self statusDescription];
  }

  return statusDescription;
}

- (NSString)statusDescription
{
  state = [(PKServiceProviderPurchase *)self->_purchase state];
  if (state > 1)
  {
    if (state == 2)
    {
      v3 = @"SETUP_PURCHASE_STATE_METADATA_COMPLETE";
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_13;
      }

      v3 = @"SETUP_PURCHASE_STATE_METADATA_REFUNDED";
    }

    goto LABEL_12;
  }

  if (state)
  {
    if (state != 1)
    {
      goto LABEL_13;
    }

    v3 = @"SETUP_PURCHASE_STATE_METADATA_PENDING";
LABEL_12:
    state = PKLocalizedPaymentString(&v3->isa, 0);
    goto LABEL_13;
  }

  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Invalid purchase state: Unknown", v6, 2u);
  }

  state = &stru_1F227FD28;
LABEL_13:

  return state;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  statusDescription = [(PKPaymentPurchasedProductCredential *)self statusDescription];
  [array safelyAddObject:statusDescription];

  metadata = [(PKPaymentPurchasedProductCredential *)self metadata];
  [array safelyAddObject:metadata];

  [array safelyAddObject:self->_productIdentifier];
  [array safelyAddObject:self->_purchase];
  v9.receiver = self;
  v9.super_class = PKPaymentPurchasedProductCredential;
  v6 = [(PKPaymentCredential *)&v9 hash];
  v7 = PKCombinedHash(v6, array);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentPurchasedProductCredential *)self isEqualToPaymentPurchasedProductCredential:equalCopy];

  return v5;
}

- (BOOL)isEqualToPaymentPurchasedProductCredential:(id)credential
{
  credentialCopy = credential;
  statusDescription = [(PKPaymentPurchasedProductCredential *)self statusDescription];
  statusDescription2 = [credentialCopy statusDescription];
  v7 = statusDescription;
  v8 = statusDescription2;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_7;
  }

  v10 = 0;
  v11 = v8;
  metadata = v7;
  if (!v7 || !v8)
  {
    goto LABEL_23;
  }

  v13 = [v7 isEqualToString:v8];

  if (v13)
  {
LABEL_7:
    metadata = [(PKPaymentPurchasedProductCredential *)self metadata];
    metadata2 = [credentialCopy metadata];
    v11 = metadata2;
    if (metadata && metadata2)
    {
      if (([metadata isEqual:metadata2] & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (metadata != metadata2)
    {
      goto LABEL_22;
    }

    v15 = credentialCopy[15];
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
      v21 = credentialCopy[16];
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