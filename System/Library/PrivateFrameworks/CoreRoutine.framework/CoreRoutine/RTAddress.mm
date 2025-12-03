@interface RTAddress
+ (id)_decodeGeoAddressObjectFromData:(id)data decompress:(BOOL)decompress;
+ (id)_encodeGeoAddressObject:(id)object compress:(BOOL)compress;
+ (id)_mergedThoroughfareWithSubPremises:(id)premises subThoroughfare:(id)thoroughfare thoroughfare:(id)a5;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAddress:(id)address;
- (NSArray)areasOfInterest;
- (NSString)administrativeArea;
- (NSString)administrativeAreaCode;
- (NSString)country;
- (NSString)countryCode;
- (NSString)inlandWater;
- (NSString)locality;
- (NSString)mergedThoroughfare;
- (NSString)ocean;
- (NSString)postalCode;
- (NSString)subAdministrativeArea;
- (NSString)subLocality;
- (NSString)subThoroughfare;
- (NSString)thoroughfare;
- (RTAddress)initWithCoder:(id)coder;
- (RTAddress)initWithGeoDictionary:(id)dictionary language:(id)language country:(id)country phoneticLocale:(id)locale;
- (RTAddress)initWithIdentifier:(id)identifier geoAddressData:(id)data subPremises:(id)premises subThoroughfare:(id)thoroughfare thoroughfare:(id)a7 subLocality:(id)locality locality:(id)a9 subAdministrativeArea:(id)self0 administrativeArea:(id)self1 administrativeAreaCode:(id)self2 postalCode:(id)self3 country:(id)self4 countryCode:(id)self5 inlandWater:(id)self6 ocean:(id)self7 areasOfInterest:(id)self8 isIsland:(BOOL)self9 creationDate:(id)date expirationDate:(id)expirationDate iso3166CountryCode:(id)iso3166CountryCode iso3166SubdivisionCode:(id)subdivisionCode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)geoAddressObject;
- (id)geoDictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAddress

- (NSString)thoroughfare
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    thoroughfare = [structuredAddress thoroughfare];
  }

  else
  {
    thoroughfare = self->_thoroughfare;
  }

  return thoroughfare;
}

- (id)geoAddressObject
{
  localGeoAddressObject = self->_localGeoAddressObject;
  if (!localGeoAddressObject)
  {
    if (self->_geoAddressData)
    {
      v4 = [objc_opt_class() _decodeGeoAddressObjectFromData:self->_geoAddressData decompress:1];
      v5 = self->_localGeoAddressObject;
      self->_localGeoAddressObject = v4;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E69A1B40]);
      v5 = [objc_opt_class() _mergedThoroughfareWithSubPremises:self->_subPremises subThoroughfare:self->_subThoroughfare thoroughfare:self->_thoroughfare];
      country = self->_country;
      v8 = [v6 initWithCurrentLocaleFullThoroughfare:v5 subLocality:self->_subLocality locality:self->_locality subAdministrativeArea:self->_subAdministrativeArea administrativeArea:self->_administrativeArea postalCode:self->_postalCode country:country countryCode:self->_countryCode];
      v9 = self->_localGeoAddressObject;
      self->_localGeoAddressObject = v8;
    }

    localGeoAddressObject = self->_localGeoAddressObject;
  }

  return localGeoAddressObject;
}

- (NSString)mergedThoroughfare
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    fullThoroughfare = [structuredAddress fullThoroughfare];

    if (fullThoroughfare)
    {
      fullThoroughfare2 = [structuredAddress fullThoroughfare];
      goto LABEL_6;
    }
  }

  v9 = objc_opt_class();
  subPremises = self->_subPremises;
  structuredAddress = [(RTAddress *)self subThoroughfare];
  thoroughfare = [(RTAddress *)self thoroughfare];
  fullThoroughfare2 = [v9 _mergedThoroughfareWithSubPremises:subPremises subThoroughfare:structuredAddress thoroughfare:thoroughfare];

LABEL_6:

  return fullThoroughfare2;
}

- (NSString)subThoroughfare
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    subThoroughfare = [structuredAddress subThoroughfare];
  }

  else
  {
    subThoroughfare = self->_subThoroughfare;
  }

  return subThoroughfare;
}

- (NSString)subLocality
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    subLocality = [structuredAddress subLocality];
  }

  else
  {
    subLocality = self->_subLocality;
  }

  return subLocality;
}

- (NSString)locality
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    locality = [structuredAddress locality];
  }

  else
  {
    locality = self->_locality;
  }

  return locality;
}

- (NSString)subAdministrativeArea
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    subAdministrativeArea = [structuredAddress subAdministrativeArea];
  }

  else
  {
    subAdministrativeArea = self->_subAdministrativeArea;
  }

  return subAdministrativeArea;
}

- (NSString)administrativeArea
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    administrativeArea = [structuredAddress administrativeArea];
  }

  else
  {
    administrativeArea = self->_administrativeArea;
  }

  return administrativeArea;
}

- (NSString)administrativeAreaCode
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    administrativeAreaCode = [structuredAddress administrativeAreaCode];
  }

  else
  {
    administrativeAreaCode = self->_administrativeAreaCode;
  }

  return administrativeAreaCode;
}

