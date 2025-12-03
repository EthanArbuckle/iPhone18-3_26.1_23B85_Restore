@interface PKMapsMerchant
+ (void)_deleteDeviceDataFromCloudStoreRecord:(id)record;
+ (void)deleteFromCloudStoreRecord:(id)record codingType:(unint64_t)type;
- (BOOL)hasCloudArchivableDeviceData;
- (BOOL)isCloudArchivableDeviceDataEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMapsMerchant:(id)merchant;
- (CLLocation)location;
- (PKMapsMerchant)initWithCloudStoreCoder:(id)coder;
- (PKMapsMerchant)initWithCoder:(id)coder;
- (id)_jsonEncodedPostalAddressString;
- (id)description;
- (id)jsonRepresentation;
- (id)stylingInfo;
- (unint64_t)hash;
- (void)_encodeDeviceDataForCloudStoreCoder:(id)coder;
- (void)applyPropertiesFromCloudStoreRecord:(id)record;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)setLocation:(id)location;
- (void)setStylingInfoData:(id)data;
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
  absoluteString = [(NSURL *)self->_url absoluteString];
  [v3 setObject:absoluteString forKeyedSubscript:@"url"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationLatitude];
  [v3 setObject:v7 forKeyedSubscript:@"locationLatitude"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationLongitude];
  [v3 setObject:v8 forKeyedSubscript:@"locationLongitude"];

  absoluteString2 = [(NSURL *)self->_heroImageURL absoluteString];
  [v3 setObject:absoluteString2 forKeyedSubscript:@"heroImageURL"];

  [v3 setObject:self->_heroImageAttributionName forKeyedSubscript:@"heroImageAttributionName"];
  v10 = PKMerchantCategoryToString(self->_category);
  [v3 setObject:v10 forKeyedSubscript:@"category"];

  [v3 setObject:self->_detailedCategory forKeyedSubscript:@"detailedCategory"];
  absoluteString3 = [(NSURL *)self->_businessChatURL absoluteString];
  [v3 setObject:absoluteString3 forKeyedSubscript:@"businessChatURL"];

  v12 = [(NSData *)self->_stylingInfoData description];
  [v3 setObject:v12 forKeyedSubscript:@"stylingInfo"];

  v13 = [v3 copy];

  return v13;
}

- (BOOL)isCloudArchivableDeviceDataEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy || self->_identifier != equalCopy[3] || self->_resultProviderIdentifier != *(equalCopy + 4))
  {
    goto LABEL_46;
  }

  v6 = equalCopy[4];
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

- (void)setStylingInfoData:(id)data
{
  objc_storeStrong(&self->_stylingInfoData, data);
  dataCopy = data;
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

- (void)setLocation:(id)location
{
  [location coordinate];
  latitude = v6.latitude;
  longitude = v6.longitude;
  if (CLLocationCoordinate2DIsValid(v6))
  {
    self->_locationLatitude = latitude;
    self->_locationLongitude = longitude;
  }
}

- (PKMapsMerchant)initWithCloudStoreCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKMapsMerchant;
  v5 = [(PKMapsMerchant *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PKMapsMerchant *)v5 applyPropertiesFromCloudStoreRecord:coderCopy];
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

- (void)applyPropertiesFromCloudStoreRecord:(id)record
{
  v4 = [record recordsWithRecordType:@"TransactionDeviceData"];
  firstObject = [v4 firstObject];

  v5 = firstObject;
  if (firstObject)
  {
    self->_identifier = [firstObject pk_encryptedUint64ForKey:@"merchantMapsIdentifier"];
    self->_resultProviderIdentifier = [firstObject pk_encryptedIntForKey:@"merchantResultProviderIdentifier"];
    v6 = [firstObject pk_encryptedStringForKey:@"merchantMapsName"];
    name = self->_name;
    self->_name = v6;

    v8 = [firstObject pk_encryptedUrlForKey:@"merchantBusinessChatURL"];
    businessChatURL = self->_businessChatURL;
    self->_businessChatURL = v8;

    v10 = [firstObject pk_encryptedLocationForKey:@"merchantLocation"];
    [v10 coordinate];
    self->_locationLatitude = v11;
    self->_locationLongitude = v12;
    if (!self->_phoneNumber)
    {
      v13 = [firstObject pk_encryptedStringForKey:@"merchantPhoneNumber"];
      phoneNumber = self->_phoneNumber;
      self->_phoneNumber = v13;
    }

    if (!self->_url)
    {
      v15 = [firstObject pk_encryptedUrlForKey:@"merchantURL"];
      url = self->_url;
      self->_url = v15;
    }

    if (!self->_postalAddress)
    {
      v17 = [firstObject pk_encryptedDictionaryForKey:@"merchantPostalAddress"];
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
      v20 = [firstObject pk_encryptedUrlForKey:@"merchantHeroImageURL"];
      heroImageURL = self->_heroImageURL;
      self->_heroImageURL = v20;
    }

    if (!self->_heroImageAttributionName)
    {
      v22 = [firstObject pk_encryptedStringForKey:@"merchantHeroImageAttributionName"];
      heroImageAttributionName = self->_heroImageAttributionName;
      self->_heroImageAttributionName = v22;
    }

    if (!self->_category)
    {
      v24 = [firstObject pk_encryptedStringForKey:@"merchantCategory"];
      self->_category = PKMerchantCategoryFromString(v24);
    }

    if (!self->_stylingInfoData)
    {
      v25 = [firstObject pk_encryptedDataForKey:@"merchantStylingInfo"];
      stylingInfoData = self->_stylingInfoData;
      self->_stylingInfoData = v25;
    }

    v5 = firstObject;
  }
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [(PKMapsMerchant *)self _encodeDeviceDataForCloudStoreCoder:coder];
  }
}

