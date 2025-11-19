@interface PKMerchant
- (BOOL)hasBetterVisualPropertiesThanMerchant:(id)a3;
- (BOOL)hasCloudArchivableDeviceData;
- (BOOL)isCloudArchivableDeviceDataEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMerchant:(id)a3;
- (BOOL)shouldBeCombinedWithMerchant:(id)a3;
- (NSString)detailedCategory;
- (NSString)displayName;
- (NSString)displayNameIgnoringBrand;
- (NSString)heroImageAttribution;
- (NSString)phoneNumber;
- (NSURL)businessChatURL;
- (NSURL)heroImageURL;
- (NSURL)logoImageURL;
- (PKMerchant)initWithCloudStoreCoder:(id)a3;
- (PKMerchant)initWithCoder:(id)a3;
- (id)description;
- (id)jsonDictionaryRepresentation;
- (id)uniqueIdentifier;
- (int64_t)category;
- (unint64_t)hash;
- (void)_encodeDeviceDataWithCloudStoreCoder:(id)a3;
- (void)_encodeServerDataWithCloudStoreCoder:(id)a3;
- (void)_regenerateDisplayName;
- (void)_regenerateDisplayNameIgnoringBrand;
- (void)applyPropertiesFromCloudStoreRecord:(id)a3;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setIsPotentialUnattributedMapsMatch:(BOOL)a3;
- (void)setLastForceMerchantReprocessingRequestDate:(id)a3;
- (void)setMapsBrand:(id)a3;
- (void)setMapsMerchant:(id)a3;
- (void)setName:(id)a3;
- (void)setRawName:(id)a3;
- (void)setUseRawMerchantData:(BOOL)a3;
- (void)setWebMerchantName:(id)a3;
@end

@implementation PKMerchant

