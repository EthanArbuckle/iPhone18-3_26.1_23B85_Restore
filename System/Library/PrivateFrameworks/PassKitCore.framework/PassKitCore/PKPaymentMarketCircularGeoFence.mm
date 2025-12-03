@interface PKPaymentMarketCircularGeoFence
- (BOOL)containsLocation:(id)location;
- (PKPaymentMarketCircularGeoFence)init;
- (PKPaymentMarketCircularGeoFence)initWithCoder:(id)coder;
- (PKPaymentMarketCircularGeoFence)initWithDictionary:(id)dictionary;
- (double)distanceFromLocation:(id)location;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentMarketCircularGeoFence

- (PKPaymentMarketCircularGeoFence)init
{
  v6.receiver = self;
  v6.super_class = PKPaymentMarketCircularGeoFence;
  v2 = [(PKPaymentMarketCircularGeoFence *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;
  }

  return v2;
}

- (PKPaymentMarketCircularGeoFence)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKDictionaryForKey:@"Center"];
  v6 = [v5 PKNumberForKey:@"Latitude"];
  v7 = [v5 PKNumberForKey:@"Longitude"];
  v8 = [dictionaryCopy PKNumberForKey:@"Radius"];

  selfCopy = 0;
  if (v6 && v7 && v8)
  {
    v10 = [(PKPaymentMarketCircularGeoFence *)self init];
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E695FBB0]);
      [v6 doubleValue];
      v13 = v12;
      [v7 doubleValue];
      v15 = CLLocationCoordinate2DMake(v13, v14);
      [v8 doubleValue];
      v17 = v16;
      uUIDString = [(NSUUID *)v10->_identifier UUIDString];
      v19 = [v11 initWithCenter:uUIDString radius:v15.latitude identifier:{v15.longitude, v17}];
      circle = v10->_circle;
      v10->_circle = v19;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)containsLocation:(id)location
{
  circle = self->_circle;
  [location coordinate];

  return [(CLCircularRegion *)circle containsCoordinate:?];
}

- (double)distanceFromLocation:(id)location
{
  v4 = MEMORY[0x1E6985C40];
  locationCopy = location;
  v6 = [v4 alloc];
  [(CLCircularRegion *)self->_circle center];
  v8 = v7;
  [(CLCircularRegion *)self->_circle center];
  v9 = [v6 initWithLatitude:v8 longitude:?];
  [v9 distanceFromLocation:locationCopy];
  v11 = v10;

  return v11;
}

- (PKPaymentMarketCircularGeoFence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKPaymentMarketCircularGeoFence;
  v5 = [(PKPaymentMarketCircularGeoFence *)&v20 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"latitude"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"longitude"];
    v9 = v8;
    [coderCopy decodeDoubleForKey:@"radius"];
    v11 = v10;
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = objc_alloc(MEMORY[0x1E695FBB0]);
    v15 = CLLocationCoordinate2DMake(v7, v9);
    uUIDString = [(NSUUID *)v5->_identifier UUIDString];
    v17 = [v14 initWithCenter:uUIDString radius:v15.latitude identifier:{v15.longitude, v11}];
    circle = v5->_circle;
    v5->_circle = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [(CLCircularRegion *)self->_circle center];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(CLCircularRegion *)self->_circle center];
  [coderCopy encodeDouble:@"longitude" forKey:v5];
  [(CLCircularRegion *)self->_circle radius];
  [coderCopy encodeDouble:@"radius" forKey:?];
}

@end