@interface CKChatItemController
- (CKChatItemController)init;
- (id)initForCollectionView:(id)view chatItems:(id)items delegate:(id)delegate;
- (id)setChatItems:(id)items completion:(id)completion;
- (void)addChatItem:(id)item at:(int64_t)at;
- (void)removeChatItemAt:(int64_t)at;
- (void)setAssociatedChatItems:(id)items;
- (void)setChatItems:(id)items;
- (void)setChatItemsUsingReloadDataWithoutAnimation:(id)animation;
@end

@implementation CKChatItemController

- (void)setChatItems:(id)items
{
  sub_1902188FC(0, &qword_1EAD450F0);
  v4 = sub_190D57180();
  selfCopy = self;
  sub_190A0DD9C(v4);
}

- (void)setAssociatedChatItems:(id)items
{
  sub_1902188FC(0, &qword_1EAD44F88);
  v4 = sub_190D57180();
  v5 = OBJC_IVAR___CKChatItemController_associatedChatItems;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (id)initForCollectionView:(id)view chatItems:(id)items delegate:(id)delegate
{
  sub_1902188FC(0, &qword_1EAD450F0);
  v6 = sub_190D57180();
  viewCopy = view;
  swift_unknownObjectRetain();
  v8 = sub_190A0F4D8(viewCopy, v6);

  swift_unknownObjectRelease();
  return v8;
}

- (id)setChatItems:(id)items completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1902188FC(0, &qword_1EAD450F0);
  v6 = sub_190D57180();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_190841A8C;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  v9 = sub_190A0E16C(v6, v5, v7);
  sub_19022123C(v5);

  return v9;
}

- (void)setChatItemsUsingReloadDataWithoutAnimation:(id)animation
{
  sub_1902188FC(0, &qword_1EAD450F0);
  v4 = sub_190D57180();
  selfCopy = self;
  sub_190A0EB80(v4);
}

- (void)addChatItem:(id)item at:(int64_t)at
{
  itemCopy = item;
  selfCopy = self;
  sub_190A0ECB4(itemCopy, at);
}

- (void)removeChatItemAt:(int64_t)at
{
  selfCopy = self;
  sub_190A0EE80(at);
}

- (CKChatItemController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end