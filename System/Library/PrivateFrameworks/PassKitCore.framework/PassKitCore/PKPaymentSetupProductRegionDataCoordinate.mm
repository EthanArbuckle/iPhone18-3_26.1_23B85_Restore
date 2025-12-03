@interface PKPaymentSetupProductRegionDataCoordinate
- (PKPaymentSetupProductRegionDataCoordinate)initWithCoder:(id)coder;
- (PKPaymentSetupProductRegionDataCoordinate)initWithCoordinatePair:(id)pair;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentSetupProductRegionDataCoordinate

- (PKPaymentSetupProductRegionDataCoordinate)initWithCoordinatePair:(id)pair
{
  pairCopy = pair;
  v5 = [pairCopy PKNumberForKey:@"longitude"];
  v6 = [pairCopy PKNumberForKey:@"latitude"];

  selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[PKPaymentSetupProductRegionDataCoordinate allocWithZone:?]];
  *(result + 1) = *&self->_latitude;
  *(result + 2) = *&self->_longitude;
  return result;
}

- (PKPaymentSetupProductRegionDataCoordinate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupProductRegionDataCoordinate;
  v5 = [(PKPaymentSetupProductRegionDataCoordinate *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"longitude"];
    v5->_longitude = v6;
    [coderCopy decodeDoubleForKey:@"latitude"];
    v5->_latitude = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  longitude = self->_longitude;
  coderCopy = coder;
  [coderCopy encodeDouble:@"longitude" forKey:longitude];
  [coderCopy encodeDouble:@"latitude" forKey:self->_latitude];
}

@end