@interface MSMediaContainer
- (NSString)description;
- (_TtC14MediaSuggester16MSMediaContainer)initWithCoder:(id)coder;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSMediaContainer

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_22C9DE9C8();

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22C9DEBE4();
}

- (_TtC14MediaSuggester16MSMediaContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  MSMediaContainer.init(coder:)();
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_22C9DF6F4();

  v3 = sub_22CA20E10();

  return v3;
}

@end