- (PKMerchant)initWithCoder:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = PKMerchant;
  v5 = [(PKMerchant *)&v58 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawName"];
    rawName = v5->_rawName;
    v5->_rawName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"industryCategory"];
    industryCategory = v5->_industryCategory;
    v5->_industryCategory = v12;

    v5->_industryCode = [v4 decodeIntegerForKey:@"industryCode"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawCANL"];
    rawCANL = v5->_rawCANL;
    v5->_rawCANL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawCity"];
    rawCity = v5->_rawCity;
    v5->_rawCity = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawState"];
    rawState = v5->_rawState;
    v5->_rawState = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawCountry"];
    rawCountry = v5->_rawCountry;
    v5->_rawCountry = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zip"];
    zip = v5->_zip;
    v5->_zip = v26;

    v5->_cleanConfidenceLevel = [v4 decodeIntegerForKey:@"cleanConfidenceLevel"];
    v5->_adamIdentifier = [v4 decodeIntegerForKey:@"adamID"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originURL"];
    originURL = v5->_originURL;
    v5->_originURL = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webMerchantIdentifier"];
    webMerchantIdentifier = v5->_webMerchantIdentifier;
    v5->_webMerchantIdentifier = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webMerchantName"];
    webMerchantName = v5->_webMerchantName;
    v5->_webMerchantName = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"businessConnectBrandIdentifier"];
    businessConnectBrandIdentifier = v5->_businessConnectBrandIdentifier;
    v5->_businessConnectBrandIdentifier = v36;

    v5->_useRawMerchantData = [v4 decodeBoolForKey:@"useRawMerchantDataKey"];
    v5->_mapsDataIsFromLocalMatch = [v4 decodeBoolForKey:@"localMapsMatch"];
    v5->_isPotentialUnattributedMapsMatch = [v4 decodeBoolForKey:@"isPotentialUnattributedMapsMatch"];
    v5->_useDisplayNameIgnoringBrand = [v4 decodeBoolForKey:@"useDisplayNameIgnoringBrand"];
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameIgnoringBrand"];
    displayNameIgnoringBrand = v5->_displayNameIgnoringBrand;
    v5->_displayNameIgnoringBrand = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackLogoImageURL"];
    fallbackLogoImageURL = v5->_fallbackLogoImageURL;
    v5->_fallbackLogoImageURL = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapsMerchant"];
    mapsMerchant = v5->_mapsMerchant;
    v5->_mapsMerchant = v42;

    if (!v5->_mapsMerchant)
    {
      v44 = [v4 decodeInt64ForKey:@"identifier"];
      if (v44)
      {
        v45 = v44;
        v46 = objc_alloc_init(PKMapsMerchant);
        [(PKMapsMerchant *)v46 setIdentifier:v45];
        -[PKMapsMerchant setResultProviderIdentifier:](v46, "setResultProviderIdentifier:", [v4 decodeInt32ForKey:@"resultProviderIdentifier"]);
        v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapsName"];
        [(PKMapsMerchant *)v46 setName:v47];

        v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
        [(PKMapsMerchant *)v46 setPhoneNumber:v48];

        v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
        [(PKMapsMerchant *)v46 setURL:v49];

        [v4 decodeDoubleForKey:@"locationLatitude"];
        [(PKMapsMerchant *)v46 setLocationLatitude:?];
        [v4 decodeDoubleForKey:@"locationLongitude"];
        [(PKMapsMerchant *)v46 setLocationLongitude:?];
        v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postalAddress"];
        [(PKMapsMerchant *)v46 setPostalAddress:v50];

        if ([(PKMapsMerchant *)v46 isValid])
        {
          objc_storeStrong(&v5->_mapsMerchant, v46);
        }
      }
    }

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapsBrand"];
    mapsBrand = v5->_mapsBrand;
    v5->_mapsBrand = v51;

    v5->_fallbackcategory = [v4 decodeIntegerForKey:@"merchantFallbackCategory"];
    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantFallbackMapsCategory"];
    fallbackDetailedCategory = v5->_fallbackDetailedCategory;
    v5->_fallbackDetailedCategory = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastForceMerchantReprocessingRequestDate"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKMerchant *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(PKMerchant *)self rawName];
  [v4 encodeObject:v6 forKey:@"rawName"];

  v7 = [(PKMerchant *)self displayName];
  [v4 encodeObject:v7 forKey:@"displayName"];

  v8 = [(PKMerchant *)self industryCategory];
  [v4 encodeObject:v8 forKey:@"industryCategory"];

  [v4 encodeInteger:-[PKMerchant industryCode](self forKey:{"industryCode"), @"industryCode"}];
  v9 = [(PKMerchant *)self rawCANL];
  [v4 encodeObject:v9 forKey:@"rawCANL"];

  v10 = [(PKMerchant *)self rawCity];
  [v4 encodeObject:v10 forKey:@"rawCity"];

  v11 = [(PKMerchant *)self rawState];
  [v4 encodeObject:v11 forKey:@"rawState"];

  v12 = [(PKMerchant *)self rawCountry];
  [v4 encodeObject:v12 forKey:@"rawCountry"];

  v13 = [(PKMerchant *)self city];
  [v4 encodeObject:v13 forKey:@"city"];

  v14 = [(PKMerchant *)self state];
  [v4 encodeObject:v14 forKey:@"state"];

  v15 = [(PKMerchant *)self zip];
  [v4 encodeObject:v15 forKey:@"zip"];

  [v4 encodeInteger:-[PKMerchant cleanConfidenceLevel](self forKey:{"cleanConfidenceLevel"), @"cleanConfidenceLevel"}];
  [v4 encodeInteger:-[PKMerchant adamIdentifier](self forKey:{"adamIdentifier"), @"adamID"}];
  v16 = [(PKMerchant *)self originURL];
  [v4 encodeObject:v16 forKey:@"originURL"];

  v17 = [(PKMerchant *)self webMerchantIdentifier];
  [v4 encodeObject:v17 forKey:@"webMerchantIdentifier"];

  v18 = [(PKMerchant *)self webMerchantName];
  [v4 encodeObject:v18 forKey:@"webMerchantName"];

  v19 = [(PKMerchant *)self merchantIdentifier];
  [v4 encodeObject:v19 forKey:@"merchantIdentifier"];

  v20 = [(PKMerchant *)self mapsMerchant];
  [v4 encodeObject:v20 forKey:@"mapsMerchant"];

  v21 = [(PKMerchant *)self mapsBrand];
  [v4 encodeObject:v21 forKey:@"mapsBrand"];

  [v4 encodeInteger:-[PKMerchant fallbackcategory](self forKey:{"fallbackcategory"), @"merchantFallbackCategory"}];
  v22 = [(PKMerchant *)self fallbackDetailedCategory];
  [v4 encodeObject:v22 forKey:@"merchantFallbackMapsCategory"];

  [v4 encodeBool:-[PKMerchant useRawMerchantData](self forKey:{"useRawMerchantData"), @"useRawMerchantDataKey"}];
  [v4 encodeBool:-[PKMerchant isPotentialUnattributedMapsMatch](self forKey:{"isPotentialUnattributedMapsMatch"), @"isPotentialUnattributedMapsMatch"}];
  [v4 encodeBool:-[PKMerchant mapsDataIsFromLocalMatch](self forKey:{"mapsDataIsFromLocalMatch"), @"localMapsMatch"}];
  [v4 encodeBool:-[PKMerchant useDisplayNameIgnoringBrand](self forKey:{"useDisplayNameIgnoringBrand"), @"useDisplayNameIgnoringBrand"}];
  v23 = [(PKMerchant *)self displayNameIgnoringBrand];
  [v4 encodeObject:v23 forKey:@"displayNameIgnoringBrand"];

  v24 = [(PKMerchant *)self fallbackLogoImageURL];
  [v4 encodeObject:v24 forKey:@"fallbackLogoImageURL"];

  v25 = [(PKMerchant *)self lastForceMerchantReprocessingRequestDate];
  [v4 encodeObject:v25 forKey:@"lastForceMerchantReprocessingRequestDate"];

  v26 = [(PKMerchant *)self businessConnectBrandIdentifier];
  [v4 encodeObject:v26 forKey:@"businessConnectBrandIdentifier"];
}

