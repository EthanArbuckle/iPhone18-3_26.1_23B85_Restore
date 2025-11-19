@interface PKProtobufPaymentRequest
- (BOOL)isEqual:(id)a3;
- (id)confirmationStyleAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)requestTypeAsString:(int)a3;
- (id)requestorAsString:(int)a3;
- (id)requestorDeviceTypeAsString:(int)a3;
- (int)StringAsConfirmationStyle:(id)a3;
- (int)StringAsRequestType:(id)a3;
- (int)StringAsRequestor:(id)a3;
- (int)StringAsRequestorDeviceType:(id)a3;
- (int)confirmationStyle;
- (int)requestType;
- (int)requestor;
- (int)requestorDeviceType;
- (unint64_t)hash;
- (void)addContentItems:(id)a3;
- (void)addMultiTokenContexts:(id)a3;
- (void)addRequiredBillingContactFields:(id)a3;
- (void)addRequiredShippingContactFields:(id)a3;
- (void)addShippingMethods:(id)a3;
- (void)addSummaryItems:(id)a3;
- (void)addSupportedCountries:(id)a3;
- (void)addSupportedNetworks:(id)a3;
- (void)addThumbnailURLs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConfirmationStyle:(BOOL)a3;
- (void)setHasExpectsMerchantSession:(BOOL)a3;
- (void)setHasMerchantCapabilities:(BOOL)a3;
- (void)setHasMerchantCategoryCode:(BOOL)a3;
- (void)setHasRequestType:(BOOL)a3;
- (void)setHasRequestor:(BOOL)a3;
- (void)setHasRequestorDeviceType:(BOOL)a3;
- (void)setHasRequiredBillingAddressFields:(BOOL)a3;
- (void)setHasRequiredShippingAddressFields:(BOOL)a3;
- (void)setHasRespectSupportedNetworksOrder:(BOOL)a3;
- (void)setHasSummaryPinned:(BOOL)a3;
- (void)setHasSuppressLandscape:(BOOL)a3;
- (void)setHasSuppressTotal:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentRequest

- (void)addSupportedNetworks:(id)a3
{
  v4 = a3;
  supportedNetworks = self->_supportedNetworks;
  v8 = v4;
  if (!supportedNetworks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedNetworks;
    self->_supportedNetworks = v6;

    v4 = v8;
    supportedNetworks = self->_supportedNetworks;
  }

  [(NSMutableArray *)supportedNetworks addObject:v4];
}

- (void)setHasMerchantCapabilities:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRequiredBillingAddressFields:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRequiredShippingAddressFields:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)addSummaryItems:(id)a3
{
  v4 = a3;
  summaryItems = self->_summaryItems;
  v8 = v4;
  if (!summaryItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_summaryItems;
    self->_summaryItems = v6;

    v4 = v8;
    summaryItems = self->_summaryItems;
  }

  [(NSMutableArray *)summaryItems addObject:v4];
}

- (void)addShippingMethods:(id)a3
{
  v4 = a3;
  shippingMethods = self->_shippingMethods;
  v8 = v4;
  if (!shippingMethods)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_shippingMethods;
    self->_shippingMethods = v6;

    v4 = v8;
    shippingMethods = self->_shippingMethods;
  }

  [(NSMutableArray *)shippingMethods addObject:v4];
}

- (void)addThumbnailURLs:(id)a3
{
  v4 = a3;
  thumbnailURLs = self->_thumbnailURLs;
  v8 = v4;
  if (!thumbnailURLs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_thumbnailURLs;
    self->_thumbnailURLs = v6;

    v4 = v8;
    thumbnailURLs = self->_thumbnailURLs;
  }

  [(NSMutableArray *)thumbnailURLs addObject:v4];
}

- (void)setHasExpectsMerchantSession:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)addRequiredShippingContactFields:(id)a3
{
  v4 = a3;
  requiredShippingContactFields = self->_requiredShippingContactFields;
  v8 = v4;
  if (!requiredShippingContactFields)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_requiredShippingContactFields;
    self->_requiredShippingContactFields = v6;

    v4 = v8;
    requiredShippingContactFields = self->_requiredShippingContactFields;
  }

  [(NSMutableArray *)requiredShippingContactFields addObject:v4];
}

- (void)addRequiredBillingContactFields:(id)a3
{
  v4 = a3;
  requiredBillingContactFields = self->_requiredBillingContactFields;
  v8 = v4;
  if (!requiredBillingContactFields)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_requiredBillingContactFields;
    self->_requiredBillingContactFields = v6;

    v4 = v8;
    requiredBillingContactFields = self->_requiredBillingContactFields;
  }

  [(NSMutableArray *)requiredBillingContactFields addObject:v4];
}

- (void)addSupportedCountries:(id)a3
{
  v4 = a3;
  supportedCountries = self->_supportedCountries;
  v8 = v4;
  if (!supportedCountries)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedCountries;
    self->_supportedCountries = v6;

    v4 = v8;
    supportedCountries = self->_supportedCountries;
  }

  [(NSMutableArray *)supportedCountries addObject:v4];
}

- (void)addContentItems:(id)a3
{
  v4 = a3;
  contentItems = self->_contentItems;
  v8 = v4;
  if (!contentItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contentItems;
    self->_contentItems = v6;

    v4 = v8;
    contentItems = self->_contentItems;
  }

  [(NSMutableArray *)contentItems addObject:v4];
}

- (void)setHasSuppressTotal:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasSummaryPinned:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)requestor
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_requestor;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRequestor:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)requestorAsString:(int)a3
{
  if (a3 >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79E1188[a3];
  }

  return v4;
}

- (int)StringAsRequestor:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DEFAULT"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ITUNES"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"APP_STORE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"APPLE_MUSIC"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"APPLE_NEWS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"APPLE_BOOKS"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)confirmationStyle
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_confirmationStyle;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConfirmationStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)confirmationStyleAsString:(int)a3
{
  if (a3 >= 9)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79E11B8[a3];
  }

  return v4;
}

- (int)StringAsConfirmationStyle:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PAY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONFIRM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GET"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"INSTALL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RENT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"REDEEM"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ADD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SUBSCRIBE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SUBSCRIBE_AND_INSTALL"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)requestType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_requestType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRequestType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)requestTypeAsString:(int)a3
{
  if (a3 >= 0x10)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79E1200[a3];
  }

  return v4;
}

- (int)StringAsRequestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"APPLE_PAY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CARD_ON_FILE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ACCOUNT_SERVICE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AMP_ENROLLMENT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PHYSICAL_CARD_ACTION"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"INSTALLMENT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ACCESSIBILITY_ENROLLMENT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"EXTERNAL_CONTEXT_AUTHORIZATION"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SERVICE_PROVIDER"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PEER_PAYMENT"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"DISBURSEMENT"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PAY_LATER"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"VIRTUAL_CARD_ENROLLMENT"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"IDENTITY_IN_APP"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"VIRTUAL_CARD_REFRESH"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"ALTERNATIVE_APP_DISTRIBUTION"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addMultiTokenContexts:(id)a3
{
  v4 = a3;
  multiTokenContexts = self->_multiTokenContexts;
  v8 = v4;
  if (!multiTokenContexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_multiTokenContexts;
    self->_multiTokenContexts = v6;

    v4 = v8;
    multiTokenContexts = self->_multiTokenContexts;
  }

  [(NSMutableArray *)multiTokenContexts addObject:v4];
}

