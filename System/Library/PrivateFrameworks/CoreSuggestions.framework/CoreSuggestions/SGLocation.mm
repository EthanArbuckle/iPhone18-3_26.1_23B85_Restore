@interface SGLocation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLocation:(id)a3;
- (BOOL)isGeocoded;
- (NSString)description;
- (SGLocation)initWithCoder:(id)a3;
- (SGLocation)initWithId:(id)a3 origin:(id)a4 type:(unint64_t)a5 label:(id)a6 address:(id)a7 airportCode:(id)a8 latitude:(double)a9 longitude:(double)a10 accuracy:(double)a11 quality:(double)a12 handle:(id)a13 country:(id)a14 state:(id)a15 city:(id)a16 thoroughfare:(id)a17 subThoroughfare:(id)a18 postalCode:(id)a19;
- (SGLocation)initWithLocation:(id)a3 latitude:(double)a4 longitude:(double)a5 accuracy:(double)a6 handle:(id)a7;
- (SGLocation)initWithLocation:(id)a3 latitude:(double)a4 longitude:(double)a5 accuracy:(double)a6 handle:(id)a7 country:(id)a8 state:(id)a9 city:(id)a10 thoroughfare:(id)a11 subThoroughfare:(id)a12 postalCode:(id)a13;
- (SGLocation)initWithMailAccountIdentifier:(id)a3 messageIdentifier:(id)a4 type:(unint64_t)a5 label:(id)a6 address:(id)a7 airportCode:(id)a8 latitude:(double)a9 longitude:(double)a10;
- (id)geocodedLocationWithLabel:(id)a3 address:(id)a4 latitude:(double)a5 longitude:(double)a6 accuracy:(double)a7 handle:(id)a8 country:(id)a9 state:(id)a10 city:(id)a11 thoroughfare:(id)a12 subThoroughfare:(id)a13 postalCode:(id)a14;
- (id)geocodedLocationWithLatitude:(double)a3 longitude:(double)a4 accuracy:(double)a5 handle:(id)a6 country:(id)a7 state:(id)a8 city:(id)a9 thoroughfare:(id)a10 subThoroughfare:(id)a11 postalCode:(id)a12;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGLocation

- (SGLocation)initWithMailAccountIdentifier:(id)a3 messageIdentifier:(id)a4 type:(unint64_t)a5 label:(id)a6 address:(id)a7 airportCode:(id)a8 latitude:(double)a9 longitude:(double)a10
{
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a4;
  v22 = a3;
  v23 = [SGRecordId recordIdWithNumericValue:0];
  v24 = [SGOrigin originWithType:1 sourceKey:v22 externalKey:v21 fromForwardedMessage:0];

  v25 = [[SGLocation alloc] initWithId:v23 origin:v24 type:a5 label:v20 address:v19 airportCode:v18 latitude:a9 longitude:a10 accuracy:1.0 quality:0.0 handle:0];
  return v25;
}

- (id)geocodedLocationWithLatitude:(double)a3 longitude:(double)a4 accuracy:(double)a5 handle:(id)a6 country:(id)a7 state:(id)a8 city:(id)a9 thoroughfare:(id)a10 subThoroughfare:(id)a11 postalCode:(id)a12
{
  v22 = a12;
  v23 = a11;
  v24 = a10;
  v25 = a9;
  v26 = a8;
  v27 = a7;
  v28 = a6;
  v29 = [[SGLocation alloc] initWithLocation:self latitude:v28 longitude:v27 accuracy:v26 handle:v25 country:v24 state:a3 city:a4 thoroughfare:a5 subThoroughfare:v23 postalCode:v22];

  return v29;
}

