@interface HKClinicalProviderSearchResult
- (BOOL)isEqual:(id)equal;
- (HKClinicalProviderSearchResult)initWithCoder:(id)coder;
- (HKClinicalProviderSearchResult)initWithExternalID:(id)d batchID:(id)iD title:(id)title subtitle:(id)subtitle location:(id)location supported:(BOOL)supported countryCode:(id)code brand:(id)self0 minCompatibleAPIVersion:(int64_t)self1;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalProviderSearchResult

- (HKClinicalProviderSearchResult)initWithExternalID:(id)d batchID:(id)iD title:(id)title subtitle:(id)subtitle location:(id)location supported:(BOOL)supported countryCode:(id)code brand:(id)self0 minCompatibleAPIVersion:(int64_t)self1
{
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  subtitleCopy = subtitle;
  locationCopy = location;
  codeCopy = code;
  brandCopy = brand;
  v40.receiver = self;
  v40.super_class = HKClinicalProviderSearchResult;
  v24 = [(HKClinicalProviderSearchResult *)&v40 init];
  if (v24)
  {
    v25 = [dCopy copy];
    externalID = v24->_externalID;
    v24->_externalID = v25;

    v27 = [iDCopy copy];
    batchID = v24->_batchID;
    v24->_batchID = v27;

    v29 = [titleCopy copy];
    title = v24->_title;
    v24->_title = v29;

    v31 = [subtitleCopy copy];
    subtitle = v24->_subtitle;
    v24->_subtitle = v31;

    v33 = [locationCopy copy];
    location = v24->_location;
    v24->_location = v33;

    v24->_supported = supported;
    v35 = [codeCopy copy];
    countryCode = v24->_countryCode;
    v24->_countryCode = v35;

    v37 = [brandCopy copy];
    brand = v24->_brand;
    v24->_brand = v37;

    v24->_minCompatibleAPIVersion = version;
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    externalID = [(HKClinicalProviderSearchResult *)self externalID];
    externalID2 = [equalCopy externalID];
    if (externalID == externalID2)
    {
      v10 = 1;
    }

    else
    {
      externalID3 = [equalCopy externalID];
      if (externalID3)
      {
        externalID4 = [(HKClinicalProviderSearchResult *)self externalID];
        externalID5 = [equalCopy externalID];
        v10 = [externalID4 isEqualToString:externalID5];
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
  externalID = [(HKClinicalProviderSearchResult *)self externalID];
  v3 = [externalID hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  externalID = [(HKClinicalProviderSearchResult *)self externalID];
  [coderCopy encodeObject:externalID forKey:@"externalID"];

  batchID = [(HKClinicalProviderSearchResult *)self batchID];
  [coderCopy encodeObject:batchID forKey:@"batchID"];

  title = [(HKClinicalProviderSearchResult *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(HKClinicalProviderSearchResult *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  location = [(HKClinicalProviderSearchResult *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  [coderCopy encodeBool:-[HKClinicalProviderSearchResult isSupported](self forKey:{"isSupported"), @"supported"}];
  countryCode = [(HKClinicalProviderSearchResult *)self countryCode];
  [coderCopy encodeObject:countryCode forKey:@"countryCode"];

  brand = [(HKClinicalProviderSearchResult *)self brand];
  [coderCopy encodeObject:brand forKey:@"brand"];

  [coderCopy encodeInt64:-[HKClinicalProviderSearchResult minCompatibleAPIVersion](self forKey:{"minCompatibleAPIVersion"), @"minCompatibleApiVersion"}];
}

- (HKClinicalProviderSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batchID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
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
  if (!v12 && [coderCopy containsValueForKey:@"supported"] && (objc_msgSend(coderCopy, "containsValueForKey:", @"minCompatibleApiVersion") & 1) != 0)
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v15 = [coderCopy decodeBoolForKey:@"supported"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brand"];
    self = -[HKClinicalProviderSearchResult initWithExternalID:batchID:title:subtitle:location:supported:countryCode:brand:minCompatibleAPIVersion:](self, "initWithExternalID:batchID:title:subtitle:location:supported:countryCode:brand:minCompatibleAPIVersion:", v5, v6, v7, v13, v14, v15, v9, v16, [coderCopy decodeIntForKey:@"minCompatibleApiVersion"]);

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end