@interface _DAChangeHistoryABLegacyClerk
- (_DAChangeHistoryABLegacyClerk)initWithAddressBook:(void *)a3;
- (id)identifiersOfAllRegisterdClients;
- (void)dealloc;
- (void)registerClientWithIdentifier:(id)a3 forContainer:(id)a4;
- (void)unregisterClientWithIdentifier:(id)a3 forContainer:(id)a4;
@end

@implementation _DAChangeHistoryABLegacyClerk

- (_DAChangeHistoryABLegacyClerk)initWithAddressBook:(void *)a3
{
  v6.receiver = self;
  v6.super_class = _DAChangeHistoryABLegacyClerk;
  v4 = [(_DAChangeHistoryABLegacyClerk *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _DAChangeHistoryABLegacyClerk;
  [(_DAChangeHistoryABLegacyClerk *)&v3 dealloc];
}

- (void)unregisterClientWithIdentifier:(id)a3 forContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_DAChangeHistoryABLegacyClerk *)self addressBook];
  [v6 asSource];

  ABChangeHistoryUnregisterClientForSource();
}

- (void)registerClientWithIdentifier:(id)a3 forContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_DAChangeHistoryABLegacyClerk *)self addressBook];
  [v6 asSource];

  ABChangeHistoryRegisterClientForSource();
}

- (id)identifiersOfAllRegisterdClients
{
  [(_DAChangeHistoryABLegacyClerk *)self addressBook];
  v2 = ABChangeHistoryCopyAllRegisteredClientIdentifiers();

  return v2;
}

@end