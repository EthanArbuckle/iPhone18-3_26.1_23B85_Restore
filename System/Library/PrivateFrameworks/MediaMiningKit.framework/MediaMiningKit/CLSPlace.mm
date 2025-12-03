@interface CLSPlace
- (CLLocationCoordinate2D)coordinate;
- (CLSPlace)initWithCoder:(id)coder;
- (CLSPlace)initWithName:(id)name region:(id)region placemark:(id)placemark;
- (CLSPlace)initWithPlacemark:(id)placemark;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (CLSPlace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];

  v8 = [(CLSPlace *)self initWithName:v5 region:v6 placemark:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_region forKey:@"region"];
  [coderCopy encodeObject:self->_placemark forKey:@"placemark"];
}

- (CLLocationCoordinate2D)coordinate
{
  [(CLCircularRegion *)self->_region center];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (CLSPlace)initWithName:(id)name region:(id)region placemark:(id)placemark
{
  placemarkCopy = placemark;
  v19.receiver = self;
  v19.super_class = CLSPlace;
  v8 = [(CLSPlace *)&v19 init];
  if (v8)
  {
    location = [placemarkCopy location];
    v10 = MEMORY[0x277CCACA8];
    [location coordinate];
    v12 = v11;
    [location coordinate];
    v14 = [v10 stringWithFormat:@"<+%f, %f>", v12, v13];
    name = v8->_name;
    v8->_name = v14;

    region = [placemarkCopy region];
    region = v8->_region;
    v8->_region = region;

    objc_storeStrong(&v8->_placemark, placemark);
  }

  return v8;
}

- (CLSPlace)initWithPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  location = [placemarkCopy location];
  v6 = MEMORY[0x277CCACA8];
  [location coordinate];
  v8 = v7;
  [location coordinate];
  v10 = [v6 stringWithFormat:@"<+%f, %f>", v8, v9];
  region = [placemarkCopy region];
  v12 = [(CLSPlace *)self initWithName:v10 region:region placemark:placemarkCopy];

  return v12;
}

@end