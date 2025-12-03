@interface SGStorageLocation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStorageLocation:(id)location;
- (NSString)description;
- (SGStorageLocation)initWithCoder:(id)coder;
- (SGStorageLocation)initWithType:(int)type label:(id)label address:(id)address airportCode:(id)code latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy quality:(double)self0 handle:(id)self1 country:(id)self2 state:(id)self3 city:(id)self4 thoroughfare:(id)self5 subThoroughfare:(id)self6 postalCode:(id)self7;
- (id)convertToLocationWithId:(id)id origin:(id)origin;
- (id)geocodedLocationWithLabel:(id)label address:(id)address latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle country:(id)country state:(id)self0 city:(id)self1 thoroughfare:(id)self2 subThoroughfare:(id)self3 postalCode:(id)self4;
- (id)geocodedLocationWithLatitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle country:(id)country state:(id)state city:(id)city thoroughfare:(id)self0 subThoroughfare:(id)self1 postalCode:(id)self2;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGStorageLocation

- (id)geocodedLocationWithLabel:(id)label address:(id)address latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle country:(id)country state:(id)self0 city:(id)self1 thoroughfare:(id)self2 subThoroughfare:(id)self3 postalCode:(id)self4
{
  codeCopy = code;
  subThoroughfareCopy = subThoroughfare;
  thoroughfareCopy = thoroughfare;
  cityCopy = city;
  stateCopy = state;
  countryCopy = country;
  handleCopy = handle;
  addressCopy = address;
  labelCopy = label;
  v31 = [SGStorageLocation alloc];
  locationType = [(SGStorageLocation *)self locationType];
  label = labelCopy;
  if (!labelCopy)
  {
    label = [(SGStorageLocation *)self label];
  }

  address = addressCopy;
  if (!addressCopy)
  {
    address = [(SGStorageLocation *)self address];
  }

  airportCode = [(SGStorageLocation *)self airportCode];
  [(SGStorageLocation *)self quality];
  v32 = [(SGStorageLocation *)v31 initWithType:locationType label:label address:address airportCode:airportCode latitude:handleCopy longitude:countryCopy accuracy:latitude quality:longitude handle:accuracy country:v29 state:stateCopy city:cityCopy thoroughfare:thoroughfareCopy subThoroughfare:subThoroughfareCopy postalCode:codeCopy];

  if (addressCopy)
  {
    if (labelCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (labelCopy)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v32;
}

- (id)geocodedLocationWithLatitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle country:(id)country state:(id)state city:(id)city thoroughfare:(id)self0 subThoroughfare:(id)self1 postalCode:(id)self2
{
  codeCopy = code;
  subThoroughfareCopy = subThoroughfare;
  thoroughfareCopy = thoroughfare;
  cityCopy = city;
  stateCopy = state;
  countryCopy = country;
  handleCopy = handle;
  v24 = [SGStorageLocation alloc];
  locationType = [(SGStorageLocation *)self locationType];
  label = [(SGStorageLocation *)self label];
  address = [(SGStorageLocation *)self address];
  airportCode = [(SGStorageLocation *)self airportCode];
  [(SGStorageLocation *)self quality];
  v29 = [(SGStorageLocation *)v24 initWithType:locationType label:label address:address airportCode:airportCode latitude:handleCopy longitude:countryCopy accuracy:latitude quality:longitude handle:accuracy country:v28 state:stateCopy city:cityCopy thoroughfare:thoroughfareCopy subThoroughfare:subThoroughfareCopy postalCode:codeCopy];

  return v29;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGStorageLocation@%0.2f/%0.2f label: '%@' address: '%@' airportCode: '%@'", *&self->_latitude, *&self->_longitude, self->_label, self->_address, self->_airportCode];

  return v2;
}

- (id)convertToLocationWithId:(id)id origin:(id)origin
{
  v6 = MEMORY[0x277D02000];
  originCopy = origin;
  idCopy = id;
  v9 = [v6 alloc];
  v10 = *&self->_state;
  v11 = [v9 initWithId:idCopy origin:originCopy type:self->_locationType label:self->_label address:self->_address airportCode:self->_airportCode latitude:self->_latitude longitude:self->_longitude accuracy:self->_accuracy quality:self->_quality handle:self->_handle country:self->_country state:self->_state city:self->_city thoroughfare:self->_thoroughfare subThoroughfare:self->_subThoroughfare postalCode:self->_postalCode];

  return v11;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = compareCopy;
    quality = self->_quality;
    v7 = *(v5 + 8);
    if (quality >= v7)
    {
      if (quality <= v7)
      {
        v9 = [(NSString *)self->_label length];
        v10 = [(NSString *)self->_address length]+ v9;
        v11 = [*(v5 + 2) length];
        v12 = [*(v5 + 3) length];
        if (v10 >= v12 + v11)
        {
          v8 = v10 > v12 + v11;
        }

        else
        {
          v8 = -1;
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_address hash];
  v4 = [(NSString *)self->_airportCode hash]- v3 + 32 * v3;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  v8 = [v7 hash] - v6 + 32 * v6;

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGStorageLocation *)self isEqualToStorageLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToStorageLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (self->_latitude != locationCopy[5] || self->_longitude != locationCopy[6])
  {
    goto LABEL_3;
  }

  v8 = self->_address;
  v9 = v8;
  if (v8 == *(v5 + 3))
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = self->_airportCode;
  v12 = v11;
  if (v11 == *(v5 + 4))
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v14 = self->_handle;
  v15 = v14;
  if (v14 == *(v5 + 9))
  {
  }

  else
  {
    v16 = [(NSData *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v17 = self->_label;
  v18 = v17;
  if (v17 == *(v5 + 2))
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (self->_locationType == *(v5 + 2) && self->_accuracy == v5[7])
  {
    v6 = self->_quality == v5[8];
    goto LABEL_4;
  }

LABEL_3:
  v6 = 0;
LABEL_4:

  return v6;
}

- (SGStorageLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = SGStorageLocation;
  v5 = [(SGStorageLocation *)&v41 init];
  if (v5)
  {
    v5->_locationType = [coderCopy decodeInt64ForKey:@"locationType"];
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"label"];
    label = v5->_label;
    v5->_label = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"airportCode"];
    airportCode = v5->_airportCode;
    v5->_airportCode = v13;

    [coderCopy decodeDoubleForKey:@"latitude"];
    v5->_latitude = v15;
    [coderCopy decodeDoubleForKey:@"longitude"];
    v5->_longitude = v16;
    [coderCopy decodeDoubleForKey:@"accuracy"];
    v5->_accuracy = v17;
    [coderCopy decodeDoubleForKey:@"quality"];
    v5->_quality = v18;
    v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v20;

    v22 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"country"];
    country = v5->_country;
    v5->_country = v23;

    v25 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"state"];
    state = v5->_state;
    v5->_state = v26;

    v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"city"];
    city = v5->_city;
    v5->_city = v29;

    v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"thoroughfare"];
    thoroughfare = v5->_thoroughfare;
    v5->_thoroughfare = v32;

    v34 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"subThoroughfare"];
    subThoroughfare = v5->_subThoroughfare;
    v5->_subThoroughfare = v35;

    v37 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  locationType = self->_locationType;
  coderCopy = coder;
  [coderCopy encodeInt64:locationType forKey:@"locationType"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_address forKey:@"address"];
  [coderCopy encodeObject:self->_airportCode forKey:@"airportCode"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"accuracy" forKey:self->_accuracy];
  [coderCopy encodeDouble:@"quality" forKey:self->_quality];
  [coderCopy encodeObject:self->_handle forKey:@"handle"];
  [coderCopy encodeObject:self->_country forKey:@"country"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_city forKey:@"city"];
  [coderCopy encodeObject:self->_thoroughfare forKey:@"thoroughfare"];
  [coderCopy encodeObject:self->_subThoroughfare forKey:@"subThoroughfare"];
  [coderCopy encodeObject:self->_postalCode forKey:@"postalCode"];
}