- (NSString)postalCode
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    postCode = [structuredAddress postCode];
  }

  else
  {
    postCode = self->_postalCode;
  }

  return postCode;
}

- (NSString)country
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    country = [structuredAddress country];
  }

  else
  {
    country = self->_country;
  }

  return country;
}

- (NSString)countryCode
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    countryCode = [structuredAddress countryCode];
  }

  else
  {
    countryCode = self->_countryCode;
  }

  return countryCode;
}

- (NSString)inlandWater
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    inlandWater = [structuredAddress inlandWater];
  }

  else
  {
    inlandWater = self->_inlandWater;
  }

  return inlandWater;
}

- (NSString)ocean
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    ocean = [structuredAddress ocean];
  }

  else
  {
    ocean = self->_ocean;
  }

  return ocean;
}

- (NSArray)areasOfInterest
{
  geoAddressData = [(RTAddress *)self geoAddressData];

  if (geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    address = [geoAddressObject address];
    structuredAddress = [address structuredAddress];

    areaOfInterests = [structuredAddress areaOfInterests];
  }

  else
  {
    areaOfInterests = self->_areasOfInterest;
  }

  return areaOfInterests;
}

- (RTAddress)initWithIdentifier:(id)identifier geoAddressData:(id)data subPremises:(id)premises subThoroughfare:(id)thoroughfare thoroughfare:(id)a7 subLocality:(id)locality locality:(id)a9 subAdministrativeArea:(id)self0 administrativeArea:(id)self1 administrativeAreaCode:(id)self2 postalCode:(id)self3 country:(id)self4 countryCode:(id)self5 inlandWater:(id)self6 ocean:(id)self7 areasOfInterest:(id)self8 isIsland:(BOOL)self9 creationDate:(id)date expirationDate:(id)expirationDate iso3166CountryCode:(id)iso3166CountryCode iso3166SubdivisionCode:(id)subdivisionCode
{
  identifierCopy = identifier;
  dataCopy = data;
  premisesCopy = premises;
  thoroughfareCopy = thoroughfare;
  thoroughfareCopy2 = thoroughfare;
  v70 = a7;
  localityCopy = locality;
  v68 = a9;
  areaCopy = area;
  administrativeAreaCopy = administrativeArea;
  codeCopy = code;
  postalCodeCopy = postalCode;
  countryCopy = country;
  countryCodeCopy = countryCode;
  waterCopy = water;
  oceanCopy = ocean;
  interestCopy = interest;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  iso3166CountryCodeCopy = iso3166CountryCode;
  subdivisionCodeCopy = subdivisionCode;
  if (identifierCopy)
  {
    if (dateCopy)
    {
      selfCopy3 = self;
      if (expirationDateCopy)
      {
        v53 = interestCopy;
        v75.receiver = self;
        v75.super_class = RTAddress;
        v31 = [(RTAddress *)&v75 init];
        v32 = v31;
        if (v31)
        {
          objc_storeStrong(&v31->_identifier, identifier);
          objc_storeStrong(&v32->_geoAddressData, data);
          localGeoAddressObject = v32->_localGeoAddressObject;
          v32->_localGeoAddressObject = 0;

          objc_storeStrong(&v32->_subPremises, premises);
          if (v32->_geoAddressData)
          {
            subThoroughfare = v32->_subThoroughfare;
            v32->_subThoroughfare = 0;

            thoroughfare = v32->_thoroughfare;
            v32->_thoroughfare = 0;

            subLocality = v32->_subLocality;
            v32->_subLocality = 0;

            locality = v32->_locality;
            v32->_locality = 0;

            subAdministrativeArea = v32->_subAdministrativeArea;
            v32->_subAdministrativeArea = 0;

            administrativeArea = v32->_administrativeArea;
            v32->_administrativeArea = 0;

            administrativeAreaCode = v32->_administrativeAreaCode;
            v32->_administrativeAreaCode = 0;

            postalCode = v32->_postalCode;
            v32->_postalCode = 0;

            country = v32->_country;
            v32->_country = 0;

            countryCode = v32->_countryCode;
            v32->_countryCode = 0;

            inlandWater = v32->_inlandWater;
            v32->_inlandWater = 0;

            ocean = v32->_ocean;
            v32->_ocean = 0;

            v46 = 0;
          }

          else
          {
            objc_storeStrong(&v32->_subThoroughfare, thoroughfareCopy);
            objc_storeStrong(&v32->_thoroughfare, a7);
            objc_storeStrong(&v32->_subLocality, locality);
            objc_storeStrong(&v32->_locality, a9);
            objc_storeStrong(&v32->_subAdministrativeArea, area);
            objc_storeStrong(&v32->_administrativeArea, administrativeArea);
            objc_storeStrong(&v32->_administrativeAreaCode, code);
            objc_storeStrong(&v32->_postalCode, postalCode);
            objc_storeStrong(&v32->_country, country);
            objc_storeStrong(&v32->_countryCode, countryCode);
            objc_storeStrong(&v32->_inlandWater, water);
            objc_storeStrong(&v32->_ocean, ocean);
            v46 = [v53 count];
            if (v46)
            {
              v46 = [v53 copy];
            }
          }

          areasOfInterest = v32->_areasOfInterest;
          v32->_areasOfInterest = v46;

          v32->_isIsland = island;
          objc_storeStrong(&v32->_creationDate, date);
          objc_storeStrong(&v32->_expirationDate, expirationDate);
          objc_storeStrong(&v32->_iso3166CountryCode, iso3166CountryCode);
          objc_storeStrong(&v32->_iso3166SubdivisionCode, subdivisionCode);
        }

        selfCopy3 = v32;
        v48 = selfCopy3;
        interestCopy = v53;
        goto LABEL_18;
      }

      v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        v48 = 0;
        goto LABEL_18;
      }

      *buf = 0;
      v50 = "Invalid parameter not satisfying: expirationDate";
    }

    else
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      selfCopy3 = self;
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v50 = "Invalid parameter not satisfying: creationDate";
    }

    _os_log_error_impl(&dword_1BF1C4000, v49, OS_LOG_TYPE_ERROR, v50, buf, 2u);
    goto LABEL_13;
  }

  v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BF1C4000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
  }

  v48 = 0;
  selfCopy3 = self;
