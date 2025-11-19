@interface StubAssetHandle.StubAssetDataProvider
- (NSData)data;
- (NSString)filePath;
@end

@implementation StubAssetHandle.StubAssetDataProvider

- (NSData)data
{
  v2 = *(self + 3);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(self + 2);
    sub_1D5E3E824(v4, v2);
    v5 = sub_1D725865C();
    sub_1D5B952E4(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (NSString)filePath
{
  if (*(self + 5))
  {

    v2 = sub_1D726203C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end