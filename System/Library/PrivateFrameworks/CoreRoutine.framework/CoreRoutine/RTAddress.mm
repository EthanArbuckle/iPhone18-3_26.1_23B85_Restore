@interface RTAddress
+ (id)_decodeGeoAddressObjectFromData:(id)a3 decompress:(BOOL)a4;
+ (id)_encodeGeoAddressObject:(id)a3 compress:(BOOL)a4;
+ (id)_mergedThoroughfareWithSubPremises:(id)a3 subThoroughfare:(id)a4 thoroughfare:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAddress:(id)a3;
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
- (RTAddress)initWithCoder:(id)a3;
- (RTAddress)initWithGeoDictionary:(id)a3 language:(id)a4 country:(id)a5 phoneticLocale:(id)a6;
- (RTAddress)initWithIdentifier:(id)a3 geoAddressData:(id)a4 subPremises:(id)a5 subThoroughfare:(id)a6 thoroughfare:(id)a7 subLocality:(id)a8 locality:(id)a9 subAdministrativeArea:(id)a10 administrativeArea:(id)a11 administrativeAreaCode:(id)a12 postalCode:(id)a13 country:(id)a14 countryCode:(id)a15 inlandWater:(id)a16 ocean:(id)a17 areasOfInterest:(id)a18 isIsland:(BOOL)a19 creationDate:(id)a20 expirationDate:(id)a21 iso3166CountryCode:(id)a22 iso3166SubdivisionCode:(id)a23;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)geoAddressObject;
- (id)geoDictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTAddress

- (NSString)thoroughfare
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 thoroughfare];
  }

  else
  {
    v7 = self->_thoroughfare;
  }

  return v7;
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
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 fullThoroughfare];

    if (v7)
    {
      v8 = [v6 fullThoroughfare];
      goto LABEL_6;
    }
  }

  v9 = objc_opt_class();
  subPremises = self->_subPremises;
  v6 = [(RTAddress *)self subThoroughfare];
  v11 = [(RTAddress *)self thoroughfare];
  v8 = [v9 _mergedThoroughfareWithSubPremises:subPremises subThoroughfare:v6 thoroughfare:v11];

LABEL_6:

  return v8;
}

- (NSString)subThoroughfare
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 subThoroughfare];
  }

  else
  {
    v7 = self->_subThoroughfare;
  }

  return v7;
}

- (NSString)subLocality
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 subLocality];
  }

  else
  {
    v7 = self->_subLocality;
  }

  return v7;
}

- (NSString)locality
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 locality];
  }

  else
  {
    v7 = self->_locality;
  }

  return v7;
}

- (NSString)subAdministrativeArea
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 subAdministrativeArea];
  }

  else
  {
    v7 = self->_subAdministrativeArea;
  }

  return v7;
}

- (NSString)administrativeArea
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 administrativeArea];
  }

  else
  {
    v7 = self->_administrativeArea;
  }

  return v7;
}

- (NSString)administrativeAreaCode
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 administrativeAreaCode];
  }

  else
  {
    v7 = self->_administrativeAreaCode;
  }

  return v7;
}

- (NSString)postalCode
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 postCode];
  }

  else
  {
    v7 = self->_postalCode;
  }

  return v7;
}

- (NSString)country
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 country];
  }

  else
  {
    v7 = self->_country;
  }

  return v7;
}

- (NSString)countryCode
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 countryCode];
  }

  else
  {
    v7 = self->_countryCode;
  }

  return v7;
}

- (NSString)inlandWater
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 inlandWater];
  }

  else
  {
    v7 = self->_inlandWater;
  }

  return v7;
}

- (NSString)ocean
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 ocean];
  }

  else
  {
    v7 = self->_ocean;
  }

  return v7;
}

- (NSArray)areasOfInterest
{
  v3 = [(RTAddress *)self geoAddressData];

  if (v3)
  {
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 address];
    v6 = [v5 structuredAddress];

    v7 = [v6 areaOfInterests];
  }

  else
  {
    v7 = self->_areasOfInterest;
  }

  return v7;
}

