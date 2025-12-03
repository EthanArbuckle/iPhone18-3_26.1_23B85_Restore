@interface _EDMessageDuplicateInfo
- (NSMutableArray)dates;
- (NSMutableArray)flags;
- (NSMutableSet)mailboxes;
- (_EDMessageDuplicateInfo)initWithMailboxProvider:(id)provider;
- (id)combinedDate;
- (id)combinedMailboxes;
- (id)combinedMessageFlags;
- (void)addMessage:(id)message;
@end

@implementation _EDMessageDuplicateInfo

- (_EDMessageDuplicateInfo)initWithMailboxProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = _EDMessageDuplicateInfo;
  v6 = [(_EDMessageDuplicateInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxProvider, provider);
  }

  return v7;
}

- (NSMutableSet)mailboxes
{
  mailboxes = self->_mailboxes;
  if (!mailboxes)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = self->_mailboxes;
    self->_mailboxes = v4;

    mailboxes = self->_mailboxes;
  }

  return mailboxes;
}

- (NSMutableArray)flags
{
  flags = self->_flags;
  if (!flags)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_flags;
    self->_flags = array;

    flags = self->_flags;
  }

  return flags;
}

- (NSMutableArray)dates
{
  dates = self->_dates;
  if (!dates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_dates;
    self->_dates = array;

    dates = self->_dates;
  }

  return dates;
}

- (void)addMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageTransformer.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"message != nil"}];
  }

  if (!self->_primaryPersistedMessage || ([messageCopy persistedMessageID], v6 = objc_claimAutoreleasedReturnValue(), -[EDPersistedMessage persistedMessageID](self->_primaryPersistedMessage, "persistedMessageID"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 < v7))
  {
    objc_storeStrong(&self->_primaryPersistedMessage, message);
  }

  mailboxProvider = [(_EDMessageDuplicateInfo *)self mailboxProvider];
  v9 = [EDMessageTransformer mailboxesForPersistedMessage:messageCopy mailboxProvider:mailboxProvider];

  mailboxes = [(_EDMessageDuplicateInfo *)self mailboxes];
  [mailboxes addObjectsFromArray:v9];

  flags = [(_EDMessageDuplicateInfo *)self flags];
  flags2 = [messageCopy flags];
  [flags addObject:flags2];

  dates = [(_EDMessageDuplicateInfo *)self dates];
  dateReceived = [messageCopy dateReceived];
  [dates addObject:dateReceived];
}

- (id)combinedMailboxes
{
  mailboxes = [(_EDMessageDuplicateInfo *)self mailboxes];
  ef_notEmpty = [mailboxes ef_notEmpty];
  allObjects = [ef_notEmpty allObjects];

  return allObjects;
}

- (id)combinedMessageFlags
{
  flags = [(_EDMessageDuplicateInfo *)self flags];
  if ([flags count])
  {
    v4 = MEMORY[0x1E699AD30];
    flags2 = [(_EDMessageDuplicateInfo *)self flags];
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
  dates = [(_EDMessageDuplicateInfo *)self dates];
  v3 = [dates ef_reduce:&__block_literal_global_60];

  return v3;
}

@end