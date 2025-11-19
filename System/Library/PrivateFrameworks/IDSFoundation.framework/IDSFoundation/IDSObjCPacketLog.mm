@interface IDSObjCPacketLog
- (IDSObjCPacketLog)init;
- (IDSObjCPacketLog)initWithSessionID:(id)a3 write:(id)a4;
- (int64_t)packetLogIDWithLinkID:(char)a3 delegatedLinkID:(char)a4 protocolStack:(id)a5 connectionID:(unint64_t)a6;
- (void)finish;
- (void)flush;
- (void)recordPacketsWithPacketLogID:(int64_t)a3 kind:(int64_t)a4 bytes:(int64_t)a5 packetCount:(int64_t)a6;
@end

@implementation IDSObjCPacketLog

- (IDSObjCPacketLog)initWithSessionID:(id)a3 write:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1A7E22290();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = sub_1A7CC7A74(v5, v7, sub_1A7CC7DD8, v8);

  return v9;
}

- (void)finish
{
  if (*(&self->super.isa + OBJC_IVAR___IDSObjCPacketLog_packetLog))
  {
    sub_1A7E08880();
  }
}

- (void)flush
{
  v2 = self;
  sub_1A7CC7038();
}

- (int64_t)packetLogIDWithLinkID:(char)a3 delegatedLinkID:(char)a4 protocolStack:(id)a5 connectionID:(unint64_t)a6
{
  v7 = a4;
  v10 = sub_1A7E22290();
  v12 = v11;
  v13 = self;
  v14 = sub_1A7CC7480(a3, v7, v10, v12, a6);

  return v14;
}

- (void)recordPacketsWithPacketLogID:(int64_t)a3 kind:(int64_t)a4 bytes:(int64_t)a5 packetCount:(int64_t)a6
{
  v10 = self;
  sub_1A7CC75BC(a3, a4, a5, a6);
}

- (IDSObjCPacketLog)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end