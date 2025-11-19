@interface PKMapsBrand
+ (void)_deleteDeviceDataFromCloudStoreRecord:(id)a3;
+ (void)deleteFromCloudStoreRecord:(id)a3 codingType:(unint64_t)a4;
- (BOOL)hasCloudArchivableDeviceData;
- (BOOL)isCloudArchivableDeviceDataEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMapsBrand:(id)a3;
- (PKMapsBrand)initWithCloudStoreCoder:(id)a3;
- (PKMapsBrand)initWithCoder:(id)a3;
- (id)description;
- (id)jsonRepresentation;
- (id)stylingInfo;
- (unint64_t)hash;
- (void)_encodeDeviceDataForCloudStoreCoder:(id)a3;
- (void)applyPropertiesFromCloudStoreRecord:(id)a3;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setStylingInfoData:(id)a3;
@end

@implementation PKMapsBrand

- (PKMapsBrand)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKMapsBrand;
  v5 = [(PKMapsBrand *)&v27 init];
  if (v5)
  {
    v5->_identifier = [v4 decodeInt64ForKey:@"identifier"];
    v5->_resultProviderIdentifier = [v4 decodeInt32ForKey:@"resultProviderIdentifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v10;

    v5->_category = [v4 decodeIntegerForKey:@"brandCategory"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brandMapsCategory"];
    detailedCategory = v5->_detailedCategory;
    v5->_detailedCategory = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brandStylingInfo"];
    stylingInfoData = v5->_stylingInfoData;
    v5->_stylingInfoData = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brandLogoURL"];
    logoURL = v5->_logoURL;
    v5->_logoURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brandHeroImageURL"];
    heroImageURL = v5->_heroImageURL;
    v5->_heroImageURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brandHeroImageAttributionName"];
    heroImageAttributionName = v5->_heroImageAttributionName;
    v5->_heroImageAttributionName = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brandBusinessChatURL"];
    businessChatURL = v5->_businessChatURL;
    v5->_businessChatURL = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastProcessedDate"];
    lastProcessedDate = v5->_lastProcessedDate;
    v5->_lastProcessedDate = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeInt64:identifier forKey:@"identifier"];
  [v5 encodeInt32:self->_resultProviderIdentifier forKey:@"resultProviderIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [v5 encodeObject:self->_url forKey:@"url"];
  [v5 encodeInteger:self->_category forKey:@"brandCategory"];
  [v5 encodeObject:self->_detailedCategory forKey:@"brandMapsCategory"];
  [v5 encodeObject:self->_stylingInfoData forKey:@"brandStylingInfo"];
  [v5 encodeObject:self->_logoURL forKey:@"brandLogoURL"];
  [v5 encodeObject:self->_heroImageURL forKey:@"brandHeroImageURL"];
  [v5 encodeObject:self->_heroImageAttributionName forKey:@"brandHeroImageAttributionName"];
  [v5 encodeObject:self->_businessChatURL forKey:@"brandBusinessChatURL"];
  [v5 encodeObject:self->_lastProcessedDate forKey:@"lastProcessedDate"];
}

- (PKMapsBrand)initWithCloudStoreCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKMapsBrand;
  v5 = [(PKMapsBrand *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PKMapsBrand *)v5 applyPropertiesFromCloudStoreRecord:v4];
  }

  if ([(PKMapsBrand *)v6 isValid])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"TransactionDeviceData"];
  v25 = [v4 firstObject];

  v5 = v25;
  if (v25)
  {
    self->_identifier = [v25 pk_encryptedUint64ForKey:@"brandIdentifier"];
    self->_resultProviderIdentifier = [v25 pk_encryptedIntForKey:@"brandResultProviderIdentifier"];
    v6 = [v25 pk_encryptedStringForKey:@"brandName"];
    name = self->_name;
    self->_name = v6;

    v8 = [v25 pk_encryptedUrlForKey:@"brandBusinessChatURL"];
    businessChatURL = self->_businessChatURL;
    self->_businessChatURL = v8;

    if (!self->_category)
    {
      v10 = [v25 pk_encryptedStringForKey:@"brandCategory"];
      self->_category = PKMerchantCategoryFromString(v10);
    }

    if (!self->_url)
    {
      v11 = [v25 pk_encryptedUrlForKey:@"brandURL"];
      url = self->_url;
      self->_url = v11;
    }

    v5 = v25;
    if (!self->_phoneNumber)
    {
      v13 = [v25 pk_encryptedStringForKey:@"brandPhoneNumber"];
      phoneNumber = self->_phoneNumber;
      self->_phoneNumber = v13;

      v5 = v25;
    }

    if (!self->_logoURL)
    {
      v15 = [v25 pk_encryptedUrlForKey:@"brandLogoURL"];
      logoURL = self->_logoURL;
      self->_logoURL = v15;

      v5 = v25;
    }

    if (!self->_heroImageURL)
    {
      v17 = [v25 pk_encryptedUrlForKey:@"brandHeroImageURL"];
      heroImageURL = self->_heroImageURL;
      self->_heroImageURL = v17;

      v5 = v25;
    }

    if (!self->_heroImageAttributionName)
    {
      v19 = [v25 pk_encryptedStringForKey:@"brandHeroImageAttributionName"];
      heroImageAttributionName = self->_heroImageAttributionName;
      self->_heroImageAttributionName = v19;

      v5 = v25;
    }

    if (!self->_detailedCategory)
    {
      v21 = [v25 pk_encryptedStringForKey:@"brandMapsCategory"];
      detailedCategory = self->_detailedCategory;
      self->_detailedCategory = v21;

      v5 = v25;
    }

    if (!self->_stylingInfoData)
    {
      v23 = [v25 pk_encryptedDataForKey:@"brandStylingInfo"];
      stylingInfoData = self->_stylingInfoData;
      self->_stylingInfoData = v23;

      v5 = v25;
    }
  }
}

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [(PKMapsBrand *)self _encodeDeviceDataForCloudStoreCoder:a3];
  }
}

