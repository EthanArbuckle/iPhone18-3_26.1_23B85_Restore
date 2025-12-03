@interface PKPaymentTransactionBankConnectMetadata
- (BOOL)isEqual:(id)equal;
- (PKPaymentTransactionBankConnectMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionBankConnectMetadata

- (PKPaymentTransactionBankConnectMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PKPaymentTransactionBankConnectMetadata;
  v5 = [(PKPaymentTransactionBankConnectMetadata *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalTransactionDescription"];
    originalTransactionDescription = v5->_originalTransactionDescription;
    v5->_originalTransactionDescription = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"digitalServicingURL"];
    digitalServicingURL = v5->_digitalServicingURL;
    v5->_digitalServicingURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payNowURL"];
    payNowURL = v5->_payNowURL;
    v5->_payNowURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postInstallmentURL"];
    postInstallmentURL = v5->_postInstallmentURL;
    v5->_postInstallmentURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redeemRewardsURL"];
    redeemRewardsURL = v5->_redeemRewardsURL;
    v5->_redeemRewardsURL = v14;

    v5->_creditDebitIndicator = [coderCopy decodeIntegerForKey:@"creditDebitIndicator"];
    v5->_classifiedByMaps = [coderCopy decodeBoolForKey:@"classifiedByMaps"];
    v5->_roundTransactionDate = [coderCopy decodeBoolForKey:@"roundTransactionDate"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankCategoryDescription"];
    bankCategoryDescription = v5->_bankCategoryDescription;
    v5->_bankCategoryDescription = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankMerchantAddress"];
    bankMerchantAddress = v5->_bankMerchantAddress;
    v5->_bankMerchantAddress = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankMerchantCategoryCode"];
    bankMerchantCategoryCode = v5->_bankMerchantCategoryCode;
    v5->_bankMerchantCategoryCode = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankMerchantName"];
    bankMerchantName = v5->_bankMerchantName;
    v5->_bankMerchantName = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankMerchantNumber"];
    bankMerchantNumber = v5->_bankMerchantNumber;
    v5->_bankMerchantNumber = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankStandardIndustrialClassificationCode"];
    bankStandardIndustrialClassificationCode = v5->_bankStandardIndustrialClassificationCode;
    v5->_bankStandardIndustrialClassificationCode = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originalTransactionDescription = self->_originalTransactionDescription;
  coderCopy = coder;
  [coderCopy encodeObject:originalTransactionDescription forKey:@"originalTransactionDescription"];
  [coderCopy encodeObject:self->_digitalServicingURL forKey:@"digitalServicingURL"];
  [coderCopy encodeObject:self->_payNowURL forKey:@"payNowURL"];
  [coderCopy encodeObject:self->_postInstallmentURL forKey:@"postInstallmentURL"];
  [coderCopy encodeObject:self->_redeemRewardsURL forKey:@"redeemRewardsURL"];
  [coderCopy encodeInteger:self->_creditDebitIndicator forKey:@"creditDebitIndicator"];
  [coderCopy encodeBool:self->_classifiedByMaps forKey:@"classifiedByMaps"];
  [coderCopy encodeBool:self->_roundTransactionDate forKey:@"roundTransactionDate"];
  [coderCopy encodeObject:self->_bankCategoryDescription forKey:@"bankCategoryDescription"];
  [coderCopy encodeObject:self->_bankMerchantAddress forKey:@"bankMerchantAddress"];
  [coderCopy encodeObject:self->_bankMerchantCategoryCode forKey:@"bankMerchantCategoryCode"];
  [coderCopy encodeObject:self->_bankMerchantName forKey:@"bankMerchantName"];
  [coderCopy encodeObject:self->_bankMerchantNumber forKey:@"bankMerchantNumber"];
  [coderCopy encodeObject:self->_bankStandardIndustrialClassificationCode forKey:@"bankStandardIndustrialClassificationCode"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSUUID *)self->_transactionIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_originalTransactionDescription copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_bankCategoryDescription copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(CNPostalAddress *)self->_bankMerchantAddress copyWithZone:zone];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  v14 = [(NSNumber *)self->_bankMerchantCategoryCode copyWithZone:zone];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  v16 = [(NSString *)self->_bankMerchantName copyWithZone:zone];
  v17 = *(v5 + 96);
  *(v5 + 96) = v16;

  v18 = [(NSString *)self->_bankMerchantNumber copyWithZone:zone];
  v19 = *(v5 + 104);
  *(v5 + 104) = v18;

  v20 = [(NSString *)self->_bankStandardIndustrialClassificationCode copyWithZone:zone];
  v21 = *(v5 + 112);
  *(v5 + 112) = v20;

  v22 = [(NSURL *)self->_digitalServicingURL copyWithZone:zone];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  v24 = [(NSURL *)self->_payNowURL copyWithZone:zone];
  v25 = *(v5 + 40);
  *(v5 + 40) = v24;

  v26 = [(NSURL *)self->_postInstallmentURL copyWithZone:zone];
  v27 = *(v5 + 48);
  *(v5 + 48) = v26;

  v28 = [(NSURL *)self->_redeemRewardsURL copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
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