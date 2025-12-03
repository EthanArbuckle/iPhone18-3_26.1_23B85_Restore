@interface SGJournalEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToJournalEntry:(id)entry;
- (SGJournalEntry)initWithOperation:(unint64_t)operation;
- (SGJournalEntry)initWithOperation:(unint64_t)operation contact:(id)contact;
- (SGJournalEntry)initWithOperation:(unint64_t)operation event:(id)event;
- (SGJournalEntry)initWithOperation:(unint64_t)operation eventBatch:(id)batch;
- (SGJournalEntry)initWithOperation:(unint64_t)operation reminder:(id)reminder;
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

  event = [v3 initWithFormat:@"<SGJournalEntry op:%lu entity:%@", self->_operation, event];

  return event;
}

- (BOOL)isEqualToJournalEntry:(id)entry
{
  entryCopy = entry;
  if (self == entryCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = self->_event;
    v6 = v5;
    if (v5 == entryCopy->_event)
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
    if (operation != [(SGJournalEntry *)entryCopy operation])
    {
LABEL_10:
      v8 = 0;
      goto LABEL_13;
    }

    v10 = self->_contact;
    v11 = v10;
    if (v10 == entryCopy->_contact)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGJournalEntry *)self isEqualToJournalEntry:v5];
  }

  return v6;
}

- (SGJournalEntry)initWithOperation:(unint64_t)operation
{
  v5.receiver = self;
  v5.super_class = SGJournalEntry;
  result = [(SGJournalEntry *)&v5 init];
  if (result)
  {
    result->_operation = operation;
  }

  return result;
}

- (SGJournalEntry)initWithOperation:(unint64_t)operation reminder:(id)reminder
{
  reminderCopy = reminder;
  if (!reminderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGJournalEntry.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"reminder"}];
  }

  v13.receiver = self;
  v13.super_class = SGJournalEntry;
  v9 = [(SGJournalEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_operation = operation;
    objc_storeStrong(&v9->_reminder, reminder);
  }

  return v10;
}

- (SGJournalEntry)initWithOperation:(unint64_t)operation contact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGJournalEntry.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v13.receiver = self;
  v13.super_class = SGJournalEntry;
  v9 = [(SGJournalEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_operation = operation;
    objc_storeStrong(&v9->_contact, contact);
  }

  return v10;
}

- (SGJournalEntry)initWithOperation:(unint64_t)operation eventBatch:(id)batch
{
  batchCopy = batch;
  if (!batchCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGJournalEntry.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"eventBatch"}];
  }

  v13.receiver = self;
  v13.super_class = SGJournalEntry;
  v9 = [(SGJournalEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_operation = operation;
    objc_storeStrong(&v9->_eventBatch, batch);
  }

  return v10;
}

- (SGJournalEntry)initWithOperation:(unint64_t)operation event:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGJournalEntry.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v13.receiver = self;
  v13.super_class = SGJournalEntry;
  v9 = [(SGJournalEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_operation = operation;
    objc_storeStrong(&v9->_event, event);
  }

  return v10;
}

@end