@interface CLSPlace
- (CLLocationCoordinate2D)coordinate;
- (CLSPlace)initWithCoder:(id)a3;
- (CLSPlace)initWithName:(id)a3 region:(id)a4 placemark:(id)a5;
- (CLSPlace)initWithPlacemark:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSPlace

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CLSPlace;
  v4 = [(CLSPlace *)&v10 description];
  [(CLCircularRegion *)self->_region center];
  v6 = v5;
  [(CLCircularRegion *)self->_region center];
  v8 = [v3 stringWithFormat:@"%@: {%f, %f}", v4, v6, v7];

  return v8;
}

- (CLSPlace)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];

  v8 = [(CLSPlace *)self initWithName:v5 region:v6 placemark:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_region forKey:@"region"];
  [v5 encodeObject:self->_placemark forKey:@"placemark"];
}

- (CLLocationCoordinate2D)coordinate
{
  [(CLCircularRegion *)self->_region center];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (CLSPlace)initWithName:(id)a3 region:(id)a4 placemark:(id)a5
{
  v7 = a5;
  v19.receiver = self;
  v19.super_class = CLSPlace;
  v8 = [(CLSPlace *)&v19 init];
  if (v8)
  {
    v9 = [v7 location];
    v10 = MEMORY[0x277CCACA8];
    [v9 coordinate];
    v12 = v11;
    [v9 coordinate];
    v14 = [v10 stringWithFormat:@"<+%f, %f>", v12, v13];
    name = v8->_name;
    v8->_name = v14;

    v16 = [v7 region];
    region = v8->_region;
    v8->_region = v16;

    objc_storeStrong(&v8->_placemark, a5);
  }

  return v8;
}

- (CLSPlace)initWithPlacemark:(id)a3
{
  v4 = a3;
  v5 = [v4 location];
  v6 = MEMORY[0x277CCACA8];
  [v5 coordinate];
  v8 = v7;
  [v5 coordinate];
  v10 = [v6 stringWithFormat:@"<+%f, %f>", v8, v9];
  v11 = [v4 region];
  v12 = [(CLSPlace *)self initWithName:v10 region:v11 placemark:v4];

  return v12;
}

@end