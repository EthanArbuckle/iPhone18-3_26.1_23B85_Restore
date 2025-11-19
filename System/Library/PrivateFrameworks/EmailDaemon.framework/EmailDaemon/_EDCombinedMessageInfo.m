@interface _EDCombinedMessageInfo
- (EMMessage)deduplicatedMessage;
- (_EDCombinedMessageInfo)init;
- (id)combinedDate;
- (id)combinedMailboxes;
- (id)combinedMessageFlags;
- (void)addMessage:(id)a3 withDatabaseID:(int64_t)a4;
@end

@implementation _EDCombinedMessageInfo

- (_EDCombinedMessageInfo)init
{
  v10.receiver = self;
  v10.super_class = _EDCombinedMessageInfo;
  v2 = [(_EDCombinedMessageInfo *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    mailboxes = v2->_mailboxes;
    v2->_mailboxes = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    flags = v2->_flags;
    v2->_flags = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    dates = v2->_dates;
    v2->_dates = v7;
  }

  return v2;
}

- (EMMessage)deduplicatedMessage
{
  v4 = [(_EDCombinedMessageInfo *)self message];
  if (!v4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EDBatchingMessageQueryIterator.m" lineNumber:73 description:@"Don't have primary message for combined message info."];
  }

  if ([(NSMutableArray *)self->_dates count]> 1)
  {
    v6 = objc_alloc(MEMORY[0x1E699AD30]);
    v7 = [v4 objectID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45___EDCombinedMessageInfo_deduplicatedMessage__block_invoke;
    v10[3] = &unk_1E82507C0;
    v10[4] = self;
    v11 = v4;
    v5 = [v6 initWithObjectID:v7 builder:v10];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)addMessage:(id)a3 withDatabaseID:(int64_t)a4
{
  v15 = a3;
  if (!v15)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"EDBatchingMessageQueryIterator.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"message != nil"}];
  }

  if (!self->_message || self->_lowestDatabaseID > a4)
  {
    objc_storeStrong(&self->_message, a3);
    self->_lowestDatabaseID = a4;
  }

  v8 = [(_EDCombinedMessageInfo *)self mailboxes];
  v9 = [v15 mailboxes];
  [v8 addObjectsFromArray:v9];

  v10 = [(_EDCombinedMessageInfo *)self flags];
  v11 = [v15 flags];
  [v10 addObject:v11];

  v12 = [(_EDCombinedMessageInfo *)self dates];
  v13 = [v15 date];
  [v12 addObject:v13];
}

- (id)combinedMailboxes
{
  v2 = [(_EDCombinedMessageInfo *)self mailboxes];
  v3 = [v2 ef_notEmpty];
  v4 = [v3 allObjects];

  return v4;
}

- (id)combinedMessageFlags
{
  v3 = [(_EDCombinedMessageInfo *)self flags];
  if ([v3 count])
  {
    v4 = MEMORY[0x1E699AD30];
    v5 = [(_EDCombinedMessageInfo *)self flags];
    v6 = [v4 combinedFlagsForMessageListItemFlags:v5 forDisplay:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)combinedDate
{
  v2 = [(_EDCombinedMessageInfo *)self dates];
  v3 = [v2 ef_reduce:&__block_literal_global_6];

  return v3;
}

@end