- (RTAddress)initWithIdentifier:(id)a3 geoAddressData:(id)a4 subPremises:(id)a5 subThoroughfare:(id)a6 thoroughfare:(id)a7 subLocality:(id)a8 locality:(id)a9 subAdministrativeArea:(id)a10 administrativeArea:(id)a11 administrativeAreaCode:(id)a12 postalCode:(id)a13 country:(id)a14 countryCode:(id)a15 inlandWater:(id)a16 ocean:(id)a17 areasOfInterest:(id)a18 isIsland:(BOOL)a19 creationDate:(id)a20 expirationDate:(id)a21 iso3166CountryCode:(id)a22 iso3166SubdivisionCode:(id)a23
{
  v56 = a3;
  v73 = a4;
  v72 = a5;
  v54 = a6;
  v71 = a6;
  v70 = a7;
  v69 = a8;
  v68 = a9;
  v67 = a10;
  v66 = a11;
  v65 = a12;
  v64 = a13;
  v63 = a14;
  v62 = a15;
  v61 = a16;
  v60 = a17;
  v28 = a18;
  v29 = a20;
  v74 = a21;
  v59 = a22;
  v58 = a23;
  if (v56)
  {
    if (v29)
    {
      v30 = self;
      if (v74)
      {
        v53 = v28;
        v75.receiver = self;
        v75.super_class = RTAddress;
        v31 = [(RTAddress *)&v75 init];
        v32 = v31;
        if (v31)
        {
          objc_storeStrong(&v31->_identifier, a3);
          objc_storeStrong(&v32->_geoAddressData, a4);
          localGeoAddressObject = v32->_localGeoAddressObject;
          v32->_localGeoAddressObject = 0;

          objc_storeStrong(&v32->_subPremises, a5);
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
            objc_storeStrong(&v32->_subThoroughfare, v54);
            objc_storeStrong(&v32->_thoroughfare, a7);
            objc_storeStrong(&v32->_subLocality, a8);
            objc_storeStrong(&v32->_locality, a9);
            objc_storeStrong(&v32->_subAdministrativeArea, a10);
            objc_storeStrong(&v32->_administrativeArea, a11);
            objc_storeStrong(&v32->_administrativeAreaCode, a12);
            objc_storeStrong(&v32->_postalCode, a13);
            objc_storeStrong(&v32->_country, a14);
            objc_storeStrong(&v32->_countryCode, a15);
            objc_storeStrong(&v32->_inlandWater, a16);
            objc_storeStrong(&v32->_ocean, a17);
            v46 = [v53 count];
            if (v46)
            {
              v46 = [v53 copy];
            }
          }

          areasOfInterest = v32->_areasOfInterest;
          v32->_areasOfInterest = v46;

          v32->_isIsland = a19;
          objc_storeStrong(&v32->_creationDate, a20);
          objc_storeStrong(&v32->_expirationDate, a21);
          objc_storeStrong(&v32->_iso3166CountryCode, a22);
          objc_storeStrong(&v32->_iso3166SubdivisionCode, a23);
        }

        v30 = v32;
        v48 = v30;
        v28 = v53;
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
      v30 = self;
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
  v30 = self;
LABEL_18:

  return v48;
}

- (RTAddress)initWithGeoDictionary:(id)a3 language:(id)a4 country:(id)a5 phoneticLocale:(id)a6
{
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 date];
  v16 = [v15 dateByAddingTimeInterval:4838400.0];
  v17 = [objc_alloc(MEMORY[0x1E69A1B40]) initWithContactAddressDictionary:v14 language:v13 country:v12 phoneticLocale:v11];

  v18 = [MEMORY[0x1E696AFB0] UUID];
  v19 = [(RTAddress *)self initWithIdentifier:v18 geoAddressObject:v17 subPremises:0 isIsland:0 creationDate:v15 expirationDate:v16 iso3166CountryCode:0 iso3166SubdivisionCode:0];

  return v19;
}

+ (id)_encodeGeoAddressObject:(id)a3 compress:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E696ACC8];
  v6 = a3;
  v7 = [[v5 alloc] initRequiringSecureCoding:1];
  [v7 encodeObject:v6 forKey:@"geoAddress"];

  [v7 finishEncoding];
  if (v6)
  {
    v8 = [v7 encodedData];
    v6 = v8;
    if (v4)
    {
      v9 = [v8 compressedDataUsingAlgorithm:3 error:0];

      v6 = v9;
    }
  }

  return v6;
}

