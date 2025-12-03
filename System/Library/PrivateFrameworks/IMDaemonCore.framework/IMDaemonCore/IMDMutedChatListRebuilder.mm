@interface IMDMutedChatListRebuilder
- (IMDMutedChatListRebuilder)initWithBatchLimit:(int64_t)limit findChat:(id)chat mutedChatList:(id)list muteChat:(id)muteChat muteIdentifiers:(id)identifiers;
- (void)rebuildMutedChatList;
@end

@implementation IMDMutedChatListRebuilder

- (IMDMutedChatListRebuilder)initWithBatchLimit:(int64_t)limit findChat:(id)chat mutedChatList:(id)list muteChat:(id)muteChat muteIdentifiers:(id)identifiers
{
  v11 = _Block_copy(chat);
  v12 = _Block_copy(list);
  v13 = _Block_copy(muteChat);
  v14 = _Block_copy(identifiers);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  return sub_22B7564D8(limit, sub_22B758F7C, v15, sub_22B758F84, v16, sub_22B758F8C, v17, sub_22B758F94, v18);
}

- (void)rebuildMutedChatList
{
  selfCopy = self;
  sub_22B756A20();
}

@end