- (PKMerchant)initWithCloudStoreCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKMerchant;
  v5 = [(PKMerchant *)&v11 init];
  if (v5)
  {
    v6 = [[PKMapsMerchant alloc] initWithCloudStoreCoder:v4];
    mapsMerchant = v5->_mapsMerchant;
    v5->_mapsMerchant = v6;

    v8 = [[PKMapsBrand alloc] initWithCloudStoreCoder:v4];
    mapsBrand = v5->_mapsBrand;
    v5->_mapsBrand = v8;

    [(PKMerchant *)v5 applyPropertiesFromCloudStoreRecord:v4];
  }

  if (![(PKMerchant *)v5 isValid])
  {

    v5 = 0;
  }

  return v5;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)a3
{
  v47 = a3;
  v4 = [v47 recordsWithRecordType:@"Transaction"];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 pk_encryptedStringForKey:@"merchantName"];
    name = self->_name;
    self->_name = v6;

    v8 = [v5 pk_encryptedStringForKey:@"merchantRawName"];
    rawName = self->_rawName;
    self->_rawName = v8;

    self->_industryCode = [v5 pk_encryptedIntegerForKey:@"merchantIndustryCode"];
    v10 = [v5 pk_encryptedStringForKey:@"merchantIndustryCategory"];
    industryCategory = self->_industryCategory;
    self->_industryCategory = v10;

    v12 = [v5 pk_encryptedStringForKey:@"merchantRawCANL"];
    rawCANL = self->_rawCANL;
    self->_rawCANL = v12;

    v14 = [v5 pk_encryptedStringForKey:@"merchantRawCity"];
    rawCity = self->_rawCity;
    self->_rawCity = v14;

    v16 = [v5 pk_encryptedStringForKey:@"merchantRawState"];
    rawState = self->_rawState;
    self->_rawState = v16;

    v18 = [v5 pk_encryptedStringForKey:@"merchantRawCountry"];
    rawCountry = self->_rawCountry;
    self->_rawCountry = v18;

    v20 = [v5 pk_encryptedStringForKey:@"merchantCity"];
    city = self->_city;
    self->_city = v20;

    v22 = [v5 pk_encryptedStringForKey:@"merchantZip"];
    zip = self->_zip;
    self->_zip = v22;

    v24 = [v5 pk_encryptedStringForKey:@"merchantState"];
    state = self->_state;
    self->_state = v24;

    self->_cleanConfidenceLevel = [v5 pk_encryptedIntegerForKey:@"merchantCleanConfidenceLevel"];
    v26 = [v5 pk_encryptedStringForKey:@"merchantIdentifier"];
    merchantIdentifier = self->_merchantIdentifier;
    self->_merchantIdentifier = v26;

    v28 = [v5 pk_encryptedDateForKey:@"lastForceMerchantReprocessingRequestDate"];
    lastForceMerchantReprocessingRequestDate = self->_lastForceMerchantReprocessingRequestDate;
    self->_lastForceMerchantReprocessingRequestDate = v28;
  }

  v30 = [v47 recordsWithRecordType:@"TransactionDeviceData"];
  v31 = [v30 firstObject];

  if (v31)
  {
    v32 = [v31 pk_encryptedStringForKey:@"merchantFallbackCategory"];
    self->_fallbackcategory = PKMerchantCategoryFromString(v32);

    v33 = [v31 pk_encryptedStringForKey:@"merchantFallbackMapsCategory"];
    fallbackDetailedCategory = self->_fallbackDetailedCategory;
    self->_fallbackDetailedCategory = v33;

    self->_adamIdentifier = [v31 pk_encryptedIntegerForKey:@"adamID"];
    v35 = [v31 pk_encryptedUrlForKey:@"originURL"];
    originURL = self->_originURL;
    self->_originURL = v35;

    v37 = [v31 pk_encryptedStringForKey:@"webMerchantIdentifier"];
    webMerchantIdentifier = self->_webMerchantIdentifier;
    self->_webMerchantIdentifier = v37;

    v39 = [v31 pk_encryptedStringForKey:@"webMerchantName"];
    webMerchantName = self->_webMerchantName;
    self->_webMerchantName = v39;

    self->_useRawMerchantData = [v31 pk_encryptedBoolForKey:@"useRawMerchantDataKey"];
    mapsMerchant = self->_mapsMerchant;
    if (mapsMerchant)
    {
      [(PKMapsMerchant *)mapsMerchant applyPropertiesFromCloudStoreRecord:v47];
    }

    else
    {
      v42 = [[PKMapsMerchant alloc] initWithCloudStoreCoder:v47];
      v43 = self->_mapsMerchant;
      self->_mapsMerchant = v42;
    }

    mapsBrand = self->_mapsBrand;
    if (mapsBrand)
    {
      [(PKMapsBrand *)mapsBrand applyPropertiesFromCloudStoreRecord:v47];
    }

    else
    {
      v45 = [[PKMapsBrand alloc] initWithCloudStoreCoder:v47];
      v46 = self->_mapsBrand;
      self->_mapsBrand = v45;
    }
  }
}

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  v6 = a3;
  mapsMerchant = self->_mapsMerchant;
  v10 = v6;
  if (mapsMerchant)
  {
    [(PKMapsMerchant *)mapsMerchant encodeWithCloudStoreCoder:v6 codingType:a4];
  }

  else
  {
    [PKMapsMerchant deleteFromCloudStoreRecord:v6 codingType:a4];
  }

  mapsBrand = self->_mapsBrand;
  if (mapsBrand)
  {
    [(PKMapsBrand *)mapsBrand encodeWithCloudStoreCoder:v10 codingType:a4];
  }

  else
  {
    [PKMapsBrand deleteFromCloudStoreRecord:v10 codingType:a4];
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [(PKMerchant *)self _encodeDeviceDataWithCloudStoreCoder:v10];
  }

  v9 = v10;
  if (a4 - 1 <= 1)
  {
    [(PKMerchant *)self _encodeServerDataWithCloudStoreCoder:v10];
    v9 = v10;
  }
}

