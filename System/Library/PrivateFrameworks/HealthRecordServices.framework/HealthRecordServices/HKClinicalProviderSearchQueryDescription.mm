@interface HKClinicalProviderSearchQueryDescription
- (BOOL)isEqual:(id)equal;
- (HKClinicalProviderSearchQueryDescription)init;
- (HKClinicalProviderSearchQueryDescription)initWithCoder:(id)coder;
- (HKClinicalProviderSearchQueryDescription)initWithSearchString:(id)string latitude:(id)latitude longitude:(id)longitude pageOffset:(int64_t)offset options:(unint64_t)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalProviderSearchQueryDescription

- (HKClinicalProviderSearchQueryDescription)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalProviderSearchQueryDescription)initWithSearchString:(id)string latitude:(id)latitude longitude:(id)longitude pageOffset:(int64_t)offset options:(unint64_t)options
{
  stringCopy = string;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  v23.receiver = self;
  v23.super_class = HKClinicalProviderSearchQueryDescription;
  v15 = [(HKClinicalProviderSearchQueryDescription *)&v23 init];
  if (v15)
  {
    v16 = [stringCopy copy];
    searchString = v15->_searchString;
    v15->_searchString = v16;

    v18 = [latitudeCopy copy];
    latitude = v15->_latitude;
    v15->_latitude = v18;

    v20 = [longitudeCopy copy];
    longitude = v15->_longitude;
    v15->_longitude = v20;

    v15->_pageOffset = offset;
    v15->_options = options;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_37:

      goto LABEL_38;
    }

    searchString = self->_searchString;
    searchString = [(HKClinicalProviderSearchQueryDescription *)v7 searchString];
    if (searchString != searchString)
    {
      searchString2 = [(HKClinicalProviderSearchQueryDescription *)v7 searchString];
      if (!searchString2)
      {
        v13 = 0;
        goto LABEL_36;
      }

      v3 = searchString2;
      v11 = self->_searchString;
      searchString3 = [(HKClinicalProviderSearchQueryDescription *)v7 searchString];
      if (![(NSString *)v11 isEqual:searchString3])
      {
        v13 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v36 = searchString3;
    }

    latitude = self->_latitude;
    latitude = [(HKClinicalProviderSearchQueryDescription *)v7 latitude];
    if (latitude != latitude)
    {
      latitude2 = [(HKClinicalProviderSearchQueryDescription *)v7 latitude];
      if (!latitude2)
      {
        v13 = 0;
LABEL_33:

LABEL_34:
        searchString3 = v36;
        if (searchString != searchString)
        {
          goto LABEL_35;
        }

LABEL_36:

        goto LABEL_37;
      }

      v17 = latitude2;
      v18 = self->_latitude;
      latitude3 = [(HKClinicalProviderSearchQueryDescription *)v7 latitude];
      v20 = v18;
      v21 = latitude3;
      if (([(NSNumber *)v20 isEqual:latitude3]& 1) == 0)
      {

        v13 = 0;
        goto LABEL_34;
      }

      v34 = v21;
      v35 = v17;
    }

    longitude = self->_longitude;
    longitude = [(HKClinicalProviderSearchQueryDescription *)v7 longitude];
    if (longitude == longitude)
    {
      pageOffset = self->_pageOffset;
      if (pageOffset == [(HKClinicalProviderSearchQueryDescription *)v7 pageOffset])
      {
        options = self->_options;
        v30 = options == [(HKClinicalProviderSearchQueryDescription *)v7 options];
      }

      else
      {
        v30 = 0;
      }

      v13 = v30;
    }

    else
    {
      longitude2 = [(HKClinicalProviderSearchQueryDescription *)v7 longitude];
      if (longitude2)
      {
        v33 = v3;
        v25 = self->_longitude;
        longitude3 = [(HKClinicalProviderSearchQueryDescription *)v7 longitude];
        if (([(NSNumber *)v25 isEqual:?]& 1) == 0)
        {
          v13 = 0;
LABEL_25:
          v3 = v33;

          if (latitude != latitude)
          {
          }

          goto LABEL_33;
        }

        v26 = self->_pageOffset;
        if (v26 == [(HKClinicalProviderSearchQueryDescription *)v7 pageOffset])
        {
          v27 = self->_options;
          v13 = v27 == [(HKClinicalProviderSearchQueryDescription *)v7 options];
          goto LABEL_25;
        }

        v3 = v33;
      }

      v30 = 0;
      v13 = 0;
    }

    if (latitude != latitude)
    {

      v13 = v30;
    }

    goto LABEL_33;
  }

  v13 = 1;
LABEL_38:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_searchString hash];
  v4 = [(NSNumber *)self->_latitude hash]^ v3;
  return v4 ^ [(NSNumber *)self->_longitude hash]^ self->_pageOffset ^ self->_options;
}

- (void)encodeWithCoder:(id)coder
{
  searchString = self->_searchString;
  coderCopy = coder;
  [coderCopy encodeObject:searchString forKey:@"SearchString"];
  [coderCopy encodeObject:self->_latitude forKey:@"Latitude"];
  [coderCopy encodeObject:self->_longitude forKey:@"Longitude"];
  [coderCopy encodeInteger:self->_pageOffset forKey:@"PageOffset"];
  [coderCopy encodeInteger:self->_options forKey:@"Options"];
}

- (HKClinicalProviderSearchQueryDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SearchString"];
  if (v5 && [coderCopy containsValueForKey:@"PageOffset"] && (objc_msgSend(coderCopy, "containsValueForKey:", @"Options") & 1) != 0)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Latitude"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Longitude"];
    self = -[HKClinicalProviderSearchQueryDescription initWithSearchString:latitude:longitude:pageOffset:options:](self, "initWithSearchString:latitude:longitude:pageOffset:options:", v5, v6, v7, [coderCopy decodeIntegerForKey:@"PageOffset"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"Options"));

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