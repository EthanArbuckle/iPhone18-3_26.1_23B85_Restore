@interface SGPostalAddressComponents
+ (id)components:(id)components city:(id)city state:(id)state postalCode:(id)code country:(id)country;
+ (id)components:(id)components subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)country isoCountryCode:(id)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPostalAddressComponents:(id)components;
- (SGPostalAddressComponents)initWithCoder:(id)coder;
- (SGPostalAddressComponents)initWithStreet:(id)street subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)country isoCountryCode:(id)self0;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGPostalAddressComponents

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_city;
  v5 = [v3 initWithFormat:@"%@/%@/%@/%@/%@/%@/%@/%@", self->_street, self->_subLocality, self->_city, self->_subAdministrativeArea, self->_state, self->_postalCode, self->_country, self->_isoCountryCode];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_street hash];
  v4 = [(NSString *)self->_city hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_postalCode hash]- v4 + 32 * v4;
  return [(NSString *)self->_country hash]- v5 + 32 * v5;
}

- (BOOL)isEqualToPostalAddressComponents:(id)components
{
  componentsCopy = components;
  v5 = self->_street;
  v6 = v5;
  if (v5 == componentsCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v8 = self->_subLocality;
  v9 = v8;
  if (v8 == componentsCopy[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v11 = self->_city;
  v12 = v11;
  if (v11 == componentsCopy[3])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v14 = self->_subAdministrativeArea;
  v15 = v14;
  if (v14 == componentsCopy[4])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v17 = self->_state;
  v18 = v17;
  if (v17 == componentsCopy[5])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v20 = self->_postalCode;
  v21 = v20;
  if (v20 == componentsCopy[6])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v23 = self->_country;
  v24 = v23;
  if (v23 == componentsCopy[7])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
LABEL_27:
      v26 = 0;
      goto LABEL_28;
    }
  }

  v28 = self->_isoCountryCode;
  v29 = v28;
  if (v28 == componentsCopy[8])
  {
    v26 = 1;
  }

  else
  {
    v26 = [(NSString *)v28 isEqual:?];
  }

LABEL_28:
  return v26;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGPostalAddressComponents *)self isEqualToPostalAddressComponents:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  street = self->_street;
  coderCopy = coder;
  [coderCopy encodeObject:street forKey:@"street"];
  [coderCopy encodeObject:self->_subLocality forKey:@"subLocality"];
  [coderCopy encodeObject:self->_city forKey:@"city"];
  [coderCopy encodeObject:self->_subAdministrativeArea forKey:@"subAdministrativeArea"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_postalCode forKey:@"postalCode"];
  [coderCopy encodeObject:self->_country forKey:@"country"];
  [coderCopy encodeObject:self->_isoCountryCode forKey:@"isoCountryCode"];
}

- (SGPostalAddressComponents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = SGPostalAddressComponents;
  v5 = [(SGPostalAddressComponents *)&v31 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"street"];
    street = v5->_street;
    v5->_street = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"subLocality"];
    subLocality = v5->_subLocality;
    v5->_subLocality = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"city"];
    city = v5->_city;
    v5->_city = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"subAdministrativeArea"];
    subAdministrativeArea = v5->_subAdministrativeArea;
    v5->_subAdministrativeArea = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"state"];
    state = v5->_state;
    v5->_state = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v22;

    v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"country"];
    country = v5->_country;
    v5->_country = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"isoCountryCode"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v28;
  }

  return v5;
}

- (SGPostalAddressComponents)initWithStreet:(id)street subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)country isoCountryCode:(id)self0
{
  streetCopy = street;
  localityCopy = locality;
  cityCopy = city;
  areaCopy = area;
  stateCopy = state;
  codeCopy = code;
  countryCopy = country;
  countryCodeCopy = countryCode;
  v28.receiver = self;
  v28.super_class = SGPostalAddressComponents;
  v19 = [(SGPostalAddressComponents *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_street, street);
    objc_storeStrong(&v20->_subLocality, locality);
    objc_storeStrong(&v20->_city, city);
    objc_storeStrong(&v20->_subAdministrativeArea, area);
    objc_storeStrong(&v20->_state, state);
    objc_storeStrong(&v20->_postalCode, code);
    objc_storeStrong(&v20->_country, country);
    objc_storeStrong(&v20->_isoCountryCode, countryCode);
  }

  return v20;
}

+ (id)components:(id)components subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)country isoCountryCode:(id)self0
{
  countryCodeCopy = countryCode;
  countryCopy = country;
  codeCopy = code;
  stateCopy = state;
  areaCopy = area;
  cityCopy = city;
  localityCopy = locality;
  componentsCopy = components;
  v24 = [[SGPostalAddressComponents alloc] initWithStreet:componentsCopy subLocality:localityCopy city:cityCopy subAdministrativeArea:areaCopy state:stateCopy postalCode:codeCopy country:countryCopy isoCountryCode:countryCodeCopy];

  return v24;
}

+ (id)components:(id)components city:(id)city state:(id)state postalCode:(id)code country:(id)country
{
  countryCopy = country;
  codeCopy = code;
  stateCopy = state;
  cityCopy = city;
  componentsCopy = components;
  v16 = [[SGPostalAddressComponents alloc] initWithStreet:componentsCopy subLocality:0 city:cityCopy subAdministrativeArea:0 state:stateCopy postalCode:codeCopy country:countryCopy isoCountryCode:0];

  return v16;
}

@end