- (void)_encodeDeviceDataWithCloudStoreCoder:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"TransactionDeviceData"];
  v10 = [v4 firstObject];

  v5 = [v10 encryptedValues];
  v6 = PKMerchantCategoryToString(self->_fallbackcategory);
  [v5 setObject:v6 forKey:@"merchantFallbackCategory"];

  [v5 setObject:self->_fallbackDetailedCategory forKey:@"merchantFallbackMapsCategory"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_adamIdentifier];
  [v5 setObject:v7 forKey:@"adamID"];

  v8 = [(NSURL *)self->_originURL absoluteString];
  [v5 setObject:v8 forKey:@"originURL"];

  [v5 setObject:self->_webMerchantIdentifier forKey:@"webMerchantIdentifier"];
  [v5 setObject:self->_webMerchantName forKey:@"webMerchantName"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_useRawMerchantData];
  [v5 setObject:v9 forKey:@"useRawMerchantDataKey"];
}

- (void)_encodeServerDataWithCloudStoreCoder:(id)a3
{
  v4 = [a3 recordsWithRecordType:@"Transaction"];
  v8 = [v4 firstObject];

  v5 = [v8 encryptedValues];
  [v5 setObject:self->_name forKey:@"merchantName"];
  [v5 setObject:self->_rawName forKey:@"merchantRawName"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_industryCode];
  [v5 setObject:v6 forKey:@"merchantIndustryCode"];

  [v5 setObject:self->_industryCategory forKey:@"merchantIndustryCategory"];
  [v5 setObject:self->_rawCANL forKey:@"merchantRawCANL"];
  [v5 setObject:self->_rawCity forKey:@"merchantRawCity"];
  [v5 setObject:self->_rawState forKey:@"merchantRawState"];
  [v5 setObject:self->_rawCountry forKey:@"merchantRawCountry"];
  [v5 setObject:self->_city forKey:@"merchantCity"];
  [v5 setObject:self->_zip forKey:@"merchantZip"];
  [v5 setObject:self->_state forKey:@"merchantState"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cleanConfidenceLevel];
  [v5 setObject:v7 forKey:@"merchantCleanConfidenceLevel"];

  [v5 setObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
}

- (BOOL)isCloudArchivableDeviceDataEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_fallbackcategory != *(v4 + 22))
  {
    goto LABEL_30;
  }

  v6 = *(v4 + 23);
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_rawName];
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_industryCategory];
  [v3 safelyAddObject:self->_rawCANL];
  [v3 safelyAddObject:self->_rawCity];
  [v3 safelyAddObject:self->_rawState];
  [v3 safelyAddObject:self->_rawCountry];
  [v3 safelyAddObject:self->_city];
  [v3 safelyAddObject:self->_state];
  [v3 safelyAddObject:self->_zip];
  [v3 safelyAddObject:self->_originURL];
  [v3 safelyAddObject:self->_webMerchantName];
  [v3 safelyAddObject:self->_webMerchantIdentifier];
  [v3 safelyAddObject:self->_merchantIdentifier];
  [v3 safelyAddObject:self->_mapsMerchant];
  [v3 safelyAddObject:self->_mapsBrand];
  [v3 safelyAddObject:self->_fallbackDetailedCategory];
  [v3 safelyAddObject:self->_lastForceMerchantReprocessingRequestDate];
  [v3 safelyAddObject:self->_businessConnectBrandIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_industryCode - v4 + 32 * v4;
  v6 = self->_cleanConfidenceLevel - v5 + 32 * v5;
  v7 = self->_adamIdentifier - v6 + 32 * v6;
  v8 = self->_fallbackcategory - v7 + 32 * v7;
  v9 = self->_useRawMerchantData - v8 + 32 * v8;
  v10 = self->_isPotentialUnattributedMapsMatch - v9 + 32 * v9;
  v11 = self->_useDisplayNameIgnoringBrand - v10 + 32 * v10;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKMerchant *)self isEqualToMerchant:v5];
  }

  return v6;
}

