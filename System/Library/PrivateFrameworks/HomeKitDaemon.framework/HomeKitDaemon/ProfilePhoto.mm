@interface ProfilePhoto
- (NSData)photoData;
- (void)setCropRect:(id)rect;
- (void)setPhotoData:(id)data;
@end

@implementation ProfilePhoto

- (void)setCropRect:(id)rect
{
  v4 = *(self + 2);
  *(self + 2) = rect;
  rectCopy = rect;
}

- (NSData)photoData
{
  v2 = *(self + 3);
  v3 = *(self + 4);
  sub_22956C148(v2, v3);
  v4 = sub_22A4DB61C();
  sub_2295798D4(v2, v3);

  return v4;
}

- (void)setPhotoData:(id)data
{
  dataCopy = data;

  v5 = sub_22A4DB62C();
  v7 = v6;

  v8 = *(self + 3);
  v9 = *(self + 4);
  *(self + 3) = v5;
  *(self + 4) = v7;
  sub_2295798D4(v8, v9);
}

@end