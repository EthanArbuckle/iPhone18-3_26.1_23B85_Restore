@interface DTProcessorTraceTapMessage
- (DTProcessorTraceTapMessage)init;
- (id)initAsKind:(int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DTProcessorTraceTapMessage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2480257F8(v4);
}

- (id)initAsKind:(int)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (DTProcessorTraceTapMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end