- (BOOL)isEqualToMerchant:(id)a3
{
  v4 = a3;
  name = self->_name;
  v6 = v4[11];
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
  v9 = v4[12];
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
  v11 = v4[2];
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
  v13 = v4[10];
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
  v15 = v4[14];
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
  v17 = v4[15];
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
  v19 = v4[16];
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
  v21 = v4[17];
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
  v23 = v4[18];
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
  v25 = v4[19];
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
  v27 = v4[20];
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
  v29 = v4[4];
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
  v31 = v4[6];
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
  v33 = v4[5];
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
  v35 = v4[13];
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
  v37 = v4[25];
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
  v39 = v4[26];
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
  v41 = v4[23];
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
  v43 = v4[24];
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
  v45 = v4[8];
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
  if (self->_industryCode != v4[9] || self->_cleanConfidenceLevel != v4[21] || self->_adamIdentifier != v4[7] || self->_fallbackcategory != v4[22] || self->_useRawMerchantData != *(v4 + 8) || self->_isPotentialUnattributedMapsMatch != *(v4 + 11) || self->_useDisplayNameIgnoringBrand != *(v4 + 9) || self->_mapsDataIsFromLocalMatch != *(v4 + 10))
  {
    goto LABEL_115;
  }

  lastForceMerchantReprocessingRequestDate = self->_lastForceMerchantReprocessingRequestDate;
  v47 = v4[27];
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
  v3 = [(PKMerchant *)self jsonDictionaryRepresentation];
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:2 error:0];
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

  v7 = [(PKMerchant *)self originURL];
  v8 = [v7 absoluteString];
  [v3 setObject:v8 forKeyedSubscript:@"originURL"];

  [v3 setObject:self->_webMerchantIdentifier forKeyedSubscript:@"webMerchantID"];
  [v3 setObject:self->_webMerchantName forKeyedSubscript:@"webMerchantName"];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKMerchant adamIdentifier](self, "adamIdentifier")}];
  [v3 setObject:v9 forKeyedSubscript:@"adamID"];

  v10 = [(PKMerchant *)self merchantIdentifier];
  [v3 setObject:v10 forKeyedSubscript:@"merchantIdentifier"];

  v11 = [(PKMapsMerchant *)self->_mapsMerchant jsonRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"mapsMerchant"];

  v12 = [(PKMapsBrand *)self->_mapsBrand jsonRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"mapsBrand"];

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
  v17 = [(NSURL *)self->_fallbackLogoImageURL absoluteString];
  [v3 setObject:v17 forKeyedSubscript:@"fallbackLogoImageURL"];

  v18 = PKW3CDateStringFromDate(self->_lastForceMerchantReprocessingRequestDate);
  [v3 setObject:v18 forKeyedSubscript:@"lastForceMerchantReprocessingRequestDate"];

  [v3 setObject:self->_businessConnectBrandIdentifier forKeyedSubscript:@"businessConnectBrandIdentifier"];
  v19 = [v3 copy];

  return v19;
}