- (void)_encodeDeviceDataForCloudStoreCoder:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"TransactionDeviceData"];
  v13 = [v4 firstObject];

  v5 = [v13 encryptedValues];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_identifier];
  [v5 setObject:v6 forKey:@"brandIdentifier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_resultProviderIdentifier];
  [v5 setObject:v7 forKey:@"brandResultProviderIdentifier"];

  [v5 setObject:self->_name forKey:@"brandName"];
  [v5 setObject:self->_phoneNumber forKey:@"brandPhoneNumber"];
  v8 = [(NSURL *)self->_url absoluteString];
  [v5 setObject:v8 forKey:@"brandURL"];

  v9 = PKMerchantCategoryToString(self->_category);
  [v5 setObject:v9 forKey:@"brandCategory"];

  [v5 setObject:self->_detailedCategory forKey:@"brandMapsCategory"];
  v10 = [(NSURL *)self->_logoURL absoluteString];
  [v5 setObject:v10 forKey:@"brandLogoURL"];

  [v5 setObject:self->_stylingInfoData forKey:@"brandStylingInfo"];
  if (PKApplePayContainerEnvironment() == 2)
  {
    v11 = [(NSURL *)self->_businessChatURL absoluteString];
    [v5 setObject:v11 forKey:@"brandBusinessChatURL"];

    v12 = [(NSURL *)self->_heroImageURL absoluteString];
    [v5 setObject:v12 forKey:@"brandHeroImageURL"];

    [v5 setObject:self->_heroImageAttributionName forKey:@"brandHeroImageAttributionName"];
  }
}

+ (void)deleteFromCloudStoreRecord:(id)a3 codingType:(unint64_t)a4
{
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [a1 _deleteDeviceDataFromCloudStoreRecord:a3];
  }
}

+ (void)_deleteDeviceDataFromCloudStoreRecord:(id)a3
{
  v3 = [a3 recordsWithRecordType:@"TransactionDeviceData"];
  v5 = [v3 firstObject];

  v4 = [v5 encryptedValues];
  [v4 setObject:0 forKey:@"brandIdentifier"];
  [v4 setObject:0 forKey:@"brandResultProviderIdentifier"];
  [v4 setObject:0 forKey:@"brandName"];
  [v4 setObject:0 forKey:@"brandPhoneNumber"];
  [v4 setObject:0 forKey:@"brandURL"];
  [v4 setObject:0 forKey:@"brandCategory"];
  [v4 setObject:0 forKey:@"brandMapsCategory"];
  [v4 setObject:0 forKey:@"brandLogoURL"];
  [v4 setObject:0 forKey:@"brandStylingInfo"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKMapsBrand *)self isEqualToMapsBrand:v5];
  }

  return v6;
}

