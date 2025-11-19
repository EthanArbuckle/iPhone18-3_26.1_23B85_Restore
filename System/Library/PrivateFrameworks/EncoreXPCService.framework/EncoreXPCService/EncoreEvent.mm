@interface EncoreEvent
- (EncoreEvent)init;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EncoreEvent

- (NSString)description
{
  v2 = self;
  sub_24A03AC54();

  v3 = sub_24A046380();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A03B0D0(v4);
}

- (EncoreEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end