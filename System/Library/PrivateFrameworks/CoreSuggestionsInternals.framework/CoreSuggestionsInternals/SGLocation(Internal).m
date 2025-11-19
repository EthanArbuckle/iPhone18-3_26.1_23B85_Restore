@interface SGLocation(Internal)
- (SGStorageLocation)convertToStorageLocation;
@end

@implementation SGLocation(Internal)

- (SGStorageLocation)convertToStorageLocation
{
  v2 = [SGStorageLocation alloc];
  v3 = [a1 locationType];
  v4 = [a1 label];
  v5 = [a1 address];
  v6 = [a1 airportCode];
  [a1 latitude];
  v8 = v7;
  [a1 longitude];
  v10 = v9;
  [a1 accuracy];
  v12 = v11;
  [a1 quality];
  v14 = v13;
  v15 = [a1 handle];
  v16 = [(SGStorageLocation *)v2 initWithType:v3 label:v4 address:v5 airportCode:v6 latitude:v15 longitude:v8 accuracy:v10 quality:v12 handle:v14];

  return v16;
}

@end