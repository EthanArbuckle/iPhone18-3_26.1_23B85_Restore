@interface PKMapsMerchant
+ (void)_deleteDeviceDataFromCloudStoreRecord:(id)a3;
+ (void)deleteFromCloudStoreRecord:(id)a3 codingType:(unint64_t)a4;
- (BOOL)hasCloudArchivableDeviceData;
- (BOOL)isCloudArchivableDeviceDataEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMapsMerchant:(id)a3;
- (CLLocation)location;
- (PKMapsMerchant)initWithCloudStoreCoder:(id)a3;
- (PKMapsMerchant)initWithCoder:(id)a3;
- (id)_jsonEncodedPostalAddressString;
- (id)description;
- (id)jsonRepresentation;
- (id)stylingInfo;
- (unint64_t)hash;
- (void)_encodeDeviceDataForCloudStoreCoder:(id)a3;
- (void)applyPropertiesFromCloudStoreRecord:(id)a3;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setLocation:(id)a3;
- (void)setStylingInfoData:(id)a3;
@end

@implementation PKMapsMerchant

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

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationLatitude];
  [v3 setObject:v7 forKeyedSubscript:@"locationLatitude"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationLongitude];
  [v3 setObject:v8 forKeyedSubscript:@"locationLongitude"];

  v9 = [(NSURL *)self->_heroImageURL absoluteString];
  [v3 setObject:v9 forKeyedSubscript:@"heroImageURL"];

  [v3 setObject:self->_heroImageAttributionName forKeyedSubscript:@"heroImageAttributionName"];
  v10 = PKMerchantCategoryToString(self->_category);
  [v3 setObject:v10 forKeyedSubscript:@"category"];

  [v3 setObject:self->_detailedCategory forKeyedSubscript:@"detailedCategory"];
  v11 = [(NSURL *)self->_businessChatURL absoluteString];
  [v3 setObject:v11 forKeyedSubscript:@"businessChatURL"];

  v12 = [(NSData *)self->_stylingInfoData description];
  [v3 setObject:v12 forKeyedSubscript:@"stylingInfo"];

  v13 = [v3 copy];

  return v13;
}

- (BOOL)isCloudArchivableDeviceDataEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_identifier != v4[3] || self->_resultProviderIdentifier != *(v4 + 4))
  {
    goto LABEL_46;
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
      goto LABEL_45;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_46;
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
      goto LABEL_45;
    }

    v13 = [(NSString *)v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_46;
    }
  }

  url = self->_url;
  v15 = *(v5 + 6);
  if (url && v15)
  {
    if (([(NSURL *)url isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (url != v15)
  {
    goto LABEL_46;
  }

  if (self->_locationLatitude != *(v5 + 7) || self->_locationLongitude != *(v5 + 8))
  {
    goto LABEL_46;
  }

  postalAddress = self->_postalAddress;
  v17 = *(v5 + 9);
  if (postalAddress && v17)
  {
    if (([(CNPostalAddress *)postalAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (postalAddress != v17)
  {
    goto LABEL_46;
  }

  heroImageURL = self->_heroImageURL;
  v19 = *(v5 + 10);
  if (heroImageURL && v19)
  {
    if (([(NSURL *)heroImageURL isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (heroImageURL != v19)
  {
    goto LABEL_46;
  }

  v20 = *(v5 + 11);
  v7 = self->_heroImageAttributionName;
  v21 = v20;
  v9 = v21;
  if (v7 == v21)
  {
  }

  else
  {
    if (!v7 || !v21)
    {
      goto LABEL_45;
    }

    v22 = [(NSString *)v7 isEqualToString:v21];

    if (!v22)
    {
      goto LABEL_46;
    }
  }

  if (self->_category != *(v5 + 12))
  {
    goto LABEL_46;
  }

  v23 = *(v5 + 13);
  v7 = self->_detailedCategory;
  v24 = v23;
  v9 = v24;
  if (v7 == v24)
  {

    goto LABEL_49;
  }

  if (!v7 || !v24)
  {
LABEL_45:

    goto LABEL_46;
  }

  v25 = [(NSString *)v7 isEqualToString:v24];

  if (!v25)
  {
    goto LABEL_46;
  }

LABEL_49:
  stylingInfoData = self->_stylingInfoData;
  v29 = *(v5 + 14);
  if (stylingInfoData && v29)
  {
    if (([(NSData *)stylingInfoData isEqual:?]& 1) != 0)
    {
      goto LABEL_54;
    }

LABEL_46:
    v26 = 0;
    goto LABEL_47;
  }

  if (stylingInfoData != v29)
  {
    goto LABEL_46;
  }

LABEL_54:
  businessChatURL = self->_businessChatURL;
  v31 = *(v5 + 15);
  if (businessChatURL && v31)
  {
    v26 = [(NSURL *)businessChatURL isEqual:?];
  }

  else
  {
    v26 = businessChatURL == v31;
  }

LABEL_47:

  return v26;
}

- (BOOL)hasCloudArchivableDeviceData
{
  if (self->_identifier)
  {
    return 1;
  }

  if (self->_resultProviderIdentifier > 0)
  {
    return 1;
  }

  if (self->_name)
  {
    return 1;
  }

  if (self->_phoneNumber)
  {
    return 1;
  }

  if (self->_url)
  {
    return 1;
  }

  v4 = CLLocationCoordinate2DMake(self->_locationLatitude, self->_locationLongitude);
  if (CLLocationCoordinate2DIsValid(v4) || self->_postalAddress || self->_heroImageURL || self->_heroImageAttributionName || self->_category || self->_detailedCategory || self->_stylingInfoData)
  {
    return 1;
  }

  return self->_businessChatURL != 0;
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
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:getMKWalletMerchantStylingInfoClass_1[0]() fromData:self->_stylingInfoData error:0];
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

- (CLLocation)location
{
  v8 = CLLocationCoordinate2DMake(self->_locationLatitude, self->_locationLongitude);
  latitude = v8.latitude;
  longitude = v8.longitude;
  if (!CLLocationCoordinate2DIsValid(v8) || self->_locationLatitude == 0.0 && self->_locationLongitude == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
  }

  return v5;
}

- (void)setLocation:(id)a3
{
  [a3 coordinate];
  latitude = v6.latitude;
  longitude = v6.longitude;
  if (CLLocationCoordinate2DIsValid(v6))
  {
    self->_locationLatitude = latitude;
    self->_locationLongitude = longitude;
  }
}

- (PKMapsMerchant)initWithCloudStoreCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKMapsMerchant;
  v5 = [(PKMapsMerchant *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PKMapsMerchant *)v5 applyPropertiesFromCloudStoreRecord:v4];
  }

  if ([(PKMapsMerchant *)v6 isValid])
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
  v27 = [v4 firstObject];

  v5 = v27;
  if (v27)
  {
    self->_identifier = [v27 pk_encryptedUint64ForKey:@"merchantMapsIdentifier"];
    self->_resultProviderIdentifier = [v27 pk_encryptedIntForKey:@"merchantResultProviderIdentifier"];
    v6 = [v27 pk_encryptedStringForKey:@"merchantMapsName"];
    name = self->_name;
    self->_name = v6;

    v8 = [v27 pk_encryptedUrlForKey:@"merchantBusinessChatURL"];
    businessChatURL = self->_businessChatURL;
    self->_businessChatURL = v8;

    v10 = [v27 pk_encryptedLocationForKey:@"merchantLocation"];
    [v10 coordinate];
    self->_locationLatitude = v11;
    self->_locationLongitude = v12;
    if (!self->_phoneNumber)
    {
      v13 = [v27 pk_encryptedStringForKey:@"merchantPhoneNumber"];
      phoneNumber = self->_phoneNumber;
      self->_phoneNumber = v13;
    }

    if (!self->_url)
    {
      v15 = [v27 pk_encryptedUrlForKey:@"merchantURL"];
      url = self->_url;
      self->_url = v15;
    }

    if (!self->_postalAddress)
    {
      v17 = [v27 pk_encryptedDictionaryForKey:@"merchantPostalAddress"];
      v18 = v17;
      if (v17)
      {
        v17 = [MEMORY[0x1E695CF60] postalAddressWithDictionaryRepresentation:v17];
      }

      postalAddress = self->_postalAddress;
      self->_postalAddress = v17;
    }

    if (!self->_heroImageURL)
    {
      v20 = [v27 pk_encryptedUrlForKey:@"merchantHeroImageURL"];
      heroImageURL = self->_heroImageURL;
      self->_heroImageURL = v20;
    }

    if (!self->_heroImageAttributionName)
    {
      v22 = [v27 pk_encryptedStringForKey:@"merchantHeroImageAttributionName"];
      heroImageAttributionName = self->_heroImageAttributionName;
      self->_heroImageAttributionName = v22;
    }

    if (!self->_category)
    {
      v24 = [v27 pk_encryptedStringForKey:@"merchantCategory"];
      self->_category = PKMerchantCategoryFromString(v24);
    }

    if (!self->_stylingInfoData)
    {
      v25 = [v27 pk_encryptedDataForKey:@"merchantStylingInfo"];
      stylingInfoData = self->_stylingInfoData;
      self->_stylingInfoData = v25;
    }

    v5 = v27;
  }
}

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [(PKMapsMerchant *)self _encodeDeviceDataForCloudStoreCoder:a3];
  }
}

- (void)_encodeDeviceDataForCloudStoreCoder:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"TransactionDeviceData"];
  v14 = [v4 firstObject];

  v5 = [v14 encryptedValues];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_identifier];
  [v5 setObject:v6 forKey:@"merchantMapsIdentifier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_resultProviderIdentifier];
  [v5 setObject:v7 forKey:@"merchantResultProviderIdentifier"];

  [v5 setObject:self->_name forKey:@"merchantMapsName"];
  [v5 setObject:self->_phoneNumber forKey:@"merchantPhoneNumber"];
  v8 = [(NSURL *)self->_url absoluteString];
  [v5 setObject:v8 forKey:@"merchantURL"];

  v9 = [(PKMapsMerchant *)self location];
  [v5 setObject:v9 forKey:@"merchantLocation"];

  v10 = [(PKMapsMerchant *)self _jsonEncodedPostalAddressString];
  [v5 setObject:v10 forKey:@"merchantPostalAddress"];

  v11 = [(NSURL *)self->_heroImageURL absoluteString];
  [v5 setObject:v11 forKey:@"merchantHeroImageURL"];

  v12 = PKMerchantCategoryToString(self->_category);
  [v5 setObject:v12 forKey:@"merchantCategory"];

  [v5 setObject:self->_detailedCategory forKey:@"merchantMapsCategory"];
  [v5 setObject:self->_heroImageAttributionName forKey:@"merchantHeroImageAttributionName"];
  [v5 setObject:self->_stylingInfoData forKey:@"merchantStylingInfo"];
  if (PKApplePayContainerEnvironment() == 2)
  {
    v13 = [(NSURL *)self->_businessChatURL absoluteString];
    [v5 setObject:v13 forKey:@"merchantBusinessChatURL"];
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
  [v4 setObject:0 forKey:@"merchantMapsIdentifier"];
  [v4 setObject:0 forKey:@"merchantResultProviderIdentifier"];
  [v4 setObject:0 forKey:@"merchantMapsName"];
  [v4 setObject:0 forKey:@"merchantPhoneNumber"];
  [v4 setObject:0 forKey:@"merchantURL"];
  [v4 setObject:0 forKey:@"merchantLocation"];
  [v4 setObject:0 forKey:@"merchantPostalAddress"];
  [v4 setObject:0 forKey:@"merchantHeroImageURL"];
  [v4 setObject:0 forKey:@"merchantCategory"];
  [v4 setObject:0 forKey:@"merchantMapsCategory"];
  [v4 setObject:0 forKey:@"merchantHeroImageAttributionName"];
  [v4 setObject:0 forKey:@"merchantStylingInfo"];
}

- (PKMapsMerchant)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKMapsMerchant;
  v5 = [(PKMapsMerchant *)&v29 init];
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

    [v4 decodeDoubleForKey:@"locationLatitude"];
    v5->_locationLatitude = v12;
    [v4 decodeDoubleForKey:@"locationLongitude"];
    v5->_locationLongitude = v13;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postalAddress"];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"heroImageURL"];
    heroImageURL = v5->_heroImageURL;
    v5->_heroImageURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantHeroImageAttributionName"];
    heroImageAttributionName = v5->_heroImageAttributionName;
    v5->_heroImageAttributionName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantStylingInfo"];
    stylingInfoData = v5->_stylingInfoData;
    v5->_stylingInfoData = v20;

    v5->_category = [v4 decodeIntegerForKey:@"merchantCategory"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantMapsCategory"];
    detailedCategory = v5->_detailedCategory;
    v5->_detailedCategory = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantBusinessChatURL"];
    businessChatURL = v5->_businessChatURL;
    v5->_businessChatURL = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastProcessedDate"];
    lastProcessedDate = v5->_lastProcessedDate;
    v5->_lastProcessedDate = v26;
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
  [v5 encodeDouble:@"locationLatitude" forKey:self->_locationLatitude];
  [v5 encodeDouble:@"locationLongitude" forKey:self->_locationLongitude];
  [v5 encodeObject:self->_postalAddress forKey:@"postalAddress"];
  [v5 encodeObject:self->_heroImageURL forKey:@"heroImageURL"];
  [v5 encodeObject:self->_heroImageAttributionName forKey:@"merchantHeroImageAttributionName"];
  [v5 encodeObject:self->_stylingInfoData forKey:@"merchantStylingInfo"];
  [v5 encodeInteger:self->_category forKey:@"merchantCategory"];
  [v5 encodeObject:self->_detailedCategory forKey:@"merchantMapsCategory"];
  [v5 encodeObject:self->_businessChatURL forKey:@"merchantBusinessChatURL"];
  [v5 encodeObject:self->_lastProcessedDate forKey:@"lastProcessedDate"];
}

- (id)description
{
  v3 = [(PKMapsMerchant *)self jsonRepresentation];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKMapsMerchant *)self isEqualToMapsMerchant:v5];
  }

  return v6;
}

- (BOOL)isEqualToMapsMerchant:(id)a3
{
  v4 = a3;
  name = self->_name;
  v6 = v4[4];
  if (name)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (name != v6)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v8 = [(NSString *)name isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  phoneNumber = self->_phoneNumber;
  v10 = v4[5];
  if (phoneNumber && v10)
  {
    if (([(NSString *)phoneNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (phoneNumber != v10)
  {
    goto LABEL_41;
  }

  url = self->_url;
  v12 = v4[6];
  if (url && v12)
  {
    if (([(NSURL *)url isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (url != v12)
  {
    goto LABEL_41;
  }

  postalAddress = self->_postalAddress;
  v14 = v4[9];
  if (postalAddress && v14)
  {
    if (([(CNPostalAddress *)postalAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (postalAddress != v14)
  {
    goto LABEL_41;
  }

  heroImageURL = self->_heroImageURL;
  v16 = v4[10];
  if (heroImageURL && v16)
  {
    if (([(NSURL *)heroImageURL isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (heroImageURL != v16)
  {
    goto LABEL_41;
  }

  v17 = v4[13];
  v18 = self->_detailedCategory;
  v19 = v17;
  v20 = v19;
  if (v18 == v19)
  {
  }

  else
  {
    if (!v18 || !v19)
    {
      goto LABEL_40;
    }

    v21 = [(NSString *)v18 isEqualToString:v19];

    if (!v21)
    {
      goto LABEL_41;
    }
  }

  v22 = v4[11];
  v18 = self->_heroImageAttributionName;
  v23 = v22;
  v20 = v23;
  if (v18 != v23)
  {
    if (v18 && v23)
    {
      v24 = [(NSString *)v18 isEqualToString:v23];

      if (!v24)
      {
        goto LABEL_41;
      }

      goto LABEL_44;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_44:
  businessChatURL = self->_businessChatURL;
  v28 = v4[15];
  if (businessChatURL && v28)
  {
    if (([(NSURL *)businessChatURL isEqual:?]& 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (businessChatURL != v28)
  {
    goto LABEL_41;
  }

  if (self->_category == v4[12] && self->_identifier == v4[3] && self->_resultProviderIdentifier == *(v4 + 4) && self->_locationLatitude == *(v4 + 7) && self->_locationLongitude == *(v4 + 8))
  {
    v25 = (self->_stylingInfoData == 0) ^ (v4[14] != 0);
    goto LABEL_42;
  }

LABEL_41:
  v25 = 0;
LABEL_42:

  return v25;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_phoneNumber];
  [v3 safelyAddObject:self->_url];
  [v3 safelyAddObject:self->_postalAddress];
  [v3 safelyAddObject:self->_heroImageURL];
  [v3 safelyAddObject:self->_heroImageAttributionName];
  [v3 safelyAddObject:self->_detailedCategory];
  [v3 safelyAddObject:self->_businessChatURL];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_identifier - v4 + 32 * v4;
  v6 = self->_resultProviderIdentifier - v5 + 32 * v5;
  v7 = self->_locationLatitude - v6 + 32 * v6;
  v8 = self->_locationLongitude - v7 + 32 * v7;
  v9 = self->_category - v8 + 32 * v8;

  return v9;
}

- (id)_jsonEncodedPostalAddressString
{
  v2 = [(CNPostalAddress *)self->_postalAddress dictionaryRepresentation];
  if (v2 && ([MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end