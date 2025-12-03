@interface NFCPendingCommandsStatus
- (_TtC13CoreIDVShared24NFCPendingCommandsStatus)init;
- (_TtC13CoreIDVShared24NFCPendingCommandsStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCPendingCommandsStatus

- (_TtC13CoreIDVShared24NFCPendingCommandsStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225C13A80(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_225CCE444();
  [coderCopy encodeBool:v4 forKey:v6];

  if ((selfCopy->isReady[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval] & 1) == 0)
  {
    v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval);
    v8 = sub_225CCE444();
    [coderCopy encodeDouble:v8 forKey:v7];
  }
}

- (_TtC13CoreIDVShared24NFCPendingCommandsStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end