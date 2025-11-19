@interface PKPaymentSetupProductCategory
- (BOOL)needsProducts;
- (PKPaymentSetupProductCategory)initWithDictionary:(id)a3;
- (id)description;
- (id)localizedSubtitleWithIsBridge:(BOOL)a3;
@end

@implementation PKPaymentSetupProductCategory

- (PKPaymentSetupProductCategory)initWithDictionary:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v73.receiver = self;
  v73.super_class = PKPaymentSetupProductCategory;
  v5 = [(PKPaymentSetupProductCategory *)&v73 init];
  if (!v5)
  {
    goto LABEL_48;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v8;

    v10 = [v4 PKStringForKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [v4 PKStringForKey:@"localizedSubtitle"];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v12;

    v14 = [v4 PKStringForKey:@"localizedSearchBarDefaultText"];
    localizedSearchBarDefaultText = v5->_localizedSearchBarDefaultText;
    v5->_localizedSearchBarDefaultText = v14;

    v16 = [PKPaymentSetupProductImageAssetURLs alloc];
    v17 = [v4 PKDictionaryForKey:@"imageAssets"];
    v18 = [(PKPaymentSetupProductImageAssetURLs *)v16 initWithImageAssetsDictionary:v17];
    imageAssetURLs = v5->_imageAssetURLs;
    v5->_imageAssetURLs = v18;

    v20 = objc_alloc_init(PKPaymentSetupProductImageAssets);
    imageAssets = v5->_imageAssets;
    v5->_imageAssets = v20;

    v22 = [v4 PKSetForKey:@"productIdentifiers"];
    productIdentifiers = v5->_productIdentifiers;
    v5->_productIdentifiers = v22;

    v5->_allowOnManagedAccount = [v4 PKBoolForKey:@"allowOnManagedAccount"];
    v24 = [v4 PKStringForKey:@"region"];
    v25 = [v24 componentsSeparatedByString:{@", "}];

    if (v25)
    {
      v26 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v25];
      v27 = [v26 copy];
      regions = v5->_regions;
      v5->_regions = v27;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v29 = [v4 PKArrayForKey:{@"capabilities", v25}];
    v30 = [v29 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v70;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v70 != v32)
          {
            objc_enumerationMutation(v29);
          }

          if ([*(*(&v69 + 1) + 8 * i) isEqualToString:@"nfc"])
          {
            v5->_capabilities |= 1uLL;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v31);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v34 = [v4 PKArrayForKey:@"excludedContexts"];
    v35 = [v34 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v66;
      do
      {
        v38 = 0;
        do
        {
          if (*v66 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v65 + 1) + 8 * v38);
          if (v39 == @"setupAssistant")
          {
            goto LABEL_22;
          }

          v40 = v39;
          if (!v39)
          {
            goto LABEL_24;
          }

          v41 = [(__CFString *)v39 isEqualToString:@"setupAssistant"];

          if (v41)
          {
LABEL_22:
            v42 = 1;
LABEL_23:
            v5->_excludedContexts |= v42;
            goto LABEL_24;
          }

          v43 = v40;
          if (v43 == @"watch" || (v44 = v43, v45 = [(__CFString *)v43 isEqualToString:@"watch"], v44, (v45 & 1) != 0))
          {
            v42 = 2;
            goto LABEL_23;
          }

          v46 = v44;
          if (v46 == @"merchantApp" || (v47 = v46, v48 = [(__CFString *)v46 isEqualToString:@"merchantApp"], v47, v48))
          {
            v42 = 4;
            goto LABEL_23;
          }

LABEL_24:
          ++v38;
        }

        while (v36 != v38);
        v49 = [v34 countByEnumeratingWithState:&v65 objects:v74 count:16];
        v36 = v49;
      }

      while (v49);
    }

    if ([(NSString *)v5->_identifier isEqualToString:@"creditDebit"])
    {
      v50 = v64;
      if (!v5->_localizedTitle)
      {
        v51 = PKLocalizedPaymentString(&cfstr_PaymentSetupCr_0.isa, 0);
        v52 = v5->_localizedTitle;
        v5->_localizedTitle = v51;
      }

      if (v5->_localizedSearchBarDefaultText)
      {
        goto LABEL_47;
      }

      v53 = @"PAYMENT_SETUP_CREDIT_DEBIT_SEARCH_DEFAULT";
      goto LABEL_44;
    }

    v50 = v64;
    if ([(NSString *)v5->_identifier isEqualToString:@"transit"])
    {
      if (!v5->_localizedTitle)
      {
        v55 = PKLocalizedPaymentString(&cfstr_PaymentSetupRi.isa, 0);
        v56 = v5->_localizedTitle;
        v5->_localizedTitle = v55;
      }

      if (v5->_localizedSearchBarDefaultText)
      {
        goto LABEL_47;
      }

      v53 = @"PAYMENT_SETUP_RIDE_TRANSIT_SEARCH_DEFAULT";
LABEL_44:
      v57 = PKLocalizedPaymentString(&v53->isa, 0);
LABEL_45:
      v58 = v5->_localizedSearchBarDefaultText;
      v5->_localizedSearchBarDefaultText = v57;
LABEL_46:

LABEL_47:
LABEL_48:
      v54 = v5;
      goto LABEL_49;
    }

    if ([(NSString *)v5->_identifier isEqualToString:@"identity"])
    {
      if (!v5->_localizedTitle)
      {
        v60 = PKLocalizedIdentityString(&cfstr_PaymentSetupId_0.isa, 0);
        v61 = v5->_localizedTitle;
        v5->_localizedTitle = v60;
      }

      if (v5->_localizedSearchBarDefaultText)
      {
        goto LABEL_47;
      }

      v57 = PKLocalizedIdentityString(&cfstr_PaymentSetupId_1.isa, 0);
      goto LABEL_45;
    }

    if ([(NSString *)v5->_identifier isEqualToString:@"eMoney"])
    {
      if (v5->_localizedTitle)
      {
        goto LABEL_47;
      }

      v62 = @"PAYMENT_SETUP_EMONEY_TITLE";
    }

    else
    {
      if (![(NSString *)v5->_identifier isEqualToString:@"carKey"])
      {
        if (![(NSString *)v5->_identifier isEqualToString:@"issuerInstallments"]|| v5->_localizedTitle)
        {
          goto LABEL_47;
        }

        v63 = PKLocalizedPaymentOffersString(&cfstr_PaymentSetupIs.isa, 0);
        goto LABEL_62;
      }

      if (v5->_localizedTitle)
      {
        goto LABEL_47;
      }

      v62 = @"PAYMENT_SETUP_CARKEY_TITLE";
    }

    v63 = PKLocalizedPaymentString(&v62->isa, 0);
LABEL_62:
    v58 = v5->_localizedTitle;
    v5->_localizedTitle = v63;
    goto LABEL_46;
  }

  v54 = 0;
