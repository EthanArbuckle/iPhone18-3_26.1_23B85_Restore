@interface EDIndexedMessage
- (EDIndexedMessage)init;
- (EDIndexedMessage)initWithMessageID:(id)a3 hasBodyData:(BOOL)a4;
@end

@implementation EDIndexedMessage

- (EDIndexedMessage)initWithMessageID:(id)a3 hasBodyData:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR___EDIndexedMessage_messageID) = a3;
  *(&self->super.isa + OBJC_IVAR___EDIndexedMessage_hasBodyData) = a4;
  v6.receiver = self;
  v6.super_class = EDIndexedMessage;
  v4 = a3;
  return [(EDIndexedMessage *)&v6 init];
}

- (EDIndexedMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end