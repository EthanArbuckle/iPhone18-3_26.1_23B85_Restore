@interface EncoreEvent
- (EncoreEvent)init;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EncoreEvent

- (NSString)description
{
  selfCopy = self;
  sub_24A03AC54();

  v3 = sub_24A046380();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24A03B0D0(coderCopy);
}

- (EncoreEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end