- (id)geocodedLocationWithLabel:(id)a3 address:(id)a4 latitude:(double)a5 longitude:(double)a6 accuracy:(double)a7 handle:(id)a8 country:(id)a9 state:(id)a10 city:(id)a11 thoroughfare:(id)a12 subThoroughfare:(id)a13 postalCode:(id)a14
{
  v40 = a14;
  v39 = a13;
  v37 = a12;
  v36 = a11;
  v35 = a10;
  v34 = a9;
  v33 = a8;
  v24 = a4;
  v25 = a3;
  v32 = [SGLocation alloc];
  v26 = [(SGObject *)self recordId];
  v38 = [(SGObject *)self origin];
  v30 = [(SGLocation *)self locationType];
  v42 = v25;
  if (!v25)
  {
    v42 = [(SGLocation *)self label];
  }

  v41 = v24;
  if (!v24)
  {
    v41 = [(SGLocation *)self address];
  }

  v27 = [(SGLocation *)self airportCode];
  [(SGLocation *)self quality];
  v31 = [(SGLocation *)v32 initWithId:v26 origin:v38 type:v30 label:v42 address:v41 airportCode:v27 latitude:a5 longitude:a6 accuracy:a7 quality:v28 handle:v33 country:v34 state:v35 city:v36 thoroughfare:v37 subThoroughfare:v39 postalCode:v40];

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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (BOOL)isEqualToLocation:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SGLocation;
  if (![(SGObject *)&v19 isEqualToSuggestion:v4])
  {
    goto LABEL_26;
  }

  if ([(SGLocation *)self isGeocoded])
  {
    if (self->_latitude != v4[6] || self->_longitude != v4[7])
    {
      goto LABEL_26;
    }
  }

  else if ([v4 isGeocoded])
  {
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  v5 = self->_address;
  v6 = v5;
  if (v5 == *(v4 + 5))
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
  if (v8 == *(v4 + 10))
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
  if (v11 == *(v4 + 11))
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
  if (v14 == *(v4 + 4))
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

  if (self->_locationType != *(v4 + 3) || self->_accuracy != v4[8])
  {
    goto LABEL_26;
  }

  v17 = self->_quality == v4[9];
LABEL_27:

  return v17;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGLocation *)self isEqualToLocation:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGLocation;
  v4 = a3;
  [(SGObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_locationType forKey:{@"locationType", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_label forKey:@"label"];
  [v4 encodeObject:self->_address forKey:@"address"];
  [v4 encodeObject:self->_airportCode forKey:@"airportCode"];
  [v4 encodeDouble:@"latitude" forKey:self->_latitude];
  [v4 encodeDouble:@"longitude" forKey:self->_longitude];
  [v4 encodeDouble:@"accuracy" forKey:self->_accuracy];
  [v4 encodeDouble:@"quality" forKey:self->_quality];
  [v4 encodeObject:self->_handle forKey:@"handle"];
  [v4 encodeObject:self->_country forKey:@"country"];
  [v4 encodeObject:self->_state forKey:@"state"];
  [v4 encodeObject:self->_city forKey:@"city"];
  [v4 encodeObject:self->_thoroughfare forKey:@"thoroughfare"];
  [v4 encodeObject:self->_subThoroughfare forKey:@"subThoroughfare"];
  [v4 encodeObject:self->_postalCode forKey:@"postalCode"];
}

- (SGLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = SGLocation;
  v5 = [(SGObject *)&v41 initWithCoder:v4];
  if (v5)
  {
    v5->_locationType = [v4 decodeInt64ForKey:@"locationType"];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"label"];
    label = v5->_label;
    v5->_label = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
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
    v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v20;

    v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"country"];
    country = v5->_country;
    v5->_country = v23;

    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"state"];
    state = v5->_state;
    v5->_state = v26;

    v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"city"];
    city = v5->_city;
    v5->_city = v29;

    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"thoroughfare"];
    thoroughfare = v5->_thoroughfare;
    v5->_thoroughfare = v32;

    v34 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"subThoroughfare"];
    subThoroughfare = v5->_subThoroughfare;
    v5->_subThoroughfare = v35;

    v37 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v38;
  }

  return v5;
}

