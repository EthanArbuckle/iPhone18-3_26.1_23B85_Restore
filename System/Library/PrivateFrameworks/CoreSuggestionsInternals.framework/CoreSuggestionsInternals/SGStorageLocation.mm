@interface SGStorageLocation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStorageLocation:(id)a3;
- (NSString)description;
- (SGStorageLocation)initWithCoder:(id)a3;
- (SGStorageLocation)initWithType:(int)a3 label:(id)a4 address:(id)a5 airportCode:(id)a6 latitude:(double)a7 longitude:(double)a8 accuracy:(double)a9 quality:(double)a10 handle:(id)a11 country:(id)a12 state:(id)a13 city:(id)a14 thoroughfare:(id)a15 subThoroughfare:(id)a16 postalCode:(id)a17;
- (id)convertToLocationWithId:(id)a3 origin:(id)a4;
- (id)geocodedLocationWithLabel:(id)a3 address:(id)a4 latitude:(double)a5 longitude:(double)a6 accuracy:(double)a7 handle:(id)a8 country:(id)a9 state:(id)a10 city:(id)a11 thoroughfare:(id)a12 subThoroughfare:(id)a13 postalCode:(id)a14;
- (id)geocodedLocationWithLatitude:(double)a3 longitude:(double)a4 accuracy:(double)a5 handle:(id)a6 country:(id)a7 state:(id)a8 city:(id)a9 thoroughfare:(id)a10 subThoroughfare:(id)a11 postalCode:(id)a12;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGStorageLocation

- (id)geocodedLocationWithLabel:(id)a3 address:(id)a4 latitude:(double)a5 longitude:(double)a6 accuracy:(double)a7 handle:(id)a8 country:(id)a9 state:(id)a10 city:(id)a11 thoroughfare:(id)a12 subThoroughfare:(id)a13 postalCode:(id)a14
{
  v39 = a14;
  v38 = a13;
  v37 = a12;
  v36 = a11;
  v35 = a10;
  v34 = a9;
  v33 = a8;
  v24 = a4;
  v25 = a3;
  v31 = [SGStorageLocation alloc];
  v26 = [(SGStorageLocation *)self locationType];
  v27 = v25;
  if (!v25)
  {
    v27 = [(SGStorageLocation *)self label];
  }

  v40 = v24;
  if (!v24)
  {
    v40 = [(SGStorageLocation *)self address];
  }

  v28 = [(SGStorageLocation *)self airportCode];
  [(SGStorageLocation *)self quality];
  v32 = [(SGStorageLocation *)v31 initWithType:v26 label:v27 address:v40 airportCode:v28 latitude:v33 longitude:v34 accuracy:a5 quality:a6 handle:a7 country:v29 state:v35 city:v36 thoroughfare:v37 subThoroughfare:v38 postalCode:v39];

  if (v24)
  {
    if (v25)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v25)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v32;
}

- (id)geocodedLocationWithLatitude:(double)a3 longitude:(double)a4 accuracy:(double)a5 handle:(id)a6 country:(id)a7 state:(id)a8 city:(id)a9 thoroughfare:(id)a10 subThoroughfare:(id)a11 postalCode:(id)a12
{
  v36 = a12;
  v35 = a11;
  v33 = a10;
  v22 = a9;
  v23 = a8;
  v34 = a7;
  v32 = a6;
  v24 = [SGStorageLocation alloc];
  v25 = [(SGStorageLocation *)self locationType];
  v31 = [(SGStorageLocation *)self label];
  v26 = [(SGStorageLocation *)self address];
  v27 = [(SGStorageLocation *)self airportCode];
  [(SGStorageLocation *)self quality];
  v29 = [(SGStorageLocation *)v24 initWithType:v25 label:v31 address:v26 airportCode:v27 latitude:v32 longitude:v34 accuracy:a3 quality:a4 handle:a5 country:v28 state:v23 city:v22 thoroughfare:v33 subThoroughfare:v35 postalCode:v36];

  return v29;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGStorageLocation@%0.2f/%0.2f label: '%@' address: '%@' airportCode: '%@'", *&self->_latitude, *&self->_longitude, self->_label, self->_address, self->_airportCode];

  return v2;
}

- (id)convertToLocationWithId:(id)a3 origin:(id)a4
{
  v6 = MEMORY[0x277D02000];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = *&self->_state;
  v11 = [v9 initWithId:v8 origin:v7 type:self->_locationType label:self->_label address:self->_address airportCode:self->_airportCode latitude:self->_latitude longitude:self->_longitude accuracy:self->_accuracy quality:self->_quality handle:self->_handle country:self->_country state:self->_state city:self->_city thoroughfare:self->_thoroughfare subThoroughfare:self->_subThoroughfare postalCode:self->_postalCode];

  return v11;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGStorageLocation *)self isEqualToStorageLocation:v5];
  }

  return v6;
}

