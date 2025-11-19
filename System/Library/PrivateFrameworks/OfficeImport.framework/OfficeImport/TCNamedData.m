@interface TCNamedData
+ (id)namedDataWithData:(id)a3 named:(id)a4;
- (TCNamedData)initWithData:(id)a3 named:(id)a4;
@end

@implementation TCNamedData

+ (id)namedDataWithData:(id)a3 named:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[TCNamedData alloc] initWithData:v5 named:v6];

  return v7;
}

- (TCNamedData)initWithData:(id)a3 named:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TCNamedData;
  v9 = [(TCNamedData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mData, a3);
    objc_storeStrong(&v10->mName, a4);
  }

  return v10;
}

@end