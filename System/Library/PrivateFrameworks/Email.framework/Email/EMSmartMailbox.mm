@interface EMSmartMailbox
+ (EMMailboxScope)em_defaultExcludedMailboxesScope;
+ (EMSmartMailbox)em_VIPMailbox;
+ (EMSmartMailbox)em_flaggedMailbox;
+ (EMSmartMailbox)em_followUpMailbox;
+ (EMSmartMailbox)em_readLaterMailbox;
+ (id)blueMailboxWithMailboxScope:(id)a3;
+ (id)coreSpotlightMailboxWithName:(id)a3 queryString:(id)a4;
+ (id)em_scopedSendLaterMailboxWithMailboxURL:(id)a3;
+ (id)flaggedMailboxWithMailboxScope:(id)a3;
+ (id)followUpMailboxWithMailboxScope:(id)a3;
+ (id)grayMailboxWithMailboxScope:(id)a3;
+ (id)greenMailboxWithMailboxScope:(id)a3;
+ (id)hasAttachmentsMailboxWithMailboxScope:(id)a3;
+ (id)includesMeMailboxWithMailboxScope:(id)a3;
+ (id)mailCleanupMailboxWithMailboxScope:(id)a3;
+ (id)muteThreadsMailboxWithMailboxScope:(id)a3;
+ (id)notifyThreadsMailboxWithMailboxScope:(id)a3;
+ (id)orangeMailboxWithMailboxScope:(id)a3;
+ (id)purpleMailboxWithMailboxScope:(id)a3;
+ (id)readLaterMailboxWithMailboxScope:(id)a3;
+ (id)redMailboxWithMailboxScope:(id)a3;
+ (id)sendLaterMailboxWithMailboxScope:(id)a3;
+ (id)todayMailboxWithMailboxScope:(id)a3;
+ (id)unifiedMailboxOfType:(int64_t)a3 name:(id)a4;
+ (id)unifiedMailboxOfType:(int64_t)a3 name:(id)a4 additionalPredicate:(id)a5;
+ (id)unreadMailboxWithMailboxScope:(id)a3;
+ (id)unsubscribeMailboxWithMailboxScope:(id)a3;
+ (id)vipMailboxWithMailboxScope:(id)a3;
+ (id)vipMailboxWithName:(id)a3 additionalPredicate:(id)a4;
+ (id)yellowMailboxWithMailboxScope:(id)a3;
- (BOOL)_shouldArchiveByDefault;
- (BOOL)isEqual:(id)a3;
- (EMSmartMailbox)initWithType:(int64_t)a3 mailboxType:(int64_t)a4 name:(id)a5 mailboxScope:(id)a6 predicateGenerator:(id)a7;
- (id)ef_publicDescription;
- (unint64_t)hash;
@end

@implementation EMSmartMailbox

+ (EMMailboxScope)em_defaultExcludedMailboxesScope
{
  v2 = [EMMailboxScope mailboxScopeForMailboxTypes:&unk_1F461CEA0 forExclusion:1];

  return v2;
}

+ (EMSmartMailbox)em_VIPMailbox
{
  v2 = [a1 em_inboxMailboxScope];
  v3 = [EMSmartMailbox vipMailboxWithMailboxScope:v2];

  return v3;
}

+ (EMSmartMailbox)em_flaggedMailbox
{
  v2 = [a1 em_defaultExcludedMailboxesScope];
  v3 = [EMSmartMailbox flaggedMailboxWithMailboxScope:v2];

  return v3;
}

+ (EMSmartMailbox)em_readLaterMailbox
{
  v2 = [a1 em_defaultExcludedMailboxesScope];
  v3 = [EMSmartMailbox readLaterMailboxWithMailboxScope:v2];

  return v3;
}

+ (EMSmartMailbox)em_followUpMailbox
{
  v2 = [EMMailboxScope mailboxScopeForMailboxTypes:&unk_1F461CEB8 forExclusion:1];
  v3 = [EMSmartMailbox followUpMailboxWithMailboxScope:v2];

  return v3;
}