LABEL_18:

  return v48;
}

- (RTAddress)initWithGeoDictionary:(id)dictionary language:(id)language country:(id)country phoneticLocale:(id)locale
{
  v10 = MEMORY[0x1E695DF00];
  localeCopy = locale;
  countryCopy = country;
  languageCopy = language;
  dictionaryCopy = dictionary;
  date = [v10 date];
  v16 = [date dateByAddingTimeInterval:4838400.0];
  v17 = [objc_alloc(MEMORY[0x1E69A1B40]) initWithContactAddressDictionary:dictionaryCopy language:languageCopy country:countryCopy phoneticLocale:localeCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v19 = [(RTAddress *)self initWithIdentifier:uUID geoAddressObject:v17 subPremises:0 isIsland:0 creationDate:date expirationDate:v16 iso3166CountryCode:0 iso3166SubdivisionCode:0];

  return v19;
}

+ (id)_encodeGeoAddressObject:(id)object compress:(BOOL)compress
{
  compressCopy = compress;
  v5 = MEMORY[0x1E696ACC8];
  objectCopy = object;
  v7 = [[v5 alloc] initRequiringSecureCoding:1];
  [v7 encodeObject:objectCopy forKey:@"geoAddress"];

  [v7 finishEncoding];
  if (objectCopy)
  {
    encodedData = [v7 encodedData];
    objectCopy = encodedData;
    if (compressCopy)
    {
      v9 = [encodedData compressedDataUsingAlgorithm:3 error:0];

      objectCopy = v9;
    }
  }

  return objectCopy;
}

+ (id)_decodeGeoAddressObjectFromData:(id)data decompress:(BOOL)decompress
{
  decompressCopy = decompress;
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    v7 = dataCopy;
    v8 = v7;
    if (decompressCopy)
    {
      v9 = [v7 decompressedDataUsingAlgorithm:3 error:0];

      v8 = v9;
    }

    v16 = 0;
    v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v8 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "error decoding geoAddressData, %@", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      v13 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"geoAddress"];
      [v10 finishDecoding];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_geoAddressData)
  {
    geoAddressObject = [(RTAddress *)self geoAddressObject];
    v5 = [geoAddressObject fullAddressWithMultiline:0];
    v6 = [v3 stringWithFormat:@"%@ (%@, %@, GEOAddressObject)", v5, self->_iso3166SubdivisionCode, self->_iso3166CountryCode];
  }

  else
  {
    geoAddressObject = [(RTAddress *)self mergedThoroughfare];
    locality = self->_locality;
    v6 = [v3 stringWithFormat:@"%@ %@, %@ %@ %@ (%@, %@, legacy)", geoAddressObject, locality, self->_administrativeArea, self->_postalCode, self->_country, self->_iso3166SubdivisionCode, self->_iso3166CountryCode];
  }

  return v6;
}

