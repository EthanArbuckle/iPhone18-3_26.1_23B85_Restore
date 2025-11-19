@interface NFCPendingCommandsStatus
- (_TtC13CoreIDVShared24NFCPendingCommandsStatus)init;
- (_TtC13CoreIDVShared24NFCPendingCommandsStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCPendingCommandsStatus

- (_TtC13CoreIDVShared24NFCPendingCommandsStatus)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225C13A80(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_isReady);
  v5 = a3;
  v9 = self;
  v6 = sub_225CCE444();
  [v5 encodeBool:v4 forKey:v6];

  if ((v9->isReady[OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval] & 1) == 0)
  {
    v7 = *(&v9->super.isa + OBJC_IVAR____TtC13CoreIDVShared24NFCPendingCommandsStatus_retryInterval);
    v8 = sub_225CCE444();
    [v5 encodeDouble:v8 forKey:v7];
  }
}

- (_TtC13CoreIDVShared24NFCPendingCommandsStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end