- (SGStorageLocation)initWithType:(int)type label:(id)label address:(id)address airportCode:(id)code latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy quality:(double)self0 handle:(id)self1 country:(id)self2 state:(id)self3 city:(id)self4 thoroughfare:(id)self5 subThoroughfare:(id)self6 postalCode:(id)self7
{
  labelCopy = label;
  addressCopy = address;
  codeCopy = code;
  handleCopy = handle;
  countryCopy = country;
  stateCopy = state;
  cityCopy = city;
  thoroughfareCopy = thoroughfare;
  selfCopy = self;
  subThoroughfareCopy = subThoroughfare;
  postalCodeCopy = postalCode;
  if (fabs(latitude) > 90.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGStorageLocation.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"isnan(latitude) || (-90 <= latitude && latitude <= 90)"}];
  }

  if (fabs(longitude) > 180.0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGStorageLocation.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"isnan(longitude) || (-180 <= longitude && longitude <= 180)"}];
  }

  if ((*&accuracy & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"SGStorageLocation.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"isfinite(accuracy)"}];
  }

  if ((*&quality & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"SGStorageLocation.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"isfinite(quality)"}];
  }

  v54.receiver = selfCopy;
  v54.super_class = SGStorageLocation;
  v30 = [(SGStorageLocation *)&v54 init];
  v31 = v30;
  if (v30)
  {
    v30->_locationType = type;
    v32 = [labelCopy copy];
    label = v31->_label;
    v31->_label = v32;

    v34 = [addressCopy copy];
    address = v31->_address;
    v31->_address = v34;

    v36 = [codeCopy copy];
    airportCode = v31->_airportCode;
    v31->_airportCode = v36;

    v31->_latitude = latitude;
    v31->_longitude = longitude;
    v31->_accuracy = accuracy;
    v31->_quality = quality;
    v38 = [handleCopy copy];
    handle = v31->_handle;
    v31->_handle = v38;

    objc_storeStrong(&v31->_country, country);
    objc_storeStrong(&v31->_state, state);
    objc_storeStrong(&v31->_city, city);
    objc_storeStrong(&v31->_thoroughfare, thoroughfare);
    objc_storeStrong(&v31->_subThoroughfare, subThoroughfare);
    objc_storeStrong(&v31->_postalCode, postalCode);
  }

  return v31;
}

@end