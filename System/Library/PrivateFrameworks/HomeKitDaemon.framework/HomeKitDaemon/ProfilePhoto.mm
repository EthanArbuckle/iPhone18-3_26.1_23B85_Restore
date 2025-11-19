@interface ProfilePhoto
- (NSData)photoData;
- (void)setCropRect:(id)a3;
- (void)setPhotoData:(id)a3;
@end

@implementation ProfilePhoto

- (void)setCropRect:(id)a3
{
  v4 = *(self + 2);
  *(self + 2) = a3;
  v3 = a3;
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

- (void)setPhotoData:(id)a3
{
  v4 = a3;

  v5 = sub_22A4DB62C();
  v7 = v6;

  v8 = *(self + 3);
  v9 = *(self + 4);
  *(self + 3) = v5;
  *(self + 4) = v7;
  sub_2295798D4(v8, v9);
}

@end