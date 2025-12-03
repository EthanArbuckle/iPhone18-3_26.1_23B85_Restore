@interface JournalEntryMO
- (JournalEntryMO)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)prepareForDeletion;
- (void)willSave;
@end

@implementation JournalEntryMO

- (JournalEntryMO)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JournalEntryMO();
  return [(JournalEntryMO *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void)willSave
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for JournalEntryMO();
  v2 = v6.receiver;
  [(JournalEntryMO *)&v6 willSave];
  if (![v2 isDeleted])
  {
    JournalEntryMO.updateSortingColumns()();
    sub_2556B4DC0(&v5);
    v4 = v5;
    v3 = &v4;
    JournalEntryMO.setMinimumVersionConfiguration(_:)(v3);
  }
}

- (void)prepareForDeletion
{
  selfCopy = self;
  JournalEntryMO.prepareForDeletion()();
}

@end