- (void)setMapsMerchant:(id)a3
{
  v5 = a3;
  if (self->_mapsMerchant != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapsMerchant, a3);
    [(PKMerchant *)self _regenerateDisplayName];
    [(PKMerchant *)self _regenerateDisplayNameIgnoringBrand];
    v5 = v6;
  }
}

- (void)setMapsBrand:(id)a3
{
  v5 = a3;
  if (self->_mapsBrand != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapsBrand, a3);
    [(PKMerchant *)self _regenerateDisplayName];
    v5 = v6;
  }
}

- (void)setName:(id)a3
{
  if (self->_name != a3)
  {
    v5 = [a3 copy];
    name = self->_name;
    self->_name = v5;

    [(PKMerchant *)self _regenerateDisplayName];
  }
}

- (void)setRawName:(id)a3
{
  if (self->_rawName != a3)
  {
    v5 = [a3 copy];
    rawName = self->_rawName;
    self->_rawName = v5;

    [(PKMerchant *)self _regenerateDisplayName];
  }
}

- (void)setUseRawMerchantData:(BOOL)a3
{
  if (self->_useRawMerchantData == !a3)
  {
    self->_useRawMerchantData = a3;
    [(PKMerchant *)self _regenerateDisplayName];
  }
}

- (void)setIsPotentialUnattributedMapsMatch:(BOOL)a3
{
  if (self->_isPotentialUnattributedMapsMatch == !a3)
  {
    self->_isPotentialUnattributedMapsMatch = a3;
    [(PKMerchant *)self _regenerateDisplayName];
  }
}

- (void)setWebMerchantName:(id)a3
{
  v5 = a3;
  if (self->_webMerchantName != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_webMerchantName, a3);
    [(PKMerchant *)self _regenerateDisplayName];
    v5 = v6;
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
    v4 = [(PKMapsMerchant *)self->_mapsMerchant heroImageURL];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(PKMapsBrand *)self->_mapsBrand heroImageURL];
    }

    v3 = v6;
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
  v5 = [(PKMapsMerchant *)self->_mapsMerchant heroImageURL];

  if (!v5)
  {
    mapsBrand = self->_mapsBrand;
    p_mapsBrand = &self->_mapsBrand;
    v8 = [(PKMapsBrand *)mapsBrand heroImageURL];

    if (!v8)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_7;
    }

    p_mapsMerchant = p_mapsBrand;
  }

  v3 = [(PKMapsMerchant *)*p_mapsMerchant heroImageAttributionName];
LABEL_7:

  return v3;
}

- (NSString)phoneNumber
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PKMapsMerchant *)self->_mapsMerchant phoneNumber];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(PKMapsBrand *)self->_mapsBrand phoneNumber];
    }

    v3 = v6;
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
    v4 = [(PKMapsMerchant *)self->_mapsMerchant businessChatURL];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(PKMapsBrand *)self->_mapsBrand businessChatURL];
    }

    v3 = v6;
  }

  return v3;
}

