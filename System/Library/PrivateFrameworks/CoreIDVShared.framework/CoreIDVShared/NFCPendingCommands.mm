@interface NFCPendingCommands
- (_TtC13CoreIDVShared18NFCPendingCommands)init;
- (_TtC13CoreIDVShared18NFCPendingCommands)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCPendingCommands

- (_TtC13CoreIDVShared18NFCPendingCommands)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225C13BD0(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  NFCPendingCommands.encode(with:)(v4);
}

- (_TtC13CoreIDVShared18NFCPendingCommands)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end