- (BOOL)isEqualToMapsBrand:(id)a3
{
  v4 = a3;
  v5 = v4[4];
  v6 = self->_name;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_25;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_26;
    }
  }

  v11 = v4[5];
  v6 = self->_phoneNumber;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_25;
    }

    v13 = [(NSString *)v6 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_26;
    }
  }

  url = self->_url;
  v15 = v4[6];
  if (url && v15)
  {
    if (([(NSURL *)url isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (url != v15)
  {
    goto LABEL_26;
  }

  v16 = v4[8];
  v6 = self->_detailedCategory;
  v17 = v16;
  v8 = v17;
  if (v6 != v17)
  {
    if (v6 && v17)
    {
      v18 = [(NSString *)v6 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_29:
  logoURL = self->_logoURL;
  v22 = v4[10];
  if (logoURL && v22)
  {
    if (([(NSURL *)logoURL isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (logoURL != v22)
  {
    goto LABEL_26;
  }

  heroImageURL = self->_heroImageURL;
  v24 = v4[11];
  if (heroImageURL && v24)
  {
    if (([(NSURL *)heroImageURL isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (heroImageURL != v24)
  {
    goto LABEL_26;
  }

  heroImageAttributionName = self->_heroImageAttributionName;
  v26 = v4[12];
  if (heroImageAttributionName && v26)
  {
    if (([(NSString *)heroImageAttributionName isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (heroImageAttributionName != v26)
  {
    goto LABEL_26;
  }

  businessChatURL = self->_businessChatURL;
  v28 = v4[13];
  if (businessChatURL && v28)
  {
    if (([(NSURL *)businessChatURL isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (businessChatURL != v28)
  {
    goto LABEL_26;
  }

  if (self->_category == v4[7] && self->_identifier == v4[3] && self->_resultProviderIdentifier == *(v4 + 4))
  {
    v19 = (self->_stylingInfoData == 0) ^ (v4[9] != 0);
    goto LABEL_27;
  }

LABEL_26:
  v19 = 0;
LABEL_27:

  return v19;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_phoneNumber];
  [v3 safelyAddObject:self->_url];
  [v3 safelyAddObject:self->_detailedCategory];
  [v3 safelyAddObject:self->_logoURL];
  [v3 safelyAddObject:self->_heroImageURL];
  [v3 safelyAddObject:self->_heroImageAttributionName];
  [v3 safelyAddObject:self->_businessChatURL];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_identifier - v4 + 32 * v4;
  v6 = self->_resultProviderIdentifier - v5 + 32 * v5;
  v7 = self->_category - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [(PKMapsBrand *)self jsonRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(NSDate *)self->_lastProcessedDate description];
  [v4 setObject:v5 forKeyedSubscript:@"lastProcessedDate"];

  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:2 error:0];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@: %p %@>", v10, self, v7];;

  return v11;
}

- (id)jsonRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_identifier];
  [v3 setObject:v4 forKeyedSubscript:@"identifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_resultProviderIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"resultProviderIdentifier"];

  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:self->_phoneNumber forKeyedSubscript:@"phoneNumber"];
  v6 = [(NSURL *)self->_url absoluteString];
  [v3 setObject:v6 forKeyedSubscript:@"url"];

  v7 = PKMerchantCategoryToString(self->_category);
  [v3 setObject:v7 forKeyedSubscript:@"category"];

  [v3 setObject:self->_detailedCategory forKeyedSubscript:@"detailedCategory"];
  v8 = [(NSURL *)self->_logoURL absoluteString];
  [v3 setObject:v8 forKeyedSubscript:@"logoURL"];

  v9 = [(NSURL *)self->_heroImageURL absoluteString];
  [v3 setObject:v9 forKeyedSubscript:@"heroImageURL"];

  [v3 setObject:self->_heroImageAttributionName forKeyedSubscript:@"heroImageAttributionName"];
  v10 = [(NSURL *)self->_businessChatURL absoluteString];
  [v3 setObject:v10 forKeyedSubscript:@"businessChatURL"];

  v11 = [(NSData *)self->_stylingInfoData description];
  [v3 setObject:v11 forKeyedSubscript:@"stylingInfoData"];

  v12 = [v3 copy];

  return v12;
}

- (BOOL)isCloudArchivableDeviceDataEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_33;
  }

  v6 = v4[4];
  v7 = self->_name;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_32;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_33;
    }
  }

  v11 = *(v5 + 5);
  v7 = self->_phoneNumber;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {
  }

  else
  {
    if (!v7 || !v12)
    {
      goto LABEL_32;
    }

    v13 = [(NSString *)v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_33;
    }
  }

  url = self->_url;
  v15 = *(v5 + 6);
  if (url && v15)
  {
    if (([(NSURL *)url isEqual:?]& 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (url != v15)
  {
    goto LABEL_33;
  }

  if (self->_category != *(v5 + 7) || self->_identifier != *(v5 + 3) || self->_resultProviderIdentifier != *(v5 + 4))
  {
    goto LABEL_33;
  }

  logoURL = self->_logoURL;
  v17 = *(v5 + 10);
  if (logoURL && v17)
  {
    if (([(NSURL *)logoURL isEqual:?]& 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (logoURL != v17)
  {
    goto LABEL_33;
  }

  v18 = *(v5 + 8);
  v7 = self->_detailedCategory;
  v19 = v18;
  v9 = v19;
  if (v7 != v19)
  {
    if (v7 && v19)
    {
      v20 = [(NSString *)v7 isEqualToString:v19];

      if (v20)
      {
        goto LABEL_52;
      }

LABEL_33:
      v21 = 0;
      goto LABEL_34;
    }

LABEL_32:

    goto LABEL_33;
  }

LABEL_52:
  stylingInfoData = self->_stylingInfoData;
  v32 = *(v5 + 9);
  if (stylingInfoData && v32)
  {
    v21 = [(NSData *)stylingInfoData isEqual:?];
  }

  else
  {
    v21 = stylingInfoData == v32;
  }

LABEL_34:
  v22 = PKApplePayContainerEnvironment();
  v23 = (v22 != 2) & v21;
  if (v22 != 2 || !v21)
  {
    goto LABEL_49;
  }

  businessChatURL = self->_businessChatURL;
  v25 = *(v5 + 13);
  if (businessChatURL && v25)
  {
    if (([(NSURL *)businessChatURL isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (businessChatURL != v25)
  {
    goto LABEL_48;
  }

  heroImageURL = self->_heroImageURL;
  v27 = *(v5 + 11);
  if (!heroImageURL || !v27)
  {
    if (heroImageURL == v27)
    {
      goto LABEL_44;
    }

LABEL_48:
    v23 = 0;
    goto LABEL_49;
  }

  if (([(NSURL *)heroImageURL isEqual:?]& 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_44:
  heroImageAttributionName = self->_heroImageAttributionName;
  v29 = *(v5 + 12);
  if (heroImageAttributionName && v29)
  {
    v23 = [(NSString *)heroImageAttributionName isEqual:?];
  }

  else
  {
    v23 = heroImageAttributionName == v29;
  }

LABEL_49:

  return v23;
}

- (BOOL)hasCloudArchivableDeviceData
{
  v3 = self->_identifier || self->_resultProviderIdentifier > 0 || self->_name || self->_phoneNumber || self->_url || self->_category || self->_detailedCategory || self->_logoURL || self->_stylingInfoData != 0;
  v4 = PKApplePayContainerEnvironment();
  v5 = v4 == 2 || v3;
  if (v4 == 2 && !v3)
  {
    return self->_businessChatURL || self->_heroImageURL || self->_heroImageAttributionName != 0;
  }

  return v5;
}

- (void)setStylingInfoData:(id)a3
{
  objc_storeStrong(&self->_stylingInfoData, a3);
  v6 = a3;
  lazyStylingInfo = self->_lazyStylingInfo;
  self->_lazyStylingInfo = 0;
}

- (id)stylingInfo
{
  lazyStylingInfo = self->_lazyStylingInfo;
  if (lazyStylingInfo)
  {
    goto LABEL_4;
  }

  if (self->_stylingInfoData)
  {
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:getMKWalletMerchantStylingInfoClass[0]() fromData:self->_stylingInfoData error:0];
    v5 = self->_lazyStylingInfo;
    self->_lazyStylingInfo = v4;

    lazyStylingInfo = self->_lazyStylingInfo;
LABEL_4:
    v6 = lazyStylingInfo;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

@end