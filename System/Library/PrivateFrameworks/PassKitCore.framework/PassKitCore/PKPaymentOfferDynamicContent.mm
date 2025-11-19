@interface PKPaymentOfferDynamicContent
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferDynamicContent)initWithCoder:(id)a3;
- (PKPaymentOfferDynamicContent)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)dynamicContentPageForPageType:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation PKPaymentOfferDynamicContent

- (PKPaymentOfferDynamicContent)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__PKPaymentOfferDynamicContent_initWithDictionary___block_invoke;
  v14[3] = &unk_1E79C8F80;
  v7 = v6;
  v15 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v14];

  if ([v7 count])
  {
    v13.receiver = self;
    v13.super_class = PKPaymentOfferDynamicContent;
    v8 = [(PKPaymentOfferDynamicContent *)&v13 init];
    if (v8)
    {
      v9 = [v7 copy];
      contentByPageType = v8->_contentByPageType;
      v8->_contentByPageType = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __51__PKPaymentOfferDynamicContent_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v66 = v7;
  if (v7 == @"splashScreen")
  {
    v9 = 1;
LABEL_62:

    v10 = [[PKPaymentOfferDynamicContentPage alloc] initWithDictionary:v6 pageType:v9];
    v64 = *(a1 + 32);
    v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    [v64 safelySetObject:v10 forKey:v65];

    goto LABEL_63;
  }

  if (!v7)
  {
    v10 = 0;
    goto LABEL_63;
  }

  v8 = [(__CFString *)v7 isEqualToString:@"splashScreen"];

  if (v8)
  {
    v9 = 1;
LABEL_61:
    v7 = v66;
    goto LABEL_62;
  }

  v11 = v66;
  if (v11 == @"installmentOfferSelection" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"installmentOfferSelection"], v12, (v13 & 1) != 0))
  {
    v9 = 2;
    goto LABEL_61;
  }

  v14 = v12;
  if (v14 == @"webviewScreen" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"webviewScreen"], v15, (v16 & 1) != 0))
  {
    v9 = 3;
    goto LABEL_61;
  }

  v17 = v15;
  if (v17 == @"offersChanged" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"offersChanged"], v18, (v19 & 1) != 0))
  {
    v9 = 4;
    goto LABEL_61;
  }

  v20 = v18;
  if (v20 == @"ineligibleOffers" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"ineligibleOffers"], v21, (v22 & 1) != 0))
  {
    v9 = 5;
    goto LABEL_61;
  }

  v23 = v21;
  if (v23 == @"languageNotice" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"languageNotice"], v24, (v25 & 1) != 0))
  {
    v9 = 6;
    goto LABEL_61;
  }

  v26 = v24;
  if (v26 == @"offerSummary" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"offerSummary"], v27, (v28 & 1) != 0))
  {
    v9 = 7;
    goto LABEL_61;
  }

  v29 = v27;
  if (v29 == @"offerShortSummary" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"offerShortSummary"], v30, (v31 & 1) != 0))
  {
    v9 = 8;
    goto LABEL_61;
  }

  v32 = v30;
  if (v32 == @"offerPaymentSummary" || (v33 = v32, v34 = [(__CFString *)v32 isEqualToString:@"offerPaymentSummary"], v33, (v34 & 1) != 0))
  {
    v9 = 9;
    goto LABEL_61;
  }

  v35 = v33;
  if (v35 == @"provisioning" || (v36 = v35, v37 = [(__CFString *)v35 isEqualToString:@"provisioning"], v36, (v37 & 1) != 0))
  {
    v9 = 10;
    goto LABEL_61;
  }

  v38 = v36;
  if (v38 == @"installmentPartnerExplanation" || (v39 = v38, v40 = [(__CFString *)v38 isEqualToString:@"installmentPartnerExplanation"], v39, (v40 & 1) != 0))
  {
    v9 = 11;
    goto LABEL_61;
  }

  v41 = v39;
  if (v41 == @"merchandisingContent" || (v42 = v41, v43 = [(__CFString *)v41 isEqualToString:@"merchandisingContent"], v42, (v43 & 1) != 0))
  {
    v9 = 12;
    goto LABEL_61;
  }

  v44 = v42;
  if (v44 == @"paymentSelectorTile" || (v45 = v44, v46 = [(__CFString *)v44 isEqualToString:@"paymentSelectorTile"], v45, (v46 & 1) != 0))
  {
    v9 = 13;
    goto LABEL_61;
  }

  v47 = v45;
  if (v47 == @"amountEntryScreen" || (v48 = v47, v49 = [(__CFString *)v47 isEqualToString:@"amountEntryScreen"], v48, (v49 & 1) != 0))
  {
    v9 = 14;
    goto LABEL_61;
  }

  v50 = v48;
  if (v50 == @"transactionOfferStatus" || (v51 = v50, v52 = [(__CFString *)v50 isEqualToString:@"transactionOfferStatus"], v51, (v52 & 1) != 0))
  {
    v9 = 15;
    goto LABEL_61;
  }

  v53 = v51;
  if (v53 == @"transactionNotification" || (v54 = v53, v55 = [(__CFString *)v53 isEqualToString:@"transactionNotification"], v54, (v55 & 1) != 0))
  {
    v9 = 16;
    goto LABEL_61;
  }

  v56 = v54;
  if (v56 == @"dashboardMessage" || (v57 = v56, v58 = [(__CFString *)v56 isEqualToString:@"dashboardMessage"], v57, (v58 & 1) != 0))
  {
    v9 = 17;
    goto LABEL_61;
  }

  v59 = v57;
  if (v59 == @"rewardsSplashScreen" || (v60 = v59, v61 = [(__CFString *)v59 isEqualToString:@"rewardsSplashScreen"], v60, (v61 & 1) != 0))
  {
    v9 = 18;
    goto LABEL_61;
  }

  v62 = v60;
  if (v62 == @"paymentSelectorTileSetupAfterPurchase" || (v10 = v62, v63 = [(__CFString *)v62 isEqualToString:@"paymentSelectorTileSetupAfterPurchase"], v10, v63))
  {
    v9 = 19;
    goto LABEL_61;
  }

