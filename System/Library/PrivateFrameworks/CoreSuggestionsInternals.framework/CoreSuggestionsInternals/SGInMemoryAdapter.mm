@interface SGInMemoryAdapter
- (NSArray)contacts;
- (SGInMemoryAdapter)init;
- (void)addContact:(id)contact;
- (void)addEvent:(id)event;
- (void)addEvents:(id)events;
- (void)cancelEvent:(id)event;
- (void)cancelEvents:(id)events;
- (void)confirmOrRejectContact:(id)contact;
- (void)rejectReminderFromThisDevice:(id)device;
@end

@implementation SGInMemoryAdapter

- (void)rejectReminderFromThisDevice:(id)device
{
  deviceCopy = device;
  reminders = self->_reminders;
  v6 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SGInMemoryAdapter_rejectReminderFromThisDevice___block_invoke;
  v9[3] = &unk_27894C500;
  v10 = deviceCopy;
  v7 = deviceCopy;
  v8 = [v6 predicateWithBlock:v9];
  [(NSMutableArray *)reminders filterUsingPredicate:v8];
}

uint64_t __50__SGInMemoryAdapter_rejectReminderFromThisDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 duplicateKey];
  v4 = [v3 serialize];

  if (v4)
  {
    v5 = [*(a1 + 32) duplicateKey];
    v6 = [v5 serialize];
    v7 = [v6 isEqualToString:v4] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)contacts
{
  v3 = objc_autoreleasePoolPush();
  allValues = [(NSMutableDictionary *)self->_contacts allValues];
  objc_autoreleasePoolPop(v3);

  return allValues;
}

- (void)confirmOrRejectContact:(id)contact
{
  contacts = self->_contacts;
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(contact, "masterEntityId")}];
  [(NSMutableDictionary *)contacts removeObjectForKey:v4];
}

- (void)cancelEvents:(id)events
{
  v15 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        [(SGInMemoryAdapter *)self cancelEvent:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelEvent:(id)event
{
  duplicateKey = [event duplicateKey];
  entityKey = [duplicateKey entityKey];
  serialize = [entityKey serialize];

  events = self->_events;
  v8 = MEMORY[0x277CCAC30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__SGInMemoryAdapter_cancelEvent___block_invoke;
  v11[3] = &unk_27894C4B8;
  v12 = serialize;
  v9 = serialize;
  v10 = [v8 predicateWithBlock:v11];
  [(NSMutableArray *)events filterUsingPredicate:v10];
}

uint64_t __33__SGInMemoryAdapter_cancelEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 first];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)addContact:(id)contact
{
  contacts = self->_contacts;
  v4 = MEMORY[0x277CCABB0];
  contactCopy = contact;
  v6 = [v4 numberWithLongLong:{objc_msgSend(contactCopy, "masterEntityId")}];
  [(NSMutableDictionary *)contacts setObject:contactCopy forKeyedSubscript:v6];
}

- (void)addEvents:(id)events
{
  v15 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        [(SGInMemoryAdapter *)self addEvent:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  duplicateKey = [eventCopy duplicateKey];
  entityKey = [duplicateKey entityKey];
  serialize = [entityKey serialize];

  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = self->_events;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v10)
  {

    [(NSMutableArray *)self->_events removeObjectsInArray:v8];
LABEL_15:
    events = self->_events;
    v24 = MEMORY[0x277D42648];
    duplicateKey2 = [eventCopy duplicateKey];
    entityKey2 = [duplicateKey2 entityKey];
    serialize2 = [entityKey2 serialize];
    v28 = [v24 tupleWithFirst:serialize2 second:eventCopy];
    [(NSMutableArray *)events addObject:v28];

    goto LABEL_16;
  }

  v11 = v10;
  selfCopy = self;
  v31 = v8;
  v12 = *v33;
  v13 = 1;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v32 + 1) + 8 * i);
      first = [v15 first];
      v17 = [first isEqualToString:serialize];

      if (v17)
      {
        [eventCopy creationTimestamp];
        v19 = v18;
        second = [v15 second];
        [second creationTimestamp];
        v22 = v21;

        if (v19 <= v22)
        {
          v13 = 0;
        }

        else
        {
          [v31 addObject:v15];
        }
      }
    }

    v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v11);

  self = selfCopy;
  v8 = v31;
  [(NSMutableArray *)selfCopy->_events removeObjectsInArray:v31];
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_16:

  v29 = *MEMORY[0x277D85DE8];
}

- (SGInMemoryAdapter)init
{
  v10.receiver = self;
  v10.super_class = SGInMemoryAdapter;
  v2 = [(SGInMemoryAdapter *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    events = v2->_events;
    v2->_events = v3;

    v5 = objc_opt_new();
    contacts = v2->_contacts;
    v2->_contacts = v5;

    v7 = objc_opt_new();
    reminders = v2->_reminders;
    v2->_reminders = v7;
  }

  return v2;
}

@end