+ (id)_decodeGeoAddressObjectFromData:(id)a3 decompress:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = v7;
    if (v4)
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
    v4 = [(RTAddress *)self geoAddressObject];
    v5 = [v4 fullAddressWithMultiline:0];
    v6 = [v3 stringWithFormat:@"%@ (%@, %@, GEOAddressObject)", v5, self->_iso3166SubdivisionCode, self->_iso3166CountryCode];
  }

  else
  {
    v4 = [(RTAddress *)self mergedThoroughfare];
    locality = self->_locality;
    v6 = [v3 stringWithFormat:@"%@ %@, %@ %@ %@ (%@, %@, legacy)", v4, locality, self->_administrativeArea, self->_postalCode, self->_country, self->_iso3166SubdivisionCode, self->_iso3166CountryCode];
  }

  return v6;
}

- (RTAddress)initWithCoder:(id)a3
{
  v3 = a3;
  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"geoAddressData"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v33 = [v3 decodeObjectOfClasses:v6 forKey:@"subPremises"];

  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subThoroughfare"];
  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"thoroughfare"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subLocality"];
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"locality"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subAdministrativeArea"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"administrativeArea"];
  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"administrativeAreaCode"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"inlandWater"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ocean"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v17 = [v3 decodeObjectOfClasses:v10 forKey:@"areasOfInterest"];

  LOBYTE(v10) = [v3 decodeBoolForKey:@"isIsland"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"iso3166CountryCode"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"iso3166SubdivisionCode"];

  LOBYTE(v16) = v10;
  v26 = [(RTAddress *)self initWithIdentifier:v30 geoAddressData:v29 subPremises:v33 subThoroughfare:v32 thoroughfare:v31 subLocality:v24 locality:v28 subAdministrativeArea:v23 administrativeArea:v22 administrativeAreaCode:v27 postalCode:v19 country:v21 countryCode:v20 inlandWater:v18 ocean:v7 areasOfInterest:v17 isIsland:v16 creationDate:v11 expirationDate:v12 iso3166CountryCode:v13 iso3166SubdivisionCode:v14];

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_geoAddressData forKey:@"geoAddressData"];
  [v5 encodeObject:self->_subPremises forKey:@"subPremises"];
  [v5 encodeObject:self->_subThoroughfare forKey:@"subThoroughfare"];
  [v5 encodeObject:self->_thoroughfare forKey:@"thoroughfare"];
  [v5 encodeObject:self->_subLocality forKey:@"subLocality"];
  [v5 encodeObject:self->_locality forKey:@"locality"];
  [v5 encodeObject:self->_subAdministrativeArea forKey:@"subAdministrativeArea"];
  [v5 encodeObject:self->_administrativeArea forKey:@"administrativeArea"];
  [v5 encodeObject:self->_administrativeAreaCode forKey:@"administrativeAreaCode"];
  [v5 encodeObject:self->_postalCode forKey:@"postalCode"];
  [v5 encodeObject:self->_country forKey:@"country"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_inlandWater forKey:@"inlandWater"];
  [v5 encodeObject:self->_ocean forKey:@"ocean"];
  [v5 encodeObject:self->_areasOfInterest forKey:@"areasOfInterest"];
  [v5 encodeBool:self->_isIsland forKey:@"isIsland"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeObject:self->_iso3166CountryCode forKey:@"iso3166CountryCode"];
  [v5 encodeObject:self->_iso3166SubdivisionCode forKey:@"iso3166SubdivisionCode"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = *&self->_locality;
  v6 = *&self->_postalCode;
  iso3166CountryCode = self->_iso3166CountryCode;
  LOBYTE(v9) = self->_isIsland;
  return [v4 initWithIdentifier:self->_identifier geoAddressData:self->_geoAddressData subPremises:self->_subPremises subThoroughfare:self->_subThoroughfare thoroughfare:self->_thoroughfare subLocality:self->_subLocality locality:self->_locality subAdministrativeArea:self->_subAdministrativeArea administrativeArea:self->_administrativeArea administrativeAreaCode:self->_administrativeAreaCode postalCode:self->_postalCode country:self->_country countryCode:self->_countryCode inlandWater:self->_inlandWater ocean:self->_ocean areasOfInterest:self->_areasOfInterest isIsland:v9 creationDate:self->_creationDate expirationDate:self->_expirationDate iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:self->_iso3166SubdivisionCode];
}