- (id)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EMMailbox *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p> Name:%@", v4, self, v5];

  return v6;
}

+ (id)em_scopedSendLaterMailboxWithMailboxURL:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [[EMMailboxObjectID alloc] initWithURL:v3];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v5 forExclusion:0];

  v7 = [EMSmartMailbox sendLaterMailboxWithMailboxScope:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (EMSmartMailbox)initWithType:(int64_t)a3 mailboxType:(int64_t)a4 name:(id)a5 mailboxScope:(id)a6 predicateGenerator:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(EMMailboxObjectID);
  v21.receiver = self;
  v21.super_class = EMSmartMailbox;
  v16 = [(EMMailbox *)&v21 initWithObjectID:v15 name:v12 accountIdentifier:0 type:a4 builder:&__block_literal_global_50];
  v17 = v16;
  if (v16)
  {
    v16->_smartMailboxType = a3;
    objc_storeStrong(&v16->_mailboxScope, a6);
    v18 = [v14 copy];
    predicateGenerator = v17->_predicateGenerator;
    v17->_predicateGenerator = v18;
  }

  return v17;
}

+ (id)vipMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EMSmartMailbox_vipMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:0 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __45__EMSmartMailbox_vipMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForIsVIP:1];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)flaggedMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__EMSmartMailbox_flaggedMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __49__EMSmartMailbox_flaggedMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForFlaggedMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)orangeMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMSmartMailbox_orangeMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __48__EMSmartMailbox_orangeMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForFlagColor:1];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)redMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EMSmartMailbox_redMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __45__EMSmartMailbox_redMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForFlagColor:0];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)purpleMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMSmartMailbox_purpleMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __48__EMSmartMailbox_purpleMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForFlagColor:5];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)blueMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__EMSmartMailbox_blueMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __46__EMSmartMailbox_blueMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForFlagColor:4];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)yellowMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMSmartMailbox_yellowMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __48__EMSmartMailbox_yellowMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForFlagColor:2];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)greenMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EMSmartMailbox_greenMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __47__EMSmartMailbox_greenMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForFlagColor:3];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)grayMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__EMSmartMailbox_grayMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __46__EMSmartMailbox_grayMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForFlagColor:6];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)unreadMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMSmartMailbox_unreadMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:2 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __48__EMSmartMailbox_unreadMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForUnreadMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)hasAttachmentsMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__EMSmartMailbox_hasAttachmentsMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:4 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __56__EMSmartMailbox_hasAttachmentsMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForMessagesWithAttachments];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)notifyThreadsMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__EMSmartMailbox_notifyThreadsMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:5 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __55__EMSmartMailbox_notifyThreadsMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForNotifyMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)todayMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EMSmartMailbox_todayMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:6 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __47__EMSmartMailbox_todayMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForTodayMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)muteThreadsMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__EMSmartMailbox_muteThreadsMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:7 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __53__EMSmartMailbox_muteThreadsMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForMuteMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)includesMeMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__EMSmartMailbox_includesMeMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:3 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __52__EMSmartMailbox_includesMeMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForIncludesMeMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)readLaterMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__EMSmartMailbox_readLaterMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:9 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __51__EMSmartMailbox_readLaterMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForReadLaterSmartMailbox];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)followUpMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__EMSmartMailbox_followUpMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:10 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __50__EMSmartMailbox_followUpMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForMessagesWithUnfiredFollowUp];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)sendLaterMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__EMSmartMailbox_sendLaterMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:11 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __51__EMSmartMailbox_sendLaterMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForSendLaterMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)unsubscribeMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__EMSmartMailbox_unsubscribeMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:12 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __53__EMSmartMailbox_unsubscribeMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForUnsubscribableMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)mailCleanupMailboxWithMailboxScope:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v3];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__EMSmartMailbox_mailCleanupMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:14 mailboxType:0 name:v4 mailboxScope:v3 predicateGenerator:v8];

  return v9;
}

