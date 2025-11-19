@interface PKLocation
- (BOOL)hasEqualCoordinatesToLocation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (PKLocation)init;
- (PKLocation)initWithCoder:(id)a3;
- (PKLocation)initWithDictionary:(id)a3;
- (id)CLLocation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAltitude:(double)a3;
- (void)setName:(id)a3;
- (void)setRelevantText:(id)a3;
@end

@implementation PKLocation

- (PKLocation)init
{
  v3.receiver = self;
  v3.super_class = PKLocation;
  return [(PKLocation *)&v3 init];
}

- (PKLocation)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PKLocation *)self init];
  if (v5)
  {
    v6 = [v4 PKNumberForKey:@"latitude"];
    [v6 doubleValue];
    v5->_latitude = v7;

    v8 = [v4 PKNumberForKey:@"longitude"];
    [v8 doubleValue];
    v5->_longitude = v9;

    v10 = [v4 PKNumberForKey:@"altitude"];
    v5->_hasAltitude = v10 != 0;
    [v10 doubleValue];
    v5->_altitude = v11;
    v12 = [v4 PKNumberForKey:@"maxDistance"];
    [v12 doubleValue];
    v5->_maxDistance = v13;

    v14 = [v4 PKStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v16 = [v4 PKStringForKey:@"relevantText"];
    relevantText = v5->_relevantText;
    v5->_relevantText = v16;
  }

  return v5;
}

- (PKLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKLocation *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v4 decodeObjectOfClass:v6 forKey:@"latitude"];
    [v8 doubleValue];
    v5->_latitude = v9;

    v10 = [v4 decodeObjectOfClass:v6 forKey:@"longitude"];
    [v10 doubleValue];
    v5->_longitude = v11;

    v12 = [v4 decodeObjectOfClass:v6 forKey:@"altitude"];
    v5->_hasAltitude = v12 != 0;
    [v12 doubleValue];
    v5->_altitude = v13;
    v14 = [v4 decodeObjectOfClass:v6 forKey:@"maxDistance"];
    [v14 doubleValue];
    v5->_maxDistance = v15;

    v16 = [v4 decodeObjectOfClass:v7 forKey:@"name"];
    name = v5->_name;
    v5->_name = v16;

    v18 = [v4 decodeObjectOfClass:v7 forKey:@"relevantText"];
    relevantText = v5->_relevantText;
    v5->_relevantText = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_latitude];
  [v8 encodeObject:v4 forKey:@"latitude"];

  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_longitude];
  [v8 encodeObject:v5 forKey:@"longitude"];

  if (self->_hasAltitude)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_altitude];
    [v8 encodeObject:v6 forKey:@"altitude"];
  }

  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_maxDistance];
  [v8 encodeObject:v7 forKey:@"maxDistance"];

  [v8 encodeObject:self->_name forKey:@"name"];
  [v8 encodeObject:self->_relevantText forKey:@"relevantText"];
}

- (void)setAltitude:(double)a3
{
  self->_altitude = a3;
  self->_hasAltitude = 1;
  atomic_store(0, &self->_hashComputed);
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  atomic_store(0, &self->_hashComputed);
}

- (void)setRelevantText:(id)a3
{
  v4 = [a3 copy];
  relevantText = self->_relevantText;
  self->_relevantText = v4;

  atomic_store(0, &self->_hashComputed);
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_latitude;
  longitude = self->_longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"(%.8g, %.8g)", *&self->_latitude, *&self->_longitude];
  if (self->_maxDistance > 0.0)
  {
    [v3 appendFormat:@", max distance %.1g", *&self->_maxDistance];
  }

  v4 = [v3 copy];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (![(PKLocation *)self hasEqualCoordinatesToLocation:v5])
    {
      LOBYTE(v10) = 0;
LABEL_17:

      goto LABEL_18;
    }

    v6 = v5[3];
    v7 = self->_name;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v8)
      {
LABEL_16:

        goto LABEL_17;
      }

      v10 = [(NSString *)v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_17;
      }
    }

    relevantText = self->_relevantText;
    v12 = v5[4];
    v7 = relevantText;
    v13 = v12;
    v9 = v13;
    if (v7 == v13)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = 0;
      if (v7 && v13)
      {
        LOBYTE(v10) = [(NSString *)v7 isEqualToString:v13];
      }
    }

    goto LABEL_16;
  }

  LOBYTE(v10) = 0;
LABEL_18:

  return v10;
}

- (BOOL)hasEqualCoordinatesToLocation:(id)a3
{
  v4 = a3;
  if (self->_latitude != v4[5] || self->_longitude != v4[6])
  {
    goto LABEL_6;
  }

  if (!self->_hasAltitude)
  {
    v5 = *(v4 + 8) ^ 1;
    goto LABEL_8;
  }

  if (*(v4 + 8))
  {
    v5 = self->_altitude == v4[7];
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (unint64_t)hash
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_hashComputed);
  if (v3)
  {
    return atomic_load(&self->_hash);
  }

  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, &self->_latitude, 8u);
  CC_SHA1_Update(&c, &self->_longitude, 8u);
  altitude = 0.0;
  if (self->_hasAltitude)
  {
    altitude = self->_altitude;
  }

  data = altitude;
  CC_SHA1_Update(&c, &data, 8u);
  v6 = [(NSString *)self->_name hash];
  CC_SHA1_Update(&c, &v6, 8u);
  v6 = [(NSString *)self->_relevantText hash];
  CC_SHA1_Update(&c, &v6, 8u);
  CC_SHA1_Final(md, &c);
  result = *md;
  atomic_store(*md, &self->_hash);
  atomic_store(1u, &self->_hashComputed);
  return result;
}

- (id)CLLocation
{
  v2 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:self->_latitude longitude:self->_longitude];

  return v2;
}

@end