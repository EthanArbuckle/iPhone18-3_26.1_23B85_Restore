@interface ConsoleModeUserDisabled
- (NSString)description;
- (_TtC10GamePolicy23ConsoleModeUserDisabled)init;
- (_TtC10GamePolicy23ConsoleModeUserDisabled)initWithCoder:(id)a3;
@end

@implementation ConsoleModeUserDisabled

- (_TtC10GamePolicy23ConsoleModeUserDisabled)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  return [(GamePolicyAssertion.Grant *)&v4 init];
}

- (_TtC10GamePolicy23ConsoleModeUserDisabled)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConsoleModeUserDisabled();
  return [(GamePolicyAssertion.Grant *)&v3 init];
}

- (NSString)description
{
  v2 = sub_24E5D2CB0();

  return v2;
}

@end