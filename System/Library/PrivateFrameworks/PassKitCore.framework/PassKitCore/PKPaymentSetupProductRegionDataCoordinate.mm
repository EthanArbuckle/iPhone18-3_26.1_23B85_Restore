@interface PKPaymentSetupProductRegionDataCoordinate
- (PKPaymentSetupProductRegionDataCoordinate)initWithCoder:(id)a3;
- (PKPaymentSetupProductRegionDataCoordinate)initWithCoordinatePair:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentSetupProductRegionDataCoordinate

- (PKPaymentSetupProductRegionDataCoordinate)initWithCoordinatePair:(id)a3
{
  v4 = a3;
  v5 = [v4 PKNumberForKey:@"longitude"];
  v6 = [v4 PKNumberForKey:@"latitude"];

  v7 = 0;
  if (v5 && v6)
  {
    v12.receiver = self;
    v12.super_class = PKPaymentSetupProductRegionDataCoordinate;
    v8 = [(PKPaymentSetupProductRegionDataCoordinate *)&v12 init];
    if (v8)
    {
      [v5 doubleValue];
      v8->_longitude = v9;
      [v6 doubleValue];
      v8->_latitude = v10;
    }

    self = v8;
    v7 = self;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PKPaymentSetupProductRegionDataCoordinate allocWithZone:?]];
  *(result + 1) = *&self->_latitude;
  *(result + 2) = *&self->_longitude;
  return result;
}

- (PKPaymentSetupProductRegionDataCoordinate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupProductRegionDataCoordinate;
  v5 = [(PKPaymentSetupProductRegionDataCoordinate *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"longitude"];
    v5->_longitude = v6;
    [v4 decodeDoubleForKey:@"latitude"];
    v5->_latitude = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  longitude = self->_longitude;
  v5 = a3;
  [v5 encodeDouble:@"longitude" forKey:longitude];
  [v5 encodeDouble:@"latitude" forKey:self->_latitude];
}

@end