- (void)setHasRespectSupportedNetworksOrder:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)requestorDeviceType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_requestorDeviceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRequestorDeviceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)requestorDeviceTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"TV";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"DEFAULT";
  }

  return v4;
}

- (int)StringAsRequestorDeviceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DEFAULT"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TV"];
  }

  return v4;
}

- (void)setHasMerchantCategoryCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSuppressLandscape:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentRequest;
  v4 = [(PKProtobufPaymentRequest *)&v8 description];
  v5 = [(PKProtobufPaymentRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v101 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier)
  {
    [v3 setObject:merchantIdentifier forKey:@"merchantIdentifier"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v4 setObject:countryCode forKey:@"countryCode"];
  }

  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    [v4 setObject:currencyCode forKey:@"currencyCode"];
  }

  supportedNetworks = self->_supportedNetworks;
  if (supportedNetworks)
  {
    [v4 setObject:supportedNetworks forKey:@"supportedNetworks"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_merchantCapabilities];
    [v4 setObject:v47 forKey:@"merchantCapabilities"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_11:
      if ((has & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requiredBillingAddressFields];
  [v4 setObject:v48 forKey:@"requiredBillingAddressFields"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requiredShippingAddressFields];
    [v4 setObject:v10 forKey:@"requiredShippingAddressFields"];
  }

LABEL_13:
  billingContact = self->_billingContact;
  if (billingContact)
  {
    [v4 setObject:billingContact forKey:@"billingContact"];
  }

  shippingContact = self->_shippingContact;
  if (shippingContact)
  {
    [v4 setObject:shippingContact forKey:@"shippingContact"];
  }

  if ([(NSMutableArray *)self->_summaryItems count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_summaryItems, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v14 = self->_summaryItems;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v93 objects:v100 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v94;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v94 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v93 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v93 objects:v100 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"summaryItems"];
  }

  if ([(NSMutableArray *)self->_shippingMethods count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_shippingMethods, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v21 = self->_shippingMethods;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v89 objects:v99 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v90;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v90 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v89 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v89 objects:v99 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"shippingMethods"];
  }

  applicationData = self->_applicationData;
  if (applicationData)
  {
    [v4 setObject:applicationData forKey:@"applicationData"];
  }

  originatingURL = self->_originatingURL;
  if (originatingURL)
  {
    [v4 setObject:originatingURL forKey:@"originatingURL"];
  }

  merchantSession = self->_merchantSession;
  if (merchantSession)
  {
    v30 = [(PKProtobufPaymentMerchantSession *)merchantSession dictionaryRepresentation];
    [v4 setObject:v30 forKey:@"merchantSession"];
  }

  thumbnailURLs = self->_thumbnailURLs;
  if (thumbnailURLs)
  {
    [v4 setObject:thumbnailURLs forKey:@"thumbnailURLs"];
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_expectsMerchantSession];
    [v4 setObject:v32 forKey:@"expectsMerchantSession"];
  }

  requiredShippingContactFields = self->_requiredShippingContactFields;
  if (requiredShippingContactFields)
  {
    [v4 setObject:requiredShippingContactFields forKey:@"requiredShippingContactFields"];
  }

  requiredBillingContactFields = self->_requiredBillingContactFields;
  if (requiredBillingContactFields)
  {
    [v4 setObject:requiredBillingContactFields forKey:@"requiredBillingContactFields"];
  }

  supportedCountries = self->_supportedCountries;
  if (supportedCountries)
  {
    [v4 setObject:supportedCountries forKey:@"supportedCountries"];
  }

  if (*&self->_has)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_apiType];
    [v4 setObject:v36 forKey:@"apiType"];
  }

  if ([(NSMutableArray *)self->_contentItems count])
  {
    v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contentItems, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v38 = self->_contentItems;
    v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v85 objects:v98 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v86;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v86 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [*(*(&v85 + 1) + 8 * k) dictionaryRepresentation];
          [v37 addObject:v43];
        }

        v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v85 objects:v98 count:16];
      }

      while (v40);
    }

    [v4 setObject:v37 forKey:@"contentItems"];
  }

  localizedNavigationTitle = self->_localizedNavigationTitle;
  if (localizedNavigationTitle)
  {
    [v4 setObject:localizedNavigationTitle forKey:@"localizedNavigationTitle"];
  }

  localizedSummaryItemsTitle = self->_localizedSummaryItemsTitle;
  if (localizedSummaryItemsTitle)
  {
    [v4 setObject:localizedSummaryItemsTitle forKey:@"localizedSummaryItemsTitle"];
  }

  v46 = self->_has;
  if ((v46 & 0x2000) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:self->_suppressTotal];
    [v4 setObject:v49 forKey:@"suppressTotal"];

    v46 = self->_has;
    if ((v46 & 0x800) == 0)
    {
LABEL_68:
      if ((v46 & 0x20) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_77;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_68;
  }

  v50 = [MEMORY[0x1E696AD98] numberWithBool:self->_summaryPinned];
  [v4 setObject:v50 forKey:@"summaryPinned"];

  v46 = self->_has;
  if ((v46 & 0x20) == 0)
  {
LABEL_69:
    if ((v46 & 2) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_81;
  }

LABEL_77:
  requestor = self->_requestor;
  if (requestor >= 6)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requestor];
  }

  else
  {
    v52 = off_1E79E1188[requestor];
  }

  [v4 setObject:v52 forKey:@"requestor"];

  v46 = self->_has;
  if ((v46 & 2) == 0)
  {
LABEL_70:
    if ((v46 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_85;
  }

LABEL_81:
  confirmationStyle = self->_confirmationStyle;
  if (confirmationStyle >= 9)
  {
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_confirmationStyle];
  }

  else
  {
    v54 = off_1E79E11B8[confirmationStyle];
  }

  [v4 setObject:v54 forKey:@"confirmationStyle"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_85:
    requestType = self->_requestType;
    if (requestType >= 0x10)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requestType];
    }

    else
    {
      v56 = off_1E79E1200[requestType];
    }

    [v4 setObject:v56 forKey:@"requestType"];
  }

