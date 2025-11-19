@interface DNDSContactMonitorChangeCollector
- (DNDSContactMonitorChangeCollector)initWithMonitoredContactIdentifiers:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation DNDSContactMonitorChangeCollector

- (DNDSContactMonitorChangeCollector)initWithMonitoredContactIdentifiers:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DNDSContactMonitorChangeCollector;
  v5 = [(DNDSContactMonitorChangeCollector *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    updatedContacts = v5->_updatedContacts;
    v5->_updatedContacts = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    deletedContactIdentifiers = v5->_deletedContactIdentifiers;
    v5->_deletedContactIdentifiers = v8;

    v10 = [v4 copy];
    monitoredContactIdentifiers = v5->_monitoredContactIdentifiers;
    v5->_monitoredContactIdentifiers = v10;
  }

  return v5;
}

- (void)visitUpdateContactEvent:(id)a3
{
  v4 = a3;
  monitoredContactIdentifiers = self->_monitoredContactIdentifiers;
  v10 = v4;
  v6 = [v4 contact];
  v7 = [v6 identifier];
  LODWORD(monitoredContactIdentifiers) = [(NSSet *)monitoredContactIdentifiers containsObject:v7];

  if (monitoredContactIdentifiers)
  {
    updatedContacts = self->_updatedContacts;
    v9 = [v10 contact];
    [(NSMutableArray *)updatedContacts addObject:v9];
  }
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = a3;
  monitoredContactIdentifiers = self->_monitoredContactIdentifiers;
  v9 = v4;
  v6 = [v4 contactIdentifier];
  LODWORD(monitoredContactIdentifiers) = [(NSSet *)monitoredContactIdentifiers containsObject:v6];

  if (monitoredContactIdentifiers)
  {
    deletedContactIdentifiers = self->_deletedContactIdentifiers;
    v8 = [v9 contactIdentifier];
    [(NSMutableArray *)deletedContactIdentifiers addObject:v8];
  }
}

@end