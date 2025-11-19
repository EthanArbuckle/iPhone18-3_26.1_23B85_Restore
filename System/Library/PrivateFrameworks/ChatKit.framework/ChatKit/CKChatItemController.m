@interface CKChatItemController
- (CKChatItemController)init;
- (id)initForCollectionView:(id)a3 chatItems:(id)a4 delegate:(id)a5;
- (id)setChatItems:(id)a3 completion:(id)a4;
- (void)addChatItem:(id)a3 at:(int64_t)a4;
- (void)removeChatItemAt:(int64_t)a3;
- (void)setAssociatedChatItems:(id)a3;
- (void)setChatItems:(id)a3;
- (void)setChatItemsUsingReloadDataWithoutAnimation:(id)a3;
@end

@implementation CKChatItemController

- (void)setChatItems:(id)a3
{
  sub_1902188FC(0, &qword_1EAD450F0);
  v4 = sub_190D57180();
  v5 = self;
  sub_190A0DD9C(v4);
}

- (void)setAssociatedChatItems:(id)a3
{
  sub_1902188FC(0, &qword_1EAD44F88);
  v4 = sub_190D57180();
  v5 = OBJC_IVAR___CKChatItemController_associatedChatItems;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (id)initForCollectionView:(id)a3 chatItems:(id)a4 delegate:(id)a5
{
  sub_1902188FC(0, &qword_1EAD450F0);
  v6 = sub_190D57180();
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = sub_190A0F4D8(v7, v6);

  swift_unknownObjectRelease();
  return v8;
}

- (id)setChatItems:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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

  v8 = self;
  v9 = sub_190A0E16C(v6, v5, v7);
  sub_19022123C(v5);

  return v9;
}

- (void)setChatItemsUsingReloadDataWithoutAnimation:(id)a3
{
  sub_1902188FC(0, &qword_1EAD450F0);
  v4 = sub_190D57180();
  v5 = self;
  sub_190A0EB80(v4);
}

- (void)addChatItem:(id)a3 at:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_190A0ECB4(v6, a4);
}

- (void)removeChatItemAt:(int64_t)a3
{
  v4 = self;
  sub_190A0EE80(a3);
}

- (CKChatItemController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end