LABEL_89:
  availableShippingMethods = self->_availableShippingMethods;
  if (availableShippingMethods)
  {
    v58 = [(PKProtobufShippingMethods *)availableShippingMethods dictionaryRepresentation];
    [v4 setObject:v58 forKey:@"availableShippingMethods"];
  }

  recurringPaymentRequest = self->_recurringPaymentRequest;
  if (recurringPaymentRequest)
  {
    v60 = [(PKProtobufRecurringPaymentRequest *)recurringPaymentRequest dictionaryRepresentation];
    [v4 setObject:v60 forKey:@"recurringPaymentRequest"];
  }

  if ([(NSMutableArray *)self->_multiTokenContexts count])
  {
    v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_multiTokenContexts, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v62 = self->_multiTokenContexts;
    v63 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v81 objects:v97 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v82;
      do
      {
        for (m = 0; m != v64; ++m)
        {
          if (*v82 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = [*(*(&v81 + 1) + 8 * m) dictionaryRepresentation];
          [v61 addObject:v67];
        }

        v64 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v81 objects:v97 count:16];
      }

      while (v64);
    }

    [v4 setObject:v61 forKey:@"multiTokenContexts"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithBool:self->_respectSupportedNetworksOrder];
    [v4 setObject:v68 forKey:@"respectSupportedNetworksOrder"];
  }

  automaticReloadPaymentRequest = self->_automaticReloadPaymentRequest;
  if (automaticReloadPaymentRequest)
  {
    v70 = [(PKProtobufAutomaticReloadPaymentRequest *)automaticReloadPaymentRequest dictionaryRepresentation];
    [v4 setObject:v70 forKey:@"automaticReloadPaymentRequest"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    requestorDeviceType = self->_requestorDeviceType;
    if (requestorDeviceType)
    {
      if (requestorDeviceType == 1)
      {
        v72 = @"TV";
      }

      else
      {
        v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requestorDeviceType];
      }
    }

    else
    {
      v72 = @"DEFAULT";
    }

    [v4 setObject:v72 forKey:@"requestorDeviceType"];
  }

  deferredPaymentRequest = self->_deferredPaymentRequest;
  if (deferredPaymentRequest)
  {
    v74 = [(PKProtobufDeferredPaymentRequest *)deferredPaymentRequest dictionaryRepresentation];
    [v4 setObject:v74 forKey:@"deferredPaymentRequest"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v4 setObject:userAgent forKey:@"userAgent"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v76 = [MEMORY[0x1E696AD98] numberWithInt:self->_merchantCategoryCode];
    [v4 setObject:v76 forKey:@"merchantCategoryCode"];
  }

  attributionIdentifier = self->_attributionIdentifier;
  if (attributionIdentifier)
  {
    [v4 setObject:attributionIdentifier forKey:@"attributionIdentifier"];
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:self->_suppressLandscape];
    [v4 setObject:v78 forKey:@"suppressLandscape"];
  }

  v79 = v4;

  return v4;
}

