@interface CalChangeHistoryCollector
- (CalChangeHistoryCollector)init;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
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

- (void)visitAddContactEvent:(id)a3
{
  v4 = a3;
  v5 = [(CalChangeHistoryCollector *)self insertedContacts];
  v6 = [v4 contact];

  [v5 addObject:v6];
  self->_hasChanges = 1;
}

- (void)visitUpdateContactEvent:(id)a3
{
  v4 = a3;
  v5 = [(CalChangeHistoryCollector *)self updatedContacts];
  v6 = [v4 contact];

  [v5 addObject:v6];
  self->_hasChanges = 1;
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = a3;
  v5 = [(CalChangeHistoryCollector *)self deletedContactIdentifiers];
  v6 = [v4 contactIdentifier];

  [v5 addObject:v6];
  self->_hasChanges = 1;
}

@end