id __53__EMSmartMailbox_mailCleanupMailboxWithMailboxScope___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[EMMessageListItemPredicates predicateForTouchedByCleanupMessages];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)unifiedMailboxOfType:(int64_t)a3 name:(id)a4
{
  v4 = [a1 unifiedMailboxOfType:a3 name:a4 additionalPredicate:0];

  return v4;
}

+ (id)unifiedMailboxOfType:(int64_t)a3 name:(id)a4 additionalPredicate:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ((a3 - 1) < 5 || a3 == 7)
  {
    v9 = [EMMailboxScope mailboxScopeForMailboxType:a3 forExclusion:0];
    v10 = [EMSmartMailbox alloc];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__EMSmartMailbox_unifiedMailboxOfType_name_additionalPredicate___block_invoke;
    v13[3] = &unk_1E826FAD8;
    v15 = a3;
    v14 = v8;
    v11 = [(EMSmartMailbox *)v10 initWithType:8 mailboxType:a3 name:v7 mailboxScope:v9 predicateGenerator:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __64__EMSmartMailbox_unifiedMailboxOfType_name_additionalPredicate___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForMessagesInMailboxWithType:*(a1 + 40)];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)vipMailboxWithName:(id)a3 additionalPredicate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [EMMailboxScope mailboxScopeForMailboxType:7 forExclusion:0];
  v8 = [EMSmartMailbox alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__EMSmartMailbox_vipMailboxWithName_additionalPredicate___block_invoke;
  v12[3] = &unk_1E826C7E8;
  v9 = v6;
  v13 = v9;
  v10 = [(EMSmartMailbox *)v8 initWithType:0 mailboxType:0 name:v5 mailboxScope:v7 predicateGenerator:v12];

  return v10;
}

id __57__EMSmartMailbox_vipMailboxWithName_additionalPredicate___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [EMMessageListItemPredicates predicateForMessagesInMailboxWithType:7];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = MEMORY[0x1E696AB28];
    v10[0] = v2;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v5 andPredicateWithSubpredicates:v6];

    v3 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)coreSpotlightMailboxWithName:(id)a3 queryString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[EMMailboxScope allMailboxesScope];
  v8 = [EMSmartMailbox alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__EMSmartMailbox_coreSpotlightMailboxWithName_queryString___block_invoke;
  v12[3] = &unk_1E826C7E8;
  v9 = v6;
  v13 = v9;
  v10 = [(EMSmartMailbox *)v8 initWithType:13 mailboxType:0 name:v5 mailboxScope:v7 predicateGenerator:v12];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (([(EMSmartMailbox *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EMSmartMailbox *)self smartMailboxType];
    if (v6 == [(EMSmartMailbox *)v5 smartMailboxType]&& (v7 = [(EMMailbox *)self type], v7 == [(EMMailbox *)v5 type]))
    {
      v8 = [(EMMailbox *)self name];
      v9 = [(EMMailbox *)v5 name];
      if ([v8 ef_caseInsensitiveIsEqualToString:v9])
      {
        v10 = [(EMSmartMailbox *)self mailboxScope];
        v11 = [(EMSmartMailbox *)v5 mailboxScope];
        v12 = EFObjectsAreEqual();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(EMSmartMailbox *)self smartMailboxType];
  v4 = [(EMMailbox *)self type];
  v5 = [(EMMailbox *)self name];
  v6 = [v5 lowercaseString];
  v7 = 33 * (33 * v3 + v4);
  v8 = [v6 hash] + 193376997;

  return v7 + v8;
}

- (BOOL)_shouldArchiveByDefault
{
  v2 = [(EMMailbox *)self repository];
  v3 = [v2 accountRepository];
  v4 = [v3 receivingAccounts];

  LOBYTE(v2) = [v4 ef_all:&__block_literal_global_105];
  return v2;
}

@end