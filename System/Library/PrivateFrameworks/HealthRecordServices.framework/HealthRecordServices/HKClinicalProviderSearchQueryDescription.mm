@interface HKClinicalProviderSearchQueryDescription
- (BOOL)isEqual:(id)a3;
- (HKClinicalProviderSearchQueryDescription)init;
- (HKClinicalProviderSearchQueryDescription)initWithCoder:(id)a3;
- (HKClinicalProviderSearchQueryDescription)initWithSearchString:(id)a3 latitude:(id)a4 longitude:(id)a5 pageOffset:(int64_t)a6 options:(unint64_t)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalProviderSearchQueryDescription)initWithSearchString:(id)a3 latitude:(id)a4 longitude:(id)a5 pageOffset:(int64_t)a6 options:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v23.receiver = self;
  v23.super_class = HKClinicalProviderSearchQueryDescription;
  v15 = [(HKClinicalProviderSearchQueryDescription *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    searchString = v15->_searchString;
    v15->_searchString = v16;

    v18 = [v13 copy];
    latitude = v15->_latitude;
    v15->_latitude = v18;

    v20 = [v14 copy];
    longitude = v15->_longitude;
    v15->_longitude = v20;

    v15->_pageOffset = a6;
    v15->_options = a7;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_37:

      goto LABEL_38;
    }

    searchString = self->_searchString;
    v9 = [(HKClinicalProviderSearchQueryDescription *)v7 searchString];
    if (searchString != v9)
    {
      v10 = [(HKClinicalProviderSearchQueryDescription *)v7 searchString];
      if (!v10)
      {
        v13 = 0;
        goto LABEL_36;
      }

      v3 = v10;
      v11 = self->_searchString;
      v12 = [(HKClinicalProviderSearchQueryDescription *)v7 searchString];
      if (![(NSString *)v11 isEqual:v12])
      {
        v13 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v36 = v12;
    }

    latitude = self->_latitude;
    v15 = [(HKClinicalProviderSearchQueryDescription *)v7 latitude];
    if (latitude != v15)
    {
      v16 = [(HKClinicalProviderSearchQueryDescription *)v7 latitude];
      if (!v16)
      {
        v13 = 0;
LABEL_33:

LABEL_34:
        v12 = v36;
        if (searchString != v9)
        {
          goto LABEL_35;
        }

LABEL_36:

        goto LABEL_37;
      }

      v17 = v16;
      v18 = self->_latitude;
      v19 = [(HKClinicalProviderSearchQueryDescription *)v7 latitude];
      v20 = v18;
      v21 = v19;
      if (([(NSNumber *)v20 isEqual:v19]& 1) == 0)
      {

        v13 = 0;
        goto LABEL_34;
      }

      v34 = v21;
      v35 = v17;
    }

    longitude = self->_longitude;
    v23 = [(HKClinicalProviderSearchQueryDescription *)v7 longitude];
    if (longitude == v23)
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
      v24 = [(HKClinicalProviderSearchQueryDescription *)v7 longitude];
      if (v24)
      {
        v33 = v3;
        v25 = self->_longitude;
        v32 = [(HKClinicalProviderSearchQueryDescription *)v7 longitude];
        if (([(NSNumber *)v25 isEqual:?]& 1) == 0)
        {
          v13 = 0;
LABEL_25:
          v3 = v33;

          if (latitude != v15)
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

    if (latitude != v15)
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

- (void)encodeWithCoder:(id)a3
{
  searchString = self->_searchString;
  v5 = a3;
  [v5 encodeObject:searchString forKey:@"SearchString"];
  [v5 encodeObject:self->_latitude forKey:@"Latitude"];
  [v5 encodeObject:self->_longitude forKey:@"Longitude"];
  [v5 encodeInteger:self->_pageOffset forKey:@"PageOffset"];
  [v5 encodeInteger:self->_options forKey:@"Options"];
}

- (HKClinicalProviderSearchQueryDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SearchString"];
  if (v5 && [v4 containsValueForKey:@"PageOffset"] && (objc_msgSend(v4, "containsValueForKey:", @"Options") & 1) != 0)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Latitude"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Longitude"];
    self = -[HKClinicalProviderSearchQueryDescription initWithSearchString:latitude:longitude:pageOffset:options:](self, "initWithSearchString:latitude:longitude:pageOffset:options:", v5, v6, v7, [v4 decodeIntegerForKey:@"PageOffset"], objc_msgSend(v4, "decodeIntegerForKey:", @"Options"));

    v8 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

@end