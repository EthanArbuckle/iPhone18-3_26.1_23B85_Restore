@interface IDSObjCPacketLog
- (IDSObjCPacketLog)init;
- (IDSObjCPacketLog)initWithSessionID:(id)d write:(id)write;
- (int64_t)packetLogIDWithLinkID:(char)d delegatedLinkID:(char)iD protocolStack:(id)stack connectionID:(unint64_t)connectionID;
- (void)finish;
- (void)flush;
- (void)recordPacketsWithPacketLogID:(int64_t)d kind:(int64_t)kind bytes:(int64_t)bytes packetCount:(int64_t)count;
@end

@implementation IDSObjCPacketLog

- (IDSObjCPacketLog)initWithSessionID:(id)d write:(id)write
{
  v4 = _Block_copy(write);
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
  selfCopy = self;
  sub_1A7CC7038();
}

- (int64_t)packetLogIDWithLinkID:(char)d delegatedLinkID:(char)iD protocolStack:(id)stack connectionID:(unint64_t)connectionID
{
  iDCopy = iD;
  v10 = sub_1A7E22290();
  v12 = v11;
  selfCopy = self;
  v14 = sub_1A7CC7480(d, iDCopy, v10, v12, connectionID);

  return v14;
}

- (void)recordPacketsWithPacketLogID:(int64_t)d kind:(int64_t)kind bytes:(int64_t)bytes packetCount:(int64_t)count
{
  selfCopy = self;
  sub_1A7CC75BC(d, kind, bytes, count);
}

- (IDSObjCPacketLog)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end