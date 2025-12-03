@interface ChatInsertMessageRequestHandler
- (_TtC7imagent31ChatInsertMessageRequestHandler)init;
- (void)insertReceivedMessage:(id)message forChat:(id)chat style:(unsigned __int8)style serviceName:(id)name;
@end

@implementation ChatInsertMessageRequestHandler

- (_TtC7imagent31ChatInsertMessageRequestHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7imagent31ChatInsertMessageRequestHandler_requiredCapabilities) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7imagent31ChatInsertMessageRequestHandler_requiredEntitlements) = &off_1000824C8;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ChatInsertMessageRequestHandler();
  return [(ChatInsertMessageRequestHandler *)&v3 init];
}

- (void)insertReceivedMessage:(id)message forChat:(id)chat style:(unsigned __int8)style serviceName:(id)name
{
  styleCopy = style;
  if (chat)
  {
    v9 = sub_100054164();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_100054164();
  v14 = v13;
  messageCopy = message;
  selfCopy = self;
  sub_1000371C8(message, v9, v11, styleCopy, v12, v14);
}

@end