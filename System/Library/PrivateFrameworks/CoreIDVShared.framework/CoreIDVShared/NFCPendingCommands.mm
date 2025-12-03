@interface NFCPendingCommands
- (_TtC13CoreIDVShared18NFCPendingCommands)init;
- (_TtC13CoreIDVShared18NFCPendingCommands)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCPendingCommands

- (_TtC13CoreIDVShared18NFCPendingCommands)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225C13BD0(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NFCPendingCommands.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared18NFCPendingCommands)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end