@interface SGLocation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLocation:(id)location;
- (BOOL)isGeocoded;
- (NSString)description;
- (SGLocation)initWithCoder:(id)coder;
- (SGLocation)initWithId:(id)id origin:(id)origin type:(unint64_t)type label:(id)label address:(id)address airportCode:(id)code latitude:(double)latitude longitude:(double)self0 accuracy:(double)self1 quality:(double)self2 handle:(id)self3 country:(id)self4 state:(id)self5 city:(id)self6 thoroughfare:(id)self7 subThoroughfare:(id)self8 postalCode:(id)self9;
- (SGLocation)initWithLocation:(id)location latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle;
- (SGLocation)initWithLocation:(id)location latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle country:(id)country state:(id)state city:(id)self0 thoroughfare:(id)self1 subThoroughfare:(id)self2 postalCode:(id)self3;
- (SGLocation)initWithMailAccountIdentifier:(id)identifier messageIdentifier:(id)messageIdentifier type:(unint64_t)type label:(id)label address:(id)address airportCode:(id)code latitude:(double)latitude longitude:(double)self0;
- (id)geocodedLocationWithLabel:(id)label address:(id)address latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle country:(id)country state:(id)self0 city:(id)self1 thoroughfare:(id)self2 subThoroughfare:(id)self3 postalCode:(id)self4;
- (id)geocodedLocationWithLatitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle country:(id)country state:(id)state city:(id)city thoroughfare:(id)self0 subThoroughfare:(id)self1 postalCode:(id)self2;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGLocation

- (SGLocation)initWithMailAccountIdentifier:(id)identifier messageIdentifier:(id)messageIdentifier type:(unint64_t)type label:(id)label address:(id)address airportCode:(id)code latitude:(double)latitude longitude:(double)self0
{
  codeCopy = code;
  addressCopy = address;
  labelCopy = label;
  messageIdentifierCopy = messageIdentifier;
  identifierCopy = identifier;
  v23 = [SGRecordId recordIdWithNumericValue:0];
  v24 = [SGOrigin originWithType:1 sourceKey:identifierCopy externalKey:messageIdentifierCopy fromForwardedMessage:0];

  v25 = [[SGLocation alloc] initWithId:v23 origin:v24 type:type label:labelCopy address:addressCopy airportCode:codeCopy latitude:latitude longitude:longitude accuracy:1.0 quality:0.0 handle:0];
  return v25;
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
  v29 = [[SGLocation alloc] initWithLocation:self latitude:handleCopy longitude:countryCopy accuracy:stateCopy handle:cityCopy country:thoroughfareCopy state:latitude city:longitude thoroughfare:accuracy subThoroughfare:subThoroughfareCopy postalCode:codeCopy];

  return v29;
}

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
  v32 = [SGLocation alloc];
  recordId = [(SGObject *)self recordId];
  origin = [(SGObject *)self origin];
  locationType = [(SGLocation *)self locationType];
  label = labelCopy;
  if (!labelCopy)
  {
    label = [(SGLocation *)self label];
  }

  address = addressCopy;
  if (!addressCopy)
  {
    address = [(SGLocation *)self address];
  }

  airportCode = [(SGLocation *)self airportCode];
  [(SGLocation *)self quality];
  v31 = [(SGLocation *)v32 initWithId:recordId origin:origin type:locationType label:label address:address airportCode:airportCode latitude:latitude longitude:longitude accuracy:accuracy quality:v28 handle:handleCopy country:countryCopy state:stateCopy city:cityCopy thoroughfare:thoroughfareCopy subThoroughfare:subThoroughfareCopy postalCode:codeCopy];

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

  return v31;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  latitude = self->_latitude;
  label = self->_label;
  v6 = [v3 initWithFormat:@"<SGLocation@%0.2f/%0.2f label: '%@' address: '%@'>", *&latitude, *&self->_longitude, label, self->_address];

  return v6;
}

- (BOOL)isGeocoded
{
  latitude = self->_latitude;
  longitude = self->_longitude;
  return 1;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = compareCopy;
    quality = self->_quality;
    v7 = *(v5 + 9);
    if (quality >= v7)
    {
      if (quality > v7)
      {
        v8 = 1;
        goto LABEL_9;
      }

      v9 = [(NSString *)self->_label length];
      v10 = [(NSString *)self->_address length]+ v9;
      v11 = [*(v5 + 4) length];
      v12 = [*(v5 + 5) length];
      if (v10 >= v12 + v11)
      {
        v8 = v10 > v12 + v11;
        goto LABEL_9;
      }
    }

    v8 = -1;
LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_address hash];
  v4 = [(NSString *)self->_airportCode hash];
  v5 = self->_latitude - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return self->_longitude - v5 + 32 * v5;
}