- (void)_encodeDeviceDataForCloudStoreCoder:(id)coder
{
  v4 = [coder recordsWithRecordType:@"TransactionDeviceData"];
  firstObject = [v4 firstObject];

  encryptedValues = [firstObject encryptedValues];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_identifier];
  [encryptedValues setObject:v6 forKey:@"merchantMapsIdentifier"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_resultProviderIdentifier];
  [encryptedValues setObject:v7 forKey:@"merchantResultProviderIdentifier"];

  [encryptedValues setObject:self->_name forKey:@"merchantMapsName"];
  [encryptedValues setObject:self->_phoneNumber forKey:@"merchantPhoneNumber"];
  absoluteString = [(NSURL *)self->_url absoluteString];
  [encryptedValues setObject:absoluteString forKey:@"merchantURL"];

  location = [(PKMapsMerchant *)self location];
  [encryptedValues setObject:location forKey:@"merchantLocation"];

  _jsonEncodedPostalAddressString = [(PKMapsMerchant *)self _jsonEncodedPostalAddressString];
  [encryptedValues setObject:_jsonEncodedPostalAddressString forKey:@"merchantPostalAddress"];

  absoluteString2 = [(NSURL *)self->_heroImageURL absoluteString];
  [encryptedValues setObject:absoluteString2 forKey:@"merchantHeroImageURL"];

  v12 = PKMerchantCategoryToString(self->_category);
  [encryptedValues setObject:v12 forKey:@"merchantCategory"];

  [encryptedValues setObject:self->_detailedCategory forKey:@"merchantMapsCategory"];
  [encryptedValues setObject:self->_heroImageAttributionName forKey:@"merchantHeroImageAttributionName"];
  [encryptedValues setObject:self->_stylingInfoData forKey:@"merchantStylingInfo"];
  if (PKApplePayContainerEnvironment() == 2)
  {
    absoluteString3 = [(NSURL *)self->_businessChatURL absoluteString];
    [encryptedValues setObject:absoluteString3 forKey:@"merchantBusinessChatURL"];
  }
}

+ (void)deleteFromCloudStoreRecord:(id)record codingType:(unint64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [self _deleteDeviceDataFromCloudStoreRecord:record];
  }
}

+ (void)_deleteDeviceDataFromCloudStoreRecord:(id)record
{
  v3 = [record recordsWithRecordType:@"TransactionDeviceData"];
  firstObject = [v3 firstObject];

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:0 forKey:@"merchantMapsIdentifier"];
  [encryptedValues setObject:0 forKey:@"merchantResultProviderIdentifier"];
  [encryptedValues setObject:0 forKey:@"merchantMapsName"];
  [encryptedValues setObject:0 forKey:@"merchantPhoneNumber"];
  [encryptedValues setObject:0 forKey:@"merchantURL"];
  [encryptedValues setObject:0 forKey:@"merchantLocation"];
  [encryptedValues setObject:0 forKey:@"merchantPostalAddress"];
  [encryptedValues setObject:0 forKey:@"merchantHeroImageURL"];
  [encryptedValues setObject:0 forKey:@"merchantCategory"];
  [encryptedValues setObject:0 forKey:@"merchantMapsCategory"];
  [encryptedValues setObject:0 forKey:@"merchantHeroImageAttributionName"];
  [encryptedValues setObject:0 forKey:@"merchantStylingInfo"];
}