LABEL_49:

  return v54;
}

- (id)localizedSubtitleWithIsBridge:(BOOL)a3
{
  localizedSubtitle = self->_localizedSubtitle;
  if (localizedSubtitle)
  {
    v4 = localizedSubtitle;
    goto LABEL_6;
  }

  v5 = a3;
  if ([(NSString *)self->_identifier isEqualToString:@"creditDebit"])
  {
    v7 = @"PAYMENT_SETUP_CREDIT_DEBIT_SUBTITLE";
LABEL_5:
    v4 = PKLocalizedPaymentString(&v7->isa, 0);
    goto LABEL_6;
  }

  if ([(NSString *)self->_identifier isEqualToString:@"transit"])
  {
    if (v5)
    {
      v7 = @"PAYMENT_SETUP_TRANSIT_SUBTITLE_WATCH";
    }

    else if (PKIsPairedWithWatch())
    {
      v7 = @"PAYMENT_SETUP_TRANSIT_SUBTITLE_PHONE_WATCH";
    }

    else
    {
      v7 = @"PAYMENT_SETUP_TRANSIT_SUBTITLE_PHONE";
    }

    goto LABEL_5;
  }

  if ([(NSString *)self->_identifier isEqualToString:@"identity"])
  {
    v4 = PKLocalizedIdentityString(&cfstr_PaymentSetupId_2.isa, 0);
  }

  else
  {
    if ([(NSString *)self->_identifier isEqualToString:@"eMoney"])
    {
      v7 = @"PAYMENT_SETUP_EMONEY_SUBTITLE";
      goto LABEL_5;
    }

    if ([(NSString *)self->_identifier isEqualToString:@"carKey"])
    {
      v7 = @"PAYMENT_SETUP_CARKEY_SUBTITLE";
      goto LABEL_5;
    }

    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"localizedDisplayName: '%@'; ", self->_localizedDisplayName];
  [v3 appendFormat:@"productIdentifiers: '%@'; ", self->_productIdentifiers];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)needsProducts
{
  if ([(NSString *)self->_identifier isEqualToString:@"yourCards"]|| [(NSString *)self->_identifier isEqualToString:@"appExtensions"])
  {
    return 0;
  }

  else
  {
    return ![(NSString *)self->_identifier isEqualToString:@"creditDebit"];
  }
}

@end