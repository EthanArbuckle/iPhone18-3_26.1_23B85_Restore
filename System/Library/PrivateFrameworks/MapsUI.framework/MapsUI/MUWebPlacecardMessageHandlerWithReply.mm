@interface MUWebPlacecardMessageHandlerWithReply
- (_TtC6MapsUI37MUWebPlacecardMessageHandlerWithReply)init;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler;
@end

@implementation MUWebPlacecardMessageHandlerWithReply

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message replyHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  controllerCopy = controller;
  messageCopy = message;
  selfCopy = self;
  sub_1C566E4DC(messageCopy, sub_1C566EA18, v9);
}

- (_TtC6MapsUI37MUWebPlacecardMessageHandlerWithReply)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MUWebPlacecardMessageHandlerWithReply();
  return [(MUWebPlacecardMessageHandlerWithReply *)&v4 init];
}

@end