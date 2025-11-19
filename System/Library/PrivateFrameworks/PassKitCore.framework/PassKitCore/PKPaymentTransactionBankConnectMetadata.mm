@interface PKPaymentTransactionBankConnectMetadata
- (BOOL)isEqual:(id)a3;
- (PKPaymentTransactionBankConnectMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentTransactionBankConnectMetadata

- (PKPaymentTransactionBankConnectMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKPaymentTransactionBankConnectMetadata;
  v5 = [(PKPaymentTransactionBankConnectMetadata *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalTransactionDescription"];
    originalTransactionDescription = v5->_originalTransactionDescription;
    v5->_originalTransactionDescription = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"digitalServicingURL"];
    digitalServicingURL = v5->_digitalServicingURL;
    v5->_digitalServicingURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payNowURL"];
    payNowURL = v5->_payNowURL;
    v5->_payNowURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postInstallmentURL"];
    postInstallmentURL = v5->_postInstallmentURL;
    v5->_postInstallmentURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redeemRewardsURL"];
    redeemRewardsURL = v5->_redeemRewardsURL;
    v5->_redeemRewardsURL = v14;

    v5->_creditDebitIndicator = [v4 decodeIntegerForKey:@"creditDebitIndicator"];
    v5->_classifiedByMaps = [v4 decodeBoolForKey:@"classifiedByMaps"];
    v5->_roundTransactionDate = [v4 decodeBoolForKey:@"roundTransactionDate"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankCategoryDescription"];
    bankCategoryDescription = v5->_bankCategoryDescription;
    v5->_bankCategoryDescription = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankMerchantAddress"];
    bankMerchantAddress = v5->_bankMerchantAddress;
    v5->_bankMerchantAddress = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankMerchantCategoryCode"];
    bankMerchantCategoryCode = v5->_bankMerchantCategoryCode;
    v5->_bankMerchantCategoryCode = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankMerchantName"];
    bankMerchantName = v5->_bankMerchantName;
    v5->_bankMerchantName = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankMerchantNumber"];
    bankMerchantNumber = v5->_bankMerchantNumber;
    v5->_bankMerchantNumber = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankStandardIndustrialClassificationCode"];
    bankStandardIndustrialClassificationCode = v5->_bankStandardIndustrialClassificationCode;
    v5->_bankStandardIndustrialClassificationCode = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  originalTransactionDescription = self->_originalTransactionDescription;
  v5 = a3;
  [v5 encodeObject:originalTransactionDescription forKey:@"originalTransactionDescription"];
  [v5 encodeObject:self->_digitalServicingURL forKey:@"digitalServicingURL"];
  [v5 encodeObject:self->_payNowURL forKey:@"payNowURL"];
  [v5 encodeObject:self->_postInstallmentURL forKey:@"postInstallmentURL"];
  [v5 encodeObject:self->_redeemRewardsURL forKey:@"redeemRewardsURL"];
  [v5 encodeInteger:self->_creditDebitIndicator forKey:@"creditDebitIndicator"];
  [v5 encodeBool:self->_classifiedByMaps forKey:@"classifiedByMaps"];
  [v5 encodeBool:self->_roundTransactionDate forKey:@"roundTransactionDate"];
  [v5 encodeObject:self->_bankCategoryDescription forKey:@"bankCategoryDescription"];
  [v5 encodeObject:self->_bankMerchantAddress forKey:@"bankMerchantAddress"];
  [v5 encodeObject:self->_bankMerchantCategoryCode forKey:@"bankMerchantCategoryCode"];
  [v5 encodeObject:self->_bankMerchantName forKey:@"bankMerchantName"];
  [v5 encodeObject:self->_bankMerchantNumber forKey:@"bankMerchantNumber"];
  [v5 encodeObject:self->_bankStandardIndustrialClassificationCode forKey:@"bankStandardIndustrialClassificationCode"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSUUID *)self->_transactionIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_originalTransactionDescription copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_bankCategoryDescription copyWithZone:a3];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(CNPostalAddress *)self->_bankMerchantAddress copyWithZone:a3];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  v14 = [(NSNumber *)self->_bankMerchantCategoryCode copyWithZone:a3];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  v16 = [(NSString *)self->_bankMerchantName copyWithZone:a3];
  v17 = *(v5 + 96);
  *(v5 + 96) = v16;

  v18 = [(NSString *)self->_bankMerchantNumber copyWithZone:a3];
  v19 = *(v5 + 104);
  *(v5 + 104) = v18;

  v20 = [(NSString *)self->_bankStandardIndustrialClassificationCode copyWithZone:a3];
  v21 = *(v5 + 112);
  *(v5 + 112) = v20;

  v22 = [(NSURL *)self->_digitalServicingURL copyWithZone:a3];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  v24 = [(NSURL *)self->_payNowURL copyWithZone:a3];
  v25 = *(v5 + 40);
  *(v5 + 40) = v24;

  v26 = [(NSURL *)self->_postInstallmentURL copyWithZone:a3];
  v27 = *(v5 + 48);
  *(v5 + 48) = v26;

  v28 = [(NSURL *)self->_redeemRewardsURL copyWithZone:a3];
  v29 = *(v5 + 56);
  *(v5 + 56) = v28;

  *(v5 + 8) = self->_classifiedByMaps;
  *(v5 + 64) = self->_creditDebitIndicator;
  *(v5 + 9) = self->_roundTransactionDate;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_transactionIdentifier];
  [v3 safelyAddObject:self->_originalTransactionDescription];
  [v3 safelyAddObject:self->_bankCategoryDescription];
  [v3 safelyAddObject:self->_bankMerchantAddress];
  [v3 safelyAddObject:self->_bankMerchantCategoryCode];
  [v3 safelyAddObject:self->_bankMerchantName];
  [v3 safelyAddObject:self->_bankMerchantNumber];
  [v3 safelyAddObject:self->_bankStandardIndustrialClassificationCode];
  [v3 safelyAddObject:self->_digitalServicingURL];
  [v3 safelyAddObject:self->_payNowURL];
  [v3 safelyAddObject:self->_postInstallmentURL];
  [v3 safelyAddObject:self->_redeemRewardsURL];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_classifiedByMaps - v4 + 32 * v4;
  v6 = self->_creditDebitIndicator - v5 + 32 * v5;
  v7 = self->_roundTransactionDate - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        transactionIdentifier = self->_transactionIdentifier;
        v8 = v6->_transactionIdentifier;
        if (transactionIdentifier && v8)
        {
          if (([(NSUUID *)transactionIdentifier isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (transactionIdentifier != v8)
        {
          goto LABEL_69;
        }

        originalTransactionDescription = self->_originalTransactionDescription;
        v11 = v6->_originalTransactionDescription;
        if (originalTransactionDescription && v11)
        {
          if (([(NSString *)originalTransactionDescription isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (originalTransactionDescription != v11)
        {
          goto LABEL_69;
        }

        bankCategoryDescription = self->_bankCategoryDescription;
        v13 = v6->_bankCategoryDescription;
        if (bankCategoryDescription && v13)
        {
          if (([(NSString *)bankCategoryDescription isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (bankCategoryDescription != v13)
        {
          goto LABEL_69;
        }

        bankMerchantAddress = self->_bankMerchantAddress;
        v15 = v6->_bankMerchantAddress;
        if (bankMerchantAddress && v15)
        {
          if (([(CNPostalAddress *)bankMerchantAddress isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (bankMerchantAddress != v15)
        {
          goto LABEL_69;
        }

        bankMerchantCategoryCode = self->_bankMerchantCategoryCode;
        v17 = v6->_bankMerchantCategoryCode;
        if (bankMerchantCategoryCode && v17)
        {
          if (([(NSNumber *)bankMerchantCategoryCode isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (bankMerchantCategoryCode != v17)
        {
          goto LABEL_69;
        }

        bankMerchantName = self->_bankMerchantName;
        v19 = v6->_bankMerchantName;
        if (bankMerchantName && v19)
        {
          if (([(NSString *)bankMerchantName isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (bankMerchantName != v19)
        {
          goto LABEL_69;
        }

        bankMerchantNumber = self->_bankMerchantNumber;
        v21 = v6->_bankMerchantNumber;
        if (bankMerchantNumber && v21)
        {
          if (([(NSString *)bankMerchantNumber isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (bankMerchantNumber != v21)
        {
          goto LABEL_69;
        }

        bankStandardIndustrialClassificationCode = self->_bankStandardIndustrialClassificationCode;
        v23 = v6->_bankStandardIndustrialClassificationCode;
        if (bankStandardIndustrialClassificationCode && v23)
        {
          if (([(NSString *)bankStandardIndustrialClassificationCode isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (bankStandardIndustrialClassificationCode != v23)
        {
          goto LABEL_69;
        }

        digitalServicingURL = self->_digitalServicingURL;
        v25 = v6->_digitalServicingURL;
        if (digitalServicingURL && v25)
        {
          if (([(NSURL *)digitalServicingURL isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (digitalServicingURL != v25)
        {
          goto LABEL_69;
        }

        payNowURL = self->_payNowURL;
        v27 = v6->_payNowURL;
        if (payNowURL && v27)
        {
          if (([(NSURL *)payNowURL isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (payNowURL != v27)
        {
          goto LABEL_69;
        }

        postInstallmentURL = self->_postInstallmentURL;
        v29 = v6->_postInstallmentURL;
        if (postInstallmentURL && v29)
        {
          if (([(NSURL *)postInstallmentURL isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (postInstallmentURL != v29)
        {
          goto LABEL_69;
        }

        redeemRewardsURL = self->_redeemRewardsURL;
        v31 = v6->_redeemRewardsURL;
        if (redeemRewardsURL && v31)
        {
          if (([(NSURL *)redeemRewardsURL isEqual:?]& 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (redeemRewardsURL != v31)
        {
          goto LABEL_69;
        }

        if (self->_classifiedByMaps == v6->_classifiedByMaps && self->_creditDebitIndicator == v6->_creditDebitIndicator)
        {
          v9 = self->_roundTransactionDate == v6->_roundTransactionDate;
LABEL_70:

          goto LABEL_71;
        }

LABEL_69:
        v9 = 0;
        goto LABEL_70;
      }
    }

    v9 = 0;
  }

LABEL_71:

  return v9;
}

@end