- (BOOL)isEqualToLocation:(id)location
{
  locationCopy = location;
  v19.receiver = self;
  v19.super_class = SGLocation;
  if (![(SGObject *)&v19 isEqualToSuggestion:locationCopy])
  {
    goto LABEL_26;
  }

  if ([(SGLocation *)self isGeocoded])
  {
    if (self->_latitude != locationCopy[6] || self->_longitude != locationCopy[7])
    {
      goto LABEL_26;
    }
  }

  else if ([locationCopy isGeocoded])
  {
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  v5 = self->_address;
  v6 = v5;
  if (v5 == *(locationCopy + 5))
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v8 = self->_airportCode;
  v9 = v8;
  if (v8 == *(locationCopy + 10))
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v11 = self->_handle;
  v12 = v11;
  if (v11 == *(locationCopy + 11))
  {
  }

  else
  {
    v13 = [(NSData *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v14 = self->_label;
  v15 = v14;
  if (v14 == *(locationCopy + 4))
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (self->_locationType != *(locationCopy + 3) || self->_accuracy != locationCopy[8])
  {
    goto LABEL_26;
  }

  v17 = self->_quality == locationCopy[9];
LABEL_27:

  return v17;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGLocation *)self isEqualToLocation:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGLocation;
  coderCopy = coder;
  [(SGObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_locationType forKey:{@"locationType", v5.receiver, v5.super_class}];
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

- (SGLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = SGLocation;
  v5 = [(SGObject *)&v41 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_locationType = [coderCopy decodeInt64ForKey:@"locationType"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"label"];
    label = v5->_label;
    v5->_label = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
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
    v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v20;

    v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"country"];
    country = v5->_country;
    v5->_country = v23;

    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"state"];
    state = v5->_state;
    v5->_state = v26;

    v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"city"];
    city = v5->_city;
    v5->_city = v29;

    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"thoroughfare"];
    thoroughfare = v5->_thoroughfare;
    v5->_thoroughfare = v32;

    v34 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"subThoroughfare"];
    subThoroughfare = v5->_subThoroughfare;
    v5->_subThoroughfare = v35;

    v37 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v38;
  }

  return v5;
}

- (SGLocation)initWithId:(id)id origin:(id)origin type:(unint64_t)type label:(id)label address:(id)address airportCode:(id)code latitude:(double)latitude longitude:(double)self0 accuracy:(double)self1 quality:(double)self2 handle:(id)self3 country:(id)self4 state:(id)self5 city:(id)self6 thoroughfare:(id)self7 subThoroughfare:(id)self8 postalCode:(id)self9
{
  idCopy = id;
  originCopy = origin;
  labelCopy = label;
  addressCopy = address;
  codeCopy = code;
  handleCopy = handle;
  countryCopy = country;
  stateCopy = state;
  cityCopy = city;
  thoroughfareCopy = thoroughfare;
  subThoroughfareCopy = subThoroughfare;
  postalCodeCopy = postalCode;
  if (fabs(latitude) > 90.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGLocation.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"isnan(latitude) || (-90 <= latitude && latitude <= 90)"}];
  }

  if (fabs(longitude) > 180.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGLocation.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"isnan(longitude) || (-180 <= longitude && longitude <= 180)"}];
  }

  if ((*&accuracy & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGLocation.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"isfinite(accuracy)"}];
  }

  if ((*&quality & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGLocation.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"isfinite(quality)"}];
  }

  v57.receiver = self;
  v57.super_class = SGLocation;
  v30 = [(SGObject *)&v57 initWithRecordId:idCopy origin:originCopy];
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

- (SGLocation)initWithLocation:(id)location latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle country:(id)country state:(id)state city:(id)self0 thoroughfare:(id)self1 subThoroughfare:(id)self2 postalCode:(id)self3
{
  codeCopy = code;
  subThoroughfareCopy = subThoroughfare;
  thoroughfareCopy = thoroughfare;
  cityCopy = city;
  stateCopy = state;
  countryCopy = country;
  handleCopy = handle;
  locationCopy = location;
  recordId = [locationCopy recordId];
  origin = [locationCopy origin];
  locationType = [locationCopy locationType];
  label = [locationCopy label];
  address = [locationCopy address];
  airportCode = [locationCopy airportCode];
  [locationCopy quality];
  v29 = v28;

  v39 = [(SGLocation *)self initWithId:recordId origin:origin type:locationType label:label address:address airportCode:airportCode latitude:latitude longitude:longitude accuracy:accuracy quality:v29 handle:handleCopy country:countryCopy state:stateCopy city:cityCopy thoroughfare:thoroughfareCopy subThoroughfare:subThoroughfareCopy postalCode:codeCopy];
  return v39;
}

- (SGLocation)initWithLocation:(id)location latitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy handle:(id)handle
{
  handleCopy = handle;
  locationCopy = location;
  recordId = [locationCopy recordId];
  origin = [locationCopy origin];
  locationType = [locationCopy locationType];
  label = [locationCopy label];
  address = [locationCopy address];
  airportCode = [locationCopy airportCode];
  [locationCopy quality];
  v21 = v20;

  v22 = [(SGLocation *)self initWithId:recordId origin:origin type:locationType label:label address:address airportCode:airportCode latitude:latitude longitude:longitude accuracy:accuracy quality:v21 handle:handleCopy];
  return v22;
}

@end