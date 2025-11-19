@interface MSMediaContainer
- (NSString)description;
- (_TtC14MediaSuggester16MSMediaContainer)initWithCoder:(id)a3;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSMediaContainer

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_22C9DE9C8();

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22C9DEBE4();
}

- (_TtC14MediaSuggester16MSMediaContainer)initWithCoder:(id)a3
{
  v3 = a3;
  MSMediaContainer.init(coder:)();
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_22C9DF6F4();

  v3 = sub_22CA20E10();

  return v3;
}

@end