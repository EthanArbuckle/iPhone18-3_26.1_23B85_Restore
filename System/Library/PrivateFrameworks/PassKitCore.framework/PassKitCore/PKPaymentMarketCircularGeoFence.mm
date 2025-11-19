@interface PKPaymentMarketCircularGeoFence
- (BOOL)containsLocation:(id)a3;
- (PKPaymentMarketCircularGeoFence)init;
- (PKPaymentMarketCircularGeoFence)initWithCoder:(id)a3;
- (PKPaymentMarketCircularGeoFence)initWithDictionary:(id)a3;
- (double)distanceFromLocation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentMarketCircularGeoFence

- (PKPaymentMarketCircularGeoFence)init
{
  v6.receiver = self;
  v6.super_class = PKPaymentMarketCircularGeoFence;
  v2 = [(PKPaymentMarketCircularGeoFence *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

- (PKPaymentMarketCircularGeoFence)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKDictionaryForKey:@"Center"];
  v6 = [v5 PKNumberForKey:@"Latitude"];
  v7 = [v5 PKNumberForKey:@"Longitude"];
  v8 = [v4 PKNumberForKey:@"Radius"];

  v9 = 0;
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
      v18 = [(NSUUID *)v10->_identifier UUIDString];
      v19 = [v11 initWithCenter:v18 radius:v15.latitude identifier:{v15.longitude, v17}];
      circle = v10->_circle;
      v10->_circle = v19;
    }

    self = v10;
    v9 = self;
  }

  return v9;
}

- (BOOL)containsLocation:(id)a3
{
  circle = self->_circle;
  [a3 coordinate];

  return [(CLCircularRegion *)circle containsCoordinate:?];
}

- (double)distanceFromLocation:(id)a3
{
  v4 = MEMORY[0x1E6985C40];
  v5 = a3;
  v6 = [v4 alloc];
  [(CLCircularRegion *)self->_circle center];
  v8 = v7;
  [(CLCircularRegion *)self->_circle center];
  v9 = [v6 initWithLatitude:v8 longitude:?];
  [v9 distanceFromLocation:v5];
  v11 = v10;

  return v11;
}

- (PKPaymentMarketCircularGeoFence)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKPaymentMarketCircularGeoFence;
  v5 = [(PKPaymentMarketCircularGeoFence *)&v20 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"latitude"];
    v7 = v6;
    [v4 decodeDoubleForKey:@"longitude"];
    v9 = v8;
    [v4 decodeDoubleForKey:@"radius"];
    v11 = v10;
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = objc_alloc(MEMORY[0x1E695FBB0]);
    v15 = CLLocationCoordinate2DMake(v7, v9);
    v16 = [(NSUUID *)v5->_identifier UUIDString];
    v17 = [v14 initWithCenter:v16 radius:v15.latitude identifier:{v15.longitude, v11}];
    circle = v5->_circle;
    v5->_circle = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  [(CLCircularRegion *)self->_circle center];
  [v6 encodeDouble:@"latitude" forKey:?];
  [(CLCircularRegion *)self->_circle center];
  [v6 encodeDouble:@"longitude" forKey:v5];
  [(CLCircularRegion *)self->_circle radius];
  [v6 encodeDouble:@"radius" forKey:?];
}

@end