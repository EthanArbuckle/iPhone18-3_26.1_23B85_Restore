@interface SGJournalEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToJournalEntry:(id)a3;
- (SGJournalEntry)initWithOperation:(unint64_t)a3;
- (SGJournalEntry)initWithOperation:(unint64_t)a3 contact:(id)a4;
- (SGJournalEntry)initWithOperation:(unint64_t)a3 event:(id)a4;
- (SGJournalEntry)initWithOperation:(unint64_t)a3 eventBatch:(id)a4;
- (SGJournalEntry)initWithOperation:(unint64_t)a3 reminder:(id)a4;
- (id)description;
@end

@implementation SGJournalEntry

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  operation = self->_operation;
  event = self->_event;
  if (!event)
  {
    event = self->_contact;
    if (!event)
    {
      event = self->_reminder;
    }
  }

  v6 = [v3 initWithFormat:@"<SGJournalEntry op:%lu entity:%@", self->_operation, event];

  return v6;
}

- (BOOL)isEqualToJournalEntry:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = self->_event;
    v6 = v5;
    if (v5 == v4->_event)
    {
    }

    else
    {
      v7 = [(SGStorageEvent *)v5 isEqual:?];

      if (!v7)
      {
        goto LABEL_10;
      }
    }

    operation = self->_operation;
    if (operation != [(SGJournalEntry *)v4 operation])
    {
LABEL_10:
      v8 = 0;
      goto LABEL_13;
    }

    v10 = self->_contact;
    v11 = v10;
    if (v10 == v4->_contact)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(SGStorageContact *)v10 isEqual:?];
    }
  }

LABEL_13:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGJournalEntry *)self isEqualToJournalEntry:v5];
  }

  return v6;
}

- (SGJournalEntry)initWithOperation:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SGJournalEntry;
  result = [(SGJournalEntry *)&v5 init];
  if (result)
  {
    result->_operation = a3;
  }

  return result;
}

- (SGJournalEntry)initWithOperation:(unint64_t)a3 reminder:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGJournalEntry.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"reminder"}];
  }

  v13.receiver = self;
  v13.super_class = SGJournalEntry;
  v9 = [(SGJournalEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_operation = a3;
    objc_storeStrong(&v9->_reminder, a4);
  }

  return v10;
}

- (SGJournalEntry)initWithOperation:(unint64_t)a3 contact:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGJournalEntry.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v13.receiver = self;
  v13.super_class = SGJournalEntry;
  v9 = [(SGJournalEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_operation = a3;
    objc_storeStrong(&v9->_contact, a4);
  }

  return v10;
}

- (SGJournalEntry)initWithOperation:(unint64_t)a3 eventBatch:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGJournalEntry.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"eventBatch"}];
  }

  v13.receiver = self;
  v13.super_class = SGJournalEntry;
  v9 = [(SGJournalEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_operation = a3;
    objc_storeStrong(&v9->_eventBatch, a4);
  }

  return v10;
}

- (SGJournalEntry)initWithOperation:(unint64_t)a3 event:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGJournalEntry.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v13.receiver = self;
  v13.super_class = SGJournalEntry;
  v9 = [(SGJournalEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_operation = a3;
    objc_storeStrong(&v9->_event, a4);
  }

  return v10;
}

@end