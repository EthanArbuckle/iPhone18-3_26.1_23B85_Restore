@interface CKVisionAppMenuViewFactory
+ (id)appMenuViewControllerWithConversation:(id)a3 selectionHandler:(id)a4 dismissHandler:(id)a5;
- (_TtC7ChatKit26CKVisionAppMenuViewFactory)init;
@end

@implementation CKVisionAppMenuViewFactory

+ (id)appMenuViewControllerWithConversation:(id)a3 selectionHandler:(id)a4 dismissHandler:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = a3;
  v12 = sub_1909F8104(v11, sub_19084CED8, v9, sub_190841A8C, v10);

  return v12;
}

- (_TtC7ChatKit26CKVisionAppMenuViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKVisionAppMenuViewFactory();
  return [(CKVisionAppMenuViewFactory *)&v3 init];
}

@end