- (PKMapsMerchant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PKMapsMerchant;
  v5 = [(PKMapsMerchant *)&v29 init];
  if (v5)
  {
    v5->_identifier = [coderCopy decodeInt64ForKey:@"identifier"];
    v5->_resultProviderIdentifier = [coderCopy decodeInt32ForKey:@"resultProviderIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v10;

    [coderCopy decodeDoubleForKey:@"locationLatitude"];
    v5->_locationLatitude = v12;
    [coderCopy decodeDoubleForKey:@"locationLongitude"];
    v5->_locationLongitude = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postalAddress"];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"heroImageURL"];
    heroImageURL = v5->_heroImageURL;
    v5->_heroImageURL = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantHeroImageAttributionName"];
    heroImageAttributionName = v5->_heroImageAttributionName;
    v5->_heroImageAttributionName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantStylingInfo"];
    stylingInfoData = v5->_stylingInfoData;
    v5->_stylingInfoData = v20;

    v5->_category = [coderCopy decodeIntegerForKey:@"merchantCategory"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantMapsCategory"];
    detailedCategory = v5->_detailedCategory;
    v5->_detailedCategory = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantBusinessChatURL"];
    businessChatURL = v5->_businessChatURL;
    v5->_businessChatURL = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastProcessedDate"];
    lastProcessedDate = v5->_lastProcessedDate;
    v5->_lastProcessedDate = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeInt64:identifier forKey:@"identifier"];
  [coderCopy encodeInt32:self->_resultProviderIdentifier forKey:@"resultProviderIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeDouble:@"locationLatitude" forKey:self->_locationLatitude];
  [coderCopy encodeDouble:@"locationLongitude" forKey:self->_locationLongitude];
  [coderCopy encodeObject:self->_postalAddress forKey:@"postalAddress"];
  [coderCopy encodeObject:self->_heroImageURL forKey:@"heroImageURL"];
  [coderCopy encodeObject:self->_heroImageAttributionName forKey:@"merchantHeroImageAttributionName"];
  [coderCopy encodeObject:self->_stylingInfoData forKey:@"merchantStylingInfo"];
  [coderCopy encodeInteger:self->_category forKey:@"merchantCategory"];
  [coderCopy encodeObject:self->_detailedCategory forKey:@"merchantMapsCategory"];
  [coderCopy encodeObject:self->_businessChatURL forKey:@"merchantBusinessChatURL"];
  [coderCopy encodeObject:self->_lastProcessedDate forKey:@"lastProcessedDate"];
}

- (id)description
{
  jsonRepresentation = [(PKMapsMerchant *)self jsonRepresentation];
  v4 = [jsonRepresentation mutableCopy];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKMapsMerchant *)self isEqualToMapsMerchant:v5];
  }

  return v6;
}

- (BOOL)isEqualToMapsMerchant:(id)merchant
{
  merchantCopy = merchant;
  name = self->_name;
  v6 = merchantCopy[4];
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
  v10 = merchantCopy[5];
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
  v12 = merchantCopy[6];
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
  v14 = merchantCopy[9];
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
  v16 = merchantCopy[10];
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

  v17 = merchantCopy[13];
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

  v22 = merchantCopy[11];
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
  v28 = merchantCopy[15];
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

  if (self->_category == merchantCopy[12] && self->_identifier == merchantCopy[3] && self->_resultProviderIdentifier == *(merchantCopy + 4) && self->_locationLatitude == *(merchantCopy + 7) && self->_locationLongitude == *(merchantCopy + 8))
  {
    v25 = (self->_stylingInfoData == 0) ^ (merchantCopy[14] != 0);
    goto LABEL_42;
  }

LABEL_41:
  v25 = 0;
LABEL_42:

  return v25;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_name];
  [array safelyAddObject:self->_phoneNumber];
  [array safelyAddObject:self->_url];
  [array safelyAddObject:self->_postalAddress];
  [array safelyAddObject:self->_heroImageURL];
  [array safelyAddObject:self->_heroImageAttributionName];
  [array safelyAddObject:self->_detailedCategory];
  [array safelyAddObject:self->_businessChatURL];
  v4 = PKCombinedHash(17, array);
  v5 = self->_identifier - v4 + 32 * v4;
  v6 = self->_resultProviderIdentifier - v5 + 32 * v5;
  v7 = self->_locationLatitude - v6 + 32 * v6;
  v8 = self->_locationLongitude - v7 + 32 * v7;
  v9 = self->_category - v8 + 32 * v8;

  return v9;
}

- (id)_jsonEncodedPostalAddressString
{
  dictionaryRepresentation = [(CNPostalAddress *)self->_postalAddress dictionaryRepresentation];
  if (dictionaryRepresentation && ([MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
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