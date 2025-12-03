@interface TCNamedData
+ (id)namedDataWithData:(id)data named:(id)named;
- (TCNamedData)initWithData:(id)data named:(id)named;
@end

@implementation TCNamedData

+ (id)namedDataWithData:(id)data named:(id)named
{
  dataCopy = data;
  namedCopy = named;
  v7 = [[TCNamedData alloc] initWithData:dataCopy named:namedCopy];

  return v7;
}

- (TCNamedData)initWithData:(id)data named:(id)named
{
  dataCopy = data;
  namedCopy = named;
  v12.receiver = self;
  v12.super_class = TCNamedData;
  v9 = [(TCNamedData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mData, data);
    objc_storeStrong(&v10->mName, named);
  }

  return v10;
}

@end