- (BOOL)isEqualToStorageLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_latitude != v4[5] || self->_longitude != v4[6])
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

- (SGStorageLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = SGStorageLocation;
  v5 = [(SGStorageLocation *)&v41 init];
  if (v5)
  {
    v5->_locationType = [v4 decodeInt64ForKey:@"locationType"];
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"label"];
    label = v5->_label;
    v5->_label = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"airportCode"];
    airportCode = v5->_airportCode;
    v5->_airportCode = v13;

    [v4 decodeDoubleForKey:@"latitude"];
    v5->_latitude = v15;
    [v4 decodeDoubleForKey:@"longitude"];
    v5->_longitude = v16;
    [v4 decodeDoubleForKey:@"accuracy"];
    v5->_accuracy = v17;
    [v4 decodeDoubleForKey:@"quality"];
    v5->_quality = v18;
    v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v20;

    v22 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"country"];
    country = v5->_country;
    v5->_country = v23;

    v25 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"state"];
    state = v5->_state;
    v5->_state = v26;

    v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"city"];
    city = v5->_city;
    v5->_city = v29;

    v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"thoroughfare"];
    thoroughfare = v5->_thoroughfare;
    v5->_thoroughfare = v32;

    v34 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"subThoroughfare"];
    subThoroughfare = v5->_subThoroughfare;
    v5->_subThoroughfare = v35;

    v37 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  locationType = self->_locationType;
  v5 = a3;
  [v5 encodeInt64:locationType forKey:@"locationType"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeObject:self->_address forKey:@"address"];
  [v5 encodeObject:self->_airportCode forKey:@"airportCode"];
  [v5 encodeDouble:@"latitude" forKey:self->_latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_longitude];
  [v5 encodeDouble:@"accuracy" forKey:self->_accuracy];
  [v5 encodeDouble:@"quality" forKey:self->_quality];
  [v5 encodeObject:self->_handle forKey:@"handle"];
  [v5 encodeObject:self->_country forKey:@"country"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeObject:self->_city forKey:@"city"];
  [v5 encodeObject:self->_thoroughfare forKey:@"thoroughfare"];
  [v5 encodeObject:self->_subThoroughfare forKey:@"subThoroughfare"];
  [v5 encodeObject:self->_postalCode forKey:@"postalCode"];
}

- (SGStorageLocation)initWithType:(int)a3 label:(id)a4 address:(id)a5 airportCode:(id)a6 latitude:(double)a7 longitude:(double)a8 accuracy:(double)a9 quality:(double)a10 handle:(id)a11 country:(id)a12 state:(id)a13 city:(id)a14 thoroughfare:(id)a15 subThoroughfare:(id)a16 postalCode:(id)a17
{
  v47 = a4;
  v26 = a5;
  v52 = a6;
  v27 = a11;
  v53 = a12;
  v51 = a13;
  v50 = a14;
  v49 = a15;
  v28 = self;
  v48 = a16;
  v29 = a17;
  if (fabs(a7) > 90.0)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"SGStorageLocation.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"isnan(latitude) || (-90 <= latitude && latitude <= 90)"}];
  }

  if (fabs(a8) > 180.0)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"SGStorageLocation.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"isnan(longitude) || (-180 <= longitude && longitude <= 180)"}];
  }

  if ((*&a9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:v28 file:@"SGStorageLocation.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"isfinite(accuracy)"}];
  }

  if ((*&a10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:v28 file:@"SGStorageLocation.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"isfinite(quality)"}];
  }

  v54.receiver = v28;
  v54.super_class = SGStorageLocation;
  v30 = [(SGStorageLocation *)&v54 init];
  v31 = v30;
  if (v30)
  {
    v30->_locationType = a3;
    v32 = [v47 copy];
    label = v31->_label;
    v31->_label = v32;

    v34 = [v26 copy];
    address = v31->_address;
    v31->_address = v34;

    v36 = [v52 copy];
    airportCode = v31->_airportCode;
    v31->_airportCode = v36;

    v31->_latitude = a7;
    v31->_longitude = a8;
    v31->_accuracy = a9;
    v31->_quality = a10;
    v38 = [v27 copy];
    handle = v31->_handle;
    v31->_handle = v38;

    objc_storeStrong(&v31->_country, a12);
    objc_storeStrong(&v31->_state, a13);
    objc_storeStrong(&v31->_city, a14);
    objc_storeStrong(&v31->_thoroughfare, a15);
    objc_storeStrong(&v31->_subThoroughfare, a16);
    objc_storeStrong(&v31->_postalCode, a17);
  }

  return v31;
}

@end