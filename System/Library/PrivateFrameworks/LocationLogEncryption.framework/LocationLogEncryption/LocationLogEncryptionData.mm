@interface LocationLogEncryptionData
+ (id)encryptionDataWithCLClientLocation:(id *)location;
+ (id)encryptionDataWithCLLocation:(id)location;
+ (id)encryptionDataWithCoordinate:(CLLocationCoordinate2D)coordinate;
+ (id)encryptionDataWithLatitude:(double)latitude andLongitude:(double)longitude;
- (LocationLogEncryptionData)initWithCLClientLocation:(id *)location;
- (LocationLogEncryptionData)initWithCLLocation:(id)location;
- (LocationLogEncryptionData)initWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)dealloc;
@end

@implementation LocationLogEncryptionData

+ (id)encryptionDataWithCLLocation:(id)location
{
  locationCopy = location;
  v5 = [[self alloc] initWithCLLocation:locationCopy];

  return v5;
}

+ (id)encryptionDataWithCLClientLocation:(id *)location
{
  v4 = [self alloc];
  var13 = location->var13;
  v11[6] = *&location->var11;
  v11[7] = var13;
  v12[0] = *&location->var14;
  *(v12 + 12) = *&location->var16;
  v6 = *&location->var5;
  v11[2] = *&location->var3;
  v11[3] = v6;
  v7 = *&location->var9;
  v11[4] = *&location->var7;
  v11[5] = v7;
  v8 = *&location->var1.var1;
  v11[0] = *&location->var0;
  v11[1] = v8;
  v9 = [v4 initWithCLClientLocation:v11];

  return v9;
}

+ (id)encryptionDataWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  v3 = [[self alloc] initWithCoordinate:{coordinate.latitude, coordinate.longitude}];

  return v3;
}

+ (id)encryptionDataWithLatitude:(double)latitude andLongitude:(double)longitude
{
  v6 = [self alloc];
  v7 = CLLocationCoordinate2DMake(latitude, longitude);
  v8 = [v6 initWithCoordinate:{v7.latitude, v7.longitude}];

  return v8;
}

- (LocationLogEncryptionData)initWithCLLocation:(id)location
{
  locationCopy = location;
  v8.receiver = self;
  v8.super_class = LocationLogEncryptionData;
  v5 = [(LocationLogEncryptionData *)&v8 init];
  if (v5)
  {
    if (locationCopy)
    {
      [locationCopy clientLocation];
    }

    else
    {
      memset(v7, 0, 156);
    }

    v5 = [(LocationLogEncryptionData *)v5 initWithCLClientLocation:v7];
  }

  return v5;
}

- (LocationLogEncryptionData)initWithCLClientLocation:(id *)location
{
  v8.receiver = self;
  v8.super_class = LocationLogEncryptionData;
  v4 = [(LocationLogEncryptionData *)&v8 init];
  if (v4)
  {
    v4->_size = LocationLogEncryptionDataSize(156);
    v5 = LocationLogEncryptionEncryptData(location, 0x9CuLL);
    if (v5)
    {
      v6 = malloc_type_calloc(1uLL, v4->_size, 0xA2E60283uLL);
      v4->_data = v6;
      memcpy(v6, v5, v4->_size);
    }

    else
    {
      v4->_data = 0;
    }
  }

  return v4;
}

- (LocationLogEncryptionData)initWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  coordinateCopy = coordinate;
  v7.receiver = self;
  v7.super_class = LocationLogEncryptionData;
  v3 = [(LocationLogEncryptionData *)&v7 init];
  if (v3)
  {
    v3->_size = LocationLogEncryptionDataSize(156);
    v4 = LocationLogEncryptionEncryptData(&coordinateCopy, 0x10uLL);
    if (v4)
    {
      v5 = malloc_type_calloc(1uLL, v3->_size, 0x6455DCE0uLL);
      v3->_data = v5;
      memcpy(v5, v4, v3->_size);
    }

    else
    {
      v3->_data = 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    free(data);
    self->_data = 0;
  }

  v4.receiver = self;
  v4.super_class = LocationLogEncryptionData;
  [(LocationLogEncryptionData *)&v4 dealloc];
}

@end