- (int64_t)category
{
  if ([(PKMerchant *)self shouldIgnoreMapsMatches])
  {
    return self->_fallbackcategory;
  }

  v3 = [(PKMapsBrand *)self->_mapsBrand category];
  result = [(PKMapsMerchant *)self->_mapsMerchant category];
  v5 = result;
  if (v3)
  {
    result = v3;
  }

  if (!(v3 | v5))
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

  v4 = [(PKMapsMerchant *)self->_mapsMerchant name];
  v5 = [(PKMapsBrand *)self->_mapsBrand name];
  v6 = [v5 length];
  v7 = [v4 length];
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
    v10 = [v4 containsString:v5];
    v9 = v5;
    if ((v10 & 1) == 0)
    {
      if ([v5 containsString:v4])
      {
        v9 = v5;
      }

      else
      {
        v9 = v4;
      }
    }

    goto LABEL_17;
  }

  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
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
  v5 = [(PKMapsMerchant *)self->_mapsMerchant name];
  v3 = PKMerchantFormattedDisplayName(v5);
  displayNameIgnoringBrand = self->_displayNameIgnoringBrand;
  self->_displayNameIgnoringBrand = v3;
}

- (void)setLastForceMerchantReprocessingRequestDate:(id)a3
{
  v5 = a3;
  if ((v5 != 0) == (self->_lastForceMerchantReprocessingRequestDate == 0))
  {
    v6 = v5;
    objc_storeStrong(&self->_lastForceMerchantReprocessingRequestDate, a3);
    [(PKMerchant *)self _regenerateDisplayName];
    v5 = v6;
  }
}

