@interface LNRecurrenceRuleBridge
- (BOOL)isEqual:(id)a3;
- (LNRecurrenceRuleBridge)initWithData:(id)a3;
- (NSData)data;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNRecurrenceRuleBridge

- (NSData)data
{
  v2 = LNRecurrenceRuleBridge.data.getter();
  v4 = v3;
  v5 = sub_18F0932DC();
  sub_18EF9A4AC(v2, v4);

  return v5;
}

- (LNRecurrenceRuleBridge)initWithData:(id)a3
{
  v3 = a3;
  v4 = sub_18F09330C();
  v6 = v5;

  return LNRecurrenceRuleBridge.init(data:)(v4, v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  LNRecurrenceRuleBridge.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = LNRecurrenceRuleBridge.isEqual(_:)(v8);

  sub_18F021E3C(v8);
  return v6 & 1;
}

@end