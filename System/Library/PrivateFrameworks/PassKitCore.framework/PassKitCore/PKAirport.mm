@interface PKAirport
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)location;
- (PKAirport)initWithAirportCode:(id)code name:(id)name city:(id)city timeZone:(id)zone location:(CLLocationCoordinate2D)location;
- (PKAirport)initWithCoder:(id)coder;
- (PKAirport)initWithMockAirportDictionary:(id)dictionary;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAirport

- (PKAirport)initWithAirportCode:(id)code name:(id)name city:(id)city timeZone:(id)zone location:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  codeCopy = code;
  nameCopy = name;
  cityCopy = city;
  zoneCopy = zone;
  v21.receiver = self;
  v21.super_class = PKAirport;
  v18 = [(PKAirport *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_code, code);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_city, city);
    objc_storeStrong(&v19->_timeZone, zone);
    v19->_latitude = latitude;
    v19->_longitude = longitude;
  }

  if (![(PKAirport *)v19 isValid])
  {

    v19 = 0;
  }

  return v19;
}

- (PKAirport)initWithMockAirportDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKAirport;
  v5 = [(PKAirport *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"code"];
    code = v5->_code;
    v5->_code = v6;

    v8 = [dictionaryCopy PKStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [dictionaryCopy PKStringForKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [dictionaryCopy PKStringForKey:@"timeZoneName"];
    v13 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v12];
    timeZone = v5->_timeZone;
    v5->_timeZone = v13;

    [dictionaryCopy PKDoubleForKey:@"latitude"];
    v5->_latitude = v15;
    [dictionaryCopy PKDoubleForKey:@"longitude"];
    v5->_longitude = v16;
  }

  if (![(PKAirport *)v5 isValid])
  {

    v5 = 0;
  }

  return v5;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_code forKeyedSubscript:@"code"];
  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:self->_city forKeyedSubscript:@"city"];
  name = [(NSTimeZone *)self->_timeZone name];
  [v3 setObject:name forKeyedSubscript:@"timeZoneName"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latitude];
  [v3 setObject:v5 forKeyedSubscript:@"latitude"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_longitude];
  [v3 setObject:v6 forKeyedSubscript:@"longitude"];

  v7 = [v3 copy];

  return v7;
}

- (CLLocationCoordinate2D)location
{
  v4 = CLLocationCoordinate2DMake(self->_latitude, self->_longitude);
  longitude = v4.longitude;
  latitude = v4.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PKAirport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKAirport;
  v5 = [(PKAirport *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"code"];
    code = v5->_code;
    v5->_code = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZoneName"];
    v13 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v12];
    timeZone = v5->_timeZone;
    v5->_timeZone = v13;

    [coderCopy decodeDoubleForKey:@"location.latitude"];
    v5->_latitude = v15;
    [coderCopy decodeDoubleForKey:@"location.longitude"];
    v5->_longitude = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  code = self->_code;
  coderCopy = coder;
  [coderCopy encodeObject:code forKey:@"code"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_city forKey:@"city"];
  name = [(NSTimeZone *)self->_timeZone name];
  [coderCopy encodeObject:name forKey:@"timeZoneName"];

  [coderCopy encodeDouble:@"location.latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"location.longitude" forKey:self->_longitude];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"code: '%@'; ", self->_code];
  [v3 appendFormat:@"name: '%@'; ", self->_name];
  [v3 appendFormat:@"city: '%@'; ", self->_city];
  [v3 appendFormat:@"timeZone: '%@'; ", self->_timeZone];
  [v3 appendFormat:@"location: '[%f, %f]'; ", *&self->_latitude, *&self->_longitude];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        code = v6->_code;
        v8 = self->_code;
        v9 = code;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_23;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_24;
          }
        }

        name = v6->_name;
        v8 = self->_name;
        v14 = name;
        v10 = v14;
        if (v8 == v14)
        {
        }

        else
        {
          if (!v8 || !v14)
          {
            goto LABEL_23;
          }

          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_24;
          }
        }

        city = v6->_city;
        v8 = self->_city;
        v17 = city;
        v10 = v17;
        if (v8 == v17)
        {

LABEL_28:
          timeZone = self->_timeZone;
          v21 = v6->_timeZone;
          if (timeZone && v21)
          {
            if (([(NSTimeZone *)timeZone isEqual:?]& 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if (timeZone != v21)
          {
            goto LABEL_24;
          }

          if (self->_latitude == v6->_latitude)
          {
            v12 = self->_longitude == v6->_longitude;
            goto LABEL_25;
          }

LABEL_24:
          v12 = 0;
LABEL_25:

          goto LABEL_26;
        }

        if (v8 && v17)
        {
          v18 = [(NSString *)v8 isEqualToString:v17];

          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }

LABEL_23:

        goto LABEL_24;
      }
    }

    v12 = 0;
  }

LABEL_26:

  return v12;
}

- (unint64_t)hash
{
  [(NSString *)self->_name hash];
  [(NSString *)self->_city hash];
  [(NSTimeZone *)self->_timeZone hash];
  v3 = SipHash();
  v4 = self->_latitude - v3 + 32 * v3;
  return self->_longitude - v4 + 32 * v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKAirport allocWithZone:](PKAirport init];
  v6 = [(NSString *)self->_code copyWithZone:zone];
  code = v5->_code;
  v5->_code = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  name = v5->_name;
  v5->_name = v8;

  v10 = [(NSString *)self->_city copyWithZone:zone];
  city = v5->_city;
  v5->_city = v10;

  v12 = [(NSTimeZone *)self->_timeZone copyWithZone:zone];
  timeZone = v5->_timeZone;
  v5->_timeZone = v12;

  v5->_latitude = self->_latitude;
  v5->_longitude = self->_longitude;
  return v5;
}

@end