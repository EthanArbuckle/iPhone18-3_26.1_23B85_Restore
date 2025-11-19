@interface LocationLogEncryptionData
+ (id)encryptionDataWithCLClientLocation:(id *)a3;
+ (id)encryptionDataWithCLLocation:(id)a3;
+ (id)encryptionDataWithCoordinate:(CLLocationCoordinate2D)a3;
+ (id)encryptionDataWithLatitude:(double)a3 andLongitude:(double)a4;
- (LocationLogEncryptionData)initWithCLClientLocation:(id *)a3;
- (LocationLogEncryptionData)initWithCLLocation:(id)a3;
- (LocationLogEncryptionData)initWithCoordinate:(CLLocationCoordinate2D)a3;
- (void)dealloc;
@end

@implementation LocationLogEncryptionData

+ (id)encryptionDataWithCLLocation:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCLLocation:v4];

  return v5;
}

+ (id)encryptionDataWithCLClientLocation:(id *)a3
{
  v4 = [a1 alloc];
  var13 = a3->var13;
  v11[6] = *&a3->var11;
  v11[7] = var13;
  v12[0] = *&a3->var14;
  *(v12 + 12) = *&a3->var16;
  v6 = *&a3->var5;
  v11[2] = *&a3->var3;
  v11[3] = v6;
  v7 = *&a3->var9;
  v11[4] = *&a3->var7;
  v11[5] = v7;
  v8 = *&a3->var1.var1;
  v11[0] = *&a3->var0;
  v11[1] = v8;
  v9 = [v4 initWithCLClientLocation:v11];

  return v9;
}

+ (id)encryptionDataWithCoordinate:(CLLocationCoordinate2D)a3
{
  v3 = [[a1 alloc] initWithCoordinate:{a3.latitude, a3.longitude}];

  return v3;
}

+ (id)encryptionDataWithLatitude:(double)a3 andLongitude:(double)a4
{
  v6 = [a1 alloc];
  v7 = CLLocationCoordinate2DMake(a3, a4);
  v8 = [v6 initWithCoordinate:{v7.latitude, v7.longitude}];

  return v8;
}

- (LocationLogEncryptionData)initWithCLLocation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LocationLogEncryptionData;
  v5 = [(LocationLogEncryptionData *)&v8 init];
  if (v5)
  {
    if (v4)
    {
      [v4 clientLocation];
    }

    else
    {
      memset(v7, 0, 156);
    }

    v5 = [(LocationLogEncryptionData *)v5 initWithCLClientLocation:v7];
  }

  return v5;
}

- (LocationLogEncryptionData)initWithCLClientLocation:(id *)a3
{
  v8.receiver = self;
  v8.super_class = LocationLogEncryptionData;
  v4 = [(LocationLogEncryptionData *)&v8 init];
  if (v4)
  {
    v4->_size = LocationLogEncryptionDataSize(156);
    v5 = LocationLogEncryptionEncryptData(a3, 0x9CuLL);
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

- (LocationLogEncryptionData)initWithCoordinate:(CLLocationCoordinate2D)a3
{
  v8 = a3;
  v7.receiver = self;
  v7.super_class = LocationLogEncryptionData;
  v3 = [(LocationLogEncryptionData *)&v7 init];
  if (v3)
  {
    v3->_size = LocationLogEncryptionDataSize(156);
    v4 = LocationLogEncryptionEncryptData(&v8, 0x10uLL);
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