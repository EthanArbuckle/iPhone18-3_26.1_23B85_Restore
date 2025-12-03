@interface _BlastDoorCKUserIdentityLookupInfo
- (_TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo)init;
- (_TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorCKUserIdentityLookupInfo

- (_TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_214637E54(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2146352A8(coderCopy);
}

- (_TtC9BlastDoor34_BlastDoorCKUserIdentityLookupInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end