- (BOOL)isEqualToAddress:(id)a3
{
  v5 = a3;
  v6 = v5;
  identifier = self->_identifier;
  v171 = identifier;
  if (!identifier)
  {
    v152 = [v5 identifier];
    if (!v152)
    {
      v152 = 0;
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

  v154 = [v6 identifier];
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
    v20 = [v6 subPremises];
    if (!v20)
    {
      v153 = 0;
      v21 = 0;
      goto LABEL_114;
    }

    v153 = v20;
    subPremises = self->_subPremises;
  }

  v151 = [v6 subPremises];
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
    v25 = [v6 geoAddressData];
    if (v25)
    {
      v145 = v25;
      v26 = self->_geoAddressData;
      v27 = [v6 geoAddressData];
      v28 = [(NSData *)v26 isEqual:v27];
      v29 = 1;
      v138 = v27;
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

  v150 = [(RTAddress *)self subThoroughfare];
  HIDWORD(v169) = v150 == 0;
  *v170 = v29;
  if (v150 || ([v6 subThoroughfare], (v143 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v149 = [(RTAddress *)self subThoroughfare];
    v31 = [v149 lowercaseString];
    v147 = [v6 subThoroughfare];
    [v147 lowercaseString];
    v146 = v148 = v31;
    if (![v31 isEqual:?])
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

  v33 = [(RTAddress *)self thoroughfare];
  HIDWORD(v168) = v33 == 0;
  v144 = v33;
  LODWORD(v168) = v32;
  if (v33 || ([v6 thoroughfare], (v136 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v142 = [(RTAddress *)self thoroughfare];
    v3 = [v142 lowercaseString];
    v140 = [v6 thoroughfare];
    [v140 lowercaseString];
    v139 = v141 = v3;
    if (![v3 isEqual:?])
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

  v34 = [(RTAddress *)self mergedThoroughfare];
  HIDWORD(v167) = v34 == 0;
  v137 = v34;
  if (v34 || ([v6 mergedThoroughfare], (v129 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v135 = [(RTAddress *)self mergedThoroughfare];
    v3 = [v135 lowercaseString];
    v133 = [v6 mergedThoroughfare];
    [v133 lowercaseString];
    v132 = v134 = v3;
    if (![v3 isEqual:?])
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

  v35 = [(RTAddress *)self subLocality];
  HIDWORD(v166) = v35 == 0;
  v131 = v35;
  if (v35 || ([v6 subLocality], (v124 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v128 = [(RTAddress *)self subLocality];
    v36 = [v128 lowercaseString];
    v126 = [v6 subLocality];
    v37 = [v126 lowercaseString];
    v127 = v36;
    v38 = v36;
    v3 = v37;
    v172 = 1;
    if (![v38 isEqual:v37])
    {
      v130 = v3;
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

  v39 = [(RTAddress *)self locality];
  HIDWORD(v165) = v39 == 0;
  v125 = v39;
  v130 = v3;
  if (v39 || ([v6 locality], (v117 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v123 = [(RTAddress *)self locality];
    v40 = [v123 lowercaseString];
    v121 = [v6 locality];
    v41 = [v121 lowercaseString];
    v122 = v40;
    v42 = v40;
    v32 = v41;
    v172 = 1;
    v120 = v41;
    if (![v42 isEqual:v41])
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

  v43 = [(RTAddress *)self subAdministrativeArea];
  HIDWORD(v164) = v43 == 0;
  v119 = v43;
  if (v43 || ([v6 subAdministrativeArea], (v111 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v116 = [(RTAddress *)self subAdministrativeArea];
    v44 = [v116 lowercaseString];
    v114 = [v6 subAdministrativeArea];
    v45 = [v114 lowercaseString];
    v115 = v44;
    v46 = v44;
    v32 = v45;
    v172 = 1;
    if (![v46 isEqual:v45])
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
  v47 = [(RTAddress *)self administrativeArea];
  HIDWORD(v163) = v47 == 0;
  v113 = v47;
  if (v47 || ([v6 administrativeArea], (v106 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v110 = [(RTAddress *)self administrativeArea];
    v48 = [v110 lowercaseString];
    v108 = [v6 administrativeArea];
    v49 = [v108 lowercaseString];
    v109 = v48;
    v50 = v48;
    v32 = v49;
    v172 = 1;
    if (![v50 isEqual:v49])
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

  v51 = [(RTAddress *)self administrativeAreaCode];
  HIDWORD(v162) = v51 == 0;
  v107 = v51;
  v112 = v32;
  if (v51 || ([v6 administrativeAreaCode], (v100 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v105 = [(RTAddress *)self administrativeAreaCode];
    v52 = [v105 lowercaseString];
    v103 = [v6 administrativeAreaCode];
    [v103 lowercaseString];
    v102 = v104 = v52;
    v172 = 1;
    if (![v52 isEqual:?])
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

  v53 = [(RTAddress *)self postalCode];
  HIDWORD(v161) = v53 == 0;
  v101 = v53;
  if (v53 || ([v6 postalCode], (v94 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v99 = [(RTAddress *)self postalCode];
    v54 = [v99 lowercaseString];
    v97 = [v6 postalCode];
    [v97 lowercaseString];
    v96 = v98 = v54;
    v172 = 1;
    if (![v54 isEqual:?])
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

  v55 = [(RTAddress *)self country];
  HIDWORD(v160) = v55 == 0;
  v95 = v55;
  if (v55 || ([v6 country], (v88 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v93 = [(RTAddress *)self country];
    v56 = [v93 lowercaseString];
    v91 = [v6 country];
    [v91 lowercaseString];
    v90 = v92 = v56;
    v172 = 1;
    if (![v56 isEqual:?])
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

  v58 = [(RTAddress *)self countryCode];
  HIDWORD(v159) = v58 == 0;
  v89 = v58;
  LODWORD(v159) = v57;
  if (v58 || ([v6 countryCode], (v82 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v87 = [(RTAddress *)self countryCode];
    v59 = [v87 lowercaseString];
    v85 = [v6 countryCode];
    [v85 lowercaseString];
    v84 = v86 = v59;
    v172 = 1;
    if (![v59 isEqual:?])
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

  v60 = [(RTAddress *)self inlandWater];
  HIDWORD(v158) = v60 == 0;
  v83 = v60;
  if (v60 || ([v6 inlandWater], (v76 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v81 = [(RTAddress *)self inlandWater];
    v61 = [v81 lowercaseString];
    v79 = [v6 inlandWater];
    [v79 lowercaseString];
    v78 = v80 = v61;
    v172 = 1;
    if (![v61 isEqual:?])
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

  v62 = [(RTAddress *)self ocean];
  HIDWORD(v157) = v62 == 0;
  v77 = v62;
  if (!v62)
  {
    v70 = [v6 ocean];
    if (!v70)
    {
      v70 = 0;
      HIDWORD(v156) = 0;
      goto LABEL_200;
    }
  }

  v75 = [(RTAddress *)self ocean];
  v63 = [v75 lowercaseString];
  v73 = [v6 ocean];
  [v73 lowercaseString];
  v72 = v74 = v63;
  v172 = 1;
  if ([v63 isEqual:?])
  {
    HIDWORD(v156) = 1;
LABEL_200:
    v64 = [(RTAddress *)self areasOfInterest];
    v67 = v64 == 0;
    v71 = v64;
    if (v64 || ([v6 areasOfInterest], (v68 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v65 = [(RTAddress *)self areasOfInterest];
      [v6 areasOfInterest];
      v66 = v69 = v65;
      v172 = 1;
      if (![v65 isEqualToArray:?])
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTAddress *)self isEqualToAddress:v5];
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

+ (id)_mergedThoroughfareWithSubPremises:(id)a3 subThoroughfare:(id)a4 thoroughfare:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v8, v9];
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
  if ([v10 length] && objc_msgSend(v7, "count"))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v7 componentsJoinedByString:@" "];
    v13 = [v11 stringWithFormat:@"%@ %@", v10, v12];
  }

  else if (v10 && ![v7 count])
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
  v2 = [(RTAddress *)self geoAddressObject];
  v3 = [v2 addressDictionary];

  return v3;
}

@end