- (void)writeTo:(id)a3
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_merchantIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currencyCode)
  {
    PBDataWriterWriteStringField();
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v5 = self->_supportedNetworks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v85;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v84 objects:v96 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_16:
      if ((has & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_17:
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  if (self->_billingContact)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_shippingContact)
  {
    PBDataWriterWriteDataField();
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v11 = self->_summaryItems;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v80 objects:v95 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v81;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v81 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v80 objects:v95 count:16];
    }

    while (v13);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v16 = self->_shippingMethods;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v77;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v77 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v18);
  }

  if (self->_applicationData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_originatingURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_merchantSession)
  {
    PBDataWriterWriteSubmessage();
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v21 = self->_thumbnailURLs;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v72 objects:v93 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v73;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v73 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteStringField();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v72 objects:v93 count:16];
    }

    while (v23);
  }

  if ((*&self->_has & 0x200) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v26 = self->_requiredShippingContactFields;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v68 objects:v92 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v69;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v69 != v29)
        {
          objc_enumerationMutation(v26);
        }

        PBDataWriterWriteStringField();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v68 objects:v92 count:16];
    }

    while (v28);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v31 = self->_requiredBillingContactFields;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v64 objects:v91 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v65;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v65 != v34)
        {
          objc_enumerationMutation(v31);
        }

        PBDataWriterWriteStringField();
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v64 objects:v91 count:16];
    }

    while (v33);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v36 = self->_supportedCountries;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v60 objects:v90 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v61;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v61 != v39)
        {
          objc_enumerationMutation(v36);
        }

        PBDataWriterWriteStringField();
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v60 objects:v90 count:16];
    }

    while (v38);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v41 = self->_contentItems;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v56 objects:v89 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v57;
    do
    {
      for (kk = 0; kk != v43; ++kk)
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(v41);
        }

        PBDataWriterWriteSubmessage();
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v56 objects:v89 count:16];
    }

    while (v43);
  }

  if (self->_localizedNavigationTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedSummaryItemsTitle)
  {
    PBDataWriterWriteStringField();
  }

  v46 = self->_has;
  if ((v46 & 0x2000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v46 = self->_has;
    if ((v46 & 0x800) == 0)
    {
LABEL_87:
      if ((v46 & 0x20) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_124;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_87;
  }

  PBDataWriterWriteBOOLField();
  v46 = self->_has;
  if ((v46 & 0x20) == 0)
  {
LABEL_88:
    if ((v46 & 2) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_125;
  }

LABEL_124:
  PBDataWriterWriteInt32Field();
  v46 = self->_has;
  if ((v46 & 2) == 0)
  {
LABEL_89:
    if ((v46 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_125:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_90:
    PBDataWriterWriteInt32Field();
  }

LABEL_91:
  if (self->_availableShippingMethods)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_recurringPaymentRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v47 = self->_multiTokenContexts;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v52 objects:v88 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v53;
    do
    {
      for (mm = 0; mm != v49; ++mm)
      {
        if (*v53 != v50)
        {
          objc_enumerationMutation(v47);
        }

        PBDataWriterWriteSubmessage();
      }

      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v52 objects:v88 count:16];
    }

    while (v49);
  }

  if ((*&self->_has & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_automaticReloadPaymentRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_deferredPaymentRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteSint32Field();
  }

  if (self->_attributionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v44 = a3;
  if (self->_merchantIdentifier)
  {
    [v44 setMerchantIdentifier:?];
  }

  if (self->_countryCode)
  {
    [v44 setCountryCode:?];
  }

  if (self->_currencyCode)
  {
    [v44 setCurrencyCode:?];
  }

  if ([(PKProtobufPaymentRequest *)self supportedNetworksCount])
  {
    [v44 clearSupportedNetworks];
    v4 = [(PKProtobufPaymentRequest *)self supportedNetworksCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PKProtobufPaymentRequest *)self supportedNetworksAtIndex:i];
        [v44 addSupportedNetworks:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v44 + 28) = self->_merchantCapabilities;
    *(v44 + 132) |= 4u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_13:
      if ((has & 0x100) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_13;
  }

  *(v44 + 43) = self->_requiredBillingAddressFields;
  *(v44 + 132) |= 0x80u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_14:
    *(v44 + 46) = self->_requiredShippingAddressFields;
    *(v44 + 132) |= 0x100u;
  }

LABEL_15:
  if (self->_billingContact)
  {
    [v44 setBillingContact:?];
  }

  if (self->_shippingContact)
  {
    [v44 setShippingContact:?];
  }

  if ([(PKProtobufPaymentRequest *)self summaryItemsCount])
  {
    [v44 clearSummaryItems];
    v9 = [(PKProtobufPaymentRequest *)self summaryItemsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(PKProtobufPaymentRequest *)self summaryItemsAtIndex:j];
        [v44 addSummaryItems:v12];
      }
    }
  }

  if ([(PKProtobufPaymentRequest *)self shippingMethodsCount])
  {
    [v44 clearShippingMethods];
    v13 = [(PKProtobufPaymentRequest *)self shippingMethodsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(PKProtobufPaymentRequest *)self shippingMethodsAtIndex:k];
        [v44 addShippingMethods:v16];
      }
    }
  }

  if (self->_applicationData)
  {
    [v44 setApplicationData:?];
  }

  if (self->_originatingURL)
  {
    [v44 setOriginatingURL:?];
  }

  if (self->_merchantSession)
  {
    [v44 setMerchantSession:?];
  }

  if ([(PKProtobufPaymentRequest *)self thumbnailURLsCount])
  {
    [v44 clearThumbnailURLs];
    v17 = [(PKProtobufPaymentRequest *)self thumbnailURLsCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(PKProtobufPaymentRequest *)self thumbnailURLsAtIndex:m];
        [v44 addThumbnailURLs:v20];
      }
    }
  }

  if ((*&self->_has & 0x200) != 0)
  {
    *(v44 + 256) = self->_expectsMerchantSession;
    *(v44 + 132) |= 0x200u;
  }

  if ([(PKProtobufPaymentRequest *)self requiredShippingContactFieldsCount])
  {
    [v44 clearRequiredShippingContactFields];
    v21 = [(PKProtobufPaymentRequest *)self requiredShippingContactFieldsCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(PKProtobufPaymentRequest *)self requiredShippingContactFieldsAtIndex:n];
        [v44 addRequiredShippingContactFields:v24];
      }
    }
  }

  if ([(PKProtobufPaymentRequest *)self requiredBillingContactFieldsCount])
  {
    [v44 clearRequiredBillingContactFields];
    v25 = [(PKProtobufPaymentRequest *)self requiredBillingContactFieldsCount];
    if (v25)
    {
      v26 = v25;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(PKProtobufPaymentRequest *)self requiredBillingContactFieldsAtIndex:ii];
        [v44 addRequiredBillingContactFields:v28];
      }
    }
  }

  if ([(PKProtobufPaymentRequest *)self supportedCountriesCount])
  {
    [v44 clearSupportedCountries];
    v29 = [(PKProtobufPaymentRequest *)self supportedCountriesCount];
    if (v29)
    {
      v30 = v29;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(PKProtobufPaymentRequest *)self supportedCountriesAtIndex:jj];
        [v44 addSupportedCountries:v32];
      }
    }
  }

  if (*&self->_has)
  {
    *(v44 + 2) = self->_apiType;
    *(v44 + 132) |= 1u;
  }

  if ([(PKProtobufPaymentRequest *)self contentItemsCount])
  {
    [v44 clearContentItems];
    v33 = [(PKProtobufPaymentRequest *)self contentItemsCount];
    if (v33)
    {
      v34 = v33;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(PKProtobufPaymentRequest *)self contentItemsAtIndex:kk];
        [v44 addContentItems:v36];
      }
    }
  }

  if (self->_localizedNavigationTitle)
  {
    [v44 setLocalizedNavigationTitle:?];
  }

  v37 = v44;
  if (self->_localizedSummaryItemsTitle)
  {
    [v44 setLocalizedSummaryItemsTitle:?];
    v37 = v44;
  }

  v38 = self->_has;
  if ((v38 & 0x2000) != 0)
  {
    v37[260] = self->_suppressTotal;
    *(v37 + 132) |= 0x2000u;
    v38 = self->_has;
    if ((v38 & 0x800) == 0)
    {
LABEL_63:
      if ((v38 & 0x20) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_99;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_63;
  }

  v37[258] = self->_summaryPinned;
  *(v37 + 132) |= 0x800u;
  v38 = self->_has;
  if ((v38 & 0x20) == 0)
  {
LABEL_64:
    if ((v38 & 2) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v37 + 41) = self->_requestor;
  *(v37 + 132) |= 0x20u;
  v38 = self->_has;
  if ((v38 & 2) == 0)
  {
LABEL_65:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_100:
  *(v37 + 14) = self->_confirmationStyle;
  *(v37 + 132) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_66:
    *(v37 + 40) = self->_requestType;
    *(v37 + 132) |= 0x10u;
  }

LABEL_67:
  if (self->_availableShippingMethods)
  {
    [v44 setAvailableShippingMethods:?];
  }

  if (self->_recurringPaymentRequest)
  {
    [v44 setRecurringPaymentRequest:?];
  }

  if ([(PKProtobufPaymentRequest *)self multiTokenContextsCount])
  {
    [v44 clearMultiTokenContexts];
    v39 = [(PKProtobufPaymentRequest *)self multiTokenContextsCount];
    if (v39)
    {
      v40 = v39;
      for (mm = 0; mm != v40; ++mm)
      {
        v42 = [(PKProtobufPaymentRequest *)self multiTokenContextsAtIndex:mm];
        [v44 addMultiTokenContexts:v42];
      }
    }
  }

  v43 = v44;
  if ((*&self->_has & 0x400) != 0)
  {
    *(v44 + 257) = self->_respectSupportedNetworksOrder;
    *(v44 + 132) |= 0x400u;
  }

  if (self->_automaticReloadPaymentRequest)
  {
    [v44 setAutomaticReloadPaymentRequest:?];
    v43 = v44;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v43[42] = self->_requestorDeviceType;
    *(v43 + 132) |= 0x40u;
  }

  if (self->_deferredPaymentRequest)
  {
    [v44 setDeferredPaymentRequest:?];
    v43 = v44;
  }

  if (self->_userAgent)
  {
    [v44 setUserAgent:?];
    v43 = v44;
  }

  if ((*&self->_has & 8) != 0)
  {
    v43[29] = self->_merchantCategoryCode;
    *(v43 + 132) |= 8u;
  }

  if (self->_attributionIdentifier)
  {
    [v44 setAttributionIdentifier:?];
    v43 = v44;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    *(v43 + 259) = self->_suppressLandscape;
    *(v43 + 132) |= 0x1000u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v140 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_merchantIdentifier copyWithZone:a3];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(NSString *)self->_countryCode copyWithZone:a3];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_currencyCode copyWithZone:a3];
  v11 = *(v5 + 80);
  *(v5 + 80) = v10;

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v12 = self->_supportedNetworks;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v127 objects:v139 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v128;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v128 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v127 + 1) + 8 * i) copyWithZone:a3];
        [v5 addSupportedNetworks:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v127 objects:v139 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 112) = self->_merchantCapabilities;
    *(v5 + 264) |= 4u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_10:
      if ((has & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 172) = self->_requiredBillingAddressFields;
  *(v5 + 264) |= 0x80u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_11:
    *(v5 + 184) = self->_requiredShippingAddressFields;
    *(v5 + 264) |= 0x100u;
  }

