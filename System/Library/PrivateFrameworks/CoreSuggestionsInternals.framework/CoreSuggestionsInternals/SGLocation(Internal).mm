@interface SGLocation(Internal)
- (SGStorageLocation)convertToStorageLocation;
@end

@implementation SGLocation(Internal)

- (SGStorageLocation)convertToStorageLocation
{
  v2 = [SGStorageLocation alloc];
  locationType = [self locationType];
  label = [self label];
  address = [self address];
  airportCode = [self airportCode];
  [self latitude];
  v8 = v7;
  [self longitude];
  v10 = v9;
  [self accuracy];
  v12 = v11;
  [self quality];
  v14 = v13;
  handle = [self handle];
  v16 = [(SGStorageLocation *)v2 initWithType:locationType label:label address:address airportCode:airportCode latitude:handle longitude:v8 accuracy:v10 quality:v12 handle:v14];

  return v16;
}

@end