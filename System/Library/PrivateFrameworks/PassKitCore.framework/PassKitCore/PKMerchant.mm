@interface PKMerchant
- (BOOL)hasBetterVisualPropertiesThanMerchant:(id)merchant;
- (BOOL)hasCloudArchivableDeviceData;
- (BOOL)isCloudArchivableDeviceDataEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMerchant:(id)merchant;
- (BOOL)shouldBeCombinedWithMerchant:(id)merchant;
- (NSString)detailedCategory;
- (NSString)displayName;
- (NSString)displayNameIgnoringBrand;
- (NSString)heroImageAttribution;
- (NSString)phoneNumber;
- (NSURL)businessChatURL;
- (NSURL)heroImageURL;
- (NSURL)logoImageURL;
- (PKMerchant)initWithCloudStoreCoder:(id)coder;
- (PKMerchant)initWithCoder:(id)coder;
- (id)description;
- (id)jsonDictionaryRepresentation;
- (id)uniqueIdentifier;
- (int64_t)category;
- (unint64_t)hash;
- (void)_encodeDeviceDataWithCloudStoreCoder:(id)coder;
- (void)_encodeServerDataWithCloudStoreCoder:(id)coder;
- (void)_regenerateDisplayName;
- (void)_regenerateDisplayNameIgnoringBrand;
- (void)applyPropertiesFromCloudStoreRecord:(id)record;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)setIsPotentialUnattributedMapsMatch:(BOOL)match;
- (void)setLastForceMerchantReprocessingRequestDate:(id)date;
- (void)setMapsBrand:(id)brand;
- (void)setMapsMerchant:(id)merchant;
- (void)setName:(id)name;
- (void)setRawName:(id)name;
- (void)setUseRawMerchantData:(BOOL)data;
- (void)setWebMerchantName:(id)name;
@end

@implementation PKMerchant

