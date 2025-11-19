@interface MUWebPlacecardMessageHandlerWithReply
- (_TtC6MapsUI37MUWebPlacecardMessageHandlerWithReply)init;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4 replyHandler:(id)a5;
@end

@implementation MUWebPlacecardMessageHandlerWithReply

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4 replyHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1C566E4DC(v11, sub_1C566EA18, v9);
}

- (_TtC6MapsUI37MUWebPlacecardMessageHandlerWithReply)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MUWebPlacecardMessageHandlerWithReply();
  return [(MUWebPlacecardMessageHandlerWithReply *)&v4 init];
}

@end