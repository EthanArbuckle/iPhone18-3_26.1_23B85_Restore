@interface ChatInsertMessageRequestHandler
- (_TtC7imagent31ChatInsertMessageRequestHandler)init;
- (void)insertReceivedMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 serviceName:(id)a6;
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

- (void)insertReceivedMessage:(id)a3 forChat:(id)a4 style:(unsigned __int8)a5 serviceName:(id)a6
{
  v6 = a5;
  if (a4)
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
  v15 = a3;
  v16 = self;
  sub_1000371C8(a3, v9, v11, v6, v12, v14);
}

@end