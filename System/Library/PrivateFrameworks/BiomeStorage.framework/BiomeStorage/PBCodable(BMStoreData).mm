@interface PBCodable(BMStoreData)
+ (id)eventWithData:()BMStoreData dataVersion:;
@end

@implementation PBCodable(BMStoreData)

+ (id)eventWithData:()BMStoreData dataVersion:
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v6 = a3;
    v4 = [[self alloc] initWithData:v6];
  }

  return v4;
}

@end