- (SGLocation)initWithId:(id)a3 origin:(id)a4 type:(unint64_t)a5 label:(id)a6 address:(id)a7 airportCode:(id)a8 latitude:(double)a9 longitude:(double)a10 accuracy:(double)a11 quality:(double)a12 handle:(id)a13 country:(id)a14 state:(id)a15 city:(id)a16 thoroughfare:(id)a17 subThoroughfare:(id)a18 postalCode:(id)a19
{
  v56 = a3;
  v53 = a4;
  v26 = a6;
  v27 = a7;
  v51 = a8;
  v28 = a13;
  v55 = a14;
  v52 = a15;
  v29 = a16;
  v50 = a17;
  v49 = a18;
  v48 = a19;
  if (fabs(a9) > 90.0)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"SGLocation.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"isnan(latitude) || (-90 <= latitude && latitude <= 90)"}];
  }

  if (fabs(a10) > 180.0)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"SGLocation.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"isnan(longitude) || (-180 <= longitude && longitude <= 180)"}];
  }

  if ((*&a11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"SGLocation.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"isfinite(accuracy)"}];
  }

  if ((*&a12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"SGLocation.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"isfinite(quality)"}];
  }

  v57.receiver = self;
  v57.super_class = SGLocation;
  v30 = [(SGObject *)&v57 initWithRecordId:v56 origin:v53];
  v31 = v30;
  if (v30)
  {
    v30->_locationType = a5;
    v32 = [v26 copy];
    label = v31->_label;
    v31->_label = v32;

    v34 = [v27 copy];
    address = v31->_address;
    v31->_address = v34;

    v36 = [v51 copy];
    airportCode = v31->_airportCode;
    v31->_airportCode = v36;

    v31->_latitude = a9;
    v31->_longitude = a10;
    v31->_accuracy = a11;
    v31->_quality = a12;
    v38 = [v28 copy];
    handle = v31->_handle;
    v31->_handle = v38;

    objc_storeStrong(&v31->_country, a14);
    objc_storeStrong(&v31->_state, a15);
    objc_storeStrong(&v31->_city, a16);
    objc_storeStrong(&v31->_thoroughfare, a17);
    objc_storeStrong(&v31->_subThoroughfare, a18);
    objc_storeStrong(&v31->_postalCode, a19);
  }

  return v31;
}

- (SGLocation)initWithLocation:(id)a3 latitude:(double)a4 longitude:(double)a5 accuracy:(double)a6 handle:(id)a7 country:(id)a8 state:(id)a9 city:(id)a10 thoroughfare:(id)a11 subThoroughfare:(id)a12 postalCode:(id)a13
{
  v22 = a13;
  v37 = a12;
  v36 = a11;
  v35 = a10;
  v33 = a9;
  v40 = a8;
  v23 = a7;
  v24 = a3;
  v34 = [v24 recordId];
  v32 = [v24 origin];
  v31 = [v24 locationType];
  v25 = [v24 label];
  v26 = [v24 address];
  v27 = [v24 airportCode];
  [v24 quality];
  v29 = v28;

  v39 = [(SGLocation *)self initWithId:v34 origin:v32 type:v31 label:v25 address:v26 airportCode:v27 latitude:a4 longitude:a5 accuracy:a6 quality:v29 handle:v23 country:v40 state:v33 city:v35 thoroughfare:v36 subThoroughfare:v37 postalCode:v22];
  return v39;
}

- (SGLocation)initWithLocation:(id)a3 latitude:(double)a4 longitude:(double)a5 accuracy:(double)a6 handle:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [v13 recordId];
  v15 = [v13 origin];
  v16 = [v13 locationType];
  v17 = [v13 label];
  v18 = [v13 address];
  v19 = [v13 airportCode];
  [v13 quality];
  v21 = v20;

  v22 = [(SGLocation *)self initWithId:v14 origin:v15 type:v16 label:v17 address:v18 airportCode:v19 latitude:a4 longitude:a5 accuracy:a6 quality:v21 handle:v12];
  return v22;
}

@end