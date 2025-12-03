@interface CKVisionAppMenuViewFactory
+ (id)appMenuViewControllerWithConversation:(id)conversation selectionHandler:(id)handler dismissHandler:(id)dismissHandler;
- (_TtC7ChatKit26CKVisionAppMenuViewFactory)init;
@end

@implementation CKVisionAppMenuViewFactory

+ (id)appMenuViewControllerWithConversation:(id)conversation selectionHandler:(id)handler dismissHandler:(id)dismissHandler
{
  v7 = _Block_copy(handler);
  v8 = _Block_copy(dismissHandler);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  conversationCopy = conversation;
  v12 = sub_1909F8104(conversationCopy, sub_19084CED8, v9, sub_190841A8C, v10);

  return v12;
}

- (_TtC7ChatKit26CKVisionAppMenuViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKVisionAppMenuViewFactory();
  return [(CKVisionAppMenuViewFactory *)&v3 init];
}

@end