@interface DNDSContactMonitorChangeCollector
- (DNDSContactMonitorChangeCollector)initWithMonitoredContactIdentifiers:(id)identifiers;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation DNDSContactMonitorChangeCollector

- (DNDSContactMonitorChangeCollector)initWithMonitoredContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v13.receiver = self;
  v13.super_class = DNDSContactMonitorChangeCollector;
  v5 = [(DNDSContactMonitorChangeCollector *)&v13 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    updatedContacts = v5->_updatedContacts;
    v5->_updatedContacts = array;

    array2 = [MEMORY[0x277CBEB18] array];
    deletedContactIdentifiers = v5->_deletedContactIdentifiers;
    v5->_deletedContactIdentifiers = array2;

    v10 = [identifiersCopy copy];
    monitoredContactIdentifiers = v5->_monitoredContactIdentifiers;
    v5->_monitoredContactIdentifiers = v10;
  }

  return v5;
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  monitoredContactIdentifiers = self->_monitoredContactIdentifiers;
  v10 = eventCopy;
  contact = [eventCopy contact];
  identifier = [contact identifier];
  LODWORD(monitoredContactIdentifiers) = [(NSSet *)monitoredContactIdentifiers containsObject:identifier];

  if (monitoredContactIdentifiers)
  {
    updatedContacts = self->_updatedContacts;
    contact2 = [v10 contact];
    [(NSMutableArray *)updatedContacts addObject:contact2];
  }
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  monitoredContactIdentifiers = self->_monitoredContactIdentifiers;
  v9 = eventCopy;
  contactIdentifier = [eventCopy contactIdentifier];
  LODWORD(monitoredContactIdentifiers) = [(NSSet *)monitoredContactIdentifiers containsObject:contactIdentifier];

  if (monitoredContactIdentifiers)
  {
    deletedContactIdentifiers = self->_deletedContactIdentifiers;
    contactIdentifier2 = [v9 contactIdentifier];
    [(NSMutableArray *)deletedContactIdentifiers addObject:contactIdentifier2];
  }
}

@end