LABEL_63:
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  contentByPageType = self->_contentByPageType;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PKPaymentOfferDynamicContent_dictionaryRepresentation__block_invoke;
  v8[3] = &unk_1E79DECC8;
  v9 = v3;
  v5 = v3;
  [(NSDictionary *)contentByPageType enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __56__PKPaymentOfferDynamicContent_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = PKPaymentOfferDynamicContentPageTypeToString([a2 integerValue]);
  v6 = *(a1 + 32);
  v7 = [v5 dictionaryRepresentation];

  [v6 safelySetObject:v7 forKey:v8];
}

- (id)dynamicContentPageForPageType:(unint64_t)a3
{
  contentByPageType = self->_contentByPageType;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)contentByPageType objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    contentByPageType = self->_contentByPageType;
    v7 = v5->_contentByPageType;
    if (contentByPageType && v7)
    {
      v8 = [(NSDictionary *)contentByPageType isEqual:?];
    }

    else
    {
      v8 = contentByPageType == v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_contentByPageType];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  if (self->_contentByPageType)
  {
    [v3 appendFormat:@"contentByPageType: '%@'; ", self->_contentByPageType];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferDynamicContent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentOfferDynamicContent;
  v5 = [(PKPaymentOfferDynamicContent *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"contentByPageType"];
    contentByPageType = v5->_contentByPageType;
    v5->_contentByPageType = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferDynamicContent allocWithZone:](PKPaymentOfferDynamicContent init];
  v6 = [(NSDictionary *)self->_contentByPageType copyWithZone:a3];
  contentByPageType = v5->_contentByPageType;
  v5->_contentByPageType = v6;

  return v5;
}

@end