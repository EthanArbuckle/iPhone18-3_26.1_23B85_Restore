@interface EMSmartMailbox
+ (EMMailboxScope)em_defaultExcludedMailboxesScope;
+ (EMSmartMailbox)em_VIPMailbox;
+ (EMSmartMailbox)em_flaggedMailbox;
+ (EMSmartMailbox)em_followUpMailbox;
+ (EMSmartMailbox)em_readLaterMailbox;
+ (id)blueMailboxWithMailboxScope:(id)scope;
+ (id)coreSpotlightMailboxWithName:(id)name queryString:(id)string;
+ (id)em_scopedSendLaterMailboxWithMailboxURL:(id)l;
+ (id)flaggedMailboxWithMailboxScope:(id)scope;
+ (id)followUpMailboxWithMailboxScope:(id)scope;
+ (id)grayMailboxWithMailboxScope:(id)scope;
+ (id)greenMailboxWithMailboxScope:(id)scope;
+ (id)hasAttachmentsMailboxWithMailboxScope:(id)scope;
+ (id)includesMeMailboxWithMailboxScope:(id)scope;
+ (id)mailCleanupMailboxWithMailboxScope:(id)scope;
+ (id)muteThreadsMailboxWithMailboxScope:(id)scope;
+ (id)notifyThreadsMailboxWithMailboxScope:(id)scope;
+ (id)orangeMailboxWithMailboxScope:(id)scope;
+ (id)purpleMailboxWithMailboxScope:(id)scope;
+ (id)readLaterMailboxWithMailboxScope:(id)scope;
+ (id)redMailboxWithMailboxScope:(id)scope;
+ (id)sendLaterMailboxWithMailboxScope:(id)scope;
+ (id)todayMailboxWithMailboxScope:(id)scope;
+ (id)unifiedMailboxOfType:(int64_t)type name:(id)name;
+ (id)unifiedMailboxOfType:(int64_t)type name:(id)name additionalPredicate:(id)predicate;
+ (id)unreadMailboxWithMailboxScope:(id)scope;
+ (id)unsubscribeMailboxWithMailboxScope:(id)scope;
+ (id)vipMailboxWithMailboxScope:(id)scope;
+ (id)vipMailboxWithName:(id)name additionalPredicate:(id)predicate;
+ (id)yellowMailboxWithMailboxScope:(id)scope;
- (BOOL)_shouldArchiveByDefault;
- (BOOL)isEqual:(id)equal;
- (EMSmartMailbox)initWithType:(int64_t)type mailboxType:(int64_t)mailboxType name:(id)name mailboxScope:(id)scope predicateGenerator:(id)generator;
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
  em_inboxMailboxScope = [self em_inboxMailboxScope];
  v3 = [EMSmartMailbox vipMailboxWithMailboxScope:em_inboxMailboxScope];

  return v3;
}

+ (EMSmartMailbox)em_flaggedMailbox
{
  em_defaultExcludedMailboxesScope = [self em_defaultExcludedMailboxesScope];
  v3 = [EMSmartMailbox flaggedMailboxWithMailboxScope:em_defaultExcludedMailboxesScope];

  return v3;
}

