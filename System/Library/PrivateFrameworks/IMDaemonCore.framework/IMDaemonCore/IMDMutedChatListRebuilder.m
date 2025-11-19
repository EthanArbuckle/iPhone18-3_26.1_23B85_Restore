@interface IMDMutedChatListRebuilder
- (IMDMutedChatListRebuilder)initWithBatchLimit:(int64_t)a3 findChat:(id)a4 mutedChatList:(id)a5 muteChat:(id)a6 muteIdentifiers:(id)a7;
- (void)rebuildMutedChatList;
@end

@implementation IMDMutedChatListRebuilder

- (IMDMutedChatListRebuilder)initWithBatchLimit:(int64_t)a3 findChat:(id)a4 mutedChatList:(id)a5 muteChat:(id)a6 muteIdentifiers:(id)a7
{
  v11 = _Block_copy(a4);
  v12 = _Block_copy(a5);
  v13 = _Block_copy(a6);
  v14 = _Block_copy(a7);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  return sub_22B7564D8(a3, sub_22B758F7C, v15, sub_22B758F84, v16, sub_22B758F8C, v17, sub_22B758F94, v18);
}

- (void)rebuildMutedChatList
{
  v2 = self;
  sub_22B756A20();
}

@end