LABEL_12:
  v19 = [(NSData *)self->_billingContact copyWithZone:a3];
  v20 = *(v5 + 48);
  *(v5 + 48) = v19;

  v21 = [(NSData *)self->_shippingContact copyWithZone:a3];
  v22 = *(v5 + 200);
  *(v5 + 200) = v21;

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v23 = self->_summaryItems;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v123 objects:v138 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v124;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v124 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v123 + 1) + 8 * j) copyWithZone:a3];
        [v5 addSummaryItems:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v123 objects:v138 count:16];
    }

    while (v25);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v29 = self->_shippingMethods;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v119 objects:v137 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v120;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v120 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v119 + 1) + 8 * k) copyWithZone:a3];
        [v5 addShippingMethods:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v119 objects:v137 count:16];
    }

    while (v31);
  }

  v35 = [(NSData *)self->_applicationData copyWithZone:a3];
  v36 = *(v5 + 16);
  *(v5 + 16) = v35;

  v37 = [(NSString *)self->_originatingURL copyWithZone:a3];
  v38 = *(v5 + 144);
  *(v5 + 144) = v37;

  v39 = [(PKProtobufPaymentMerchantSession *)self->_merchantSession copyWithZone:a3];
  v40 = *(v5 + 128);
  *(v5 + 128) = v39;

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v41 = self->_thumbnailURLs;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v115 objects:v136 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v116;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v116 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [*(*(&v115 + 1) + 8 * m) copyWithZone:a3];
        [v5 addThumbnailURLs:v46];
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v115 objects:v136 count:16];
    }

    while (v43);
  }

  if ((*&self->_has & 0x200) != 0)
  {
    *(v5 + 256) = self->_expectsMerchantSession;
    *(v5 + 264) |= 0x200u;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v47 = self->_requiredShippingContactFields;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v111 objects:v135 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v112;
    do
    {
      for (n = 0; n != v49; ++n)
      {
        if (*v112 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = [*(*(&v111 + 1) + 8 * n) copyWithZone:a3];
        [v5 addRequiredShippingContactFields:v52];
      }

      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v111 objects:v135 count:16];
    }

    while (v49);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v53 = self->_requiredBillingContactFields;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v107 objects:v134 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v108;
    do
    {
      for (ii = 0; ii != v55; ++ii)
      {
        if (*v108 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [*(*(&v107 + 1) + 8 * ii) copyWithZone:a3];
        [v5 addRequiredBillingContactFields:v58];
      }

      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v107 objects:v134 count:16];
    }

    while (v55);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v59 = self->_supportedCountries;
  v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v103 objects:v133 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v104;
    do
    {
      for (jj = 0; jj != v61; ++jj)
      {
        if (*v104 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = [*(*(&v103 + 1) + 8 * jj) copyWithZone:a3];
        [v5 addSupportedCountries:v64];
      }

      v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v103 objects:v133 count:16];
    }

    while (v61);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_apiType;
    *(v5 + 264) |= 1u;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v65 = self->_contentItems;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v99 objects:v132 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v100;
    do
    {
      for (kk = 0; kk != v67; ++kk)
      {
        if (*v100 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = [*(*(&v99 + 1) + 8 * kk) copyWithZone:a3];
        [v5 addContentItems:v70];
      }

      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v99 objects:v132 count:16];
    }

    while (v67);
  }

  v71 = [(NSString *)self->_localizedNavigationTitle copyWithZone:a3];
  v72 = *(v5 + 96);
  *(v5 + 96) = v71;

  v73 = [(NSString *)self->_localizedSummaryItemsTitle copyWithZone:a3];
  v74 = *(v5 + 104);
  *(v5 + 104) = v73;

  v75 = self->_has;
  if ((v75 & 0x2000) != 0)
  {
    *(v5 + 260) = self->_suppressTotal;
    *(v5 + 264) |= 0x2000u;
    v75 = self->_has;
    if ((v75 & 0x800) == 0)
    {
LABEL_67:
      if ((v75 & 0x20) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_92;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_67;
  }

  *(v5 + 258) = self->_summaryPinned;
  *(v5 + 264) |= 0x800u;
  v75 = self->_has;
  if ((v75 & 0x20) == 0)
  {
LABEL_68:
    if ((v75 & 2) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v5 + 164) = self->_requestor;
  *(v5 + 264) |= 0x20u;
  v75 = self->_has;
  if ((v75 & 2) == 0)
  {
LABEL_69:
    if ((v75 & 0x10) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_93:
  *(v5 + 56) = self->_confirmationStyle;
  *(v5 + 264) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_70:
    *(v5 + 160) = self->_requestType;
    *(v5 + 264) |= 0x10u;
  }

LABEL_71:
  v76 = [(PKProtobufShippingMethods *)self->_availableShippingMethods copyWithZone:a3];
  v77 = *(v5 + 40);
  *(v5 + 40) = v76;

  v78 = [(PKProtobufRecurringPaymentRequest *)self->_recurringPaymentRequest copyWithZone:a3];
  v79 = *(v5 + 152);
  *(v5 + 152) = v78;

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v80 = self->_multiTokenContexts;
  v81 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v95 objects:v131 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v96;
    do
    {
      for (mm = 0; mm != v82; ++mm)
      {
        if (*v96 != v83)
        {
          objc_enumerationMutation(v80);
        }

        v85 = [*(*(&v95 + 1) + 8 * mm) copyWithZone:{a3, v95}];
        [v5 addMultiTokenContexts:v85];
      }

      v82 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v95 objects:v131 count:16];
    }

    while (v82);
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(v5 + 257) = self->_respectSupportedNetworksOrder;
    *(v5 + 264) |= 0x400u;
  }

  v86 = [(PKProtobufAutomaticReloadPaymentRequest *)self->_automaticReloadPaymentRequest copyWithZone:a3, v95];
  v87 = *(v5 + 32);
  *(v5 + 32) = v86;

  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 168) = self->_requestorDeviceType;
    *(v5 + 264) |= 0x40u;
  }

  v88 = [(PKProtobufDeferredPaymentRequest *)self->_deferredPaymentRequest copyWithZone:a3];
  v89 = *(v5 + 88);
  *(v5 + 88) = v88;

  v90 = [(NSString *)self->_userAgent copyWithZone:a3];
  v91 = *(v5 + 248);
  *(v5 + 248) = v90;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 116) = self->_merchantCategoryCode;
    *(v5 + 264) |= 8u;
  }

  v92 = [(NSString *)self->_attributionIdentifier copyWithZone:a3];
  v93 = *(v5 + 24);
  *(v5 + 24) = v92;

  if ((*&self->_has & 0x1000) != 0)
  {
    *(v5 + 259) = self->_suppressLandscape;
    *(v5 + 264) |= 0x1000u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier | *(v4 + 15))
  {
    if (![(NSString *)merchantIdentifier isEqual:?])
    {
      goto LABEL_53;
    }
  }

  countryCode = self->_countryCode;
  if (countryCode | *(v4 + 9))
  {
    if (![(NSString *)countryCode isEqual:?])
    {
      goto LABEL_53;
    }
  }

  currencyCode = self->_currencyCode;
  if (currencyCode | *(v4 + 10))
  {
    if (![(NSString *)currencyCode isEqual:?])
    {
      goto LABEL_53;
    }
  }

  supportedNetworks = self->_supportedNetworks;
  if (supportedNetworks | *(v4 + 29))
  {
    if (![(NSMutableArray *)supportedNetworks isEqual:?])
    {
      goto LABEL_53;
    }
  }

  has = self->_has;
  v10 = *(v4 + 132);
  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_merchantCapabilities != *(v4 + 28))
    {
      goto LABEL_53;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_requiredBillingAddressFields != *(v4 + 43))
    {
      goto LABEL_53;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 132) & 0x100) == 0 || self->_requiredShippingAddressFields != *(v4 + 46))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 132) & 0x100) != 0)
  {
    goto LABEL_53;
  }

  billingContact = self->_billingContact;
  if (billingContact | *(v4 + 6) && ![(NSData *)billingContact isEqual:?])
  {
    goto LABEL_53;
  }

  shippingContact = self->_shippingContact;
  if (shippingContact | *(v4 + 25))
  {
    if (![(NSData *)shippingContact isEqual:?])
    {
      goto LABEL_53;
    }
  }

  summaryItems = self->_summaryItems;
  if (summaryItems | *(v4 + 27))
  {
    if (![(NSMutableArray *)summaryItems isEqual:?])
    {
      goto LABEL_53;
    }
  }

  shippingMethods = self->_shippingMethods;
  if (shippingMethods | *(v4 + 26))
  {
    if (![(NSMutableArray *)shippingMethods isEqual:?])
    {
      goto LABEL_53;
    }
  }

  applicationData = self->_applicationData;
  if (applicationData | *(v4 + 2))
  {
    if (![(NSData *)applicationData isEqual:?])
    {
      goto LABEL_53;
    }
  }

  originatingURL = self->_originatingURL;
  if (originatingURL | *(v4 + 18))
  {
    if (![(NSString *)originatingURL isEqual:?])
    {
      goto LABEL_53;
    }
  }

  merchantSession = self->_merchantSession;
  if (merchantSession | *(v4 + 16))
  {
    if (![(PKProtobufPaymentMerchantSession *)merchantSession isEqual:?])
    {
      goto LABEL_53;
    }
  }

  thumbnailURLs = self->_thumbnailURLs;
  if (thumbnailURLs | *(v4 + 30))
  {
    if (![(NSMutableArray *)thumbnailURLs isEqual:?])
    {
      goto LABEL_53;
    }
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 132) & 0x200) == 0)
    {
      goto LABEL_53;
    }

    if (self->_expectsMerchantSession)
    {
      if ((*(v4 + 256) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 256))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 132) & 0x200) != 0)
  {
    goto LABEL_53;
  }

  requiredShippingContactFields = self->_requiredShippingContactFields;
  if (requiredShippingContactFields | *(v4 + 24) && ![(NSMutableArray *)requiredShippingContactFields isEqual:?])
  {
    goto LABEL_53;
  }

  requiredBillingContactFields = self->_requiredBillingContactFields;
  if (requiredBillingContactFields | *(v4 + 22))
  {
    if (![(NSMutableArray *)requiredBillingContactFields isEqual:?])
    {
      goto LABEL_53;
    }
  }

  supportedCountries = self->_supportedCountries;
  if (supportedCountries | *(v4 + 28))
  {
    if (![(NSMutableArray *)supportedCountries isEqual:?])
    {
      goto LABEL_53;
    }
  }

  v22 = *(v4 + 132);
  if (*&self->_has)
  {
    if ((v22 & 1) == 0 || self->_apiType != *(v4 + 2))
    {
      goto LABEL_53;
    }
  }

  else if (v22)
  {
    goto LABEL_53;
  }

  contentItems = self->_contentItems;
  if (contentItems | *(v4 + 8) && ![(NSMutableArray *)contentItems isEqual:?])
  {
    goto LABEL_53;
  }

  localizedNavigationTitle = self->_localizedNavigationTitle;
  if (localizedNavigationTitle | *(v4 + 12))
  {
    if (![(NSString *)localizedNavigationTitle isEqual:?])
    {
      goto LABEL_53;
    }
  }

  localizedSummaryItemsTitle = self->_localizedSummaryItemsTitle;
  if (localizedSummaryItemsTitle | *(v4 + 13))
  {
    if (![(NSString *)localizedSummaryItemsTitle isEqual:?])
    {
      goto LABEL_53;
    }
  }

  v28 = self->_has;
  v29 = *(v4 + 132);
  if ((v28 & 0x2000) != 0)
  {
    if ((*(v4 + 132) & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    if (self->_suppressTotal)
    {
      if ((*(v4 + 260) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 260))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 132) & 0x2000) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 132) & 0x800) == 0)
    {
      goto LABEL_53;
    }

    if (self->_summaryPinned)
    {
      if ((*(v4 + 258) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 258))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 132) & 0x800) != 0)
  {
    goto LABEL_53;
  }

  if ((v28 & 0x20) != 0)
  {
    if ((v29 & 0x20) == 0 || self->_requestor != *(v4 + 41))
    {
      goto LABEL_53;
    }
  }

  else if ((v29 & 0x20) != 0)
  {
    goto LABEL_53;
  }

  if ((v28 & 2) != 0)
  {
    if ((v29 & 2) == 0 || self->_confirmationStyle != *(v4 + 14))
    {
      goto LABEL_53;
    }
  }

  else if ((v29 & 2) != 0)
  {
    goto LABEL_53;
  }

  if ((v28 & 0x10) != 0)
  {
    if ((v29 & 0x10) == 0 || self->_requestType != *(v4 + 40))
    {
      goto LABEL_53;
    }
  }

  else if ((v29 & 0x10) != 0)
  {
    goto LABEL_53;
  }

  availableShippingMethods = self->_availableShippingMethods;
  if (availableShippingMethods | *(v4 + 5) && ![(PKProtobufShippingMethods *)availableShippingMethods isEqual:?])
  {
    goto LABEL_53;
  }

  recurringPaymentRequest = self->_recurringPaymentRequest;
  if (recurringPaymentRequest | *(v4 + 19))
  {
    if (![(PKProtobufRecurringPaymentRequest *)recurringPaymentRequest isEqual:?])
    {
      goto LABEL_53;
    }
  }

  multiTokenContexts = self->_multiTokenContexts;
  if (multiTokenContexts | *(v4 + 17))
  {
    if (![(NSMutableArray *)multiTokenContexts isEqual:?])
    {
      goto LABEL_53;
    }
  }

  v33 = self->_has;
  v34 = *(v4 + 132);
  if ((v33 & 0x400) != 0)
  {
    if ((*(v4 + 132) & 0x400) == 0)
    {
      goto LABEL_53;
    }

    if (self->_respectSupportedNetworksOrder)
    {
      if ((*(v4 + 257) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 257))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 132) & 0x400) != 0)
  {
    goto LABEL_53;
  }

  automaticReloadPaymentRequest = self->_automaticReloadPaymentRequest;
  if (automaticReloadPaymentRequest | *(v4 + 4))
  {
    if (![(PKProtobufAutomaticReloadPaymentRequest *)automaticReloadPaymentRequest isEqual:?])
    {
      goto LABEL_53;
    }

    v33 = self->_has;
    v34 = *(v4 + 132);
  }

  if ((v33 & 0x40) != 0)
  {
    if ((v34 & 0x40) == 0 || self->_requestorDeviceType != *(v4 + 42))
    {
      goto LABEL_53;
    }
  }

  else if ((v34 & 0x40) != 0)
  {
    goto LABEL_53;
  }

  deferredPaymentRequest = self->_deferredPaymentRequest;
  if (deferredPaymentRequest | *(v4 + 11) && ![(PKProtobufDeferredPaymentRequest *)deferredPaymentRequest isEqual:?])
  {
    goto LABEL_53;
  }

  userAgent = self->_userAgent;
  if (userAgent | *(v4 + 31))
  {
    if (![(NSString *)userAgent isEqual:?])
    {
      goto LABEL_53;
    }
  }

  v38 = self->_has;
  v39 = *(v4 + 132);
  if ((v38 & 8) != 0)
  {
    if ((v39 & 8) == 0 || self->_merchantCategoryCode != *(v4 + 29))
    {
      goto LABEL_53;
    }
  }

  else if ((v39 & 8) != 0)
  {
    goto LABEL_53;
  }

  attributionIdentifier = self->_attributionIdentifier;
  if (attributionIdentifier | *(v4 + 3))
  {
    if (![(NSString *)attributionIdentifier isEqual:?])
    {
      goto LABEL_53;
    }

    v38 = self->_has;
    v39 = *(v4 + 132);
  }

  if ((v38 & 0x1000) == 0)
  {
    v23 = (v39 & 0x1000) == 0;
    goto LABEL_54;
  }

  if ((v39 & 0x1000) != 0)
  {
    if (self->_suppressLandscape)
    {
      if (*(v4 + 259))
      {
        goto LABEL_140;
      }
    }

    else if (!*(v4 + 259))
    {
LABEL_140:
      v23 = 1;
      goto LABEL_54;
    }
  }