- (RTAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoAddressData"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v33 = [coderCopy decodeObjectOfClasses:v6 forKey:@"subPremises"];

  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subThoroughfare"];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thoroughfare"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subLocality"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locality"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subAdministrativeArea"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"administrativeArea"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"administrativeAreaCode"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inlandWater"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ocean"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v10 forKey:@"areasOfInterest"];

  LOBYTE(v10) = [coderCopy decodeBoolForKey:@"isIsland"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iso3166CountryCode"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iso3166SubdivisionCode"];

  LOBYTE(v16) = v10;
  v26 = [(RTAddress *)self initWithIdentifier:v30 geoAddressData:v29 subPremises:v33 subThoroughfare:v32 thoroughfare:v31 subLocality:v24 locality:v28 subAdministrativeArea:v23 administrativeArea:v22 administrativeAreaCode:v27 postalCode:v19 country:v21 countryCode:v20 inlandWater:v18 ocean:v7 areasOfInterest:v17 isIsland:v16 creationDate:v11 expirationDate:v12 iso3166CountryCode:v13 iso3166SubdivisionCode:v14];

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_geoAddressData forKey:@"geoAddressData"];
  [coderCopy encodeObject:self->_subPremises forKey:@"subPremises"];
  [coderCopy encodeObject:self->_subThoroughfare forKey:@"subThoroughfare"];
  [coderCopy encodeObject:self->_thoroughfare forKey:@"thoroughfare"];
  [coderCopy encodeObject:self->_subLocality forKey:@"subLocality"];
  [coderCopy encodeObject:self->_locality forKey:@"locality"];
  [coderCopy encodeObject:self->_subAdministrativeArea forKey:@"subAdministrativeArea"];
  [coderCopy encodeObject:self->_administrativeArea forKey:@"administrativeArea"];
  [coderCopy encodeObject:self->_administrativeAreaCode forKey:@"administrativeAreaCode"];
  [coderCopy encodeObject:self->_postalCode forKey:@"postalCode"];
  [coderCopy encodeObject:self->_country forKey:@"country"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_inlandWater forKey:@"inlandWater"];
  [coderCopy encodeObject:self->_ocean forKey:@"ocean"];
  [coderCopy encodeObject:self->_areasOfInterest forKey:@"areasOfInterest"];
  [coderCopy encodeBool:self->_isIsland forKey:@"isIsland"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeObject:self->_iso3166CountryCode forKey:@"iso3166CountryCode"];
  [coderCopy encodeObject:self->_iso3166SubdivisionCode forKey:@"iso3166SubdivisionCode"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = *&self->_locality;
  v6 = *&self->_postalCode;
  iso3166CountryCode = self->_iso3166CountryCode;
  LOBYTE(v9) = self->_isIsland;
  return [v4 initWithIdentifier:self->_identifier geoAddressData:self->_geoAddressData subPremises:self->_subPremises subThoroughfare:self->_subThoroughfare thoroughfare:self->_thoroughfare subLocality:self->_subLocality locality:self->_locality subAdministrativeArea:self->_subAdministrativeArea administrativeArea:self->_administrativeArea administrativeAreaCode:self->_administrativeAreaCode postalCode:self->_postalCode country:self->_country countryCode:self->_countryCode inlandWater:self->_inlandWater ocean:self->_ocean areasOfInterest:self->_areasOfInterest isIsland:v9 creationDate:self->_creationDate expirationDate:self->_expirationDate iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:self->_iso3166SubdivisionCode];
}

