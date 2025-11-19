@interface SGPostalAddressComponents
+ (id)components:(id)a3 city:(id)a4 state:(id)a5 postalCode:(id)a6 country:(id)a7;
+ (id)components:(id)a3 subLocality:(id)a4 city:(id)a5 subAdministrativeArea:(id)a6 state:(id)a7 postalCode:(id)a8 country:(id)a9 isoCountryCode:(id)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPostalAddressComponents:(id)a3;
- (SGPostalAddressComponents)initWithCoder:(id)a3;
- (SGPostalAddressComponents)initWithStreet:(id)a3 subLocality:(id)a4 city:(id)a5 subAdministrativeArea:(id)a6 state:(id)a7 postalCode:(id)a8 country:(id)a9 isoCountryCode:(id)a10;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqualToPostalAddressComponents:(id)a3
{
  v4 = a3;
  v5 = self->_street;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v8 == v4[2])
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
  if (v11 == v4[3])
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
  if (v14 == v4[4])
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
  if (v17 == v4[5])
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
  if (v20 == v4[6])
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
  if (v23 == v4[7])
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
  if (v28 == v4[8])
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGPostalAddressComponents *)self isEqualToPostalAddressComponents:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  street = self->_street;
  v5 = a3;
  [v5 encodeObject:street forKey:@"street"];
  [v5 encodeObject:self->_subLocality forKey:@"subLocality"];
  [v5 encodeObject:self->_city forKey:@"city"];
  [v5 encodeObject:self->_subAdministrativeArea forKey:@"subAdministrativeArea"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeObject:self->_postalCode forKey:@"postalCode"];
  [v5 encodeObject:self->_country forKey:@"country"];
  [v5 encodeObject:self->_isoCountryCode forKey:@"isoCountryCode"];
}

- (SGPostalAddressComponents)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SGPostalAddressComponents;
  v5 = [(SGPostalAddressComponents *)&v31 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"street"];
    street = v5->_street;
    v5->_street = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"subLocality"];
    subLocality = v5->_subLocality;
    v5->_subLocality = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"city"];
    city = v5->_city;
    v5->_city = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"subAdministrativeArea"];
    subAdministrativeArea = v5->_subAdministrativeArea;
    v5->_subAdministrativeArea = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"state"];
    state = v5->_state;
    v5->_state = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v22;

    v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"country"];
    country = v5->_country;
    v5->_country = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"isoCountryCode"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v28;
  }

  return v5;
}

- (SGPostalAddressComponents)initWithStreet:(id)a3 subLocality:(id)a4 city:(id)a5 subAdministrativeArea:(id)a6 state:(id)a7 postalCode:(id)a8 country:(id)a9 isoCountryCode:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = SGPostalAddressComponents;
  v19 = [(SGPostalAddressComponents *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_street, a3);
    objc_storeStrong(&v20->_subLocality, a4);
    objc_storeStrong(&v20->_city, a5);
    objc_storeStrong(&v20->_subAdministrativeArea, a6);
    objc_storeStrong(&v20->_state, a7);
    objc_storeStrong(&v20->_postalCode, a8);
    objc_storeStrong(&v20->_country, a9);
    objc_storeStrong(&v20->_isoCountryCode, a10);
  }

  return v20;
}

+ (id)components:(id)a3 subLocality:(id)a4 city:(id)a5 subAdministrativeArea:(id)a6 state:(id)a7 postalCode:(id)a8 country:(id)a9 isoCountryCode:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[SGPostalAddressComponents alloc] initWithStreet:v23 subLocality:v22 city:v21 subAdministrativeArea:v20 state:v19 postalCode:v18 country:v17 isoCountryCode:v16];

  return v24;
}

+ (id)components:(id)a3 city:(id)a4 state:(id)a5 postalCode:(id)a6 country:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[SGPostalAddressComponents alloc] initWithStreet:v15 subLocality:0 city:v14 subAdministrativeArea:0 state:v13 postalCode:v12 country:v11 isoCountryCode:0];

  return v16;
}

@end