@interface MOResource(MOWeather)
- (id)metaData;
@end

@implementation MOResource(MOWeather)

- (id)metaData
{
  data = [(MOResource *)self data];
  v3 = [MODictionaryEncoder decodeToDictionary:data];

  return v3;
}

@end