+ (EMSmartMailbox)em_readLaterMailbox
{
  em_defaultExcludedMailboxesScope = [self em_defaultExcludedMailboxesScope];
  v3 = [EMSmartMailbox readLaterMailboxWithMailboxScope:em_defaultExcludedMailboxesScope];

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
  name = [(EMMailbox *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p> Name:%@", v4, self, name];

  return v6;
}

+ (id)em_scopedSendLaterMailboxWithMailboxURL:(id)l
{
  v10[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = [[EMMailboxObjectID alloc] initWithURL:lCopy];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v5 forExclusion:0];

  v7 = [EMSmartMailbox sendLaterMailboxWithMailboxScope:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (EMSmartMailbox)initWithType:(int64_t)type mailboxType:(int64_t)mailboxType name:(id)name mailboxScope:(id)scope predicateGenerator:(id)generator
{
  nameCopy = name;
  scopeCopy = scope;
  generatorCopy = generator;
  v15 = objc_alloc_init(EMMailboxObjectID);
  v21.receiver = self;
  v21.super_class = EMSmartMailbox;
  v16 = [(EMMailbox *)&v21 initWithObjectID:v15 name:nameCopy accountIdentifier:0 type:mailboxType builder:&__block_literal_global_50];
  v17 = v16;
  if (v16)
  {
    v16->_smartMailboxType = type;
    objc_storeStrong(&v16->_mailboxScope, scope);
    v18 = [generatorCopy copy];
    predicateGenerator = v17->_predicateGenerator;
    v17->_predicateGenerator = v18;
  }

  return v17;
}

+ (id)vipMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EMSmartMailbox_vipMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:0 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)flaggedMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__EMSmartMailbox_flaggedMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)orangeMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMSmartMailbox_orangeMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)redMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EMSmartMailbox_redMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)purpleMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMSmartMailbox_purpleMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)blueMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__EMSmartMailbox_blueMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)yellowMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMSmartMailbox_yellowMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)greenMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EMSmartMailbox_greenMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)grayMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__EMSmartMailbox_grayMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:1 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)unreadMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMSmartMailbox_unreadMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:2 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)hasAttachmentsMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__EMSmartMailbox_hasAttachmentsMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:4 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)notifyThreadsMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__EMSmartMailbox_notifyThreadsMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:5 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)todayMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EMSmartMailbox_todayMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:6 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)muteThreadsMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__EMSmartMailbox_muteThreadsMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:7 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)includesMeMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__EMSmartMailbox_includesMeMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:3 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)readLaterMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__EMSmartMailbox_readLaterMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:9 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)followUpMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__EMSmartMailbox_followUpMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:10 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)sendLaterMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__EMSmartMailbox_sendLaterMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:11 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)unsubscribeMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__EMSmartMailbox_unsubscribeMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:12 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)mailCleanupMailboxWithMailboxScope:(id)scope
{
  scopeCopy = scope;
  v4 = _EFLocalizedString();
  v5 = +[EMMailboxScope allMailboxesScope];

  if (v5 == scopeCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:scopeCopy];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__EMSmartMailbox_mailCleanupMailboxWithMailboxScope___block_invoke;
  aBlock[3] = &unk_1E826C7E8;
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [[EMSmartMailbox alloc] initWithType:14 mailboxType:0 name:v4 mailboxScope:scopeCopy predicateGenerator:v8];

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

+ (id)unifiedMailboxOfType:(int64_t)type name:(id)name
{
  v4 = [self unifiedMailboxOfType:type name:name additionalPredicate:0];

  return v4;
}

+ (id)unifiedMailboxOfType:(int64_t)type name:(id)name additionalPredicate:(id)predicate
{
  nameCopy = name;
  predicateCopy = predicate;
  if ((type - 1) < 5 || type == 7)
  {
    v9 = [EMMailboxScope mailboxScopeForMailboxType:type forExclusion:0];
    v10 = [EMSmartMailbox alloc];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__EMSmartMailbox_unifiedMailboxOfType_name_additionalPredicate___block_invoke;
    v13[3] = &unk_1E826FAD8;
    typeCopy = type;
    v14 = predicateCopy;
    v11 = [(EMSmartMailbox *)v10 initWithType:8 mailboxType:type name:nameCopy mailboxScope:v9 predicateGenerator:v13];
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

+ (id)vipMailboxWithName:(id)name additionalPredicate:(id)predicate
{
  nameCopy = name;
  predicateCopy = predicate;
  v7 = [EMMailboxScope mailboxScopeForMailboxType:7 forExclusion:0];
  v8 = [EMSmartMailbox alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__EMSmartMailbox_vipMailboxWithName_additionalPredicate___block_invoke;
  v12[3] = &unk_1E826C7E8;
  v9 = predicateCopy;
  v13 = v9;
  v10 = [(EMSmartMailbox *)v8 initWithType:0 mailboxType:0 name:nameCopy mailboxScope:v7 predicateGenerator:v12];

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

+ (id)coreSpotlightMailboxWithName:(id)name queryString:(id)string
{
  nameCopy = name;
  stringCopy = string;
  v7 = +[EMMailboxScope allMailboxesScope];
  v8 = [EMSmartMailbox alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__EMSmartMailbox_coreSpotlightMailboxWithName_queryString___block_invoke;
  v12[3] = &unk_1E826C7E8;
  v9 = stringCopy;
  v13 = v9;
  v10 = [(EMSmartMailbox *)v8 initWithType:13 mailboxType:0 name:nameCopy mailboxScope:v7 predicateGenerator:v12];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (([(EMSmartMailbox *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    smartMailboxType = [(EMSmartMailbox *)self smartMailboxType];
    if (smartMailboxType == [(EMSmartMailbox *)v5 smartMailboxType]&& (v7 = [(EMMailbox *)self type], v7 == [(EMMailbox *)v5 type]))
    {
      name = [(EMMailbox *)self name];
      name2 = [(EMMailbox *)v5 name];
      if ([name ef_caseInsensitiveIsEqualToString:name2])
      {
        mailboxScope = [(EMSmartMailbox *)self mailboxScope];
        mailboxScope2 = [(EMSmartMailbox *)v5 mailboxScope];
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
  smartMailboxType = [(EMSmartMailbox *)self smartMailboxType];
  type = [(EMMailbox *)self type];
  name = [(EMMailbox *)self name];
  lowercaseString = [name lowercaseString];
  v7 = 33 * (33 * smartMailboxType + type);
  v8 = [lowercaseString hash] + 193376997;

  return v7 + v8;
}

- (BOOL)_shouldArchiveByDefault
{
  repository = [(EMMailbox *)self repository];
  accountRepository = [repository accountRepository];
  receivingAccounts = [accountRepository receivingAccounts];

  LOBYTE(repository) = [receivingAccounts ef_all:&__block_literal_global_105];
  return repository;
}

@end