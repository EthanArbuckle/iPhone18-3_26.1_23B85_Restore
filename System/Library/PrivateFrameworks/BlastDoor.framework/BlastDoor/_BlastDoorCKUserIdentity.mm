@interface _BlastDoorCKUserIdentity
- (_TtC9BlastDoor24_BlastDoorCKUserIdentity)init;
- (_TtC9BlastDoor24_BlastDoorCKUserIdentity)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorCKUserIdentity

- (_TtC9BlastDoor24_BlastDoorCKUserIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_214637878(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_214634280(coderCopy);
}

- (_TtC9BlastDoor24_BlastDoorCKUserIdentity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end