- (PKMerchant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v58.receiver = self;
  v58.super_class = PKMerchant;
  v5 = [(PKMerchant *)&v58 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawName"];
    rawName = v5->_rawName;
    v5->_rawName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"industryCategory"];
    industryCategory = v5->_industryCategory;
    v5->_industryCategory = v12;

    v5->_industryCode = [coderCopy decodeIntegerForKey:@"industryCode"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawCANL"];
    rawCANL = v5->_rawCANL;
    v5->_rawCANL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawCity"];
    rawCity = v5->_rawCity;
    v5->_rawCity = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawState"];
    rawState = v5->_rawState;
    v5->_rawState = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawCountry"];
    rawCountry = v5->_rawCountry;
    v5->_rawCountry = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zip"];
    zip = v5->_zip;
    v5->_zip = v26;

    v5->_cleanConfidenceLevel = [coderCopy decodeIntegerForKey:@"cleanConfidenceLevel"];
    v5->_adamIdentifier = [coderCopy decodeIntegerForKey:@"adamID"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originURL"];
    originURL = v5->_originURL;
    v5->_originURL = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webMerchantIdentifier"];
    webMerchantIdentifier = v5->_webMerchantIdentifier;
    v5->_webMerchantIdentifier = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webMerchantName"];
    webMerchantName = v5->_webMerchantName;
    v5->_webMerchantName = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessConnectBrandIdentifier"];
    businessConnectBrandIdentifier = v5->_businessConnectBrandIdentifier;
    v5->_businessConnectBrandIdentifier = v36;

    v5->_useRawMerchantData = [coderCopy decodeBoolForKey:@"useRawMerchantDataKey"];
    v5->_mapsDataIsFromLocalMatch = [coderCopy decodeBoolForKey:@"localMapsMatch"];
    v5->_isPotentialUnattributedMapsMatch = [coderCopy decodeBoolForKey:@"isPotentialUnattributedMapsMatch"];
    v5->_useDisplayNameIgnoringBrand = [coderCopy decodeBoolForKey:@"useDisplayNameIgnoringBrand"];
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayNameIgnoringBrand"];
    displayNameIgnoringBrand = v5->_displayNameIgnoringBrand;
    v5->_displayNameIgnoringBrand = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackLogoImageURL"];
    fallbackLogoImageURL = v5->_fallbackLogoImageURL;
    v5->_fallbackLogoImageURL = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapsMerchant"];
    mapsMerchant = v5->_mapsMerchant;
    v5->_mapsMerchant = v42;

    if (!v5->_mapsMerchant)
    {
      v44 = [coderCopy decodeInt64ForKey:@"identifier"];
      if (v44)
      {
        v45 = v44;
        v46 = objc_alloc_init(PKMapsMerchant);
        [(PKMapsMerchant *)v46 setIdentifier:v45];
        -[PKMapsMerchant setResultProviderIdentifier:](v46, "setResultProviderIdentifier:", [coderCopy decodeInt32ForKey:@"resultProviderIdentifier"]);
        v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapsName"];
        [(PKMapsMerchant *)v46 setName:v47];

        v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
        [(PKMapsMerchant *)v46 setPhoneNumber:v48];

        v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
        [(PKMapsMerchant *)v46 setURL:v49];

        [coderCopy decodeDoubleForKey:@"locationLatitude"];
        [(PKMapsMerchant *)v46 setLocationLatitude:?];
        [coderCopy decodeDoubleForKey:@"locationLongitude"];
        [(PKMapsMerchant *)v46 setLocationLongitude:?];
        v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postalAddress"];
        [(PKMapsMerchant *)v46 setPostalAddress:v50];

        if ([(PKMapsMerchant *)v46 isValid])
        {
          objc_storeStrong(&v5->_mapsMerchant, v46);
        }
      }
    }

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapsBrand"];
    mapsBrand = v5->_mapsBrand;
    v5->_mapsBrand = v51;

    v5->_fallbackcategory = [coderCopy decodeIntegerForKey:@"merchantFallbackCategory"];
    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantFallbackMapsCategory"];
    fallbackDetailedCategory = v5->_fallbackDetailedCategory;
    v5->_fallbackDetailedCategory = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastForceMerchantReprocessingRequestDate"];
    lastForceMerchantReprocessingRequestDate = v5->_lastForceMerchantReprocessingRequestDate;
    v5->_lastForceMerchantReprocessingRequestDate = v55;

    if (!v5->_displayName)
    {
      [(PKMerchant *)v5 _regenerateDisplayName];
    }

    if (!v5->_displayNameIgnoringBrand)
    {
      [(PKMerchant *)v5 _regenerateDisplayNameIgnoringBrand];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PKMerchant *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  rawName = [(PKMerchant *)self rawName];
  [coderCopy encodeObject:rawName forKey:@"rawName"];

  displayName = [(PKMerchant *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  industryCategory = [(PKMerchant *)self industryCategory];
  [coderCopy encodeObject:industryCategory forKey:@"industryCategory"];

  [coderCopy encodeInteger:-[PKMerchant industryCode](self forKey:{"industryCode"), @"industryCode"}];
  rawCANL = [(PKMerchant *)self rawCANL];
  [coderCopy encodeObject:rawCANL forKey:@"rawCANL"];

  rawCity = [(PKMerchant *)self rawCity];
  [coderCopy encodeObject:rawCity forKey:@"rawCity"];

  rawState = [(PKMerchant *)self rawState];
  [coderCopy encodeObject:rawState forKey:@"rawState"];

  rawCountry = [(PKMerchant *)self rawCountry];
  [coderCopy encodeObject:rawCountry forKey:@"rawCountry"];

  city = [(PKMerchant *)self city];
  [coderCopy encodeObject:city forKey:@"city"];

  state = [(PKMerchant *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  v15 = [(PKMerchant *)self zip];
  [coderCopy encodeObject:v15 forKey:@"zip"];

  [coderCopy encodeInteger:-[PKMerchant cleanConfidenceLevel](self forKey:{"cleanConfidenceLevel"), @"cleanConfidenceLevel"}];
  [coderCopy encodeInteger:-[PKMerchant adamIdentifier](self forKey:{"adamIdentifier"), @"adamID"}];
  originURL = [(PKMerchant *)self originURL];
  [coderCopy encodeObject:originURL forKey:@"originURL"];

  webMerchantIdentifier = [(PKMerchant *)self webMerchantIdentifier];
  [coderCopy encodeObject:webMerchantIdentifier forKey:@"webMerchantIdentifier"];

  webMerchantName = [(PKMerchant *)self webMerchantName];
  [coderCopy encodeObject:webMerchantName forKey:@"webMerchantName"];

  merchantIdentifier = [(PKMerchant *)self merchantIdentifier];
  [coderCopy encodeObject:merchantIdentifier forKey:@"merchantIdentifier"];

  mapsMerchant = [(PKMerchant *)self mapsMerchant];
  [coderCopy encodeObject:mapsMerchant forKey:@"mapsMerchant"];

  mapsBrand = [(PKMerchant *)self mapsBrand];
  [coderCopy encodeObject:mapsBrand forKey:@"mapsBrand"];

  [coderCopy encodeInteger:-[PKMerchant fallbackcategory](self forKey:{"fallbackcategory"), @"merchantFallbackCategory"}];
  fallbackDetailedCategory = [(PKMerchant *)self fallbackDetailedCategory];
  [coderCopy encodeObject:fallbackDetailedCategory forKey:@"merchantFallbackMapsCategory"];

  [coderCopy encodeBool:-[PKMerchant useRawMerchantData](self forKey:{"useRawMerchantData"), @"useRawMerchantDataKey"}];
  [coderCopy encodeBool:-[PKMerchant isPotentialUnattributedMapsMatch](self forKey:{"isPotentialUnattributedMapsMatch"), @"isPotentialUnattributedMapsMatch"}];
  [coderCopy encodeBool:-[PKMerchant mapsDataIsFromLocalMatch](self forKey:{"mapsDataIsFromLocalMatch"), @"localMapsMatch"}];
  [coderCopy encodeBool:-[PKMerchant useDisplayNameIgnoringBrand](self forKey:{"useDisplayNameIgnoringBrand"), @"useDisplayNameIgnoringBrand"}];
  displayNameIgnoringBrand = [(PKMerchant *)self displayNameIgnoringBrand];
  [coderCopy encodeObject:displayNameIgnoringBrand forKey:@"displayNameIgnoringBrand"];

  fallbackLogoImageURL = [(PKMerchant *)self fallbackLogoImageURL];
  [coderCopy encodeObject:fallbackLogoImageURL forKey:@"fallbackLogoImageURL"];

  lastForceMerchantReprocessingRequestDate = [(PKMerchant *)self lastForceMerchantReprocessingRequestDate];
  [coderCopy encodeObject:lastForceMerchantReprocessingRequestDate forKey:@"lastForceMerchantReprocessingRequestDate"];

  businessConnectBrandIdentifier = [(PKMerchant *)self businessConnectBrandIdentifier];
  [coderCopy encodeObject:businessConnectBrandIdentifier forKey:@"businessConnectBrandIdentifier"];
}

- (PKMerchant)initWithCloudStoreCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKMerchant;
  v5 = [(PKMerchant *)&v11 init];
  if (v5)
  {
    v6 = [[PKMapsMerchant alloc] initWithCloudStoreCoder:coderCopy];
    mapsMerchant = v5->_mapsMerchant;
    v5->_mapsMerchant = v6;

    v8 = [[PKMapsBrand alloc] initWithCloudStoreCoder:coderCopy];
    mapsBrand = v5->_mapsBrand;
    v5->_mapsBrand = v8;

    [(PKMerchant *)v5 applyPropertiesFromCloudStoreRecord:coderCopy];
  }

  if (![(PKMerchant *)v5 isValid])
  {

    v5 = 0;
  }

  return v5;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy recordsWithRecordType:@"Transaction"];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    v6 = [firstObject pk_encryptedStringForKey:@"merchantName"];
    name = self->_name;
    self->_name = v6;

    v8 = [firstObject pk_encryptedStringForKey:@"merchantRawName"];
    rawName = self->_rawName;
    self->_rawName = v8;

    self->_industryCode = [firstObject pk_encryptedIntegerForKey:@"merchantIndustryCode"];
    v10 = [firstObject pk_encryptedStringForKey:@"merchantIndustryCategory"];
    industryCategory = self->_industryCategory;
    self->_industryCategory = v10;

    v12 = [firstObject pk_encryptedStringForKey:@"merchantRawCANL"];
    rawCANL = self->_rawCANL;
    self->_rawCANL = v12;

    v14 = [firstObject pk_encryptedStringForKey:@"merchantRawCity"];
    rawCity = self->_rawCity;
    self->_rawCity = v14;

    v16 = [firstObject pk_encryptedStringForKey:@"merchantRawState"];
    rawState = self->_rawState;
    self->_rawState = v16;

    v18 = [firstObject pk_encryptedStringForKey:@"merchantRawCountry"];
    rawCountry = self->_rawCountry;
    self->_rawCountry = v18;

    v20 = [firstObject pk_encryptedStringForKey:@"merchantCity"];
    city = self->_city;
    self->_city = v20;

    v22 = [firstObject pk_encryptedStringForKey:@"merchantZip"];
    zip = self->_zip;
    self->_zip = v22;

    v24 = [firstObject pk_encryptedStringForKey:@"merchantState"];
    state = self->_state;
    self->_state = v24;

    self->_cleanConfidenceLevel = [firstObject pk_encryptedIntegerForKey:@"merchantCleanConfidenceLevel"];
    v26 = [firstObject pk_encryptedStringForKey:@"merchantIdentifier"];
    merchantIdentifier = self->_merchantIdentifier;
    self->_merchantIdentifier = v26;

    v28 = [firstObject pk_encryptedDateForKey:@"lastForceMerchantReprocessingRequestDate"];
    lastForceMerchantReprocessingRequestDate = self->_lastForceMerchantReprocessingRequestDate;
    self->_lastForceMerchantReprocessingRequestDate = v28;
  }

  v30 = [recordCopy recordsWithRecordType:@"TransactionDeviceData"];
  firstObject2 = [v30 firstObject];

  if (firstObject2)
  {
    v32 = [firstObject2 pk_encryptedStringForKey:@"merchantFallbackCategory"];
    self->_fallbackcategory = PKMerchantCategoryFromString(v32);

    v33 = [firstObject2 pk_encryptedStringForKey:@"merchantFallbackMapsCategory"];
    fallbackDetailedCategory = self->_fallbackDetailedCategory;
    self->_fallbackDetailedCategory = v33;

    self->_adamIdentifier = [firstObject2 pk_encryptedIntegerForKey:@"adamID"];
    v35 = [firstObject2 pk_encryptedUrlForKey:@"originURL"];
    originURL = self->_originURL;
    self->_originURL = v35;

    v37 = [firstObject2 pk_encryptedStringForKey:@"webMerchantIdentifier"];
    webMerchantIdentifier = self->_webMerchantIdentifier;
    self->_webMerchantIdentifier = v37;

    v39 = [firstObject2 pk_encryptedStringForKey:@"webMerchantName"];
    webMerchantName = self->_webMerchantName;
    self->_webMerchantName = v39;

    self->_useRawMerchantData = [firstObject2 pk_encryptedBoolForKey:@"useRawMerchantDataKey"];
    mapsMerchant = self->_mapsMerchant;
    if (mapsMerchant)
    {
      [(PKMapsMerchant *)mapsMerchant applyPropertiesFromCloudStoreRecord:recordCopy];
    }

    else
    {
      v42 = [[PKMapsMerchant alloc] initWithCloudStoreCoder:recordCopy];
      v43 = self->_mapsMerchant;
      self->_mapsMerchant = v42;
    }

    mapsBrand = self->_mapsBrand;
    if (mapsBrand)
    {
      [(PKMapsBrand *)mapsBrand applyPropertiesFromCloudStoreRecord:recordCopy];
    }

    else
    {
      v45 = [[PKMapsBrand alloc] initWithCloudStoreCoder:recordCopy];
      v46 = self->_mapsBrand;
      self->_mapsBrand = v45;
    }
  }
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  coderCopy = coder;
  mapsMerchant = self->_mapsMerchant;
  v10 = coderCopy;
  if (mapsMerchant)
  {
    [(PKMapsMerchant *)mapsMerchant encodeWithCloudStoreCoder:coderCopy codingType:type];
  }

  else
  {
    [PKMapsMerchant deleteFromCloudStoreRecord:coderCopy codingType:type];
  }

  mapsBrand = self->_mapsBrand;
  if (mapsBrand)
  {
    [(PKMapsBrand *)mapsBrand encodeWithCloudStoreCoder:v10 codingType:type];
  }

  else
  {
    [PKMapsBrand deleteFromCloudStoreRecord:v10 codingType:type];
  }

  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [(PKMerchant *)self _encodeDeviceDataWithCloudStoreCoder:v10];
  }

  v9 = v10;
  if (type - 1 <= 1)
  {
    [(PKMerchant *)self _encodeServerDataWithCloudStoreCoder:v10];
    v9 = v10;
  }
}

- (void)_encodeDeviceDataWithCloudStoreCoder:(id)coder
{
  v4 = [coder recordsWithRecordType:@"TransactionDeviceData"];
  firstObject = [v4 firstObject];

  encryptedValues = [firstObject encryptedValues];
  v6 = PKMerchantCategoryToString(self->_fallbackcategory);
  [encryptedValues setObject:v6 forKey:@"merchantFallbackCategory"];

  [encryptedValues setObject:self->_fallbackDetailedCategory forKey:@"merchantFallbackMapsCategory"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_adamIdentifier];
  [encryptedValues setObject:v7 forKey:@"adamID"];

  absoluteString = [(NSURL *)self->_originURL absoluteString];
  [encryptedValues setObject:absoluteString forKey:@"originURL"];

  [encryptedValues setObject:self->_webMerchantIdentifier forKey:@"webMerchantIdentifier"];
  [encryptedValues setObject:self->_webMerchantName forKey:@"webMerchantName"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_useRawMerchantData];
  [encryptedValues setObject:v9 forKey:@"useRawMerchantDataKey"];
}

- (void)_encodeServerDataWithCloudStoreCoder:(id)coder
{
  v4 = [coder recordsWithRecordType:@"Transaction"];
  firstObject = [v4 firstObject];

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:self->_name forKey:@"merchantName"];
  [encryptedValues setObject:self->_rawName forKey:@"merchantRawName"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_industryCode];
  [encryptedValues setObject:v6 forKey:@"merchantIndustryCode"];

  [encryptedValues setObject:self->_industryCategory forKey:@"merchantIndustryCategory"];
  [encryptedValues setObject:self->_rawCANL forKey:@"merchantRawCANL"];
  [encryptedValues setObject:self->_rawCity forKey:@"merchantRawCity"];
  [encryptedValues setObject:self->_rawState forKey:@"merchantRawState"];
  [encryptedValues setObject:self->_rawCountry forKey:@"merchantRawCountry"];
  [encryptedValues setObject:self->_city forKey:@"merchantCity"];
  [encryptedValues setObject:self->_zip forKey:@"merchantZip"];
  [encryptedValues setObject:self->_state forKey:@"merchantState"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cleanConfidenceLevel];
  [encryptedValues setObject:v7 forKey:@"merchantCleanConfidenceLevel"];

  [encryptedValues setObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
}

- (BOOL)isCloudArchivableDeviceDataEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy || self->_fallbackcategory != *(equalCopy + 22))
  {
    goto LABEL_30;
  }

  v6 = *(equalCopy + 23);
  v7 = self->_fallbackDetailedCategory;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

      goto LABEL_30;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_30;
    }
  }

  if (self->_adamIdentifier != *(v5 + 7))
  {
LABEL_30:
    v17 = 0;
    goto LABEL_31;
  }

  originURL = self->_originURL;
  v12 = *(v5 + 4);
  if (originURL && v12)
  {
    if (([(NSURL *)originURL isEqual:?]& 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (originURL != v12)
  {
    goto LABEL_30;
  }

  webMerchantName = self->_webMerchantName;
  v14 = *(v5 + 6);
  if (webMerchantName && v14)
  {
    if (([(NSString *)webMerchantName isEqual:?]& 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (webMerchantName != v14)
  {
    goto LABEL_30;
  }

  webMerchantIdentifier = self->_webMerchantIdentifier;
  v16 = *(v5 + 5);
  if (!webMerchantIdentifier || !v16)
  {
    if (webMerchantIdentifier == v16)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (([(NSString *)webMerchantIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (self->_useRawMerchantData != v5[8] || ![(PKMapsMerchant *)self->_mapsMerchant isCloudArchivableDeviceDataEqual:*(v5 + 25)]|| ![(PKMapsBrand *)self->_mapsBrand isCloudArchivableDeviceDataEqual:*(v5 + 26)])
  {
    goto LABEL_30;
  }

  v17 = self->_mapsDataIsFromLocalMatch == v5[10];
LABEL_31:

  return v17;
}

- (BOOL)hasCloudArchivableDeviceData
{
  if (self->_fallbackcategory || self->_fallbackDetailedCategory || self->_adamIdentifier || self->_originURL || self->_webMerchantIdentifier || self->_webMerchantName || self->_useRawMerchantData || [(PKMapsMerchant *)self->_mapsMerchant hasCloudArchivableDeviceData])
  {
    return 1;
  }

  mapsBrand = self->_mapsBrand;

  return [(PKMapsBrand *)mapsBrand hasCloudArchivableDeviceData];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_name];
  [array safelyAddObject:self->_rawName];
  [array safelyAddObject:self->_displayName];
  [array safelyAddObject:self->_industryCategory];
  [array safelyAddObject:self->_rawCANL];
  [array safelyAddObject:self->_rawCity];
  [array safelyAddObject:self->_rawState];
  [array safelyAddObject:self->_rawCountry];
  [array safelyAddObject:self->_city];
  [array safelyAddObject:self->_state];
  [array safelyAddObject:self->_zip];
  [array safelyAddObject:self->_originURL];
  [array safelyAddObject:self->_webMerchantName];
  [array safelyAddObject:self->_webMerchantIdentifier];
  [array safelyAddObject:self->_merchantIdentifier];
  [array safelyAddObject:self->_mapsMerchant];
  [array safelyAddObject:self->_mapsBrand];
  [array safelyAddObject:self->_fallbackDetailedCategory];
  [array safelyAddObject:self->_lastForceMerchantReprocessingRequestDate];
  [array safelyAddObject:self->_businessConnectBrandIdentifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_industryCode - v4 + 32 * v4;
  v6 = self->_cleanConfidenceLevel - v5 + 32 * v5;
  v7 = self->_adamIdentifier - v6 + 32 * v6;
  v8 = self->_fallbackcategory - v7 + 32 * v7;
  v9 = self->_useRawMerchantData - v8 + 32 * v8;
  v10 = self->_isPotentialUnattributedMapsMatch - v9 + 32 * v9;
  v11 = self->_useDisplayNameIgnoringBrand - v10 + 32 * v10;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKMerchant *)self isEqualToMerchant:v5];
  }

  return v6;
}

- (BOOL)isEqualToMerchant:(id)merchant
{
  merchantCopy = merchant;
  name = self->_name;
  v6 = merchantCopy[11];
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
      goto LABEL_115;
    }
  }

  else if (([(NSString *)name isEqual:?]& 1) == 0)
  {
    goto LABEL_115;
  }

  rawName = self->_rawName;
  v9 = merchantCopy[12];
  if (rawName && v9)
  {
    if (([(NSString *)rawName isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (rawName != v9)
  {
    goto LABEL_115;
  }

  displayName = self->_displayName;
  v11 = merchantCopy[2];
  if (displayName && v11)
  {
    if (([(NSString *)displayName isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (displayName != v11)
  {
    goto LABEL_115;
  }

  industryCategory = self->_industryCategory;
  v13 = merchantCopy[10];
  if (industryCategory && v13)
  {
    if (([(NSString *)industryCategory isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (industryCategory != v13)
  {
    goto LABEL_115;
  }

  rawCANL = self->_rawCANL;
  v15 = merchantCopy[14];
  if (rawCANL && v15)
  {
    if (([(NSString *)rawCANL isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (rawCANL != v15)
  {
    goto LABEL_115;
  }

  rawCity = self->_rawCity;
  v17 = merchantCopy[15];
  if (rawCity && v17)
  {
    if (([(NSString *)rawCity isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (rawCity != v17)
  {
    goto LABEL_115;
  }

  rawState = self->_rawState;
  v19 = merchantCopy[16];
  if (rawState && v19)
  {
    if (([(NSString *)rawState isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (rawState != v19)
  {
    goto LABEL_115;
  }

  rawCountry = self->_rawCountry;
  v21 = merchantCopy[17];
  if (rawCountry && v21)
  {
    if (([(NSString *)rawCountry isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (rawCountry != v21)
  {
    goto LABEL_115;
  }

  city = self->_city;
  v23 = merchantCopy[18];
  if (city && v23)
  {
    if (([(NSString *)city isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (city != v23)
  {
    goto LABEL_115;
  }

  state = self->_state;
  v25 = merchantCopy[19];
  if (state && v25)
  {
    if (([(NSString *)state isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (state != v25)
  {
    goto LABEL_115;
  }

  zip = self->_zip;
  v27 = merchantCopy[20];
  if (zip && v27)
  {
    if (([(NSString *)zip isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (zip != v27)
  {
    goto LABEL_115;
  }

  originURL = self->_originURL;
  v29 = merchantCopy[4];
  if (originURL && v29)
  {
    if (([(NSURL *)originURL isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (originURL != v29)
  {
    goto LABEL_115;
  }

  webMerchantName = self->_webMerchantName;
  v31 = merchantCopy[6];
  if (webMerchantName && v31)
  {
    if (([(NSString *)webMerchantName isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (webMerchantName != v31)
  {
    goto LABEL_115;
  }

  webMerchantIdentifier = self->_webMerchantIdentifier;
  v33 = merchantCopy[5];
  if (webMerchantIdentifier && v33)
  {
    if (([(NSString *)webMerchantIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (webMerchantIdentifier != v33)
  {
    goto LABEL_115;
  }

  merchantIdentifier = self->_merchantIdentifier;
  v35 = merchantCopy[13];
  if (merchantIdentifier && v35)
  {
    if (([(NSString *)merchantIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (merchantIdentifier != v35)
  {
    goto LABEL_115;
  }

  mapsMerchant = self->_mapsMerchant;
  v37 = merchantCopy[25];
  if (mapsMerchant && v37)
  {
    if (![(PKMapsMerchant *)mapsMerchant isEqual:?])
    {
      goto LABEL_115;
    }
  }

  else if (mapsMerchant != v37)
  {
    goto LABEL_115;
  }

  mapsBrand = self->_mapsBrand;
  v39 = merchantCopy[26];
  if (mapsBrand && v39)
  {
    if (![(PKMapsBrand *)mapsBrand isEqual:?])
    {
      goto LABEL_115;
    }
  }

  else if (mapsBrand != v39)
  {
    goto LABEL_115;
  }

  fallbackDetailedCategory = self->_fallbackDetailedCategory;
  v41 = merchantCopy[23];
  if (fallbackDetailedCategory && v41)
  {
    if (([(NSString *)fallbackDetailedCategory isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (fallbackDetailedCategory != v41)
  {
    goto LABEL_115;
  }

  fallbackLogoImageURL = self->_fallbackLogoImageURL;
  v43 = merchantCopy[24];
  if (fallbackLogoImageURL && v43)
  {
    if (([(NSURL *)fallbackLogoImageURL isEqual:?]& 1) == 0)
    {
      goto LABEL_115;
    }
  }

  else if (fallbackLogoImageURL != v43)
  {
    goto LABEL_115;
  }

  businessConnectBrandIdentifier = self->_businessConnectBrandIdentifier;
  v45 = merchantCopy[8];
  if (!businessConnectBrandIdentifier || !v45)
  {
    if (businessConnectBrandIdentifier == v45)
    {
      goto LABEL_104;
    }

LABEL_115:
    v48 = 0;
    goto LABEL_116;
  }

  if (([(NSString *)businessConnectBrandIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_104:
  if (self->_industryCode != merchantCopy[9] || self->_cleanConfidenceLevel != merchantCopy[21] || self->_adamIdentifier != merchantCopy[7] || self->_fallbackcategory != merchantCopy[22] || self->_useRawMerchantData != *(merchantCopy + 8) || self->_isPotentialUnattributedMapsMatch != *(merchantCopy + 11) || self->_useDisplayNameIgnoringBrand != *(merchantCopy + 9) || self->_mapsDataIsFromLocalMatch != *(merchantCopy + 10))
  {
    goto LABEL_115;
  }

  lastForceMerchantReprocessingRequestDate = self->_lastForceMerchantReprocessingRequestDate;
  v47 = merchantCopy[27];
  if (lastForceMerchantReprocessingRequestDate && v47)
  {
    v48 = [(NSDate *)lastForceMerchantReprocessingRequestDate isEqual:?];
  }

  else
  {
    v48 = lastForceMerchantReprocessingRequestDate == v47;
  }

LABEL_116:

  return v48;
}

- (id)description
{
  jsonDictionaryRepresentation = [(PKMerchant *)self jsonDictionaryRepresentation];
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jsonDictionaryRepresentation options:2 error:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@: %p %@>", v8, self, v5];;

  return v9;
}

- (id)jsonDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_industryCode];
  [v3 setObject:v4 forKeyedSubscript:@"industryCode"];

  [v3 setObject:self->_industryCategory forKeyedSubscript:@"industryCategory"];
  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:self->_rawName forKeyedSubscript:@"rawName"];
  [v3 setObject:self->_displayName forKeyedSubscript:@"displayName"];
  [v3 setObject:self->_rawCANL forKeyedSubscript:@"rawCANL"];
  [v3 setObject:self->_rawCity forKeyedSubscript:@"rawCity"];
  [v3 setObject:self->_rawState forKeyedSubscript:@"rawState"];
  [v3 setObject:self->_rawCountry forKeyedSubscript:@"rawCountry"];
  [v3 setObject:self->_city forKeyedSubscript:@"city"];
  [v3 setObject:self->_state forKeyedSubscript:@"state"];
  [v3 setObject:self->_zip forKeyedSubscript:@"zip"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cleanConfidenceLevel];
  [v3 setObject:v5 forKeyedSubscript:@"cleanConfidenceLevel"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKMerchant isValid](self, "isValid")}];
  [v3 setObject:v6 forKeyedSubscript:@"isValid"];

  originURL = [(PKMerchant *)self originURL];
  absoluteString = [originURL absoluteString];
  [v3 setObject:absoluteString forKeyedSubscript:@"originURL"];

  [v3 setObject:self->_webMerchantIdentifier forKeyedSubscript:@"webMerchantID"];
  [v3 setObject:self->_webMerchantName forKeyedSubscript:@"webMerchantName"];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKMerchant adamIdentifier](self, "adamIdentifier")}];
  [v3 setObject:v9 forKeyedSubscript:@"adamID"];

  merchantIdentifier = [(PKMerchant *)self merchantIdentifier];
  [v3 setObject:merchantIdentifier forKeyedSubscript:@"merchantIdentifier"];

  jsonRepresentation = [(PKMapsMerchant *)self->_mapsMerchant jsonRepresentation];
  [v3 setObject:jsonRepresentation forKeyedSubscript:@"mapsMerchant"];

  jsonRepresentation2 = [(PKMapsBrand *)self->_mapsBrand jsonRepresentation];
  [v3 setObject:jsonRepresentation2 forKeyedSubscript:@"mapsBrand"];

  v13 = PKMerchantCategoryToString(self->_fallbackcategory);
  [v3 setObject:v13 forKeyedSubscript:@"fallbackCategory"];

  [v3 setObject:self->_fallbackDetailedCategory forKeyedSubscript:@"fallbackDetailedCategory"];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_useRawMerchantData];
  [v3 setObject:v14 forKeyedSubscript:@"useRawMerchantData"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPotentialUnattributedMapsMatch];
  [v3 setObject:v15 forKeyedSubscript:@"isPotentialUnattributedMapsMatch"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_useDisplayNameIgnoringBrand];
  [v3 setObject:v16 forKeyedSubscript:@"useDisplayNameIgnoringBrand"];

  [v3 setObject:self->_displayNameIgnoringBrand forKeyedSubscript:@"displayNameIgnoringBrand"];
  absoluteString2 = [(NSURL *)self->_fallbackLogoImageURL absoluteString];
  [v3 setObject:absoluteString2 forKeyedSubscript:@"fallbackLogoImageURL"];

  v18 = PKW3CDateStringFromDate(self->_lastForceMerchantReprocessingRequestDate);
  [v3 setObject:v18 forKeyedSubscript:@"lastForceMerchantReprocessingRequestDate"];

  [v3 setObject:self->_businessConnectBrandIdentifier forKeyedSubscript:@"businessConnectBrandIdentifier"];
  v19 = [v3 copy];

  return v19;
}

- (void)setMapsMerchant:(id)merchant
{
  merchantCopy = merchant;
  if (self->_mapsMerchant != merchantCopy)
  {
    v6 = merchantCopy;
    objc_storeStrong(&self->_mapsMerchant, merchant);
    [(PKMerchant *)self _regenerateDisplayName];
    [(PKMerchant *)self _regenerateDisplayNameIgnoringBrand];
    merchantCopy = v6;
  }
}

- (void)setMapsBrand:(id)brand
{
  brandCopy = brand;
  if (self->_mapsBrand != brandCopy)
  {
    v6 = brandCopy;
    objc_storeStrong(&self->_mapsBrand, brand);
    [(PKMerchant *)self _regenerateDisplayName];
    brandCopy = v6;
  }
}

- (void)setName:(id)name
{
  if (self->_name != name)
  {
    v5 = [name copy];
    name = self->_name;
    self->_name = v5;

    [(PKMerchant *)self _regenerateDisplayName];
  }
}

- (void)setRawName:(id)name
{
  if (self->_rawName != name)
  {
    v5 = [name copy];
    rawName = self->_rawName;
    self->_rawName = v5;

    [(PKMerchant *)self _regenerateDisplayName];
  }
}

- (void)setUseRawMerchantData:(BOOL)data
{
  if (self->_useRawMerchantData == !data)
  {
    self->_useRawMerchantData = data;
    [(PKMerchant *)self _regenerateDisplayName];
  }
}

- (void)setIsPotentialUnattributedMapsMatch:(BOOL)match
{
  if (self->_isPotentialUnattributedMapsMatch == !match)
  {
    self->_isPotentialUnattributedMapsMatch = match;
    [(PKMerchant *)self _regenerateDisplayName];
  }
}

- (void)setWebMerchantName:(id)name
{
  nameCopy = name;
  if (self->_webMerchantName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->_webMerchantName, name);
    [(PKMerchant *)self _regenerateDisplayName];
    nameCopy = v6;
  }
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    [(PKMerchant *)self _regenerateDisplayName];
    displayName = self->_displayName;
  }

  return displayName;
}

- (NSString)displayNameIgnoringBrand
{
  displayNameIgnoringBrand = self->_displayNameIgnoringBrand;
  if (!displayNameIgnoringBrand)
  {
    [(PKMerchant *)self _regenerateDisplayNameIgnoringBrand];
    displayNameIgnoringBrand = self->_displayNameIgnoringBrand;
  }

  return displayNameIgnoringBrand;
}

- (NSURL)heroImageURL
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches])
  {
    v3 = 0;
  }

  else
  {
    heroImageURL = [(PKMapsMerchant *)self->_mapsMerchant heroImageURL];
    v5 = heroImageURL;
    if (heroImageURL)
    {
      heroImageURL2 = heroImageURL;
    }

    else
    {
      heroImageURL2 = [(PKMapsBrand *)self->_mapsBrand heroImageURL];
    }

    v3 = heroImageURL2;
  }

  return v3;
}

- (NSURL)logoImageURL
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches]|| ([(PKMapsBrand *)self->_mapsBrand logoURL], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = self->_fallbackLogoImageURL;
  }

  return v3;
}

- (NSString)heroImageAttribution
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches])
  {
    goto LABEL_2;
  }

  p_mapsMerchant = &self->_mapsMerchant;
  heroImageURL = [(PKMapsMerchant *)self->_mapsMerchant heroImageURL];

  if (!heroImageURL)
  {
    mapsBrand = self->_mapsBrand;
    p_mapsBrand = &self->_mapsBrand;
    heroImageURL2 = [(PKMapsBrand *)mapsBrand heroImageURL];

    if (!heroImageURL2)
    {
LABEL_2:
      heroImageAttributionName = 0;
      goto LABEL_7;
    }

    p_mapsMerchant = p_mapsBrand;
  }

  heroImageAttributionName = [(PKMapsMerchant *)*p_mapsMerchant heroImageAttributionName];
LABEL_7:

  return heroImageAttributionName;
}

- (NSString)phoneNumber
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches])
  {
    v3 = 0;
  }

  else
  {
    phoneNumber = [(PKMapsMerchant *)self->_mapsMerchant phoneNumber];
    v5 = phoneNumber;
    if (phoneNumber)
    {
      phoneNumber2 = phoneNumber;
    }

    else
    {
      phoneNumber2 = [(PKMapsBrand *)self->_mapsBrand phoneNumber];
    }

    v3 = phoneNumber2;
  }

  return v3;
}

- (NSURL)businessChatURL
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches])
  {
    v3 = 0;
  }

  else
  {
    businessChatURL = [(PKMapsMerchant *)self->_mapsMerchant businessChatURL];
    v5 = businessChatURL;
    if (businessChatURL)
    {
      businessChatURL2 = businessChatURL;
    }

    else
    {
      businessChatURL2 = [(PKMapsBrand *)self->_mapsBrand businessChatURL];
    }

    v3 = businessChatURL2;
  }

  return v3;
}

- (int64_t)category
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches])
  {
    return self->_fallbackcategory;
  }

  category = [(PKMapsBrand *)self->_mapsBrand category];
  result = [(PKMapsMerchant *)self->_mapsMerchant category];
  v5 = result;
  if (category)
  {
    result = category;
  }

  if (!(category | v5))
  {
    return self->_fallbackcategory;
  }

  return result;
}

- (NSString)detailedCategory
{
  if (![(PKMerchant *)self shouldIgnoreMapsMatches]&& (([(PKMapsBrand *)self->_mapsBrand detailedCategory], v4 = objc_claimAutoreleasedReturnValue(), [(PKMapsMerchant *)self->_mapsMerchant detailedCategory], v5 = objc_claimAutoreleasedReturnValue(), v6 = v5, (v7 = v4) != 0) || (v7 = v5) != 0))
  {
    v3 = v7;
  }

  else
  {
    v3 = self->_fallbackDetailedCategory;
  }

  return v3;
}

- (void)_regenerateDisplayName
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches])
  {
    v3 = 0;
    goto LABEL_19;
  }

  name = [(PKMapsMerchant *)self->_mapsMerchant name];
  name2 = [(PKMapsBrand *)self->_mapsBrand name];
  v6 = [name2 length];
  v7 = [name length];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v10 = [name containsString:name2];
    v9 = name2;
    if ((v10 & 1) == 0)
    {
      if ([name2 containsString:name])
      {
        v9 = name2;
      }

      else
      {
        v9 = name;
      }
    }

    goto LABEL_17;
  }

  if (v6)
  {
    v9 = name2;
  }

  else
  {
    v9 = name;
  }

  if (v7 | v6)
  {
LABEL_17:
    v3 = v9;
    goto LABEL_18;
  }

  v3 = 0;
LABEL_18:

LABEL_19:
  if (![v3 length])
  {
    v11 = self->_webMerchantName;

    if (![(NSString *)v11 length])
    {
      name = self->_name;
      if (!name)
      {
        name = self->_rawName;
      }

      v13 = name;

      v11 = v13;
    }

    v3 = PKMerchantFormattedDisplayName(v11);
  }

  displayName = self->_displayName;
  self->_displayName = v3;
}

- (void)_regenerateDisplayNameIgnoringBrand
{
  name = [(PKMapsMerchant *)self->_mapsMerchant name];
  v3 = PKMerchantFormattedDisplayName(name);
  displayNameIgnoringBrand = self->_displayNameIgnoringBrand;
  self->_displayNameIgnoringBrand = v3;
}

- (void)setLastForceMerchantReprocessingRequestDate:(id)date
{
  dateCopy = date;
  if ((dateCopy != 0) == (self->_lastForceMerchantReprocessingRequestDate == 0))
  {
    v6 = dateCopy;
    objc_storeStrong(&self->_lastForceMerchantReprocessingRequestDate, date);
    [(PKMerchant *)self _regenerateDisplayName];
    dateCopy = v6;
  }
}

- (id)uniqueIdentifier
{
  mapsBrand = self->_mapsBrand;
  if (mapsBrand)
  {
    v4 = MEMORY[0x1E696AEC0];
    identifier = [(PKMapsBrand *)mapsBrand identifier];
    v5 = @"mapsBrand-%lu";
LABEL_5:
    [v4 stringWithFormat:v5, identifier, v10];
    goto LABEL_6;
  }

  mapsMerchant = self->_mapsMerchant;
  if (mapsMerchant)
  {
    v4 = MEMORY[0x1E696AEC0];
    identifier = [(PKMapsMerchant *)mapsMerchant identifier];
    v5 = @"mapsMerchant-%lu";
    goto LABEL_5;
  }

  if (self->_businessConnectBrandIdentifier)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"businessConnectBrandIdentifier-%@", self->_businessConnectBrandIdentifier, v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"merchant-%@-%@", self->_rawName, self->_name];
  }

  v7 = LABEL_6:;

  return v7;
}

- (BOOL)shouldBeCombinedWithMerchant:(id)merchant
{
  v84 = *MEMORY[0x1E69E9840];
  merchantCopy = merchant;
  if (([merchantCopy shouldIgnoreMapsMatches] & 1) != 0 || -[PKMerchant shouldIgnoreMapsMatches](self, "shouldIgnoreMapsMatches"))
  {
    v8 = 0;
    goto LABEL_4;
  }

  mapsBrand = [merchantCopy mapsBrand];
  v11 = mapsBrand;
  mapsBrand = self->_mapsBrand;
  if (!mapsBrand)
  {
    if (!mapsBrand)
    {
      goto LABEL_114;
    }

LABEL_38:
    v8 = 1;
    goto LABEL_115;
  }

  if (!mapsBrand)
  {
    goto LABEL_38;
  }

  identifier = [(NSString *)mapsBrand identifier];
  if (identifier == [(PKMapsBrand *)self->_mapsBrand identifier])
  {
LABEL_19:

    goto LABEL_36;
  }

  displayName = [merchantCopy displayName];
  displayName2 = [(PKMerchant *)self displayName];
  v20 = displayName;
  v21 = displayName2;
  displayName3 = v21;
  if (v20 == v21)
  {

    goto LABEL_51;
  }

  if (!v20 || !v21)
  {

    goto LABEL_57;
  }

  v3 = [v20 caseInsensitiveCompare:v21];

  if (!v3)
  {
LABEL_51:
    v43 = [(PKMapsBrand *)self->_mapsBrand url];
    if (v43)
    {
      v4 = [(PKMapsBrand *)self->_mapsBrand url];
      v44 = [(NSString *)v11 url];
      v5 = v44;
      if (v4 && v44)
      {
        if ([v4 isEqual:v44])
        {
          goto LABEL_68;
        }
      }

      else if (v4 == v44)
      {
LABEL_68:

LABEL_118:
        goto LABEL_19;
      }
    }

    detailedCategory = [(PKMapsBrand *)self->_mapsBrand detailedCategory];
    if (detailedCategory)
    {
      detailedCategory2 = [(PKMapsBrand *)self->_mapsBrand detailedCategory];
      detailedCategory3 = [(NSString *)v11 detailedCategory];
      v48 = detailedCategory2;
      v49 = detailedCategory3;
      v3 = v49;
      if (v48 == v49)
      {

        if (!v43)
        {
          goto LABEL_19;
        }

        goto LABEL_68;
      }

      v79 = v48;
      if (v48 && v49)
      {
        v50 = v48;
        v51 = [v48 isEqualToString:v49];

        if (v51)
        {
          v52 = 1;
          goto LABEL_108;
        }
      }

      else
      {
      }
    }

    phoneNumber = [(PKMapsBrand *)self->_mapsBrand phoneNumber];
    if (phoneNumber)
    {
      phoneNumber2 = [(PKMapsBrand *)self->_mapsBrand phoneNumber];
      phoneNumber3 = [(NSString *)v11 phoneNumber];
      v77 = phoneNumber3;
      v78 = phoneNumber2;
      if (phoneNumber2 && phoneNumber3)
      {
        if ([phoneNumber2 isEqual:phoneNumber3])
        {
          goto LABEL_82;
        }
      }

      else if (phoneNumber2 == phoneNumber3)
      {
LABEL_82:
        v52 = 1;
LABEL_106:

LABEL_107:
        if (!detailedCategory)
        {
LABEL_109:

          if (v43)
          {
          }

          if (v52)
          {
            goto LABEL_19;
          }

          v20 = PKLogFacilityTypeGetObject(0);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_113;
          }

          displayName3 = [merchantCopy displayName];
          *buf = 138412290;
          v83 = displayName3;
          _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "We found 2 brands with the same name but they didn't match on any properties: %@", buf, 0xCu);
LABEL_57:

LABEL_113:
          goto LABEL_114;
        }

LABEL_108:

        goto LABEL_109;
      }
    }

    v80 = detailedCategory;
    logoURL = [(PKMapsBrand *)self->_mapsBrand logoURL];
    if (logoURL)
    {
      detailedCategory = [(PKMapsBrand *)self->_mapsBrand logoURL];
      logoURL2 = [(NSString *)v11 logoURL];
      v74 = logoURL2;
      v75 = detailedCategory;
      if (detailedCategory && logoURL2)
      {
        if ([detailedCategory isEqual:logoURL2])
        {
LABEL_81:
          v81 = 1;
LABEL_104:

LABEL_105:
          detailedCategory = v80;
          v52 = v81;
          if (!phoneNumber)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }
      }

      else if (detailedCategory == logoURL2)
      {
        goto LABEL_81;
      }

      v76 = phoneNumber;
    }

    else
    {
      v76 = phoneNumber;
    }

    heroImageURL = [(PKMapsBrand *)self->_mapsBrand heroImageURL];
    if (heroImageURL)
    {
      heroImageURL2 = [(PKMapsBrand *)self->_mapsBrand heroImageURL];
      heroImageURL3 = [(NSString *)v11 heroImageURL];
      v61 = heroImageURL2;
      v70 = heroImageURL2;
      if (heroImageURL2 && heroImageURL3)
      {
        detailedCategory = heroImageURL3;
        if ([v61 isEqual:v70])
        {
LABEL_90:
          v81 = 1;
          goto LABEL_102;
        }
      }

      else
      {
        detailedCategory = heroImageURL3;
        if (v61 == heroImageURL3)
        {
          goto LABEL_90;
        }
      }

      v71 = v3;
      v72 = v5;
      v73 = v4;
    }

    else
    {
      v71 = v3;
      v72 = v5;
      v73 = v4;
    }

    businessChatURL = [(PKMapsBrand *)self->_mapsBrand businessChatURL];
    if (businessChatURL)
    {
      v63 = businessChatURL;
      businessChatURL2 = [(PKMapsBrand *)self->_mapsBrand businessChatURL];
      businessChatURL3 = [(NSString *)v11 businessChatURL];
      v66 = businessChatURL3;
      if (businessChatURL2 && businessChatURL3)
      {
        v81 = [businessChatURL2 isEqual:businessChatURL3];
      }

      else
      {
        v81 = businessChatURL2 == businessChatURL3;
      }
    }

    else
    {
      v81 = 0;
    }

    v5 = v72;
    v4 = v73;
    v3 = v71;
    if (!heroImageURL)
    {
LABEL_103:
      phoneNumber = v76;
      if (!logoURL)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

LABEL_102:

    goto LABEL_103;
  }

LABEL_114:
  v8 = 0;
LABEL_115:
  mapsMerchant = [merchantCopy mapsMerchant];
  v43 = mapsMerchant;
  mapsMerchant = self->_mapsMerchant;
  if (!mapsMerchant)
  {
    if (!mapsMerchant)
    {
      goto LABEL_121;
    }

LABEL_120:
    v8 = 1;
    goto LABEL_121;
  }

  if (!mapsMerchant)
  {
    goto LABEL_120;
  }

  identifier2 = [mapsMerchant identifier];
  if (identifier2 == [(PKMapsMerchant *)self->_mapsMerchant identifier])
  {
    goto LABEL_118;
  }

LABEL_121:

LABEL_4:
  if (!self->_rawCANL)
  {
    goto LABEL_23;
  }

  rawCANL = [merchantCopy rawCANL];
  rawCANL = self->_rawCANL;
  v11 = rawCANL;
  v12 = rawCANL;
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_19;
  }

  if (v11 && v12)
  {
    v14 = [(NSString *)v11 caseInsensitiveCompare:v12];

    if (!v14)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (self->_rawCANL)
  {
    v23 = 1;
    goto LABEL_24;
  }

LABEL_23:
  rawCANL2 = [merchantCopy rawCANL];
  v23 = rawCANL2 != 0;

LABEL_24:
  if (!self->_adamIdentifier)
  {
    goto LABEL_27;
  }

  adamIdentifier = [merchantCopy adamIdentifier];
  adamIdentifier = self->_adamIdentifier;
  if (adamIdentifier == adamIdentifier)
  {
LABEL_36:
    v34 = 1;
    goto LABEL_49;
  }

  if (adamIdentifier)
  {
LABEL_28:
    v27 = 1;
    goto LABEL_30;
  }

LABEL_27:
  if ([merchantCopy adamIdentifier])
  {
    goto LABEL_28;
  }

  v27 = v8 | v23;
LABEL_30:
  webMerchantIdentifier = self->_webMerchantIdentifier;
  if (!webMerchantIdentifier)
  {
    goto LABEL_41;
  }

  webMerchantIdentifier = [merchantCopy webMerchantIdentifier];
  v30 = webMerchantIdentifier;
  v31 = webMerchantIdentifier;
  v32 = v31;
  if (v30 == v31)
  {

    goto LABEL_36;
  }

  if (v31)
  {
    v33 = [(NSString *)v30 caseInsensitiveCompare:v31];

    if (!v33)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (self->_webMerchantIdentifier)
  {
LABEL_42:
    v34 = 0;
    goto LABEL_49;
  }

LABEL_41:
  webMerchantIdentifier2 = [merchantCopy webMerchantIdentifier];
  v36 = webMerchantIdentifier2 != 0;

  if ((v36 | v27))
  {
    goto LABEL_42;
  }

  displayName4 = [merchantCopy displayName];
  displayName5 = [(PKMerchant *)self displayName];
  v39 = displayName4;
  v40 = displayName5;
  v41 = v40;
  if (v39 == v40)
  {
    v34 = 1;
  }

  else
  {
    v34 = 0;
    if (v39 && v40)
    {
      v34 = [v39 caseInsensitiveCompare:v40] == 0;
    }
  }

LABEL_49:
  return v34;
}

- (BOOL)hasBetterVisualPropertiesThanMerchant:(id)merchant
{
  merchantCopy = merchant;
  mapsBrand = [merchantCopy mapsBrand];
  if (!mapsBrand || (mapsBrand = self->_mapsBrand, mapsBrand, !mapsBrand))
  {
    if (self->_mapsBrand)
    {
      mapsBrand2 = [merchantCopy mapsBrand];

      if (!mapsBrand2)
      {
        goto LABEL_21;
      }

      if (self->_mapsBrand)
      {
        goto LABEL_13;
      }
    }

    mapsBrand3 = [merchantCopy mapsBrand];

    if (mapsBrand3)
    {
      goto LABEL_13;
    }

    mapsMerchant = [merchantCopy mapsMerchant];
    if (mapsMerchant)
    {

      goto LABEL_16;
    }

    if (!self->_mapsMerchant)
    {
LABEL_16:
      mapsMerchant2 = [merchantCopy mapsMerchant];
      if (!mapsMerchant2)
      {
        goto LABEL_13;
      }

      mapsMerchant = self->_mapsMerchant;

      if (!mapsMerchant)
      {
        goto LABEL_13;
      }

      heroImageURL = [(PKMapsMerchant *)self->_mapsMerchant heroImageURL];
      if (!heroImageURL)
      {
        goto LABEL_13;
      }

      v12 = heroImageURL;
      mapsMerchant3 = [merchantCopy mapsMerchant];
      heroImageURL2 = [mapsMerchant3 heroImageURL];
      goto LABEL_7;
    }

LABEL_21:
    v18 = 1;
    goto LABEL_22;
  }

  heroImageURL3 = [(PKMapsBrand *)self->_mapsBrand heroImageURL];
  if (heroImageURL3)
  {
    v8 = heroImageURL3;
    mapsBrand4 = [merchantCopy mapsBrand];
    heroImageURL4 = [mapsBrand4 heroImageURL];

    if (!heroImageURL4)
    {
      goto LABEL_21;
    }
  }

  logoURL = [(PKMapsBrand *)self->_mapsBrand logoURL];
  if (!logoURL)
  {
    goto LABEL_13;
  }

  v12 = logoURL;
  mapsMerchant3 = [merchantCopy mapsBrand];
  heroImageURL2 = [mapsMerchant3 logoURL];
LABEL_7:
  v15 = heroImageURL2;

  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_13:
  v18 = 0;
LABEL_22:

  return v18;
}

@end