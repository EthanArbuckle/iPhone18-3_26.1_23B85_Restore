@interface _EDMessageDuplicateInfo
- (NSMutableArray)dates;
- (NSMutableArray)flags;
- (NSMutableSet)mailboxes;
- (_EDMessageDuplicateInfo)initWithMailboxProvider:(id)a3;
- (id)combinedDate;
- (id)combinedMailboxes;
- (id)combinedMessageFlags;
- (void)addMessage:(id)a3;
@end

@implementation _EDMessageDuplicateInfo

- (_EDMessageDuplicateInfo)initWithMailboxProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _EDMessageDuplicateInfo;
  v6 = [(_EDMessageDuplicateInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxProvider, a3);
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
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_flags;
    self->_flags = v4;

    flags = self->_flags;
  }

  return flags;
}

- (NSMutableArray)dates
{
  dates = self->_dates;
  if (!dates)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_dates;
    self->_dates = v4;

    dates = self->_dates;
  }

  return dates;
}

- (void)addMessage:(id)a3
{
  v16 = a3;
  if (!v16)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"EDMessageTransformer.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"message != nil"}];
  }

  if (!self->_primaryPersistedMessage || ([v16 persistedMessageID], v6 = objc_claimAutoreleasedReturnValue(), -[EDPersistedMessage persistedMessageID](self->_primaryPersistedMessage, "persistedMessageID"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 < v7))
  {
    objc_storeStrong(&self->_primaryPersistedMessage, a3);
  }

  v8 = [(_EDMessageDuplicateInfo *)self mailboxProvider];
  v9 = [EDMessageTransformer mailboxesForPersistedMessage:v16 mailboxProvider:v8];

  v10 = [(_EDMessageDuplicateInfo *)self mailboxes];
  [v10 addObjectsFromArray:v9];

  v11 = [(_EDMessageDuplicateInfo *)self flags];
  v12 = [v16 flags];
  [v11 addObject:v12];

  v13 = [(_EDMessageDuplicateInfo *)self dates];
  v14 = [v16 dateReceived];
  [v13 addObject:v14];
}

- (id)combinedMailboxes
{
  v2 = [(_EDMessageDuplicateInfo *)self mailboxes];
  v3 = [v2 ef_notEmpty];
  v4 = [v3 allObjects];

  return v4;
}

- (id)combinedMessageFlags
{
  v3 = [(_EDMessageDuplicateInfo *)self flags];
  if ([v3 count])
  {
    v4 = MEMORY[0x1E699AD30];
    v5 = [(_EDMessageDuplicateInfo *)self flags];
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
  v2 = [(_EDMessageDuplicateInfo *)self dates];
  v3 = [v2 ef_reduce:&__block_literal_global_60];

  return v3;
}

@end