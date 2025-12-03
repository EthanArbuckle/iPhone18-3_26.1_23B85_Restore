@interface _EDCombinedMessageInfo
- (EMMessage)deduplicatedMessage;
- (_EDCombinedMessageInfo)init;
- (id)combinedDate;
- (id)combinedMailboxes;
- (id)combinedMessageFlags;
- (void)addMessage:(id)message withDatabaseID:(int64_t)d;
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

    array = [MEMORY[0x1E695DF70] array];
    flags = v2->_flags;
    v2->_flags = array;

    array2 = [MEMORY[0x1E695DF70] array];
    dates = v2->_dates;
    v2->_dates = array2;
  }

  return v2;
}

- (EMMessage)deduplicatedMessage
{
  message = [(_EDCombinedMessageInfo *)self message];
  if (!message)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDBatchingMessageQueryIterator.m" lineNumber:73 description:@"Don't have primary message for combined message info."];
  }

  if ([(NSMutableArray *)self->_dates count]> 1)
  {
    v6 = objc_alloc(MEMORY[0x1E699AD30]);
    objectID = [message objectID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45___EDCombinedMessageInfo_deduplicatedMessage__block_invoke;
    v10[3] = &unk_1E82507C0;
    v10[4] = self;
    v11 = message;
    v5 = [v6 initWithObjectID:objectID builder:v10];
  }

  else
  {
    v5 = message;
  }

  return v5;
}

- (void)addMessage:(id)message withDatabaseID:(int64_t)d
{
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDBatchingMessageQueryIterator.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"message != nil"}];
  }

  if (!self->_message || self->_lowestDatabaseID > d)
  {
    objc_storeStrong(&self->_message, message);
    self->_lowestDatabaseID = d;
  }

  mailboxes = [(_EDCombinedMessageInfo *)self mailboxes];
  mailboxes2 = [messageCopy mailboxes];
  [mailboxes addObjectsFromArray:mailboxes2];

  flags = [(_EDCombinedMessageInfo *)self flags];
  flags2 = [messageCopy flags];
  [flags addObject:flags2];

  dates = [(_EDCombinedMessageInfo *)self dates];
  date = [messageCopy date];
  [dates addObject:date];
}

- (id)combinedMailboxes
{
  mailboxes = [(_EDCombinedMessageInfo *)self mailboxes];
  ef_notEmpty = [mailboxes ef_notEmpty];
  allObjects = [ef_notEmpty allObjects];

  return allObjects;
}

- (id)combinedMessageFlags
{
  flags = [(_EDCombinedMessageInfo *)self flags];
  if ([flags count])
  {
    v4 = MEMORY[0x1E699AD30];
    flags2 = [(_EDCombinedMessageInfo *)self flags];
    v6 = [v4 combinedFlagsForMessageListItemFlags:flags2 forDisplay:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)combinedDate
{
  dates = [(_EDCombinedMessageInfo *)self dates];
  v3 = [dates ef_reduce:&__block_literal_global_6];

  return v3;
}

@end