@interface BloomFilter
- (BOOL)containsWithData:(id)data;
- (NSString)name;
- (void)setName:(id)name;
@end

@implementation BloomFilter

- (NSString)name
{
  sub_1DC33F564();
  v2 = sub_1DC5176FC();

  return v2;
}

- (void)setName:(id)name
{
  v4 = sub_1DC51772C();
  v6 = v5;
  selfCopy = self;
  sub_1DC33F62C(v4, v6);
}

- (BOOL)containsWithData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v6 = sub_1DC510A0C();
  v8 = v7;

  sub_1DC34048C(v6, v8);
  LOBYTE(dataCopy) = v9;
  sub_1DC2AD740(v6, v8);

  return dataCopy & 1;
}

@end