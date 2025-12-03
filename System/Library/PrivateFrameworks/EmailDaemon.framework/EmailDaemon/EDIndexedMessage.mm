@interface EDIndexedMessage
- (EDIndexedMessage)init;
- (EDIndexedMessage)initWithMessageID:(id)d hasBodyData:(BOOL)data;
@end

@implementation EDIndexedMessage

- (EDIndexedMessage)initWithMessageID:(id)d hasBodyData:(BOOL)data
{
  *(&self->super.isa + OBJC_IVAR___EDIndexedMessage_messageID) = d;
  *(&self->super.isa + OBJC_IVAR___EDIndexedMessage_hasBodyData) = data;
  v6.receiver = self;
  v6.super_class = EDIndexedMessage;
  dCopy = d;
  return [(EDIndexedMessage *)&v6 init];
}

- (EDIndexedMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end