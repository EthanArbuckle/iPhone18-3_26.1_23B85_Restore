@interface PDMapsBrandAndMerchantUpdaterConfiguration
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (PDMapsBrandAndMerchantUpdaterConfiguration)initWithMUID:(unint64_t)a3 resultProviderID:(int)a4 coordinate:(CLLocationCoordinate2D)a5;
- (id)description;
@end

@implementation PDMapsBrandAndMerchantUpdaterConfiguration

- (PDMapsBrandAndMerchantUpdaterConfiguration)initWithMUID:(unint64_t)a3 resultProviderID:(int)a4 coordinate:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v10.receiver = self;
  v10.super_class = PDMapsBrandAndMerchantUpdaterConfiguration;
  result = [(PDMapsBrandAndMerchantUpdaterConfiguration *)&v10 init];
  if (result)
  {
    result->_muid = a3;
    result->_resultProviderID = a4;
    result->_coordinate.latitude = latitude;
    result->_coordinate.longitude = longitude;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PDMapsBrandAndMerchantUpdaterConfiguration *)self isEqualToConfiguration:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"muid: %ld; ", self->_muid];
  [v3 appendFormat:@"resultProviderID: '%ld'; ", self->_resultProviderID];
  [v3 appendFormat:@"latitude: '%ld'; ", self->_coordinate.latitude];
  [v3 appendFormat:@"longitude: '%ld'; ", self->_coordinate.longitude];
  [v3 appendFormat:@">"];

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end