@interface CalChangeHistoryCollector
- (CalChangeHistoryCollector)init;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation CalChangeHistoryCollector

- (CalChangeHistoryCollector)init
{
  v10.receiver = self;
  v10.super_class = CalChangeHistoryCollector;
  v2 = [(CalChangeHistoryCollector *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    insertedContacts = v2->_insertedContacts;
    v2->_insertedContacts = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    updatedContacts = v2->_updatedContacts;
    v2->_updatedContacts = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletedContactIdentifiers = v2->_deletedContactIdentifiers;
    v2->_deletedContactIdentifiers = v7;
  }

  return v2;
}

- (void)visitAddContactEvent:(id)event
{
  eventCopy = event;
  insertedContacts = [(CalChangeHistoryCollector *)self insertedContacts];
  contact = [eventCopy contact];

  [insertedContacts addObject:contact];
  self->_hasChanges = 1;
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  updatedContacts = [(CalChangeHistoryCollector *)self updatedContacts];
  contact = [eventCopy contact];

  [updatedContacts addObject:contact];
  self->_hasChanges = 1;
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  deletedContactIdentifiers = [(CalChangeHistoryCollector *)self deletedContactIdentifiers];
  contactIdentifier = [eventCopy contactIdentifier];

  [deletedContactIdentifiers addObject:contactIdentifier];
  self->_hasChanges = 1;
}

@end