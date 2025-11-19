@interface BloomFilter
- (BOOL)containsWithData:(id)a3;
- (NSString)name;
- (void)setName:(id)a3;
@end

@implementation BloomFilter

- (NSString)name
{
  sub_1DC33F564();
  v2 = sub_1DC5176FC();

  return v2;
}

- (void)setName:(id)a3
{
  v4 = sub_1DC51772C();
  v6 = v5;
  v7 = self;
  sub_1DC33F62C(v4, v6);
}

- (BOOL)containsWithData:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DC510A0C();
  v8 = v7;

  sub_1DC34048C(v6, v8);
  LOBYTE(v4) = v9;
  sub_1DC2AD740(v6, v8);

  return v4 & 1;
}

@end