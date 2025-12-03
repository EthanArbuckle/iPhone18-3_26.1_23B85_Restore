@interface FrontmostGrant
- (NSString)description;
- (_TtC10GamePolicy14FrontmostGrant)init;
- (_TtC10GamePolicy14FrontmostGrant)initWithCoder:(id)coder;
@end

@implementation FrontmostGrant

- (_TtC10GamePolicy14FrontmostGrant)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  return [(GamePolicyAssertion.Grant *)&v4 init];
}

- (_TtC10GamePolicy14FrontmostGrant)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FrontmostGrant();
  return [(GamePolicyAssertion.Grant *)&v3 init];
}

- (NSString)description
{
  v2 = sub_24E5D2CB0();

  return v2;
}

@end