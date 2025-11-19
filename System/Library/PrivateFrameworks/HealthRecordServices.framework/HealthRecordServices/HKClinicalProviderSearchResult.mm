@interface HKClinicalProviderSearchResult
- (BOOL)isEqual:(id)a3;
- (HKClinicalProviderSearchResult)initWithCoder:(id)a3;
- (HKClinicalProviderSearchResult)initWithExternalID:(id)a3 batchID:(id)a4 title:(id)a5 subtitle:(id)a6 location:(id)a7 supported:(BOOL)a8 countryCode:(id)a9 brand:(id)a10 minCompatibleAPIVersion:(int64_t)a11;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalProviderSearchResult

- (HKClinicalProviderSearchResult)initWithExternalID:(id)a3 batchID:(id)a4 title:(id)a5 subtitle:(id)a6 location:(id)a7 supported:(BOOL)a8 countryCode:(id)a9 brand:(id)a10 minCompatibleAPIVersion:(int64_t)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  v40.receiver = self;
  v40.super_class = HKClinicalProviderSearchResult;
  v24 = [(HKClinicalProviderSearchResult *)&v40 init];
  if (v24)
  {
    v25 = [v17 copy];
    externalID = v24->_externalID;
    v24->_externalID = v25;

    v27 = [v18 copy];
    batchID = v24->_batchID;
    v24->_batchID = v27;

    v29 = [v19 copy];
    title = v24->_title;
    v24->_title = v29;

    v31 = [v20 copy];
    subtitle = v24->_subtitle;
    v24->_subtitle = v31;

    v33 = [v21 copy];
    location = v24->_location;
    v24->_location = v33;

    v24->_supported = a8;
    v35 = [v22 copy];
    countryCode = v24->_countryCode;
    v24->_countryCode = v35;

    v37 = [v23 copy];
    brand = v24->_brand;
    v24->_brand = v37;

    v24->_minCompatibleAPIVersion = a11;
  }

  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HKClinicalProviderSearchResult *)self externalID];
    v6 = [v4 externalID];
    if (v5 == v6)
    {
      v10 = 1;
    }

    else
    {
      v7 = [v4 externalID];
      if (v7)
      {
        v8 = [(HKClinicalProviderSearchResult *)self externalID];
        v9 = [v4 externalID];
        v10 = [v8 isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HKClinicalProviderSearchResult *)self externalID];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(HKClinicalProviderSearchResult *)self externalID];
  [v11 encodeObject:v4 forKey:@"externalID"];

  v5 = [(HKClinicalProviderSearchResult *)self batchID];
  [v11 encodeObject:v5 forKey:@"batchID"];

  v6 = [(HKClinicalProviderSearchResult *)self title];
  [v11 encodeObject:v6 forKey:@"title"];

  v7 = [(HKClinicalProviderSearchResult *)self subtitle];
  [v11 encodeObject:v7 forKey:@"subtitle"];

  v8 = [(HKClinicalProviderSearchResult *)self location];
  [v11 encodeObject:v8 forKey:@"location"];

  [v11 encodeBool:-[HKClinicalProviderSearchResult isSupported](self forKey:{"isSupported"), @"supported"}];
  v9 = [(HKClinicalProviderSearchResult *)self countryCode];
  [v11 encodeObject:v9 forKey:@"countryCode"];

  v10 = [(HKClinicalProviderSearchResult *)self brand];
  [v11 encodeObject:v10 forKey:@"brand"];

  [v11 encodeInt64:-[HKClinicalProviderSearchResult minCompatibleAPIVersion](self forKey:{"minCompatibleAPIVersion"), @"minCompatibleApiVersion"}];
}

- (HKClinicalProviderSearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batchID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || v7 == 0 || v8 == 0;
  if (!v12 && [v4 containsValueForKey:@"supported"] && (objc_msgSend(v4, "containsValueForKey:", @"minCompatibleApiVersion") & 1) != 0)
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v15 = [v4 decodeBoolForKey:@"supported"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brand"];
    self = -[HKClinicalProviderSearchResult initWithExternalID:batchID:title:subtitle:location:supported:countryCode:brand:minCompatibleAPIVersion:](self, "initWithExternalID:batchID:title:subtitle:location:supported:countryCode:brand:minCompatibleAPIVersion:", v5, v6, v7, v13, v14, v15, v9, v16, [v4 decodeIntForKey:@"minCompatibleApiVersion"]);

    v17 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v17 = 0;
  }

  return v17;
}

@end