LABEL_53:
  v23 = 0;
LABEL_54:

  return v23;
}

- (unint64_t)hash
{
  v44 = [(NSString *)self->_merchantIdentifier hash];
  v43 = [(NSString *)self->_countryCode hash];
  v42 = [(NSString *)self->_currencyCode hash];
  v41 = [(NSMutableArray *)self->_supportedNetworks hash];
  has = self->_has;
  if ((has & 4) == 0)
  {
    v40 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v39 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v40 = 2654435761 * self->_merchantCapabilities;
  if ((has & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v39 = 2654435761 * self->_requiredBillingAddressFields;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v38 = 2654435761 * self->_requiredShippingAddressFields;
    goto LABEL_8;
  }

LABEL_7:
  v38 = 0;
LABEL_8:
  v37 = [(NSData *)self->_billingContact hash];
  v36 = [(NSData *)self->_shippingContact hash];
  v35 = [(NSMutableArray *)self->_summaryItems hash];
  v34 = [(NSMutableArray *)self->_shippingMethods hash];
  v33 = [(NSData *)self->_applicationData hash];
  v32 = [(NSString *)self->_originatingURL hash];
  v31 = [(PKProtobufPaymentMerchantSession *)self->_merchantSession hash];
  v30 = [(NSMutableArray *)self->_thumbnailURLs hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v29 = 2654435761 * self->_expectsMerchantSession;
  }

  else
  {
    v29 = 0;
  }

  v28 = [(NSMutableArray *)self->_requiredShippingContactFields hash];
  v27 = [(NSMutableArray *)self->_requiredBillingContactFields hash];
  v26 = [(NSMutableArray *)self->_supportedCountries hash];
  if (*&self->_has)
  {
    v25 = 2654435761 * self->_apiType;
  }

  else
  {
    v25 = 0;
  }

  v24 = [(NSMutableArray *)self->_contentItems hash];
  v23 = [(NSString *)self->_localizedNavigationTitle hash];
  v22 = [(NSString *)self->_localizedSummaryItemsTitle hash];
  v4 = self->_has;
  if ((v4 & 0x2000) != 0)
  {
    v21 = 2654435761 * self->_suppressTotal;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_16:
      v20 = 2654435761 * self->_summaryPinned;
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v21 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_16;
    }
  }

  v20 = 0;
  if ((v4 & 0x20) != 0)
  {
LABEL_17:
    v19 = 2654435761 * self->_requestor;
    if ((v4 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    v18 = 0;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_22:
  v19 = 0;
  if ((v4 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  v18 = 2654435761 * self->_confirmationStyle;
  if ((v4 & 0x10) != 0)
  {
LABEL_19:
    v17 = 2654435761 * self->_requestType;
    goto LABEL_25;
  }

LABEL_24:
  v17 = 0;
LABEL_25:
  v16 = [(PKProtobufShippingMethods *)self->_availableShippingMethods hash];
  v15 = [(PKProtobufRecurringPaymentRequest *)self->_recurringPaymentRequest hash];
  v5 = [(NSMutableArray *)self->_multiTokenContexts hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v6 = 2654435761 * self->_respectSupportedNetworksOrder;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PKProtobufAutomaticReloadPaymentRequest *)self->_automaticReloadPaymentRequest hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v8 = 2654435761 * self->_requestorDeviceType;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PKProtobufDeferredPaymentRequest *)self->_deferredPaymentRequest hash];
  v10 = [(NSString *)self->_userAgent hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_merchantCategoryCode;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSString *)self->_attributionIdentifier hash];
  if ((*&self->_has & 0x1000) != 0)
  {
    v13 = 2654435761 * self->_suppressLandscape;
  }

  else
  {
    v13 = 0;
  }

  return v43 ^ v44 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 15))
  {
    [(PKProtobufPaymentRequest *)self setMerchantIdentifier:?];
  }

  if (*(v4 + 9))
  {
    [(PKProtobufPaymentRequest *)self setCountryCode:?];
  }

  if (*(v4 + 10))
  {
    [(PKProtobufPaymentRequest *)self setCurrencyCode:?];
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v5 = *(v4 + 29);
  v6 = [v5 countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v95;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v95 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKProtobufPaymentRequest *)self addSupportedNetworks:*(*(&v94 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 132);
  if ((v10 & 4) != 0)
  {
    self->_merchantCapabilities = *(v4 + 28);
    *&self->_has |= 4u;
    v10 = *(v4 + 132);
    if ((v10 & 0x80) == 0)
    {
LABEL_16:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  self->_requiredBillingAddressFields = *(v4 + 43);
  *&self->_has |= 0x80u;
  if ((*(v4 + 132) & 0x100) != 0)
  {
LABEL_17:
    self->_requiredShippingAddressFields = *(v4 + 46);
    *&self->_has |= 0x100u;
  }

LABEL_18:
  if (*(v4 + 6))
  {
    [(PKProtobufPaymentRequest *)self setBillingContact:?];
  }

  if (*(v4 + 25))
  {
    [(PKProtobufPaymentRequest *)self setShippingContact:?];
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v11 = *(v4 + 27);
  v12 = [v11 countByEnumeratingWithState:&v90 objects:v105 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v91;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v91 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PKProtobufPaymentRequest *)self addSummaryItems:*(*(&v90 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v90 objects:v105 count:16];
    }

    while (v13);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v16 = *(v4 + 26);
  v17 = [v16 countByEnumeratingWithState:&v86 objects:v104 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v87;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v87 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(PKProtobufPaymentRequest *)self addShippingMethods:*(*(&v86 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v86 objects:v104 count:16];
    }

    while (v18);
  }

  if (*(v4 + 2))
  {
    [(PKProtobufPaymentRequest *)self setApplicationData:?];
  }

  if (*(v4 + 18))
  {
    [(PKProtobufPaymentRequest *)self setOriginatingURL:?];
  }

  merchantSession = self->_merchantSession;
  v22 = *(v4 + 16);
  if (merchantSession)
  {
    if (v22)
    {
      [(PKProtobufPaymentMerchantSession *)merchantSession mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(PKProtobufPaymentRequest *)self setMerchantSession:?];
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v23 = *(v4 + 30);
  v24 = [v23 countByEnumeratingWithState:&v82 objects:v103 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v83;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v83 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(PKProtobufPaymentRequest *)self addThumbnailURLs:*(*(&v82 + 1) + 8 * m)];
      }

      v25 = [v23 countByEnumeratingWithState:&v82 objects:v103 count:16];
    }

    while (v25);
  }

  if ((*(v4 + 132) & 0x200) != 0)
  {
    self->_expectsMerchantSession = *(v4 + 256);
    *&self->_has |= 0x200u;
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v28 = *(v4 + 24);
  v29 = [v28 countByEnumeratingWithState:&v78 objects:v102 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v79;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v79 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(PKProtobufPaymentRequest *)self addRequiredShippingContactFields:*(*(&v78 + 1) + 8 * n)];
      }

      v30 = [v28 countByEnumeratingWithState:&v78 objects:v102 count:16];
    }

    while (v30);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v33 = *(v4 + 22);
  v34 = [v33 countByEnumeratingWithState:&v74 objects:v101 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v75;
    do
    {
      for (ii = 0; ii != v35; ++ii)
      {
        if (*v75 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [(PKProtobufPaymentRequest *)self addRequiredBillingContactFields:*(*(&v74 + 1) + 8 * ii)];
      }

      v35 = [v33 countByEnumeratingWithState:&v74 objects:v101 count:16];
    }

    while (v35);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v38 = *(v4 + 28);
  v39 = [v38 countByEnumeratingWithState:&v70 objects:v100 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v71;
    do
    {
      for (jj = 0; jj != v40; ++jj)
      {
        if (*v71 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [(PKProtobufPaymentRequest *)self addSupportedCountries:*(*(&v70 + 1) + 8 * jj)];
      }

      v40 = [v38 countByEnumeratingWithState:&v70 objects:v100 count:16];
    }

    while (v40);
  }

  if (*(v4 + 132))
  {
    self->_apiType = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v43 = *(v4 + 8);
  v44 = [v43 countByEnumeratingWithState:&v66 objects:v99 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v67;
    do
    {
      for (kk = 0; kk != v45; ++kk)
      {
        if (*v67 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [(PKProtobufPaymentRequest *)self addContentItems:*(*(&v66 + 1) + 8 * kk)];
      }

      v45 = [v43 countByEnumeratingWithState:&v66 objects:v99 count:16];
    }

    while (v45);
  }

  if (*(v4 + 12))
  {
    [(PKProtobufPaymentRequest *)self setLocalizedNavigationTitle:?];
  }

  if (*(v4 + 13))
  {
    [(PKProtobufPaymentRequest *)self setLocalizedSummaryItemsTitle:?];
  }

  v48 = *(v4 + 132);
  if ((v48 & 0x2000) != 0)
  {
    self->_suppressTotal = *(v4 + 260);
    *&self->_has |= 0x2000u;
    v48 = *(v4 + 132);
    if ((v48 & 0x800) == 0)
    {
LABEL_93:
      if ((v48 & 0x20) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_102;
    }
  }

  else if ((*(v4 + 132) & 0x800) == 0)
  {
    goto LABEL_93;
  }

  self->_summaryPinned = *(v4 + 258);
  *&self->_has |= 0x800u;
  v48 = *(v4 + 132);
  if ((v48 & 0x20) == 0)
  {
LABEL_94:
    if ((v48 & 2) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_requestor = *(v4 + 41);
  *&self->_has |= 0x20u;
  v48 = *(v4 + 132);
  if ((v48 & 2) == 0)
  {
LABEL_95:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_103:
  self->_confirmationStyle = *(v4 + 14);
  *&self->_has |= 2u;
  if ((*(v4 + 132) & 0x10) != 0)
  {
LABEL_96:
    self->_requestType = *(v4 + 40);
    *&self->_has |= 0x10u;
  }

LABEL_97:
  availableShippingMethods = self->_availableShippingMethods;
  v50 = *(v4 + 5);
  if (availableShippingMethods)
  {
    if (v50)
    {
      [(PKProtobufShippingMethods *)availableShippingMethods mergeFrom:?];
    }
  }

  else if (v50)
  {
    [(PKProtobufPaymentRequest *)self setAvailableShippingMethods:?];
  }

  recurringPaymentRequest = self->_recurringPaymentRequest;
  v52 = *(v4 + 19);
  if (recurringPaymentRequest)
  {
    if (v52)
    {
      [(PKProtobufRecurringPaymentRequest *)recurringPaymentRequest mergeFrom:?];
    }
  }

  else if (v52)
  {
    [(PKProtobufPaymentRequest *)self setRecurringPaymentRequest:?];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v53 = *(v4 + 17);
  v54 = [v53 countByEnumeratingWithState:&v62 objects:v98 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v63;
    do
    {
      for (mm = 0; mm != v55; ++mm)
      {
        if (*v63 != v56)
        {
          objc_enumerationMutation(v53);
        }

        [(PKProtobufPaymentRequest *)self addMultiTokenContexts:*(*(&v62 + 1) + 8 * mm), v62];
      }

      v55 = [v53 countByEnumeratingWithState:&v62 objects:v98 count:16];
    }

    while (v55);
  }

  if ((*(v4 + 132) & 0x400) != 0)
  {
    self->_respectSupportedNetworksOrder = *(v4 + 257);
    *&self->_has |= 0x400u;
  }

  automaticReloadPaymentRequest = self->_automaticReloadPaymentRequest;
  v59 = *(v4 + 4);
  if (automaticReloadPaymentRequest)
  {
    if (v59)
    {
      [(PKProtobufAutomaticReloadPaymentRequest *)automaticReloadPaymentRequest mergeFrom:?];
    }
  }

  else if (v59)
  {
    [(PKProtobufPaymentRequest *)self setAutomaticReloadPaymentRequest:?];
  }

  if ((*(v4 + 132) & 0x40) != 0)
  {
    self->_requestorDeviceType = *(v4 + 42);
    *&self->_has |= 0x40u;
  }

  deferredPaymentRequest = self->_deferredPaymentRequest;
  v61 = *(v4 + 11);
  if (deferredPaymentRequest)
  {
    if (v61)
    {
      [(PKProtobufDeferredPaymentRequest *)deferredPaymentRequest mergeFrom:?];
    }
  }

  else if (v61)
  {
    [(PKProtobufPaymentRequest *)self setDeferredPaymentRequest:?];
  }

  if (*(v4 + 31))
  {
    [(PKProtobufPaymentRequest *)self setUserAgent:?];
  }

  if ((*(v4 + 132) & 8) != 0)
  {
    self->_merchantCategoryCode = *(v4 + 29);
    *&self->_has |= 8u;
  }

  if (*(v4 + 3))
  {
    [(PKProtobufPaymentRequest *)self setAttributionIdentifier:?];
  }

  if ((*(v4 + 132) & 0x1000) != 0)
  {
    self->_suppressLandscape = *(v4 + 259);
    *&self->_has |= 0x1000u;
  }
}

@end