- (BOOL)isEqualToAddress:(id)address
{
  addressCopy = address;
  v6 = addressCopy;
  identifier = self->_identifier;
  v171 = identifier;
  if (!identifier)
  {
    identifier = [addressCopy identifier];
    if (!identifier)
    {
      identifier = 0;
      v172 = 0;
      v169 = 0;
      memset(v170, 0, sizeof(v170));
      v9 = 0;
      v168 = 0;
      v156 = 0;
      v167 = 0;
      v166 = 0;
      v165 = 0;
      v164 = 0;
      v163 = 0;
      memset(v155, 0, 20);
      v162 = 0;
      v10 = 0;
      v161 = 0;
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_13;
    }

    identifier = self->_identifier;
  }

  identifier2 = [v6 identifier];
  if (([(NSUUID *)identifier isEqual:?]& 1) != 0)
  {
    v169 = 0;
    memset(v170, 0, sizeof(v170));
    v9 = 0;
    v168 = 0;
    v156 = 0;
    v167 = 0;
    v166 = 0;
    v165 = 0;
    v164 = 0;
    v163 = 0;
    memset(v155, 0, 20);
    v162 = 0;
    v10 = 0;
    v161 = 0;
    v11 = 0;
    v160 = 0;
    v12 = 0;
    v159 = 0;
    v13 = 0;
    v158 = 0;
    v14 = 0;
    v157 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v172 = 1;
LABEL_13:
    v155[20] = 1;
    goto LABEL_14;
  }

  subPremises = self->_subPremises;
  *&v170[8] = subPremises == 0;
  if (!subPremises)
  {
    subPremises = [v6 subPremises];
    if (!subPremises)
    {
      v153 = 0;
      v21 = 0;
      goto LABEL_114;
    }

    v153 = subPremises;
    subPremises = self->_subPremises;
  }

  subPremises2 = [v6 subPremises];
  if (![(NSArray *)subPremises isEqual:?])
  {
    v172 = 1;
    *v170 = 0;
    v9 = 0;
    v168 = 0;
    v156 = 0;
    v167 = 0;
    v166 = 0;
    v165 = 0;
    v164 = 0;
    v163 = 0;
    memset(v155, 0, 21);
    v162 = 0;
    v10 = 0;
    v161 = 0;
    v11 = 0;
    v160 = 0;
    v12 = 0;
    v159 = 0;
    v13 = 0;
    v158 = 0;
    v14 = 0;
    v157 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v169 = 1;
    goto LABEL_14;
  }

  v21 = 1;
LABEL_114:
  geoAddressData = self->_geoAddressData;
  *&v170[4] = geoAddressData != 0;
  LODWORD(v169) = v21;
  if (geoAddressData)
  {
    geoAddressData = [v6 geoAddressData];
    if (geoAddressData)
    {
      v145 = geoAddressData;
      v26 = self->_geoAddressData;
      geoAddressData2 = [v6 geoAddressData];
      v28 = [(NSData *)v26 isEqual:geoAddressData2];
      v29 = 1;
      v138 = geoAddressData2;
      if (v28)
      {
        HIDWORD(v169) = 0;
        *v170 = 1;
        v168 = 0;
        v167 = 0;
        v166 = 0;
        v165 = 0;
        v164 = 0;
        v163 = 0;
        v162 = 0;
        v161 = 0;
        v160 = 0;
        v159 = 0;
        v158 = 0;
        v157 = 0;
        HIDWORD(v156) = 0;
        v9 = 0;
        v67 = 0;
        v18 = 0;
        goto LABEL_118;
      }
    }

    else
    {
      v145 = 0;
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  subThoroughfare = [(RTAddress *)self subThoroughfare];
  HIDWORD(v169) = subThoroughfare == 0;
  *v170 = v29;
  if (subThoroughfare || ([v6 subThoroughfare], (v143 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    subThoroughfare2 = [(RTAddress *)self subThoroughfare];
    lowercaseString = [subThoroughfare2 lowercaseString];
    subThoroughfare3 = [v6 subThoroughfare];
    [subThoroughfare3 lowercaseString];
    v146 = v148 = lowercaseString;
    if (![lowercaseString isEqual:?])
    {
      v172 = 1;
      v156 = 0;
      v167 = 0;
      v166 = 0;
      v165 = 0;
      v164 = 0;
      v163 = 0;
      memset(v155, 0, 21);
      v162 = 0;
      v10 = 0;
      v161 = 0;
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v9 = 1;
      v168 = 1;
      goto LABEL_14;
    }

    v32 = 1;
  }

  else
  {
    v143 = 0;
    v32 = 0;
  }

  thoroughfare = [(RTAddress *)self thoroughfare];
  HIDWORD(v168) = thoroughfare == 0;
  v144 = thoroughfare;
  LODWORD(v168) = v32;
  if (thoroughfare || ([v6 thoroughfare], (v136 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    thoroughfare2 = [(RTAddress *)self thoroughfare];
    lowercaseString2 = [thoroughfare2 lowercaseString];
    thoroughfare3 = [v6 thoroughfare];
    [thoroughfare3 lowercaseString];
    v139 = v141 = lowercaseString2;
    if (![lowercaseString2 isEqual:?])
    {
      v172 = 1;
      v166 = 0;
      v165 = 0;
      v164 = 0;
      v163 = 0;
      memset(v155, 0, 21);
      v162 = 0;
      v10 = 0;
      v161 = 0;
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v9 = 1;
      v167 = 1;
      goto LABEL_14;
    }

    LODWORD(v167) = 1;
  }

  else
  {
    v136 = 0;
    LODWORD(v167) = 0;
  }

  mergedThoroughfare = [(RTAddress *)self mergedThoroughfare];
  HIDWORD(v167) = mergedThoroughfare == 0;
  v137 = mergedThoroughfare;
  if (mergedThoroughfare || ([v6 mergedThoroughfare], (v129 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    mergedThoroughfare2 = [(RTAddress *)self mergedThoroughfare];
    lowercaseString2 = [mergedThoroughfare2 lowercaseString];
    mergedThoroughfare3 = [v6 mergedThoroughfare];
    [mergedThoroughfare3 lowercaseString];
    v132 = v134 = lowercaseString2;
    if (![lowercaseString2 isEqual:?])
    {
      v172 = 1;
      *&v155[8] = 0;
      v165 = 0;
      v164 = 0;
      *v155 = 0;
      v163 = 0;
      v162 = 0;
      v10 = 0;
      v161 = 0;
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      v166 = 1;
      goto LABEL_14;
    }

    LODWORD(v166) = 1;
  }

  else
  {
    v129 = 0;
    LODWORD(v166) = 0;
  }

  subLocality = [(RTAddress *)self subLocality];
  HIDWORD(v166) = subLocality == 0;
  v131 = subLocality;
  if (subLocality || ([v6 subLocality], (v124 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    subLocality2 = [(RTAddress *)self subLocality];
    lowercaseString3 = [subLocality2 lowercaseString];
    subLocality3 = [v6 subLocality];
    lowercaseString4 = [subLocality3 lowercaseString];
    v127 = lowercaseString3;
    v38 = lowercaseString3;
    lowercaseString2 = lowercaseString4;
    v172 = 1;
    if (![v38 isEqual:lowercaseString4])
    {
      v130 = lowercaseString2;
      *&v155[4] = 0;
      v164 = 0;
      v163 = 0;
      *v155 = 0;
      v162 = 0;
      v10 = 0;
      v161 = 0;
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[12] = 1;
      v165 = 1;
      goto LABEL_14;
    }

    LODWORD(v165) = 1;
  }

  else
  {
    v124 = 0;
    LODWORD(v165) = 0;
  }

  locality = [(RTAddress *)self locality];
  HIDWORD(v165) = locality == 0;
  v125 = locality;
  v130 = lowercaseString2;
  if (locality || ([v6 locality], (v117 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    locality2 = [(RTAddress *)self locality];
    lowercaseString5 = [locality2 lowercaseString];
    locality3 = [v6 locality];
    lowercaseString6 = [locality3 lowercaseString];
    v122 = lowercaseString5;
    v42 = lowercaseString5;
    v32 = lowercaseString6;
    v172 = 1;
    v120 = lowercaseString6;
    if (![v42 isEqual:lowercaseString6])
    {
      *v155 = 0;
      v163 = 0;
      v162 = 0;
      v10 = 0;
      v161 = 0;
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[8] = 1;
      *&v155[12] = 1;
      v164 = 1;
      goto LABEL_14;
    }

    LODWORD(v164) = 1;
  }

  else
  {
    v117 = 0;
    LODWORD(v164) = 0;
  }

  subAdministrativeArea = [(RTAddress *)self subAdministrativeArea];
  HIDWORD(v164) = subAdministrativeArea == 0;
  v119 = subAdministrativeArea;
  if (subAdministrativeArea || ([v6 subAdministrativeArea], (v111 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    subAdministrativeArea2 = [(RTAddress *)self subAdministrativeArea];
    lowercaseString7 = [subAdministrativeArea2 lowercaseString];
    subAdministrativeArea3 = [v6 subAdministrativeArea];
    lowercaseString8 = [subAdministrativeArea3 lowercaseString];
    v115 = lowercaseString7;
    v46 = lowercaseString7;
    v32 = lowercaseString8;
    v172 = 1;
    if (![v46 isEqual:lowercaseString8])
    {
      v118 = v32;
      *v155 = 0x100000000;
      v162 = 0;
      v10 = 0;
      v161 = 0;
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[8] = 1;
      *&v155[12] = 1;
      v163 = 1;
      goto LABEL_14;
    }

    LODWORD(v163) = 1;
  }

  else
  {
    v111 = 0;
    LODWORD(v163) = 0;
  }

  v118 = v32;
  administrativeArea = [(RTAddress *)self administrativeArea];
  HIDWORD(v163) = administrativeArea == 0;
  v113 = administrativeArea;
  if (administrativeArea || ([v6 administrativeArea], (v106 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    administrativeArea2 = [(RTAddress *)self administrativeArea];
    lowercaseString9 = [administrativeArea2 lowercaseString];
    administrativeArea3 = [v6 administrativeArea];
    lowercaseString10 = [administrativeArea3 lowercaseString];
    v109 = lowercaseString9;
    v50 = lowercaseString9;
    v32 = lowercaseString10;
    v172 = 1;
    if (![v50 isEqual:lowercaseString10])
    {
      v112 = v32;
      v10 = 0;
      v161 = 0;
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[8] = 1;
      *&v155[12] = 1;
      *v155 = 1;
      *&v155[4] = 1;
      v162 = 1;
      goto LABEL_14;
    }

    LODWORD(v162) = 1;
  }

  else
  {
    v106 = 0;
    LODWORD(v162) = 0;
  }

  administrativeAreaCode = [(RTAddress *)self administrativeAreaCode];
  HIDWORD(v162) = administrativeAreaCode == 0;
  v107 = administrativeAreaCode;
  v112 = v32;
  if (administrativeAreaCode || ([v6 administrativeAreaCode], (v100 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    administrativeAreaCode2 = [(RTAddress *)self administrativeAreaCode];
    lowercaseString11 = [administrativeAreaCode2 lowercaseString];
    administrativeAreaCode3 = [v6 administrativeAreaCode];
    [administrativeAreaCode3 lowercaseString];
    v102 = v104 = lowercaseString11;
    v172 = 1;
    if (![lowercaseString11 isEqual:?])
    {
      v11 = 0;
      v160 = 0;
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[8] = 1;
      *&v155[12] = 1;
      *v155 = 1;
      *&v155[4] = 1;
      v10 = 1;
      v161 = 1;
      goto LABEL_14;
    }

    LODWORD(v161) = 1;
  }

  else
  {
    v100 = 0;
    LODWORD(v161) = 0;
  }

  postalCode = [(RTAddress *)self postalCode];
  HIDWORD(v161) = postalCode == 0;
  v101 = postalCode;
  if (postalCode || ([v6 postalCode], (v94 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    postalCode2 = [(RTAddress *)self postalCode];
    lowercaseString12 = [postalCode2 lowercaseString];
    postalCode3 = [v6 postalCode];
    [postalCode3 lowercaseString];
    v96 = v98 = lowercaseString12;
    v172 = 1;
    if (![lowercaseString12 isEqual:?])
    {
      v12 = 0;
      v159 = 0;
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[8] = 1;
      *&v155[12] = 1;
      *v155 = 1;
      *&v155[4] = 1;
      v10 = 1;
      v11 = 1;
      v160 = 1;
      goto LABEL_14;
    }

    LODWORD(v160) = 1;
  }

  else
  {
    v94 = 0;
    LODWORD(v160) = 0;
  }

  country = [(RTAddress *)self country];
  HIDWORD(v160) = country == 0;
  v95 = country;
  if (country || ([v6 country], (v88 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    country2 = [(RTAddress *)self country];
    lowercaseString13 = [country2 lowercaseString];
    country3 = [v6 country];
    [country3 lowercaseString];
    v90 = v92 = lowercaseString13;
    v172 = 1;
    if (![lowercaseString13 isEqual:?])
    {
      v13 = 0;
      v158 = 0;
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[8] = 1;
      *&v155[12] = 1;
      *v155 = 1;
      *&v155[4] = 1;
      v10 = 1;
      v11 = 1;
      v12 = 1;
      v159 = 1;
      goto LABEL_14;
    }

    v57 = 1;
  }

  else
  {
    v88 = 0;
    v57 = 0;
  }

  countryCode = [(RTAddress *)self countryCode];
  HIDWORD(v159) = countryCode == 0;
  v89 = countryCode;
  LODWORD(v159) = v57;
  if (countryCode || ([v6 countryCode], (v82 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    countryCode2 = [(RTAddress *)self countryCode];
    lowercaseString14 = [countryCode2 lowercaseString];
    countryCode3 = [v6 countryCode];
    [countryCode3 lowercaseString];
    v84 = v86 = lowercaseString14;
    v172 = 1;
    if (![lowercaseString14 isEqual:?])
    {
      v14 = 0;
      v157 = 0;
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[8] = 1;
      *&v155[12] = 1;
      *v155 = 1;
      *&v155[4] = 1;
      v10 = 1;
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v158 = 1;
      goto LABEL_14;
    }

    LODWORD(v158) = 1;
  }

  else
  {
    v82 = 0;
    LODWORD(v158) = 0;
  }

  inlandWater = [(RTAddress *)self inlandWater];
  HIDWORD(v158) = inlandWater == 0;
  v83 = inlandWater;
  if (inlandWater || ([v6 inlandWater], (v76 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    inlandWater2 = [(RTAddress *)self inlandWater];
    lowercaseString15 = [inlandWater2 lowercaseString];
    inlandWater3 = [v6 inlandWater];
    [inlandWater3 lowercaseString];
    v78 = v80 = lowercaseString15;
    v172 = 1;
    if (![lowercaseString15 isEqual:?])
    {
      v15 = 0;
      v156 = 1;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *&v155[16] = 1;
      v9 = 1;
      *&v155[8] = 1;
      *&v155[12] = 1;
      *v155 = 1;
      *&v155[4] = 1;
      v10 = 1;
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v157 = 1;
      goto LABEL_14;
    }

    LODWORD(v157) = 1;
  }

  else
  {
    v76 = 0;
    LODWORD(v157) = 0;
  }

  ocean = [(RTAddress *)self ocean];
  HIDWORD(v157) = ocean == 0;
  v77 = ocean;
  if (!ocean)
  {
    ocean2 = [v6 ocean];
    if (!ocean2)
    {
      ocean2 = 0;
      HIDWORD(v156) = 0;
      goto LABEL_200;
    }
  }

  ocean3 = [(RTAddress *)self ocean];
  lowercaseString16 = [ocean3 lowercaseString];
  ocean4 = [v6 ocean];
  [ocean4 lowercaseString];
  v72 = v74 = lowercaseString16;
  v172 = 1;
  if ([lowercaseString16 isEqual:?])
  {
    HIDWORD(v156) = 1;
LABEL_200:
    areasOfInterest = [(RTAddress *)self areasOfInterest];
    v67 = areasOfInterest == 0;
    v71 = areasOfInterest;
    if (areasOfInterest || ([v6 areasOfInterest], (v68 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      areasOfInterest2 = [(RTAddress *)self areasOfInterest];
      [v6 areasOfInterest];
      v66 = v69 = areasOfInterest2;
      v172 = 1;
      if (![areasOfInterest2 isEqualToArray:?])
      {
        v155[20] = 0;
        LODWORD(v156) = 1;
        v9 = 1;
        *&v155[12] = 1;
        *&v155[16] = 1;
        *&v155[4] = 1;
        *&v155[8] = 1;
        *v155 = 1;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
        v15 = 1;
        v16 = 1;
        v18 = 1;
        goto LABEL_119;
      }

      v18 = 1;
      v9 = 1;
    }

    else
    {
      v71 = 0;
      v68 = 0;
      v18 = 0;
      v9 = 1;
      v67 = 1;
    }

LABEL_118:
    isIsland = self->_isIsland;
    v155[20] = isIsland == [v6 isIsland];
    LODWORD(v156) = v9;
    v172 = 1;
    *&v155[12] = v9;
    *&v155[16] = v9;
    *&v155[4] = v9;
    *&v155[8] = v9;
    *v155 = v9;
    v10 = v9;
    v11 = v9;
    v12 = v9;
    v13 = v9;
    v14 = v9;
    v15 = v9;
    v16 = v9;
LABEL_119:
    v17 = v67;
    v8 = v66;
    goto LABEL_14;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v155[20] = 0;
  v156 = 0x100000001;
  v9 = 1;
  *&v155[12] = 0x100000001;
  *&v155[8] = 1;
  *v155 = 0x100000001;
  v10 = 1;
  v11 = 1;
  v12 = 1;
  v13 = 1;
  v14 = 1;
  v15 = 1;
LABEL_14:
  if (v18)
  {
    v23 = v17;

    if (!v23)
    {
LABEL_16:
      if (!v16)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if (!v17)
  {
    goto LABEL_16;
  }

  if (v16)
  {
LABEL_17:
  }

LABEL_18:
  if (HIDWORD(v156))
  {
  }

  if (HIDWORD(v157))
  {
  }

  if (v15)
  {
  }

  if (v157)
  {
  }

  if (HIDWORD(v158))
  {
  }

  if (v14)
  {
  }

  if (v158)
  {
  }

  if (HIDWORD(v159))
  {
  }

  if (v13)
  {
  }

  if (v159)
  {
  }

  if (HIDWORD(v160))
  {
  }

  if (v12)
  {
  }

  if (v160)
  {
  }

  if (HIDWORD(v161))
  {
  }

  if (v11)
  {
  }

  if (v161)
  {
  }

  if (HIDWORD(v162))
  {
  }

  if (v10)
  {
  }

  if (v162)
  {
  }

  if (HIDWORD(v163))
  {
  }

  if (*v155)
  {
  }

  if (v163)
  {
  }

  if (HIDWORD(v164))
  {
  }

  if (*&v155[4])
  {
  }

  if (v164)
  {
  }

  if (HIDWORD(v165))
  {
  }

  if (*&v155[8])
  {
  }

  if (v165)
  {
  }

  if (HIDWORD(v166))
  {
  }

  if (*&v155[12])
  {
  }

  if (v166)
  {
  }

  if (HIDWORD(v167))
  {
  }

  if (*&v155[16])
  {
  }

  if (v167)
  {
  }

  if (HIDWORD(v168))
  {
  }

  if (v156)
  {
  }

  if (v168)
  {
  }

  if (HIDWORD(v169))
  {
  }

  if (v9)
  {

    if (!*v170)
    {
LABEL_96:
      if (!*&v170[4])
      {
        goto LABEL_97;
      }

      goto LABEL_108;
    }
  }

  else if (!*v170)
  {
    goto LABEL_96;
  }

  if (!*&v170[4])
  {
LABEL_97:
    if (!v169)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_108:

  if (v169)
  {
LABEL_98:
  }

LABEL_99:
  if (!*&v170[8])
  {
    if (!v172)
    {
      goto LABEL_101;
    }

LABEL_111:

    if (v171)
    {
      goto LABEL_102;
    }

LABEL_112:

    goto LABEL_102;
  }

  if (v172)
  {
    goto LABEL_111;
  }

LABEL_101:
  if (!v171)
  {
    goto LABEL_112;
  }

LABEL_102:

  return v155[20];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTAddress *)self isEqualToAddress:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSData *)self->_geoAddressData hash]^ v3;
  v5 = [(NSArray *)self->_subPremises hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_subThoroughfare hash];
  v7 = [(NSString *)self->_thoroughfare hash];
  v8 = v7 ^ [(NSString *)self->_subLocality hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_locality hash];
  v10 = [(NSString *)self->_subAdministrativeArea hash];
  v11 = v10 ^ [(NSString *)self->_administrativeArea hash];
  v12 = v11 ^ [(NSString *)self->_administrativeAreaCode hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_postalCode hash];
  v14 = [(NSString *)self->_country hash];
  v15 = v14 ^ [(NSString *)self->_countryCode hash];
  v16 = v15 ^ [(NSString *)self->_inlandWater hash];
  v17 = v16 ^ [(NSString *)self->_ocean hash];
  v18 = v13 ^ v17 ^ [(NSArray *)self->_areasOfInterest hash];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_isIsland];
  v20 = [v19 hash];
  v21 = v20 ^ [(NSString *)self->_iso3166CountryCode hash];
  v22 = v21 ^ [(NSString *)self->_iso3166SubdivisionCode hash];

  return v18 ^ v22;
}

+ (id)_mergedThoroughfareWithSubPremises:(id)premises subThoroughfare:(id)thoroughfare thoroughfare:(id)a5
{
  premisesCopy = premises;
  thoroughfareCopy = thoroughfare;
  v9 = a5;
  if ([thoroughfareCopy length] && objc_msgSend(v9, "length"))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", thoroughfareCopy, v9];
  }

  else
  {
    if (![v9 length])
    {
      v10 = 0;
      goto LABEL_8;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v9, v15];
  }
  v10 = ;
LABEL_8:
  if ([v10 length] && objc_msgSend(premisesCopy, "count"))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [premisesCopy componentsJoinedByString:@" "];
    v13 = [v11 stringWithFormat:@"%@ %@", v10, v12];
  }

  else if (v10 && ![premisesCopy count])
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)geoDictionaryRepresentation
{
  geoAddressObject = [(RTAddress *)self geoAddressObject];
  addressDictionary = [geoAddressObject addressDictionary];

  return addressDictionary;
}

@end