- (id)uniqueIdentifier
{
  mapsBrand = self->_mapsBrand;
  if (mapsBrand)
  {
    v4 = MEMORY[0x1E696AEC0];
    v9 = [(PKMapsBrand *)mapsBrand identifier];
    v5 = @"mapsBrand-%lu";
LABEL_5:
    [v4 stringWithFormat:v5, v9, v10];
    goto LABEL_6;
  }

  mapsMerchant = self->_mapsMerchant;
  if (mapsMerchant)
  {
    v4 = MEMORY[0x1E696AEC0];
    v9 = [(PKMapsMerchant *)mapsMerchant identifier];
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

- (BOOL)shouldBeCombinedWithMerchant:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (([v7 shouldIgnoreMapsMatches] & 1) != 0 || -[PKMerchant shouldIgnoreMapsMatches](self, "shouldIgnoreMapsMatches"))
  {
    v8 = 0;
    goto LABEL_4;
  }

  v15 = [v7 mapsBrand];
  v11 = v15;
  mapsBrand = self->_mapsBrand;
  if (!v15)
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

  v17 = [(NSString *)v15 identifier];
  if (v17 == [(PKMapsBrand *)self->_mapsBrand identifier])
  {
LABEL_19:

    goto LABEL_36;
  }

  v18 = [v7 displayName];
  v19 = [(PKMerchant *)self displayName];
  v20 = v18;
  v21 = v19;
  v22 = v21;
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

    v45 = [(PKMapsBrand *)self->_mapsBrand detailedCategory];
    if (v45)
    {
      v46 = [(PKMapsBrand *)self->_mapsBrand detailedCategory];
      v47 = [(NSString *)v11 detailedCategory];
      v48 = v46;
      v49 = v47;
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

    v53 = [(PKMapsBrand *)self->_mapsBrand phoneNumber];
    if (v53)
    {
      v54 = [(PKMapsBrand *)self->_mapsBrand phoneNumber];
      v55 = [(NSString *)v11 phoneNumber];
      v77 = v55;
      v78 = v54;
      if (v54 && v55)
      {
        if ([v54 isEqual:v55])
        {
          goto LABEL_82;
        }
      }

      else if (v54 == v55)
      {
LABEL_82:
        v52 = 1;
LABEL_106:

LABEL_107:
        if (!v45)
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

          v22 = [v7 displayName];
          *buf = 138412290;
          v83 = v22;
          _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "We found 2 brands with the same name but they didn't match on any properties: %@", buf, 0xCu);
LABEL_57:

LABEL_113:
          goto LABEL_114;
        }

LABEL_108:

        goto LABEL_109;
      }
    }

    v80 = v45;
    v56 = [(PKMapsBrand *)self->_mapsBrand logoURL];
    if (v56)
    {
      v45 = [(PKMapsBrand *)self->_mapsBrand logoURL];
      v57 = [(NSString *)v11 logoURL];
      v74 = v57;
      v75 = v45;
      if (v45 && v57)
      {
        if ([v45 isEqual:v57])
        {
LABEL_81:
          v81 = 1;
LABEL_104:

LABEL_105:
          v45 = v80;
          v52 = v81;
          if (!v53)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }
      }

      else if (v45 == v57)
      {
        goto LABEL_81;
      }

      v76 = v53;
    }

    else
    {
      v76 = v53;
    }

    v58 = [(PKMapsBrand *)self->_mapsBrand heroImageURL];
    if (v58)
    {
      v59 = [(PKMapsBrand *)self->_mapsBrand heroImageURL];
      v60 = [(NSString *)v11 heroImageURL];
      v61 = v59;
      v70 = v59;
      if (v59 && v60)
      {
        v45 = v60;
        if ([v61 isEqual:v70])
        {
LABEL_90:
          v81 = 1;
          goto LABEL_102;
        }
      }

      else
      {
        v45 = v60;
        if (v61 == v60)
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

    v62 = [(PKMapsBrand *)self->_mapsBrand businessChatURL];
    if (v62)
    {
      v63 = v62;
      v64 = [(PKMapsBrand *)self->_mapsBrand businessChatURL];
      v65 = [(NSString *)v11 businessChatURL];
      v66 = v65;
      if (v64 && v65)
      {
        v81 = [v64 isEqual:v65];
      }

      else
      {
        v81 = v64 == v65;
      }
    }

    else
    {
      v81 = 0;
    }

    v5 = v72;
    v4 = v73;
    v3 = v71;
    if (!v58)
    {
LABEL_103:
      v53 = v76;
      if (!v56)
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
  v67 = [v7 mapsMerchant];
  v43 = v67;
  mapsMerchant = self->_mapsMerchant;
  if (!v67)
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

  v69 = [v67 identifier];
  if (v69 == [(PKMapsMerchant *)self->_mapsMerchant identifier])
  {
    goto LABEL_118;
  }

LABEL_121:

LABEL_4:
  if (!self->_rawCANL)
  {
    goto LABEL_23;
  }

  v9 = [v7 rawCANL];
  rawCANL = self->_rawCANL;
  v11 = v9;
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
  v24 = [v7 rawCANL];
  v23 = v24 != 0;

LABEL_24:
  if (!self->_adamIdentifier)
  {
    goto LABEL_27;
  }

  v25 = [v7 adamIdentifier];
  adamIdentifier = self->_adamIdentifier;
  if (v25 == adamIdentifier)
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
  if ([v7 adamIdentifier])
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

  v29 = [v7 webMerchantIdentifier];
  v30 = webMerchantIdentifier;
  v31 = v29;
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
  v35 = [v7 webMerchantIdentifier];
  v36 = v35 != 0;

  if ((v36 | v27))
  {
    goto LABEL_42;
  }

  v37 = [v7 displayName];
  v38 = [(PKMerchant *)self displayName];
  v39 = v37;
  v40 = v38;
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

- (BOOL)hasBetterVisualPropertiesThanMerchant:(id)a3
{
  v4 = a3;
  v5 = [v4 mapsBrand];
  if (!v5 || (mapsBrand = self->_mapsBrand, v5, !mapsBrand))
  {
    if (self->_mapsBrand)
    {
      v16 = [v4 mapsBrand];

      if (!v16)
      {
        goto LABEL_21;
      }

      if (self->_mapsBrand)
      {
        goto LABEL_13;
      }
    }

    v17 = [v4 mapsBrand];

    if (v17)
    {
      goto LABEL_13;
    }

    v19 = [v4 mapsMerchant];
    if (v19)
    {

      goto LABEL_16;
    }

    if (!self->_mapsMerchant)
    {
LABEL_16:
      v20 = [v4 mapsMerchant];
      if (!v20)
      {
        goto LABEL_13;
      }

      mapsMerchant = self->_mapsMerchant;

      if (!mapsMerchant)
      {
        goto LABEL_13;
      }

      v22 = [(PKMapsMerchant *)self->_mapsMerchant heroImageURL];
      if (!v22)
      {
        goto LABEL_13;
      }

      v12 = v22;
      v13 = [v4 mapsMerchant];
      v14 = [v13 heroImageURL];
      goto LABEL_7;
    }

LABEL_21:
    v18 = 1;
    goto LABEL_22;
  }

  v7 = [(PKMapsBrand *)self->_mapsBrand heroImageURL];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 mapsBrand];
    v10 = [v9 heroImageURL];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v11 = [(PKMapsBrand *)self->_mapsBrand logoURL];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v4 mapsBrand];
  v14 = [v13 logoURL];
LABEL_7:
  v15 = v14;

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